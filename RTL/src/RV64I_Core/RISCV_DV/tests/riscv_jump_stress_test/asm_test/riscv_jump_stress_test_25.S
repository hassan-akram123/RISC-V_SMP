.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x24, kernel_stack_end

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
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0x2
                  li x3, 0xe
                  li x4, 0x0
                  li x5, 0x6
                  li x6, 0x9
                  li x7, 0xf04ec4f5
                  li x8, 0x80000000
                  li x9, 0xf6c02508
                  li x10, 0x0
                  li x11, 0x7036cc38
                  li x12, 0x279e3060
                  li x13, 0xfbba3b98
                  li x14, 0x6ed8490
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xc
                  li x18, 0x80000000
                  li x19, 0xbdc86672
                  li x20, 0x0
                  li x21, 0x6
                  li x22, 0xa
                  li x23, 0xe7f2f8aa
                  li x25, 0xfdfa6c35
                  li x26, 0x80000000
                  li x27, 0xfd20c579
                  li x28, 0xfa055b30
                  li x30, 0x2
                  li x31, 0xfb80517c
                  la x29, user_stack_end
main:             la           a4, sub_1
                  slt          t2, sp, s3
                  lui          s9, 765389
                  ori          a5, tp, 200
                  add          t3, s2, s0
                  auipc        t2, 847537
                  addi         a4, a4, 508
                  sltiu        a2, t1, -379
                  andi         s10, t6, -1838
                  beq          t3, s0, main_j2 #branch to jump instr
                  srl          t5, s4, s4
                  add          s9, s0, s5
                  andi         a6, a6, 1845
main_j2:          jalr         gp, a4, -507 #jump main -> sub_1
main_0:           jal          gp, 11f
0:                jal          a4, 7f
1:                jal          ra, 21f
2:                jal          ra, 10f
3:                jal          ra, 25f
4:                jal          ra, 9f
5:                jal          s0, 17f
6:                jal          t1, 19f
7:                jal          gp, 12f
8:                jal          s11, 6b
9:                jal          t1, 20f
10:               jal          ra, 1b
11:               jal          ra, 14f
12:               jal          ra, 16f
13:               jal          t1, 28f
14:               jal          ra, 5b
15:               jal          sp, 4b
16:               jal          gp, 23f
17:               jal          ra, 24f
18:               jal          ra, 27f
19:               jal          a1, 13b
20:               jal          ra, 8b
21:               jal          a6, 15b
22:               jal          ra, 2b
23:               jal          ra, 26f
24:               jal          t1, 0b
25:               jal          ra, 18b
26:               jal          ra, 3b
27:               jal          ra, 22b
28:               xor          a7, s9, a4
                  sub          tp, s4, t2
                  and          s6, a7, t3
                  or           s1, sp, a0
                  la           s10, sub_1
                  addi         s10, s10, 897
                  sub          a0, sp, s8
                  andi         a3, s3, -194
                  sra          a6, s4, s9
                  bge          t5, s8, main_j1 #branch to jump instr
                  add          s4, t1, s10
                  or           s2, t3, t1
                  sub          s0, s0, ra
                  andi         gp, s2, 645
                  lui          s0, 15089
main_j1:          jalr         gp, s10, -897 #jump main -> sub_1
                  bgeu         s1, s10, 7f
                  addi         s0, s1, 1307
                  add          s9, s4, s6
                  sub          a1, s6, s11
                  addi         s6, s8, 1021
7:                xori         s5, a7, -1153
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slli         t3, ra, 5
                  ori          t2, s2, -1552
                  slli         s2, s4, 24
                  bge          s0, t3, sub_2_stack_p
sub_2_stack_p:    addi         t4, t4, -60
                  slti         t1, t6, 1323
                  sw           gp, 4(t4)
                  sra          a6, t5, gp
                  srl          a4, s2, a7
                  slli         tp, t4, 5
                  sra          a4, t4, t5
                  slt          a1, t4, s7
                  sub          s0, t1, a5
                  ori          s7, s7, 1647
                  sub          s4, a3, ra
                  slt          a6, sp, a4
                  or           a6, s4, gp
                  sltiu        a2, ra, -1497
sub_2_j6:         jal          gp, sub_5 #jump sub_2 -> sub_5
                  auipc        t3, 692035
                  add          s6, t4, ra
                  sub          s2, t6, s10
                  sll          s1, a2, a4
                  slt          t1, s11, tp
                  bltu         zero, t0, 11f
                  beq          s0, s5, 24f
                  sra          t6, sp, t6
                  sub          sp, t5, a2
                  sub          gp, s3, t4
                  sll          s7, a3, a5
11:               sltu         a5, a5, a7
                  nop
                  slti         t3, s11, -1425
                  beq          a4, s1, 18f
                  lui          a1, 156970
                  or           a2, s0, s9
                  sltu         a3, s3, s6
18:               sub          s2, a6, a1
                  beq          s10, t1, 22f
                  sltiu        gp, s8, 1488
                  sra          s7, tp, t1
22:               beq          zero, s11, 28f
                  andi         tp, s1, 1706
24:               bltu         t2, t0, 29f
                  nop
                  slli         s9, s6, 26
                  andi         s7, s1, 1055
28:               blt          s9, a2, 38f
29:               or           a2, t0, s4
                  blt          zero, s2, 38f
                  and          gp, t0, s4
                  xor          s5, a5, a4
                  beq          t0, t2, 38f
                  or           a5, s7, t1
                  auipc        ra, 220344
                  slli         a1, s11, 15
                  and          a4, t3, t0
38:               ori          a2, t5, -758
                  sltu         a5, s8, t1
                  add          tp, t5, s11
                  srl          s10, t2, gp
                  lw           gp, 4(t4)
                  srli         a3, s3, 11
                  sra          a4, a3, s5
                  addi         t4, t4, 60
                  xor          a0, sp, t3
66:               addi x12, x3, 0
66:               jalr x12, x12, 0
sub_4:            srai         a5, s1, 28
                  srai         a3, t4, 28
                  bge          t0, a5, sub_4_stack_p
sub_4_stack_p:    addi         t4, t4, -52
                  srl          s11, a6, t2
                  sltiu        s9, t0, -664
                  sw           gp, 4(t4)
                  lui          a4, 487006
                  srl          a6, s9, t5
                  xori         a4, a2, 1736
                  and          a5, a5, a4
                  xor          a4, a7, a7
                  bgeu         t0, s11, 14f
                  or           s6, gp, a4
                  sltu         s1, a7, t0
                  xori         s7, a6, 1640
                  ori          s6, a4, 331
                  ori          s11, t5, 271
                  beq          s6, sp, 16f
                  add          t5, t0, s9
                  srli         s9, t6, 25
                  nop
                  srai         t6, s1, 8
                  bge          tp, s4, 15f
14:               xor          a6, a4, t1
15:               sltu         sp, s9, a0
16:               auipc        a3, 18429
                  andi         s9, ra, 1689
                  nop
                  andi         s11, a0, -1000
                  bge          sp, tp, 25f
                  slli         t3, s8, 0
                  slli         a3, s3, 3
                  slt          s10, s8, s0
                  sra          sp, a6, t1
25:               auipc        s1, 962783
                  nop
                  addi         s1, t2, -1402
                  slt          a1, s1, zero
                  lw           gp, 4(t4)
                  xori         s7, gp, 850
                  addi         t4, t4, 52
                  sltu         sp, s0, s6
                  xori         zero, s11, -177
                  slt          s0, t5, s1
45:               addi x13, x3, 1
45:               jalr x13, x13, 0
sub_1:            addi         t4, t4, -60
                  xori         t6, s11, -309
                  nop
                  sw           gp, 4(t4)
                  srli         s11, s4, 3
                  la           s5, sub_3
                  nop
                  lui          s1, 740998
                  slli         a6, a5, 5
                  slti         s11, a0, -128
                  sltu         s9, t2, a7
                  addi         s11, s8, -1629
                  addi         s5, s5, -347
                  srai         t6, s9, 28
                  sra          s10, t3, sp
                  bgeu         ra, t1, sub_1_j3 #branch to jump instr
                  srai         a5, a2, 11
sub_1_j3:         jalr         gp, s5, 347 #jump sub_1 -> sub_3
                  nop
                  auipc        tp, 891345
                  auipc        s5, 617459
                  sll          s1, s9, a2
                  sltiu        a5, s5, 850
                  or           s0, s10, sp
                  slti         s0, a0, 1456
                  add          a5, s10, a3
                  sltu         s1, t5, s1
                  srai         s1, a6, 13
sub_1_j4:         jal          gp, sub_2 #jump sub_1 -> sub_2
                  la           a1, sub_2
                  or           ra, s8, a0
                  xor          ra, ra, a5
                  auipc        s5, 635124
                  sub          tp, s0, s8
                  addi         a1, a1, -481
                  bne          s6, a7, sub_1_j5 #branch to jump instr
                  sra          s4, a1, t4
sub_1_j5:         jalr         gp, a1, 481 #jump sub_1 -> sub_2
sub_1_0:          jal          gp, 15f
0:                jal          ra, 8f
1:                jal          s4, 17f
2:                jal          ra, 18f
3:                jal          a0, 7f
4:                jal          a1, 3b
5:                jal          ra, 0b
6:                jal          t1, 14f
7:                jal          gp, 6b
8:                jal          t1, 4b
9:                jal          ra, 5b
10:               jal          ra, 1b
11:               jal          ra, 16f
12:               jal          ra, 2b
13:               jal          ra, 11b
14:               jal          t1, 12b
15:               jal          t1, 13b
16:               jal          t1, 10b
17:               jal          tp, 9b
18:               and          sp, s3, a3
                  ori          s2, s5, 1511
                  xori         t6, a3, -627
                  slt          t1, s2, s5
                  lui          a1, 677754
                  beq          s11, t6, 19f
                  andi         s4, s11, -1792
                  and          s11, t1, sp
                  nop
                  sra          s1, s9, a6
                  bge          t6, t2, 20f
                  slt          s5, a3, s1
                  add          sp, s6, a7
                  and          a6, s9, gp
                  auipc        s6, 274411
                  or           sp, s8, s8
                  slt          t6, s4, a2
                  slt          a1, t0, s9
                  andi         a2, a5, 1860
                  xor          a5, ra, s8
19:               sub          s0, s5, s8
20:               sub          tp, s2, s9
                  slt          s11, a1, t2
                  ori          s1, s4, -1964
                  and          t5, t3, a1
                  blt          t2, s1, 39f
                  and          s9, a5, t0
                  bge          t2, a1, 39f
                  slli         t6, a6, 14
                  sll          s10, s4, s7
                  add          gp, s11, s0
                  sll          s10, a4, sp
                  xori         t6, a4, 1514
                  add          a1, a6, a0
                  add          t6, s0, s5
                  srl          zero, tp, a3
                  and          s11, s8, s7
                  slli         ra, a7, 16
                  sra          a0, s0, s7
                  sltu         a6, s8, s4
39:               srl          a4, a2, s4
                  auipc        a3, 730368
                  srli         s7, ra, 27
                  auipc        tp, 41729
                  ori          s7, t1, 841
                  lui          ra, 650540
                  bgeu         s4, sp, 58f
                  blt          s3, sp, 54f
                  and          t1, s8, s10
                  addi         s0, a1, -399
                  sltu         a7, a3, t1
                  bne          a1, a7, 56f
                  bge          t4, t1, 71f
                  nop
                  srai         a3, a5, 7
54:               xori         s5, t6, 1575
                  auipc        s3, 252995
56:               sll          a5, s8, a6
                  nop
58:               slli         gp, t4, 3
                  and          a2, t6, s0
                  and          ra, a0, tp
                  sltiu        s5, a5, -1507
                  and          s6, s7, s8
                  sub          a1, s7, s2
                  srl          s9, s4, s8
                  lui          ra, 800214
                  add          s10, gp, a6
                  bgeu         zero, t4, 76f
                  addi         s2, s9, -661
                  nop
                  sltu         t6, tp, s9
71:               sub          t1, zero, s0
                  sub          a2, s0, t0
                  add          gp, zero, s10
                  slti         s6, t6, 492
                  ori          zero, s8, 635
76:               sltu         s7, t6, a1
                  and          s5, t3, s5
                  auipc        s3, 115260
                  xori         s0, t1, 803
                  blt          t3, a3, 81f
81:               sltiu        ra, s4, -744
                  add          s9, s8, s9
                  addi         s11, a5, -1496
                  sltu         a4, t6, t0
                  andi         s11, s10, 989
                  and          a1, t1, t3
                  slti         s6, t3, 337
                  lw           gp, 4(t4)
                  sra          t3, t0, t0
                  sll          t1, s4, t3
                  addi         t4, t4, 60
                  nop
151:              addi x1, x3, 0
151:              jalr x1, x1, 0
sub_5:            andi         sp, gp, 56
                  addi         t4, t4, -8
                  sra          a3, s10, s1
                  srai         s2, s9, 20
                  sw           gp, 4(t4)
                  andi         s1, s0, -1205
