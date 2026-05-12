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
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0x15d65dd5
                  li x1, 0x29bff1ab
                  li x2, 0x1
                  li x3, 0xc16f3a59
                  li x4, 0xf1bb36bc
                  li x5, 0xe
                  li x7, 0x33a1c006
                  li x8, 0x80000000
                  li x9, 0x9f5d071f
                  li x10, 0xf2be6b3a
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0xa
                  li x14, 0x3644a6c2
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x17, 0xf322da2e
                  li x18, 0x50274f3f
                  li x20, 0x7
                  li x21, 0xf9c6a2f7
                  li x22, 0x0
                  li x23, 0x521a52b3
                  li x24, 0xc9389ec8
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x8a937aa3
                  li x30, 0x0
                  li x31, 0x76f37ab9
                  la x19, user_stack_end
main:             addi         a0, zero, -6 #init loop 0 counter
                  slli         ra, a2, 19
                  addi         a2, zero, -2 #init loop 0 limit
main_0_0_t:       xor          tp, sp, a1
                  sltu         s9, t4, a2
                  srli         a3, s7, 21
                  addi         a6, s4, 1103
                  addi         a0, a0, 7 #update loop 0 counter
                  blt          a0, a2, main_0_0_t #branch for loop 0
                  or           s2, t5, s6
                  lui          s4, 120550
                  slli         t2, tp, 16
                  sll          a6, t4, s2
                  blt          s3, s9, 23f
                  srli         a6, ra, 10
                  slli         a0, ra, 21
                  srl          a5, t4, s0
                  lui          tp, 723772
                  nop
                  auipc        t6, 898135
                  sltu         a4, zero, t1
                  sltu         s1, s8, a6
                  auipc        t3, 764005
                  srai         s1, s10, 27
                  la           ra, sub_1
                  add          t4, t3, sp
                  xori         s1, gp, -707
                  srai         s10, s2, 7
                  addi         ra, ra, -923
                  sra          a2, zero, a7
                  lui          s1, 1040744
main_j1:          jalr         a1, ra, 923 #jump main -> sub_1
                  blt          a0, a3, 29f
                  xor          t6, a1, s5
                  srai         t6, s6, 13
                  slti         a7, t5, 910
                  srai         s11, t2, 5
                  bltu         t3, s6, 26f
                  ori          a7, s10, 1089
                  srli         s11, zero, 31
                  xori         t6, a6, 1805
                  slti         s4, s3, -1256
                  beq          a5, a7, 27f
                  sub          t3, s2, t4
                  auipc        s7, 418758
23:               bgeu         s4, zero, 24f
24:               nop
                  add          s6, s1, s10
26:               sll          t5, a2, s5
27:               beq          a2, s2, 33f
                  bge          t2, s6, 42f
29:               srl          a1, s8, s6
                  andi         s4, a7, -1514
                  sltu         a3, t4, gp
                  nop
33:               srli         s10, s5, 24
                  sll          a5, s8, s4
                  xori         t3, a4, -32
                  srli         a4, sp, 29
                  slli         t4, ra, 21
                  lui          a2, 966352
                  blt          s5, s7, 43f
                  bltu         gp, a6, 43f
                  sra          zero, ra, ra
42:               sub          tp, tp, sp
43:               srli         s2, ra, 10
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            ori          s11, a6, 950
                  bne          s6, ra, sub_3_stack_p
                  srl          t5, t1, a2
sub_3_stack_p:    addi         s3, s3, -8
                  nop
                  slli         sp, s1, 21
                  sw           a1, 4(s3)
                  srl          t6, t2, s4
                  slt          s7, s11, s2
                  xori         tp, a4, -1867
                  sub          zero, t5, a7
                  slli         s9, t0, 24
                  sltu         s11, t2, s2
                  addi         s9, zero, 10 #init loop 0 counter
                  and          a3, t6, a2
                  addi         a7, t4, -158
                  ori          s11, ra, 1081
                  ori          ra, a5, -572
                  addi         s0, zero, 18 #init loop 0 limit
                  or           t2, s4, tp
                  slti         zero, a1, -885
                  or           s4, t1, a4
                  add          sp, a4, s0
                  xor          s2, a6, a0
                  sll          a0, t6, s7
                  srai         a1, t2, 23
                  sub          t3, s9, s3
                  xori         s7, s7, -165
                  or           t5, s7, a4
                  sub          t6, s9, t5
                  andi         t2, s0, -661
                  srai         ra, t1, 16
sub_3_0_0_t:      slt          a6, s10, s10
                  ori          a5, gp, -779
                  addi         s9, s9, 5 #update loop 0 counter
                  sltiu        gp, t3, -1247
                  sll          a6, s3, a5
                  blt          s9, s0, sub_3_0_0_t #branch for loop 0
                  sub          s4, s7, t6
                  sll          s11, a3, t2
                  slt          a3, t3, a5
                  bltu         gp, s0, 5f
                  sra          gp, t6, s3
                  sltu         a4, tp, s6
5:                beq          s3, a1, 13f
                  srai         s2, s0, 26
                  beq          s1, s3, 26f
                  sltu         s9, t1, t5
                  srai         s9, a1, 16
                  sll          a2, s2, s11
                  or           t2, s11, zero
                  slt          gp, s7, a5
13:               slt          s7, s0, s6
                  sll          s2, t3, gp
                  bltu         s2, sp, 28f
                  sltu         a3, t1, t5
                  beq          ra, gp, 20f
                  sltiu        ra, tp, 1709
                  slli         s7, tp, 28
20:               srli         s1, tp, 28
                  auipc        t6, 263610
                  sra          gp, s0, a3
                  or           a5, t4, t4
                  sll          a6, s6, s5
                  slti         s6, tp, 820
26:               sub          s4, s0, tp
                  beq          t3, t6, 45f
28:               ori          gp, s10, 1772
                  beq          t3, t1, 49f
                  sltu         t0, a3, s1
                  sll          s7, a1, tp
                  auipc        t0, 236774
                  or           t0, t0, s4
                  andi         a6, s10, -1670
                  lui          t3, 1045889
                  srai         t4, s8, 3
                  or           s2, a2, t0
                  or           a7, s3, zero
                  srai         s6, tp, 27
                  beq          a3, s4, 41f
41:               sra          a4, s10, t3
                  sll          s10, t6, ra
                  slli         a0, zero, 22
                  and          zero, a0, a5
45:               ori          a7, s3, 1836
                  xor          a6, a0, s3
                  bne          t1, gp, 48f
48:               ori          s6, t5, 1777
49:               auipc        s10, 374987
                  srli         a4, s1, 15
                  beq          s3, a1, 69f
                  nop
                  nop
                  bgeu         zero, t3, 72f
                  sub          a5, a7, s5
                  srai         s8, s8, 27
                  bne          t6, s6, 74f
                  or           t4, s7, t0
                  bgeu         s5, t5, 69f
                  slt          s9, s9, a3
                  or           a7, a5, a5
                  bltu         s6, s11, 66f
                  sra          s0, s4, s10
                  sltiu        s9, t3, 648
                  blt          s7, gp, 77f
66:               sll          a4, s1, a3
                  bltu         t5, tp, 84f
                  srli         s0, s3, 6
69:               srli         s1, sp, 7
                  blt          a3, s4, 84f
                  xor          a1, ra, t3
72:               nop
                  sra          ra, s0, ra
74:               srli         a5, gp, 24
                  auipc        s6, 564190
                  xori         t2, a4, -96
77:               auipc        ra, 730519
                  auipc        a5, 924757
                  sltu         s1, gp, t3
                  andi         gp, t2, 424
                  xor          a3, ra, s2
                  bgeu         s4, s2, 92f
                  andi         t5, t5, 299
84:               ori          s2, t1, 43
                  add          s2, ra, s1
                  xor          s7, t6, s11
                  bge          t6, t0, 92f
                  ori          ra, s10, 171
                  slti         t4, tp, -818
                  auipc        a2, 1048164
                  andi         t0, t6, -276
92:               nop
                  sll          gp, s3, s8
                  lw           a1, 4(s3)
                  add          s11, a0, t1
                  xor          t3, a0, a2
                  addi         s3, s3, 8
                  lui          t6, 259055
                  srai         t0, s6, 16
139:              addi x4, x11, 0
139:              jalr x4, x4, 0
sub_2:            xori         a0, sp, -1256
                  bltu         a6, s6, sub_2_stack_p
                  or           t3, ra, t0
                  srai         s4, t5, 14
                  ori          t3, a1, -1167
                  sltu         s9, t1, s1
sub_2_stack_p:    addi         s3, s3, -12
                  sw           a1, 4(s3)
                  andi         tp, s7, -692
                  sltu         a7, s4, a3
                  and          a7, t3, t0
                  slti         t3, s5, 1580
                  addi         a3, s1, 1813
                  ori          s6, s6, -1158
                  slli         a0, s1, 4
                  srai         sp, s0, 27
                  and          s11, s1, a6
                  sra          s1, t3, t0
                  srl          s1, t4, a0
sub_2_j4:         jal          a1, sub_4 #jump sub_2 -> sub_4
                  la           t3, sub_3
                  xori         a1, a0, 1483
                  sub          a4, s7, a4
                  nop
                  addi         s9, a3, 1735
                  auipc        s6, 985731
                  addi         t3, t3, -45
                  bge          t5, t3, sub_2_j5 #branch to jump instr
                  sub          t0, t3, s1
sub_2_j5:         jalr         a1, t3, 46 #jump sub_2 -> sub_3
                  add          s7, s7, a7
                  sra          a4, a6, a0
                  addi         s0, t1, -276
                  ori          a1, tp, 49
                  sltiu        a2, a3, 1851
                  sll          a7, a7, a6
                  add          s8, t1, a5
                  andi         s4, sp, 50
sub_2_j6:         jal          a1, sub_5 #jump sub_2 -> sub_5
                  ori          a1, t4, -403
                  sra          s11, a0, t6
                  srli         t3, s8, 17
                  la           s9, sub_5
                  sll          s7, t2, t1
                  add          s0, s10, a3
                  addi         s8, t6, 739
                  srl          s10, t2, zero
                  addi         s9, s9, 863
                  andi         t2, tp, 1282
sub_2_j7:         jalr         a1, s9, -863 #jump sub_2 -> sub_5
                  addi         sp, zero, -8 #init loop 1 counter
                  andi         gp, tp, -1420
                  auipc        gp, 274493
                  andi         s1, t0, -1702
                  andi         tp, t1, 963
                  addi         a1, zero, -12 #init loop 1 limit
sub_2_1_1_t:      add          t3, t5, t2
                  sra          gp, s1, a2
                  addi         sp, sp, -5 #update loop 1 counter
                  nop
                  addi         t5, zero, 7 #init loop 0 counter
                  or           s1, tp, s3
                  auipc        t6, 105082
                  andi         s2, s4, -681
                  sra          a7, a7, s9
                  srl          t2, a4, t1
                  slti         t6, sp, 277
                  sltiu        a4, s4, -319
                  srl          t2, t6, t2
                  addi         t0, zero, 5 #init loop 0 limit
                  sll          t2, t0, a3
sub_2_1_0_t:      slt          s2, a4, s2
                  addi         t5, t5, -4 #update loop 0 counter
                  bgeu         t5, t0, sub_2_1_0_t #branch for loop 0
                  srl          a5, t0, a4
                  addi         t3, a6, 16
                  srli         a5, t2, 29
                  bge          sp, a1, sub_2_1_1_t #branch for loop 1
                  lui          a7, 164256
                  addi         s10, zero, 7 #init loop 1 counter
                  addi         s11, zero, 6 #init loop 1 limit
sub_2_0_1_t:      ori          t0, t1, 875
                  addi         s10, s10, -5 #update loop 1 counter
                  addi         a5, zero, -10 #init loop 0 counter
                  sll          t6, a4, t0
                  addi         gp, zero, -15 #init loop 0 limit
sub_2_0_0_t:      sltiu        t2, t5, -821
                  slli         t0, a0, 29
                  or           t5, s4, s4
                  addi         a5, a5, -1 #update loop 0 counter
                  beq          a5, gp, sub_2_0_0_t #branch for loop 0
                  bgeu         s10, s11, sub_2_0_1_t #branch for loop 1
                  sra          s1, t5, s7
                  addi         gp, zero, -9 #init loop 1 counter
                  slt          a3, s0, s2
                  auipc        a3, 205547
                  lui          ra, 761597
                  addi         t6, zero, 3 #init loop 1 limit
sub_2_3_1_t:      xori         s4, s3, -519
                  addi         gp, gp, 4 #update loop 1 counter
                  slt          a5, t0, s10
                  addi         s10, zero, 1 #init loop 0 counter
                  srli         a5, tp, 24
                  addi         t5, zero, 12 #init loop 0 limit
                  sra          a2, a5, s9
sub_2_3_0_t:      sltu         s1, zero, t2
                  slli         s6, s6, 26
                  slli         a0, t6, 26
                  slti         a5, t1, 578
                  add          sp, a6, a1
                  addi         s10, s10, 6 #update loop 0 counter
                  srli         sp, a7, 15
                  add          tp, a6, s6
                  lui          s8, 211252
                  xori         s6, s8, -677
                  blt          s10, t5, sub_2_3_0_t #branch for loop 0
                  slt          a3, a3, s8
                  or           ra, a2, a2
                  xor          s4, t2, tp
                  bltu         gp, t6, sub_2_3_1_t #branch for loop 1
                  lui          s4, 472880
                  addi         t2, zero, 3 #init loop 0 counter
                  xori         t0, s1, -58
                  addi         s4, zero, 10 #init loop 0 limit
                  sra          s10, a1, t4
                  srli         tp, a2, 10
sub_2_2_0_t:      andi         s0, t4, -756
                  addi         t2, t2, 7 #update loop 0 counter
                  sub          t3, a5, s1
                  beq          t2, s4, sub_2_2_0_t #branch for loop 0
                  sltiu        a1, s9, -818
                  slt          t4, t5, s11
                  srli         s4, t0, 21
                  and          a5, t6, s6
                  slti         t4, s2, -1113
                  sltu         t5, s6, gp
                  xori         s9, s10, -1045
                  sltu         t3, a1, s6
                  lui          t5, 668222
                  sub          tp, a1, a0
                  add          a1, t5, t0
                  sll          s7, zero, t5
                  srai         s11, t2, 7
                  xori         t2, s10, 442
                  or           s7, s3, s11
                  ori          s10, t1, -115
                  bge          zero, s5, 28f
                  bge          t2, a0, 17f
17:               xor          a6, a6, gp
                  srai         a3, a0, 5
                  addi         t5, a4, -1458
                  xor          s11, s1, s9
                  xor          s8, a6, sp
                  slt          s6, s1, a7
                  xori         a7, a2, -1851
                  sltiu        s2, ra, 859
                  or           s2, s0, zero
                  bne          a0, t1, 31f
                  andi         a3, a4, -1123
28:               srl          sp, s1, s6
                  blt          a3, s10, 48f
                  add          s1, s1, a3
31:               bne          s10, s0, 33f
                  xor          a0, tp, s11
33:               auipc        a1, 128532
                  sub          ra, s11, t4
                  srli         t2, ra, 14
                  sltiu        gp, t2, 872
                  sra          sp, a1, s0
                  srli         t5, t0, 12
                  slt          t2, tp, s10
                  sra          ra, s11, t2
                  beq          zero, t0, 58f
                  srli         t2, a4, 25
                  bne          s8, s0, 47f
                  sltiu        s0, a2, -901
                  xor          sp, gp, a5
                  slt          t4, gp, ra
47:               beq          gp, s8, 52f
48:               and          a3, s1, a7
                  sltu         a7, a1, s5
                  beq          a3, s9, 65f
                  bne          t1, a6, 63f
52:               nop
                  bge          a2, a6, 65f
                  bgeu         t5, sp, 66f
                  blt          s8, s10, 70f
                  sll          s7, a2, tp
                  beq          t0, a6, 69f
58:               srai         t2, s11, 30
                  bne          a3, t3, 65f
                  sra          t5, s3, s3
                  and          a1, t3, s5
                  bge          sp, ra, 71f
63:               xor          t6, t1, t4
                  addi         s6, a4, 1000
65:               xori         s1, a2, 1339
66:               sra          s1, a3, t6
                  bltu         t1, a4, 84f
                  andi         t3, t1, 1582
69:               slli         t6, s11, 13
70:               slli         t0, a7, 5
71:               andi         s2, s5, -1002
                  add          s0, t4, t2
                  bltu         t6, gp, 80f
                  sll          s6, t5, s7
                  or           a1, a7, a3
                  bltu         s3, tp, 95f
                  sub          a2, s9, s9
                  xor          t4, s3, tp
                  lui          ra, 162450
80:               xor          a5, a5, zero
                  blt          ra, a6, 101f
                  slt          a3, t6, a0
                  sltiu        a3, a7, -950
84:               bge          s10, s2, 95f
                  bne          ra, t4, 101f
                  nop
                  srl          s7, a1, a7
                  slli         tp, s2, 24
                  beq          s6, zero, 90f
90:               srai         s4, s3, 26
                  xor          s11, a7, a3
                  bne          a5, s11, 97f
                  slt          a6, s1, s11
                  sltiu        sp, gp, 1584
95:               sll          t3, t0, t0
                  srai         t2, a4, 20
97:               slti         t4, s7, 838
                  bgeu         s4, s8, 117f
                  slti         s6, t2, -1008
                  or           t6, s7, t4
101:              slli         a7, a3, 11
                  or           s1, s9, s4
                  bge          a3, s10, 110f
                  bge          s8, a2, 108f
                  nop
                  and          s4, a0, t5
                  sll          t4, a0, s6
108:              sltiu        t6, a1, 671
                  and          a1, a5, s8
110:              auipc        a2, 934735
                  or           s9, s5, t4
                  lui          s7, 314198
                  xor          sp, s3, a3
                  sltiu        a5, s11, -194
                  sub          t6, a1, zero
                  blt          t3, a4, 134f
117:              beq          a1, s3, 131f
                  lui          a5, 852667
                  or           s4, t4, a7
                  or           s4, s2, s2
                  andi         s4, s8, -810
                  srli         tp, s1, 20
                  srli         a4, a7, 4
                  andi         sp, t5, 1571
                  blt          a5, sp, 131f
                  slti         zero, s1, -1710
                  srli         s2, s7, 25
                  xor          s9, a3, t4
                  nop
                  srli         a3, s6, 20
131:              sll          t6, s1, s11
                  bge          a5, a7, 144f
                  xor          a2, t1, s1
134:              addi         t5, sp, -128
                  srl          a0, gp, s1
                  bgeu         a4, s2, 154f
                  srl          t6, s10, a2
                  bge          a0, s6, 143f
                  and          tp, ra, t2
                  bge          zero, s9, 141f
141:              sltiu        a5, a1, -916
                  andi         sp, s4, 896
143:              srli         a5, s11, 29
144:              slti         s2, s6, 342
                  andi         t2, t0, 932
                  beq          tp, tp, 152f
                  nop
                  slti         s7, t3, -426
                  bgeu         a6, t5, 154f
                  xori         sp, t1, -216
                  beq          a4, s5, 163f
152:              beq          s7, tp, 164f
                  slti         s8, t4, -1612
154:              bne          s8, tp, 174f
                  or           s9, sp, a4
                  sll          tp, s4, a6
                  bne          t1, s10, 159f
                  srai         a3, a2, 2
159:              ori          s11, s7, 1894
                  addi         sp, a3, 1170
                  lui          t4, 840273
                  xori         s9, t4, 553
163:              beq          t3, s5, 177f
164:              slti         s7, s6, -876
                  bgeu         a2, t5, 180f
                  ori          t4, t6, -1074
                  slli         s8, t0, 31
                  sltiu        t4, s10, -402
                  xor          s11, t1, s4
                  srai         a4, s1, 25
                  lui          s4, 314188
                  srli         s10, t5, 23
                  srai         a5, t3, 13
174:              blt          ra, s11, 191f
                  slti         s0, ra, -1253
                  add          t6, s2, sp
177:              xori         t0, s11, -567
                  sll          a4, t5, ra
                  slt          a5, a3, gp
180:              beq          t0, s9, 199f
                  sra          a5, s9, s9
                  add          s8, s1, t1
                  xor          a6, t1, s2
                  or           s9, t2, s6
                  srai         a1, a3, 9
                  xor          s10, gp, zero
                  sltu         a6, s9, t0
                  srli         sp, t0, 12
                  srli         a0, t0, 6
                  bge          t0, t6, 199f
191:              bge          s2, t3, 196f
                  slli         t5, t0, 11
                  andi         s2, a7, 991
                  slli         s7, a2, 12
                  bltu         t3, a5, 202f
196:              beq          s10, a7, 202f
                  bne          t5, a2, 201f
                  andi         a7, s6, 685
199:              ori          s2, a3, 1590
                  or           a4, t3, t1
201:              add          a3, a2, ra
202:              and          t4, zero, s4
                  andi         t2, s7, 1236
                  and          a0, s0, s3
                  slt          s1, s7, s6
                  lw           a1, 4(s3)
                  addi         s3, s3, 12
                  sll          t5, t0, t6
340:              addi x31, x11, 0
340:              jalr x31, x31, 0
sub_5:            blt          s10, a4, sub_5_stack_p
                  sra          t2, a3, sp
                  auipc        t4, 379109
                  sra          sp, t4, t3
sub_5_stack_p:    addi         s3, s3, -44
                  slt          s6, gp, t5
                  andi         t2, t4, -616
                  sw           a1, 4(s3)
                  add          s2, a2, tp
                  srai         ra, zero, 15
                  addi         t2, zero, 10 #init loop 0 counter
                  srli         s8, t2, 8
                  sltiu        a3, s5, -626
                  auipc        s4, 133721
                  ori          t0, a4, 1933
                  srli         t4, s6, 19
                  ori          s10, s0, 1745
                  srai         s2, s4, 14
                  add          zero, s5, s6
                  sub          zero, tp, a2
                  sll          s8, t0, a0
                  slti         t0, t1, -1598
                  or           s11, a0, a5
                  andi         t6, s1, 962
                  srl          gp, a4, a6
                  sub          ra, s0, s5
                  nop
                  addi         a4, zero, 7 #init loop 0 limit
sub_5_0_0_t:      slt          a2, a2, ra
                  sll          sp, gp, a7
                  or           s11, s11, t2
                  or           s4, s0, a2
                  sltu         t6, a2, a0
                  slli         t4, t2, 14
                  srl          a1, tp, t4
                  addi         t2, t2, -6 #update loop 0 counter
                  auipc        gp, 444286
                  bgeu         t2, a4, sub_5_0_0_t #branch for loop 0
                  or           a2, s0, s3
                  addi         s10, zero, 1 #init loop 0 counter
                  add          s9, tp, a1
                  addi         a3, zero, -3 #init loop 0 limit
                  xori         a2, t0, -1269
                  sll          s7, s8, s0
                  srai         a1, s2, 6
                  andi         tp, t3, -1793
sub_5_2_0_t:      sltu         sp, gp, tp
                  or           s0, zero, s11
                  addi         s10, s10, -9 #update loop 0 counter
                  andi         s9, a6, 1732
                  xori         zero, a7, -1982
                  sltu         s1, a1, s7
                  srl          s4, a7, s4
                  slli         s4, t2, 31
                  ori          zero, s9, 484
                  nop
                  bge          s10, a3, sub_5_2_0_t #branch for loop 0
                  add          t2, s8, a2
                  addi         t5, zero, -9 #init loop 0 counter
                  slti         a2, t1, 848
                  addi         s7, zero, 11 #init loop 0 limit
                  srli         s2, sp, 23
sub_5_13_0_t:     auipc        t0, 457916
                  addi         t5, t5, 10 #update loop 0 counter
                  add          t2, s8, s10
                  bne          t5, s7, sub_5_13_0_t #branch for loop 0
                  xori         t4, s1, -1114
                  addi         a4, zero, 10 #init loop 0 counter
                  lui          ra, 41788
                  slt          s4, s5, s11
                  addi         s2, zero, 15 #init loop 0 limit
                  slli         s10, t2, 2
sub_5_15_0_t:     ori          tp, a0, -40
                  sra          t0, a5, s0
                  slli         a0, t1, 9
                  addi         a4, a4, 3 #update loop 0 counter
                  ori          t0, ra, 486
                  srl          sp, s3, a4
                  nop
                  bltu         a4, s2, sub_5_15_0_t #branch for loop 0
                  nop
                  addi         a3, zero, 9 #init loop 0 counter
                  add          s7, s2, ra
                  srli         a2, s10, 30
                  srli         t2, a6, 18
                  addi         s4, zero, -7 #init loop 0 limit
                  srai         sp, s3, 27
                  addi         a2, s4, -473
                  addi         s6, s5, 326
sub_5_14_0_t:     and          s2, s2, s9
                  srl          a1, t1, sp
                  auipc        s10, 696439
                  slti         t4, a5, -234
                  sra          t3, s0, tp
                  addi         t4, a4, -827
                  add          a6, a2, s5
                  slt          t6, sp, t1
                  addi         a3, a3, -8 #update loop 0 counter
                  bne          a3, s4, sub_5_14_0_t #branch for loop 0
                  sll          s11, tp, a7
                  addi         s10, zero, 1 #init loop 0 counter
                  srai         a2, a2, 8
                  addi         t4, a5, -913
                  add          a3, a7, zero
                  sra          s0, t4, tp
                  add          tp, s1, t6
                  xori         zero, ra, -736
                  addi         a3, tp, 654
                  addi         s9, zero, 20 #init loop 0 limit
                  srai         zero, t3, 30
sub_5_11_0_t:     ori          a4, s8, 866
                  addi         s10, s10, 10 #update loop 0 counter
                  srli         a7, a0, 17
                  xori         a7, a2, -1617
                  sltu         a0, t2, s2
                  xor          tp, a5, a5
                  ori          s2, a2, 407
                  slt          a6, a1, tp
                  blt          s10, s9, sub_5_11_0_t #branch for loop 0
                  and          s1, s1, t3
                  addi         gp, zero, 9 #init loop 1 counter
                  sltu         a3, s8, s0
                  sltu         t6, t3, s0
                  addi         s1, zero, 9 #init loop 1 limit
sub_5_6_1_t:      slti         s0, s4, -681
                  srl          tp, a2, t3
                  srl          s6, t2, t3
                  addi         gp, gp, -5 #update loop 1 counter
                  sltu         s7, a5, a3
                  add          s10, a5, s2
                  addi         a4, zero, -10 #init loop 0 counter
                  sltiu        s2, a5, 282
                  andi         s11, a5, -1161
                  addi         a6, zero, 11 #init loop 0 limit
                  sll          s8, gp, s9
sub_5_6_0_t:      add          s8, s0, s9
                  srli         a7, a6, 16
                  nop
                  andi         a7, t0, -740
                  add          s0, a1, zero
                  slli         t4, a1, 28
                  lui          a1, 708529
                  sll          s7, t0, t4
                  addi         a4, a4, 7 #update loop 0 counter
                  slt          t0, t2, a7
                  bltu         a4, a6, sub_5_6_0_t #branch for loop 0
                  auipc        s4, 29079
                  or           t6, s1, t6
                  sra          s11, s1, t0
                  xor          s4, a0, t1
                  addi         a2, gp, -120
                  nop
                  slt          a2, t5, gp
                  bgeu         gp, s1, sub_5_6_1_t #branch for loop 1
                  sub          a2, s6, s10
                  addi         a6, zero, 1 #init loop 0 counter
                  ori          s6, a4, 534
                  srli         s8, s10, 3
                  slt          s2, s7, t6
                  addi         t2, zero, 15 #init loop 0 limit
                  srai         a7, t3, 2
                  andi         sp, gp, 1567
                  srl          s6, t6, t2
                  or           a0, t1, s9
                  slti         s2, s4, 347
sub_5_10_0_t:     and          a7, s5, t2
                  lui          s7, 411833
                  andi         s0, s8, 832
                  srli         zero, s8, 25
                  sltiu        gp, s7, 462
                  xor          s1, tp, tp
                  sra          ra, s7, t0
                  slli         t3, t5, 16
                  slt          s10, t0, a5
                  addi         a6, a6, 1 #update loop 0 counter
                  srai         s11, s1, 22
                  ori          t0, s2, 1445
                  bltu         a6, t2, sub_5_10_0_t #branch for loop 0
                  sra          ra, sp, t2
                  addi         a3, zero, 1 #init loop 0 counter
                  addi         s8, zero, 2 #init loop 0 limit
                  auipc        a7, 841928
sub_5_1_0_t:      auipc        tp, 27751
                  addi         a3, a3, 3 #update loop 0 counter
                  blt          a3, s8, sub_5_1_0_t #branch for loop 0
                  and          s4, s4, t3
                  addi         t4, zero, -3 #init loop 0 counter
                  addi         t5, s7, -1394
                  addi         a5, zero, 18 #init loop 0 limit
                  slli         s6, s5, 8
                  add          a2, a4, t4
sub_5_4_0_t:      sub          s2, a1, t2
                  addi         t4, t4, 4 #update loop 0 counter
                  xor          zero, t3, a5
                  bltu         t4, a5, sub_5_4_0_t #branch for loop 0
                  ori          t3, s3, 1800
                  addi         a1, zero, 10 #init loop 0 counter
                  xori         a5, a2, -1834
                  slli         t2, s3, 15
                  ori          s4, s3, 327
                  addi         s8, zero, 11 #init loop 0 limit
sub_5_5_0_t:      ori          s6, a3, 792
                  xor          s7, t6, ra
                  addi         a1, a1, 5 #update loop 0 counter
                  sltiu        zero, s4, 619
                  blt          a1, s8, sub_5_5_0_t #branch for loop 0
                  add          a0, t2, s11
                  addi         s4, zero, 10 #init loop 1 counter
                  sltiu        zero, a4, -753
                  addi         a5, zero, 17 #init loop 1 limit
                  sra          t2, s2, gp
                  xor          zero, s0, s3
                  sub          tp, a6, s8
sub_5_9_1_t:      sltu         gp, s1, s5
                  sltu         s10, a1, a4
                  sltu         sp, a6, zero
                  addi         s4, s4, 1 #update loop 1 counter
                  sll          t2, s4, a0
                  addi         s0, zero, -7 #init loop 0 counter
                  addi         t6, zero, 1 #init loop 0 limit
                  sltu         s9, a0, s4
                  add          sp, t3, s3
sub_5_9_0_t:      sltiu        a4, a5, -784
                  and          gp, s3, s2
                  and          a0, s9, t2
                  addi         s0, s0, 8 #update loop 0 counter
                  or           gp, s10, t1
                  sra          sp, a3, t2
                  beq          s0, t6, sub_5_9_0_t #branch for loop 0
                  auipc        s11, 951455
                  beq          s4, a5, sub_5_9_1_t #branch for loop 1
                  slti         t2, a6, 76
                  addi         gp, zero, -2 #init loop 0 counter
                  srli         a4, s4, 27
                  addi         a0, zero, 2 #init loop 0 limit
                  addi         s2, s10, 1790
                  xori         a3, ra, 1731
                  srai         s4, a2, 8
                  and          s9, s7, s11
                  srai         zero, ra, 29
                  add          s0, t4, t3
                  or           s1, a3, s6
                  sll          a4, t4, t5
                  sltu         s1, s10, zero
                  or           s4, a2, s3
                  slli         s1, a6, 15
sub_5_3_0_t:      xor          t4, s3, t5
                  and          a4, t2, a3
                  sltu         s9, t6, zero
                  addi         a7, t3, 1230
                  xor          t4, gp, tp
                  xori         a2, ra, 912
                  sltiu        s1, sp, -1159
                  slt          tp, s6, s1
                  andi         s11, s7, 189
                  addi         gp, gp, 6 #update loop 0 counter
                  ori          t0, t5, 1840
                  sll          s8, s2, s4
                  lui          s11, 485379
                  bltu         gp, a0, sub_5_3_0_t #branch for loop 0
                  addi         s10, a0, 600
                  addi         s7, zero, 10 #init loop 0 counter
                  slti         t4, a2, 395
                  and          s11, tp, s9
                  sra          s9, t0, t4
                  sub          gp, s7, tp
                  slli         a3, s9, 31
                  addi         a4, zero, -2 #init loop 0 limit
                  slli         a5, tp, 29
                  nop
sub_5_12_0_t:     slt          s2, s1, s1
                  srl          a6, a0, t0
                  addi         s7, s7, -7 #update loop 0 counter
                  or           tp, t2, t5
                  srl          zero, a6, s6
                  sub          a6, t3, s0
                  andi         s8, a2, -1980
                  sltu         sp, ra, s6
                  xori         ra, a1, 932
                  sll          ra, s5, t2
                  xori         s0, a7, -1458
                  ori          a0, s9, 1722
                  slti         s8, a7, -512
                  xori         a6, s1, -594
                  add          a2, s9, sp
                  bge          s7, a4, sub_5_12_0_t #branch for loop 0
                  srai         a1, t0, 6
                  addi         t6, zero, -3 #init loop 1 counter
                  addi         s10, zero, 9 #init loop 1 limit
                  and          gp, t2, s11
                  srai         ra, a5, 25
                  sra          s11, zero, t0
sub_5_16_1_t:     addi         t5, a1, 1408
                  addi         t6, t6, 6 #update loop 1 counter
                  sll          s6, t1, a2
                  addi         s7, zero, -5 #init loop 0 counter
                  srai         t0, a2, 29
                  addi         t2, zero, 5 #init loop 0 limit
                  add          s9, a5, a5
                  addi         s4, t2, -592
                  lui          a0, 469520
                  srli         ra, a4, 6
                  srai         a7, a5, 10
                  sltiu        t0, a7, 138