sub_5_26:         jal          gp, 4f
0:                jal          gp, 12f
1:                jal          ra, 0b
2:                jal          t1, 6f
3:                jal          ra, 11f
4:                jal          ra, 7f
5:                jal          t1, 2b
6:                jal          ra, 1b
7:                jal          s4, 8f
8:                jal          s10, 9f
9:                jal          gp, 10f
10:               jal          ra, 3b
11:               jal          t1, 5b
12:               sltiu        zero, a4, -1322
sub_5_17:         jal          gp, 7f
0:                jal          ra, 5f
1:                jal          ra, 2f
2:                jal          ra, 10f
3:                jal          ra, 13f
4:                jal          tp, 14f
5:                jal          s3, 6f
6:                jal          t6, 9f
7:                jal          ra, 1b
8:                jal          t1, 11f
9:                jal          ra, 15f
10:               jal          s9, 12f
11:               jal          ra, 4b
12:               jal          sp, 3b
13:               jal          ra, 8b
14:               jal          ra, 0b
15:               addi         a7, t0, -1326
sub_5_19:         jal          gp, 6f
0:                jal          ra, 12f
1:                jal          ra, 4f
2:                jal          t1, 10f
3:                jal          t1, 13f
4:                jal          a2, 17f
5:                jal          ra, 8f
6:                jal          sp, 3b
7:                jal          ra, 1b
8:                jal          ra, 11f
9:                jal          ra, 14f
10:               jal          t1, 15f
11:               jal          ra, 9b
12:               jal          t1, 2b
13:               jal          s5, 16f
14:               jal          s9, 7b
15:               jal          s7, 5b
16:               jal          ra, 0b
17:               sltu         s2, a1, s11
sub_5_30:         jal          gp, 17f
0:                jal          s9, 20f
1:                jal          t1, 10f
2:                jal          gp, 22f
3:                jal          ra, 2b
4:                jal          ra, 15f
5:                jal          a7, 6f
6:                jal          ra, 1b
7:                jal          tp, 9f
8:                jal          a0, 21f
9:                jal          ra, 11f
10:               jal          ra, 13f
11:               jal          sp, 5b
12:               jal          ra, 8b
13:               jal          ra, 14f
14:               jal          s11, 3b
15:               jal          ra, 7b
16:               jal          t1, 26f
17:               jal          t1, 25f
18:               jal          t1, 24f
19:               jal          ra, 12b
20:               jal          sp, 19b
21:               jal          ra, 23f
22:               jal          ra, 18b
23:               jal          ra, 4b
24:               jal          ra, 16b
25:               jal          s1, 0b
26:               nop
sub_5_20:         jal          gp, 4f
0:                jal          t1, 5f
1:                jal          tp, 3f
2:                jal          ra, 8f
3:                jal          ra, 7f
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          a3, 11f
7:                jal          t1, 0b
8:                jal          ra, 10f
9:                jal          ra, 1b
10:               jal          gp, 6b
11:               srl          t3, s9, a4
sub_5_7:          jal          gp, 21f
0:                jal          gp, 27f
1:                jal          t1, 12f
2:                jal          ra, 4f
3:                jal          ra, 9f
4:                jal          t1, 23f
5:                jal          ra, 10f
6:                jal          a3, 7f
7:                jal          ra, 11f
8:                jal          t1, 14f
9:                jal          ra, 22f
10:               jal          t1, 24f
11:               jal          ra, 5b
12:               jal          ra, 17f
13:               jal          ra, 8b
14:               jal          ra, 1b
15:               jal          ra, 16f
16:               jal          ra, 26f
17:               jal          ra, 3b
18:               jal          s10, 13b
19:               jal          ra, 0b
20:               jal          ra, 25f
21:               jal          ra, 18b
22:               jal          ra, 15b
23:               jal          ra, 20b
24:               jal          ra, 19b
25:               jal          ra, 6b
26:               jal          ra, 2b
27:               and          s1, s5, zero
sub_5_29:         jal          gp, 5f
0:                jal          s9, 6f
1:                jal          ra, 3f
2:                jal          ra, 11f
3:                jal          ra, 9f
4:                jal          ra, 12f
5:                jal          t1, 2b
6:                jal          tp, 10f
7:                jal          ra, 8f
8:                jal          a7, 4b
9:                jal          t1, 7b
10:               jal          t1, 13f
11:               jal          t1, 1b
12:               jal          sp, 0b
13:               add          s2, sp, a4
sub_5_32:         jal          gp, 9f
0:                jal          sp, 23f
1:                jal          ra, 14f
2:                jal          t1, 30f
3:                jal          t1, 10f
4:                jal          gp, 17f
5:                jal          ra, 0b
6:                jal          s7, 26f
7:                jal          sp, 20f
8:                jal          ra, 19f
9:                jal          ra, 5b
10:               jal          a1, 29f
11:               jal          t1, 18f
12:               jal          t1, 25f
13:               jal          s4, 2b
14:               jal          t1, 22f
15:               jal          tp, 3b
16:               jal          s1, 24f
17:               jal          t1, 7b
18:               jal          t1, 6b
19:               jal          ra, 4b
20:               jal          ra, 16b
21:               jal          ra, 15b
22:               jal          sp, 21b
23:               jal          ra, 12b
24:               jal          ra, 27f
25:               jal          ra, 1b
26:               jal          s10, 8b
27:               jal          ra, 13b
28:               jal          a6, 11b
29:               jal          ra, 28b
30:               lui          s10, 790333
sub_5_16:         jal          gp, 4f
0:                jal          ra, 9f
1:                jal          a0, 11f
2:                jal          t1, 16f
3:                jal          ra, 20f
4:                jal          t1, 15f
5:                jal          ra, 8f
6:                jal          t1, 14f
7:                jal          ra, 0b
8:                jal          t1, 22f
9:                jal          ra, 10f
10:               jal          ra, 5b
11:               jal          s9, 7b
12:               jal          s1, 18f
13:               jal          ra, 6b
14:               jal          s7, 3b
15:               jal          t3, 12b
16:               jal          t1, 23f
17:               jal          ra, 2b
18:               jal          ra, 1b
19:               jal          ra, 17b
20:               jal          t1, 21f
21:               jal          ra, 19b
22:               jal          s3, 13b
23:               slti         t2, a5, 1169
sub_5_21:         jal          gp, 3f
0:                jal          ra, 12f
1:                jal          gp, 13f
2:                jal          ra, 0b
3:                jal          sp, 9f
4:                jal          t1, 23f
5:                jal          t1, 1b
6:                jal          s10, 24f
7:                jal          s10, 17f
8:                jal          a1, 4b
9:                jal          tp, 27f
10:               jal          t1, 7b
11:               jal          ra, 22f
12:               jal          t1, 30f
13:               jal          t1, 29f
14:               jal          ra, 16f
15:               jal          ra, 11b
16:               jal          ra, 21f
17:               jal          tp, 18f
18:               jal          s7, 2b
19:               jal          ra, 15b
20:               jal          t1, 5b
21:               jal          t1, 8b
22:               jal          t3, 6b
23:               jal          s7, 28f
24:               jal          t1, 10b
25:               jal          a5, 26f
26:               jal          t1, 20b
27:               jal          gp, 25b
28:               jal          ra, 19b
29:               jal          ra, 14b
30:               addi         t2, t4, -1742
sub_5_14:         jal          gp, 18f
0:                jal          ra, 16f
1:                jal          gp, 17f
2:                jal          t1, 14f
3:                jal          gp, 0b
4:                jal          ra, 25f
5:                jal          ra, 6f
6:                jal          ra, 24f
7:                jal          a7, 13f
8:                jal          ra, 21f
9:                jal          ra, 7b
10:               jal          ra, 22f
11:               jal          sp, 20f
12:               jal          s11, 1b
13:               jal          t1, 23f
14:               jal          s5, 11b
15:               jal          ra, 19f
16:               jal          ra, 15b
17:               jal          ra, 9b
18:               jal          s4, 5b
19:               jal          s3, 4b
20:               jal          ra, 12b
21:               jal          t1, 10b
22:               jal          ra, 3b
23:               jal          ra, 8b
24:               jal          t5, 2b
25:               xori         a2, a7, 1679
sub_5_39:         jal          gp, 3f
0:                jal          ra, 5f
1:                jal          t1, 7f
2:                jal          ra, 6f
3:                jal          ra, 8f
4:                jal          ra, 13f
5:                jal          t1, 12f
6:                jal          ra, 9f
7:                jal          ra, 10f
8:                jal          t1, 1b
9:                jal          ra, 0b
10:               jal          ra, 2b
11:               jal          ra, 4b
12:               jal          t1, 11b
13:               sub          s7, a6, ra
sub_5_10:         jal          gp, 7f
0:                jal          t1, 10f
1:                jal          ra, 9f
2:                jal          t1, 14f
3:                jal          ra, 1b
4:                jal          s9, 17f
5:                jal          tp, 11f
6:                jal          t1, 15f
7:                jal          ra, 2b
8:                jal          ra, 5b
9:                jal          ra, 18f
10:               jal          ra, 12f
11:               jal          t6, 0b
12:               jal          ra, 4b
13:               jal          tp, 8b
14:               jal          t1, 16f
15:               jal          ra, 13b
16:               jal          gp, 6b
17:               jal          ra, 3b
18:               nop
sub_5_0:          jal          gp, 8f
0:                jal          t6, 4f
1:                jal          ra, 2f
2:                jal          ra, 3f
3:                jal          ra, 10f
4:                jal          gp, 5f
5:                jal          ra, 1b
6:                jal          ra, 9f
7:                jal          tp, 6b
8:                jal          ra, 7b
9:                jal          ra, 0b
10:               jal          a3, 11f
11:               lui          a7, 733240
sub_5_38:         jal          gp, 9f
0:                jal          ra, 3f
1:                jal          ra, 2f
2:                jal          ra, 12f
3:                jal          t1, 10f
4:                jal          t1, 7f
5:                jal          sp, 6f
6:                jal          a4, 0b
7:                jal          ra, 13f
8:                jal          t1, 11f
9:                jal          a6, 8b
10:               jal          s1, 4b
11:               jal          ra, 1b
12:               jal          ra, 5b
13:               andi         a3, ra, 292
sub_5_22:         jal          gp, 16f
0:                jal          ra, 8f
1:                jal          ra, 13f
2:                jal          ra, 14f
3:                jal          ra, 7f
4:                jal          a1, 3b
5:                jal          a6, 17f
6:                jal          s11, 1b
7:                jal          t1, 10f
8:                jal          a6, 6b
9:                jal          ra, 2b
10:               jal          sp, 9b
11:               jal          t3, 0b
12:               jal          t1, 4b
13:               jal          t1, 12b
14:               jal          ra, 5b
15:               jal          ra, 11b
16:               jal          t5, 15b
17:               ori          zero, a2, 1084
sub_5_25:         jal          gp, 8f
0:                jal          ra, 1f
1:                jal          ra, 7f
2:                jal          t1, 6f
3:                jal          a0, 17f
4:                jal          ra, 10f
5:                jal          t1, 14f
6:                jal          t1, 15f
7:                jal          s3, 12f
8:                jal          gp, 16f
9:                jal          a2, 20f
10:               jal          t1, 2b
11:               jal          t1, 9b
12:               jal          s4, 4b
13:               jal          ra, 19f
14:               jal          t1, 22f
15:               jal          s9, 23f
16:               jal          s11, 21f
17:               jal          ra, 13b
18:               jal          tp, 3b
19:               jal          tp, 24f
20:               jal          ra, 18b
21:               jal          s7, 5b
22:               jal          ra, 0b
23:               jal          s7, 11b
24:               auipc        s3, 897615
sub_5_42:         jal          gp, 17f
0:                jal          ra, 15f
1:                jal          s10, 16f
2:                jal          a2, 28f
3:                jal          ra, 22f
4:                jal          ra, 23f
5:                jal          t1, 8f
6:                jal          t1, 11f
7:                jal          a3, 1b
8:                jal          ra, 4b
9:                jal          ra, 27f
10:               jal          a7, 19f
11:               jal          t1, 24f
12:               jal          ra, 2b
13:               jal          t1, 26f
14:               jal          ra, 3b
15:               jal          t1, 18f
16:               jal          a5, 25f
17:               jal          sp, 10b
18:               jal          ra, 7b
19:               jal          t1, 9b
20:               jal          t1, 6b
21:               jal          sp, 13b
22:               jal          ra, 5b
23:               jal          ra, 20b
24:               jal          ra, 0b
25:               jal          ra, 12b
26:               jal          ra, 14b
27:               jal          t1, 21b
28:               xor          s6, s1, t6
sub_5_2:          jal          gp, 9f
0:                jal          a2, 8f
1:                jal          t1, 10f
2:                jal          t2, 4f
3:                jal          ra, 6f
4:                jal          ra, 12f
5:                jal          t1, 1b
6:                jal          s2, 13f
7:                jal          ra, 5b
8:                jal          t1, 11f
9:                jal          ra, 7b
10:               jal          ra, 0b
11:               jal          ra, 2b
12:               jal          ra, 3b
13:               jal          t1, 14f
14:               nop
sub_5_15:         jal          gp, 15f
0:                jal          t1, 17f
1:                jal          s11, 11f
2:                jal          t1, 12f
3:                jal          sp, 8f
4:                jal          ra, 10f
5:                jal          s4, 21f
6:                jal          ra, 3b
7:                jal          t1, 20f
8:                jal          ra, 22f
9:                jal          t1, 4b
10:               jal          sp, 1b
11:               jal          s5, 2b
12:               jal          t1, 0b
13:               jal          ra, 16f
14:               jal          t3, 6b
15:               jal          ra, 5b
16:               jal          ra, 7b
17:               jal          t3, 23f
18:               jal          t2, 9b
19:               jal          t1, 14b
20:               jal          ra, 19b
21:               jal          t5, 13b
22:               jal          ra, 18b
23:               sltiu        s9, t0, -1913
sub_5_9:          jal          gp, 10f
0:                jal          a0, 12f
1:                jal          t1, 13f
2:                jal          ra, 8f
3:                jal          ra, 20f
4:                jal          ra, 22f
5:                jal          ra, 11f
6:                jal          a3, 3b
7:                jal          ra, 1b
8:                jal          ra, 23f
9:                jal          ra, 21f
10:               jal          ra, 17f
11:               jal          ra, 15f
12:               jal          ra, 19f
13:               jal          t1, 14f
14:               jal          ra, 25f
15:               jal          ra, 2b
16:               jal          ra, 6b
17:               jal          ra, 18f
18:               jal          ra, 7b
19:               jal          ra, 27f
20:               jal          s7, 4b
21:               jal          ra, 5b
22:               jal          t2, 9b
23:               jal          ra, 0b
24:               jal          ra, 26f
25:               jal          ra, 24b
26:               jal          ra, 16b
27:               srli         t1, t6, 17
sub_5_1:          jal          gp, 9f
0:                jal          t1, 12f
1:                jal          t1, 7f
2:                jal          tp, 1b
3:                jal          t1, 11f
4:                jal          ra, 0b
5:                jal          ra, 4b
6:                jal          a7, 5b
7:                jal          tp, 3b
8:                jal          t1, 10f
9:                jal          ra, 8b
10:               jal          t3, 2b
11:               jal          t1, 6b
12:               nop
sub_5_43:         jal          gp, 10f
0:                jal          s6, 2f
1:                jal          a0, 0b
2:                jal          ra, 3f
3:                jal          ra, 9f
4:                jal          ra, 7f
5:                jal          ra, 11f
6:                jal          t1, 4b
7:                jal          ra, 8f
8:                jal          ra, 1b
9:                jal          tp, 5b
10:               jal          s7, 6b
11:               slli         t3, zero, 0
sub_5_27:         jal          gp, 3f
0:                jal          t6, 5f
1:                jal          ra, 4f
2:                jal          t2, 6f
3:                jal          s2, 12f
4:                jal          ra, 19f
5:                jal          ra, 14f
6:                jal          t3, 15f
7:                jal          s3, 17f
8:                jal          a6, 7b
9:                jal          s3, 8b
10:               jal          ra, 16f
11:               jal          ra, 1b
12:               jal          t1, 10b
13:               jal          ra, 2b
14:               jal          sp, 20f
15:               jal          ra, 11b
16:               jal          ra, 13b
17:               jal          ra, 18f
18:               jal          gp, 0b
19:               jal          ra, 9b
20:               sra          t2, s7, t3
sub_5_33:         jal          gp, 1f
0:                jal          ra, 8f
1:                jal          s6, 3f
2:                jal          s7, 6f
3:                jal          s1, 12f
4:                jal          s7, 17f
5:                jal          t1, 11f
6:                jal          t1, 18f
7:                jal          t1, 5b
8:                jal          s7, 16f
9:                jal          s4, 15f
10:               jal          t5, 7b
11:               jal          ra, 14f
12:               jal          ra, 4b
13:               jal          ra, 19f
14:               jal          ra, 13b
15:               jal          s4, 0b
16:               jal          t1, 10b
17:               jal          ra, 2b
18:               jal          s3, 9b
19:               addi         a0, s9, -875
sub_5_4:          jal          gp, 20f
0:                jal          sp, 5f
1:                jal          a6, 7f
2:                jal          s5, 19f
3:                jal          t1, 14f
4:                jal          s10, 3b
5:                jal          ra, 8f
6:                jal          sp, 18f
7:                jal          ra, 2b
8:                jal          s10, 4b
9:                jal          ra, 6b
10:               jal          t1, 11f
11:               jal          ra, 13f
12:               jal          tp, 21f
13:               jal          s11, 17f
14:               jal          ra, 10b
15:               jal          ra, 12b
16:               jal          ra, 1b
17:               jal          a4, 9b
18:               jal          sp, 16b
19:               jal          t1, 15b
20:               jal          s7, 0b
21:               slli         s7, s11, 19
sub_5_28:         jal          gp, 15f
0:                jal          ra, 9f
1:                jal          ra, 10f
2:                jal          a6, 11f
3:                jal          ra, 2b
4:                jal          ra, 5f
5:                jal          sp, 7f
6:                jal          ra, 0b
7:                jal          t1, 3b
8:                jal          ra, 4b
9:                jal          ra, 16f
10:               jal          s5, 12f
11:               jal          t3, 14f
12:               jal          a6, 8b
13:               jal          a0, 17f
14:               jal          ra, 13b
15:               jal          ra, 6b
16:               jal          ra, 1b
17:               lui          sp, 648041
sub_5_24:         jal          gp, 17f
0:                jal          sp, 29f
1:                jal          t1, 21f
2:                jal          ra, 13f
3:                jal          ra, 24f
4:                jal          ra, 28f
5:                jal          t1, 7f
6:                jal          a0, 15f
7:                jal          ra, 20f
8:                jal          t1, 10f
9:                jal          t1, 30f
10:               jal          sp, 0b
11:               jal          t1, 25f
12:               jal          ra, 27f
13:               jal          ra, 19f
14:               jal          ra, 5b
15:               jal          ra, 2b
16:               jal          ra, 22f
17:               jal          ra, 23f
18:               jal          ra, 1b
19:               jal          gp, 11b
20:               jal          s9, 8b
21:               jal          s1, 12b
22:               jal          ra, 6b
23:               jal          ra, 14b
24:               jal          ra, 18b
25:               jal          tp, 9b
26:               jal          t1, 4b
27:               jal          ra, 16b
28:               jal          t3, 3b
29:               jal          ra, 26b
30:               sra          tp, t3, s6
sub_5_12:         jal          gp, 15f
0:                jal          a7, 16f
1:                jal          ra, 7f
2:                jal          t1, 0b
3:                jal          sp, 4f
4:                jal          t1, 12f
5:                jal          ra, 6f
6:                jal          ra, 17f
7:                jal          ra, 8f
8:                jal          t1, 5b
9:                jal          ra, 10f
10:               jal          ra, 2b
11:               jal          ra, 1b
12:               jal          ra, 11b
13:               jal          s2, 9b
14:               jal          ra, 13b
15:               jal          sp, 14b
16:               jal          ra, 3b
17:               or           s0, s4, tp
sub_5_45:         jal          gp, 5f
0:                jal          ra, 17f
1:                jal          ra, 7f
2:                jal          ra, 14f
3:                jal          ra, 2b
4:                jal          ra, 8f
5:                jal          ra, 11f
6:                jal          ra, 0b
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          s2, 13f
10:               jal          t6, 18f
11:               jal          sp, 15f
12:               jal          ra, 9b
13:               jal          ra, 3b
14:               jal          ra, 16f
15:               jal          s7, 1b
16:               jal          ra, 4b
17:               jal          ra, 19f
18:               jal          t6, 12b
19:               jal          ra, 20f
20:               addi         s1, a4, 351
sub_5_8:          jal          gp, 5f
0:                jal          ra, 7f
1:                jal          ra, 3f
2:                jal          ra, 4f
3:                jal          ra, 6f
4:                jal          ra, 10f
5:                jal          gp, 1b
6:                jal          ra, 8f
7:                jal          gp, 2b
8:                jal          s10, 0b
9:                jal          ra, 11f
10:               jal          ra, 9b
11:               slti         a5, a6, 1107
sub_5_5:          jal          gp, 11f
0:                jal          sp, 8f
1:                jal          ra, 6f
2:                jal          ra, 9f
3:                jal          tp, 14f
4:                jal          gp, 13f
5:                jal          t1, 2b
6:                jal          ra, 5b
7:                jal          t1, 15f
8:                jal          t1, 1b
9:                jal          a1, 3b
10:               jal          ra, 12f
11:               jal          ra, 10b
12:               jal          ra, 4b
13:               jal          sp, 0b
14:               jal          ra, 7b
15:               and          s0, t4, s4
sub_5_36:         jal          gp, 19f
0:                jal          ra, 3f
1:                jal          gp, 17f
2:                jal          ra, 1b
3:                jal          t1, 13f
4:                jal          ra, 25f
5:                jal          t1, 20f
6:                jal          t1, 15f
7:                jal          tp, 2b
8:                jal          s6, 9f
9:                jal          ra, 14f
10:               jal          s1, 22f
11:               jal          ra, 12f
12:               jal          ra, 7b
13:               jal          tp, 27f
14:               jal          ra, 0b
15:               jal          ra, 5b
16:               jal          ra, 24f
17:               jal          t1, 21f
18:               jal          ra, 11b
19:               jal          gp, 26f
20:               jal          sp, 8b
21:               jal          t1, 23f
22:               jal          a6, 6b
23:               jal          ra, 4b
24:               jal          ra, 10b
25:               jal          sp, 16b
26:               jal          ra, 18b
27:               sra          s0, a1, zero
sub_5_23:         jal          gp, 15f
0:                jal          ra, 12f
1:                jal          t1, 13f
2:                jal          s4, 25f
3:                jal          tp, 16f
4:                jal          a3, 26f
5:                jal          ra, 11f
6:                jal          gp, 7f
7:                jal          ra, 2b
8:                jal          ra, 6b
9:                jal          ra, 22f
10:               jal          t1, 0b
11:               jal          ra, 8b
12:               jal          ra, 4b
13:               jal          ra, 10b
14:               jal          a2, 9b
15:               jal          a6, 18f
16:               jal          s7, 14b
17:               jal          a7, 1b
18:               jal          t1, 20f
19:               jal          ra, 24f
20:               jal          t1, 3b
21:               jal          a5, 5b
22:               jal          a0, 23f
23:               jal          ra, 19b
24:               jal          ra, 17b
25:               jal          t3, 27f
26:               jal          t1, 21b
27:               auipc        s0, 729600
sub_5_44:         jal          gp, 7f
0:                jal          tp, 9f
1:                jal          ra, 2f
2:                jal          ra, 14f
3:                jal          ra, 10f
4:                jal          t1, 1b
5:                jal          t1, 12f
6:                jal          t6, 0b
7:                jal          ra, 3b
8:                jal          ra, 6b
9:                jal          ra, 11f
10:               jal          s10, 5b
11:               jal          ra, 13f
12:               jal          t1, 8b
13:               jal          sp, 4b
14:               slt          sp, t1, t3
sub_5_3:          jal          gp, 25f
0:                jal          t1, 12f
1:                jal          ra, 20f
2:                jal          ra, 18f
3:                jal          t1, 19f
4:                jal          ra, 10f
5:                jal          s5, 26f
6:                jal          t1, 17f
7:                jal          t1, 27f
8:                jal          s11, 3b
9:                jal          ra, 30f
10:               jal          sp, 28f
11:               jal          ra, 13f
12:               jal          t1, 7b
13:               jal          t1, 14f
14:               jal          a5, 23f
15:               jal          t1, 8b
16:               jal          ra, 9b
17:               jal          ra, 15b
18:               jal          t1, 22f
19:               jal          t6, 11b
20:               jal          s5, 24f
21:               jal          ra, 2b
22:               jal          t1, 4b
23:               jal          tp, 1b
24:               jal          t1, 16b
25:               jal          tp, 0b
26:               jal          t1, 6b
27:               jal          ra, 21b
28:               jal          ra, 29f
29:               jal          t1, 5b
30:               sltu         t1, a6, gp
sub_5_11:         jal          gp, 13f
0:                jal          t1, 24f
1:                jal          a3, 3f
2:                jal          t1, 21f
3:                jal          ra, 15f
4:                jal          ra, 5f
5:                jal          ra, 2b
6:                jal          s11, 22f
7:                jal          ra, 6b
8:                jal          t1, 10f
9:                jal          t3, 23f
10:               jal          ra, 16f
11:               jal          ra, 14f
12:               jal          ra, 4b
13:               jal          sp, 20f
14:               jal          ra, 7b
15:               jal          t1, 11b
16:               jal          t1, 17f
17:               jal          t1, 25f
18:               jal          s6, 1b
19:               jal          ra, 0b
20:               jal          s10, 12b
21:               jal          t3, 18b
22:               jal          sp, 9b
23:               jal          tp, 19b
24:               jal          ra, 8b
25:               xori         t6, sp, 1003
sub_5_6:          jal          gp, 9f
0:                jal          ra, 14f
1:                jal          s2, 17f
2:                jal          ra, 15f
3:                jal          ra, 2b
4:                jal          t1, 11f
5:                jal          ra, 13f
6:                jal          sp, 0b
7:                jal          s10, 10f
8:                jal          ra, 16f
9:                jal          ra, 4b
10:               jal          gp, 12f
11:               jal          ra, 5b
12:               jal          ra, 6b
13:               jal          ra, 7b
14:               jal          ra, 3b
15:               jal          t2, 8b
16:               jal          a7, 1b
17:               sltu         a7, s3, t0
sub_5_37:         jal          gp, 8f
0:                jal          ra, 11f
1:                jal          a3, 9f
2:                jal          a5, 3f
3:                jal          ra, 10f
4:                jal          ra, 2b
5:                jal          t1, 6f
6:                jal          s2, 7f
7:                jal          t1, 4b
8:                jal          ra, 5b
9:                jal          ra, 0b
10:               jal          t1, 1b
11:               srl          a7, a5, t0
sub_5_40:         jal          gp, 5f
0:                jal          ra, 6f
1:                jal          sp, 7f
2:                jal          ra, 12f
3:                jal          s11, 11f
4:                jal          ra, 8f
5:                jal          t5, 13f
6:                jal          t1, 9f
7:                jal          s6, 2b
8:                jal          t3, 10f
9:                jal          s10, 1b
10:               jal          ra, 0b
11:               jal          gp, 14f
12:               jal          ra, 3b
13:               jal          t1, 4b
14:               addi         a4, s6, 1602
                  ori          tp, a3, -1330
                  and          a4, a5, t0
                  bgeu         s1, s1, 6f
                  bltu         t0, s11, 8f
                  auipc        s11, 427467
                  and          s2, s11, a5
6:                slli         s10, s7, 13
                  srl          a5, a0, t4
8:                sltiu        s1, a0, 1446
                  srli         s3, t6, 28
                  bgeu         s8, gp, 24f
                  sra          a3, s2, s11
                  bgeu         t6, a4, 15f
                  auipc        t3, 414441
                  srli         a6, s4, 18
15:               bgeu         s9, t0, 23f
                  and          s11, s8, s8
                  sltiu        s10, s3, -469
                  blt          s0, s9, 33f
                  addi         s10, s5, 1596
                  beq          a1, t2, 27f
                  add          gp, a2, gp
                  slt          s7, ra, s2
23:               beq          t3, t6, 34f
24:               sltiu        a6, sp, -1838
                  slli         a1, s1, 28
                  nop
27:               lui          gp, 321868
                  or           tp, a1, a7
                  beq          a7, s3, 43f
                  and          s6, gp, t6
                  srai         s1, s11, 21
                  bgeu         s1, s8, 40f
33:               andi         s5, a6, 188
34:               sra          s5, t4, a2
                  ori          zero, s0, 1897
                  srli         a1, ra, 21
                  srai         s1, t2, 24
                  sltiu        t2, s11, 858
                  andi         ra, tp, -308
40:               add          s10, t5, s3
                  xori         t3, t1, 1848
                  andi         sp, tp, 823
43:               and          a5, gp, s4
                  sub          a5, s9, t6
                  sll          s9, a2, t0
                  sltu         t3, t4, t3
                  addi         a0, a3, -535
                  lui          a7, 408166
                  srl          s9, zero, s11
                  auipc        a2, 522004
                  ori          zero, s7, -1498
                  sra          s0, t5, ra
                  srli         s9, s1, 9
                  ori          s2, t1, -1276
                  beq          s9, t3, 63f
                  blt          gp, s3, 65f
                  slti         a0, s0, -1121
                  lui          a5, 220019
                  sra          a2, t2, t4
                  srl          a5, tp, sp
                  and          t6, a5, t3
                  sltiu        s6, zero, 1338
63:               srli         s3, s2, 5
                  sra          sp, a1, s10
65:               bgeu         t5, t5, 84f
                  auipc        t5, 260060
                  slli         s1, s11, 18
                  auipc        s7, 294718
                  andi         s6, a7, 931
                  srl          gp, s4, t3
                  sltu         s7, s7, s9
                  auipc        s6, 919063
                  slli         sp, t4, 12
                  sltiu        s11, s10, 171
                  slt          a4, s7, s0
                  bgeu         s3, a1, 96f
                  srli         s3, a6, 11
                  sub          tp, s10, zero
                  srai         a7, ra, 13
                  bltu         ra, s1, 81f
81:               addi         s0, t0, -1914
                  and          a5, s8, sp
                  slt          ra, t4, t6
84:               srli         t5, a1, 2
                  srl          zero, a1, a2
                  bgeu         s8, zero, 105f
                  add          tp, s2, t6
                  slli         s1, s3, 19
                  srli         ra, s0, 11
                  lui          zero, 809457
                  blt          a6, t0, 108f
                  srl          s7, s3, s4
                  srli         gp, s4, 25
                  srli         a2, t4, 20
                  beq          zero, s8, 112f
96:               add          t1, sp, s5
                  sltiu        t5, s7, 1781
                  nop
                  nop
                  slt          s7, a4, s11
                  slti         a5, s7, 463
                  or           s11, s4, s9
                  add          a0, s11, a3
                  sll          s1, sp, s5