sub_5_16_0_t:     andi         s2, t6, -1843
                  addi         a3, zero, -1295
                  sll          sp, s5, a2
                  addi         s7, s7, 10 #update loop 0 counter
                  lui          a6, 597296
                  srai         s9, s7, 18
                  beq          s7, t2, sub_5_16_0_t #branch for loop 0
                  sub          s0, s9, s7
                  or           a2, s8, s7
                  slli         a0, t1, 8
                  beq          t6, s10, sub_5_16_1_t #branch for loop 1
                  sltiu        s8, a7, 420
                  xor          t2, ra, s5
                  sltu         s9, a6, a2
                  or           t2, t5, t2
                  beq          a6, t2, 6f
                  sll          s11, s0, t1
                  slt          s8, s11, s5
6:                bge          s11, s5, 19f
                  ori          a2, a5, 574
                  addi         s4, gp, -730
                  add          t5, a5, t2
                  slli         a0, a7, 24
                  srai         a3, gp, 18
                  slt          sp, sp, s3
                  xor          a3, s7, a0
                  bgeu         t0, gp, 31f
                  andi         s9, s1, 93
                  ori          s8, ra, -537
                  bgeu         s11, t0, 26f
                  sra          s1, s11, s9
19:               sll          zero, s2, zero
                  slt          s6, t3, s5
                  lui          s4, 747092
                  sub          a5, gp, a0
                  ori          t6, a5, 1113
                  sub          sp, t4, a5
                  sltiu        t0, t4, 299
26:               srl          sp, s11, a0
                  slt          a0, a6, s2
                  blt          a7, a6, 30f
                  sra          s2, s1, gp
30:               nop
31:               sra          t2, a4, s1
                  sltu         gp, sp, t1
                  sll          t6, s2, s8
                  xori         sp, t1, 583
                  sltu         s1, a4, t3
                  sub          t4, s10, s10
                  andi         a4, a1, -1417
                  bne          tp, tp, 56f
                  srl          t6, a4, s9
                  srli         a5, t5, 0
                  srai         s11, s2, 24
                  slt          s0, a7, a1
                  sltu         tp, t4, a7
                  or           zero, t3, s2
                  beq          s7, a1, 53f
                  sra          a1, s8, s4
                  sll          a5, sp, a5
                  andi         a4, tp, 1475
                  bltu         s5, t1, 56f
                  sll          s0, s9, s3
                  bgeu         a4, a3, 64f
                  slt          s9, a7, a2
53:               slli         t5, s8, 29
                  auipc        a2, 399483
                  lui          a2, 56822
56:               sub          t2, t4, s4
                  bge          a2, s8, 64f
                  sll          a6, t6, s1
                  srai         s8, s5, 31
                  sltiu        zero, s0, -1408
                  bltu         sp, s4, 73f
                  slli         t5, a1, 11
                  srl          t3, s1, a4
64:               lui          s8, 780491
                  sll          s1, a3, t6
                  slt          zero, t4, s10
                  add          ra, s3, s3
                  srai         a3, a0, 11
                  addi         s7, s11, 1658
                  or           a6, a0, sp
                  sll          s11, s3, s3
                  addi         tp, s10, -1902
73:               blt          a4, t3, 80f
                  bgeu         zero, gp, 79f
                  sltiu        a3, t3, -476
                  bgeu         t6, t6, 94f
                  sra          s7, s0, t0
                  sra          s7, a0, tp
79:               slt          t0, a3, t5
80:               srl          s8, zero, a7
                  blt          t6, t2, 86f
                  nop
                  sltu         s7, s11, s8
                  beq          t2, t0, 94f
                  auipc        s7, 560991
86:               blt          s2, t2, 93f
                  sra          s6, s5, s9
                  ori          a7, a7, -1335
                  blt          ra, s4, 100f
                  slti         t2, s2, -1559
                  sra          t6, s1, s7
                  sll          s9, tp, t1
93:               lui          s4, 852150
94:               sltiu        s0, t4, 374
                  xor          sp, s6, s3
                  auipc        t3, 419311
                  sub          s4, s0, a4
                  bltu         s8, t6, 111f
                  beq          s8, s6, 106f
100:              bne          s9, s8, 117f
                  sll          a4, a5, t1
                  beq          s8, s7, 119f
                  srli         s11, a3, 30
                  slt          s4, gp, zero
                  bgeu         t2, a0, 124f
106:              srai         a0, s5, 14
                  or           a3, ra, a5
                  slli         tp, t5, 4
                  bge          a5, s8, 113f
                  and          a2, s2, t5
111:              sra          t0, s0, s9
                  blt          t5, s4, 131f
113:              bltu         a1, s8, 115f
                  sltiu        a7, tp, 989
115:              bge          t1, s0, 120f
                  slti         a7, a1, -2001
117:              sltu         sp, s7, t3
                  beq          s5, s5, 129f
119:              auipc        s11, 866128
120:              ori          a7, a3, 1697
                  andi         s11, s10, -1249
                  bgeu         a2, a6, 135f
                  slti         t3, s8, 1832
124:              srli         s8, s10, 11
                  lui          s0, 865894
                  sub          s7, ra, s9
                  xori         sp, t2, -195
                  sltiu        t6, s2, 217
129:              bltu         zero, a3, 130f
130:              slli         s2, s4, 6
131:              xori         s4, a5, -628
                  slli         s7, s4, 19
                  sltiu        a4, t6, 546
                  ori          s11, a7, -912
135:              bne          s8, t2, 142f
                  xori         gp, s7, -1335
                  sll          a5, a7, s5
                  lui          a7, 976247
                  sra          s10, s10, s2
                  sltu         t2, zero, a2
                  xori         t2, a1, -1625
142:              xor          t3, t5, ra
                  and          ra, ra, s0
                  and          a3, s5, s5
                  slt          a4, a4, a5
                  bgeu         gp, a1, 159f
                  and          gp, s4, t0
                  srli         s0, a5, 8
                  and          a1, t5, sp
                  sll          a2, t1, ra
                  srl          a1, sp, t1
                  bne          ra, gp, 156f
                  bge          a1, a0, 170f
                  and          s4, t4, t4
                  sub          t5, a0, s1
156:              sltu         s11, t0, s11
                  slti         a1, a5, -1646
                  srl          a5, a2, s8
159:              andi         s2, s7, 1409
                  bgeu         a3, s5, 169f
                  bne          t5, t3, 179f
                  addi         tp, a0, 1456
                  srli         t2, ra, 15
                  slli         t5, t4, 19
                  and          s4, sp, s6
                  bge          s2, s3, 183f
                  srl          s10, gp, s7
                  srl          a1, t4, a4
169:              blt          s2, t6, 187f
170:              andi         sp, t2, -1160
                  xori         a6, a7, -258
                  blt          a7, s7, 185f
                  ori          t4, s9, 592
                  xor          s1, s6, zero
                  andi         a6, tp, 353
                  srl          s1, t6, s9
                  auipc        t3, 783264
                  sltu         zero, t0, s2
179:              lui          t3, 971188
                  xor          t0, t4, s1
                  addi         s2, ra, 1667
                  sltiu        a5, gp, 946
183:              xori         gp, s0, 1568
                  slti         t3, a3, -326
185:              xori         gp, gp, -1991
                  bgeu         t0, s0, 205f
187:              sra          a4, t4, s1
                  bgeu         t1, s0, 193f
                  sub          tp, sp, t3
                  sltiu        t2, a5, -662
                  bltu         s4, a7, 198f
                  sltiu        s2, s10, -1567
193:              sltu         a0, t5, s1
                  srli         s4, sp, 30
                  blt          a3, a6, 196f
196:              blt          t3, a2, 204f
                  nop
198:              srai         a2, t1, 26
                  blt          a6, t6, 212f
                  bne          tp, s1, 203f
                  sll          s10, s7, zero
                  srai         a6, s11, 27
203:              srai         a6, a7, 24
204:              beq          a0, s11, 217f
205:              xori         a3, a2, 281
                  xori         s10, gp, -1021
                  bge          ra, ra, 217f
                  nop
                  sub          a2, t2, ra
                  beq          s3, t5, 215f
                  sll          s8, s5, zero
212:              xor          t2, s11, s0
                  sra          t6, s11, s2
                  slli         tp, a2, 12
215:              sra          t3, s5, a3
                  or           a3, t0, a0
217:              bne          t4, ra, 224f
                  beq          t4, t6, 235f
                  sub          s11, t0, s6
                  and          a6, s5, s3
                  add          t0, a4, t1
                  and          t5, s3, gp
                  andi         s10, t6, 1826
224:              slti         a5, ra, 1902
                  slti         zero, a4, -336
                  srai         s11, t5, 23
                  lui          ra, 484948
                  sll          s9, s1, s0
                  sltu         t2, t6, zero
                  srai         zero, t2, 9
                  slli         s9, a2, 31
                  slt          a6, s11, a5
                  nop
                  addi         s9, t0, -797
235:              srli         ra, s9, 5
                  slli         t3, t3, 0
                  beq          s7, a6, 242f
                  slli         a4, sp, 5
                  nop
                  slli         s11, t1, 8
                  blt          zero, ra, 252f
242:              slli         s2, gp, 19
                  bne          a1, s0, 255f
                  or           ra, t3, s6
                  ori          s8, zero, -273
                  slli         t0, t0, 12
                  bge          ra, s1, 249f
                  beq          a5, s1, 250f
249:              slli         s6, s3, 14
250:              andi         t3, t1, 2008
                  andi         s0, a7, 190
252:              beq          s7, s2, 263f
                  sub          gp, a3, s6
                  addi         zero, sp, 425
255:              bgeu         s9, t2, 274f
                  srli         t6, s4, 28
                  slti         s9, a4, -939
                  addi         a5, s11, 941
                  slt          s1, t6, a5
                  add          t4, t6, a6
                  andi         s6, a2, -2031
                  sltiu        a3, t4, -1719
263:              sltiu        a7, s2, 845
                  bltu         t3, t1, 271f
                  srli         tp, a3, 2
                  slli         t0, gp, 18
                  srl          sp, t1, s2
                  lui          s7, 197455
                  addi         s1, ra, -1785
                  xori         s6, s8, -1416
271:              sub          s1, t2, a5
                  nop
                  sra          a6, s9, s4
274:              nop
                  and          a4, tp, a1
                  ori          s6, s1, 698
                  sub          a2, t6, t2
                  srl          s6, s11, s7
                  slt          t6, t4, zero
                  xor          a1, tp, a2
                  lui          t6, 270647
                  blt          s4, s3, 289f
                  bltu         s6, s6, 292f
                  sub          t0, s6, s0
                  addi         tp, zero, 653
                  sltu         s10, gp, a5
                  xor          a5, s11, s11
                  bltu         s6, t1, 301f
289:              beq          s6, sp, 294f
                  sll          ra, s5, s9
                  slli         a0, s1, 30
292:              srl          gp, s10, gp
                  slti         s0, a7, 1287
294:              auipc        gp, 422434
                  srl          a6, t6, t2
                  bne          a0, t6, 313f
                  beq          a4, a0, 300f
                  andi         a4, a4, 317
                  srl          s9, t2, zero
300:              xori         s6, a5, 1724
301:              bltu         t6, t4, 302f
302:              slti         s4, tp, 1403
                  blt          a7, s1, 321f
                  or           t5, t4, t0
                  lui          s11, 222253
                  slti         s10, a7, 515
                  bne          a5, a6, 312f
                  sub          s9, s7, t5
                  sltiu        ra, s8, 1378
                  nop
                  bgeu         a7, s1, 324f
312:              or           s2, gp, s10
313:              addi         a0, a5, -927
                  beq          tp, s7, 331f
                  sltu         gp, t4, s0
                  sub          a4, t0, a1
                  bgeu         ra, s6, 330f
                  sltiu        tp, a2, 1596
                  sra          t6, s1, a1
                  bgeu         zero, s7, 330f
321:              bge          s3, t3, 326f
                  lui          t5, 864133
                  slt          s1, a1, t2
324:              and          a6, sp, a0
                  slti         a3, t5, -1839
326:              and          a3, a3, t2
                  srl          t0, gp, a0
                  auipc        s8, 1029585
                  sra          sp, a0, t1
330:              slt          s4, a4, sp
331:              srai         t4, a4, 29
                  srai         s11, s9, 12
                  sltiu        s0, t2, 145
                  blt          t3, s7, 345f
                  srl          gp, a4, s4
                  blt          a1, a2, 353f
                  addi         t5, t6, -171
                  blt          s1, s8, 340f
                  or           s1, s8, t1
340:              addi         s11, zero, -1782
                  sltu         a7, s5, s10
                  slti         a3, a3, 295
                  blt          a1, s4, 351f
                  slli         s11, t6, 9
345:              bge          s6, a3, 352f
                  and          s2, s3, s7
                  sub          s8, t1, t3
                  srli         t4, a2, 26
                  srli         s7, t6, 20
                  slti         t4, s3, 359
351:              blt          ra, t0, 358f
352:              xori         s1, s7, 1417
353:              addi         tp, a7, 236
                  xori         a4, t2, -1645
                  srai         t4, a2, 26
                  sra          a0, sp, ra
                  bltu         s8, ra, 361f
358:              bltu         s4, a6, 377f
                  auipc        a0, 474898
                  slt          ra, s10, a6
361:              srai         t6, s2, 19
                  srl          a4, gp, a3
                  lui          s8, 851624
                  blt          a5, s1, 371f
                  and          t6, a5, s6
                  sra          s4, a1, s5
                  xori         zero, s9, 995
                  blt          s10, s3, 370f
                  bgeu         s9, t4, 380f
370:              bne          s11, s2, 388f
371:              lui          s8, 945529
                  and          s1, a7, gp
                  xor          s9, t3, s0
                  auipc        s4, 459305
                  add          gp, t6, t3
                  bgeu         a4, t5, 383f
377:              slt          s4, s2, sp
                  andi         a4, a0, -1617
                  add          t6, t0, a7
380:              xori         s7, a4, 1851
                  sub          a0, s6, a7
                  nop
383:              slt          t4, s10, a4
                  slti         s6, t5, 808
                  add          s6, tp, ra
                  blt          sp, s9, 399f
                  sltiu        t3, t0, 814
388:              sltiu        s2, s0, 397
                  xor          zero, t4, t2
                  srai         s6, t0, 12
                  sra          ra, s0, t1
                  beq          t3, t5, 404f
                  bne          s6, s4, 412f
                  bgeu         t1, t4, 401f
                  beq          s6, t6, 404f
                  srl          s1, a0, ra
                  or           gp, s11, s6
                  srl          zero, t3, t6
399:              nop
                  slti         t0, s10, -690
401:              sltu         a0, a0, a3
                  slti         t2, t2, -1821
                  nop
404:              slti         s10, a3, -965
                  sltu         s1, s5, a0
                  srl          a5, s9, s7
                  or           s7, s6, ra
                  sra          a2, a6, a0
                  slt          s11, a2, s9
                  blt          s9, a4, 428f
                  or           t6, s11, gp
412:              xor          a2, tp, a0
                  andi         s9, s9, -1210
                  bltu         t6, s8, 427f
                  bltu         tp, s8, 419f
                  bge          s0, tp, 417f
417:              xor          t0, s3, t2
                  andi         t5, s2, -629
419:              sltiu        a7, a5, -125
                  beq          t2, t1, 427f
                  srai         a4, t4, 9
                  auipc        a2, 701697
                  slli         s7, zero, 1
                  bgeu         a2, t2, 442f
                  lui          ra, 556567
                  xori         zero, t2, -1705
427:              xor          a4, t5, a3
428:              sltu         sp, a5, a6
                  andi         t2, t1, 1994
                  srai         a2, s5, 10
                  srli         t0, s11, 7
                  bgeu         a7, s2, 437f
                  slti         s9, a6, 829
                  auipc        s10, 775923
                  lui          gp, 503832
                  xor          gp, ra, a1
437:              srl          s1, a7, s0
                  srai         a3, t1, 2
                  addi         t3, s8, -561
                  bgeu         s2, s11, 447f
                  bltu         t3, s7, 452f
442:              srli         s6, a7, 7
                  sub          s6, s11, s4
                  sltu         t2, t2, a6
                  auipc        a2, 980031
                  srl          s8, s10, sp
447:              bgeu         s9, a0, 455f
                  sub          s10, zero, s6
                  or           a6, a0, s6
                  or           tp, ra, s9
                  slli         s10, a2, 12
452:              add          ra, a4, s5
                  beq          a4, t3, 470f
                  slli         t3, a5, 14
455:              xor          s2, a3, t0
                  xor          gp, a4, a3
                  srl          a7, sp, gp
                  srli         s10, a2, 5
                  ori          ra, s1, 1781
                  lui          s9, 609282
                  or           s10, gp, s11
                  addi         a0, t4, -568
                  slt          a1, s10, t0
                  srai         a6, t0, 13
                  sub          s0, gp, gp
                  srai         s8, t6, 3
                  xor          s8, s5, s7
                  ori          zero, zero, 1170
                  auipc        t6, 352504
470:              bge          s1, tp, 473f
                  sltu         a4, s3, s9
                  addi         ra, zero, -6 #init loop 1 counter
                  srli         s11, s7, 17
                  addi         a0, zero, 1 #init loop 1 limit
                  slti         s10, t2, 113
sub_5_8_1_t:      auipc        t6, 892092
                  addi         ra, ra, 6 #update loop 1 counter
                  xor          zero, tp, a4
                  addi         gp, zero, 7 #init loop 0 counter
                  srl          a1, sp, gp
                  addi         t3, zero, -17 #init loop 0 limit
                  sltu         s11, ra, ra
sub_5_8_0_t:      xor          t2, t0, s3
                  sltiu        tp, t6, 195
                  addi         gp, gp, -8 #update loop 0 counter
                  xori         s8, a3, -727
                  bne          gp, t3, sub_5_8_0_t #branch for loop 0
                  xor          s1, a2, tp
                  slti         s9, s8, 1687
                  slt          s2, t0, zero
                  sub          a3, a1, t6
                  ori          s10, a6, -1241
                  ori          t0, a5, -515
                  slt          s8, a6, s10
                  bltu         ra, a0, sub_5_8_1_t #branch for loop 1
                  add          a4, a6, s3
                  bltu         s5, gp, 491f
473:              blt          s11, sp, 480f
                  beq          a6, a1, 479f
                  auipc        s10, 406937
                  sll          s10, t5, s11
                  bge          s11, s4, 494f
                  sll          zero, a2, t4
479:              auipc        s7, 474570
480:              blt          zero, zero, 493f
                  beq          t6, s6, 494f
                  bgeu         t2, s2, 494f
                  sltiu        s4, tp, -579
                  srli         zero, s11, 18
                  xori         a6, a2, -1046
                  addi         a5, zero, 5 #init loop 1 counter
                  or           a7, t1, a4
                  srl          a0, t4, t3
                  slli         sp, s8, 31
                  auipc        s6, 194868
                  sltu         s9, a6, t5
                  addi         t5, zero, -19 #init loop 1 limit
                  sltu         s1, a2, gp
sub_5_7_1_t:      nop
                  addi         s10, s4, 474
                  srai         t6, a7, 19
                  lui          s1, 83892
                  slt          a3, sp, a3
                  srai         s1, s10, 25
                  sll          t0, t2, a6
                  addi         a5, a5, -8 #update loop 1 counter
                  slt          ra, s10, s10
                  addi         a1, zero, 9 #init loop 0 counter
                  add          t2, sp, t6
                  auipc        t4, 403327
                  srl          a3, a0, tp
                  addi         t3, zero, 18 #init loop 0 limit
                  srli         s7, a3, 12
sub_5_7_0_t:      nop
                  xor          s6, s7, t2
                  addi         a1, a1, 9 #update loop 0 counter
                  beq          a1, t3, sub_5_7_0_t #branch for loop 0
                  sub          t4, a6, s10
                  xor          t6, s11, t6
                  ori          t4, s0, -1706
                  nop
                  beq          a5, t5, sub_5_7_1_t #branch for loop 1
                  sra          a4, t4, sp
                  srai         s2, a6, 29
                  srli         sp, t3, 3
                  sltiu        s2, s5, 1726
                  bltu         tp, s8, 500f
                  bgeu         a2, s10, 500f
491:              slt          t0, s6, gp
                  srl          t6, t1, a3
493:              lui          t4, 7134
494:              sra          s9, t6, s11
                  slli         sp, s0, 13
                  sltiu        a7, zero, -1778
                  addi         t4, a4, 433
                  bltu         s1, a6, 515f
                  slti         a2, gp, 1696
500:              srli         a1, s7, 24
                  srl          s10, s0, a1
                  nop
                  auipc        s8, 502778
                  bltu         t5, a2, 506f
                  xori         s1, s8, -915
506:              nop
                  add          s4, t1, t3
                  xor          a1, s3, a1
                  sltu         t3, t1, tp
                  and          tp, s11, sp
                  slli         a4, s8, 17
                  sub          sp, tp, s7
                  auipc        a7, 271147
                  xor          s7, s2, gp
515:              bltu         t3, s2, 534f
                  lui          a1, 506504
                  sra          a6, t5, t5
                  slti         s9, s7, -1444
                  slti         a4, zero, -1160
                  sub          s4, t1, a5
                  nop
                  bgeu         s3, a0, 527f
                  bgeu         sp, s7, 536f
                  slli         sp, sp, 15
                  bge          s8, sp, 532f
                  srli         a6, s11, 4
527:              bne          zero, s8, 534f
                  bltu         s4, gp, 530f
                  or           t2, sp, tp
530:              nop
                  beq          a1, s1, 538f
532:              srli         s11, gp, 18
                  and          ra, s3, t5
534:              or           a5, t3, gp
                  srl          s8, s3, t0
536:              blt          a2, t2, 543f
                  srai         s2, gp, 19
538:              andi         a6, a6, -1733
                  bgeu         t2, s10, 546f
                  beq          a1, a0, 559f
                  srli         t2, t4, 28
                  xor          ra, s4, tp
543:              xori         t3, s11, 1825
                  srai         s6, zero, 12
                  slti         s6, a6, 985
546:              andi         t4, a1, 1110
                  srai         a0, t0, 9
                  sltu         a0, t6, s1
                  bltu         a2, s7, 559f
                  sra          sp, sp, t3
                  blt          s11, a3, 555f
                  slli         gp, s11, 2
                  srli         ra, s9, 29
                  bltu         s2, s0, 557f
555:              lui          s8, 108705
                  nop
557:              sub          t4, t1, ra
                  add          t0, t1, t6
559:              and          a1, s11, s6
                  slli         a1, t4, 9
                  srl          s4, a4, gp
                  sra          t6, a2, a6
                  or           ra, s6, ra
                  srli         s7, s3, 10
                  and          s7, s1, t5
                  auipc        s6, 62539
                  xori         a0, a1, 682
                  andi         a0, t2, -271
                  or           t5, s4, a7
                  slli         t2, tp, 7
                  sub          zero, a1, t0
                  sltiu        gp, a1, 464
                  bge          ra, t6, 591f
                  bltu         s6, t6, 576f
                  xor          t4, sp, s1
576:              bgeu         sp, s2, 594f
                  srai         s10, tp, 23
                  slt          s9, s7, a3
                  slli         s8, t3, 16
                  addi         s9, t0, -1144
                  beq          ra, s8, 588f
                  auipc        t2, 620054
                  bne          s6, a1, 591f
                  beq          s3, t0, 585f
585:              add          s7, t3, s5
                  sltiu        s10, s10, -1751
                  beq          s9, s9, 592f
588:              addi         s8, t6, 219
                  sra          s6, a3, tp
                  ori          tp, t0, -181
591:              sltu         t5, s10, t2
592:              add          s7, s8, s0
                  blt          a4, s3, 598f
594:              srl          a5, t2, s7
                  slli         tp, zero, 22
                  slti         t3, t3, -884
                  slt          s0, t6, t6
598:              andi         a2, s11, 1247
                  srli         t5, s1, 21
                  sltiu        s11, a7, -27
                  sltu         gp, t2, gp
                  slt          a0, tp, t4
                  slti         t0, s4, 1377
                  sltiu        t2, a1, -166
                  sub          a7, sp, ra
                  ori          tp, a2, -1746
                  blt          s5, t5, 619f
                  andi         gp, s11, 1557
                  bgeu         s1, s4, 620f
                  slt          s8, t1, t0
                  nop
                  xori         ra, s6, 1891
                  slli         s2, s6, 0
                  sltu         s7, s4, s7
                  auipc        t3, 916328
                  bne          s5, a0, 633f
                  sltu         a4, s6, t3
                  nop
619:              slli         a2, s0, 24
620:              sra          a3, a3, t5
                  addi         sp, zero, -1397
                  slli         a3, s3, 3
                  add          s11, t6, a3
                  blt          s11, ra, 626f
                  ori          s8, a5, -226
626:              andi         t2, t0, -2021
                  blt          a6, s4, 644f
                  sltiu        s6, t4, 880
                  slli         a5, a7, 24
                  andi         a7, a2, 1147
                  bne          s6, t4, 640f
                  lui          s4, 696107
633:              andi         s2, t1, -1795
                  slti         a2, t1, 1848
                  slli         s4, tp, 27
                  ori          a4, s7, 859
                  bne          s11, s10, 650f
                  bltu         a3, a2, 655f
                  lui          a2, 826957
640:              blt          zero, s8, 645f
                  sltu         s9, a6, a5
                  bne          s0, s1, 649f
                  xori         s4, s11, -1945
644:              blt          t3, s6, 657f
645:              slli         tp, t5, 13
                  sltiu        s9, t1, -1554
                  lui          s8, 155599
                  bne          t2, t6, 661f
649:              beq          s10, t4, 668f
650:              addi         a5, a7, -1810
                  add          t6, tp, a0
                  or           t3, s6, s11
                  sub          a3, gp, s11
                  srl          s10, t3, t6
655:              ori          s8, t3, -1522
                  srl          s6, t0, s0
657:              and          t5, t4, t5
                  auipc        sp, 273872
                  add          s4, sp, a4
                  addi         sp, tp, 864
661:              sll          s0, t0, t2
                  or           s4, s9, a5
                  sub          a7, s7, ra
                  andi         s4, a5, 1769
                  blt          t1, sp, 676f
                  sll          t4, s10, ra
                  slli         t2, t4, 31
668:              bgeu         s5, t6, 681f
                  or           t2, tp, zero
                  auipc        t0, 289674
                  blt          a3, a2, 689f
                  xor          t2, s8, a4
                  srai         t5, s7, 31
                  srl          a7, s5, s4
                  auipc        sp, 982469
676:              srl          gp, s6, gp
                  add          a7, a3, s0
                  xori         a3, s1, -101
                  andi         s10, a4, -1926
                  srli         s6, s0, 31
681:              ori          s0, s1, 1083
                  lui          s2, 426877
                  add          t0, sp, a0
                  andi         t4, t3, -1517
                  bgeu         s10, s4, 692f
                  blt          t5, s6, 697f
                  xor          s8, t5, a7
                  slti         a0, sp, 90
689:              and          a0, gp, t5
                  xori         a1, a6, -1633
                  sub          a7, s10, s4
692:              or           s8, s8, a0
                  slti         zero, sp, -1268
                  and          sp, s11, s0
                  ori          s7, s5, 1670
                  sltu         s4, ra, s8
697:              sll          a2, s1, s4
                  slt          tp, s10, s8
                  bne          a1, a0, 716f
                  bgeu         t1, zero, 717f
                  beq          a5, a4, 714f
                  and          gp, s0, a5
                  slti         t6, sp, -1775
                  slt          a0, s8, t6
                  bgeu         s3, s4, 708f
                  srai         tp, s9, 18
                  bgeu         t2, t0, 724f
708:              sub          a6, tp, a6
                  bltu         t0, t1, 716f
                  bne          s4, a2, 719f
                  and          s7, tp, s3
                  sra          a5, s0, a7
                  sra          a2, s3, a4
714:              ori          t5, s3, -672
                  slli         s8, a5, 11
716:              auipc        s9, 234217
717:              andi         gp, s9, -1843
                  bge          tp, gp, 719f
719:              sltu         a2, s2, s8
                  addi         s4, a3, 68
                  blt          t4, s5, 723f
                  auipc        gp, 840800
723:              sub          a0, t1, s11
724:              bne          s9, gp, 742f
                  sub          s10, s11, gp
                  addi         a6, a3, -233
                  and          a0, t6, gp
                  lui          s8, 436738
                  sltiu        t2, ra, -1169
                  sll          s4, gp, ra
                  sll          t2, a3, s7
                  slti         s6, a3, 514
                  sra          t0, a6, t2
                  or           s8, t1, s5
                  sub          s0, ra, zero
                  srl          s8, a5, a6
                  addi         a7, s10, -305
                  or           a7, s4, a3
                  blt          a1, t4, 750f
                  sra          s10, gp, s6
                  slli         zero, s11, 11
742:              sltiu        s7, t3, -1731
                  add          s9, a4, t2
                  sltiu        sp, s7, 192
                  nop
                  sll          t4, a2, zero
                  sltiu        s1, s5, 1402
                  sltiu        sp, s3, -727
                  slli         s1, s10, 5
750:              lui          ra, 171961
                  xori         t0, t2, -796
                  sltiu        a5, ra, 119
                  beq          s2, tp, 760f
                  ori          t0, t2, 1210
                  sra          t2, t6, s1
                  bltu         a6, zero, 761f
                  bge          t6, gp, 769f
                  slti         t0, s1, -1363
                  ori          s8, tp, -1543
760:              beq          t4, s7, 779f
761:              sll          s6, t1, s5
                  bgeu         s5, t0, 766f
                  addi         s0, s0, -1957
                  sltu         tp, s4, t0
                  slt          s1, t3, s0
766:              or           s8, s11, t6
                  blt          a3, s4, 780f
                  srai         a1, s10, 13
769:              sra          s9, zero, s2
                  nop
                  sltu         s4, s10, t6
                  or           s4, a3, s2
                  bltu         t1, s3, 778f
                  addi         t2, a1, -1885
                  sltu         a7, a1, s0
                  srl          ra, sp, s0
                  ori          gp, ra, 1435
778:              beq          s1, t3, 780f
779:              xori         ra, s2, 1048
780:              auipc        t0, 413880
                  slt          a4, t1, s9
                  andi         t4, s7, -462
                  slti         s10, t5, 1305
                  slti         s9, zero, 1118
                  nop
                  xor          zero, zero, a5
                  sltiu        gp, zero, -274
                  sltiu        t5, t2, -625
                  andi         t6, ra, 291
                  nop
                  auipc        a2, 578758
                  srl          s11, s3, s10
                  andi         a3, s2, 1231
                  sltiu        s10, sp, 56
                  and          s8, t2, s6
                  srli         tp, t4, 17
                  srl          gp, s10, tp
                  lui          s0, 85916
                  sltu         a5, t5, s9
                  auipc        s2, 511709
                  slli         t2, a1, 11
                  sra          a3, s1, s6
                  xor          a0, t3, t6
                  sltu         tp, t1, s11
                  bne          s4, s11, 818f
                  srli         a2, t6, 19
                  bne          t6, t4, 814f
                  add          s1, t4, s11
                  bne          ra, a0, 822f
                  lui          t5, 263354
                  slt          t5, t6, a1
                  slti         t3, a1, 762
                  addi         a6, s0, -1025
814:              slli         t5, t1, 20
                  xor          a0, a5, ra
                  beq          s3, s5, 823f
                  srli         tp, a3, 30
818:              andi         t0, s6, -200
                  srl          ra, sp, s7
                  sltiu        tp, gp, -831
                  xor          t4, ra, s4
822:              auipc        s10, 835849
823:              sltu         t5, zero, t2
                  beq          t1, a6, 832f
                  blt          s2, t3, 844f
                  sltiu        a0, s3, -1138
                  andi         t2, t2, -844
                  or           a1, tp, t4
                  nop
                  and          t5, a3, a3
                  nop
832:              or           gp, s6, t0
                  sub          t2, t2, s0
                  andi         s11, tp, 384
                  sltiu        t3, tp, 1981
                  bgeu         s2, tp, 841f
                  srli         zero, t1, 24
                  lui          a0, 742858
                  nop
                  sra          a1, s5, a3
841:              lui          a6, 481886
                  xori         t6, a6, -1323
                  andi         a7, t1, 1470
844:              nop
                  lui          s2, 661987
                  srl          ra, t1, t4
                  sra          s4, t0, t0
                  slt          t0, t2, zero
                  or           zero, t3, a6
                  lui          t4, 483823
                  srai         t6, gp, 3
                  blt          t4, s8, 857f
                  slti         gp, s4, -49
                  bltu         s6, a4, 857f
                  srli         tp, gp, 5
                  slt          t2, a5, s11
857:              sltiu        s4, t1, 443
                  lw           a1, 4(s3)
                  sll          sp, s3, s9
                  slli         a2, zero, 0
                  or           a0, s5, a6
                  addi         s3, s3, 44
                  andi         tp, t5, -1645
                  add          a4, s8, t1
                  or           s0, s8, s6
                  srli         t0, zero, 16
1241:             addi x24, x11, 1
1241:             jalr x24, x24, 0
sub_4:            addi         s3, s3, -8
                  xor          a3, t4, a2
                  slt          a2, sp, t2
                  sltu         a4, s7, t2
                  sw           a1, 4(s3)
                  or           a6, s1, t3
                  slti         t6, t5, -787
                  auipc        t0, 446780
                  lui          t3, 544364
                  and          a3, s6, tp
                  slli         a2, a4, 16
                  addi         s0, zero, 8 #init loop 1 counter
                  addi         a7, zero, 13 #init loop 1 limit
                  slt          a1, a2, tp