105:              or           s6, gp, a0
                  auipc        s1, 581041
                  bge          s5, a6, 126f
108:              srli         t3, s8, 30
                  sltu         tp, s8, t6
                  sra          tp, t0, s0
                  addi         t5, s5, 1256
112:              srai         s4, s2, 3
                  ori          s7, s1, 1970
                  bne          ra, s2, 115f
115:              blt          a2, s7, 116f
116:              slti         sp, t6, -499
                  or           a3, sp, s10
                  srai         zero, t1, 30
                  andi         t3, s11, -307
                  and          t2, s4, t6
                  lui          t6, 4737
                  beq          t0, gp, 128f
                  bne          a3, t3, 138f
                  srai         s10, a3, 8
                  and          s0, a2, t6
126:              or           s3, s2, a1
                  blt          gp, t4, 137f
128:              sltu         s0, ra, a5
                  sll          a2, a3, t1
                  bgeu         ra, zero, 138f
                  bgeu         s5, s2, 136f
                  auipc        s2, 125369
                  srli         s4, s4, 20
                  add          sp, t5, a2
                  beq          zero, s10, 138f
136:              ori          a5, s5, -1011
137:              sltu         s10, t1, a7
138:              and          s6, t3, s0
                  auipc        t1, 605547
                  bge          s9, s10, 143f
                  slti         s11, s9, -1948
                  xor          a3, a6, s6
143:              or           a1, t6, s4
                  nop
                  slli         t1, t2, 24
                  auipc        s0, 451168
                  srai         a6, s8, 13
                  bne          a1, s11, 163f
                  bge          t4, sp, 167f
                  srai         s6, s1, 18
                  xor          s4, tp, s10
                  sltu         gp, sp, t1
                  sub          ra, t3, ra
                  slt          a3, t1, sp
                  slti         s11, a6, -232
                  bltu         a2, s11, 171f
                  srl          a3, s4, s4
                  slti         s2, a7, 804
                  sltu         s0, s4, a7
                  bltu         sp, a1, 174f
                  bltu         ra, t2, 166f
                  sltiu        s10, t2, 1617
163:              add          s5, t4, s1
                  andi         a1, a0, -1881
                  slt          t5, s1, t0
166:              andi         s7, a5, -1671
167:              sub          a5, a6, s5
                  blt          tp, s0, 182f
                  or           t1, s11, s7
                  ori          t5, s2, -1825
171:              and          t6, s10, t4
                  srl          t2, t5, a4
                  or           s10, a6, t3
174:              nop
                  sll          a0, t1, a1
                  slt          a0, t2, a0
                  nop
                  slti         tp, s8, -297
                  auipc        s7, 995651
                  slli         a4, sp, 21
                  bgeu         a3, a6, 187f
182:              srli         a0, t4, 3
                  xor          zero, s5, s9
                  and          s5, s9, a4
                  auipc        tp, 972768
                  addi         s5, s1, 707
187:              or           s2, s6, s4
                  lui          a7, 644548
                  xori         sp, tp, -1442
                  xor          tp, s1, a1
                  lui          t6, 25920
                  srai         s0, a6, 25
                  sltiu        t2, ra, 889
                  auipc        s1, 338725
                  bge          zero, s10, 200f
                  srai         a0, s9, 13
                  sll          t6, a0, zero
                  sra          t1, t6, t0
                  bne          zero, a2, 217f
200:              or           s5, t2, s9
                  xori         t5, s0, -1336
                  slti         s9, zero, -1976
                  slt          s7, a2, gp
                  bne          s3, gp, 207f
                  beq          s7, a2, 224f
                  slli         s1, s11, 21
207:              bne          s0, sp, 226f
                  xor          t5, s9, t5
                  sub          gp, s5, gp
                  auipc        a5, 757106
                  ori          s4, s11, -1460
                  ori          s5, ra, 1216
                  and          tp, s3, s2
                  auipc        a5, 454817
                  lui          s3, 60399
                  sll          s11, s10, a3
217:              add          s9, a6, zero
                  bgeu         s5, t3, 221f
                  xor          s1, s9, s1
                  andi         tp, a5, -261
221:              sltiu        a1, s7, 1830
                  bgeu         s7, s5, 225f
                  slli         gp, t3, 3
224:              addi         s6, a7, -850
225:              bge          s10, t5, 233f
226:              srli         a2, t2, 13
                  ori          t1, s8, -1815
                  xor          t6, t3, s2
                  srai         s6, s10, 14
                  srl          t1, ra, t2
                  lui          s3, 945312
                  nop
233:              bne          t1, a1, 241f
                  add          t3, a7, a1
                  blt          s6, t4, 255f
                  or           s10, a3, s7
                  or           a6, a2, s9
                  slli         a4, a0, 31
                  slli         t2, t4, 28
                  xori         a3, s11, 203
241:              auipc        s10, 927344
                  slli         a5, s2, 12
                  srli         t1, t0, 12
                  nop
                  addi         zero, t4, 572
                  beq          zero, tp, 254f
                  xori         a7, s0, -75
                  sltiu        s10, a5, -1524
                  xori         gp, sp, 513
                  blt          a6, a1, 251f
251:              beq          s3, s5, 266f
                  lui          s10, 964437
                  lui          a3, 641809
254:              blt          t5, tp, 271f
255:              nop
                  nop
                  sll          s9, a4, a1
                  slt          a4, sp, a6
                  ori          t1, s0, -1627
                  bgeu         s2, s5, 271f
                  sub          zero, t0, s2
                  ori          gp, a6, -206
                  sub          s11, t0, a3
                  slt          s5, sp, t6
                  srl          zero, t4, s10
266:              nop
                  slti         s10, s7, -48
                  xor          t2, s9, tp
                  srl          a3, a6, t6
                  ori          s1, t0, 283
271:              srli         a3, a2, 27
                  srai         s4, t0, 29
                  bltu         s7, t5, 288f
                  add          s6, sp, s4
                  blt          a5, sp, 276f
276:              slti         t3, a3, -78
                  and          a0, s8, s10
                  slt          t5, s9, zero
                  xori         ra, s10, -275
                  addi         a4, a0, 1491
                  ori          s10, s0, -1061
                  ori          t1, sp, -1910
                  slli         s2, a6, 29
                  xori         zero, t4, 433
                  sltu         s4, zero, s3
                  bne          sp, sp, 305f
                  addi         t2, a1, -697
288:              andi         s0, t6, 1470
                  slti         s0, s3, -1531
                  or           a2, s2, s5
                  bne          zero, t6, 308f
                  bge          s2, a2, 300f
                  slli         a5, t0, 16
                  lui          zero, 17068
                  slt          a6, a5, t0
                  bgeu         a4, gp, 303f
                  addi         s0, a2, 1897
                  bgeu         a1, a0, 308f
                  or           s3, t5, a0
300:              add          s10, t6, s5
                  auipc        a3, 861189
                  bgeu         zero, ra, 303f
303:              slli         s10, gp, 2
                  srli         a1, t4, 16
305:              sltu         ra, s1, s11
                  srli         s1, t0, 7
                  auipc        s3, 30460
308:              and          t3, a0, tp
                  xor          sp, zero, s1
                  bltu         s1, a6, 314f
                  slti         tp, s4, 211
                  srl          tp, zero, t4
                  slli         a1, a0, 26
314:              sll          s7, zero, a0
                  sltiu        a6, s8, 181
                  add          s11, t1, s5
                  add          a3, t5, a4
                  srai         gp, zero, 27
                  addi         a5, t2, -1446
                  or           s11, s1, s1
                  beq          gp, tp, 330f
                  ori          ra, s8, 1714
                  add          t3, zero, s6
                  and          zero, a6, s1
                  bne          a2, s2, 335f
                  ori          zero, s6, 203
                  srl          t2, s7, s1
                  add          s1, a2, s3
                  bne          a4, s3, 349f
330:              bltu         s11, t1, 333f
                  sll          a7, t5, s11
                  beq          tp, s10, 340f
333:              slli         s4, s2, 29
                  srai         t5, t6, 9
335:              beq          sp, t4, 352f
                  blt          a2, s0, 354f
                  bne          s7, t0, 348f
                  or           s2, a3, a5
                  bgeu         s6, t6, 358f
340:              blt          a7, a6, 341f
341:              add          t2, s8, t2
                  bge          t2, gp, 357f
                  nop
                  slt          zero, a2, t5
                  and          a4, s6, a5
                  srl          s3, a5, t0
                  or           s5, t0, s2
348:              srli         ra, t5, 12
349:              or           t3, a1, t0
                  sub          a4, s8, s7
                  slli         s5, t0, 8
352:              sub          s6, s11, t0
                  blt          s10, sp, 361f
354:              addi         a6, a5, 42
                  srai         a3, s2, 14
                  ori          s4, t3, 850
357:              sll          s11, t2, s9
358:              and          ra, a0, t6
                  andi         s9, a4, 135
                  addi         tp, s5, -825
361:              srai         s5, a3, 14
                  beq          sp, s7, 365f
                  bltu         t1, a4, 371f
                  lui          s9, 626742
365:              sltiu        s5, t0, -12
                  xori         t5, a7, -425
                  slt          s4, t1, zero
                  bgeu         zero, s2, 373f
                  srli         s10, a2, 31
                  nop
371:              ori          s11, s1, 565
                  bne          a1, t6, 377f
373:              sub          s11, a3, a5
                  xor          zero, s1, s4
                  sub          zero, a3, s3
                  xor          zero, s6, s11
377:              xori         s6, s0, -274
                  add          s11, s5, s2
                  slli         s4, sp, 7
                  srai         a5, gp, 6
                  ori          s2, s10, -48
                  add          s6, t5, tp
                  xor          s7, s11, a3
                  ori          s4, a5, -271
                  sub          s2, s7, a0
                  or           s9, t6, a4
                  sltiu        t2, ra, -1523
                  sub          s2, s0, s9
                  srl          s11, s10, sp
                  lui          s2, 373170
                  andi         a4, t0, 1113
                  sltiu        s11, a7, 1543
                  or           t3, tp, sp
                  andi         zero, s1, 1658
                  sub          s9, a4, zero
                  srai         sp, sp, 21
                  andi         a6, a1, 601
                  auipc        tp, 843578
                  slti         tp, s5, -1857
                  bge          t1, s1, 415f
                  blt          a7, t0, 402f
402:              xor          t3, a1, t6
                  slt          sp, t6, zero
                  slli         a6, sp, 18
                  bge          s8, s10, 408f
sub_5_41:         jal          gp, 5f
0:                jal          ra, 1f
1:                jal          ra, 13f
2:                jal          s5, 28f
3:                jal          sp, 19f
4:                jal          ra, 2b
5:                jal          tp, 25f
6:                jal          ra, 23f
7:                jal          ra, 27f
8:                jal          t1, 16f
9:                jal          ra, 6b
10:               jal          ra, 14f
11:               jal          a1, 12f
12:               jal          ra, 26f
13:               jal          ra, 21f
14:               jal          a3, 7b
15:               jal          ra, 8b
16:               jal          sp, 3b
17:               jal          ra, 15b
18:               jal          s6, 4b
19:               jal          tp, 11b
20:               jal          t1, 10b
21:               jal          ra, 18b
22:               jal          ra, 20b
23:               jal          a6, 24f
24:               jal          a0, 22b
25:               jal          t1, 9b
26:               jal          t1, 0b
27:               jal          ra, 17b
28:               addi         a5, a6, -439
                  srai         s10, a4, 20
                  xori         t3, a5, -345
408:              sra          s4, sp, s11
                  sltiu        t1, s7, 419
                  slli         a1, t3, 9
                  andi         t1, a3, -1007
                  and          s11, t0, s9
                  or           t5, s6, s7
                  lui          t2, 1034229
415:              bltu         a1, s0, 434f
                  andi         a0, sp, -1410
                  slli         t2, t2, 18
                  bge          a1, t6, 433f
                  sra          t6, s8, t3
                  andi         a2, s4, 440
                  slli         a5, tp, 25
                  sltiu        s0, s4, 56
                  nop
                  sltu         a3, s9, tp
                  ori          s1, s2, 1543
                  bgeu         s2, t6, 435f
                  slli         a7, sp, 23
                  srl          t1, t0, s6
                  slt          a2, s8, t1
                  xor          s0, a4, s8
                  slli         s1, s8, 0
                  add          tp, s7, a6
433:              slt          a0, t5, t1
434:              sltu         s0, s5, t5
435:              slli         s11, s0, 4
                  ori          a5, a2, 1317
                  nop
                  nop
                  xor          a6, s2, t3
                  nop
                  or           t6, s9, gp
                  srli         a5, s10, 6
                  bge          s8, s1, 457f
                  andi         s4, t6, 1947
                  slt          s2, s2, a1
                  nop
                  andi         s1, s8, -1878
                  sra          tp, s3, s1
                  bgeu         s5, t6, 450f
450:              nop
                  slt          a3, t2, s9
                  slti         s0, tp, 337
                  slt          s1, sp, t3
                  add          a4, zero, a7
                  sltu         s9, a7, t3
                  auipc        a7, 636294
457:              nop
                  xor          s6, s3, s9
                  add          a1, a1, t3
                  bltu         t2, a6, 474f
                  ori          t6, s3, 1632
                  add          t3, s7, s11
                  nop
                  blt          t3, tp, 470f
                  auipc        tp, 893788
                  slt          a2, s10, s6
                  or           ra, sp, a3
                  addi         s0, s7, -504
                  add          s9, a1, a3
470:              andi         s3, t5, 37
                  lui          ra, 148458
                  bgeu         a5, s0, 476f
                  sub          t3, a3, ra
474:              sltiu        zero, a4, -545
                  bge          a4, tp, 483f
476:              addi         a0, s11, -1887
sub_5_31:         jal          gp, 4f
0:                jal          ra, 8f
1:                jal          ra, 10f
2:                jal          ra, 3f
3:                jal          t1, 0b
4:                jal          ra, 9f
5:                jal          ra, 11f
6:                jal          ra, 5b
7:                jal          ra, 2b
8:                jal          s1, 6b
9:                jal          ra, 1b
10:               jal          tp, 7b
11:               addi         a3, t3, -833
                  or           gp, gp, a4
                  xori         s7, s5, 239
                  srai         s9, tp, 13
                  auipc        a1, 129056
                  auipc        a4, 182242
                  and          s1, s2, sp
sub_5_47:         jal          gp, 11f
0:                jal          ra, 20f
1:                jal          s9, 3f
2:                jal          t1, 18f
3:                jal          gp, 23f
4:                jal          ra, 12f
5:                jal          ra, 8f
6:                jal          t1, 2b
7:                jal          a6, 16f
8:                jal          t1, 17f
9:                jal          sp, 1b
10:               jal          t1, 13f
11:               jal          s4, 15f
12:               jal          t1, 21f
13:               jal          ra, 0b
14:               jal          ra, 7b
15:               jal          ra, 22f
16:               jal          sp, 19f
17:               jal          t1, 10b
18:               jal          ra, 14b
19:               jal          t1, 4b
20:               jal          t1, 9b
21:               jal          ra, 5b
22:               jal          t1, 6b
23:               xor          s2, t2, s6
483:              bge          tp, a3, 502f
                  bne          s8, s1, 501f
                  blt          a3, a7, 492f
                  bne          zero, s7, 505f
                  srai         s0, s11, 28
                  sll          ra, a0, ra
                  bgeu         t6, t0, 497f
                  xori         a5, a1, -1573
                  srli         t3, t5, 1
492:              bne          s2, t5, 507f
                  addi         s7, s6, 620
                  xori         sp, s11, 1758
                  bgeu         gp, t5, 496f
496:              xori         a5, a4, 1782
497:              sra          s5, s6, t5
                  bne          t6, gp, 518f
                  add          a2, s8, s3
                  sub          a3, a1, sp
501:              auipc        a3, 981411
502:              bgeu         s5, s3, 512f
                  sra          sp, s2, t1
                  bge          zero, s2, 508f
505:              slli         s11, s6, 27
                  xor          s9, s8, sp
507:              sltiu        s5, a5, -1007
508:              bltu         sp, t3, 509f
509:              andi         s5, s9, 1648
                  sltiu        s2, t0, -60
                  sll          a7, a1, s5
512:              srli         t3, a6, 7
                  add          s10, s2, t5
                  sll          s11, zero, a3
                  and          a0, s0, s8
                  bge          t2, ra, 524f
                  and          a4, t2, t0
518:              xor          a1, s5, s4
                  xori         s4, t3, 1840
                  beq          t3, a0, 523f
                  lui          a0, 1041931
                  sltu         a0, s4, s2
523:              sltiu        s9, s3, -1688
524:              andi         a4, s8, 1353
                  slli         s5, s5, 16
                  xor          s7, sp, t5
                  sll          a7, s0, t3
                  sltiu        a7, a7, -143
                  srli         sp, s10, 22
                  ori          a0, t1, -127
                  srl          s10, s11, zero
                  sltiu        a3, s2, -985
                  slt          s5, s10, sp
                  sub          a4, a5, s11
                  sll          s9, a3, tp
                  add          gp, t2, s8
                  ori          t1, s0, -844
                  andi         s2, a6, 115
                  bgeu         s10, s1, 556f
                  srli         s7, a0, 26
                  sltu         s7, s4, s4
                  and          a0, s5, t0
                  sltu         s3, s2, a3
                  sltu         s9, tp, s11
                  sltu         s0, s5, s0
                  srai         s2, s11, 7
                  slt          s1, s4, t2
                  nop
                  srl          s11, t1, a5
                  bge          tp, a7, 553f
                  sll          s6, tp, gp
                  srli         s10, ra, 29
553:              and          t2, s3, tp
                  slli         s1, s9, 28
                  srai         sp, a5, 25
556:              sra          t6, a2, a2
                  xori         s3, s10, -23
                  addi         t1, s5, 1913
                  xor          tp, ra, sp
                  andi         s6, t2, 969
                  slli         s2, a1, 6
                  nop
                  blt          s8, t2, 569f
                  sltu         s9, a4, t5
                  and          ra, tp, s10
                  auipc        t2, 487609
                  nop
                  slli         a5, s0, 9
569:              or           gp, a5, a3
                  ori          t2, t5, 1444
                  and          s1, ra, s5
                  sltu         t3, s7, sp
                  sub          t3, s6, a1
                  auipc        s2, 17872
                  lui          s6, 871728
                  xor          t2, s6, t4
                  sub          s10, s0, s1
                  sltu         a7, s2, zero
                  bge          s6, s7, 587f
                  xor          s7, s5, gp
                  lui          a3, 1005300
                  nop
                  sltu         s11, t0, a7
                  xor          ra, s1, a5
                  auipc        s4, 568575
                  sra          s0, s6, a1
587:              slt          s9, s3, t2
                  bgeu         a7, a3, 597f
                  sltu         a2, s9, a4
                  slli         s10, t5, 25
                  sra          a7, sp, s0
                  bge          t6, a7, 607f
                  blt          a4, a1, 608f
                  or           a7, s8, gp
                  bne          a3, s7, 614f
                  bltu         t1, a6, 601f
597:              slli         tp, s9, 11
                  bltu         tp, a3, 617f
                  nop
                  lui          a0, 303273
601:              srai         sp, s8, 11
                  and          t3, a1, t6
                  srli         s2, a2, 10
                  sub          a6, s0, tp
                  lui          gp, 803845
                  bgeu         a1, t1, 614f
607:              slt          s7, a2, a3
608:              beq          s6, s7, 611f
                  and          tp, t5, a3
                  xor          s6, a5, s10
611:              beq          s4, s3, 618f
                  nop
                  srli         gp, s9, 28
614:              xor          s3, a2, a4
                  lui          s2, 470171
                  slt          sp, sp, ra
617:              sra          s9, a7, ra
618:              andi         s5, s5, -417
                  add          gp, a6, s7
                  sll          a7, ra, a2
                  slt          a7, s3, t3
                  sll          zero, sp, s0
                  and          a1, a3, a6
                  nop
                  srli         a3, zero, 29
                  ori          s9, a2, 806
                  blt          t6, s0, 641f
                  bltu         s1, sp, 642f
                  xor          a1, t1, s8
                  add          sp, sp, a2
                  lui          ra, 481845
                  bltu         t1, zero, 633f
633:              sra          s2, s1, a5
                  xor          s5, a5, t6
                  auipc        a1, 1011920
                  auipc        s6, 952935
                  srl          t5, zero, s5
                  auipc        a3, 399949
                  andi         s10, s11, -667
                  bgeu         t4, s1, 651f
641:              blt          s4, s8, 659f
642:              sub          t3, s8, s8
                  srl          t1, s11, s5
                  lui          s5, 633483
                  bge          a1, s3, 662f
                  bgeu         t1, s10, 651f
                  nop
                  sub          t3, t4, t2
                  auipc        s11, 433518
                  andi         sp, s5, 1716
651:              addi         a6, sp, 1719
                  slti         a4, t1, -1418
                  addi         a3, a1, 239
                  or           a5, t2, a1
                  nop
                  srli         t2, t4, 19
                  or           a7, a1, t5
                  xori         t2, s0, -1820
659:              lui          s3, 267306
                  bltu         zero, s1, 661f
661:              sltiu        a5, s9, -1675
662:              sltiu        s9, s8, 306
                  bltu         a5, s6, 680f
                  srai         s1, s6, 17
                  slt          a6, s0, zero
                  blt          a0, t2, 685f
                  bne          tp, s9, 670f
                  and          t6, s7, t3
                  srai         sp, a7, 1
670:              addi         a3, ra, -225
                  bltu         t1, t4, 677f
                  lui          t1, 872218
                  xori         s6, gp, 2014
                  sltu         tp, s2, s7
                  sub          a4, sp, a2
                  beq          s7, t2, 691f
677:              xor          s2, zero, t0
                  slli         a3, s5, 30
                  and          s10, gp, s9