sub_4_0_1_t:      nop
                  addi         s0, s0, 6 #update loop 1 counter
                  addi         t4, zero, 9 #init loop 0 counter
                  addi         s1, zero, 8 #init loop 0 limit
                  xor          t5, s3, zero
sub_4_0_0_t:      sltu         a6, t4, t1
                  addi         t4, t4, -5 #update loop 0 counter
                  bgeu         t4, s1, sub_4_0_0_t #branch for loop 0
                  sltu         s9, s6, t5
                  bltu         s0, a7, sub_4_0_1_t #branch for loop 1
                  sltiu        t2, gp, 1485
                  addi         t6, zero, 8 #init loop 1 counter
                  sub          s7, t6, gp
                  xori         a0, a0, 1462
                  addi         sp, zero, 14 #init loop 1 limit
                  sll          a6, t2, a2
                  xor          s4, a4, a6
sub_4_1_1_t:      ori          gp, a6, -866
                  slt          a3, s11, zero
                  or           t0, tp, s4
                  xor          tp, s7, s8
                  or           t0, a3, s6
                  addi         t6, t6, 3 #update loop 1 counter
                  xor          s9, a2, a1
                  addi         a3, s6, -210
                  addi         a5, zero, 0 #init loop 0 counter
                  xor          a1, a6, s6
                  andi         ra, a4, 1721
                  addi         s0, zero, 10 #init loop 0 limit
                  or           zero, t2, s5
                  or           s8, s6, s9
                  sra          s4, s9, a4
sub_4_1_0_t:      lui          t3, 639956
                  and          s7, s3, s6
                  addi         a5, a5, 10 #update loop 0 counter
                  lui          s2, 394431
                  bne          a5, s0, sub_4_1_0_t #branch for loop 0
                  nop
                  sra          t2, a0, a7
                  andi         s2, s1, 1780
                  sra          s8, gp, t3
                  bne          t6, sp, sub_4_1_1_t #branch for loop 1
                  sltu         a2, t4, s8
                  addi         a4, zero, -4 #init loop 1 counter
                  addi         s0, zero, -14 #init loop 1 limit
sub_4_2_1_t:      lui          s11, 791690
                  addi         a4, a4, -10 #update loop 1 counter
                  addi         gp, a7, 671
                  addi         s9, zero, 3 #init loop 0 counter
                  addi         t6, zero, -8 #init loop 0 limit
sub_4_2_0_t:      and          sp, t5, s1
                  addi         s9, s9, -10 #update loop 0 counter
                  nop
                  bge          s9, t6, sub_4_2_0_t #branch for loop 0
                  beq          a4, s0, sub_4_2_1_t #branch for loop 1
                  sltiu        a6, s5, 2013
                  slt          s10, a2, a6
                  sltu         t0, a1, t6
                  sll          s7, t4, t1
                  add          a6, t1, s9
                  sltu         a4, t1, a5
                  bgeu         a6, t3, 21f
                  andi         s4, s5, 1763
                  auipc        s8, 662409
                  srl          s1, t3, ra
                  slli         t6, a3, 29
                  auipc        zero, 474049
                  sltu         a7, s5, zero
                  xor          a7, s2, a1
                  addi         gp, a1, 401
                  sra          s11, s6, s5
                  slti         s1, s0, 1539
                  srl          t2, gp, s10
                  andi         s7, t3, 313
                  sll          s9, a4, a5
                  sll          s8, a3, s3
                  bltu         s8, tp, 40f
21:               srli         a7, t2, 14
                  bne          a1, tp, 36f
                  beq          a5, a4, 25f
                  sltiu        a3, t2, -1179
25:               andi         t0, t3, 886
                  auipc        s2, 785390
                  srai         t2, t4, 29
                  xor          s4, s4, ra
                  slli         t2, t2, 0
                  or           s7, s8, a5
                  slli         a0, tp, 0
                  sra          s7, s5, a0
                  sra          a6, a2, a5
                  sub          s8, t6, a4
                  and          t3, s9, a2
36:               xor          gp, s0, a5
                  or           t2, t2, a6
                  or           t6, t3, a0
                  sltiu        ra, a7, 119
40:               sltu         a0, t5, s8
                  srl          s6, s9, t0
                  nop
                  beq          t0, a0, 63f
                  andi         t0, t6, -1026
                  lui          a0, 675695
                  sll          t0, s1, s3
                  xori         a5, s0, -391
                  slt          s8, s11, s6
                  ori          s11, s1, 1265
                  sub          ra, ra, t1
                  bltu         s4, a5, 55f
                  srl          zero, s0, t2
                  sltu         a1, a6, s10
                  slli         sp, s2, 2
55:               or           ra, tp, a3
                  srai         a6, t5, 17
                  xori         tp, a6, -1729
                  sll          a7, a5, gp
                  slli         s0, a4, 27
                  bgeu         t3, a5, 80f
                  slti         zero, t2, -1591
                  ori          t4, s7, -1167
63:               bge          t1, gp, 76f
                  beq          t2, s7, 72f
                  sra          s9, a2, s10
                  andi         a3, s4, 461
                  bge          t1, t4, 87f
                  sll          s1, s8, s7
                  bne          a3, a3, 77f
                  xori         a7, t3, -1968
                  blt          s10, s7, 75f
72:               slli         a7, s6, 9
                  sll          a0, a4, t0
                  srai         a1, tp, 4
75:               bne          t0, a5, 92f
76:               and          a5, s8, s4
77:               nop
                  srl          s4, s0, s7
                  sltiu        s4, a7, 921
80:               srai         s6, a4, 20
                  or           t3, a6, s11
                  srli         gp, gp, 14
                  auipc        t6, 114698
                  ori          zero, s3, -315
                  add          t2, a6, t1
                  lui          t4, 392671
87:               sra          t4, s8, a5
                  addi         a1, t0, -1384
                  add          a0, t0, sp
                  slti         s2, t4, 803
                  nop
92:               srli         s4, t2, 20
                  and          s10, a7, a4
                  xori         t6, t5, -1935
                  sra          s4, t4, sp
                  ori          a6, a0, -1718
                  srai         t3, s8, 5
                  andi         t4, s4, 1822
                  or           a7, s5, a2
                  bge          s0, s8, 110f
                  bltu         t0, zero, 113f
                  bge          a0, zero, 117f
                  srai         a2, a4, 3
                  lui          s6, 960849
                  xori         t0, a5, -474
                  or           a2, t6, a7
                  nop
                  sra          s0, s5, t0
                  slli         t5, s7, 14
110:              sll          s9, zero, ra
                  sll          t0, s11, s8
                  sltu         zero, s5, a4
113:              sll          s1, a3, s8
                  slli         s9, a1, 13
                  slti         a5, s2, -489
                  sltu         zero, a6, sp
117:              bgeu         a2, t1, 129f
                  slti         a6, s2, 1271
                  or           t0, ra, s6
                  bgeu         t2, a4, 134f
                  bne          t6, a4, 139f
                  sub          s10, t3, s5
                  xor          a1, t0, s5
                  srai         s7, sp, 9
                  sra          s11, a0, t0
                  bne          s2, t4, 128f
                  addi         a7, a7, 13
128:              slti         a7, s0, -698
129:              slli         s9, a2, 1
                  sll          a3, s2, t2
                  or           sp, zero, t2
                  sltu         tp, s9, t0
                  lui          s6, 323137
                  addi         a2, zero, 9 #init loop 1 counter
                  addi         a3, zero, 6 #init loop 1 limit
                  sra          t6, a7, a7
                  andi         a1, s4, 1399
                  lui          t4, 805980
                  andi         s8, s5, 532
sub_4_3_1_t:      lui          s7, 344660
                  addi         a2, a2, -4 #update loop 1 counter
                  add          s11, ra, s11
                  add          a5, s1, s6
                  and          a5, a1, a5
                  xor          t2, a6, s8
                  and          tp, t4, s10
                  auipc        sp, 513719
                  nop
                  sltiu        t4, t2, -944
                  srl          s0, s1, t3
                  xori         t5, t2, 263
                  slli         t6, t3, 22
                  sub          t3, ra, s7
                  sll          a0, s5, gp
                  addi         ra, zero, 2 #init loop 0 counter
                  addi         s1, zero, 16 #init loop 0 limit
sub_4_3_0_t:      lui          t5, 987513
                  andi         tp, s2, -981
                  sltu         a5, a1, s4
                  sltu         a5, t2, a2
                  addi         ra, ra, 5 #update loop 0 counter
                  and          t5, t1, s11
                  bltu         ra, s1, sub_4_3_0_t #branch for loop 0
                  sltu         a1, t5, s5
                  srai         zero, t4, 20
                  or           s2, s0, s10
                  bgeu         a2, a3, sub_4_3_1_t #branch for loop 1
                  srai         a7, gp, 11
134:              sltiu        gp, a7, 1563
                  sltu         a1, sp, s7
                  add          tp, t4, a1
                  bltu         zero, s6, 143f
                  sltu         a7, a7, s8
139:              srai         s6, a7, 22
                  bltu         a4, zero, 147f
                  slti         s0, tp, 1032
                  bne          s6, s2, 161f
143:              bge          s0, t1, 157f
                  sltu         a5, gp, s2
                  and          sp, a6, t6
                  bgeu         gp, a5, 147f
147:              ori          t2, t5, 1909
                  lui          a2, 250061
                  nop
                  bge          a3, t6, 156f
                  andi         s10, sp, 440
                  and          s0, a4, t5
                  blt          s2, s9, 169f
                  bgeu         a3, a2, 166f
                  sub          s9, a4, a4
156:              and          t0, a7, s11
157:              bge          s5, tp, 165f
                  slt          s10, a6, s7
                  xor          t6, s2, s6
                  slli         a5, tp, 27
161:              srai         ra, ra, 15
                  lui          s4, 625294
                  auipc        t0, 365629
                  slli         s1, zero, 22
165:              addi         t0, a0, -460
166:              bge          a4, gp, 185f
                  xori         ra, s2, -1118
                  lui          s6, 217782
169:              ori          s4, t6, -1696
                  bgeu         t0, t1, 190f
                  nop
                  auipc        s9, 168208
                  addi         s11, s7, -965
                  add          zero, zero, tp
                  sltiu        gp, t6, -1458
                  bne          s11, tp, 196f
                  or           a5, t1, s8
                  auipc        a6, 881581
                  slt          t6, s0, s11
                  srai         s1, s1, 26
                  bne          t6, t5, 193f
                  nop
                  srl          a3, t2, gp
                  sra          t2, t1, s11
185:              bne          t3, tp, 199f
                  lui          sp, 197492
                  sltu         a0, a4, t6
                  andi         s7, s6, -159
                  xor          s6, tp, s4
190:              auipc        s1, 943055
                  addi         gp, s11, -1089
                  bge          t0, zero, 196f
193:              bgeu         s8, a2, 207f
                  addi         s4, s7, -494
                  xori         s1, a2, 468
196:              bgeu         s11, s8, 216f
                  slli         t3, a5, 24
                  and          s9, a6, s10
199:              bgeu         a2, s9, 206f
                  ori          a4, s11, 1124
                  slti         s9, gp, 2047
                  sll          ra, t4, a7
                  bge          zero, s2, 219f
                  srai         a1, sp, 1
                  xor          s6, s2, a6
206:              sltiu        a7, s10, -1470
207:              slli         a7, s9, 16
                  ori          a1, s1, -1347
                  and          a3, a7, s0
                  nop
                  nop
                  sltiu        s11, s3, 592
                  slt          t3, t4, a5
                  lui          s10, 1046378
                  beq          t2, a5, 228f
216:              slli         a4, a7, 31
                  beq          s0, a3, 229f
                  sltiu        a2, s11, 1907
219:              ori          a2, s11, -238
                  nop
                  or           a1, a5, s4
                  nop
                  slti         t3, sp, 1416
                  andi         s0, t1, -1291
                  bgeu         s5, s5, 226f
226:              auipc        gp, 810941
                  ori          s1, sp, -550
228:              sub          a2, a0, s10
229:              sra          a7, ra, tp
                  beq          s1, t0, 236f
                  and          t0, t6, a0
                  slti         s4, s9, -1751
                  srai         s8, t0, 23
                  srl          s7, a3, s1
                  bgeu         s11, a6, 243f
236:              sll          s0, a6, t6
                  srl          sp, t1, s8
                  sra          t6, t6, tp
                  sra          s4, s6, s9
                  srai         t5, ra, 27
                  beq          t5, t5, 247f
                  srli         t2, s5, 6
243:              andi         t2, s2, -1529
                  sll          ra, a1, s9
                  bltu         t0, ra, 247f
                  bge          t2, a6, 247f
247:              or           s2, a7, a4
                  auipc        t3, 261003
                  lw           a1, 4(s3)
                  addi         s3, s3, 8
                  or           t3, s7, s1
                  sltiu        s9, a7, 1595
                  nop
                  sltu         a4, ra, t6
                  srai         t5, s9, 22
                  sltu         s1, a7, s1
362:              addi x5, x11, 0
362:              jalr x5, x5, 0
sub_1:            lui          s8, 592865
                  srl          t5, a0, t1
                  slli         a0, t3, 29
                  blt          t5, ra, sub_1_stack_p
                  slt          s9, t0, a1
                  or           t3, a4, a1
sub_1_stack_p:    addi         s3, s3, -32
                  nop
                  or           gp, ra, t6
                  auipc        a7, 947108
                  sw           a1, 4(s3)
                  lui          s4, 21696
                  srli         a4, s2, 11
                  slli         zero, tp, 26
                  ori          a3, a2, -1159
                  bge          a5, s6, sub_1_j2 #branch to jump instr
                  srai         a5, s6, 9
                  sltu         s1, s1, s1
                  auipc        a5, 743652
                  lui          tp, 493683
sub_1_j2:         jal          a1, sub_2 #jump sub_1 -> sub_2
                  la           s4, sub_2
                  sll          t6, a6, s7
                  addi         s4, s4, -957
                  auipc        s10, 583293
                  sub          s8, s8, a5
                  blt          t6, t0, sub_1_j3 #branch to jump instr
                  andi         ra, s10, 450
                  xori         a0, s8, -1298
sub_1_j3:         jalr         a1, s4, 958 #jump sub_1 -> sub_2
                  addi         s7, zero, 9 #init loop 0 counter
                  ori          s0, s2, -1365
                  addi         a2, zero, 7 #init loop 0 limit
sub_1_5_0_t:      xor          s10, s7, a3
                  sll          s8, s0, s5
                  addi         s7, s7, -1 #update loop 0 counter
                  auipc        a5, 726419
                  nop
                  and          s9, t3, a2
                  bgeu         s7, a2, sub_1_5_0_t #branch for loop 0
                  srli         s0, a4, 30
                  addi         a3, zero, 8 #init loop 1 counter
                  addi         gp, zero, -19 #init loop 1 limit
                  slli         s1, s9, 27
                  sll          a2, t1, s9
sub_1_1_1_t:      andi         tp, s3, -178
                  addi         a3, a3, -9 #update loop 1 counter
                  xori         a6, t4, -735
                  addi         s11, zero, 7 #init loop 0 counter
                  addi         s2, zero, 6 #init loop 0 limit
sub_1_1_0_t:      slti         a4, a0, -659
                  and          a1, gp, s6
                  addi         s11, s11, -5 #update loop 0 counter
                  bgeu         s11, s2, sub_1_1_0_t #branch for loop 0
                  bne          a3, gp, sub_1_1_1_t #branch for loop 1
                  srl          a1, a2, t5
                  addi         s7, zero, -7 #init loop 1 counter
                  srai         s6, a5, 9
                  addi         a3, s8, 1258
                  slli         s6, s1, 27
                  addi         s9, zero, -9 #init loop 1 limit
                  or           ra, t4, t6
sub_1_8_1_t:      lui          a4, 871725
                  addi         s7, s7, -2 #update loop 1 counter
                  addi         t2, zero, 4 #init loop 0 counter
                  sll          s11, s8, s4
                  slt          a7, s4, a0
                  nop
                  addi         s10, zero, 9 #init loop 0 limit
                  addi         s1, tp, 1364
                  sltu         a3, a7, t4
sub_1_8_0_t:      addi         t3, s1, -2009
                  addi         t2, t2, 5 #update loop 0 counter
                  xor          tp, s2, zero
                  bltu         t2, s10, sub_1_8_0_t #branch for loop 0
                  srai         t4, a5, 13
                  bne          s7, s9, sub_1_8_1_t #branch for loop 1
                  srai         t0, t4, 27
                  addi         s10, zero, 0 #init loop 0 counter
                  nop
                  add          s7, t6, t1
                  xor          a4, t6, a7
                  addi         sp, zero, -8 #init loop 0 limit
                  sll          a2, a4, t1
                  lui          t0, 1009952
sub_1_0_0_t:      sltu         zero, s6, s1
                  and          s2, s5, s10
                  addi         s10, s10, -8 #update loop 0 counter
                  sll          s4, s10, a7
                  beq          s10, sp, sub_1_0_0_t #branch for loop 0
                  xori         a4, s1, -741
                  addi         t3, zero, 8 #init loop 1 counter
                  srli         t2, s6, 17
                  addi         t0, zero, 6 #init loop 1 limit
                  srai         a4, sp, 8
sub_1_6_1_t:      ori          sp, zero, -1239
                  ori          a7, s7, 1242
                  addi         t3, t3, -5 #update loop 1 counter
                  addi         s9, zero, -2 #init loop 0 counter
                  xori         s2, t0, -390
                  addi         a6, zero, 15 #init loop 0 limit
                  sra          a7, tp, s2
                  ori          ra, a7, 532
                  slt          a0, s11, t5
sub_1_6_0_t:      lui          t4, 440109
                  sltiu        zero, t1, -1759
                  addi         s9, s9, 9 #update loop 0 counter
                  slli         t4, a7, 3
                  sltu         sp, a0, t6
                  bltu         s9, a6, sub_1_6_0_t #branch for loop 0
                  sll          s6, s7, t3
                  xor          a5, s6, s7
                  bgeu         t3, t0, sub_1_6_1_t #branch for loop 1
                  addi         a3, ra, -930
                  addi         a5, zero, -8 #init loop 0 counter
                  slt          tp, a2, s5
                  auipc        t2, 409887
                  xori         t6, t2, -1547
                  sub          t2, t6, a4
                  addi         t2, a5, -1327
                  xori         a1, s4, 92
                  sra          t6, tp, s2
                  slt          t5, t2, s10
                  slt          a2, zero, zero
                  auipc        s1, 111871
                  or           s6, t2, s0
                  addi         ra, zero, -20 #init loop 0 limit
                  and          zero, s4, tp
                  srli         s2, ra, 11
                  xori         s10, t6, 984
                  xor          sp, t6, a5
sub_1_4_0_t:      nop
                  srai         t0, s5, 2
                  ori          t0, t1, -616
                  andi         tp, a5, 47
                  ori          a2, sp, 563
                  srli         t2, a3, 7
                  auipc        t0, 51113
                  lui          a0, 317715
                  addi         a5, a5, -6 #update loop 0 counter
                  bne          a5, ra, sub_1_4_0_t #branch for loop 0
                  nop
                  addi         sp, zero, -10 #init loop 1 counter
                  sra          s6, zero, s7
                  sub          a1, gp, s2
                  addi         s11, zero, -9 #init loop 1 limit
                  sub          a0, tp, zero
sub_1_2_1_t:      auipc        t0, 150397
                  ori          s0, sp, 579
                  slti         s2, s9, -1734
                  addi         sp, sp, 4 #update loop 1 counter
                  add          a6, t0, t1
                  sltu         s1, s2, s1
                  slti         a1, s10, -1907
                  addi         s9, zero, 9 #init loop 0 counter
                  xor          s0, a4, t4
                  ori          t6, s0, -1898
                  addi         t3, zero, 12 #init loop 0 limit
sub_1_2_0_t:      xori         t5, s10, 796
                  lui          t5, 465563
                  ori          a6, s4, -1744
                  addi         s9, s9, 3 #update loop 0 counter
                  sub          s1, a7, ra
                  bne          s9, t3, sub_1_2_0_t #branch for loop 0
                  addi         a7, s8, 46
                  ori          s2, a7, -1056
                  lui          gp, 579394
                  slti         a0, t3, 1732
                  blt          sp, s11, sub_1_2_1_t #branch for loop 1
                  auipc        t4, 6753
                  addi         gp, zero, 5 #init loop 1 counter
                  andi         s10, s3, 123
                  sltu         s1, t1, s5
                  auipc        s10, 327042
                  addi         s7, zero, 20 #init loop 1 limit
                  or           a6, s7, s6
sub_1_3_1_t:      sltu         ra, s10, s0
                  slt          s10, a5, zero
                  addi         gp, gp, 1 #update loop 1 counter
                  xori         s8, ra, 1983
                  addi         s2, zero, 5 #init loop 0 counter
                  xor          s4, s11, tp
                  addi         tp, zero, 5 #init loop 0 limit
                  srli         a1, s4, 24
sub_1_3_0_t:      addi         a1, t3, -622
                  xor          s4, a1, t3
                  slli         s6, s7, 8
                  addi         s2, s2, -2 #update loop 0 counter
                  sub          a6, tp, s0
                  srl          s10, a1, t0
                  sll          t3, t5, a1
                  bgeu         s2, tp, sub_1_3_0_t #branch for loop 0
                  slli         a7, s0, 12
                  or           a2, tp, a1
                  sra          a6, a2, ra
                  srli         s9, t1, 31
                  lui          s9, 821868
                  slli         s1, s4, 4
                  beq          gp, s7, sub_1_3_1_t #branch for loop 1
                  addi         s10, a3, 852
                  addi         s9, zero, 9 #init loop 0 counter
                  andi         s6, a5, -1302
                  xor          tp, t5, s6
                  srai         a4, t4, 7
                  or           a1, tp, t2
                  srl          t0, s8, s0
                  addi         t5, zero, 9 #init loop 0 limit
                  sub          s2, a3, a7
sub_1_10_0_t:     ori          a2, s11, -313
                  andi         s11, s1, 759
                  slti         s2, a6, 1114
                  addi         s9, s9, -8 #update loop 0 counter
                  bgeu         s9, t5, sub_1_10_0_t #branch for loop 0
                  lui          s8, 774476
                  bltu         a3, s3, 8f
                  andi         s1, s9, -1970
                  addi         zero, a2, -672
                  add          a5, zero, t5
                  and          t2, a4, sp
                  slti         a0, t3, 1640
                  slt          s9, t2, t5
                  sub          gp, sp, s6
8:                bgeu         s9, sp, 25f
                  beq          s2, sp, 18f
                  nop
                  bge          s6, a7, 16f
                  srli         t3, s5, 13
                  bne          a7, s4, 27f
                  sltu         s1, a5, s5
                  ori          t2, zero, 1112
16:               xori         a3, a5, 1171
                  srl          t4, s2, a2
18:               bgeu         s4, zero, 35f
                  bne          s6, a1, 39f
                  and          sp, s0, a3
                  sltu         tp, t5, s6
                  or           s11, s1, sp
                  lui          a5, 161472
                  addi         s7, a7, -112
25:               addi         a5, s5, 1333
                  slti         s6, tp, -794
27:               sub          s0, a7, t4
                  xor          s10, s3, s0
                  sltiu        s6, s5, -1065
                  ori          t2, a1, 1634
                  sra          t2, t4, ra
                  add          a2, a4, tp
                  and          s9, a6, t5
                  bge          s4, s4, 36f
35:               slti         t5, sp, -1016
36:               or           s7, a5, zero
                  or           sp, t2, sp
                  xor          s8, s6, tp
39:               or           a1, a1, a2
                  xor          a1, t4, s8
                  ori          gp, s3, 1832
                  andi         t0, a4, -760
                  andi         a1, a4, 1951
                  slti         a5, a4, 1289
                  andi         s4, sp, 1720
                  srl          s4, sp, a3
                  bgeu         gp, t6, 61f
                  beq          gp, t1, 65f
                  sltiu        s0, t5, 113
                  xori         a1, t1, -53
                  srl          t4, t4, s4
                  or           t3, s7, t5
                  andi         s2, ra, -723
                  auipc        sp, 384365
                  xor          t3, s7, a6
                  bne          t4, a5, 74f
                  bge          a4, s5, 64f
                  lui          s9, 158104
                  sltu         a0, s1, t4
                  lui          a0, 567227
61:               slt          gp, sp, tp
                  srli         gp, s3, 23
                  and          gp, t3, s9
64:               beq          zero, t6, 84f
65:               srai         a0, s10, 10
                  sll          s9, a7, a5
                  lui          s0, 178923
                  beq          s10, s11, 72f
                  or           a1, tp, a2
                  add          a6, t4, t4
                  beq          a5, a1, 87f
72:               bgeu         t2, t1, 92f
                  add          t3, a4, s2
74:               andi         s7, s5, -600
                  bge          s7, ra, 90f
                  xori         s8, s9, -478
                  beq          s5, t2, 79f
                  bge          s9, t3, 96f
79:               sra          s8, s2, a4
                  bge          a3, gp, 91f
                  srl          a4, s2, s2
                  srli         s10, a7, 29
                  ori          a7, a2, 177
84:               beq          tp, s6, 99f
                  and          s2, ra, t3
                  bgeu         t4, t4, 101f
87:               sltiu        t4, s0, -792
                  beq          s1, t1, 108f
                  or           t6, t6, s3
90:               sra          s4, s4, t0
91:               auipc        zero, 388375
92:               ori          s11, a5, -276
                  slli         s10, ra, 11
                  beq          zero, s7, 107f
                  sltu         t4, a0, t6
96:               xor          a3, a6, t2
                  lui          s6, 864941
                  srl          s4, s3, s2
99:               xori         a0, s3, -1321
                  sltiu        s1, s0, -385
101:              slli         s11, a2, 1
                  sll          a7, s5, a2
                  sra          zero, t1, t4
                  nop
                  andi         tp, a7, 930
                  addi         zero, gp, -912
107:              srai         gp, a0, 28
108:              srli         a3, s4, 9
                  srl          a6, ra, s0
                  xori         a3, s9, -464
                  ori          s7, s8, -455
                  bgeu         sp, s2, 131f
                  auipc        s2, 273249
                  bltu         t5, t4, 116f
                  and          a1, a6, s6
116:              or           a6, a3, a3
                  xor          a7, t1, s2
                  xor          a5, s1, t5
                  bltu         a7, s0, 120f
120:              slti         tp, gp, 53
                  lui          t5, 967715
                  xor          s1, s11, s3
                  beq          a6, gp, 124f
124:              sra          a0, s5, s0
                  sltiu        s0, s0, 1868
                  ori          a2, t0, 1749
                  slti         t5, s11, 1728
                  auipc        a3, 596767
                  slt          t4, s3, a4
                  sltiu        s6, s1, -639
131:              auipc        a2, 955727
                  xori         s10, t6, 230
                  bgeu         a2, s10, 142f
                  bge          ra, s9, 143f
                  andi         s4, s9, -300
                  auipc        s9, 692400
                  sub          ra, t3, s11
                  add          sp, a1, a4
                  bne          gp, sp, 140f
140:              xori         s4, s8, -425
                  blt          s6, s6, 156f
142:              nop
143:              xor          a7, a4, s1
                  and          t0, t1, t3
                  slt          t0, a5, s1
                  bltu         gp, s9, 153f
                  blt          s2, zero, 149f
                  srli         t3, a4, 13
149:              srl          ra, a2, a4
                  andi         a1, a3, 1594
                  srli         s10, tp, 16
                  bgeu         t2, tp, 172f
153:              addi         a1, t2, -1851
                  beq          s1, s6, 163f
                  bltu         a6, t5, 173f
156:              srl          a2, s10, a6
                  bltu         gp, t4, 161f
                  ori          t2, a5, 426
                  srli         t5, s1, 2
                  bgeu         s5, t0, 171f
161:              slli         s6, zero, 21
                  ori          s7, a7, 588
163:              srli         s11, s4, 0
                  beq          t0, t3, 178f
                  srl          a2, s11, sp
                  bge          s3, s2, 175f
                  lui          s11, 348807
                  slt          a1, s7, s2
                  blt          t0, s11, 171f
                  bne          s1, ra, 179f
171:              beq          s10, zero, 185f
172:              ori          s4, s9, -237
173:              xori         s4, s7, -1620
                  and          gp, t2, tp
175:              sra          t4, t1, s8
                  slli         zero, s0, 21
                  ori          a0, s5, -1195
178:              xor          a7, ra, a7
179:              bltu         tp, a4, 199f
                  slli         a5, t1, 28
                  or           zero, t5, s5
                  beq          s3, t3, 201f
                  sltiu        t6, a0, 1876
                  sltu         s10, ra, s1
185:              addi         s1, a5, 360
                  slli         s11, s7, 29
                  sltiu        a0, s3, -564
                  or           ra, t4, sp
                  slli         a5, s7, 31
                  sltiu        s0, s0, -986
                  bge          s10, gp, 206f
                  slt          a0, s10, a3
                  addi         t0, zero, 9 #init loop 0 counter
                  addi         s0, zero, 7 #init loop 0 limit
                  lui          a3, 156921
sub_1_7_0_t:      slti         s4, s4, -22
                  sltiu        s7, s5, -1825
                  addi         t0, t0, -1 #update loop 0 counter
                  addi         sp, t0, -1056
                  sltu         tp, t2, s7
                  ori          s10, t0, -1194
                  bgeu         t0, s0, sub_1_7_0_t #branch for loop 0
                  and          t3, a5, t3
                  addi         t6, a1, 1457
                  srl          s7, t1, a1
                  lui          s0, 544617
                  sll          s11, s2, s6
                  and          s4, s11, gp
                  xor          ra, s7, zero
199:              bgeu         s3, s0, 219f
                  slli         t4, s5, 21
201:              and          t2, t3, s7
                  sltu         t4, t5, tp
                  slt          a2, a3, gp
                  lui          s8, 226095
                  srl          s11, sp, sp
206:              xori         s0, s7, 480
                  sra          a2, t0, s7
                  sltu         a0, sp, s6
                  blt          s0, s10, 226f
                  and          gp, sp, s8
                  lui          s11, 887114
                  addi         s11, s9, -1168
                  andi         s6, s8, -1038
                  bne          t1, t6, 234f
                  bltu         a2, a1, 232f
                  sra          a3, zero, a1
                  bltu         gp, t5, 225f
                  xor          s9, tp, sp
219:              bge          tp, zero, 220f
220:              beq          a1, a4, 237f
                  bne          s10, gp, 236f
                  sra          a1, a5, t6
                  nop
                  beq          zero, s10, 240f
225:              blt          t2, s9, 243f
226:              bne          s8, s5, 231f
                  sll          s11, gp, zero
                  lui          t6, 557675
                  bne          t6, t3, 242f
                  slt          sp, a7, gp
231:              and          t2, s10, s3
232:              beq          a6, gp, 234f
                  srl          s8, s6, t0
234:              srai         a1, s4, 22
                  sltiu        a3, a1, -1993
236:              nop
237:              xori         s10, s6, -1672
                  srli         t4, s0, 15
                  xori         tp, s10, -333
240:              srl          zero, a7, t3
                  auipc        t3, 531287
242:              or           s8, t5, t2
243:              beq          ra, a0, 259f
                  bgeu         a7, t6, 251f
                  xori         s1, ra, 1041
                  auipc        a7, 649392
                  xori         a1, t6, 930
                  srai         a7, gp, 26
                  bltu         t1, t0, 266f
                  srl          zero, t2, a3
251:              srl          a1, s4, a3
                  srl          a7, gp, tp
                  addi         a4, t3, 711
                  ori          zero, s2, -1442
                  beq          sp, s0, 264f
                  sltu         s0, t6, s1
                  xor          a0, t2, s3
                  sltu         t6, a0, a0
259:              and          s0, t0, a0
                  add          a1, a0, a5
                  sll          t3, a0, s2
                  bne          a0, s2, 277f
                  beq          s9, s9, 277f
264:              and          sp, s3, s8
                  srl          tp, a7, a4
266:              bge          s7, t2, 274f
                  srli         s0, s9, 27
                  sll          zero, s8, ra
                  sub          s1, s4, s6
                  beq          s2, a0, 271f
271:              beq          ra, a6, 280f
                  ori          t3, s9, 1221
                  andi         t3, t5, 73
274:              lui          a7, 500622
                  addi         s2, s5, 1450
                  srli         s11, t5, 3
277:              srli         t6, s5, 4
                  sltiu        a1, t1, 220
                  bge          t5, s0, 284f
280:              srli         s9, t6, 11
                  sra          t0, t5, t3
                  srli         s4, t4, 0
                  bge          s6, gp, 300f
284:              sra          t5, t3, sp
                  slt          gp, s8, t3
                  addi         gp, a6, -614
                  srli         sp, ra, 21
                  and          t2, t6, t2
                  beq          a0, tp, 293f
                  xori         t2, s8, 1502
                  sll          t4, ra, s10
                  auipc        a1, 771775
293:              add          s4, s5, s9
                  sltu         t3, t2, t5
                  andi         s11, a6, 884
                  slt          s9, s11, t1
                  andi         t2, s0, 1785
                  nop
                  xor          t5, t5, s4
300:              andi         a5, a7, 747
                  srai         s0, a5, 24
                  srli         s9, s3, 19
                  bne          gp, s11, 323f
                  ori          a7, t2, 1323
                  bltu         s1, a1, 322f
                  srl          zero, s8, t5
                  sll          a3, s4, s2
                  slli         a0, gp, 8
                  bltu         a5, a7, 329f
                  sltu         a1, zero, s0
                  sltu         a6, s10, a6
                  andi         gp, ra, 713
                  add          s4, t1, s8
                  ori          zero, s10, -131
                  sub          t5, t0, a0
                  nop
                  sltiu        s9, a4, 1985
                  beq          s6, a1, 332f
                  sub          s8, s8, gp
                  slli         s4, s5, 23
                  srai         sp, ra, 9