680:              xor          s10, s8, a0
                  sll          gp, a1, zero
                  sub          s10, s11, t2
                  sub          s1, s5, t1
                  nop
685:              xori         a3, a7, -1480
                  slti         a1, t6, 1768
                  sltu         s9, t2, a3
                  sub          s7, s11, sp
                  xori         s9, a0, 1028
                  bgeu         t3, t4, 691f
691:              slli         s0, s2, 13
                  blt          t0, a3, 711f
                  sub          a0, sp, t5
                  add          s0, s5, s11
                  addi         a4, a5, -283
                  and          a4, a6, s1
                  lui          s3, 174641
                  nop
                  bne          s1, a1, 708f
                  slt          a0, s7, a7
                  slti         t2, t0, 587
                  slti         t6, a0, 236
                  ori          a2, t1, -150
                  slti         s0, t1, -1347
                  lui          a2, 663096
                  addi         s7, a0, 525
                  and          a2, s2, t5
708:              ori          s9, a5, -442
                  srai         t6, s5, 5
                  andi         s6, t5, -1927
711:              srli         t2, s0, 24
                  sra          a4, a4, s7
                  srl          a1, t6, s2
                  bne          t6, s3, 724f
                  lui          a5, 23149
                  bge          s11, t3, 731f
                  and          s11, s2, a1
                  nop
                  sra          s7, ra, s8
                  srli         s2, t6, 16
                  slt          ra, t4, t5
                  addi         t3, s9, -1266
                  bne          s2, t4, 731f
724:              bltu         s4, s3, 732f
                  sll          a4, a6, a5
                  andi         a3, s1, 697
                  sltiu        t5, ra, 175
                  or           tp, a7, s3
                  slli         sp, a3, 8
                  srl          s6, t0, s3
731:              slt          zero, a3, a1
732:              slli         sp, a1, 0
                  bne          ra, t6, 736f
                  bgeu         s5, s10, 748f
                  slli         sp, sp, 29
736:              bge          zero, s4, 751f
                  beq          a4, s0, 738f
738:              add          s9, ra, a6
                  srai         t3, tp, 0
                  add          t3, s9, t0
                  slti         zero, s11, 1480
                  nop
                  slti         tp, ra, -1759
                  xori         a7, s6, -449
                  nop
                  sll          a4, a4, s5
                  ori          s3, s3, 1457
748:              sltiu        ra, sp, 1259
                  add          t5, a6, s2
                  bltu         sp, t2, 754f
751:              blt          sp, a7, 759f
                  ori          s1, a6, -268
                  sub          s0, a6, t1
754:              slti         ra, t1, -1574
                  add          t5, t2, zero
                  add          t5, ra, tp
                  blt          a1, tp, 777f
                  bge          a7, tp, 763f
759:              sll          a3, s0, a3
                  auipc        s5, 568483
                  bge          sp, t3, 768f
                  xori         s1, s10, 1681
763:              slli         t6, tp, 25
                  bne          s0, s2, 782f
                  nop
                  andi         s4, a7, 332
                  sll          a1, s2, a5
768:              sll          s1, t0, s2
                  nop
                  srai         a1, zero, 26
                  sub          a6, t4, t5
                  sll          s10, a4, t1
                  addi         s0, s4, -666
                  sltu         a4, t0, s8
                  sltiu        tp, t6, -682
                  or           s3, a7, tp
777:              ori          s4, s5, -1066
                  xori         a5, t2, -110
                  srli         a5, t0, 10
                  addi         sp, a6, 1431
                  lui          s10, 210627
782:              slli         sp, t5, 3
                  slti         s0, s3, -1210
                  sltu         s3, a0, a2
                  sltiu        zero, a6, -1812
                  srl          s2, s10, a0
                  sll          s10, s2, a2
                  sll          s5, s2, zero
                  beq          a1, t4, 808f
                  slli         s7, s4, 20
                  nop
                  addi         s2, t5, -141
                  srai         s7, s3, 25
                  lui          s11, 347232
                  slli         s5, t5, 24
                  andi         s1, t6, -831
                  addi         s2, s4, 2005
                  bge          a3, t5, 815f
                  beq          a0, s2, 807f
                  bge          s7, a5, 811f
                  sll          s10, a0, t4
                  andi         s11, tp, -165
                  ori          s3, s9, -1186
                  nop
                  srli         a5, a2, 18
                  andi         t3, a6, -771
807:              blt          s3, s7, 810f
808:              sub          a3, s1, s7
                  sra          s2, a2, a6
810:              lui          s9, 424053
811:              srai         a3, s11, 26
                  srl          t3, t2, s1
                  srl          s3, tp, t3
                  sub          s2, t4, t4
815:              bne          t4, a7, 829f
                  nop
                  sltiu        zero, tp, 1732
                  bge          s7, a0, 823f
                  lui          t2, 841265
                  add          s1, s7, s5
                  sra          a2, t2, sp
                  add          s6, ra, s2
823:              sltiu        a7, s6, 1792
                  sll          a2, a0, s7
                  srl          a5, t6, t0
                  srl          s6, t5, t1
                  slti         a4, sp, -1352
                  slt          gp, s0, a0
829:              lui          s4, 269893
                  sll          s2, a4, s7
                  bgeu         s2, s7, 839f
                  slti         sp, s7, 1695
                  beq          t1, s9, 841f
                  blt          a0, s8, 854f
                  srl          t1, s2, a1
                  srli         a0, gp, 27
                  or           s2, t1, s0
                  addi         s6, s4, -1272
839:              slli         s9, gp, 6
                  auipc        a2, 883292
841:              bgeu         s5, t0, 860f
                  slt          t2, a7, s5
                  bge          s4, a7, 858f
                  ori          s7, s1, -802
                  or           a2, t3, s9
                  blt          s8, t5, 860f
                  slti         a5, a7, 1150
                  bge          tp, a7, 851f
                  slli         s9, tp, 10
                  lui          t3, 108930
851:              ori          sp, t0, 1904
                  bge          a0, s3, 857f
                  slli         ra, s1, 7
854:              slli         t5, a6, 22
                  nop
                  beq          tp, ra, 875f
857:              slt          a0, s4, s2
858:              slt          gp, s3, s0
                  srli         a6, s0, 12
860:              add          s2, s2, s2
                  or           s11, s10, s4
                  bge          s5, s10, 876f
                  xori         t2, s4, -1307
                  sra          zero, zero, t0
                  srli         a0, t0, 9
                  sll          s5, t2, ra
                  nop
                  sub          s9, s11, t6
                  xor          s2, t2, t1
                  sll          a3, a5, t1
                  srl          s0, s5, s8
                  slt          t5, s6, t1
sub_5_18:         jal          gp, 25f
0:                jal          ra, 24f
1:                jal          ra, 5f
2:                jal          t1, 6f
3:                jal          t3, 10f
4:                jal          ra, 16f
5:                jal          ra, 4b
6:                jal          t1, 17f
7:                jal          a0, 12f
8:                jal          t1, 2b
9:                jal          ra, 23f
10:               jal          ra, 20f
11:               jal          ra, 1b
12:               jal          t1, 11b
13:               jal          ra, 3b
14:               jal          ra, 13b
15:               jal          ra, 27f
16:               jal          tp, 8b
17:               jal          ra, 19f
18:               jal          gp, 14b
19:               jal          ra, 0b
20:               jal          ra, 7b
21:               jal          ra, 22f
22:               jal          ra, 15b
23:               jal          s10, 18b
24:               jal          s9, 26f
25:               jal          ra, 9b
26:               jal          t2, 21b
27:               sltiu        a3, s3, 261
                  addi         s5, a4, -1758
                  bltu         gp, a1, 881f
875:              lui          a0, 912986
876:              beq          a6, s6, 879f
                  xor          t5, a2, a1
                  lui          tp, 567106
879:              bge          s8, s3, 894f
                  xori         s7, s5, -591
881:              xor          a1, a7, gp
                  sra          s0, gp, s3
                  slti         t5, ra, -302
                  auipc        s9, 185936
                  slt          t3, t5, a0
                  lui          s11, 639978
                  nop
                  srli         s1, a7, 13
                  addi         s6, s11, -746
                  sub          zero, s4, t6
                  bne          s1, t1, 900f
                  lui          a2, 683898
                  or           sp, a7, s9
894:              slti         a7, gp, 892
                  sub          a0, t5, s7
                  ori          t5, a1, -91
                  or           s3, s8, t5
                  nop
                  addi         a4, a3, -1699
900:              beq          a7, s5, 908f
                  bgeu         a5, s5, 918f
                  bltu         s2, s9, 917f
                  sra          sp, t6, t0
                  slli         s9, s3, 24
                  add          s7, s3, ra
                  slt          s6, a3, s10
                  sll          tp, s7, sp
908:              nop
                  lui          gp, 141637
                  blt          s4, zero, 913f
                  lui          a7, 843488
                  xor          s4, a2, gp
913:              or           gp, s3, s7
                  add          a2, t6, a1
                  auipc        a0, 973300
                  slli         t1, a4, 3
917:              xori         s1, a4, -486
918:              xor          s0, s4, a4
                  addi         a3, zero, -870
                  blt          t0, t5, 937f
                  blt          a4, s10, 927f
                  sub          t2, s4, s2
                  bge          a4, s1, 933f
                  sltu         s7, a6, t4
                  blt          a7, a0, 943f
                  beq          a0, s8, 927f
927:              nop
                  slli         t3, a4, 27
                  srai         s4, t3, 18
                  and          gp, s11, a1
                  sub          t3, s3, s4
                  sll          s7, sp, s11
933:              sltu         zero, s6, a3
                  beq          a2, tp, 938f
                  srli         s9, s0, 4
                  slti         t3, a4, -765
937:              bgeu         a6, t0, 938f
938:              bge          sp, tp, 946f
                  sltiu        s3, a3, 1201
                  and          s11, s11, s8
                  slti         s6, a4, 1660
                  andi         ra, a3, 1865
943:              slli         zero, gp, 18
                  bltu         a1, t5, 945f
945:              srl          a3, t0, s6
946:              slti         a2, s8, -391
                  sltu         t5, zero, sp
                  xori         t1, s2, 1759
                  slt          s1, t4, s10
                  slti         s11, a1, -533
                  and          a2, t3, a6
                  xor          zero, a3, a1
                  and          s10, s9, ra
                  and          s3, s0, zero
                  srl          gp, a4, sp
                  add          t3, s5, a6
                  sltiu        t6, s10, -362
                  xori         t6, t4, 1435
                  sra          s6, s3, s6
                  bgeu         s3, zero, 979f
                  sltiu        zero, t3, 271
                  blt          s2, tp, 973f
                  srai         s1, a0, 20
                  slti         t3, t6, -379
                  beq          s1, s10, 970f
                  ori          s9, s10, -1347
                  sra          a2, t2, gp
                  blt          a6, a4, 971f
                  slti         a5, a0, 1834
970:              srl          s6, s3, t4
971:              andi         t5, a4, 1146
                  slt          s0, s0, t3
973:              slti         sp, s1, -398
                  addi         sp, s4, 1468
                  sra          a5, s11, a3
                  sub          s3, s5, sp
                  bgeu         ra, a2, 996f
                  bne          a0, tp, 995f
979:              and          a4, s7, t4
                  sra          ra, t4, s4
                  xor          s4, s3, s2
                  add          s5, a4, tp
                  andi         a5, t6, -496
                  srli         t3, a1, 23
                  andi         s1, gp, 62
                  blt          s6, t0, 989f
                  blt          s1, a6, 1004f
                  or           s6, a1, ra
989:              slli         s7, s6, 18
                  lui          tp, 582346
                  xor          gp, a1, gp
                  xori         s3, a2, 1870
                  sltiu        s10, s6, -1754
                  bltu         t3, ra, 1013f
995:              bgeu         s9, a6, 996f
996:              lui          s3, 895753
                  bltu         a6, a3, 1006f
                  lui          s6, 8840
                  blt          t4, t5, 1000f
1000:             sll          ra, ra, s7
                  or           a7, a4, a3
                  bltu         s4, a3, 1017f
                  srli         s7, a6, 31
1004:             xor          t1, s3, s5
                  bge          tp, s6, 1009f
1006:             ori          s9, s9, -833
                  add          s7, s3, s4
                  bne          t6, s2, 1023f
1009:             auipc        s1, 765161
                  srai         s7, s3, 1
                  bge          zero, s0, 1016f
                  add          ra, a6, s3
1013:             blt          s7, s8, 1023f
                  xori         s10, s11, 80
                  lui          s9, 655087
1016:             srl          s11, t5, t5
1017:             lui          sp, 684030
                  addi         s10, t3, 1033
                  lui          s2, 841127
                  sub          gp, s6, t6
                  ori          t2, sp, 1516
                  addi         zero, s5, 701
1023:             and          a0, s1, tp
                  add          a2, tp, t4
                  bge          t2, a2, 1033f
                  slt          s10, a1, t1
                  sltiu        sp, s0, 753
                  sra          a7, s4, sp
                  beq          a4, t3, 1035f
                  lui          a6, 1014507
                  bne          sp, zero, 1032f
1032:             nop
1033:             bgeu         a7, a7, 1047f
                  lui          t5, 614941
1035:             and          s6, s6, t1
                  srai         s5, a0, 9
                  bne          s8, s7, 1045f
                  ori          a4, sp, 174
                  slti         a7, s4, -1358
                  slt          a4, gp, s5
                  beq          a7, s6, 1044f
                  slli         s1, a5, 12
                  slli         a5, ra, 22
1044:             sra          gp, s1, a7
1045:             or           a5, s10, s8
                  blt          t3, t5, 1060f
1047:             slt          a5, s4, a4
                  or           s5, s7, t1
                  slt          a1, a5, a1
                  nop
                  xori         t6, a5, 1648
                  sra          tp, t3, a7
                  beq          zero, a5, 1060f
                  slti         s9, a3, 1126
                  sltiu        s3, t3, 1637
                  auipc        a6, 280815
                  blt          a5, s7, 1068f
                  sra          s4, a1, zero
                  sltiu        s0, s0, -254
1060:             nop
                  or           s3, a2, s8
                  andi         a4, s7, -805
                  bltu         t6, s9, 1071f
                  sltu         s9, a7, tp
                  bne          s3, tp, 1084f
                  sll          ra, s11, t1
                  slt          s3, s6, a5
1068:             andi         a6, a0, 1648
                  sltiu        s1, s8, 1797
                  sub          s1, a2, s1
1071:             slt          s1, s2, t2
                  sltiu        gp, ra, 818
                  sll          a3, a1, t6
                  slli         a1, s0, 28
                  add          a2, gp, s9
                  addi         s6, a0, -728
                  xor          a2, gp, t2
                  addi         ra, t0, 962
                  sltu         s10, a3, ra
                  blt          t6, s6, 1098f
                  srl          s2, a6, s2
                  ori          a6, t0, -614
                  ori          t1, a4, -1115
1084:             beq          s9, s10, 1089f
                  sub          s1, tp, s0
                  srli         a1, a6, 25
                  lui          t5, 748780
                  and          s0, a1, a0
1089:             slti         s7, t3, 722
                  auipc        s5, 695512
                  xori         a2, s7, 1537
                  bne          s5, a1, 1107f
                  xori         s1, zero, -1075
                  sra          t2, t6, s0
                  slti         t2, t4, -1723
                  sll          a4, ra, s11
                  or           s4, s3, s3
1098:             srl          a5, a0, s10
                  slti         a2, t2, -338
                  sra          s3, s9, s1
                  sltu         a2, t4, a2
                  add          t1, s6, ra
                  add          s10, s2, s9
                  andi         sp, a0, 1690
                  slli         gp, s4, 29
                  addi         s10, s0, -783
1107:             srai         a2, s10, 10
                  nop
                  auipc        sp, 562635
                  or           t2, s0, s10
                  bge          t0, a7, 1131f
                  beq          a7, t6, 1120f
                  srai         s5, s7, 7
                  sltiu        a3, t6, 268
                  srai         t6, a1, 26
                  sra          t2, s4, s9
                  sub          t3, s10, a3
                  add          a1, t2, s1
                  bltu         t3, a3, 1127f
1120:             slli         a2, a5, 29
                  xor          s10, tp, s11
                  srai         a7, sp, 8
                  and          t1, gp, t2
                  or           s4, s11, a3
                  xor          a2, a5, gp
                  sll          a6, t1, a3
1127:             sub          zero, t1, zero
                  bge          a7, t1, 1131f
                  add          a7, s10, t3
                  sub          s10, t2, t6
1131:             add          a1, s8, a4
                  nop
                  auipc        ra, 631071
                  xor          tp, s0, gp
                  xor          a3, a3, t3
                  andi         a0, tp, -1362
                  blt          a4, s8, 1142f
                  andi         s9, a0, 680
                  addi         t6, a2, 436
                  bgeu         t3, a2, 1159f
                  slli         a5, zero, 6
1142:             blt          s5, s5, 1157f
                  add          sp, s11, ra
                  srli         tp, a3, 28
                  xori         tp, a6, -60
                  slt          a7, a7, a0
                  and          s0, gp, zero
                  sll          a2, s1, s9
                  or           s0, a7, s2
                  xor          s11, s11, tp
                  bltu         s3, t2, 1171f
                  nop
                  nop
                  sra          t3, a7, s5
                  slti         a5, a4, -13
                  slli         a1, t3, 19
1157:             sub          s2, a2, t5
                  bgeu         a0, a3, 1159f
1159:             srli         s5, s2, 6
                  sltiu        s10, a3, 82
                  srli         tp, tp, 19
                  slt          ra, s6, t0
                  lui          a7, 660187
                  blt          s0, t4, 1178f
                  blt          s6, a7, 1176f
                  srai         gp, t2, 17
                  add          s4, zero, s8
                  lui          s1, 838340
                  add          s10, ra, s10
                  beq          t0, ra, 1187f
1171:             or           ra, gp, a2
                  xor          s7, a0, t6
                  bge          t6, s4, 1182f
                  nop
                  sll          t1, a7, s0
1176:             slli         t5, s11, 16
                  srli         t1, t3, 11
1178:             bgeu         s9, t3, 1185f
                  srli         t5, s4, 1
                  sltu         t2, s10, s3
                  slli         a6, t1, 12
1182:             srli         gp, t1, 6
                  or           s1, t6, a5
                  bge          ra, t2, 1199f
1185:             bne          a3, s0, 1186f
1186:             and          s6, a4, a1
1187:             xori         t1, s11, 1169
                  sub          a4, a6, t1
                  beq          s3, t6, 1208f
                  slti         t3, t5, 161
                  bltu         t4, a6, 1206f
                  sub          a2, t2, t2
                  sra          s10, t0, t2
                  sub          s9, t4, tp
                  blt          t1, s4, 1196f
1196:             sra          a2, s4, t3
                  xori         ra, s3, 653
                  bne          s2, sp, 1208f
1199:             xori         a0, s8, 1469
                  slt          t5, a3, s3
                  slli         a5, s3, 10
                  slti         t1, ra, 257
                  slt          sp, a5, s9
                  blt          t5, t4, 1212f
                  andi         s6, s9, 116
1206:             xor          t2, s11, t4
                  andi         a7, s10, 764
1208:             xor          s9, a4, gp
                  srli         t5, gp, 14
                  and          a0, sp, tp
                  slli         t5, s5, 17
1212:             sll          a0, t0, s2
                  bgeu         a2, a2, 1216f
                  sra          zero, a7, sp
                  lui          a1, 500265
1216:             sub          t2, a2, t2
                  slli         s1, s6, 22
                  sltiu        tp, tp, 125
                  sll          ra, zero, a2
                  blt          t6, a5, 1225f
                  slt          s5, a7, t6
                  xor          t1, gp, a5
                  slli         tp, t5, 13
                  srl          s1, s7, s10
1225:             sltu         sp, s1, a1
                  slli         a2, s2, 25
                  xor          s1, t2, s8
                  bne          t0, t5, 1245f
                  or           a0, sp, a5
                  bne          t3, s7, 1238f
                  auipc        a6, 666771
                  slt          a0, a5, ra
                  nop
                  sltu         zero, gp, t3
                  or           tp, s7, s10
                  srl          s1, a4, s7
                  sltu         a3, a1, a3
1238:             bge          s6, tp, 1246f
                  lui          a4, 96298
                  addi         s0, s9, 1775
                  blt          t6, a4, 1260f
                  bltu         t1, t5, 1260f
                  or           tp, a4, s3
                  xori         s10, s6, 726
1245:             slt          s4, s8, s4
1246:             beq          s6, zero, 1252f
                  sltiu        a4, sp, -291
                  srli         gp, a2, 4
                  srli         s5, s10, 5
                  sltu         s2, s5, ra
                  lui          a4, 106879
1252:             xor          s0, a2, a4
                  nop
                  srli         s3, a2, 16
                  xor          gp, t6, zero
                  beq          t3, t6, 1270f
                  add          t5, s2, gp
                  sltiu        a2, a3, -1513
                  sltu         t1, t3, s4
1260:             srai         s10, s0, 2
                  bge          zero, s8, 1264f
                  add          gp, a1, a7
                  bge          s0, s0, 1267f
1264:             auipc        a1, 374509
                  addi         t2, a6, -663
                  bgeu         a2, s6, 1271f
1267:             bne          a3, t4, 1275f
                  slli         gp, t1, 22
                  bge          t6, s5, 1279f
1270:             addi         s9, s1, -1659
1271:             and          t3, a5, sp
                  xori         sp, t1, 1001
                  lui          t5, 362320
                  sltu         a0, s5, s11
1275:             addi         s4, s7, -1414
                  sub          tp, t1, t4
                  slt          s9, s5, a6
                  auipc        s0, 832384
1279:             xor          zero, zero, s3
                  add          a0, gp, t4
                  addi         s4, a4, 1381
                  xori         t1, zero, 818
                  blt          s6, s9, 1297f
                  xori         s11, a0, 929
                  beq          sp, s7, 1293f
                  srli         s0, s1, 23
                  sub          s4, s9, s7
                  ori          a5, s9, -791
                  and          s6, t6, sp
                  sub          a4, s4, s3
                  slli         a0, s9, 3
                  beq          t6, s6, 1311f