322:              sltu         gp, s10, s10
323:              nop
                  sltu         s4, s9, a7
                  and          t6, t5, a0
                  and          s2, a3, a6
                  auipc        ra, 39608
                  nop
329:              bgeu         t5, s2, 344f
                  blt          s6, s11, 349f
                  slt          t4, s3, ra
332:              lui          s9, 1047847
                  srl          s4, gp, t1
                  sltiu        s10, sp, -258
                  sub          ra, s1, s8
                  sll          a3, gp, s2
                  nop
                  addi         a6, s7, 405
                  beq          a2, a6, 341f
                  blt          a5, a1, 342f
341:              srli         zero, a2, 12
342:              bne          a2, s4, 344f
                  and          t4, s3, a7
344:              slti         a5, tp, -1701
                  sub          s2, s9, s2
                  lui          a1, 392181
                  srai         a2, zero, 2
                  bge          t5, s2, 359f
349:              xori         s10, s0, 1705
                  add          s2, s9, a1
                  srl          gp, s6, a7
                  slti         s9, a6, -1760
                  sltu         s0, a5, s6
                  slti         sp, s1, -997
                  sll          a0, s7, s0
                  and          s4, s8, s4
                  srli         gp, s8, 6
                  lui          ra, 1040710
359:              sll          t5, s1, gp
                  xor          a2, s8, a7
                  lui          s7, 519714
                  addi         zero, a1, -1993
                  beq          s9, s4, 381f
                  sll          a3, t3, t0
                  add          s10, tp, s0
                  sra          a6, a7, ra
                  bgeu         s10, a6, 387f
                  bgeu         gp, t3, 386f
                  blt          a7, t2, 370f
370:              bne          t4, s6, 383f
                  slli         t3, a7, 4
                  xor          t0, s10, s8
                  slti         a3, a6, -231
                  slt          a0, s11, a2
                  srl          t0, zero, ra
                  ori          a0, s4, -786
                  srai         a4, s11, 27
                  blt          s5, a3, 393f
                  beq          gp, s6, 399f
                  bne          t4, a1, 389f
381:              sltiu        t3, a0, 546
                  ori          t4, ra, -1781
383:              sll          tp, s11, t4
                  xor          gp, a4, s10
                  bltu         zero, s7, 401f
386:              ori          t0, s1, 1636
387:              srli         a0, s1, 8
                  and          t2, ra, sp
389:              beq          a1, gp, 393f
                  add          a2, a7, s2
                  andi         s10, a1, -617
                  srli         a6, a6, 13
393:              nop
                  srli         a2, sp, 4
                  sltu         s1, a6, s0
                  sltiu        t4, s10, 1455
                  sltiu        a6, a0, -1156
                  addi         sp, zero, 10 #init loop 0 counter
                  srai         a5, t1, 21
                  and          a6, t5, s2
                  addi         ra, zero, 9 #init loop 0 limit
                  ori          a4, a0, -872
sub_1_9_0_t:      slt          t3, t3, a0
                  srl          t3, s5, t2
                  nop
                  sll          s8, s9, gp
                  xori         s1, t2, 1730
                  or           a3, s6, t0
                  xori         s0, zero, 964
                  or           a4, s10, a0
                  addi         sp, sp, -7 #update loop 0 counter
                  srai         t4, s7, 27
                  sltu         t0, s4, s4
                  slt          s10, tp, s2
                  slli         a3, s9, 31
                  srli         s4, a5, 8
                  srli         a0, gp, 24
                  slt          zero, a3, s6
                  slti         a1, tp, -1051
                  and          s9, a4, a5
                  sltiu        tp, t1, 803
                  nop
                  andi         s4, a5, 365
                  bgeu         sp, ra, sub_1_9_0_t #branch for loop 0
                  slli         t6, t4, 6
                  sub          ra, s5, a4
399:              srl          tp, sp, t5
                  slli         s10, s4, 1
401:              ori          s11, s7, 1828
                  sltu         ra, a5, s11
                  and          ra, s8, s5
                  sub          s4, a3, tp
                  srl          zero, s3, s11
                  bgeu         a2, a0, 426f
                  srli         t5, sp, 18
                  bgeu         a6, s7, 415f
                  sltiu        s8, s8, -490
                  sltiu        a0, a5, 1828
                  and          tp, s6, sp
                  srl          gp, t3, a1
                  or           t6, t2, s11
                  slti         t4, sp, -1189
415:              or           tp, t1, ra
                  slti         a4, sp, -451
                  blt          s11, a1, 430f
                  bne          sp, zero, 433f
                  srl          t2, t2, a4
                  or           s0, s7, s3
                  sub          t2, tp, a3
                  or           t3, gp, t3
                  ori          a0, zero, 1736
                  sll          s8, s6, ra
                  blt          a7, t6, 442f
426:              and          t0, s11, zero
                  xor          a6, s0, t5
                  bge          s11, s10, 433f
                  addi         t2, a1, 642
430:              nop
                  sltiu        a5, t4, -798
                  sltu         s11, t2, s1
433:              slli         a2, a2, 5
                  or           a0, a4, a2
                  srai         s2, a2, 0
                  sll          a1, a5, s11
                  blt          t5, a6, 446f
                  ori          a2, s5, 133
                  nop
                  beq          ra, gp, 441f
441:              nop
442:              lui          a7, 255038
                  sltiu        a2, s0, 248
                  and          sp, a0, t0
                  sltu         a6, s9, s11
446:              sub          t2, t2, a2
                  bge          s6, sp, 461f
                  and          s4, t5, tp
                  and          t0, s8, s0
                  blt          a5, s10, 461f
                  andi         s1, s0, 501
                  srl          s0, t0, s10
                  slti         t5, s7, -115
                  andi         s1, s9, 140
                  srli         s2, ra, 30
                  lui          s9, 479400
                  beq          t0, t0, 459f
                  sub          t6, s6, t3
459:              and          ra, s7, a6
                  and          a7, s6, t6
461:              xor          s2, s10, s6
                  or           sp, t4, t2
                  ori          ra, s11, 295
                  blt          a3, a6, 473f
                  auipc        s2, 782901
                  bne          t6, s4, 486f
                  nop
                  blt          s7, s4, 470f
                  sltu         zero, s3, s7
470:              beq          t1, a6, 487f
                  addi         a4, s8, -1093
                  add          a2, s11, t6
473:              add          a5, t1, s10
                  srl          a4, s4, t3
                  andi         a3, s8, 749
                  bge          a4, a1, 494f
                  blt          ra, sp, 479f
                  slli         s9, gp, 23
479:              xori         s10, zero, 50
                  ori          t4, gp, -384
                  ori          zero, a2, -626
                  ori          t3, a0, -1580
                  sltu         sp, t5, t2
                  nop
                  sub          ra, a6, a1
486:              and          s11, t4, s5
487:              lui          s2, 379476
                  bltu         s2, s7, 503f
                  slt          s2, s0, s9
                  bltu         s8, s3, 491f
491:              blt          a1, gp, 510f
                  sltu         a4, s0, t4
                  and          gp, zero, a0
494:              xor          a5, s8, t6
                  sltiu        tp, tp, 1065
                  bne          a0, a1, 504f
                  srli         a7, s5, 4
                  or           ra, s4, t1
                  beq          s11, a6, 516f
                  sll          t5, t2, s7
                  sltiu        s0, a7, -1151
                  auipc        t0, 318720
503:              srai         a4, s1, 11
504:              srli         t3, s3, 0
                  bgeu         a5, a6, 523f
                  slli         s2, a6, 0
                  bltu         t4, s6, 521f
                  blt          s10, a4, 528f
                  xor          a0, s9, t5
510:              add          s0, t4, t5
                  sll          gp, a0, s4
                  srli         s2, zero, 4
                  srai         t4, s7, 0
                  sltu         t0, s10, t3
                  bltu         s0, s0, 524f
516:              slt          s7, gp, a2
                  bge          s0, t5, 532f
                  bne          s3, t2, 538f
                  add          s2, t3, t6
                  blt          a4, s9, 527f
521:              add          s2, s11, a6
                  sll          s8, gp, sp
523:              andi         a2, s6, -184
524:              xori         t5, t0, -2030
                  addi         a0, t6, -1396
                  add          a0, t6, a0
527:              bge          t0, t2, 544f
528:              sltu         a6, a7, s4
                  beq          a0, a7, 549f
                  srli         a7, s8, 27
                  blt          tp, a3, 545f
532:              auipc        a6, 502396
                  beq          t3, s6, 542f
                  nop
                  sub          a2, t4, s3
                  slli         t0, t6, 11
                  sltu         a0, t3, t5
538:              slli         s0, a4, 5
                  slti         sp, s2, -2046
                  srai         s10, a1, 20
                  srl          s7, gp, s0
542:              bltu         t5, s11, 546f
                  beq          a3, a2, 552f
544:              sltu         s2, a1, a7
545:              blt          s11, a6, 552f
546:              srl          s9, t3, a3
                  sll          s1, a3, s5
                  bne          t5, s1, 552f
549:              sltu         t3, s9, a1
                  srai         t0, t3, 4
                  srai         zero, ra, 20
552:              slti         t6, tp, 911
                  srli         s10, s8, 15
                  srai         t0, a1, 23
                  lw           a1, 4(s3)
                  nop
                  addi         s3, s3, 32
                  sra          t3, s6, t6
                  sra          s10, a4, s0