1293:             srl          s7, t3, s6
                  sub          a3, zero, t0
                  bne          t6, a2, 1300f
                  lui          s3, 132694
1297:             beq          t3, s3, 1298f
1298:             xori         a5, tp, 1925
                  auipc        t6, 1008574
1300:             ori          a7, tp, -929
                  sra          t1, a5, a6
                  slti         t3, a0, -227
                  beq          sp, s5, 1317f
                  srli         s3, gp, 23
                  sra          a5, s0, s8
                  auipc        s10, 255656
                  sra          s10, s0, t2
                  sll          t1, s4, t3
                  sll          s1, s0, a3
                  add          a5, s10, s10
1311:             bltu         s9, sp, 1331f
                  sub          s2, s5, a5
                  ori          a7, s4, -1225
                  slli         t6, t0, 25
                  srl          t1, s4, t3
                  ori          a7, t4, 1522
1317:             srl          tp, a1, s2
                  andi         ra, s4, -881
                  srai         ra, s6, 13
                  and          s7, s1, a3
                  xori         a0, t0, -73
                  xor          zero, t1, ra
                  slt          t2, a3, a7
                  or           s1, t0, t2
                  bge          a1, ra, 1333f
                  sub          a7, a4, s1
                  srl          s11, s1, s2
                  addi         a6, t5, 381
                  andi         s2, s11, -860
                  sltu         a2, s1, a2
1331:             srl          gp, t0, s11
                  srl          t2, s10, sp
1333:             bge          a0, s9, 1351f
                  ori          t3, a7, -1013
                  nop
                  blt          t3, a7, 1339f
                  nop
                  bge          s10, s4, 1349f
1339:             addi         t5, s8, 293
                  lui          s6, 1011823
                  xor          gp, a6, s3
                  slli         t1, s4, 28
                  bltu         t3, s3, 1358f
                  auipc        a7, 925627
                  blt          a0, tp, 1364f
                  srl          s0, t6, a0
                  addi         s3, a5, -746
                  sub          a2, t0, t6
1349:             beq          t6, sp, 1356f
                  sltu         gp, s1, t5
1351:             srl          a3, s4, a2
                  bltu         s10, a0, 1355f
                  sra          gp, t1, zero
                  sub          s2, a5, s3
1355:             sra          s5, ra, s11
1356:             bgeu         s8, s7, 1364f
                  xori         s3, a0, 1275
1358:             sltiu        s10, s5, 1091
                  slt          s2, s9, a1
                  sub          a2, s3, s11
                  addi         a6, a7, -1020
                  sltu         a4, t5, a7
                  blt          s4, s5, 1382f
1364:             bne          a6, s8, 1373f
                  lui          t5, 296200
                  andi         a3, a4, -582
                  srai         a5, t1, 27
                  and          t3, a2, zero
                  ori          t6, s6, 942
                  bne          a1, s7, 1385f
                  srl          a6, gp, s7
                  srai         a7, a0, 27
1373:             sra          a3, a1, s0
                  add          tp, a1, a4
                  sll          a0, a1, gp
                  slt          s10, t2, s10
                  beq          a6, s4, 1381f
                  sra          s9, a1, s10
                  beq          t0, a3, 1396f
                  ori          zero, a1, -1751
1381:             ori          a2, t6, -1382
1382:             andi         s5, a4, 1639
                  blt          tp, s1, 1400f
                  ori          s3, gp, -177
1385:             sltiu        a3, t5, 1611
                  or           t6, s5, t4
                  nop
                  sra          t2, a7, s8
                  blt          t2, a1, 1395f
                  or           a0, t0, s2
                  sll          a2, t4, t4
                  slt          a0, a4, a7
                  bgeu         t0, t5, 1394f
1394:             add          a7, s6, s7
1395:             xor          a7, s6, s1
1396:             sra          a5, s4, s11
                  bltu         s8, s5, 1412f
                  slt          t6, a4, s3
                  beq          t1, sp, 1400f
1400:             blt          s10, tp, 1403f
                  add          t6, a5, sp
                  auipc        a2, 679955
1403:             andi         s11, a4, -1669
                  nop
                  slli         a1, s10, 16
                  bgeu         s11, s4, 1411f
                  sll          s2, s8, tp
                  blt          a5, s6, 1426f
                  add          s11, a6, s11
                  or           s9, t1, zero
1411:             slti         s9, s9, -1528
1412:             slt          a5, s7, t4
                  bgeu         t6, s3, 1430f
                  lui          s11, 1045518
                  bltu         a5, s2, 1429f
                  sltu         t6, a0, s2
                  srai         s9, a6, 20
                  ori          s6, t0, 649
                  bge          a5, s6, 1424f
                  or           s5, s4, a5
                  sub          t5, s0, t5
                  srli         s3, t0, 18
                  auipc        zero, 572067
1424:             slli         a0, t6, 10
                  lui          s10, 558177
1426:             xori         s4, s7, 1067
                  xor          s9, s7, t5
                  auipc        s10, 209246
1429:             sll          t6, gp, ra
1430:             lui          s4, 985936
                  add          s6, a0, a2
                  blt          s1, t3, 1440f
                  srl          s0, a7, s6
                  and          zero, a7, s11
                  auipc        tp, 185214
                  ori          a1, s3, 818
                  slli         t5, s9, 29
                  srai         t1, t1, 31
                  srl          sp, s4, zero
1440:             bne          a2, s7, 1448f
                  auipc        t3, 469377
                  sltiu        a4, s11, -707
                  slli         s4, a1, 2
                  addi         sp, t1, 456
                  srl          a3, sp, t4
                  blt          s0, t5, 1461f
                  bge          a0, t4, 1455f
1448:             srai         s11, zero, 27
                  bne          s0, s2, 1457f
                  bge          s5, a1, 1469f
                  and          a0, zero, s8
                  addi         t6, s8, 1640
                  bne          tp, s1, 1462f
                  nop
1455:             add          t3, a7, a4
                  addi         a2, s4, 1589
1457:             ori          a1, s2, -1641
                  srl          s5, t6, tp
                  xor          t5, a5, t6
                  sll          a6, a4, zero
1461:             sll          s3, s9, ra
1462:             bne          a5, a5, 1463f
1463:             or           t6, s7, t3
                  sltu         t3, s9, a5
                  xori         zero, t4, -1972
                  sltiu        s0, zero, 1339
                  srli         tp, s8, 12
                  ori          s2, gp, -1952
1469:             bltu         s9, s1, 1484f
                  beq          a0, a1, 1489f
                  add          t5, s7, sp
                  beq          a5, s2, 1482f
                  srl          s6, t3, a4
                  lui          t2, 376980
                  srli         tp, s6, 5
                  auipc        a0, 944710
                  or           a1, t1, a7
                  sltu         t1, s5, a2
                  slt          t6, s6, a0
                  slli         s5, s1, 6
                  andi         a3, a3, -813
1482:             bltu         zero, t3, 1485f
                  andi         s2, s7, -821
1484:             blt          tp, s3, 1499f
1485:             andi         t2, s11, -1553
                  slti         s11, s6, 1702
                  bne          a0, a3, 1490f
                  sra          a4, gp, s8
1489:             nop
1490:             sltiu        s3, s10, -27
                  bltu         a1, s2, 1511f
                  slt          s2, gp, s0
                  andi         a0, s8, 113
                  and          a0, t2, a0
                  bgeu         zero, s8, 1512f
                  bge          s1, s1, 1503f
                  sltiu        t5, s7, -1747
                  sub          a4, t6, a0
1499:             beq          sp, a7, 1518f
                  sll          a3, tp, t3
                  sltiu        s9, s5, 1619
                  add          a7, s6, tp
1503:             srai         s10, s1, 13
                  slli         zero, s6, 28
                  nop
                  sra          t3, s7, tp
                  slli         t5, gp, 23
                  addi         t3, s9, -1236
                  srl          zero, s10, t0
                  sra          tp, t0, s1
1511:             blt          zero, s0, 1514f
1512:             ori          s7, s0, -1053
                  sll          sp, t4, s7
1514:             lui          s2, 476456
                  or           a7, a5, a2
                  sub          t3, s7, s9
                  ori          a4, s9, -1307
1518:             andi         s9, s5, -409
                  add          s3, s0, a2
                  slt          gp, s5, tp
                  xor          a6, s0, gp
                  auipc        s3, 695833
                  sra          a6, s1, t5
                  and          ra, a3, sp
                  sll          a5, sp, zero
                  sltiu        t1, t6, 579
                  xori         a4, a2, -456
                  bgeu         a7, gp, 1539f
                  srli         t5, t2, 28
                  srai         ra, s5, 20
                  and          ra, s2, s3
                  xori         a3, sp, 472
                  beq          s2, a7, 1539f
                  auipc        s0, 814364
                  sub          ra, a2, s5
                  xori         a3, s11, 1844
                  ori          s3, s5, -402
                  srl          s3, tp, t5
1539:             xori         s1, t2, -723
                  slt          s9, s8, s8
                  bge          s2, s3, 1542f
1542:             andi         s11, t3, 306
                  slti         tp, a3, 470
                  xori         a6, s5, 1053
                  srai         a1, t0, 11
                  auipc        s1, 366033
                  ori          a2, t4, 895
                  beq          s9, zero, 1549f
1549:             bgeu         a5, s2, 1553f
                  bne          t0, t5, 1564f
                  sra          s10, gp, s7
                  xori         zero, s11, -1284
1553:             bltu         s5, s9, 1568f
                  sltu         s7, t5, a4
                  srl          s3, t2, s9
                  and          a6, s3, a3
                  or           s10, s11, zero
                  sltu         t2, s10, s10
                  addi         t6, t6, 1969
                  sltu         s2, t4, s5
                  srli         a2, s8, 22
                  auipc        a7, 686458
                  slt          s4, a0, zero
1564:             and          s11, s1, zero
                  bne          t4, s0, 1568f
                  or           t3, t6, t2
                  add          s9, s10, s1
1568:             sub          a2, sp, t0
                  slt          s9, tp, s9
                  andi         s9, a5, -2009
                  bgeu         t0, s3, 1577f
                  nop
                  add          s1, s9, s11
                  nop
                  nop
                  add          a5, s2, a3
1577:             bge          s0, t0, 1586f
                  lui          a2, 999163
                  blt          t4, a2, 1587f
                  slt          zero, t1, t1
                  slti         s7, a3, 753
                  lui          a0, 274619
                  xori         t6, s11, -1533
                  addi         s4, ra, -101
                  sll          sp, s6, sp
1586:             nop
1587:             ori          s0, a7, -1420
                  and          s11, t6, s5
                  sltu         t2, t6, s3
                  sra          tp, s8, t0
                  or           zero, gp, s11
                  addi         a3, s1, -51
                  blt          s4, s1, 1601f
                  bge          t4, a0, 1595f
1595:             lui          a3, 421374
                  lui          t6, 756817
                  slli         t1, a7, 27
                  add          s3, tp, ra
                  auipc        t6, 117449
                  add          s9, t6, gp
1601:             sll          s0, gp, s4
                  blt          gp, a5, 1616f
                  xori         zero, s3, -330
                  sltu         a1, a5, s4
                  sll          s11, sp, t3
                  nop
                  slli         sp, s6, 23
                  sra          a3, a4, t4
                  sltiu        s2, a3, -407
                  bge          s10, s0, 1615f
                  sltiu        s1, s6, -79
                  xori         a7, s0, 104
                  or           s7, s1, tp
                  and          s7, s0, s1
1615:             sltiu        s5, ra, 485
1616:             sltu         a4, s8, s3
                  slti         a5, t3, -1012
                  slt          a1, t3, t1
                  sub          ra, a3, a0
                  nop
                  addi         a5, a5, 1215
                  srai         s3, ra, 5
                  bne          s10, a7, 1642f
                  srl          a5, tp, a6
                  bne          s2, sp, 1644f
                  slt          s3, s10, zero
                  and          s5, a5, s6
                  nop
                  bltu         t6, t4, 1633f
                  blt          s9, t6, 1649f
                  addi         s11, sp, 2020
                  or           tp, ra, s11
1633:             bge          zero, tp, 1653f
                  slli         a6, t3, 22
                  srai         a4, s1, 11
                  sltiu        s7, s11, -1461
                  sll          t5, s8, s9
                  sltu         s10, a4, s0
                  beq          tp, a4, 1657f
                  sra          a5, a1, t5
                  bne          a4, s7, 1656f
1642:             ori          zero, gp, -888
                  blt          t5, s10, 1660f
1644:             bgeu         s7, tp, 1651f
                  add          a7, s1, s5
                  bne          sp, ra, 1654f
                  sub          t5, s8, s5
                  auipc        sp, 232372
1649:             slt          s10, s8, t0
                  ori          sp, s8, -439
1651:             bgeu         ra, a4, 1662f
                  srli         s6, gp, 16
1653:             srli         a3, t4, 27
1654:             srl          s7, a2, s9
                  beq          s6, s10, 1663f
1656:             sra          s6, s5, s2
1657:             srai         s1, sp, 22
                  bgeu         t6, zero, 1672f
                  slti         zero, t4, 1706
1660:             bltu         gp, gp, 1663f
                  bltu         a0, t6, 1676f
1662:             bge          s8, s2, 1679f
sub_5_13:         jal          gp, 0f
0:                jal          ra, 3f
1:                jal          t1, 12f
2:                jal          ra, 14f
3:                jal          ra, 8f
4:                jal          gp, 19f
5:                jal          ra, 1b
6:                jal          a5, 16f
7:                jal          ra, 5b
8:                jal          t1, 10f
9:                jal          sp, 15f
10:               jal          t1, 11f
11:               jal          ra, 2b
12:               jal          ra, 6b
13:               jal          tp, 20f
14:               jal          ra, 9b
15:               jal          ra, 4b
16:               jal          ra, 17f
17:               jal          t2, 13b
18:               jal          ra, 7b
19:               jal          sp, 18b
20:               xori         a5, s0, -1795
1663:             xor          t2, t3, s9
                  sra          s10, zero, s9
                  slt          tp, t1, a2
                  bge          a4, a4, 1676f
                  sltiu        s10, t2, -443
                  xor          t3, s9, t4
                  sll          a7, t6, s5
                  andi         s9, t4, 362
                  slti         s9, a6, -894
1672:             slti         t6, s10, -32
                  slt          s2, t2, s1
                  and          gp, a1, s9
                  ori          a5, s2, 1750
1676:             sll          a6, s2, a3
                  lui          s4, 768840
                  sra          s0, a6, a0
1679:             sra          s9, s0, s9
                  slti         s10, a6, -1588
                  slt          gp, s10, s11
                  lui          s3, 590511
                  sll          s4, t1, s11
                  sra          a7, t6, a4
                  bgeu         t1, a5, 1686f
1686:             bltu         s6, a7, 1689f
                  blt          s9, s3, 1688f
1688:             srai         s6, zero, 0
1689:             add          s0, a2, t0
                  bge          s6, s1, 1695f
                  sll          a5, s4, s11
                  sltiu        t3, s9, -1907
                  bltu         a4, s3, 1704f
                  blt          a3, t2, 1700f
1695:             blt          a7, t3, 1710f
                  srl          a5, s3, s10
                  sll          a7, s3, a5
                  lui          t6, 594889
                  or           s3, t5, s10
1700:             beq          gp, s5, 1717f
                  slt          gp, s11, s0
                  xori         t6, s0, 735
                  and          gp, s1, s5
1704:             sltu         t5, s10, s6
                  sra          s1, tp, s6
                  xor          a2, a0, s7
                  xor          s10, s4, t0
                  addi         t2, a2, 1125
                  and          s3, a7, s11
1710:             slti         a2, gp, 1891
                  slli         s6, a3, 25
                  bne          s4, s8, 1719f
                  srai         s1, s2, 11
                  srl          s4, ra, t2
                  srli         s3, s10, 14
                  nop
1717:             xor          t5, s9, s6
                  bltu         t5, zero, 1735f
1719:             lui          s10, 774184
                  beq          s5, t4, 1721f
1721:             bltu         t5, s7, 1739f
                  bne          s9, ra, 1726f
                  slti         t6, s4, -319
                  slti         a6, a3, -1812
                  sll          t3, a3, s9
1726:             and          t6, a6, s10
                  slti         a7, s11, -1522
                  slli         s7, gp, 28
                  blt          s1, s4, 1734f
                  sltiu        s1, tp, 1505
                  slli         s4, s1, 0
                  xori         s10, t5, 860
                  bltu         a0, s0, 1741f
1734:             srai         s3, a4, 10
1735:             bltu         s11, t1, 1738f
                  slt          s0, a5, a1
                  bge          s1, t0, 1757f
1738:             slli         t6, a0, 11
1739:             blt          tp, s3, 1742f
                  sra          t5, a5, s10
1741:             andi         s7, a1, -1446
1742:             bge          gp, s5, 1757f
                  auipc        t3, 622473
                  bltu         s0, zero, 1754f
                  bne          s5, ra, 1746f
1746:             slti         s3, t2, 1963
                  srl          a3, sp, t4
                  sll          t3, t0, s6
                  srl          s9, a3, t6
                  bge          s11, s6, 1769f
                  and          s9, a1, t3
                  xori         a7, a3, -111
                  add          s0, s11, a0
1754:             srli         s3, gp, 20
                  beq          s6, a4, 1763f
                  srl          s1, a2, sp
1757:             srl          gp, a4, sp
                  bge          s7, s3, 1759f
1759:             or           s7, s10, s1
                  slt          a0, ra, a4
                  andi         gp, s5, 208
                  bltu         s1, t1, 1765f
1763:             sra          s7, s3, sp
                  sll          a2, a3, s9
1765:             slt          s1, s11, s2
                  sltu         s1, tp, a5
                  sub          a7, s4, s0
                  slli         zero, a0, 19
1769:             beq          s4, gp, 1788f
                  auipc        s5, 119587
                  add          t2, s10, t1
                  auipc        t3, 388739
                  nop
                  slti         s10, a4, -1605
                  bltu         sp, s9, 1794f
                  nop
                  addi         ra, t1, 1032
                  slt          s11, s1, a5
                  add          a1, t0, t0
                  xor          s9, a5, a7
                  sltiu        a2, a3, 2005
                  srai         s9, sp, 24
                  and          a3, a4, s7
                  nop
                  andi         t2, t0, -561
                  xor          t6, s6, s0
                  xor          t1, s7, s2
1788:             bne          s9, s3, 1796f
                  slt          s10, t2, a3
                  bne          a7, s0, 1799f
                  sra          a1, t1, a1
                  xor          a4, t5, a1
                  lui          a7, 458034
1794:             srl          s4, s8, s8
                  andi         s6, a5, 1422
1796:             sltu         s0, gp, s4
                  sub          s0, ra, s5
                  bltu         a4, s5, 1803f
1799:             auipc        s11, 262080
                  bltu         t5, s4, 1814f
                  sltiu        tp, s4, -1770
                  or           s9, s6, t2
1803:             bltu         s7, a3, 1811f
                  blt          s7, s7, 1819f
                  sra          a7, a2, t6
                  or           t2, a7, t1
                  andi         t2, t5, 178
                  beq          tp, s10, 1822f
                  bne          t1, gp, 1817f
                  andi         s0, s7, -1181
1811:             slli         t6, s11, 31
                  xori         gp, a3, -1087
                  addi         s0, ra, 1601
1814:             sltiu        s3, t3, 940
                  ori          a0, a5, -1973
                  addi         t1, a4, -1308
1817:             add          a1, gp, t4
                  srl          s6, s4, s4
1819:             beq          s8, a5, 1830f
                  srl          a5, s3, gp
                  andi         s1, s0, 1498
1822:             slti         tp, s2, -801
                  lui          zero, 264613
                  auipc        a2, 801237
                  ori          s10, s2, 1756
                  srai         s9, t4, 13
                  xor          sp, s11, a3
                  nop
                  slli         a1, s0, 21
1830:             blt          s10, ra, 1844f
                  bge          s9, tp, 1846f
                  sltiu        gp, s11, -1829
                  sltu         s2, ra, gp
                  xori         s4, a3, -1179
                  xori         ra, a7, 1501
                  bgeu         zero, zero, 1839f
                  sub          ra, zero, a2
                  beq          t1, s6, 1843f
1839:             auipc        a0, 322256
                  nop
                  sltu         s7, s10, t2
                  nop
1843:             and          s0, s1, s0
1844:             blt          s2, s11, 1861f
                  bgeu         s9, a6, 1853f
1846:             ori          a7, a0, -1853
                  ori          s0, zero, -614
                  srl          zero, sp, t6
                  srli         zero, t0, 25
                  ori          a7, s6, -916
                  bgeu         a6, a1, 1854f
                  xor          s11, tp, a6
1853:             srli         a3, s2, 9
1854:             sltiu        t1, a3, -1138
                  slti         s0, s5, -707
                  xori         a1, s1, 1102
                  ori          s1, a2, -1647
                  srai         s2, s7, 19
                  andi         a1, t0, -913
                  bge          t3, a5, 1875f
1861:             auipc        a4, 391760
                  lui          t3, 569028
                  andi         t2, s11, -593
                  bltu         s9, zero, 1882f
                  add          s11, s11, s4
                  sub          t6, s0, s7
                  srl          a0, sp, a4
                  srl          s3, s4, s10
                  ori          t1, a5, -1457
                  srli         gp, s7, 10
                  slti         t2, t1, 331
                  add          s1, t2, t6
                  srai         t6, ra, 4
                  sra          sp, t3, t0
1875:             bge          s6, t4, 1894f
                  blt          a4, s11, 1884f
                  sll          a7, a6, s9
                  srl          a2, t1, s1
                  slti         a0, s0, 1918
                  add          t1, s7, s1
                  nop
1882:             sll          a2, a2, s4
                  srli         a7, tp, 18
1884:             bne          s9, s8, 1885f
1885:             blt          s4, tp, 1895f
                  blt          s8, t6, 1903f
                  beq          a6, a7, 1901f
                  bltu         a5, a2, 1907f
                  add          a1, a6, t0
                  sra          tp, t5, s7
                  add          t3, s2, s4
                  auipc        zero, 463294
                  lui          sp, 748220
1894:             bgeu         a7, tp, 1903f
1895:             sltu         a0, s9, a4
                  auipc        a7, 33033
                  sra          s11, s8, s4
                  slti         s7, s4, -160
                  ori          s6, s3, 757
                  auipc        a1, 565182
1901:             lui          s3, 1003216
                  blt          a5, t5, 1905f
1903:             srli         sp, a6, 5
                  slt          s2, tp, s0
1905:             bgeu         s0, gp, 1920f
                  and          s2, t4, s5
1907:             addi         a1, a6, 88
                  sub          zero, s4, s4
                  sub          tp, t6, tp
                  bge          s6, ra, 1918f
                  srli         a5, t5, 2
                  srl          s7, a5, s1
                  sub          s9, a2, a3
                  ori          a7, t2, 1674
                  addi         s6, a4, -1226
                  or           t1, s1, s0
                  bltu         s0, s0, 1921f
1918:             bne          a1, a4, 1924f
                  nop
1920:             xor          sp, s11, t3
1921:             or           a7, s5, gp
                  addi         tp, t2, 1572
                  blt          a4, a6, 1924f
1924:             srl          gp, s1, s3
                  bge          t2, t6, 1932f
                  srli         gp, s7, 3
                  sltu         a3, a1, a1
                  lui          tp, 868687
                  sra          a3, s10, a0
                  sra          t5, s11, a4
                  or           s2, s8, s11
1932:             auipc        a1, 986142
                  and          t3, s11, s11
                  sll          t5, tp, s9
                  and          s3, s4, t6
                  and          s4, s11, sp
                  beq          a5, s5, 1956f
                  or           s0, s7, ra
                  xori         a0, a4, 487
                  bgeu         zero, zero, 1945f
                  ori          s0, t6, -181
                  bge          a2, s7, 1962f
                  slti         a4, a2, 678
                  slti         a1, t5, -850
1945:             sltiu        a2, s9, 1311
                  add          s10, t4, s10
                  xor          s7, zero, sp
                  xori         s6, a7, 683
                  ori          t5, a5, -759
                  srai         a6, ra, 8
                  srai         a6, a6, 8
                  sra          s10, s8, gp
                  sra          s4, a7, t3
                  sub          a7, sp, zero
                  sub          a3, s0, s7
1956:             xor          s4, t0, a2
                  srl          s0, t0, s10
                  beq          s3, a5, 1959f
1959:             beq          ra, ra, 1964f
                  nop
                  sltu         a1, a3, a5
1962:             sll          s6, a0, a2
                  sub          s6, t3, a7
1964:             sltu         sp, a4, s9
                  beq          a3, s3, 1975f
                  xori         t6, a7, -1239
                  and          a0, s8, t5
                  slt          s1, t6, s11
                  lui          s0, 395477
                  or           a1, t5, a6
                  slli         s11, zero, 31
                  bgeu         a5, ra, 1989f
                  bne          a4, s7, 1974f
1974:             xor          zero, s3, s1
1975:             nop
                  auipc        sp, 301445
                  sra          s2, s0, t3
                  or           s4, tp, s9
                  sltiu        t1, t2, -1363
                  or           sp, a4, s1
                  add          s3, t5, a4
                  xor          s1, a1, s7
                  blt          s2, zero, 1991f
                  sltiu        a6, s2, 568
                  bge          s7, s4, 2004f
                  or           a5, t1, gp
                  sll          s0, s2, a2
                  srl          zero, t3, s4
1989:             srai         sp, a1, 22
                  bne          gp, s2, 1996f
1991:             addi         s4, s8, -836
                  srl          a1, t4, t6
                  srl          s5, sp, s9
                  sltu         s7, s8, gp
                  blt          t3, a7, 2009f
1996:             bgeu         t3, a1, 2011f
                  add          zero, zero, a4
                  add          gp, s11, zero
                  lui          t5, 423710
                  xor          a5, t2, a7
                  slt          t1, s11, sp
                  srli         s10, t1, 21
                  or           s6, t3, t6
2004:             slli         t1, s9, 0
                  slli         s4, t5, 7
                  beq          s0, t4, 2020f
                  srai         t6, tp, 6
                  slli         s9, a5, 18
2009:             blt          zero, t2, 2017f
                  sltu         a3, sp, t2
2011:             srai         t6, a2, 17
                  xori         t6, t1, -1197
                  add          s7, s4, s6
                  add          a1, zero, gp
                  slli         zero, t1, 19
                  slt          a4, a3, s5
2017:             sra          sp, a5, a5
                  sub          s4, a0, a4
                  sll          t1, a6, s8
2020:             blt          zero, s10, 2024f
                  sra          t6, t3, s8
                  lui          t1, 456694
                  ori          s10, s4, 829
2024:             xori         s9, zero, -1586
                  bge          a1, s0, 2040f
                  auipc        zero, 132342
                  addi         zero, a0, -392
                  sltu         s5, s0, a6
                  srai         s4, s2, 29
                  srai         s7, t1, 24
                  bge          a0, s3, 2046f
                  andi         a5, a0, 624
                  sltiu        t3, s5, -866
                  add          s9, s8, t4
                  sra          a2, s11, a5
                  sltiu        s11, a7, -696
                  sltiu        a1, zero, -1150
                  slli         a5, tp, 4
                  xor          s2, zero, t6
2040:             add          s3, s6, t0
                  slti         t1, a1, 562
                  or           t3, s2, t6
                  slti         a5, t2, -1910
sub_5_46:         jal          gp, 11f
0:                jal          ra, 8f
1:                jal          ra, 17f
2:                jal          ra, 7f
3:                jal          a0, 5f
4:                jal          ra, 14f
5:                jal          t1, 12f
6:                jal          ra, 0b
7:                jal          ra, 9f
8:                jal          gp, 3b
9:                jal          ra, 13f
10:               jal          t1, 15f
11:               jal          ra, 4b
12:               jal          ra, 1b
13:               jal          ra, 16f
14:               jal          s0, 2b
15:               jal          ra, 6b
16:               jal          ra, 10b
17:               sltiu        a2, s3, 1482
                  beq          s8, s8, 2049f
                  sltiu        sp, s6, 763
2046:             ori          s6, ra, 1320
                  and          t2, s0, s7
                  sll          s4, tp, zero
2049:             sltu         s0, s0, a5
                  sltu         s5, s0, t5
                  sub          t5, a4, zero
                  slt          a3, a1, a0
                  and          s11, s8, t1
                  xori         a4, s5, 1288
                  srli         t5, s9, 12
                  ori          a1, s8, -484
                  beq          tp, zero, 2075f
                  ori          s2, s10, 464
                  and          a7, s1, a2
                  slt          s9, tp, a1
                  or           s2, zero, s2
                  sra          a7, ra, s8
                  srl          s1, a6, tp
                  nop
                  sra          t2, a1, s8
                  slti         s11, gp, 1725
                  ori          s11, t1, 658
                  bltu         s1, a2, 2076f
                  bne          t6, t4, 2070f
2070:             ori          a6, s10, -1770
                  and          a2, t6, t2
                  slti         s4, s3, -1158
                  srl          s4, a0, a3
                  bge          ra, s11, 2077f
2075:             bne          t2, a3, 2083f
2076:             bgeu         s5, s8, 2079f
2077:             bge          a0, ra, 2094f
                  bgeu         s7, s9, 2085f
2079:             srli         zero, tp, 6
                  blt          gp, t4, 2091f
                  slti         zero, s5, 804
                  ori          t6, t0, 1205
2083:             and          a7, a1, s10
                  bge          sp, s6, 2103f
2085:             auipc        tp, 769554
                  bne          a4, t0, 2106f
                  sub          s10, t5, sp
                  sltiu        t1, tp, 1953
                  add          a7, s9, a5
                  slt          a1, s2, a6
2091:             sub          s5, s6, a0
                  srl          t1, t3, tp
                  andi         s3, t3, -478
2094:             sub          s10, s3, s7
                  bltu         t2, a2, 2096f
2096:             nop
                  sltiu        ra, t1, 1823
                  andi         sp, a5, 848
                  add          sp, s11, a3
                  blt          a7, t6, 2109f
                  slt          s0, a4, zero
                  bltu         s6, s4, 2121f
2103:             xori         s7, ra, -1949
                  ori          tp, a0, 136
                  sltiu        gp, s6, -298
2106:             sra          s6, s8, a3
                  srl          t2, gp, t1
                  and          a4, s4, s11
2109:             xori         s3, t6, 242
                  bne          a5, s8, 2113f
                  and          a0, sp, a5
                  nop
2113:             add          t6, a5, t1
                  slti         s6, s5, 1653
                  sub          t2, t6, s2
                  sub          s10, s2, t0
                  auipc        s2, 572092
                  addi         a7, s11, -1874
                  blt          a4, s10, 2126f
                  bgeu         s7, t5, 2126f
2121:             srli         a2, s0, 7
                  beq          a1, s10, 2130f
                  add          gp, a7, t0
                  andi         gp, s2, -10
                  bge          s1, s1, 2142f
2126:             bge          s5, t3, 2134f
                  srli         tp, a5, 1
                  lui          gp, 11971
                  lui          s7, 715384
2130:             andi         sp, s4, -1684
                  sltu         t6, s10, t3
                  ori          t2, s5, 1652
                  lui          a0, 621888
2134:             sra          s1, ra, s8
                  bne          tp, a2, 2144f
                  add          gp, zero, s4
                  ori          s4, a4, 1447
                  blt          s8, sp, 2157f
                  sltu         s4, s6, s7
                  bgeu         s7, s8, 2145f
                  bge          s11, s7, 2156f
2142:             beq          a6, s5, 2147f
                  and          s2, a5, t0
2144:             sra          ra, t6, a4
2145:             xori         s7, a3, -1046
                  ori          sp, t2, 1128
2147:             ori          s4, a5, 708
                  slt          s0, t2, ra
                  bne          s5, t0, 2152f
                  beq          a7, a1, 2161f
                  srli         s9, gp, 0
2152:             blt          t4, t5, 2171f
                  lui          t3, 25063
                  slti         s5, tp, -1374
                  lui          s6, 799862
2156:             ori          s6, a4, 1922
2157:             sltu         s7, s7, a6
                  srai         gp, gp, 17
                  ori          s9, t6, -1762
                  ori          s4, t6, -995
2161:             bne          a7, s8, 2169f
                  ori          t1, s8, -441
                  xori         s3, ra, -2037
                  bne          t3, tp, 2182f
                  bge          a3, t4, 2168f
                  blt          s10, sp, 2183f
                  and          tp, a5, s1
2168:             xori         sp, s1, -1272
2169:             blt          s4, t4, 2183f
                  add          a3, t1, t6
2171:             nop
                  sltiu        s11, a6, 1796
                  addi         s1, a2, 1719
                  sltiu        a0, a6, 1202
                  sll          t3, s1, t4
                  blt          gp, sp, 2191f
                  sra          zero, t1, sp
                  beq          s8, t1, 2197f
                  srai         s6, zero, 23
                  addi         a1, s4, -150
                  sltu         sp, t0, t4
2182:             or           sp, s11, t0
2183:             srai         s0, tp, 3
                  xor          ra, a7, a5
                  srl          t5, ra, s8
                  sll          s5, s4, a5
                  bne          t2, t1, 2188f
2188:             ori          a0, a6, 664
                  sll          t5, a2, s9
                  srai         a2, t4, 18
2191:             ori          a5, a3, -1971
                  xori         a2, a0, -1531
                  xori         sp, a5, 825
                  or           s5, a1, s3
                  bltu         t2, a5, 2196f
2196:             sltiu        s1, t5, 16
2197:             srl          t5, a2, s1
                  blt          gp, s7, 2213f
                  blt          a3, s3, 2209f
                  srli         s3, t5, 3
                  bge          a1, gp, 2205f
                  sll          sp, a3, t6
                  andi         t5, t1, -1841
                  srai         s2, tp, 19
2205:             bgeu         s1, s10, 2213f
                  srl          s3, tp, t2
                  slt          a5, gp, a1
                  beq          gp, s9, 2209f
2209:             sltiu        t1, s3, 297
                  srl          a0, t6, s2
                  xor          s3, s3, s5
                  andi         a6, s8, -1910
2213:             auipc        t2, 87114
                  addi         t1, s0, -490
                  bne          a4, s9, 2218f
                  slli         a6, a4, 31
sub_5_35:         jal          gp, 5f
0:                jal          t5, 4f
1:                jal          t1, 16f
2:                jal          ra, 11f
3:                jal          ra, 14f
4:                jal          ra, 17f
5:                jal          ra, 1b
6:                jal          s9, 9f
7:                jal          ra, 15f
8:                jal          t1, 13f
9:                jal          ra, 12f
10:               jal          ra, 18f
11:               jal          s10, 8b
12:               jal          t1, 7b
13:               jal          ra, 10b
14:               jal          t1, 2b
15:               jal          ra, 3b
16:               jal          t1, 0b
17:               jal          ra, 6b
18:               sll          s9, s8, t6
                  and          s6, a0, t3
2218:             srli         a5, a5, 7
                  ori          s1, s5, 1569
                  xor          a0, t6, a2
                  sltiu        s2, s8, -1168
                  srli         s5, s11, 7
                  beq          t5, t0, 2243f
                  slli         a7, zero, 1
                  slt          a0, s2, a0
                  slt          a3, a1, a5
                  ori          s1, zero, -1742
                  or           s2, s6, s6
                  xori         s4, t4, 1547
                  slt          t1, t0, s4
                  srl          s1, a1, t0
                  bltu         s8, zero, 2246f
                  bne          a6, s11, 2241f
                  bgeu         s11, t5, 2253f
                  bltu         sp, s9, 2236f
2236:             add          t6, t0, t2
                  blt          a2, a5, 2246f
                  andi         s5, s10, 1908
                  addi         zero, s0, 1496
                  srl          t5, t1, s8
2241:             add          sp, tp, s6
                  slli         sp, s3, 18
2243:             sub          a5, gp, a3
                  lui          a5, 142431
                  and          s4, s0, t1
2246:             xor          a2, gp, t4
                  add          tp, a2, s9
                  or           t6, gp, a1
                  add          s1, t4, s6
                  bge          zero, s1, 2253f
                  beq          a1, s8, 2269f
                  sra          a2, s9, a5
2253:             xori         a3, t1, -2025
                  sll          s5, a7, a7
                  bge          a5, a3, 2260f
                  beq          s6, a3, 2257f
2257:             or           s7, s3, s11
                  auipc        s0, 102187
                  slli         t5, s0, 7
2260:             nop
                  andi         a1, t0, -202
                  srai         a6, s3, 10
                  xor          s2, zero, t4
                  slli         a3, sp, 11
                  addi         a3, s0, 1997
                  slti         a1, t4, 1054
                  bgeu         a6, s11, 2282f
                  srl          a0, s11, s9
2269:             srl          zero, a7, a3
                  slti         s9, a7, 922
                  xori         s7, a3, 719
                  blt          s8, a0, 2276f
                  xori         s5, s4, 1711
                  srai         t1, s1, 12
                  beq          s4, a1, 2283f
2276:             xori         s11, s6, 484
                  sltiu        s3, s10, 1360
                  sltiu        a0, t1, -1623
                  sub          s0, a2, t1
                  beq          t2, s4, 2295f
                  bgeu         s7, a2, 2292f
2282:             andi         s1, a6, 683
2283:             srli         a4, s7, 15
                  addi         zero, t1, -997
                  sltiu        a5, s6, -805
                  xori         a3, gp, 958
                  blt          s3, t4, 2290f
                  addi         s1, a1, 831
                  bne          zero, s4, 2294f
2290:             and          t6, t0, t6
                  andi         s4, t1, 1462
2292:             srl          a1, zero, s9
                  ori          s6, s9, 666
2294:             sltu         gp, s11, a2
2295:             srai         t5, t1, 20
                  srai         t1, s8, 11
                  beq          s6, s0, 2307f
                  srai         s5, a4, 22
                  blt          t1, a2, 2318f
                  or           s6, tp, t3
                  andi         t3, a1, -17
                  slt          s2, s4, a6
                  xori         sp, a2, 54
                  bltu         gp, sp, 2307f
                  bltu         s10, a3, 2325f
                  or           s1, t0, gp
2307:             or           t6, s9, t0
                  bgeu         tp, s8, 2309f
2309:             sra          s3, s6, a6
                  srli         a2, ra, 4
                  slli         a3, zero, 25
                  slti         s2, s9, -575
                  srl          s2, ra, s9
                  bltu         a7, t5, 2322f
                  sra          sp, a3, t2
                  bltu         s10, a4, 2333f
                  sra          a0, gp, a6
2318:             slt          t1, a7, s2
                  blt          a7, t1, 2325f
                  blt          s10, t5, 2335f
                  bltu         t4, s6, 2340f
2322:             beq          s4, s8, 2339f
                  sltiu        t1, s8, 165
                  andi         s0, s8, 1531
2325:             ori          t6, t4, -1835
                  andi         t5, s6, 1076
                  slti         a6, zero, 1649
                  bltu         a2, s4, 2342f
                  bne          s3, s2, 2343f
                  ori          a6, t4, -1815
                  beq          a5, tp, 2338f
                  blt          s6, s11, 2340f
2333:             addi         s0, a1, -515
                  sra          sp, s8, gp
2335:             slti         zero, t3, 69
                  bgeu         a4, t3, 2342f
                  xor          zero, t6, s3
2338:             bge          tp, s2, 2358f
2339:             sltu         zero, sp, t2
2340:             bgeu         s8, zero, 2344f
                  beq          a7, a6, 2352f
2342:             srl          t1, s6, zero
2343:             auipc        t1, 51179
2344:             beq          s5, t1, 2359f
                  srl          s10, s3, t2
                  xori         s3, s0, -229
                  xori         ra, s8, 124
                  addi         s2, s4, -1293
                  or           t3, tp, a7
                  sltiu        zero, s4, -366
                  bgeu         s4, t6, 2370f
2352:             srli         sp, s5, 2
                  and          a4, a3, tp
                  srai         a0, s8, 24
                  auipc        s1, 400120
                  bge          t4, ra, 2366f
                  sltu         a6, t1, s1
2358:             slt          s1, t1, s8
2359:             xor          gp, s10, s8
sub_5_34:         jal          gp, 2f
0:                jal          ra, 15f
1:                jal          ra, 11f
2:                jal          ra, 10f
3:                jal          a1, 0b
4:                jal          a4, 8f
5:                jal          ra, 1b
6:                jal          t1, 13f
7:                jal          t1, 9f
8:                jal          t3, 6b
9:                jal          ra, 12f
10:               jal          t1, 7b
11:               jal          t1, 4b
12:               jal          t1, 14f
13:               jal          ra, 3b
14:               jal          a2, 5b
15:               sltu         a5, a0, s2
                  bge          t0, s1, 2368f
                  lui          s4, 128474
                  or           a0, a4, s8
                  slli         s5, s1, 22
                  bltu         t6, s4, 2369f
                  and          t6, s1, t4
2366:             sra          s0, sp, s7
                  xor          t3, gp, a7
2368:             bne          a6, a6, 2376f
2369:             slli         zero, a6, 28
2370:             or           s1, a0, gp
                  bne          s4, s3, 2385f
                  andi         s4, a6, -509
                  bgeu         a6, s8, 2376f
                  slt          a6, a4, s4
                  bltu         a4, t2, 2380f
2376:             bne          t1, t5, 2384f
                  ori          a1, s7, 1212
                  bltu         tp, a7, 2379f
2379:             slt          s0, s9, t3
2380:             sltiu        s4, a2, -238
                  andi         a6, s2, -601
                  sll          a2, a6, t0
                  slli         a7, t4, 8
2384:             srl          s0, s1, t0
2385:             bne          t3, a6, 2393f
                  beq          s3, t2, 2389f
                  or           s0, a7, s7
                  addi         a2, s2, 207
2389:             bgeu         s9, t1, 2404f
                  srai         ra, a6, 27
                  bge          s10, s2, 2409f
                  slti         s5, s0, 597
2393:             nop
                  bge          a1, t4, 2395f
2395:             sub          a5, tp, zero
                  sltiu        s5, a2, 1976
                  sra          a0, t2, zero
                  sltu         a5, a2, t6
                  and          gp, s5, t5
                  srl          a0, s7, a5
                  srl          t5, s5, s9
                  bge          a2, a3, 2418f
                  xor          s4, t5, a3
2404:             bltu         s8, s5, 2413f
                  srl          s7, t1, ra
                  slti         s2, s3, 1462
                  sltiu        s5, s8, 299
                  add          a3, s4, t2
2409:             srli         a3, s9, 14
                  slli         zero, zero, 19
                  bltu         s5, s0, 2412f
2412:             slt          a7, t6, s7
2413:             blt          a4, a0, 2418f
                  slli         s1, a7, 5
                  bltu         a3, zero, 2418f
                  sub          s7, tp, s2
                  slti         s9, t4, -620
2418:             and          t5, s2, s9
                  nop
                  srl          s10, zero, s1
                  addi         s10, a0, 690
                  lw           gp, 4(t4)
                  addi         t4, t4, 8
                  ori          s10, s2, -1170
3461:             addi x14, x3, 0
3461:             jalr x14, x14, 0
sub_3:            blt          a5, s5, sub_3_stack_p
                  srl          t5, sp, gp
                  or           s4, a2, t5
sub_3_stack_p:    addi         t4, t4, -48
                  ori          a3, s1, 1428
                  addi         zero, s5, -274
                  lui          t1, 536116
                  slt          sp, gp, a5
                  xori         t1, a2, -1914
                  add          s3, t1, s9
                  sw           gp, 4(t4)
                  lui          s5, 632801
                  and          t5, t1, s10
                  or           s7, s7, s4
                  andi         s4, s8, 556
                  slli         s5, s0, 23
                  sltiu        a4, a2, -46
                  sll          t1, ra, s3
                  lui          s10, 256883
                  sub          a7, tp, t6
                  and          s10, gp, t0
                  xor          a1, s1, gp