813:              addi x2, x11, 1
813:              jalr x2, x2, 0
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
.word 0xa4359aff, 0xd2bb9a62, 0xa127e928, 0xb3557f92, 0x04553b9b, 0x64e62079, 0x21564793, 0xf5743850
.word 0x2de473f2, 0xd46cd068, 0xd1916cd0, 0x85c0c712, 0x3a0405c6, 0x93a32ac2, 0xdfe49e68, 0xb1c3f853
.word 0xffa9a413, 0xc5fcd4f4, 0xfd8895c1, 0x75a75108, 0xf78f4d65, 0x301ddef0, 0xab2e1ec6, 0xf3f2ed61
.word 0xd5ba2aac, 0x6b3ed46d, 0x83c473e3, 0x6ff1dbd0, 0x42b4963c, 0x28b0c7dc, 0x16449d2b, 0x3dff3883
.word 0xeb1b4a33, 0x526713a4, 0x05d57909, 0x2ecf8b60, 0xb9efd23e, 0x78628068, 0x923f6b27, 0x6c419aff
.word 0xee111d84, 0xca80be25, 0x81a4a871, 0x4efb321d, 0x8d2001de, 0x20c22d9e, 0x02a9fed8, 0x882b074a
.word 0x2733c972, 0xdbbaac13, 0x42d83cf0, 0x2d33db62, 0x95d4e5dc, 0xa8627397, 0x647929b2, 0x9541f50c
.word 0xb8ddebf0, 0x11a42b97, 0x102c10a9, 0x31368a7e, 0x2238be4d, 0xcfea6a59, 0x3c2aac45, 0x009c4a5a
.word 0xb5c101e7, 0xc82858ef, 0x6f9a5afb, 0x5446d28a, 0x07049a66, 0x8664bf58, 0x4f7e52c4, 0xe7c54256
.word 0x4a3aa150, 0x023c3558, 0xafbe3801, 0xf77181fb, 0x2fad380a, 0xb6b422fc, 0x04b3db42, 0xac298219
.word 0x2a505653, 0xcdb3b890, 0x43acaad1, 0xf83cb149, 0x6dce0755, 0xc3ccf83f, 0x8bee32ec, 0xabfcec54
.word 0x972278af, 0xd31c72c1, 0xc0338481, 0xf529f986, 0x45ce2009, 0xe871b8e9, 0xfb37f85f, 0x0b45cd7c
.word 0xb1465771, 0xba6f8a1c, 0x7a378a46, 0x107562b6, 0xb6499a7b, 0x0dc2cd9f, 0x5f9ee352, 0xd0e05546
.word 0x5ff636cf, 0xaba8e027, 0x8a4ea61a, 0x66c871ef, 0x4f22b408, 0x22685432, 0x82cc1f93, 0x2ab7fdc6
.word 0x8d301c7b, 0x22314c8c, 0x0b0d6940, 0x834edd1c, 0xcb5d4416, 0xefe69f68, 0x4db2a1ef, 0xd1b85914
.word 0xe4778bf4, 0xebc0325b, 0xe4d23f36, 0x1a51c07b, 0x8b6097f2, 0xadc0f4ab, 0x9afe61ed, 0xa55722b2
.word 0xbd7ddf7f, 0xe934fbfe, 0x4528e77c, 0xd27c8aa4, 0x89b6e6e4, 0x1ede6888, 0xe376803e, 0xa660a49a
.word 0xae8a27bd, 0x55396638, 0x013437b1, 0xf08756cd, 0xf3ec048d, 0x7bb23cdd, 0xdf45659f, 0x01e42f26
.word 0xade58b5f, 0x15e306ed, 0x578c3631, 0x14315777, 0xff699ad6, 0xc35e3232, 0xc13a61ed, 0x8f0a46b6
.word 0x59e306a1, 0x936502a7, 0x44bcfcda, 0x85d6ac13, 0x07f9043e, 0x5dc5ec2d, 0x97e00b60, 0xe847c0ab
.word 0x1fc84385, 0x36072192, 0x4ceeb3b7, 0x337fcd29, 0xbb1ce05b, 0x42e44b3d, 0x862b6d80, 0xa3966de9
.word 0x4e94f59f, 0xe3b0b013, 0x8eeb596d, 0x1eccd25b, 0xc5457969, 0x2f2e3545, 0xf393b707, 0x972b77e1
.word 0x3e40f03f, 0x1eda1a00, 0xcf47d676, 0x59334330, 0x94a27ffb, 0x243a906c, 0x19e35a89, 0x3bf6fa7c
.word 0x8cfc46d4, 0x9de8ce75, 0x6b6aa67f, 0x8265eff7, 0x19c39057, 0x23b6e34d, 0xf452e793, 0xb9a50882
.word 0xdd436531, 0x95f5186a, 0xeb5f3b5f, 0x62c294ac, 0xed566a98, 0x599d1bf6, 0xe634d62b, 0x8a101126
.word 0xd163f5d1, 0x53fbc45e, 0xdbd0ead7, 0x351050e6, 0x76c87d08, 0xd220365f, 0xac09721f, 0x7fa2ab43
.word 0xdf81b160, 0x03650768, 0xdbe97c6f, 0x5ed7a37e, 0x4498b815, 0xd2ed53c9, 0x5613e95a, 0x89500555
.word 0x8f997213, 0x0c41b7e8, 0x474ebc48, 0x2877c037, 0x86a9853e, 0x10d7a288, 0x867c570e, 0xa8be67a3
.word 0x0279b7b7, 0x0332fee7, 0x69041f16, 0x1c37f05e, 0xd03c6f66, 0x3e257978, 0x62eb7d81, 0x6b466a0f
.word 0x88d7c96f, 0x30451a6f, 0x60f5db01, 0x6f26cee9, 0xf79f5d4a, 0x8042ea7b, 0x1ebe9efa, 0x5c0a2bed
.word 0xef600640, 0x89318ffb, 0x59134357, 0x845f7e7e, 0xaeb175f8, 0x666ca3a4, 0x57479358, 0x18eda958
.word 0x873abb89, 0x950b0593, 0xaba462bc, 0x45008a75, 0x7e03cafb, 0x3fbd5adb, 0x249925a1, 0x53635f2f
.word 0xce827166, 0xb0fa853a, 0x95d84ff3, 0x11ebd58b, 0xd1a95d56, 0x533515e3, 0x7a72e505, 0xcf355384
.word 0x36f5f620, 0xfd8de6a2, 0xec8e668e, 0x390830b8, 0x49ac81d4, 0x387f8fce, 0xe8ec939b, 0xb4c83189
.word 0xc67683f2, 0xed424a69, 0x39f505db, 0x4c3c68c2, 0x8d0a1f5b, 0xc2857266, 0x5348bbb4, 0x8a819cec
.word 0x86c5a9df, 0x35c2d271, 0xde2281b1, 0x2a294937, 0xbb2da64b, 0x92681016, 0xe019e7d1, 0xed1bdeb9
.word 0x0533324b, 0x4367ad35, 0x3442159e, 0x12510edc, 0xfaa26364, 0x2128c58a, 0x44e19199, 0x9fce0c11
.word 0x60120ded, 0x41718f31, 0x2a0a94dd, 0xd4b889ca, 0x0a8ba5e2, 0x6d6ee4ca, 0x257bd09a, 0xaa8d51e6
.word 0xbc2288eb, 0x53df930e, 0x6ec0f58c, 0x9f8cbec0, 0x4db31efc, 0x520ac094, 0x6dacb571, 0x4438f1f0
.word 0x533f7acb, 0x8cac7a74, 0x822878d0, 0x6e18d98d, 0x14e7d361, 0xa116e68e, 0x25fe4e3c, 0x4a51ab47
.word 0x0899976f, 0x62695f48, 0x97661f2f, 0x6109c984, 0x68495f30, 0x4463a1ee, 0xc9877715, 0x499a4df3
.word 0x0237ddfe, 0x309c32f3, 0x4c749af6, 0xbaeb510b, 0x659789bf, 0x64584a8d, 0x038f12d1, 0x38ffa0f6
.word 0x3ade7cd9, 0xcf46ce3c, 0xb00b7928, 0x5c9d9b86, 0x3a475226, 0xdb3f36bb, 0x2a6a345d, 0xf3ee57a9
.word 0x00d3c956, 0x34d88def, 0xa242f5d2, 0xb85fd1ca, 0x2034655d, 0x04540d59, 0x81baaa5b, 0x312f40b2
.word 0x3a7d158b, 0x19250ea3, 0xa6c240f6, 0x046bc3bf, 0xeb08b494, 0x163ebb7a, 0xebb0c25f, 0x0cff13be
.word 0x1f9793c0, 0x69d7b22b, 0x29f12821, 0xec5eae56, 0x27b5800f, 0xd05100e3, 0x0ddbbacb, 0xf00bcb6b
.word 0x628dc2fa, 0x04f31b81, 0x3e8ebb00, 0x389c1c5f, 0xf4cdc275, 0xa9e8aaf5, 0xf1a801df, 0xd65f8c3d
.word 0xf9cc1b7b, 0x189f2a79, 0x5facc4b8, 0x9575ba93, 0x44420132, 0xb4c398eb, 0x2c15e235, 0x614984d3
.word 0xaec1e678, 0x2db552a4, 0xc80cffc1, 0x99989fe7, 0xab10179e, 0x339f514e, 0xe03b4a63, 0x6af580cf
.word 0x331713bf, 0x78eae3d0, 0xb39e11f2, 0x111b7459, 0x930bf970, 0x0809a14f, 0x654a5fb8, 0xd7b5a45b
.word 0x4ffb4e89, 0x5110af4b, 0x66dc7765, 0x6ddade21, 0xa0598a2d, 0x0269f6d0, 0x02b5fe41, 0x24713676
.word 0x3d6ff2bf, 0xa2b77a73, 0xb6ed648f, 0x5b7b3df2, 0x7bc7fa43, 0x4e43fe46, 0xe858d492, 0xfe8eca25
.word 0x7bac7612, 0xd9c09062, 0xc6e06a9e, 0x5304c4f9, 0x436e188d, 0x7593cb18, 0xb7f983b0, 0x637eb62a
.word 0xe776dc1f, 0xe4a4145b, 0x3a880427, 0x059e5d99, 0xbff60869, 0xfc5a3237, 0x323aa736, 0x72823000
.word 0x4c176d05, 0x6a2290ca, 0x3c34da42, 0xd6f59461, 0x9f0f2c04, 0x85d1e079, 0x4094e6ac, 0x4ba66703
.word 0xdc089bbd, 0x8bac7675, 0x33de1ef1, 0x7d87ce74, 0x9e1c84a1, 0xd6a8a9fe, 0xb6deb809, 0x78cc3aaf
.word 0xb725cc62, 0x746efb6b, 0x94f901af, 0x21107904, 0xcf04af1c, 0xeb47404b, 0xd1cca909, 0x12261228
.word 0xe44bafa9, 0x3027aeff, 0x0ee3dbcc, 0x2c7d28f9, 0x88af749e, 0x42aeeafb, 0xc1149af0, 0xafcccbab
.word 0x855e9382, 0x1a28f7fd, 0x96538404, 0xabda456f, 0x4217dc07, 0xde257382, 0x0bd750da, 0x08344769
.word 0x2601bf07, 0x1e72aaee, 0x9aca714e, 0xa3af0029, 0x5df38adf, 0xdd83c98c, 0xa8001fd0, 0x1b4e08df
.word 0x40e4d2dd, 0xf9c75c03, 0x20643ee9, 0x1ae24a1e, 0xbe3f9db5, 0x5681ae19, 0x154a0c76, 0x64a1d30d
.word 0xc54489b3, 0xa3dbfb6e, 0x0b37c767, 0x5e220487, 0x90c9dfbb, 0xf6461681, 0x2ba6c75f, 0x9c39522c
.word 0x4b6ea802, 0x00d5b1a6, 0x86dca3f2, 0x22ee3a38
.section .region_1,"aw",@progbits;
region_1:
.word 0x0da4f269, 0x7efe8d97, 0x72cdedfb, 0xd33d8b00, 0x54aaa8ff, 0xf8ec46f5, 0xdaee991c, 0x3d9325fb
.word 0xaec00bfd, 0xa100834d, 0xd736c484, 0x31cc29c7, 0xeea57de7, 0x0a875756, 0x4d13b0f6, 0x36c85246
.word 0x8375fded, 0x3d3f88d1, 0x8b40b582, 0xcb8bafcf, 0xb357bf33, 0x3740663d, 0x5bfaafa6, 0x32bdd342
.word 0x2e58e29a, 0x59e1a2ea, 0x2b1e0a3b, 0xbaf1783f, 0x9e9a302e, 0x65495116, 0xbf61cce1, 0x8b91b501
.word 0x8a0021f4, 0x5f3dce27, 0xf4cddf3c, 0x3286b82b, 0xb82bebd7, 0x7271a1bc, 0x36b744f5, 0x1e6458e7
.word 0x12669a90, 0x7e747e34, 0xadc8ca12, 0xcd1848bd, 0x1ae730cf, 0xd62e2b11, 0xbb37b20b, 0xda41b94c
.word 0x169a2d33, 0x3854f6a0, 0xc5df3c66, 0xe83a0a2e, 0x9a3ede57, 0xf4644a29, 0xd338c210, 0x3bbd008c
.word 0xee2ee107, 0x5988cc7d, 0xd2c05d50, 0xabd43175, 0x1eac4bb9, 0xe052e94e, 0xecc6e272, 0x3f16726c
.word 0xb9e352fe, 0x985d7bc1, 0x1b7cd46e, 0x2775bcb8, 0x99700da5, 0x2ab40b75, 0x20829da3, 0xe86f8526
.word 0xf2b231a8, 0xa79e0224, 0x3b3e41eb, 0xcdf07823, 0x047899e7, 0x47867213, 0x48486af3, 0x3a1588d0
.word 0x901a41c2, 0x4408b2e3, 0xd08bd6e5, 0x46cf7afa, 0x0af4024f, 0x16e2f222, 0x59628ed7, 0x656e8837
.word 0xf967fa35, 0x858b1fcb, 0xcd517de7, 0x046fac26, 0x6716e31b, 0x72792632, 0x3ca8ba9f, 0x751839c8
.word 0x066aa7c0, 0xa4e7ff1c, 0x144d3317, 0xfbf20d91, 0xe0f9cce2, 0x27e8ce80, 0xdc27b432, 0x33edcb04
.word 0x8eecb19d, 0xdcc8399a, 0xe7e56b4f, 0xff04bc97, 0x74689036, 0xed3cdce1, 0x7743c8a4, 0xc136149e
.word 0x132a0d6f, 0x6355b0f3, 0x88e782e6, 0xe17d536d, 0x9f9d905d, 0x812079c5, 0x3fa66104, 0x0224c17d
.word 0x79be86f5, 0x9d5f2e77, 0x09d5048f, 0x08281045, 0x70ea65c1, 0xf7ca05e4, 0xf409387b, 0x1a9dda2d
.word 0x8bbf56f3, 0x02a624df, 0x5c69b326, 0x974ab50c, 0x4b1f0dc1, 0x22aef49b, 0xb083a442, 0xd83ab712
.word 0x318c5c42, 0x11d79f03, 0x7751fa52, 0xa5418068, 0x298e2784, 0xe6d98c85, 0xbbfaa678, 0x920a93ae
.word 0x36d231a8, 0x5c629780, 0xdd27af9d, 0x26d94e4a, 0x0dcf5c60, 0xc0a73a02, 0xe58e529b, 0xe6a32127
.word 0xb9d529ba, 0xab9b3a60, 0xad7b074d, 0xea40d306, 0x10add907, 0xf2016182, 0xf627c840, 0xb98e5dc5
.word 0x45ccbb4a, 0xfdd0043e, 0x7e8e5e50, 0x718fc123, 0x2bf42b6b, 0x064a19fc, 0x55aeddb6, 0x1716e451
.word 0xdb3f3333, 0xe8bc7414, 0x0e704620, 0xb2880bf9, 0x0fda4098, 0xf4c882c8, 0xce408bcc, 0x839fccfb
.word 0x5e9ccafa, 0x59394364, 0x2a65a7bd, 0x421bffe5, 0xdfb2d128, 0x065cb6a7, 0xc370bf56, 0x17b59f4f
.word 0x9a3bb7e7, 0x7a338190, 0xe1444c62, 0xc5401986, 0x01482954, 0x04529462, 0xd234d618, 0xe9704489
.word 0xa112e62b, 0x58a54c82, 0xf1460052, 0x7780a10c, 0x636fc9f7, 0x4c7e063d, 0x50a41566, 0x52b2250f
.word 0xe2a1052c, 0x424ec5b0, 0x186434fc, 0xaf8cb9f8, 0x16362618, 0x784ce0aa, 0x5354eef9, 0x92d3a5e2
.word 0x4e9f78af, 0x8d77c3c8, 0xb4339a99, 0x938b116a, 0xa67de0e3, 0x05f75f34, 0x9e00ec0a, 0xc637d5b4
.word 0x0751373e, 0x4ab9118b, 0x27d7b9ad, 0x0b647c7a, 0xe5a09866, 0xc8782b8d, 0xff1adef5, 0x101111fc
.word 0x9ecee341, 0x13e1a37b, 0x26fd5c3a, 0xd0192ac5, 0x70f03e21, 0x20696f63, 0xdba67f30, 0x5288a922
.word 0x915562dd, 0x49486005, 0xc13201a1, 0x0a7ec07a, 0x08d18c99, 0xa192c186, 0x49cd27e8, 0xa2c19b03
.word 0x69277fef, 0xe97f3335, 0x2b07b399, 0x3acfa5f3, 0x50c5cc10, 0x40f90814, 0x86a5c445, 0x7959ba9d
.word 0xf165f53e, 0x30329c54, 0x9928c8d2, 0x8b847439, 0x5f709c04, 0xa1359e41, 0xd5073d0a, 0xa972edd2
.word 0xf04ec2e7, 0x58122131, 0x4ce488a8, 0x35713a17, 0xaa589661, 0xc2f60a1d, 0x73519e87, 0x28edaf63
.word 0x1e042e12, 0x152ed411, 0x0af489eb, 0x8620d6cd, 0x855eb806, 0x55b6477a, 0x750a6539, 0x02affc25
.word 0x24417a23, 0xec167f0b, 0x68dd3981, 0xe5342b3b, 0x1378a7d3, 0x62501ca0, 0xde7b0b7f, 0x17379018
.word 0xf4e27ce6, 0x28dcd98e, 0x4478dea3, 0x8a0a6267, 0xd3589a61, 0xd852665c, 0x05a1af77, 0x36a14a72
.word 0x7444f67a, 0x10039c38, 0x88921026, 0x6395ae94, 0xb511710a, 0xf160a8d7, 0x6757f760, 0xc394e73f
.word 0xbdc45bed, 0xe5606dce, 0x468ba670, 0xb2170839, 0x49ed5677, 0x865ad451, 0xf78abf14, 0xc4489d3b
.word 0x3895f4ff, 0x3d83b22b, 0x16891098, 0x1a863009, 0xc9291e17, 0x1c18006b, 0xe15f3523, 0x70cc5345
.word 0xd38aa1c1, 0x2beb510a, 0x28d82f09, 0xf67ef91d, 0xe26cb6f3, 0x029dd58a, 0xd20c785e, 0x6e78ab85
.word 0x250489d3, 0x966fd3cb, 0x51c3f963, 0xc5d3956d, 0xf6c27edc, 0x4b7a1065, 0x7571acfe, 0x42df68cc
.word 0x24bd4021, 0xaa3e4324, 0xac125906, 0xf3ac7042, 0x4a5166c5, 0xdb712304, 0x1ffb0502, 0x8f3100a9
.word 0x40072809, 0xc66fd971, 0x9e2472f1, 0xcc7d07da, 0xa8aa8f83, 0xb5a5ba37, 0x9c82024b, 0x86f93afd
.word 0x1c1768db, 0x7a23936d, 0x005d7428, 0x1beabc8f, 0x370ca08f, 0xd8558039, 0x23b66ffa, 0x83053c01
.word 0xb6fa119b, 0xc9a8023f, 0xf4af54b8, 0xf442fdea, 0x119f765a, 0xbe74ebe4, 0x2d9b5b37, 0xf98a154f
.word 0x0f4f8807, 0x70fda76d, 0xcad221f5, 0xd7be17b1, 0x99affd45, 0x00b218e3, 0x9d60703e, 0x82cb456c
.word 0xde80cdda, 0xa29c86e5, 0x2f4e693f, 0x5540efda, 0x390592f3, 0xbc557d6e, 0x7d3121fd, 0x75d31182
.word 0x1809434d, 0x493ad3c5, 0xa36c55ec, 0xd90b45af, 0x759fc1de, 0x438b6d51, 0x103fca5c, 0x720ca50e
.word 0x0d8d81a7, 0x1cce40cf, 0x1976104d, 0x7cfb3169, 0x0067850d, 0x9bfe4e0f, 0x74ce92fc, 0x1f89f7c8
.word 0x5a7f08ef, 0x2062546f, 0xa18e3eac, 0xdb26255c, 0x7c37acf1, 0xd7d0a777, 0xd94a992c, 0xc98d0b26
.word 0x11e7767f, 0x43cb53d5, 0x24db8e67, 0x1510f68d, 0x6ce6ca00, 0xfcd667f8, 0x4986bba8, 0x8a0113ea
.word 0xca832dbb, 0xa2a0ec39, 0x7d922ee6, 0xf70b5a47, 0xf9ff6150, 0x961ce6a8, 0x99d4ad4a, 0xb6a40108
.word 0xb8d43d93, 0x7bbf930b, 0xfbac4e71, 0x7fc05971, 0xcdd60d04, 0x29c2a012, 0x220a61dd, 0x189627c7
.word 0xb11ddd66, 0xccf8c543, 0x37a2b909, 0xbb280ba6, 0x08475350, 0xc846f6b6, 0xdc57a5e2, 0x5a664297
.word 0x347aa326, 0xa114836c, 0x5808b9eb, 0xf11cdd95, 0x97bea479, 0xbf2d4d1c, 0x64a166cd, 0xda35953d
.word 0x51c47bb6, 0xa2c00977, 0xb3c05b67, 0xb2fcb31f, 0x722004d7, 0x24098146, 0xc5558444, 0x1eeee7be
.word 0x5c447a33, 0x4f0d8b48, 0x09dc80fb, 0x6a845272, 0x8871658d, 0x892be504, 0xeb4df702, 0x6385e990
.word 0x3c86865b, 0xd837bc1c, 0x3fb9c72f, 0x1c6b6be4, 0x89a15c8f, 0x724d9135, 0xad0b68be, 0xf7d901dd
.word 0x398205d5, 0xcf6324c2, 0x779533cb, 0x96f1038f, 0x32da6b48, 0xd6c8e082, 0x04d8823a, 0xbd644c19
.word 0x59777108, 0xcd2cd6fb, 0x1c545466, 0x4b8bf34b, 0x239de28d, 0x57b28c0c, 0xe32e8b74, 0x9f05d527
.word 0xc96f75bb, 0x86272ad3, 0x1f7e092e, 0x43d8605c, 0x729d6a0a, 0x412eebf5, 0x89dda720, 0x1866efc3
.word 0x5fba7c91, 0x3e46fe38, 0x0a4d0888, 0xb3feb9ef, 0xcee763f4, 0x91f80cd1, 0xe675cc66, 0x9ab8886e
.word 0x300bf255, 0x7b2b77ff, 0xdede6b64, 0x79cfc327
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x6, x19, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x20, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x20, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x20, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x20, x4, ecall_handler
                  li x4, 0x1
                  beq x20, x4, instr_fault_handler
                  li x4, 0x5
                  beq x20, x4, load_fault_handler
                  li x4, 0x7
                  beq x20, x4, store_fault_handler
                  li x4, 0xc
                  beq x20, x4, pt_fault_handler
                  li x4, 0xd
                  beq x20, x4, pt_fault_handler
                  li x4, 0xf
                  beq x20, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x19, x6, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x6, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x6, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x19, x6, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x19, x6, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x19, x6, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