sub_3_j7:         jal          gp, sub_4 #jump sub_3 -> sub_4
sub_3_2:          jal          gp, 2f
0:                jal          a0, 3f
1:                jal          t1, 7f
2:                jal          t1, 4f
3:                jal          t1, 8f
4:                jal          ra, 0b
5:                jal          t1, 1b
6:                jal          a4, 9f
7:                jal          ra, 10f
8:                jal          ra, 6b
9:                jal          s2, 5b
10:               lui          s6, 232455
sub_3_3:          jal          gp, 16f
0:                jal          t1, 13f
1:                jal          ra, 5f
2:                jal          ra, 0b
3:                jal          gp, 12f
4:                jal          a2, 8f
5:                jal          t1, 15f
6:                jal          a6, 17f
7:                jal          s9, 9f
8:                jal          ra, 2b
9:                jal          t1, 6b
10:               jal          ra, 7b
11:               jal          ra, 4b
12:               jal          ra, 14f
13:               jal          s1, 10b
14:               jal          ra, 11b
15:               jal          t1, 3b
16:               jal          sp, 1b
17:               srli         s5, t1, 2
sub_3_6:          jal          gp, 8f
0:                jal          t6, 1f
1:                jal          ra, 10f
2:                jal          a1, 14f
3:                jal          ra, 5f
4:                jal          t1, 11f
5:                jal          t1, 9f
6:                jal          ra, 13f
7:                jal          ra, 3b
8:                jal          s4, 12f
9:                jal          ra, 4b
10:               jal          ra, 7b
11:               jal          s6, 2b
12:               jal          t1, 6b
13:               jal          t5, 0b
14:               xori         s1, s3, 720
sub_3_7:          jal          gp, 13f
0:                jal          ra, 7f
1:                jal          ra, 14f
2:                jal          t1, 11f
3:                jal          ra, 6f
4:                jal          ra, 9f
5:                jal          ra, 0b
6:                jal          ra, 5b
7:                jal          ra, 10f
8:                jal          ra, 15f
9:                jal          ra, 8b
10:               jal          sp, 1b
11:               jal          t1, 3b
12:               jal          ra, 2b
13:               jal          ra, 12b
14:               jal          a6, 4b
15:               auipc        sp, 187627
sub_3_1:          jal          gp, 13f
0:                jal          ra, 12f
1:                jal          ra, 9f
2:                jal          a7, 18f
3:                jal          ra, 0b
4:                jal          s0, 8f
5:                jal          ra, 17f
6:                jal          ra, 22f
7:                jal          ra, 20f
8:                jal          t1, 6b
9:                jal          ra, 5b
10:               jal          ra, 7b
11:               jal          gp, 2b
12:               jal          ra, 10b
13:               jal          ra, 3b
14:               jal          s0, 23f
15:               jal          t1, 16f
16:               jal          gp, 4b
17:               jal          sp, 11b
18:               jal          t1, 15b
19:               jal          ra, 14b
20:               jal          ra, 1b
21:               jal          ra, 19b
22:               jal          sp, 21b
23:               xori         zero, a1, 732
sub_3_4:          jal          gp, 15f
0:                jal          s2, 11f
1:                jal          ra, 6f
2:                jal          ra, 20f
3:                jal          ra, 21f
4:                jal          ra, 9f
5:                jal          ra, 2b
6:                jal          s9, 3b
7:                jal          a4, 19f
8:                jal          ra, 22f
9:                jal          t6, 23f
10:               jal          s11, 18f
11:               jal          a5, 13f
12:               jal          tp, 7b
13:               jal          sp, 4b
14:               jal          t1, 0b
15:               jal          t1, 12b
16:               jal          s10, 17f
17:               jal          ra, 5b
18:               jal          ra, 16b
19:               jal          ra, 10b
20:               jal          sp, 1b
21:               jal          ra, 8b
22:               jal          ra, 14b
23:               and          s5, t1, t3
sub_3_0:          jal          gp, 5f
0:                jal          ra, 1f
1:                jal          t1, 6f
2:                jal          ra, 4f
3:                jal          gp, 12f
4:                jal          t1, 14f
5:                jal          t1, 8f
6:                jal          t1, 7f
7:                jal          ra, 11f
8:                jal          t1, 10f
9:                jal          ra, 2b
10:               jal          ra, 13f
11:               jal          ra, 9b
12:               jal          ra, 0b
13:               jal          ra, 3b
14:               srl          a6, s6, t5
sub_3_5:          jal          gp, 2f
0:                jal          sp, 8f
1:                jal          t1, 5f
2:                jal          ra, 6f
3:                jal          t1, 9f
4:                jal          ra, 7f
5:                jal          ra, 3b
6:                jal          t1, 0b
7:                jal          t1, 12f
8:                jal          ra, 11f
9:                jal          t5, 13f
10:               jal          t1, 1b
11:               jal          ra, 4b
12:               jal          ra, 10b
13:               sll          s7, t5, sp
                  sltu         a0, sp, s8
                  and          sp, s10, a6
                  blt          a6, sp, 21f
                  ori          t1, t3, -229
                  addi         gp, a2, 763
                  auipc        a5, 731274
                  slti         sp, a1, 284
                  addi         a1, s1, -53
                  bne          t1, s1, 13f
                  sltu         s7, s0, a6
                  addi         s6, t4, 1512
                  xori         s2, s8, 1407
                  slli         s2, ra, 31
13:               srai         zero, s6, 25
                  lui          t5, 62537
                  slti         t5, t3, -1170
                  slli         a7, a0, 14
                  slli         s7, t2, 6
                  bltu         t0, s1, 36f
                  sub          s0, ra, s6
                  sltiu        t2, s0, 1715
21:               bltu         a1, s1, 25f
                  bltu         t2, s1, 38f
                  bgeu         s10, s0, 25f
                  bgeu         t1, s5, 42f
25:               sltu         ra, s4, s0
                  srai         ra, a7, 18
                  sub          s4, a7, t4
                  blt          s10, s3, 33f
                  xori         t2, a2, -375
                  lui          t2, 952599
                  andi         a5, s11, -1833
                  addi         s4, s1, 2025
33:               and          s5, t5, s1
                  sltiu        sp, t2, -564
                  srl          s9, s5, t3
36:               sra          t2, a3, s3
                  blt          s11, s0, 56f
38:               srli         sp, a5, 17
                  or           s9, a0, s1
                  andi         s3, a2, -1709
                  and          a4, t4, a5
42:               bltu         a2, a2, 59f
                  srli         tp, ra, 7
                  srli         a1, t6, 26
                  addi         gp, t2, -2032
                  or           a7, zero, t1
                  xori         s11, s1, -1047
                  srl          s10, t6, t2
                  bne          sp, s0, 54f
                  bne          t3, s4, 59f
                  srli         s2, t2, 1
                  srl          s2, t4, s10
                  slt          t5, t0, s2
54:               bltu         t1, t2, 72f
                  bgeu         s10, t0, 66f
56:               slti         ra, s6, 1716
                  add          s2, ra, s6
                  add          s3, s7, t3
59:               srli         s4, gp, 2
                  sltiu        s5, s9, -345
                  bltu         a5, a7, 68f
                  addi         s2, s5, -1639
                  sll          s6, s10, s5
                  nop
                  bge          s10, s8, 74f
66:               beq          t0, t6, 71f
                  add          t1, t4, a0
68:               slt          s11, a5, t4
                  sltu         a3, s2, s0
                  sltiu        t2, s3, -109
71:               sub          s5, s5, a7
72:               nop
                  add          ra, tp, s4
74:               sra          t5, tp, s7
                  sltiu        a3, s9, -1448
                  beq          s5, ra, 78f
                  slt          a4, s1, zero
78:               bltu         s9, t0, 92f
                  xor          a4, t6, a4
                  slli         s5, zero, 17
                  sltiu        s0, t2, -1562
                  xor          a7, tp, t0
                  ori          a4, s2, 30
                  slti         s2, a1, 759
                  slli         s0, s6, 29
                  and          t2, a2, s11
                  bltu         s1, a7, 107f
                  ori          s0, a6, -746
                  addi         zero, s10, 1880
                  and          sp, ra, s6
                  nop
92:               bne          s7, t4, 112f
                  slti         s7, t5, -729
                  xori         sp, a6, -117
                  add          s10, s4, a1
                  sltiu        a4, s8, -771
                  lui          s1, 416962
                  and          s11, gp, s3
                  beq          sp, a2, 117f
                  blt          s0, s8, 101f
101:              bne          s6, t3, 121f
                  xor          t5, t3, a7
                  ori          a3, a6, 1089
                  add          tp, a2, s5
                  add          s4, s4, s0
                  add          a5, a1, ra
107:              slti         s9, s9, -1280
                  srai         a6, s1, 1
                  bltu         s9, s10, 129f
                  sll          a0, a5, t3
                  srl          tp, t6, s5
112:              sltu         a3, a7, ra
                  xori         s4, s7, -1936
                  sra          a6, s5, s7
                  slt          s11, t1, t6
                  sra          a0, t5, t2
117:              and          s7, t3, s6
                  xor          tp, a2, a4
                  bne          a4, gp, 122f
                  addi         s7, a5, 1293
121:              sltiu        sp, s5, 779
122:              xori         ra, a7, 1266
                  sll          t5, ra, t3
                  slli         s2, t6, 3
                  slt          s10, a1, a5
                  auipc        s3, 518761
                  auipc        s11, 910752
                  srli         t5, sp, 25
129:              sub          sp, a0, t2
                  andi         t1, a4, 1693
                  sltu         s4, t1, a4
                  blt          t5, t6, 150f
                  srl          s6, a1, s1
                  beq          t4, s6, 153f
                  srli         s5, s11, 31
                  slti         s6, t6, 211
                  or           s11, s0, a3
                  ori          s2, s11, -1355
                  add          s5, t6, s10
                  slti         s0, s1, 2011
                  srl          s6, s2, a2
                  ori          a5, s6, -941
                  xori         a0, s0, -772
                  sll          ra, a0, t1
                  sub          s7, t4, s4
                  auipc        t2, 178087
                  bne          t5, gp, 154f
                  slti         s6, s8, -1505
                  bne          s5, gp, 161f
150:              auipc        a6, 464758
                  sltiu        s1, s10, 365
                  slt          a5, s5, a4
153:              auipc        a6, 131458
154:              sltu         a1, a7, s10
                  auipc        t6, 678923
                  srl          t3, t1, t1
                  bgeu         a4, a7, 164f
                  sltu         s3, tp, gp
                  lui          s11, 577162
                  beq          t3, t4, 164f
161:              srai         zero, s0, 18
                  bne          t4, t2, 174f
                  srl          t5, a3, t2
164:              blt          s10, a4, 166f
                  or           s6, ra, a7
166:              sltu         t3, a5, t0
                  sub          s6, s1, s11
                  beq          a7, s4, 187f
                  sll          t5, a7, t4
                  ori          s1, t6, 293
                  sra          a0, s1, s7
                  srli         sp, sp, 0
                  add          tp, s0, ra
174:              sltu         a4, a6, a4
                  lui          a1, 942394
                  xor          tp, t0, t3
                  sll          t3, s2, s8
                  beq          a7, s7, 197f
                  beq          t4, s10, 184f
                  sub          s7, s11, s8
                  blt          a3, ra, 192f
                  add          s4, t5, s4
                  nop
184:              xor          t1, a3, s2
                  sll          t3, t2, s3
                  ori          a1, t3, 270
187:              sub          a4, s4, s1
                  or           a5, a5, t1
                  slt          tp, t4, s4
                  auipc        a5, 70169
                  add          s2, t4, a0
192:              slli         a0, t5, 3
                  sltu         ra, a7, a6
                  sltiu        s5, a4, 1505
                  or           a5, a3, s4
                  slti         t2, s8, -1779
197:              and          s9, gp, ra
                  sltiu        zero, s11, -885
                  bgeu         a1, a3, 217f
                  srli         s5, t3, 13
                  nop
                  bne          s5, t6, 211f
                  srli         s2, s4, 23
                  add          t3, zero, t1
                  nop
                  sltu         t1, a3, sp
                  sltu         a7, t6, a2
                  nop
                  srl          t6, s10, a1
                  add          a6, ra, t6
211:              xor          s10, ra, a4
                  add          s6, t5, t0
                  sra          t5, tp, s8
                  blt          t2, t1, 230f
                  beq          sp, t1, 224f
                  xori         zero, t0, 984
217:              nop
                  blt          t6, a0, 236f
                  slti         ra, s9, 528
                  slt          t3, t5, t6
                  andi         a1, tp, 67
                  and          s9, t4, s11
                  ori          gp, s0, 121
224:              ori          ra, s5, -277
                  beq          s8, sp, 242f
                  blt          s3, a1, 246f
                  blt          s0, s7, 246f
                  blt          s2, a7, 246f
                  sltu         t2, a4, t0
230:              add          s3, a7, a2
                  and          sp, tp, s8
                  sra          sp, a5, t1
                  sltu         zero, a0, s3
                  sltu         s2, s1, ra
                  srai         t5, s2, 14
236:              nop
                  bltu         s4, t5, 255f
                  andi         s2, s2, 1366
                  xor          s11, a7, s7
                  bgeu         a5, s5, 258f
                  srl          s10, s4, gp
242:              ori          s3, s11, -311
                  or           a2, s6, t2
                  sltiu        t1, tp, -572
                  slli         a7, s4, 18
246:              sll          a7, a3, a3
                  andi         a0, s7, 1997
                  slli         t6, a1, 31
                  beq          t1, t0, 254f
                  sra          sp, s7, ra
                  ori          s11, s5, 42
                  blt          s3, a0, 254f
                  sll          gp, ra, t6
254:              xor          a1, zero, s3
255:              or           s11, s4, t4
                  bne          ra, a5, 259f
                  addi         s10, t5, -738
258:              sra          zero, a3, s11
259:              bne          a7, gp, 279f
                  and          a2, s4, s5
                  auipc        s6, 588005
                  slt          s2, a2, a4
                  sltiu        t6, t1, -1649
                  bltu         a7, tp, 284f
                  sra          s7, a0, t5
                  or           a4, a3, s7
                  auipc        s2, 131443
                  beq          a4, s1, 282f
                  add          s5, a2, t6
                  addi         s7, s11, -832
                  add          s3, zero, sp
                  srli         s10, s11, 29
                  sltiu        t5, s6, 1246
                  slt          s3, s6, a3
                  bltu         t1, s0, 280f
                  slli         t5, s10, 15
                  bltu         a3, t4, 284f
                  bltu         s1, a4, 298f
279:              srai         t6, s0, 1
280:              slli         s0, s0, 17
                  xori         gp, s3, -1973
282:              andi         t5, a2, -830
                  sra          t5, ra, tp
284:              sub          a6, a0, s1
                  srli         s0, s4, 21
                  sltiu        ra, s6, -1249
                  slli         t3, a3, 15
                  nop
                  slli         s2, ra, 8
                  bge          a3, a0, 291f
291:              and          s3, ra, s1
                  xor          a3, s5, a5
                  srl          s0, s9, s10
                  sll          ra, zero, a5
                  or           t1, s2, tp
                  xor          sp, t0, t5
                  auipc        s10, 417948
298:              auipc        s2, 492136
                  ori          s6, t4, 89
                  slti         t6, s3, 1375
                  beq          tp, s11, 306f
                  sll          gp, s2, tp
                  and          ra, t5, a4
                  auipc        a4, 488371
                  sra          s3, t3, a1
306:              bne          s5, s0, 317f
                  sltu         zero, a1, a6
                  sltiu        s1, zero, -1687
                  sub          a4, s9, a0
                  bne          a0, zero, 328f
                  sltiu        a4, zero, -1248
                  blt          t0, s9, 317f
                  ori          s7, s2, -299
                  xor          sp, a6, s6
                  sra          sp, s6, tp
                  slti         s1, a1, -556
317:              add          s2, t3, t4
                  srai         s2, a4, 12
                  sltiu        zero, s9, 1455
                  slti         a3, s2, 483
                  sub          a4, a3, a6
                  sra          s6, s6, t2
                  andi         t5, s5, 1390
                  bgeu         s6, s10, 344f
                  sltu         s2, a1, s7
                  srai         t2, a2, 2
                  sub          t5, a6, s10
328:              sll          s11, ra, a2
                  sltu         a7, a4, s4
                  sltu         s1, a1, a3
                  sra          t1, t4, s6
                  sltiu        a0, s10, -1321
                  srli         a2, a0, 11
                  auipc        zero, 650461
                  sub          gp, s7, tp
                  nop
                  slli         a0, s9, 0
                  bltu         a2, a0, 357f
                  xor          s1, gp, s6
                  auipc        ra, 895033
                  srl          s1, a3, s0
                  sub          s2, s4, s8
                  sra          s11, zero, a0
344:              xori         a0, s2, 1706
                  sra          t5, tp, s5
                  bltu         s9, s0, 358f
                  auipc        s6, 107663
                  blt          s2, t3, 365f
                  sltu         s1, a6, ra
                  sll          a4, t2, zero
                  xor          t5, s6, s11
                  slti         a4, s8, 1642
                  slli         a1, sp, 20
                  lui          a2, 379969
                  sll          sp, t1, gp
                  sub          s7, s8, sp
357:              sltiu        s0, t0, 189
358:              addi         t1, ra, -1997
                  blt          s0, a4, 378f
                  bne          a3, s2, 378f
                  sll          ra, t3, a7
                  sub          s11, a1, t2
                  auipc        a6, 576307
                  and          s2, a1, t6
365:              bne          s11, a7, 367f
                  and          t1, s8, s2
367:              xor          ra, gp, s11
                  xor          s1, sp, t0
                  slt          s10, s0, s2
                  ori          s6, a1, 1185
                  srai         s2, a4, 11
                  add          tp, s5, t2
                  andi         s5, a4, 1704
                  xor          a0, t6, a7
                  lui          a7, 468333
                  blt          sp, s0, 383f
                  or           gp, zero, a5
378:              or           s3, t5, a3
                  nop
                  sltu         a4, s2, t5
                  sub          t5, t5, s9
                  srl          a0, t0, t1
383:              xor          tp, s5, a1
                  auipc        a6, 888096
                  auipc        zero, 543745
                  or           s3, a6, a0
                  srli         a3, s10, 6
                  andi         a7, s7, 1902
                  slti         s4, s1, -1769
                  srli         s10, a6, 28
                  slti         a4, a5, 1724
                  nop
                  ori          sp, a3, -1351
                  slt          s6, t0, s2
                  xori         gp, t2, 1972
                  nop
                  xori         t3, s10, -1620
                  srl          s3, a1, t6
                  bge          s11, s9, 418f
                  sltiu        s5, t4, 1968
                  and          s10, s1, a6
                  and          a2, a1, a4
                  bltu         t0, a4, 412f
                  add          a5, s8, a4
                  srl          s2, sp, s2
                  and          s7, a4, a4
                  nop
                  auipc        s7, 877464
                  xor          a3, zero, t2
                  nop
                  srai         t2, s2, 28
412:              sra          s5, a4, zero
                  nop
                  or           gp, a5, s0
                  addi         a3, s7, 906
                  blt          a0, t3, 417f
417:              slli         a3, s2, 6
418:              addi         a1, s1, 1032
                  or           gp, a1, ra
                  srai         a6, a3, 10
                  xori         t2, t3, 1665
                  and          a7, ra, t2
                  lw           gp, 4(t4)
                  and          s3, t0, a3
                  sltu         s1, a1, a6
                  addi         t4, t4, 48
                  srli         s2, a0, 29
                  auipc        a4, 300928
                  srai         t3, t1, 30
598:              addi x8, x3, 0
598:              jalr x8, x8, 0
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
.word 0x98ed3680, 0x0a1644d6, 0x132baabd, 0x2348616c, 0x3c3b9c00, 0x5e13f69d, 0xd75e1fd9, 0xe903323f
.word 0x04aea62f, 0x92bedd03, 0x6e19ec18, 0xf6c7fe48, 0x87e172bc, 0xabec54fc, 0x23e6bf1b, 0xcefc1aad
.word 0xf47e746a, 0x5cf7c89f, 0xe14a43a7, 0x6f591571, 0xf83ba5b6, 0x5015eb0b, 0x24a0b14a, 0x94183aaa
.word 0xb2a7d0c5, 0x3d2da4f4, 0x11665167, 0xc91cbf08, 0x18bb0b3d, 0xde025d52, 0x3883491c, 0x3494fb41
.word 0x980d15a1, 0x7e161a42, 0x969abec1, 0x132364f8, 0x72cf2602, 0xba7fde36, 0x96597048, 0x7b57e067
.word 0xf4594417, 0xfe4d959b, 0x6b800726, 0xbc308c02, 0x23947771, 0x3cd74881, 0xdb4ea64f, 0x10a476d4
.word 0x3fb69569, 0x9e1d2097, 0xc75a12e4, 0x05392903, 0x247ff112, 0xe6cc13f9, 0x426f27f0, 0xf12933a1
.word 0xed8b8307, 0xcf85c910, 0xcbfd9eb2, 0xf0d46d86, 0x677e6327, 0xcfb2698d, 0x02027609, 0xbe8b9c5c
.word 0x4d022708, 0xab594008, 0x17657887, 0x7b3362be, 0xd1810dc1, 0x61314193, 0xbf6b8687, 0x0c7e3933
.word 0x4d2fbb3a, 0x5aefb065, 0x0341e797, 0x5af58936, 0x731b0757, 0x47e79c3c, 0x146f66b7, 0x921499dc
.word 0x4b6310d2, 0x021a2b42, 0xccd53d8c, 0x83dc3884, 0xbc06c69e, 0x6760853d, 0xf30f831d, 0xbf476451
.word 0xf4008ab2, 0xa4d91839, 0xd34baabc, 0xb5fcaadf, 0xf582cc34, 0x1332b8ef, 0x8b1f80b9, 0x713657f1
.word 0xc757228e, 0x17538d8d, 0x215baf87, 0x349cbade, 0xa834f84f, 0x102b72b5, 0x8f67461e, 0xab09cfdb
.word 0x17cb4861, 0xc1df2a9e, 0xe7f22b7f, 0xcc136cbe, 0xad551978, 0xda59fe6e, 0x922ae08e, 0x5f69933e
.word 0x1c12f3cd, 0x9a0b5a98, 0x172c40a5, 0xded976b7, 0x5705081c, 0x90002c12, 0xfe346ccd, 0xb82d078c
.word 0x95496ae0, 0x99a27071, 0x7c4786e3, 0x511814d8, 0x591a6fa5, 0x6161c59b, 0x913967a8, 0x0c2ce734
.word 0xb638a12e, 0x7e41e9f9, 0x38772699, 0x894175ae, 0x62e328e5, 0xc7599012, 0x3d403773, 0x2c9be982
.word 0x77e830dd, 0xa9f35211, 0xa555f046, 0xa97d6b0b, 0x2a108a80, 0x47a5a96e, 0x6693586d, 0x2725129a
.word 0xdee98b3a, 0xdd93b537, 0xb88b0023, 0x3d9512d1, 0x65c1ac09, 0xeab92312, 0x89925011, 0x464cca0d
.word 0xb424fe45, 0x4ae36edd, 0xaf93a845, 0x6516dd20, 0x9780db51, 0x9ef63dcd, 0x5cab41d4, 0xaaa5303a
.word 0x8cfb9c0d, 0x2823112d, 0xbe596123, 0xd430b333, 0x1f86117e, 0x9d2acfe9, 0x84c528d2, 0xf898daab
.word 0xc0893c27, 0x89e7c16f, 0xa38fd502, 0x05e8445c, 0x448613d5, 0xe6af7581, 0x645433cf, 0x82bf6304
.word 0x69e45198, 0x0d1dae5c, 0x29528092, 0x9b504c77, 0x70e2d8db, 0xeda8a440, 0xc47ed1a0, 0x0bddee1b
.word 0x5182f93b, 0x972c60d8, 0xa7c4a7e1, 0xe2e3ba28, 0x7bf09e15, 0x4957624f, 0x024d00b8, 0x2d743a6b
.word 0xe4bd1aa5, 0x23c9380b, 0xc8871d4a, 0x871366a3, 0x5894d69b, 0xee149fb8, 0xd088fc98, 0xd2e233d9
.word 0x7661b0a0, 0xd0809859, 0x28e34a5e, 0x4faaea34, 0xe3749ffd, 0xde666cf5, 0x7e948778, 0xa2eda470
.word 0x271221bf, 0x5257e6d6, 0x8180ca5f, 0xcff601a2, 0x6e1bb003, 0xd3434b8b, 0x8a24680a, 0x2f8569a2
.word 0x2383fbfe, 0xfb2a0d72, 0x6379e036, 0xc6d5208e, 0x50eaea3a, 0xdb57e0fb, 0x3d73c7ed, 0x19853fc0
.word 0x98f1cbdf, 0x19e510e5, 0xe16d663b, 0x95d9e31b, 0x5bc4bc63, 0xcbc56fb8, 0x42403e9d, 0xb914bb95
.word 0x59326964, 0x706cc313, 0xd4be8d38, 0x1cd670b6, 0x07d7eb96, 0x060494cf, 0x34eb2dbb, 0xe811f5e8
.word 0x504f75b9, 0xd6d8f16d, 0xf5aaea01, 0x716a38f5, 0x1cc934fd, 0xe00b7e5c, 0xb7f1f662, 0xe8a907be
.word 0x92edba7e, 0x43cfc4f2, 0x24a4237f, 0xd03e5070, 0x65e91257, 0x6cc7ab17, 0x40d45db6, 0x8f9d3c0d
.word 0x6c5f3960, 0x866cc857, 0xa4d4dd36, 0x37f03906, 0x8fc9ac00, 0x9339c6a5, 0xdcd8fd29, 0x2ffecb79
.word 0xf5a1ac60, 0xd3bfada1, 0x53e18d88, 0xd71a5cd5, 0xc3cbb05c, 0x88161e6e, 0x21dbeeff, 0xc28441ec
.word 0x7933d605, 0x943a5de9, 0xdd8d9fb9, 0xadeb989b, 0x99df52ee, 0x96b24375, 0xda223d0a, 0xd292b71f
.word 0xcf8ecc76, 0x6a02a076, 0x0e5180b3, 0xc4d131f1, 0x9e2b13b9, 0x5e93ea67, 0xeb1e7874, 0xaf0e3a95
.word 0x5eb56db8, 0xef9ab728, 0x6c49941e, 0x68d66515, 0x7de2755a, 0x90dc1bcc, 0x8b625202, 0x24bf72fd
.word 0x1f9062ad, 0x735c7197, 0x9eb289c9, 0xee480839, 0x4426fab3, 0x7f7b04be, 0xc92aab3c, 0xc2b4a8b1
.word 0xd0afb37a, 0xebce4fef, 0x68c99185, 0x434251d7, 0xa0143372, 0xa8fb9285, 0x8bf24225, 0xcf3d8f93
.word 0xebb0c144, 0x30493c12, 0x6fced199, 0x3ee7e7e9, 0x11abeddc, 0x0bf2586f, 0xb500b40a, 0xb27558db
.word 0x487db6f2, 0xc6ab34a8, 0x452fc3bb, 0x16ab11eb, 0xa2d31bd2, 0x7ba369cc, 0x49047208, 0x45825d52
.word 0x0de36ea2, 0x58cda18a, 0xe43c28d4, 0x7e3e98e2, 0x74727c60, 0xce377a05, 0x6f68d189, 0x067dcb33
.word 0x5555b91c, 0x361d5bf8, 0x633c470b, 0xade56fab, 0x164023d3, 0x25c35aef, 0xff6a6904, 0x27e92555
.word 0x90f0336c, 0x046a35db, 0x927937ec, 0xfcd554a2, 0x01d27306, 0x161242dd, 0x3e2ebf0c, 0x1d188293
.word 0xe4f60b45, 0xe87924fe, 0x11e0fe2e, 0x26b4c424, 0xd0815497, 0x06b0336e, 0x04272cd3, 0xc75827b9
.word 0x9f61485d, 0x41852d91, 0xc3c5b32a, 0x46e46c02, 0x11f54dac, 0xcc457963, 0xe702abc9, 0x15ae40fe
.word 0x4d4ffa75, 0x3cbc2c15, 0x618a31c7, 0x586e2efc, 0x3a67a49e, 0xbb49436d, 0x07d50ca1, 0xf8febb98
.word 0x07df2d1e, 0x6ef1ecb7, 0x7bd07d02, 0xfcc9783f, 0x412d2209, 0x11ada879, 0xfbadb3c2, 0xf6e6f946
.word 0x33a888a9, 0x9db97248, 0xccb12f5a, 0x68a85e51, 0x509849e9, 0x570e701d, 0xac16d924, 0x16c06dd0
.word 0xdcde5c45, 0x36ff1f5b, 0x5269bbe4, 0x1fb37d81, 0x4f8e9aeb, 0x8ec8adf4, 0xa5d1fdf0, 0x37fd48c0
.word 0x363ec154, 0x9abb4d83, 0x9713a336, 0x73164f0a, 0x7e6a6582, 0x3ed72897, 0x5739d3b6, 0xe9a76009
.word 0xf7d62369, 0x0a253162, 0xb9324901, 0xbe7cbbf4, 0x68f4f122, 0xb2504739, 0xa2cd8c1c, 0x8ce7b07c
.word 0xafb58dc7, 0x606fbdfc, 0x8baebf57, 0x7eea8127, 0xc4ef2972, 0xedec6c04, 0x7cc233d1, 0xe31d740f
.word 0x35c691ca, 0x6f8cb7de, 0x86055337, 0x7ec68f8f, 0xd5019b1e, 0x1c2cb649, 0x5070f319, 0x5827afc0
.word 0x76f2e672, 0x84922567, 0xce0c7f9a, 0xab7bb134, 0xda6e3440, 0xa803c479, 0xee5ad058, 0xd6abb270
.word 0xfe5dc3b0, 0xe2509480, 0xb69af8af, 0x586552cb, 0x0d285c39, 0x0b882884, 0x43a75d03, 0xccc792e1
.word 0x030e9b13, 0xddffe75e, 0x9f094480, 0x093ea80d, 0x6c4632ef, 0x819506e2, 0x4d9d57ae, 0x5ff32ed2
.word 0x366adf4f, 0x5eb7a3e5, 0x111364aa, 0xb08fe991, 0x376c5eec, 0x8297584c, 0x41bca3a9, 0xbae2f7ec
.word 0x8f6f81e9, 0x5bd75e5e, 0x3942e1d4, 0x592cd078, 0x79a17eb3, 0xb18e29f3, 0x52d7ddec, 0x53735646
.word 0x7578e22f, 0xe7d3e03e, 0x22e40a13, 0xd51c7032, 0xcccb9f16, 0x7cf62bad, 0xd1ab9e8c, 0xcec97394
.word 0xa0f190bf, 0x0917e3b4, 0xc97e97dd, 0x36103881, 0x0724fd97, 0x0ead47e8, 0x4c6069fe, 0x306e6477
.word 0xb55cecee, 0x873c0ad8, 0x802049ca, 0x46f9660e, 0x7939106b, 0xd79ee25d, 0xbd3921e9, 0x7714af1b
.word 0xa1939350, 0xaa346081, 0x954138a1, 0xae4b530e
.section .region_1,"aw",@progbits;
region_1:
.word 0x1b1f3c7e, 0x3b98fe61, 0xc78ef66c, 0x2b6be026, 0x5fb5cf20, 0xd405168b, 0xe97ccae6, 0xd4a4ae09
.word 0xd74c9b1a, 0xaa318c99, 0x66511195, 0x4c715ed4, 0x4a777d06, 0xe88abe5c, 0x90f40d2f, 0xc3e1fb26
.word 0xb552ae01, 0x003db42c, 0xf1f18549, 0x57b56bfa, 0x2ea0ccbb, 0xcb7ac0fa, 0x38423f0b, 0x5d376ae9
.word 0x1e6bffd2, 0x9cd7782f, 0x06345c30, 0x277af642, 0x2ad239e8, 0x60a0114a, 0x435eafa1, 0x55b52763
.word 0x4af3f018, 0xb0c41240, 0x093d9c23, 0xf979a83b, 0x9c95b8c7, 0x5af00811, 0x2dbd37e4, 0x6aee80e0
.word 0x163ff455, 0x3ad94706, 0xbe026857, 0x01803804, 0x854469e1, 0xa6cd096c, 0x353be948, 0xb1b484f3
.word 0x221e6191, 0x32d374dc, 0x0bd1991a, 0x376bb7b0, 0x82dddbe7, 0xb818f2c4, 0x641710c3, 0x285435b6
.word 0xf4731580, 0x3d285f30, 0x626c5920, 0xf2f3d83e, 0x4998fa07, 0xbc381fb6, 0xc82ccff0, 0x68db7cdd
.word 0x85a3edf6, 0x0d59c78d, 0xb332a9f2, 0x8db7ae78, 0xbcc4e0e5, 0xf2dfcb6a, 0x6a0a4756, 0x61970f05
.word 0xe5e4b6e7, 0xf2515093, 0x1e7ff351, 0x8d906f2e, 0x02113cda, 0xaa29e112, 0x6660cd84, 0x75bc6b86
.word 0x7fe1f241, 0xb843cda3, 0xde2d001f, 0x6d8c8f85, 0x77f13c2c, 0xeb37df49, 0x27c41712, 0x622d6c57
.word 0x5bf66207, 0xd4b416fb, 0xe1d7a608, 0xcf14246e, 0x932a779f, 0x41baa5a4, 0x4c2c03ca, 0x7134e8a8
.word 0xd5a9397b, 0x3efe3d97, 0xae1ac13f, 0x75e222e4, 0x0dd39edc, 0xdbda7d0a, 0x11caf2f6, 0x0edbbc86
.word 0x7792d29d, 0x3f874f72, 0x11d0c195, 0x9e884920, 0xb0cc9aa6, 0x05ea20fe, 0x8b09e886, 0x25b2c9cc
.word 0xe8000592, 0x5bcf9f9e, 0xacd4078d, 0x7d74bd09, 0x45cfd799, 0x6d08f633, 0x147d8230, 0x46f186f7
.word 0xf2340d31, 0x3e1be764, 0x9c33cc4f, 0xca10f178, 0xb5649259, 0xbbe02a70, 0xc2cd1673, 0x13e61fd4
.word 0x1dcd1606, 0xa3fa0b3c, 0xe273e9c8, 0xb655b13c, 0x78d35ff8, 0x49873c80, 0x98e03ad9, 0xe2f1cec8
.word 0x310927ee, 0x4bb9c094, 0xc0376035, 0xe6b7e1fd, 0x3f03e83b, 0x4573ac88, 0x765d3693, 0x476c2cd8
.word 0x3c0fcaa5, 0x043280c7, 0xa56b09d5, 0x5879f48f, 0xf4657d82, 0x05649cc3, 0x47713931, 0x845ee096
.word 0xd54505a8, 0x939c38e9, 0x1a5b43c0, 0xb4b1d5ab, 0x457a9c0e, 0xee394b55, 0x4a4630e1, 0xfaa571e3
.word 0xcb3bf1f6, 0x4724f915, 0x1e00a256, 0x2cd82dba, 0xc0525cee, 0x62990bcd, 0x9e346a86, 0xf88409bd
.word 0x4adbbe7c, 0x69d22a7d, 0xb8092a00, 0x5dcc023d, 0x0e64cb83, 0x691ef0ec, 0x8f6bd0a7, 0x978c65ef
.word 0x18bb69e2, 0xd4b75b5c, 0x4b39f7a1, 0xcacdfe1a, 0xd18f95b7, 0x15fa9037, 0x65d54545, 0xbb970537
.word 0xe7e6eae8, 0x9f12b434, 0x76665e1b, 0x1ad647f2, 0x0f2dca27, 0x44cb26b5, 0xeecd5597, 0x13b8dca4
.word 0x9a9eec91, 0x32a7aab4, 0xcf480404, 0xbdf087da, 0x7ebf03af, 0xbc47c48a, 0xabd7c049, 0xf53b1f72
.word 0x8c0155f6, 0xc1f12f1b, 0x6c74f039, 0x8646bc20, 0xa9bbccab, 0x0b801e2c, 0xcebfe4f6, 0x75d17810
.word 0x68b6b3e6, 0xe0ebaa69, 0x0adeb77f, 0xaa7476c7, 0x34410374, 0x2d494bea, 0xaad0819e, 0x9dfedc7a
.word 0xc1fc9ec9, 0x38e4f4f6, 0xd1b682ed, 0x0caba8ae, 0x82feaf4b, 0xc9a599e0, 0x17b43585, 0xc49f130e
.word 0x1bf2571a, 0x6a2c8c2d, 0x25557fe2, 0xe1ccc66b, 0x3e60a2e5, 0x0e305372, 0x98433970, 0x1b2b29d9
.word 0x45bfaa36, 0x77c7ec52, 0xff0497a8, 0x0ed8fc2b, 0x692b1a3d, 0x30d6a67d, 0x091b3af1, 0xce955d2a
.word 0x2a9fb352, 0x5972ea96, 0x005e3ff7, 0xaa3226cd, 0x874631fc, 0xd7e67386, 0x4b71967b, 0xdf0343b6
.word 0xb2f66926, 0x955d7383, 0x82e07616, 0x726765e6, 0xefc73b31, 0x5fd7eb5d, 0xa273d33d, 0xb13c00a5
.word 0x88f51942, 0xcff99644, 0x08990e63, 0xda907cf9, 0x44ccf473, 0x82a46746, 0x9022f93a, 0x51381fac
.word 0xeb0eb01e, 0x636a4853, 0x6d2578a1, 0x3f04c5cf, 0x209ee532, 0x6557a3e1, 0x071b426f, 0x1881d810
.word 0x11db5562, 0x94654473, 0x684930f5, 0xf9d04dfb, 0x0adfa13e, 0x1feca7ff, 0xa4679af9, 0x0bac9821
.word 0xf984e371, 0xe49d3e69, 0xb8c04ba4, 0x589e5cc6, 0xf6b4c94d, 0xd51d2b5c, 0xed98570a, 0xbbf60714
.word 0x0698f850, 0x13da5eb8, 0xffb57680, 0x894427a5, 0x4dc68e95, 0x1e42dfb1, 0x80cd1c12, 0x686d3e47
.word 0xcef7248e, 0x29ca2221, 0x7a53b5cc, 0x6c35d72c, 0x581a67bc, 0xf5375a62, 0x3ea7f8ac, 0xffacedb8
.word 0x1b242c5e, 0xdaa14c75, 0x2b331fef, 0xb7dc7526, 0x06429130, 0x1a1b9dac, 0xdc5180b8, 0xc53a1952
.word 0xb6de1953, 0xe1fbfc9f, 0x10a02b78, 0x75256f02, 0x2fec2f9e, 0x9e98422e, 0x7dac7015, 0x58c7e8c8
.word 0x690cc20c, 0x3471cd66, 0x9b6d2b0c, 0xcc75709c, 0xc6ae5d43, 0x4c2e1173, 0x376c2074, 0x3bc3a2b4
.word 0x6d7ad5d7, 0xe576758d, 0xb54038c6, 0x449851fb, 0x91cd1511, 0x4b461f3b, 0xd469564c, 0x957b6cf1
.word 0xd5299af9, 0x123ea31c, 0x3d7fda43, 0xeb799fb4, 0xc193afe4, 0x397c9799, 0x978299a3, 0xf9d28571
.word 0x1bd9f699, 0x34058f8d, 0x5cddf513, 0x8b154a2c, 0x5a631505, 0x663a5af9, 0xfe837fa2, 0x72b407b0
.word 0x6e8cbd03, 0xe98abe2d, 0x6dc03927, 0xdd519b10, 0x794eedd9, 0xe3ca3d9c, 0x181aaafb, 0x3b2f3449
.word 0x34607454, 0xe265cbdd, 0xec9441b5, 0x4f5be154, 0xa5d03582, 0x828a31db, 0x2895ac98, 0x42feaf7c
.word 0xc145b7de, 0x53a39560, 0x49dce3c7, 0x2ab1173b, 0x36abf692, 0xa57a8f66, 0xcde057ad, 0x820ad84e
.word 0xb791cbba, 0x6faa54e5, 0x92410e21, 0x0fac07e1, 0xa4697346, 0xd556f618, 0xa9f0a7a5, 0x1045f87f
.word 0x87faabd6, 0x554d5ade, 0x109346f4, 0x56d20099, 0x5360a6d2, 0xb5293a2c, 0xb76e9a8e, 0x42aa492f
.word 0xdff263fc, 0x4676551b, 0x78e40f2d, 0xa394035d, 0xb46c5777, 0x9abf6f1d, 0x0d860773, 0x89cb4302
.word 0x9630f822, 0x9b06da0a, 0x29b81d1d, 0x69d87442, 0x30335847, 0x46079dfe, 0x5d52aecd, 0x96e97619
.word 0x3fb17921, 0x89c89b43, 0xa2a5b278, 0xb2dce6d1, 0x66501b41, 0xae62795c, 0xfc7730f3, 0x0e7c84e2
.word 0xa218622b, 0x977a6aab, 0xb247176b, 0xb2ba90d5, 0xa588e348, 0x8c80175e, 0xe3ea3c76, 0xc40d3f3d
.word 0x88343ff0, 0xa45e1ce1, 0x1d400984, 0x80b36c0c, 0x111bf5c6, 0x2489ba0b, 0x11648beb, 0x3ea61538
.word 0x35e935c5, 0xe0b114df, 0x7c068aa4, 0x6d76b65e, 0x787778d0, 0x9900ff8d, 0xb3ca8662, 0x42454927
.word 0x100f6485, 0x00aae062, 0x0666883d, 0x7068982f, 0x7d57f2f8, 0x76c7d866, 0x12b8927c, 0x729009e8
.word 0x76d0b7ca, 0x64ebfc45, 0xf9453927, 0x4b9fc65a, 0xac7ae34d, 0x6e2b53ac, 0x6e6779b6, 0x47a93ccc
.word 0xff71da94, 0x0d275947, 0xa150e2cf, 0xec84c91e, 0x3c8947cd, 0xc82938b6, 0x15425428, 0x88191468
.word 0x99a402cb, 0xac5df2d3, 0x521199f9, 0xecf0f3c2, 0xe6d71688, 0xfdb2e808, 0x04f6cc7c, 0x69842884
.word 0x487aaf4e, 0x8983e078, 0x44a0c617, 0x517edbcb, 0xdfbc729d, 0x9a3ed564, 0x4dd8d158, 0x76a6c8fb
.word 0x06784ba8, 0xacd5b721, 0x775c44d2, 0x4baa163f, 0xada44412, 0x731907ab, 0x3006c07b, 0xb2b3d781
.word 0x98665538, 0xb82165c4, 0x757d647b, 0x4b754b22, 0x8785fa36, 0x191d2aec, 0x22c52d24, 0xe936faf0
.word 0x68b58f52, 0x1546a14e, 0x23488066, 0xfe38e7fb
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x24, x29, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x17, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x17, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x17, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x17, x8, ecall_handler
                  li x8, 0x1
                  beq x17, x8, instr_fault_handler
                  li x8, 0x5
                  beq x17, x8, load_fault_handler
                  li x8, 0x7
                  beq x17, x8, store_fault_handler
                  li x8, 0xc
                  beq x17, x8, pt_fault_handler
                  li x8, 0xd
                  beq x17, x8, pt_fault_handler
                  li x8, 0xf
                  beq x17, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

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
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x29, x24, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x24, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x24, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x29, x24, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x29, x24, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x29, x24, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
