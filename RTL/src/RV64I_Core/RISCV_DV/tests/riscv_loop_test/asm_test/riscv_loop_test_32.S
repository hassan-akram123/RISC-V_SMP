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
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x7
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x80000000
                  li x6, 0x4749a032
                  li x7, 0x0
                  li x8, 0x95debbc
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0xb
                  li x12, 0xfe2f23db
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x2
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0xfe415cf7
                  li x20, 0xdd5b40f7
                  li x22, 0xf
                  li x23, 0x0
                  li x24, 0xf7a000ae
                  li x25, 0x2
                  li x26, 0x80000000
                  li x28, 0x8
                  li x29, 0xf9031f22
                  li x30, 0x80000000
                  li x31, 0x4404baf2
                  la x21, user_stack_end
main:             auipc        t5, 527415
                  slli         t6, t2, 10
                  nop
                  sub          t2, s9, t4
                  auipc        a1, 515993
                  la           s0, sub_1
                  sra          s7, s11, s0
                  slli         a2, s1, 6
                  sltu         a0, a6, ra
                  addi         s0, s0, 976
                  auipc        a6, 858500
main_j2:          jalr         s3, s0, -976 #jump main -> sub_1
                  addi         gp, zero, -9 #init loop 0 counter
                  add          s2, s6, s2
                  addi         a7, zero, 15 #init loop 0 limit
                  xor          a3, gp, s7
                  sltu         s3, s6, t1
main_0_0_t:       xori         t5, t2, 422
                  andi         t1, t2, -463
                  addi         s4, a7, 1708
                  xori         s1, s6, -1370
                  addi         gp, gp, 6 #update loop 0 counter
                  add          ra, t4, a1
                  or           s6, s6, s9
                  xori         zero, a6, 1340
                  auipc        s7, 364060
                  slti         s2, t1, 1822
                  sll          t0, a5, s10
                  or           t3, s3, s0
                  blt          gp, a7, main_0_0_t #branch for loop 0
                  sra          zero, ra, t2
                  bltu         s3, s4, 9f
                  and          s9, tp, s8
                  slli         s3, s4, 23
                  bltu         ra, ra, 10f
                  sltiu        s0, s8, 803
                  blt          t6, t6, 10f
                  sltiu        s1, a7, 462
                  sub          a1, a6, gp
                  andi         s8, s6, -1815
9:                or           s9, s6, s6
10:               auipc        t1, 930989
                  slti         t5, s4, -1609
                  auipc        a5, 112699
                  nop
                  slli         a4, s0, 1
                  bgeu         a2, t0, 33f
                  bne          t1, s5, 25f
                  ori          s0, t1, -344
                  bgeu         t4, sp, 25f
                  lui          sp, 859353
                  add          a3, t6, s10
                  nop
                  sltu         t1, a4, t0
                  srl          t5, s0, t4
                  bge          t1, s1, 25f
25:               or           a0, a0, s2
                  sll          s4, a5, s8
                  auipc        a6, 78457
                  add          s4, s8, a4
                  la           s1, sub_1
                  addi         s1, s1, 234
                  sltu         a5, sp, t2
                  andi         s10, s4, -1040
                  srl          t2, tp, s10
                  auipc        ra, 4851
                  bgeu         s0, ra, main_j1 #branch to jump instr
                  add          t2, s3, a5
                  sra          t2, s8, s10
                  slt          t6, a7, a0
                  slli         t6, sp, 5
main_j1:          jalr         s3, s1, -233 #jump main -> sub_1
                  srai         a2, s2, 29
                  auipc        t3, 800194
                  slt          s0, t1, a7
                  slt          t6, sp, s5
                  or           a1, s11, a5
33:               slti         ra, zero, 169
                  srl          a7, s4, a6
                  slt          ra, t2, a3
                  sll          s8, tp, t5
                  addi         a2, t1, -1601
                  sll          s4, t2, tp
                  and          s2, t4, a3
                  auipc        sp, 174501
                  slt          a4, t4, s11
                  xori         a5, t0, 1807
                  sltu         s10, ra, a1
                  ori          s0, t0, -496
                  sltiu        a6, gp, 730
                  bltu         s8, s1, 50f
                  bge          s2, s2, 56f
                  srli         s1, s5, 19
                  xor          a2, s1, s9
50:               add          s8, t1, a0
                  sltiu        t3, s0, -393
                  bne          s2, sp, 56f
                  bne          s10, s1, 73f
                  sra          a7, a0, t0
                  auipc        a0, 11872
56:               addi         t1, s3, 1770
                  andi         s10, tp, 713
                  nop
                  srai         s2, t3, 0
                  srai         s4, s7, 22
                  add          s9, s4, a2
                  bge          s10, s11, 67f
                  bne          a2, a7, 75f
                  bge          a6, gp, 78f
                  sltu         a0, a0, s9
                  slt          s10, s1, s11
67:               lui          t1, 957499
                  sub          a7, zero, tp
                  and          a7, s10, sp
                  sub          s7, t1, s6
                  auipc        s1, 958234
                  bgeu         a5, a2, 78f
73:               and          t0, s10, a6
                  sra          ra, zero, a5
75:               and          s10, sp, gp
                  bltu         t4, s5, 78f
                  slti         s8, s10, -1090
78:               nop
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bgeu         tp, t6, sub_2_stack_p
                  andi         s8, s9, 190
                  lui          a4, 882923
sub_2_stack_p:    addi         s5, s5, -16
                  sw           s3, 4(s5)
                  srli         a3, a3, 26
                  add          s1, t4, a4
                  srl          a1, a5, ra
                  bgeu         a1, s1, 15f
                  srai         s3, t2, 17
                  bge          s0, a7, 11f
                  bltu         s6, a6, 7f
                  sll          a7, t2, t1
                  or           ra, s10, s6
                  slli         s2, t2, 2
7:                nop
                  sltu         zero, t3, t5
                  sltu         t1, t3, s2
                  addi         s1, t1, -444
11:               beq          a6, zero, 15f
                  xor          s2, t1, a5
                  nop
                  sub          s1, zero, t6
15:               xor          s9, a1, a3
                  slti         sp, t2, -1318
                  lui          s8, 382371
                  bne          t5, s8, 28f
                  sltu         s8, s4, s5
                  xor          s0, zero, t0
                  or           a1, a4, s8
                  bge          s6, a7, 28f
                  slt          t6, s3, s9
                  sltiu        t5, t6, -1632
                  ori          a0, s5, 656
                  andi         a0, t2, 1806
                  srl          t0, a1, a3
28:               nop
                  sub          s10, a6, s11
                  lw           s3, 4(s5)
                  ori          s8, a7, -749
                  sub          a3, s6, s9
                  sub          ra, s8, s4
                  addi         s5, s5, 16
                  nop
                  srai         t1, s8, 9
45:               addi x13, x19, 1
45:               jalr x13, x13, 0
sub_1:            bltu         sp, a0, sub_1_stack_p
                  sra          t3, t2, tp
sub_1_stack_p:    addi         s5, s5, -12
                  slti         ra, s6, -841
                  sw           s3, 4(s5)
                  srl          a1, a0, t6
                  add          s0, a0, t6
                  xori         s10, a2, -1507
                  srai         a1, s10, 4
                  nop
                  auipc        s10, 517496
                  la           tp, sub_3
                  addi         tp, tp, 92
                  xori         a3, a5, -1899
                  slli         s2, s11, 9
                  srai         s8, s10, 31
                  slt          a4, s10, a0
                  slli         t6, s0, 3
                  srli         sp, s11, 1
                  xori         gp, s11, -1283
                  srli         a0, a1, 15
                  slt          t0, t5, ra
sub_1_j3:         jalr         s3, tp, -92 #jump sub_1 -> sub_3
                  la           a0, sub_5
                  sltu         zero, t6, s8
                  addi         a0, a0, 873
                  srai         a3, a6, 14
                  ori          a7, a6, 1417
                  and          a1, s4, t2
                  addi         a3, a5, -914
                  bne          a6, a2, sub_1_j4 #branch to jump instr
                  srai         s7, a1, 21
                  sll          a2, a5, s3
                  andi         t1, s0, 1182
sub_1_j4:         jalr         s3, a0, -872 #jump sub_1 -> sub_5
                  la           ra, sub_4
                  sll          sp, s4, t3
                  ori          s1, s0, 488
                  addi         ra, ra, 511
                  or           s0, s3, t3
                  srli         s7, a6, 14
                  add          a1, zero, s11
sub_1_j5:         jalr         s3, ra, -511 #jump sub_1 -> sub_4
                  sltu         s4, s0, a5
                  andi         s0, t2, -393
                  add          gp, zero, t5
                  and          ra, s4, a4
                  nop
                  xor          s3, a4, a2
                  sra          a7, s6, s5
                  add          s1, s5, t1
                  xor          t0, tp, zero
sub_1_j6:         jal          s3, sub_2 #jump sub_1 -> sub_2
                  slt          a5, a3, s7
                  addi         a3, a0, -1428
                  slt          a4, a0, s4
                  auipc        gp, 302473
                  slli         s1, a3, 9
                  nop
                  slli         a1, s5, 12
                  bne          a6, s11, sub_1_j7 #branch to jump instr
                  or           ra, s10, t4
sub_1_j7:         jal          s3, sub_2 #jump sub_1 -> sub_2
                  slti         s9, tp, 1209
                  srl          s6, sp, s1
                  bltu         t1, t0, 8f
                  add          tp, t4, s7
                  nop
                  slti         s10, s0, 81
                  srai         t6, s9, 17
                  beq          a6, s8, 8f
8:                nop
                  lui          t0, 102651
                  sub          s7, a7, s11
                  lui          a2, 77701
                  lw           s3, 4(s5)
                  lui          s7, 8801
                  sra          a4, s11, t1
                  auipc        t5, 776041
                  addi         s5, s5, 12
                  sltu         a0, s9, t4
                  andi         zero, s5, -1952
                  srl          t1, sp, s7
83:               addi x4, x19, 1
83:               jalr x4, x4, 0
sub_5:            sltiu        s0, s2, -54
                  bltu         t3, a2, sub_5_stack_p
                  slti         gp, t5, 362
                  srli         s10, t2, 26
sub_5_stack_p:    addi         s5, s5, -36
                  slt          a3, s5, a6
                  slti         a0, a3, -1770
                  sltu         gp, a5, s9
                  sw           s3, 4(s5)
                  ori          a5, tp, 619
                  sub          s10, s1, t3
                  srai         s4, t5, 0
                  ori          t5, gp, -190
                  addi         ra, zero, 7 #init loop 0 counter
                  and          s7, s11, s2
                  sll          a4, tp, s11
                  sll          a3, s6, sp
                  sra          sp, s8, t1
                  xor          s4, a3, s1
                  addi         t6, zero, 6 #init loop 0 limit
                  addi         t5, s11, -253
                  and          a2, a2, s0
                  slli         s9, gp, 2
                  sltu         s9, t1, s3
sub_5_1_0_t:      xor          a0, a6, s8
                  addi         ra, ra, -2 #update loop 0 counter
                  bgeu         ra, t6, sub_5_1_0_t #branch for loop 0
                  srl          gp, s11, s5
                  addi         sp, zero, 7 #init loop 0 counter
                  sll          a0, a1, ra
                  sra          s4, a4, a6
                  addi         a1, zero, -13 #init loop 0 limit
                  auipc        a3, 529265
sub_5_6_0_t:      slt          s7, s8, t0
                  slt          s7, a2, ra
                  addi         a4, zero, 2020
                  addi         s1, zero, -1127
                  addi         sp, sp, -10 #update loop 0 counter
                  beq          sp, a1, sub_5_6_0_t #branch for loop 0
                  slti         a5, tp, -1130
                  addi         t1, zero, 7 #init loop 0 counter
                  nop
                  xori         a2, gp, 204
                  sra          s6, a0, s0
                  addi         s4, zero, -18 #init loop 0 limit
sub_5_7_0_t:      slt          s3, t2, t1
                  addi         t1, t1, -5 #update loop 0 counter
                  sltiu        a2, a5, 334
                  sra          s2, s0, t6
                  andi         s1, tp, 140
                  bne          t1, s4, sub_5_7_0_t #branch for loop 0
                  or           t0, s9, s8
                  addi         t6, zero, -8 #init loop 0 counter
                  slt          a6, t5, a5
                  nop
                  lui          s6, 988996
                  srl          t3, t2, s11
                  lui          s9, 638540
                  ori          a4, s6, 1126
                  ori          zero, s11, 1084
                  sltu         zero, t5, tp
                  srai         s8, tp, 12
                  addi         s3, zero, 1 #init loop 0 limit
sub_5_0_0_t:      sub          s7, sp, t0
                  auipc        t2, 639471
                  xor          s1, s0, a6
                  sra          s9, t2, t1
                  and          gp, sp, a6
                  addi         t6, t6, 2 #update loop 0 counter
                  auipc        a4, 770618
                  and          s0, s10, t3
                  xor          s1, s3, s0
                  sltu         a7, s3, s7
                  blt          t6, s3, sub_5_0_0_t #branch for loop 0
                  sltiu        a7, s7, -846
                  addi         tp, zero, 3 #init loop 0 counter
                  sub          t2, t0, s9
                  addi         a7, zero, -17 #init loop 0 limit
                  srl          a3, s6, ra
                  ori          s0, s10, 1876
                  lui          t0, 586575
                  nop
sub_5_8_0_t:      sltiu        a3, s1, -1027
                  sra          s3, gp, gp
                  addi         tp, tp, -4 #update loop 0 counter
                  andi         t3, t5, 40
                  slti         s10, s2, 1008
                  addi         t5, ra, -1029
                  and          s8, ra, t1
                  srai         a4, a4, 15
                  xori         t6, s3, -1572
                  sub          s0, s3, gp
                  ori          ra, s0, -851
                  sra          ra, s0, a1
                  srai         s8, s5, 7
                  slli         a5, ra, 12
                  slti         s1, a5, 1959
                  auipc        a6, 352944
                  sll          t3, s10, gp
                  xori         t1, gp, 1140
                  bne          tp, a7, sub_5_8_0_t #branch for loop 0
                  sub          zero, s5, s1
                  addi         a4, zero, -5 #init loop 1 counter
                  slt          s6, t0, t6
                  nop
                  addi         s0, zero, -10 #init loop 1 limit
sub_5_4_1_t:      xori         a1, a3, -349
                  srai         gp, sp, 24
                  addi         a4, a4, -10 #update loop 1 counter
                  and          a3, tp, tp
                  slti         s2, s4, -562
                  addi         a7, zero, -3 #init loop 0 counter
                  auipc        ra, 713564
                  addi         s10, zero, 2 #init loop 0 limit
                  sub          a6, tp, a2
sub_5_4_0_t:      xori         a0, a1, 2041
                  sll          a0, s7, t2
                  sltu         a0, s0, a7
                  addi         a7, a7, 5 #update loop 0 counter
                  blt          a7, s10, sub_5_4_0_t #branch for loop 0
                  slli         a5, a1, 28
                  bge          a4, s0, sub_5_4_1_t #branch for loop 1
                  xor          s1, s6, sp
                  sltu         s2, t1, s6
                  add          s10, t6, sp
                  blt          a2, a3, 12f
                  auipc        ra, 937101
                  xori         s2, tp, 554
                  beq          s4, a2, 10f
                  srai         tp, a1, 27
                  nop
                  slt          a1, t0, a1
                  nop
10:               slli         s9, s10, 28
                  blt          s8, s11, 30f
12:               auipc        a6, 796891
                  bne          s6, s0, 33f
                  andi         s8, s9, -43
                  xor          sp, t6, t2
                  sra          a4, sp, t0
                  auipc        gp, 782314
                  srai         t1, t2, 7
                  sltiu        a0, sp, -1293
                  slti         a7, t3, 553
                  slt          s2, t5, s2
                  auipc        tp, 735235
                  srli         a4, s0, 23
                  sra          s0, s10, s10
                  lui          zero, 847907
                  bgeu         s0, t0, 33f
                  sltiu        zero, s3, 1829
                  bltu         t5, t4, 44f
                  auipc        t1, 244607
30:               sltiu        s0, s4, 1179
                  and          s1, t2, ra
                  ori          s10, a0, -1266
33:               addi         s7, a3, -1073
                  ori          s8, s8, 781
                  blt          t6, s5, 55f
                  sll          t2, s5, zero
                  ori          s8, s8, -272
                  srl          zero, tp, a0
                  bgeu         a1, a6, 43f
                  bne          a2, s3, 42f
                  addi         s8, s8, 1383
42:               blt          a6, s10, 55f
43:               xor          s2, s2, a1
44:               or           s0, zero, s10
                  slt          s6, a4, s5
                  sll          s9, s1, a0
                  blt          s7, a2, 50f
                  bgeu         s8, s10, 57f
                  lui          tp, 460262
50:               srli         gp, t2, 22
                  bne          a3, s6, 57f
                  beq          t5, tp, 58f
                  sltiu        t3, a7, 496
                  nop
55:               bge          s9, a7, 57f
                  sltu         s7, s7, t1
57:               sra          t2, a2, a0
58:               sra          t5, t1, a6
                  bltu         s3, a0, 73f
                  slti         a0, a3, 823
                  lui          s6, 687881
                  slti         a2, s9, 35
                  add          a4, a4, s2
                  slti         ra, t2, 728
                  addi         t2, t2, 1740
                  addi         s3, zero, 1 #init loop 1 counter
                  addi         s7, zero, 16 #init loop 1 limit
                  andi         s4, t4, -1005
sub_5_2_1_t:      and          ra, s9, a2
                  lui          s9, 947329
                  srli         a4, a2, 5
                  lui          a4, 783608
                  xor          t2, a3, s2
                  sub          a0, gp, s0
                  nop
                  addi         s3, s3, 8 #update loop 1 counter
                  addi         t0, zero, 6 #init loop 0 counter
                  slt          s2, s11, tp
                  sub          a3, s0, a1
                  addi         gp, zero, 8 #init loop 0 limit
                  xori         s9, s9, -676
sub_5_2_0_t:      addi         s4, a7, -104
                  srai         a1, a0, 1
                  addi         t0, t0, 7 #update loop 0 counter
                  sra          s6, t6, a2
                  srl          t6, s6, a4
                  slt          zero, s9, t4
                  slli         tp, s9, 2
                  slti         s1, a6, -298
                  auipc        s10, 92702
                  sra          t1, a3, s1
                  blt          t0, gp, sub_5_2_0_t #branch for loop 0
                  or           a5, zero, a6
                  and          tp, a5, t0
                  slt          t1, s10, zero
                  blt          s3, s7, sub_5_2_1_t #branch for loop 1
                  srli         s10, a1, 29
                  bltu         a6, s0, 78f
                  addi         sp, s2, 366
                  sub          sp, s2, a4
                  bgeu         t0, a1, 82f
                  sra          s0, s11, t1
                  slli         s8, sp, 19
                  bne          t1, a6, 88f
                  addi         s6, zero, 8 #init loop 0 counter
                  or           t5, zero, t5
                  addi         a0, zero, -8 #init loop 0 limit
                  srl          ra, t4, s7
                  addi         a3, t3, -841
sub_5_9_0_t:      lui          s7, 939257
                  addi         s6, s6, -8 #update loop 0 counter
                  xori         s8, tp, -1786
                  beq          s6, a0, sub_5_9_0_t #branch for loop 0
                  slti         gp, a3, 1217
73:               slti         a6, a0, -1981
                  sltiu        a5, a6, -1690
                  bne          s2, s10, 92f
                  xori         t2, s8, -1672
                  auipc        zero, 137465
78:               and          tp, s2, t4
                  lui          t0, 597916
                  or           s3, a3, s10
                  slt          s3, a3, t2
82:               srl          t5, s1, s2
                  sltu         tp, a2, s11
                  bgeu         s3, a6, 100f
                  bne          t3, a1, 103f
                  xor          s10, s2, s7
                  lui          a4, 391078
88:               andi         s1, ra, 877
                  addi         s9, t4, 821
                  srai         gp, a0, 22
                  add          s6, t2, s0
92:               or           t1, s10, a7
                  slti         s2, t0, -2021
                  xori         s0, s9, -1605
                  sltiu        a5, t0, -473
                  beq          s2, a3, 103f
                  sub          a2, a7, a1
                  auipc        a7, 917500
                  srai         s9, s5, 28
100:              srai         t3, sp, 22
                  slti         t3, t6, 1489
                  bgeu         t4, s2, 109f
103:              andi         t0, s8, 1215
                  sltiu        a1, sp, -636
                  ori          s2, s10, 1091
                  srl          ra, s7, s9
                  lui          a6, 587892
                  add          s0, zero, a1
109:              nop
                  sll          a1, t5, a1
                  slt          t3, a5, a2
                  lui          t1, 168149
                  srli         t3, s11, 14
                  auipc        s8, 175679
                  auipc        gp, 77036
                  beq          s3, s4, 132f
                  bge          a1, a4, 118f
118:              slti         s7, s3, 693
                  blt          s6, t4, 122f
                  bne          t1, s0, 138f
                  srl          a2, s1, s2
122:              sltiu        s4, t2, -160
                  auipc        s8, 511573
                  nop
                  add          a0, a4, s4
                  bltu         a6, t2, 135f
                  sra          s6, gp, t5
                  sll          t1, a2, a2
                  slt          a6, s0, s5
                  addi         s7, a0, 214
                  slt          gp, sp, zero
132:              srli         a6, s4, 18
                  sltiu        sp, a3, -1152
                  blt          gp, a4, 151f
135:              bgeu         t0, t5, 152f
                  srl          s10, s3, s3
                  or           s10, t2, a7
138:              bgeu         a2, t4, 158f
                  auipc        tp, 556385
                  sll          s0, a3, t3
                  bge          s8, s0, 148f
                  sltiu        a4, s6, 937
                  nop
                  nop
                  slt          s10, a3, t5
                  srli         s6, a0, 6
                  sll          s10, s0, s3
148:              auipc        zero, 145874
                  add          a0, a7, s10
                  slt          a2, s5, s7
151:              nop
152:              lui          s4, 90240
                  srl          t6, a4, s6
                  slti         a2, tp, -595
                  sltu         t1, t6, zero
                  lui          a6, 489837
                  bltu         ra, a0, 160f
158:              bgeu         t6, t0, 159f
159:              xori         a2, s8, 1731
160:              and          sp, s8, a5
                  srai         s7, t0, 4
                  xori         t2, s3, -415
                  bge          s8, s7, 179f
                  sub          s8, s5, a5
                  or           t5, a1, s10
                  andi         a3, a1, -867
                  sra          a6, s2, a1
                  slli         tp, a5, 15
                  addi         s2, s4, 488
                  sll          a2, a1, t6
                  nop
                  add          s1, zero, t1
                  slli         s1, s5, 20
                  sltiu        s6, s2, 1793
                  srl          s8, a3, s7
                  slli         a3, s3, 24
                  or           a5, s1, s4
                  slli         a1, tp, 12
179:              slli         s6, s6, 18
                  and          t1, a3, s3
                  nop
                  beq          s1, a0, 194f
                  blt          a0, gp, 196f
                  nop
                  srl          a7, s5, s11
                  sub          a6, a6, s3
                  beq          a0, a6, 206f
                  ori          t3, a6, 1665
                  xori         tp, a2, 1373
                  slli         t2, a6, 29
                  lui          a6, 594460
                  addi         s4, zero, 5 #init loop 0 counter
                  xori         a0, s3, 763
                  auipc        s8, 485163
                  sltiu        s2, t6, -261
                  or           gp, ra, t5
                  sll          gp, sp, a5
                  sub          s8, a2, t4
                  xori         sp, s1, 1859
                  addi         t2, zero, -3 #init loop 0 limit
                  andi         ra, t2, -1481
                  add          s6, t0, t2
                  sltu         s6, a1, t0
                  auipc        s2, 405721
                  slt          a6, s9, tp
                  nop
sub_5_3_0_t:      addi         s9, zero, 1331
                  xor          a1, a1, zero
                  addi         s4, s4, -2 #update loop 0 counter
                  slt          s8, s2, t3
                  or           a0, s10, a0
                  sltiu        a3, a5, -456
                  lui          a4, 422627
                  auipc        ra, 146429
                  srai         a0, a2, 15
                  and          a4, s10, tp
                  bge          s4, t2, sub_5_3_0_t #branch for loop 0
                  slli         s3, a5, 7
                  bgeu         s5, s1, 212f
                  auipc        ra, 791008
                  addi         s8, zero, 5 #init loop 0 counter
                  ori          s6, t3, -1958
                  sll          s1, s7, s11
                  addi         t0, zero, 13 #init loop 0 limit
                  srai         s9, a5, 2
sub_5_5_0_t:      sltiu        a0, s1, 895
                  addi         s8, s8, 8 #update loop 0 counter
                  sll          s9, gp, a3
                  nop
                  beq          s8, t0, sub_5_5_0_t #branch for loop 0
                  lui          a3, 484165
194:              ori          s9, s1, -1133
                  slt          t2, s2, t6
196:              bge          s4, t5, 212f
                  sll          s2, s6, s7
                  xor          a1, a6, s10
                  ori          s3, s8, -393
                  blt          a4, sp, 209f
                  lui          a0, 58342
                  lui          ra, 964072
                  sll          a3, s5, a3
                  sltiu        t0, t2, -1629
                  add          a4, s6, s4
206:              beq          t0, s3, 222f
                  addi         tp, tp, 1610
                  add          s6, ra, t3
209:              blt          s7, ra, 216f
                  slt          a7, s11, s11
                  bne          a4, s11, 225f
212:              bge          a1, a0, 228f
                  nop
                  sltiu        a3, t3, -451
                  nop
216:              slli         t0, t3, 8
                  slt          s6, t5, t1
                  blt          s11, t0, 220f
                  bge          s7, a4, 228f
220:              auipc        s10, 148475
                  slti         s1, t0, -1451
222:              xori         a2, s2, 557
                  bgeu         s6, s8, 227f
                  ori          s9, a1, -1570
225:              srli         s0, s10, 0
                  beq          s4, a1, 229f
227:              sra          t5, a0, t6
                  addi         gp, zero, 10 #init loop 1 counter
                  ori          t0, s8, -1338
                  add          a6, s10, t1
                  addi         s8, zero, 14 #init loop 1 limit
                  auipc        sp, 9221
sub_5_10_1_t:     xor          a0, a0, s8
                  srl          t1, t5, tp
                  addi         gp, gp, 7 #update loop 1 counter
                  slt          a5, s0, s5
                  addi         s2, zero, 3 #init loop 0 counter
                  sra          sp, a5, zero
                  addi         s6, zero, -16 #init loop 0 limit
                  srl          a2, s9, sp
                  slli         s9, ra, 12
sub_5_10_0_t:     or           t2, s9, s1
                  slli         ra, a4, 24
                  addi         s2, s2, -7 #update loop 0 counter
                  add          a2, sp, s5
                  bge          s2, s6, sub_5_10_0_t #branch for loop 0
                  add          t1, a6, t6
                  nop
                  srai         a6, a6, 4
                  xor          a4, s1, t4
                  srl          s4, a1, gp
                  andi         t1, s11, 1051
                  bltu         gp, s8, sub_5_10_1_t #branch for loop 1
                  xor          t2, s10, s7
228:              sll          a3, a4, gp
229:              bltu         s5, t1, 247f
                  sltiu        s0, s3, 1494
                  sltu         s4, a3, a3
                  srai         t3, s5, 27
                  add          a4, ra, s11
                  slt          a0, s2, s1
                  sub          a3, s6, tp
                  srli         s2, a3, 1
                  add          ra, s9, s4
                  bgeu         t3, tp, 248f
                  bgeu         a0, s7, 256f
                  slti         a4, s4, 1628
                  sltu         t0, a5, s3
                  lui          gp, 999901
                  slli         a2, t3, 22
                  slt          ra, s6, t5
                  xor          s8, s4, s11
                  auipc        gp, 901246
247:              xor          s10, t1, sp
248:              ori          t1, t4, -907
                  andi         s8, a3, -323
                  bge          s0, s0, 256f
                  and          t2, t4, s7
                  addi         t2, t6, -1801
                  or           a5, a0, t3
                  bgeu         s9, s6, 260f
                  srai         a6, s5, 26
256:              sra          s6, t4, s5
                  andi         a7, a0, 1099
                  nop
                  bltu         a3, t0, 261f
260:              srli         s0, a6, 9
261:              slt          s9, s10, a4
                  srl          a7, a5, a2
                  auipc        a6, 924226
                  beq          s10, a5, 271f
                  xori         gp, a5, -1693
                  xori         s10, a2, -1074
                  addi         zero, a7, -344
                  bgeu         s6, a6, 273f
                  and          t2, a7, s6
                  bltu         s1, a3, 283f
271:              andi         zero, s0, 1880
                  add          a5, a2, tp
273:              srl          t6, t6, s9
                  srl          a7, s8, t1
                  slli         s2, a7, 16
                  sra          a6, a2, a5
                  add          a0, t0, s4
                  slli         t0, s3, 14
                  blt          a0, s1, 297f
                  slli         s4, s3, 16
                  slti         a5, s4, -1298
                  bgeu         t1, s2, 289f
283:              sra          a2, t5, t6
                  sltu         s6, s9, s10
                  srl          s4, a3, t6
                  bltu         sp, t6, 290f
                  srl          a2, t1, t2
                  bge          s0, a2, 290f
289:              sra          s10, a4, s3
290:              slt          t0, s4, s9
                  bgeu         a7, a1, 298f
                  slli         t1, t6, 28
                  xor          s2, a0, s2
                  andi         s9, t0, 1160
                  bgeu         sp, t1, 308f
                  auipc        a7, 155371
297:              add          a6, a4, s10
298:              ori          a6, a6, 1611
                  lui          s7, 1035913
                  xori         s3, s6, -145
                  srli         a3, a6, 11
                  sub          a2, sp, tp
                  sub          s10, a1, t2
                  nop
                  sra          s10, a1, t3
                  srai         s8, s5, 5
                  blt          s10, s2, 309f
308:              bne          t3, s1, 315f
309:              srai         a4, s9, 24
                  beq          a5, a6, 313f
                  ori          a2, s8, -1668
                  xor          s7, s11, s0
313:              sltu         t2, t0, s8
                  bge          s0, a0, 330f
315:              bge          s8, s6, 324f
                  addi         s3, t4, -289
                  sltiu        s7, s4, 1302
                  slti         a6, s8, 327
                  srai         s4, s11, 4
                  andi         a0, t5, 590
                  slli         s1, t4, 4
                  or           a2, tp, t0
                  and          s8, s6, t4
324:              lui          sp, 443427
                  beq          s11, a1, 345f
                  slli         t6, a7, 0
                  srl          s2, zero, a7
                  and          zero, a5, s7
                  xori         a5, a0, -1556
330:              srli         s6, t1, 11
                  or           s9, t0, ra
                  auipc        s3, 977586
                  sltiu        gp, s1, -1747
                  auipc        a6, 770998
                  sll          s3, s1, s6
                  srai         a5, a6, 20
                  srai         a7, ra, 0
                  sra          s0, s1, t0
                  srai         zero, s5, 8
                  ori          s0, s11, -166
                  sltu         a1, a2, s3
                  add          t6, s9, s11
                  bne          s0, ra, 361f
                  ori          a7, a1, -1432
345:              slti         s4, s2, -1728
                  bltu         s3, s3, 366f
                  sltiu        t0, tp, 263
                  beq          s11, s7, 354f
                  sltu         gp, s8, s7
                  sltiu        a6, t3, -1404
                  bgeu         t4, t4, 368f
                  beq          a3, a5, 369f
                  sra          s9, t1, a3
354:              lui          gp, 588322
                  bgeu         s8, s0, 361f
                  or           s8, s1, s9
                  add          a6, a5, t5
                  sltiu        t3, s11, 1278
                  andi         s6, a4, -633
                  and          a5, a1, a4
361:              addi         tp, s4, -704
                  auipc        a3, 33050
                  bge          gp, s4, 373f
                  auipc        s6, 389027
                  xor          a2, s10, s6
366:              add          t2, a2, a0
                  and          a7, a6, t6
368:              bne          a3, s0, 373f
369:              andi         s7, a0, -189
                  beq          a4, s0, 386f
                  xori         s1, t1, -1666
                  or           a5, t6, t5
373:              and          tp, t6, s10
                  ori          s2, s4, 1430
                  add          s9, a6, t1
                  sll          s0, s1, s0
                  sll          ra, t6, t4
                  srl          s7, zero, s3
                  bge          s10, t3, 388f
                  slli         a7, s7, 25
                  bltu         s0, t1, 393f
                  slli         t6, s8, 29
                  slli         a7, t6, 19
                  srli         sp, t1, 14
                  xori         t2, t0, -984
386:              add          t5, sp, a4
                  blt          zero, a3, 403f
388:              bgeu         s2, s3, 407f
                  slti         t3, t0, -1751
                  bgeu         s7, s3, 406f
                  add          s6, sp, t5
                  bge          sp, t2, 395f
393:              auipc        t2, 158235
                  slt          t0, tp, s11
395:              srai         tp, a4, 2
                  bne          s4, a4, 397f
397:              addi         a7, s4, -765
                  or           s3, s1, t4
                  sltu         t5, t1, a6
                  sub          a5, a6, tp
                  beq          t1, s7, 414f
                  bne          a5, s11, 416f
403:              add          tp, t3, t1
                  sub          s3, s7, a6
                  bge          s11, s2, 423f
406:              sll          s9, s0, zero
407:              andi         s7, gp, -48
                  add          t1, s7, t6
                  bgeu         s8, gp, 418f
                  blt          t4, tp, 415f
                  lui          a5, 324945
                  sltu         a0, s8, a6
                  xori         a1, a0, 65
414:              bne          a4, t1, 434f
415:              blt          a3, a4, 422f
416:              and          a7, s6, s10
                  andi         s0, a5, 468
418:              xor          s1, t3, a4
                  beq          s3, t4, 436f
                  slli         a1, s11, 20
                  sra          t2, t0, t5
422:              sra          a5, t6, sp
423:              slli         s9, a6, 22
                  lui          zero, 487734
                  srli         s8, t5, 1
                  slti         a1, s1, -1344
                  bgeu         t0, a1, 434f
                  bge          s9, tp, 444f
                  blt          s8, a2, 435f
                  addi         s9, zero, -1130
                  xor          a7, a3, a2
                  slli         t0, a3, 27
                  srai         zero, a6, 6
434:              or           t6, a4, t3
435:              sll          a1, a4, sp
436:              bgeu         a0, t5, 456f
                  sltiu        s0, zero, 363
                  beq          s6, s2, 451f
                  lui          tp, 57718
                  slt          a4, a5, t2
                  bge          a7, ra, 442f
442:              addi         sp, s0, 436
                  and          a1, ra, a6
444:              beq          s10, a3, 462f
                  beq          t1, s10, 461f
                  andi         s4, a5, 2023
                  sub          t5, a7, s2
                  sltiu        t6, s8, 1562
                  blt          a4, a4, 459f
                  slt          a4, gp, zero
451:              slt          s1, s8, a3
                  bltu         gp, s1, 455f
                  bgeu         s11, s0, 459f
                  lui          ra, 567381
455:              bltu         s10, a1, 459f
456:              and          a2, s5, a1
                  sltiu        s3, t6, 1116
                  slt          sp, s0, t1
459:              and          sp, s4, s2
                  bge          t4, t0, 463f
461:              bne          s1, s11, 474f
462:              srai         a5, sp, 30
463:              sltiu        t0, s7, 350
                  or           s3, t1, a1
                  sltiu        t1, ra, -1700
                  sltu         tp, a4, a2
                  bltu         a2, a1, 469f
                  blt          t6, a7, 485f
469:              andi         t0, s10, 225
                  srl          a7, a0, s4
                  bge          a4, sp, 487f
                  sltu         ra, a3, s9
                  slli         a4, t4, 0
474:              and          t6, t4, t5
                  bne          a3, s6, 491f
                  auipc        gp, 1039287
                  slt          s3, s7, zero
                  ori          t1, t5, -1439
                  xori         t3, s8, 180
                  blt          a5, a2, 489f
                  andi         t5, s7, -1669
                  bltu         s8, s9, 496f
                  slt          a5, zero, s8
                  srai         a0, s6, 20
485:              sub          t6, s8, a3
                  srl          t5, gp, a1
487:              addi         s7, a3, 1480
                  or           s3, s10, s4
489:              auipc        t3, 314317
                  nop
491:              sll          a7, s7, t4
                  and          s2, s1, sp
                  sltiu        s10, t6, -1597
                  andi         s1, s3, 1798
                  srl          t6, s1, gp
496:              xori         a2, a7, -470
                  srl          sp, t5, a4
                  srai         s4, t5, 10
                  addi         s10, s3, -438
                  xori         t0, sp, -120
                  add          gp, a6, s1
                  bne          t4, gp, 509f
                  slti         t3, a2, -1324
                  andi         t1, a3, 1588
                  nop
                  xori         a5, a1, -181
                  sll          s7, a0, t5
                  or           t1, s9, t2
509:              andi         t6, t5, -1332
                  srai         a6, a4, 17
                  bne          zero, s8, 513f
                  bne          s5, t3, 524f
513:              add          tp, s8, s1
                  sll          s0, s0, s3
                  srai         t0, s3, 6
                  bne          sp, sp, 534f
                  and          t0, ra, a0
                  slti         s7, a7, -762
                  sltiu        a7, s10, -1230
                  addi         t0, s11, -970
                  xor          sp, t0, a2
                  add          t5, t5, s11
                  xori         a3, a3, -2016
524:              or           s6, a4, s7
                  bltu         a1, a6, 544f
                  blt          s8, t0, 538f
                  srli         s6, s8, 23
                  sltu         a6, s5, s11
                  auipc        a7, 940137
                  and          s3, a6, a0
                  slti         s7, t6, 1230
                  sra          a2, s0, a2
                  bne          s3, a0, 549f
534:              and          s6, s11, a6
                  srli         a2, a2, 30
                  sra          t3, t4, t6
                  blt          tp, a2, 556f
538:              xor          t0, zero, ra
                  sll          a4, s3, s5
                  sltiu        s6, a3, -1399
                  bge          gp, s2, 544f
                  srai         t3, gp, 8
                  or           a6, ra, a5
544:              srli         t6, s7, 16
                  auipc        a1, 490707
                  beq          a7, s9, 551f
                  ori          s6, t0, -256
                  sltiu        zero, s0, 498
549:              auipc        s10, 450852
                  addi         s1, tp, -641
551:              sub          t5, s5, ra
                  bne          t5, t4, 569f
                  blt          t0, zero, 562f
                  bge          t3, a1, 567f
                  nop
556:              slli         a4, t5, 22
                  xori         a3, t3, -845
                  srl          t5, t4, s9
                  sra          s0, ra, a5
                  sub          tp, s6, a2
                  slt          s4, zero, a6
562:              bgeu         s11, sp, 569f
                  ori          s1, s6, -105
                  srl          s2, a2, t5
                  slli         s10, a3, 5
                  bge          a2, t2, 568f
567:              nop
568:              blt          a3, s2, 575f
569:              sltu         a6, s10, a3
                  sll          a5, a0, t0
                  slli         a4, t4, 8
                  sub          t3, t5, t2
                  bne          s2, zero, 575f
                  and          s6, t5, s4
575:              xori         s6, s3, -269
                  or           s7, t4, s6
                  sltiu        s4, tp, -1781
                  lw           s3, 4(s5)
                  auipc        gp, 283549
                  sub          s10, a6, s10
                  addi         s5, s5, 36
                  or           a6, a0, s4
                  slt          a0, a2, s3
                  auipc        s8, 270824
815:              addi x8, x19, 1
815:              jalr x8, x8, 0
sub_3:            lui          s6, 818643
                  addi         s4, a7, -1091
                  addi         s5, s5, -20
                  xor          a7, gp, ra
                  xori         a2, s0, -722
                  addi         a5, s0, -1380
                  xor          s1, t5, s2
                  xori         s1, a6, 708
                  sw           s3, 4(s5)
                  sltu         tp, s8, ra
                  sra          sp, a0, s8
                  srli         sp, ra, 21
                  addi         a3, zero, 4 #init loop 1 counter
                  addi         s9, zero, 19 #init loop 1 limit
                  slt          gp, s10, a5
sub_3_0_1_t:      sltu         s7, s0, t2
                  addi         a3, a3, 5 #update loop 1 counter
                  sub          t5, a7, a6
                  addi         a0, zero, -5 #init loop 0 counter
                  addi         s3, zero, -5 #init loop 0 limit
                  sub          sp, a3, s5
sub_3_0_0_t:      ori          a7, t6, -770
                  addi         a0, a0, -3 #update loop 0 counter
                  or           s10, a5, s10
                  bge          a0, s3, sub_3_0_0_t #branch for loop 0
                  beq          a3, s9, sub_3_0_1_t #branch for loop 1
                  andi         s0, s10, 1201
                  addi         t1, zero, 2 #init loop 0 counter
                  sltiu        s7, s9, -581
                  or           sp, gp, a6
                  srai         t3, t5, 20
                  slli         a0, s5, 9
                  addi         s4, zero, -6 #init loop 0 limit
                  lui          a6, 385694
                  lui          a1, 631981
sub_3_7_0_t:      lui          zero, 311571
                  addi         t1, t1, -8 #update loop 0 counter
                  xor          zero, a7, a5
                  andi         s3, t3, 2016
                  or           a2, s0, s4
                  lui          gp, 568112
                  beq          t1, s4, sub_3_7_0_t #branch for loop 0
                  add          a1, ra, s2
                  addi         a4, zero, 10 #init loop 0 counter
                  sra          tp, t3, s10
                  addi         a5, zero, -2 #init loop 0 limit
                  sra          a1, t6, s5
sub_3_17_0_t:     xori         t5, s11, 367
                  andi         t1, a3, 1657
                  lui          t1, 668581
                  addi         a4, a4, -9 #update loop 0 counter
                  sra          a2, tp, t3
                  bge          a4, a5, sub_3_17_0_t #branch for loop 0
                  or           s3, s6, s11
                  addi         a4, zero, -3 #init loop 1 counter
                  auipc        s2, 106856
                  addi         s9, zero, 17 #init loop 1 limit
                  xori         sp, a7, 850
                  addi         s4, a5, 1588
sub_3_6_1_t:      auipc        t2, 865395
                  slt          ra, a0, s7
                  addi         a4, a4, 6 #update loop 1 counter
                  andi         ra, sp, 955
                  addi         s10, zero, 3 #init loop 0 counter
                  sll          s2, t5, s7
                  addi         s0, zero, 3 #init loop 0 limit
sub_3_6_0_t:      xori         a6, s1, -2014
                  addi         s10, s10, -2 #update loop 0 counter
                  sltiu        t3, gp, 2021
                  nop
                  ori          tp, t2, -652
                  or           tp, tp, a0
                  slt          sp, tp, tp
                  nop
                  ori          t2, a0, -1136
                  xori         t2, sp, -760
                  bgeu         s10, s0, sub_3_6_0_t #branch for loop 0
                  srai         tp, sp, 23
                  sub          s2, s0, t5
                  sltiu        tp, s5, -1251
                  sltu         a6, t3, t3
                  and          zero, t0, s10
                  bltu         a4, s9, sub_3_6_1_t #branch for loop 1
                  nop
                  addi         s8, zero, 7 #init loop 1 counter
                  addi         t1, zero, 17 #init loop 1 limit
sub_3_13_1_t:     andi         a7, a3, 265
                  addi         s8, s8, 5 #update loop 1 counter
                  addi         ra, zero, 0 #init loop 0 counter
                  sltu         gp, t2, gp
                  addi         sp, zero, 8 #init loop 0 limit
sub_3_13_0_t:     sltiu        s3, s11, -1940
                  addi         ra, ra, 4 #update loop 0 counter
                  beq          ra, sp, sub_3_13_0_t #branch for loop 0
                  lui          a4, 551435
                  bltu         s8, t1, sub_3_13_1_t #branch for loop 1
                  srai         a7, sp, 12
                  addi         t6, zero, 7 #init loop 1 counter
                  and          a2, s7, t5
                  and          s1, s6, ra
                  and          t2, sp, s9
                  sub          ra, s7, s4
                  sltu         s4, s6, t3
                  slli         a1, s2, 10
                  addi         tp, zero, 5 #init loop 1 limit
                  auipc        s9, 766890
                  sltiu        zero, s5, -122
                  xori         s9, s1, -1092
sub_3_11_1_t:     xor          zero, a5, t4
                  srli         s6, s6, 13
                  addi         t6, t6, -4 #update loop 1 counter
                  auipc        s6, 592488
                  addi         a4, zero, -5 #init loop 0 counter
                  slli         a1, t0, 9
                  addi         s7, zero, -15 #init loop 0 limit
                  xor          s8, a6, zero
                  ori          a5, s6, -544
sub_3_11_0_t:     lui          s8, 465094
                  srl          a2, gp, a7
                  sltiu        s2, t1, -1256
                  nop
                  srai         a2, s0, 18
                  addi         a4, a4, -5 #update loop 0 counter
                  nop
                  xor          s8, s1, a0
                  bge          a4, s7, sub_3_11_0_t #branch for loop 0
                  addi         a7, zero, 1161
                  slli         a0, s4, 16
                  sub          ra, s6, zero
                  ori          t5, t1, 1026
                  bgeu         t6, tp, sub_3_11_1_t #branch for loop 1
                  srai         s6, ra, 17
                  addi         t2, zero, 1 #init loop 0 counter
                  addi         a2, zero, 16 #init loop 0 limit
sub_3_4_0_t:      lui          s9, 804468
                  addi         t2, t2, 8 #update loop 0 counter
                  blt          t2, a2, sub_3_4_0_t #branch for loop 0
                  auipc        s2, 592540
                  addi         s6, zero, -8 #init loop 0 counter
                  xori         s2, s9, -1261
                  addi         a5, zero, -1233
                  xori         t3, ra, -1983
                  add          s7, t0, s1
                  slt          s0, s4, zero
                  sll          a5, tp, tp
                  nop
                  xor          t6, s2, gp
                  slti         a1, t4, -973
                  sltiu        t2, s6, 75
                  sll          s3, zero, a2
                  srai         a4, zero, 20
                  addi         t0, tp, 816
                  slli         gp, s0, 29
                  srai         t1, t5, 9
                  sll          s0, t3, t3
                  xori         a5, sp, -1107
                  addi         sp, zero, -19 #init loop 0 limit
                  srai         zero, sp, 8
                  sll          t1, zero, s10
sub_3_5_0_t:      slt          a6, t3, t6
                  add          tp, a0, s5
                  addi         s6, s6, -8 #update loop 0 counter
                  slt          a5, s11, t1
                  slt          gp, t0, a5
                  bge          s6, sp, sub_3_5_0_t #branch for loop 0
                  xori         s9, s6, -93
                  addi         a7, zero, 8 #init loop 1 counter
                  srli         s10, a4, 19
                  sltu         a3, t1, s10
                  slli         t2, gp, 26
                  srli         a6, a6, 5
                  auipc        tp, 1003393
                  xor          s3, s5, a4
                  addi         t3, zero, 7 #init loop 1 limit
sub_3_1_1_t:      sub          a4, tp, s9
                  xori         s1, zero, -117
                  sub          t0, a5, s4
                  addi         a7, a7, -6 #update loop 1 counter
                  addi         sp, zero, -8 #init loop 0 counter
                  slt          tp, t0, s5
                  addi         a2, a5, -876
                  sll          s0, s6, s3
                  slt          gp, t2, s7
                  addi         s7, zero, -18 #init loop 0 limit
sub_3_1_0_t:      or           a2, t3, ra
                  auipc        s0, 436954
                  nop
                  addi         sp, sp, -10 #update loop 0 counter
                  sra          s3, t3, a5
                  sltiu        s10, a5, -1767
                  bge          sp, s7, sub_3_1_0_t #branch for loop 0
                  sra          tp, a2, a1
                  bgeu         a7, t3, sub_3_1_1_t #branch for loop 1
                  add          gp, zero, t0
                  addi         ra, zero, 0 #init loop 0 counter
                  xor          s1, t1, t3
                  sub          s4, s6, t5
                  sltiu        a4, gp, -162
                  nop
                  addi         gp, zero, -2 #init loop 0 limit
                  auipc        s1, 887046
sub_3_15_0_t:     nop
                  sltu         zero, ra, t4
                  nop
                  srl          s1, s3, t6
                  addi         ra, ra, -5 #update loop 0 counter
                  nop
                  or           t0, a0, a3
                  slti         s1, s5, 1512
                  slli         s0, s8, 18
                  xori         t1, s1, 1896
                  sltiu        t6, gp, 1510
                  bge          ra, gp, sub_3_15_0_t #branch for loop 0
                  srl          tp, a1, t5
                  addi         a0, zero, -5 #init loop 1 counter
                  lui          a2, 337033
                  srli         a2, t2, 21
                  addi         a1, zero, 14 #init loop 1 limit
                  and          s6, a3, s9
                  addi         t1, t3, -651
sub_3_16_1_t:     slti         a7, t0, -1574
                  nop
                  addi         a0, a0, 4 #update loop 1 counter
                  srli         a2, zero, 22
                  slli         s1, s3, 24
                  auipc        s0, 944020
                  xor          a7, s7, a7
                  or           sp, s0, a4
                  or           sp, s5, s9
                  andi         zero, tp, -1063
                  addi         s4, zero, 10 #init loop 0 counter
                  sltu         a7, ra, t4
                  nop
                  addi         a5, zero, 10 #init loop 0 limit
                  andi         s6, s11, 1516
                  srai         s2, t0, 10
sub_3_16_0_t:     xori         s3, t4, 938
                  xori         a7, t1, -963
                  addi         s4, s4, -8 #update loop 0 counter
                  srli         a4, s5, 0
                  srl          ra, s4, t3
                  bgeu         s4, a5, sub_3_16_0_t #branch for loop 0
                  sll          t3, t6, t1
                  srl          s6, s6, t3
                  or           t5, tp, zero
                  andi         t6, s0, 1358
                  xori         t1, t4, -1685
                  bltu         a0, a1, sub_3_16_1_t #branch for loop 1
                  sra          a3, t1, a2
                  slli         t2, a5, 1
                  bgeu         zero, s2, 3f
                  bge          s4, a1, 14f
3:                sltiu        t0, t1, 807
                  bne          a4, s3, 16f
                  and          a3, t5, t6
                  andi         s1, s2, 1774
                  nop
                  bltu         a5, t1, 13f
                  lui          s3, 187647
                  srl          s4, a2, s3
                  auipc        ra, 213358
                  slli         s2, s9, 21
13:               srli         a1, s6, 12
14:               srli         a3, t5, 24
                  xori         a1, s0, -731
16:               slti         s3, t6, 1318
                  srli         t6, s10, 15
                  blt          a4, s5, 37f
                  sub          t1, t1, a0
                  addi         s0, zero, -3 #init loop 1 counter
                  nop
                  addi         a4, zero, 15 #init loop 1 limit
                  srli         tp, a2, 25
sub_3_8_1_t:      ori          a2, a4, 935
                  srl          t3, s3, a2
                  addi         s0, s0, 9 #update loop 1 counter
                  addi         ra, zero, -6 #init loop 0 counter
                  and          s9, a7, a3
                  addi         s8, zero, -14 #init loop 0 limit
sub_3_8_0_t:      slti         t2, sp, 1473
                  addi         ra, ra, -6 #update loop 0 counter
                  slti         t6, a7, -625
                  bge          ra, s8, sub_3_8_0_t #branch for loop 0
                  beq          s0, a4, sub_3_8_1_t #branch for loop 1
                  slli         sp, s1, 16
                  bne          s0, a5, 30f
                  and          a6, s2, s5
                  bge          t2, s9, 40f
                  bgeu         s10, t4, 40f
                  slt          a0, sp, t4
                  nop
                  xor          t0, a5, s10
                  bgeu         s4, s6, 38f
                  andi         s1, tp, 1874
                  blt          s1, sp, 36f
30:               slti         s8, sp, 861
                  beq          a6, s3, 45f
                  bne          t5, s4, 37f
                  xor          s2, s2, sp
                  bge          a7, tp, 50f
                  ori          s8, a2, 958
36:               xori         sp, s1, 1681
37:               beq          s8, a7, 52f
38:               beq          a3, t0, 45f
                  or           zero, tp, a7
40:               bne          s8, a7, 53f
                  bne          gp, a3, 43f
                  lui          s8, 273441
43:               blt          s0, s4, 54f
                  srli         zero, s0, 11
45:               slt          a5, t1, t5
                  nop
                  slli         t1, s8, 1
                  andi         s9, s11, 2034
                  nop
50:               sltiu        tp, t6, -1539
                  sll          s7, a1, t6
52:               sltiu        t5, a7, 953
53:               blt          t5, s1, 66f
54:               and          a5, sp, s6
                  ori          t2, s3, -676
                  xor          s1, s2, t0
                  srl          s3, s6, a7
                  xor          a5, t0, s3
                  srli         gp, a6, 20
                  slt          tp, a3, zero
                  bltu         s1, s1, 79f
                  srli         s8, gp, 17
                  srli         t1, tp, 24
                  sub          tp, zero, t4
                  sltu         s3, a2, s11
66:               slt          t0, tp, t5
                  sltu         a5, a1, t2
                  beq          a7, a7, 69f
69:               sra          t5, s2, a6
                  add          t2, t4, s11
                  xor          s6, s0, tp
                  xori         s7, s3, 1272
                  lui          t6, 949189
                  lui          s8, 315256
                  bgeu         gp, t3, 85f
                  lui          t5, 27658
                  sra          t5, a1, t0
                  sra          a0, t3, a4
79:               slti         a4, s3, 582
                  beq          s9, s4, 100f
                  addi         t1, s11, 1712
                  sub          a5, s9, s3
                  sltu         sp, s4, a7
                  ori          a3, s10, -293
85:               ori          ra, a5, -1998
                  sltu         s1, a3, s6
                  srai         a7, a7, 14
                  sub          s2, t1, sp
                  andi         a4, t6, 1112
                  bne          tp, a0, 94f
                  lui          s3, 45087
                  xor          s2, s2, s9
                  auipc        t5, 150614
94:               sub          s4, s0, s11
                  lui          a1, 349289
                  sll          a1, s10, s4
                  bge          t1, a3, 112f
                  bge          a2, a2, 99f
99:               bgeu         s10, a1, 112f
100:              sra          t2, s11, s4
                  addi         tp, t4, -1054
                  slti         sp, s1, 1087
                  and          a7, t2, a7
                  ori          a1, a3, -133
                  ori          s6, s6, -25
                  sll          s4, s6, t5
                  xori         a5, t3, 325
                  auipc        a2, 869259
                  auipc        s1, 563588
                  bne          s6, s4, 116f
                  xor          t6, a2, s8
112:              ori          t0, zero, 573
                  add          ra, t5, t2
                  sll          s3, s9, a4
                  add          a7, t0, a6
116:              beq          s7, s6, 127f
                  srl          a3, s2, tp
                  sub          s7, t6, t4
                  add          t1, s8, t5
                  andi         s3, s10, -1309
                  sll          a1, t6, zero
                  and          tp, s9, t4
                  add          s9, a1, a7
                  xori         a4, a7, -77
                  slti         t1, s5, 864
                  addi         s1, zero, -2 #init loop 1 counter
                  addi         tp, zero, 8 #init loop 1 limit
                  sll          a6, s4, a7
sub_3_2_1_t:      addi         s10, zero, 80
                  xor          s10, s3, a4
                  slli         t0, s7, 9
                  addi         s1, s1, 10 #update loop 1 counter
                  addi         a5, zero, 4 #init loop 0 counter
                  sltiu        t3, s5, -196
                  andi         s3, s7, 14
                  srl          t2, t4, s4
                  addi         t6, zero, 10 #init loop 0 limit
sub_3_2_0_t:      slti         a1, zero, 915
                  and          s6, s0, a3
                  slt          s6, s9, a0
                  nop
                  addi         a5, a5, 6 #update loop 0 counter
                  xor          gp, s2, t5
                  or           t2, t3, a3
                  sub          a1, zero, s4
                  nop
                  bne          a5, t6, sub_3_2_0_t #branch for loop 0
                  xori         a2, s5, -602
                  bne          s1, tp, sub_3_2_1_t #branch for loop 1
                  sltiu        s9, a2, -1368
                  auipc        a6, 972332
127:              srai         a3, t3, 16
                  bgeu         s3, ra, 141f
                  sltiu        t2, s0, -1683
                  ori          sp, t4, -1773
                  lui          t6, 229789
                  slti         t2, s1, -1895
                  addi         tp, gp, 1543
                  bge          t2, s10, 149f
                  blt          a3, a3, 154f
                  ori          a6, sp, 1186
                  bgeu         zero, s2, 150f
                  slli         s2, s1, 7
                  or           a3, sp, t6
                  and          ra, a6, s4
141:              lui          t5, 765593
                  blt          s4, t2, 153f
                  bgeu         a4, s5, 145f
                  srli         s9, t4, 22
145:              bne          tp, sp, 163f
                  bne          s8, gp, 161f
                  srl          a6, s2, t3
                  or           gp, ra, a5
149:              xor          t5, t3, a0
150:              sltiu        s8, s5, 198
                  slt          t0, t3, s10
                  xor          s10, s11, sp
153:              slti         ra, t0, -795
154:              andi         zero, s8, 1495
                  or           a4, s3, s9
                  bgeu         a1, sp, 169f
                  bge          s5, t0, 177f
                  bge          a5, tp, 165f
                  beq          t1, s0, 172f
                  bltu         a7, a3, 164f
161:              and          a5, s3, s9
                  xor          s1, a1, s6
163:              add          gp, a5, tp
164:              slt          s4, s10, a4
165:              beq          s4, s0, 175f
                  slt          tp, zero, s10
                  slti         a5, a6, -842
                  addi         a6, gp, -1284
169:              slli         gp, a6, 5
                  andi         a4, s2, -629
                  auipc        s3, 510371
172:              addi         s3, a5, 155
                  srl          sp, a4, t2
                  xor          s10, ra, a4
175:              addi         t1, s11, 983
                  srli         s6, s2, 6
177:              bltu         t5, s3, 184f
                  sltu         sp, s7, a3
                  srli         t6, s9, 27
                  sltu         a4, t1, s1
                  xor          t5, ra, s0
                  lui          a6, 443368
                  nop
184:              beq          t1, a4, 202f
                  lui          t5, 341064
                  sltiu        s4, s7, 1301
                  or           a6, s10, s4
                  or           t0, a1, a5
                  beq          t2, s7, 201f
                  srai         s4, a4, 19
                  sltiu        ra, s4, -21
                  or           a6, s5, a3
                  xori         sp, t5, 699
                  blt          s1, s0, 206f
                  sltu         a2, s9, a0
                  beq          t3, t0, 209f
                  andi         a7, t2, -509
                  slti         s4, ra, -1558
                  slt          s1, zero, t4
                  bne          ra, gp, 214f
201:              sltu         s8, t6, s5
202:              sltu         t1, s2, a5
                  beq          zero, s2, 209f
                  slli         ra, a6, 26
                  add          gp, a7, t4
206:              sll          s2, s6, s1
                  nop
                  add          t5, s5, t3
209:              andi         t2, s5, 1776
                  lui          a3, 554273
                  blt          a0, s4, 222f
                  andi         s8, t6, 516
                  srl          s1, t0, a2
214:              bne          s2, zero, 230f
                  sltiu        s8, s8, 1077
                  slt          gp, a3, t3
                  lui          s1, 217127
                  addi         gp, s5, 1204
                  andi         t1, t4, -1791
                  and          tp, t4, s1
                  beq          s3, s4, 222f
222:              nop
                  slt          t6, a6, sp
                  bgeu         t5, s2, 234f
                  sltu         a2, s9, tp
                  srli         a0, sp, 15
                  slli         sp, t0, 15
                  beq          tp, s2, 245f
                  xor          a1, sp, a5
230:              bltu         s5, zero, 232f
                  slli         a6, ra, 7
232:              bltu         a4, a3, 237f
                  bne          a6, s5, 234f
234:              auipc        s2, 750391
                  blt          tp, t2, 240f
                  sll          a2, a1, s2
237:              add          a3, s4, s9
                  addi         a3, a4, 331
                  xori         t3, t4, 810
240:              bgeu         t1, a4, 251f
                  bltu         t1, ra, 251f
                  xori         sp, ra, 1603
                  blt          a4, s0, 256f
                  auipc        gp, 584786
245:              sub          s0, s10, s8
                  xor          t0, tp, t6
                  blt          a4, a5, 257f
                  xori         s10, t3, -216
                  sll          s10, a7, s8
                  beq          a4, s0, 265f
251:              bltu         s6, t1, 271f
                  ori          t3, a6, 1756
                  sll          a4, s10, s0
                  auipc        a7, 818511
                  xor          ra, sp, s11
256:              sll          s0, s2, ra
257:              bge          s1, s10, 270f
                  srai         gp, t1, 25
                  addi         a6, t6, -1261
                  and          s3, s0, s7
                  srl          s9, t3, a3
                  sltiu        gp, s2, 951
                  and          a0, s4, sp
                  andi         s10, a1, -1503
265:              or           a7, s1, s3
                  slti         a1, a6, 1160
                  auipc        s7, 107314
                  srli         s3, ra, 22
                  blt          t6, t1, 273f
270:              bltu         s0, t6, 281f
271:              andi         a4, a4, 488
                  sltiu        a7, a1, -1741
273:              sra          gp, a0, t4
                  sll          s9, a5, t3
                  sub          t6, tp, t5
                  slli         t3, a4, 2
                  nop
                  srli         s10, a4, 23
                  ori          s0, a1, 1415
                  slti         s2, t0, -1197
281:              slt          zero, s8, a1
                  xor          a3, t5, s0
                  bne          t5, s3, 284f
284:              and          a1, s11, t5
                  or           gp, s11, s2
                  sltiu        t5, s0, 717
                  addi         a0, tp, 901
                  xori         s3, a3, 360
                  andi         a0, s0, 514
                  addi         t2, s6, 1633
                  xor          t3, a0, s5
                  andi         sp, s1, -2009
                  or           s7, a4, t6
                  bltu         s11, t2, 313f
                  addi         gp, a6, -690
                  lui          s0, 906619
                  auipc        t3, 894327
                  sub          s7, s10, a3
                  srli         a6, s6, 22
                  sra          s0, a7, a5
                  slti         s10, t2, -195
                  nop
                  addi         s3, s10, -1118
                  sll          s6, a1, t4
                  addi         s1, s9, -1973
                  srli         a3, s9, 1
                  auipc        tp, 733216
                  bgeu         s6, a6, 320f
                  sltu         t1, s0, t5
                  srl          a1, s11, a2
                  beq          t3, a7, 318f
                  sll          a4, s9, s3
313:              srli         s10, sp, 6
                  bltu         t6, a5, 328f
                  andi         s1, t2, -1551
                  slli         t6, s10, 9
                  bge          s7, s7, 330f
318:              bge          s9, t6, 335f
                  bne          s3, a6, 320f
320:              andi         a7, t1, 1691
                  bne          a3, t3, 323f
                  slt          a3, t5, t5
323:              slt          a1, s11, ra
                  and          a2, s10, s7
                  sra          a3, t5, ra
                  blt          s0, sp, 344f
                  beq          ra, s4, 333f
328:              addi         t2, s7, -1791
                  auipc        a3, 445596
330:              addi         a6, s2, 2033
                  slt          a3, s3, t5
                  bne          t6, t1, 334f
333:              ori          a1, t2, 241
334:              nop
335:              or           t1, t6, t0
                  sra          a4, a5, a6
                  nop
                  auipc        s3, 808112
                  bge          a5, s7, 350f
                  bge          t5, s8, 358f
                  slti         a3, s3, -669
                  auipc        t2, 1039961
                  beq          t2, s11, 348f
344:              ori          a2, t2, 278
                  and          ra, t6, t5
                  srli         a4, a3, 15
                  andi         s6, s7, 1460
348:              and          s0, a0, t5
                  or           s2, s2, t1
350:              slti         a5, s0, 574
                  beq          s2, zero, 367f
                  add          s9, t5, a2
                  blt          s5, t2, 358f
                  sra          s10, t2, sp
                  srli         s1, gp, 1
                  srai         tp, a1, 21
                  sltu         s0, a1, s6
358:              bne          s9, a5, 371f
                  xor          t1, s3, gp
                  slli         a3, s9, 2
                  bge          a0, s3, 368f
                  nop
                  andi         sp, s9, 1283
                  bne          s5, t5, 379f
                  addi         s1, t1, 286
                  sltiu        s7, s1, -346
367:              bgeu         a2, t5, 379f
368:              and          s9, zero, a1
                  slli         a5, s0, 10
                  bltu         gp, s8, 381f
371:              and          t5, s1, t3
                  sub          s10, t6, ra
                  slti         a6, s0, 1883
                  blt          t1, t2, 387f
                  sltu         t2, s3, s6
                  slt          sp, t5, a4
                  slt          s7, a5, t4
                  xori         t1, a0, -2025
379:              sltiu        s4, a2, 369
                  slli         t2, t0, 24
381:              addi         t6, s1, -602
                  sltiu        t1, a3, 441
                  addi         sp, t5, 1144
                  blt          s5, a6, 401f
                  addi         s8, gp, -885
                  bgeu         a0, t1, 398f
387:              bge          a6, a6, 398f
                  beq          s2, s0, 407f
                  lui          s10, 513241
                  sub          t5, s11, a1
                  sll          a6, t0, a0
                  slti         t0, tp, 1766
                  sub          gp, tp, a2
                  xor          a3, ra, zero
                  xori         t1, t1, 1727
                  nop
                  sub          a6, a7, t6
398:              sll          s0, t5, a1
                  beq          s0, a4, 401f
                  add          s10, t3, s2
401:              add          t5, a0, s6
                  or           a4, t2, t5
                  blt          s3, t5, 410f
                  srai         s0, s8, 21
                  bne          t6, a5, 420f
                  srli         t2, t4, 25
407:              add          a2, a5, s8
                  sltu         gp, a2, t2
                  auipc        t2, 573967
410:              andi         s6, a1, -738
                  slti         s7, a2, -1104
                  nop
                  auipc        s2, 724234
                  srl          a3, t4, t3
                  sra          sp, s4, zero
                  sub          a5, s1, t0
                  xori         s4, gp, 1632
                  beq          t3, s8, 422f
                  beq          t0, ra, 429f
420:              blt          t3, s4, 421f
421:              slt          s3, t0, s5
422:              or           s10, a1, s9
                  nop
                  or           gp, s7, t5
                  and          t1, t1, s10
                  slli         s8, t1, 26
                  auipc        s6, 868117
                  slli         s8, s3, 16
429:              andi         a6, t0, 303
                  and          a1, tp, t3
                  bgeu         s1, gp, 447f
                  srli         zero, a2, 1
                  slli         t0, s1, 30
                  auipc        a6, 793396
                  bgeu         sp, gp, 448f
                  srai         s0, s4, 17
                  or           s9, a6, t3
                  sltiu        a4, gp, -523
                  xor          a4, sp, s7
                  or           tp, ra, s7
                  and          s3, t1, s9
                  sra          s0, a3, s6
                  andi         a3, s3, -1806
                  ori          a7, a1, -1534
                  sltiu        t1, a2, 1685
                  srli         s6, s5, 7
447:              slti         t0, sp, -641
448:              bge          ra, t1, 463f
                  and          zero, a3, a7
                  sltu         zero, s10, tp
                  srai         a1, s0, 25
                  bgeu         s3, s7, 464f
                  sltiu        t6, s6, 1246
                  xor          a3, t6, a7
                  or           a1, gp, a4
                  xor          a3, s6, s3
                  auipc        a2, 914384
                  slt          t2, s1, t4
                  sll          s2, t5, s8
                  auipc        a1, 584324
                  srli         s10, a7, 0
                  sub          a3, s11, s6
463:              sll          s0, a2, t1
464:              bgeu         a3, s11, 478f
                  slli         s1, s6, 30
                  add          t6, s2, s10
                  bge          s7, t2, 472f
                  bge          t1, t6, 478f
                  srai         s0, ra, 26
                  bltu         t4, a3, 471f
471:              sll          s9, t5, s1
472:              bge          s6, s1, 478f
                  slt          a5, ra, t2
                  srl          sp, s7, zero
                  slti         s3, a5, 1303
                  sltiu        t2, a0, 1370
                  sll          a6, s4, a0
478:              blt          a6, a0, 491f
                  and          s10, s9, s8
                  srli         s3, s7, 25
                  auipc        t2, 531967
                  addi         tp, t2, 393
                  sll          s4, s7, t5
                  bgeu         a2, a6, 497f
                  bge          a6, t5, 496f
                  andi         a7, a4, 887
                  srl          s2, t2, s4
                  srai         s10, a4, 16
                  addi         sp, zero, -8 #init loop 0 counter
                  lui          t5, 921771
                  srli         s2, t4, 1
                  sub          s0, s2, s0
                  add          t5, a0, a0
                  auipc        a3, 555551
                  srl          a0, t3, s4
                  and          a3, a0, sp
                  srli         s7, sp, 9
                  sra          a5, t6, s8
                  srai         s8, ra, 26
                  addi         a1, zero, -15 #init loop 0 limit
                  xor          s6, a0, s2
sub_3_14_0_t:     slt          a3, gp, gp
                  xori         t1, a7, -1787
                  sub          s0, a1, s11
                  and          t3, t4, a6
                  ori          ra, a6, 926
                  ori          s10, sp, -69
                  slt          a7, a0, t3
                  srai         s10, zero, 18
                  or           a3, s8, s8
                  slli         a4, a5, 27
                  addi         sp, sp, -2 #update loop 0 counter
                  srai         s3, a6, 9
                  add          s2, a6, s10
                  srai         s1, s6, 31
                  bge          sp, a1, sub_3_14_0_t #branch for loop 0
                  or           t3, a6, zero
                  ori          s10, s5, 1456
                  srl          t2, t5, t3
491:              lui          s2, 857692
                  andi         s7, gp, -396
                  slti         t3, s6, -1249
                  blt          a7, s7, 496f
                  srli         a6, a2, 12
496:              slt          t1, s7, a3
497:              slli         s4, a0, 15
                  andi         s10, a6, -399
                  and          s3, t5, s11
                  sltu         s7, a4, t2
                  auipc        a1, 675710
                  srl          tp, t2, s7
                  auipc        a6, 467902
                  bltu         a4, s11, 511f
                  bgeu         a2, t4, 523f
                  ori          s7, s11, 850
                  slt          a0, t3, s11
                  lui          s4, 500317
                  srai         s4, a2, 5
                  or           s10, s4, s11
511:              slli         a0, s5, 17
                  or           s1, sp, s8
                  lui          s6, 266256
                  slli         s3, s10, 15
                  andi         t2, t3, -894
                  bge          s8, t1, 536f
                  srli         zero, s9, 14
                  and          s2, s6, t0
                  sra          s0, s9, a5
                  andi         a1, s8, 139
                  addi         t0, zero, -1723
                  blt          s9, s7, 533f
523:              xori         a0, a3, 475
                  sra          t5, t5, gp
                  sltiu        a7, s11, 1093
                  or           s0, t0, s11
                  or           tp, a0, t4
                  srai         a6, a0, 17
                  slt          ra, t1, a7
                  lui          t5, 495709
                  auipc        s9, 163934
                  sltu         sp, a7, a0
533:              andi         s6, t0, -1396
                  slli         ra, t0, 24
                  nop
536:              bne          t3, a6, 554f
                  bne          t0, s5, 542f
                  bne          s8, s9, 551f
                  andi         t1, s1, 800
                  bne          s10, ra, 556f
                  addi         a5, a0, 914
542:              bgeu         a6, t6, 553f
                  sll          gp, s11, a2
                  add          tp, t4, t3
                  srli         gp, s2, 14
                  add          a2, s10, a1
                  sll          a6, zero, t3
                  slli         a3, t5, 14
                  sltu         a4, t3, s7
                  bgeu         a0, a6, 562f
                  addi         a2, zero, -1 #init loop 0 counter
                  srai         s0, t2, 4
                  xori         t5, a0, -7
                  sltu         tp, a3, a6
                  addi         s1, zero, 15 #init loop 0 limit
sub_3_3_0_t:      andi         s0, t6, 690
                  andi         s6, sp, 1908
                  sra          s6, s7, zero
                  srl          zero, a5, s9
                  srli         s4, t5, 17
                  addi         a2, a2, 9 #update loop 0 counter
                  slt          a4, s6, t5
                  slt          s7, s11, s7
                  or           gp, sp, t2
                  sltu         a1, t4, t1
                  ori          sp, t0, -856
                  addi         t2, t6, 1660
                  srai         a6, s10, 1
                  addi         s0, sp, 1815
                  sltu         a3, sp, s7
                  auipc        gp, 667701
                  or           s7, t6, s4
                  sltiu        a4, t5, 123
                  slt          a4, a5, t4
                  and          ra, s11, gp
                  slti         s0, tp, -280
                  blt          a2, s1, sub_3_3_0_t #branch for loop 0
                  add          s7, s8, a3
551:              nop
                  bne          s9, s10, 565f
553:              andi         a1, t3, 1708
554:              srli         t2, s5, 30
                  slli         a7, s5, 7
556:              srli         s3, s6, 21
                  ori          t3, t3, -189
                  or           t2, a7, s10
                  sll          zero, s10, s0
                  bge          t3, a4, 562f
                  bltu         t2, a0, 581f
562:              bne          t3, t3, 572f
                  and          s4, s5, s11
                  srl          s1, zero, zero
565:              add          t0, s10, zero
                  beq          s1, zero, 567f
567:              sltu         a3, s10, s3
                  srl          a7, a5, t6
                  beq          s9, tp, 575f
                  bltu         a3, a5, 582f
                  srl          a1, a1, a4
572:              srl          t6, t0, t4
                  sltu         a7, ra, s2
                  lui          s4, 581056
575:              auipc        a0, 519754
                  xori         t5, ra, -1430
                  srl          tp, t1, t3
                  addi         s10, s11, 71
                  bge          s1, a2, 590f
                  sub          a2, s3, sp
581:              bgeu         a7, s10, 600f
582:              srl          t1, s8, s0
                  addi         t0, tp, 1996
                  auipc        t0, 29262
                  sll          a6, t3, a4
                  xori         s4, a3, 1419
                  and          a6, t1, sp
                  bge          s3, s6, 599f
                  sltu         t3, s9, t3
590:              slti         sp, gp, 759
                  add          tp, gp, t3
                  bne          s7, s1, 607f
                  lui          t2, 403313
                  slli         a4, s4, 6
                  sra          s2, s2, s7
                  or           s2, t5, s8
                  and          a1, ra, a1
                  srli         s6, a4, 16
599:              beq          t3, a6, 604f
600:              sltu         a3, a2, s7
                  addi         sp, s7, -645
                  add          s8, s7, s1
                  and          t1, t4, tp
604:              ori          a0, t6, 1391
                  srai         tp, zero, 21
                  srli         gp, s2, 1
607:              sll          t5, t1, s10
                  xori         t5, tp, 1421
                  auipc        s10, 304040
                  xori         s10, t4, -560
                  sltiu        s1, t1, -771
                  srai         t2, a0, 30
                  bgeu         s8, a6, 626f
                  sra          a6, t3, zero
                  bltu         tp, s5, 622f
                  srl          s1, t4, t1
                  slli         t5, s5, 17
                  bgeu         s9, a5, 625f
                  and          a7, t2, a0
                  slti         t1, tp, 1893
                  bne          s9, a7, 623f
622:              nop
623:              srl          a6, t1, s3
                  sub          t2, t4, s3
625:              addi         a5, s8, 1618
626:              auipc        a2, 255224
                  slt          t1, s7, gp
                  nop
                  sub          sp, a6, t4
                  sltiu        s10, s2, -1213
                  add          s1, sp, t5
                  ori          tp, t4, -198
                  and          a1, t2, a4
                  srai         a4, gp, 30
                  nop
                  slli         s10, s4, 5
                  srli         sp, s4, 20
                  sll          zero, t1, sp
                  addi         a0, t6, -329
                  addi         s8, a2, 826
                  lui          s9, 348355
                  srl          t2, s4, a5
                  add          a1, s3, s3
                  srai         tp, a5, 16
                  lui          t0, 176064
                  andi         a0, s0, -1303
                  sll          t0, s2, t1
                  bgeu         a4, s1, 666f
                  srai         a6, t4, 26
                  slt          s9, t5, a7
                  sltiu        t5, t6, -1350
                  sub          ra, s9, a6
                  srai         t6, t6, 21
                  xori         a6, a2, -218
                  sltiu        s3, a2, 1230
                  beq          a0, a2, 671f
                  sltiu        a7, a5, -358
                  auipc        a3, 85736
                  add          t6, s9, s4
                  slti         a3, ra, 1394
                  addi         a2, s5, -1722
                  blt          a1, t1, 666f
                  andi         ra, t0, 206
                  xori         a6, s11, 1613
                  bge          sp, t2, 670f
666:              auipc        t6, 832265
                  bgeu         t5, t4, 677f
                  nop
                  auipc        t2, 188760
670:              srai         s2, s11, 17
671:              xori         s3, t2, -2021
                  addi         a4, zero, -10 #init loop 1 counter
                  addi         a1, zero, 16 #init loop 1 limit
sub_3_10_1_t:     sltiu        s8, t4, 655
                  addi         a4, a4, 1 #update loop 1 counter
                  addi         s7, zero, 3 #init loop 0 counter
                  addi         t1, zero, 15 #init loop 0 limit
sub_3_10_0_t:     andi         s4, s8, 143
                  addi         s7, s7, 3 #update loop 0 counter
                  blt          s7, t1, sub_3_10_0_t #branch for loop 0
                  bltu         a4, a1, sub_3_10_1_t #branch for loop 1
                  sltu         s8, zero, a3
                  add          s7, s10, s9
                  addi         ra, zero, -7 #init loop 1 counter
                  sltiu        s3, s9, -1284
                  ori          s1, s5, 586
                  addi         s8, zero, -14 #init loop 1 limit
sub_3_9_1_t:      xor          t6, s3, t2
                  sltiu        t2, t5, 729
                  addi         ra, ra, -1 #update loop 1 counter
                  lui          sp, 961203
                  addi         a0, zero, 3 #init loop 0 counter
                  ori          s6, s10, 1901
                  addi         s7, zero, 18 #init loop 0 limit
                  sra          a1, s9, t1
sub_3_9_0_t:      xor          t5, s10, s5
                  addi         a0, a0, 1 #update loop 0 counter
                  sll          s2, gp, s5
                  blt          a0, s7, sub_3_9_0_t #branch for loop 0
                  sub          sp, a6, sp
                  slti         a1, s1, -454
                  slli         t5, zero, 22
                  beq          ra, s8, sub_3_9_1_t #branch for loop 1
                  xori         s4, tp, -202
                  srai         t0, gp, 22
                  beq          a6, s11, 691f
                  add          gp, gp, t5
                  andi         t5, a6, 998
677:              bge          s10, a4, 691f
                  sltiu        s9, t3, 483
                  nop
                  slli         zero, a7, 5
                  xor          s7, s4, a6
                  or           t1, s2, a5
                  xori         a7, a0, 955
                  sll          zero, gp, a3
                  sltu         s2, s8, t2
                  xori         s7, s11, -793
                  add          ra, a4, a1
                  slt          ra, t6, ra
                  bne          a2, tp, 702f
                  bne          a0, s5, 691f
691:              andi         s0, sp, -1618
                  xor          s9, a7, sp
                  beq          a3, s5, 711f
                  srl          t0, ra, t5
                  xori         t5, sp, -24
                  sra          zero, s9, a0
                  srai         s10, a4, 7
                  sub          s2, t6, t1
                  addi         s4, s2, 1431
                  sltiu        a5, a6, -966
                  sltiu        sp, s7, 912
702:              xor          a0, t1, tp
                  srai         sp, zero, 27
                  blt          a3, s8, 706f
                  or           s7, a7, s4
706:              and          ra, a0, a6
                  addi         t5, zero, 3 #init loop 0 counter
                  sra          tp, a5, s3
                  slli         a3, s9, 5
                  addi         sp, zero, -4 #init loop 0 limit
                  srl          a0, s5, a2
                  slti         a4, s6, -1915
                  addi         tp, s10, -1085
                  addi         a3, a5, 1439
                  sltu         s9, sp, a3
                  sub          t0, s2, a7
                  srl          t6, t1, a4
sub_3_12_0_t:     andi         a0, t6, -450
                  addi         zero, a5, -42
                  srli         s1, s5, 22
                  addi         t5, t5, -7 #update loop 0 counter
                  and          a0, s9, s11
                  and          a1, t0, t6
                  srai         s6, gp, 18
                  slt          t6, s7, a0
                  ori          a4, t6, -1663
                  andi         t3, t4, -1972
                  slli         s10, tp, 16
                  sra          a0, s7, s2
                  srai         t2, s7, 14
                  sub          a6, s3, s3
                  sltiu        t6, s0, 1489
                  bne          t5, sp, sub_3_12_0_t #branch for loop 0
                  xor          a1, a0, s10
                  andi         a5, t2, 1082
                  add          s0, s11, tp
                  addi         a4, a5, 888
                  sltu         s0, s6, a3
711:              slli         t0, s4, 9
                  nop
                  auipc        a3, 288400
                  ori          s2, a3, 754
                  bgeu         s4, a2, 732f
                  auipc        a4, 104347
                  add          a5, t1, t6
                  xori         s0, a1, -1023
                  srl          t1, sp, t3
                  or           t5, s11, t2
                  blt          s10, s9, 722f
722:              beq          s3, s4, 735f
                  andi         a1, s4, -899
                  slli         s0, t1, 19
                  slli         s9, a5, 15
                  or           s7, s3, s2
                  blt          a6, a7, 734f
                  blt          s0, s6, 741f
                  ori          t5, a5, -1912
                  bge          t6, s3, 741f
                  and          tp, a0, a7
732:              sltiu        t6, a0, 962
                  sll          t5, gp, t0
734:              slli         s6, s7, 11
735:              srli         t3, gp, 23
                  add          a4, t4, tp
                  bltu         t1, t5, 752f
                  beq          s8, ra, 749f
                  blt          a7, a1, 746f
                  and          t5, a5, gp
741:              blt          t5, a2, 746f
                  add          s7, t2, t4
                  sll          t1, s11, s8
                  and          a1, s10, t0
                  add          s0, t5, t5
746:              or           s7, t1, gp
                  xori         a0, s4, 767
                  sra          s4, s7, t1
749:              bgeu         t6, s8, 768f
                  sltu         sp, t0, s2
                  addi         s6, s5, 644
752:              bge          s7, s0, 764f
                  sll          a5, s2, s8
                  ori          s8, s10, 371
                  bne          t0, s1, 773f
                  lui          t2, 174043
                  add          s9, s3, s10
                  addi         a6, sp, -662
                  sltu         t5, s0, a0
                  lui          a5, 631301
                  bgeu         a6, ra, 771f
                  slli         t5, tp, 17
                  bgeu         s10, t4, 779f
764:              slli         a2, t4, 11
                  or           a2, a2, t4
                  auipc        s4, 278981
                  srl          t5, a6, sp
768:              or           a0, t2, a6
                  auipc        s1, 315832
                  xori         a7, sp, 202
771:              srli         s8, ra, 12
                  sll          t0, tp, s5
773:              sltiu        tp, sp, 1638
                  andi         t0, s8, 1362
                  srai         s4, a4, 18
                  bne          s9, t1, 780f
                  ori          a0, s11, 863
                  sltu         a3, t2, ra
779:              xor          a6, ra, s11
780:              sra          s1, t4, ra
                  addi         s2, zero, 686
                  or           tp, a4, zero
                  sub          t6, s0, a0
                  slt          s4, t4, s4
                  bne          t1, t1, 797f
                  slt          tp, zero, tp
                  sltiu        a4, sp, 1800
                  bgeu         a3, s9, 798f
                  slt          t3, t3, gp
                  nop
                  beq          ra, s1, 797f
                  sub          a5, s9, s8
                  sub          t6, s10, s8
                  sra          a0, t4, ra
                  sltu         a3, t0, zero
                  bltu         s1, a0, 810f
797:              beq          s5, t6, 815f
798:              srl          a0, t1, tp
                  beq          t3, a5, 800f
800:              sltiu        t0, ra, -119
                  slti         s2, tp, 1546
                  add          s3, a1, s7
                  auipc        ra, 823573
                  sra          t2, s6, ra
                  srl          s7, gp, a5
                  srli         ra, t0, 11
                  auipc        t5, 231790
                  bgeu         tp, t6, 821f
                  auipc        s7, 976972
810:              beq          sp, s9, 821f
                  bltu         s1, t2, 826f
                  xori         a5, sp, 1760
                  sra          a2, tp, s7
                  sltu         t3, tp, sp
815:              lui          s2, 837628
                  bge          s4, s2, 821f
                  bgeu         s1, t2, 830f
                  srli         s4, s1, 17
                  lui          gp, 977249
                  and          s2, a5, s0
821:              beq          s0, t3, 823f
                  auipc        s2, 956033
823:              nop
                  ori          t0, a0, 381
                  xori         a0, s5, -200
826:              xor          a3, a6, a1
                  srl          a3, a0, t3
                  bltu         a4, a2, 848f
                  sltiu        s9, t1, -1384
830:              add          sp, s2, a5
                  lui          t3, 235947
                  xori         t2, s7, 429
                  srli         sp, s2, 19
                  sltiu        a1, s1, -353
                  slti         t5, t3, 1398
                  slt          a3, s11, zero
                  srl          gp, s0, t6
                  and          s6, s6, s2
                  srai         t6, s4, 11
                  auipc        a7, 599324
                  slli         a0, t1, 6
                  xori         t3, sp, -1186
                  bgeu         s11, a7, 858f
                  nop
                  xori         a0, t0, -484
                  and          ra, t3, t5
                  nop
848:              addi         ra, a1, -1367
                  blt          s0, a6, 860f
                  bltu         sp, sp, 867f
                  beq          s7, s6, 861f
                  slti         a3, a4, 1076
                  bgeu         t1, a5, 866f
                  slti         tp, s9, 368
                  slli         sp, s8, 29
                  bge          t5, a6, 863f
                  sltu         t1, s1, t1
858:              nop
                  or           a4, tp, sp
860:              bgeu         s4, s10, 875f
861:              bgeu         t0, a1, 872f
                  auipc        a7, 356291
863:              beq          a6, t5, 874f
                  bltu         ra, t4, 882f
                  slti         a1, sp, -917
866:              slli         t3, tp, 22
867:              auipc        s3, 562764
                  andi         zero, a2, -363
                  slli         t2, s7, 20
                  srai         a6, a4, 5
                  srl          t3, a0, s6
872:              sltiu        s10, s10, -1125
                  nop
874:              srli         gp, t4, 19
875:              sll          a1, gp, ra
                  andi         tp, a6, 1172
                  bne          gp, ra, 878f
878:              andi         zero, t3, -1003
                  add          t5, gp, sp
                  xori         s8, t6, -341
                  bge          zero, a7, 883f
882:              sub          s2, s8, a3
883:              sra          sp, sp, s6
                  srl          zero, s5, s1
                  bltu         t3, tp, 890f
                  nop
                  sltiu        gp, s10, 566
                  lui          a4, 1020459
                  or           s8, sp, gp
890:              addi         s3, t5, -1773
                  slti         t5, s5, -853
                  bge          s7, a0, 905f
                  andi         a5, s2, 506
                  srli         sp, sp, 3
                  or           s7, s10, s3
                  or           a7, t2, ra
                  addi         a1, s3, -23
                  and          sp, s11, s6
                  sltiu        a1, gp, -1310
                  andi         s6, s11, -1310
                  auipc        s9, 857437
                  auipc        s10, 684179
                  ori          s4, a1, -918
                  beq          a0, s4, 910f
905:              slli         s10, a2, 15
                  auipc        s6, 807574
                  bge          s4, t6, 923f
                  srai         a7, s2, 25
                  bgeu         s3, t4, 923f
910:              srli         t3, a1, 0
                  and          s9, a7, ra
                  add          t6, ra, ra
                  xori         s4, t1, -734
                  sltiu        a7, t0, -1748
                  or           a4, t3, t1
                  addi         zero, a6, -940
                  and          t1, t1, a6
                  slti         t5, s5, 1197
                  sra          ra, s9, gp
                  lui          s10, 37536
                  addi         a1, s1, -93
                  blt          a7, s3, 941f
923:              sll          s10, a2, t4
                  xori         t0, zero, 293
                  sltiu        s9, s9, 1953
                  and          a5, t6, s3
                  srai         s1, ra, 25
                  lui          s0, 697288
                  beq          a0, a1, 941f
                  sra          a1, a5, a6
                  bne          s9, t2, 936f
                  sltu         gp, s11, a4
                  slti         zero, s7, -12
                  sltu         a3, s11, t1
                  or           zero, s7, s9
936:              bge          a6, t1, 943f
                  add          s4, a3, t2
                  lui          s9, 155806
                  addi         a5, t3, 766
                  beq          a6, s8, 943f
941:              bltu         t1, t1, 942f
942:              blt          a0, a7, 943f
943:              sltu         t1, a6, s0
                  addi         t3, s7, -1917
                  lw           s3, 4(s5)
                  and          s9, s10, s3
                  sub          s0, t4, t3
                  sltiu        s10, t0, 1241
                  slli         t5, s0, 23
                  slli         a2, t0, 28
                  sltu         s6, a3, s1
                  sltiu        s7, s3, -148
                  addi         s5, s5, 20
                  xor          s10, s4, t0
1362:             addi x8, x19, 1
1362:             jalr x8, x8, 0
sub_4:            srli         t3, a4, 18
                  slt          t5, t2, s11
                  blt          a3, s0, sub_4_stack_p
                  slt          a5, a3, s10
                  slli         a5, ra, 23
                  srai         a6, a2, 0
                  sra          s9, a0, a1
                  lui          a4, 270912
sub_4_stack_p:    addi         s5, s5, -60
                  auipc        tp, 857335
                  slti         a5, s7, 70
                  sw           s3, 4(s5)
                  sltiu        ra, s8, -353
                  addi         t6, zero, -6 #init loop 1 counter
                  addi         s3, zero, -12 #init loop 1 limit
sub_4_5_1_t:      xori         ra, s8, 302
                  addi         t6, t6, -10 #update loop 1 counter
                  addi         s0, zero, 10 #init loop 0 counter
                  addi         t2, zero, 9 #init loop 0 limit
sub_4_5_0_t:      slti         t5, a5, -1395
                  addi         s0, s0, -8 #update loop 0 counter
                  bgeu         s0, t2, sub_4_5_0_t #branch for loop 0
                  bge          t6, s3, sub_4_5_1_t #branch for loop 1
                  xori         s10, s9, -514
                  addi         sp, zero, 7 #init loop 1 counter
                  srl          t5, gp, s2
                  addi         tp, zero, 7 #init loop 1 limit
sub_4_4_1_t:      xori         t6, t5, -1327
                  srli         a5, a4, 6
                  sltiu        t3, s9, 1516
                  addi         sp, sp, -1 #update loop 1 counter
                  slti         zero, t3, -1065
                  addi         a6, zero, -6 #init loop 0 counter
                  addi         s10, zero, -12 #init loop 0 limit
                  srl          t2, t1, sp
sub_4_4_0_t:      xor          zero, s3, s0
                  auipc        a0, 810489
                  addi         a6, a6, -8 #update loop 0 counter
                  bge          a6, s10, sub_4_4_0_t #branch for loop 0
                  sub          s9, t4, s9
                  xor          gp, t3, a4
                  bgeu         sp, tp, sub_4_4_1_t #branch for loop 1
                  slli         a3, a1, 16
                  addi         s7, zero, 3 #init loop 0 counter
                  xori         t3, sp, 346
                  lui          s6, 955537
                  addi         a4, zero, 19 #init loop 0 limit
                  srai         t6, tp, 14
                  and          s2, a3, s1
                  sra          s8, s4, s10
                  xor          t5, s9, a1
sub_4_6_0_t:      lui          s1, 832254
                  add          a1, t2, a4
                  slti         s9, t1, -735
                  srai         s0, s8, 16
                  xor          t6, a1, ra
                  srl          ra, a0, zero
                  sltu         s8, a2, t2
                  srai         t2, a7, 26
                  srl          a1, a3, s1
                  sltu         t1, a6, s10
                  srai         s9, zero, 25
                  srai         a0, t1, 26
                  xori         s2, zero, 56
                  sltiu        t2, zero, -1861
                  slli         a5, s7, 1
                  srl          t2, zero, t0
                  srai         a3, t1, 2
                  addi         s7, s7, 4 #update loop 0 counter
                  srai         a6, zero, 10
                  slti         s4, tp, 1238
                  beq          s7, a4, sub_4_6_0_t #branch for loop 0
                  srai         zero, t1, 22
                  addi         s0, zero, -6 #init loop 0 counter
                  nop
                  slli         s1, s11, 10
                  xor          t3, s0, a6
                  add          s7, s10, gp
                  lui          t6, 719035
                  slti         a0, t0, 976
                  lui          t5, 504451
                  nop
                  lui          ra, 476928
                  sub          tp, a0, t6
                  lui          t5, 362925
                  slli         s2, a4, 24
                  srli         s6, ra, 1
                  sub          tp, a3, a4
                  srl          s10, a5, t4
                  srai         t5, t6, 31
                  addi         gp, zero, 18 #init loop 0 limit
                  srl          a7, t6, gp
sub_4_2_0_t:      addi         a6, t1, 1101
                  add          t1, s0, s2
                  slli         s7, a7, 6
                  addi         s0, s0, 1 #update loop 0 counter
                  sra          t2, s4, zero
                  srli         s2, s11, 29
                  slti         s1, t4, 530
                  srl          a0, a1, t5
                  bltu         s0, gp, sub_4_2_0_t #branch for loop 0
                  srli         a6, s9, 0
                  addi         t6, zero, 10 #init loop 1 counter
                  sll          s9, t4, t1
                  addi         a4, zero, 7 #init loop 1 limit
                  xori         s1, a7, 393
                  nop
                  andi         s8, s5, -657
sub_4_3_1_t:      auipc        s4, 581106
                  addi         t6, t6, -6 #update loop 1 counter
                  addi         t1, zero, 9 #init loop 0 counter
                  xor          a0, s11, t6
                  addi         s10, zero, 11 #init loop 0 limit
sub_4_3_0_t:      addi         a0, tp, -1808
                  auipc        s8, 88846
                  srai         s3, t0, 19
                  ori          s2, a3, 698
                  sub          t2, a6, s10
                  addi         t1, t1, 2 #update loop 0 counter
                  sltiu        s3, t1, 1797
                  bne          t1, s10, sub_4_3_0_t #branch for loop 0
                  bgeu         t6, a4, sub_4_3_1_t #branch for loop 1
                  nop
                  xori         s4, s7, -1156
                  sll          a4, s10, s8
                  sltu         zero, t3, t1
                  srl          s1, t2, s8
                  sra          t2, a4, s6
                  addi         a2, a5, -328
                  sub          t5, t4, s2
                  or           t1, t5, s5
                  slli         t1, t0, 19
                  bltu         s1, t5, 23f
                  add          s7, t6, t2
                  sub          s7, t2, s6
                  bne          s1, a1, 26f
                  ori          s4, t2, 1499
                  bltu         a7, sp, 21f
                  slt          t2, s5, ra
                  sltu         t1, t3, sp
                  sltiu        a6, s4, 425
                  xor          t3, s7, s5
                  blt          s3, t1, 32f
                  xori         s2, t5, -697
21:               bne          s4, zero, 41f
                  slti         s10, t4, 208
23:               and          a4, t5, s9
                  slt          sp, s0, s5
                  slti         a6, s4, 243
26:               bge          a6, t1, 41f
                  bge          t3, s11, 41f
                  and          a4, s5, a2
                  add          s0, t5, a3
                  sltiu        a6, a0, -1325
                  auipc        s10, 217476
32:               auipc        a7, 739107
                  and          zero, a4, s4
                  auipc        s3, 120511
                  xor          s6, gp, a4
                  sll          s8, a4, a6
                  lui          ra, 1043798
                  andi         a0, s0, 1014
                  add          a0, a7, s8
                  sra          t0, s9, t2
41:               srai         a6, a3, 17
                  addi         a5, a5, 1343
                  add          zero, a0, a2
                  xor          a6, a1, zero
                  beq          s2, tp, 60f
                  bltu         a1, gp, 54f
                  bltu         a2, s2, 58f
                  lui          s2, 780367
                  and          t2, t0, s0
                  beq          s4, t0, 55f
                  and          a3, t3, a6
                  bltu         ra, a0, 61f
                  lui          sp, 160204
54:               or           s9, a1, a4
55:               srli         a2, a1, 26
                  and          s6, s1, s0
                  nop
58:               bltu         s5, zero, 64f
                  srli         t1, tp, 31
60:               lui          a5, 145694
61:               nop
                  ori          s4, s11, 1544
                  or           s3, t3, s1
64:               bge          s5, sp, 68f
                  slti         a1, tp, 318
                  sra          a3, s10, tp
                  bgeu         t6, t6, 83f
68:               sll          a5, a5, s11
                  sll          s0, s4, a6
                  bgeu         s11, t2, 85f
                  blt          s10, s1, 87f
                  or           t3, t6, a7
                  bge          s9, a3, 81f
                  bne          t6, s3, 84f
                  beq          a0, s9, 81f
                  bltu         t4, s10, 88f
                  lui          t5, 946906
                  beq          a4, s11, 86f
                  srl          t6, t3, s5
                  beq          t5, s4, 100f
81:               bgeu         tp, t0, 89f
                  or           s10, s4, t6
83:               bltu         a1, s7, 92f
84:               srli         s8, a3, 0
85:               sll          t5, sp, s3
86:               addi         s2, s9, 933
87:               or           s1, a6, s11
88:               slt          a3, t1, a0
89:               srl          sp, a4, s4
                  sra          s6, s4, s2
                  nop
92:               srl          s9, gp, sp
                  bne          s11, a7, 97f
                  sra          s7, s5, t4
                  sub          sp, s8, gp
                  ori          s4, a2, -983
97:               sub          t1, s5, a0
                  xor          a6, t4, gp
                  bgeu         s1, s0, 119f
100:              slt          a1, ra, s1
                  sltiu        a4, a4, -1828
                  xori         s9, gp, -1397
                  or           sp, gp, s4
                  sll          a0, a7, sp
                  srai         t5, s5, 9
                  lui          a6, 660645
                  lui          a3, 721793
                  srli         a5, s6, 12
                  nop
                  addi         s2, zero, 9 #init loop 0 counter
                  srli         a3, a3, 5
                  addi         t1, zero, 10 #init loop 0 limit
sub_4_0_0_t:      and          s8, s6, t5
                  addi         t0, s7, 1292
                  addi         s2, s2, 2 #update loop 0 counter
                  blt          s2, t1, sub_4_0_0_t #branch for loop 0
                  auipc        a1, 105159
                  addi         a1, t1, -285
                  beq          s8, a2, 113f
                  xor          s4, gp, s7
113:              sub          t0, t0, sp
                  addi         t0, t6, 1148
                  bne          zero, s7, 135f
                  add          a4, t5, t5
                  bne          zero, sp, 119f
                  srli         tp, t0, 2
119:              slt          s8, t1, t6
                  xor          t5, t0, s6
                  xor          s2, s3, s4
                  srl          t1, gp, t1
                  bge          t1, t4, 131f
                  sll          s3, s2, s0
                  auipc        s3, 110844
                  lui          s9, 799766
                  xor          a4, a3, s5
                  bltu         t2, s10, 143f
                  xor          a5, s3, a1
                  bgeu         t2, s5, 134f
131:              bltu         gp, t3, 143f
                  slti         a5, s2, 1574
                  bgeu         s10, zero, 140f
134:              bltu         s0, gp, 136f
135:              slt          a2, s6, s3
136:              xori         tp, a0, -1977
                  beq          s5, t2, 143f
                  ori          s3, s9, 340
                  sra          a0, a7, s10
140:              add          t3, t3, a6
                  sll          a6, a7, a7
                  slli         s2, a1, 24
143:              and          s0, t0, s9
                  sll          s6, gp, s0
                  sll          tp, a2, t1
                  srai         s7, t6, 7
                  srl          sp, s7, zero
                  beq          s7, tp, 168f
                  sll          t0, tp, s10
                  srl          a3, a7, sp
                  nop
                  addi         s0, zero, 6 #init loop 1 counter
                  addi         a3, zero, -17 #init loop 1 limit
sub_4_1_1_t:      auipc        tp, 742321
                  addi         s0, s0, -10 #update loop 1 counter
                  addi         t2, zero, 8 #init loop 0 counter
                  or           a6, ra, t5
                  addi         s4, zero, -15 #init loop 0 limit
                  auipc        tp, 572087
sub_4_1_0_t:      or           zero, sp, s5
                  addi         t2, t2, -8 #update loop 0 counter
                  srai         ra, t6, 2
                  and          s9, a5, tp
                  bge          t2, s4, sub_4_1_0_t #branch for loop 0
                  andi         t0, s3, -1156
                  bge          s0, a3, sub_4_1_1_t #branch for loop 1
                  sltu         s1, a4, t3
                  bge          gp, s1, 154f
                  and          a1, s1, s8
154:              nop
                  bgeu         a3, s10, 171f
                  xori         tp, t0, -757
                  sll          a3, s5, s7
                  bltu         s0, t5, 178f
                  and          a2, a3, s0
                  slti         a6, a0, -1669
                  xori         tp, a1, 137
                  slli         s6, s7, 28
                  auipc        a7, 777209
                  srli         a1, a6, 8
                  slli         t0, tp, 19
                  bge          s4, s7, 179f
                  and          t6, s11, gp
168:              slt          t5, sp, s1
                  slt          a3, s8, s8
                  auipc        s2, 613508
171:              bge          a4, t2, 175f
                  nop
                  srli         a4, s9, 11
                  bne          s6, t5, 188f
175:              srli         s8, a0, 29
                  nop
                  slli         a0, s2, 14
178:              slti         t2, ra, -1097
179:              srli         t3, t1, 1
                  or           t1, ra, s9
                  srli         t1, a0, 9
                  auipc        t5, 376148
                  andi         s9, t0, -1120
                  sltiu        tp, a0, 106
                  slt          t2, s6, t6
                  srai         s7, t4, 11
                  bne          a7, t1, 195f
188:              bne          t4, s2, 199f
                  bne          a6, a4, 194f
                  bltu         a3, s2, 198f
                  slt          t6, zero, t1
                  srl          t2, a0, s8
                  or           s3, a7, a1
194:              xor          ra, s6, s2
195:              xori         s2, a0, 1264
                  srl          a4, a1, a0
                  slli         t6, s11, 1
198:              nop
199:              addi         t5, s0, -342
                  lui          t3, 448838
                  lui          a7, 945052
                  bltu         s3, s3, 216f
                  sra          tp, s4, t5
                  addi         s9, s6, -275
                  nop
                  xor          a2, t0, t5
                  srai         s9, a3, 3
                  bge          s1, t2, 228f
                  bgeu         a5, sp, 218f
                  srli         s3, a5, 6
                  lui          gp, 192631
                  sltiu        a3, sp, 537
                  srai         a2, a0, 2
                  sub          sp, t2, s4
                  or           t0, s1, s4
216:              xor          a4, t5, a7
                  sltu         a1, s8, a6
218:              xor          a0, s0, t6
                  bge          a1, ra, 233f
                  andi         a0, a1, 1882
                  add          s7, s3, a3
                  xor          t5, ra, a0
                  bgeu         s1, a2, 239f
                  beq          s3, a7, 230f
                  xor          s1, t3, a7
                  srli         t1, t6, 28
                  xori         a0, s0, 1873
228:              sra          s0, s0, gp
                  ori          a2, s0, -938
230:              srl          t6, t3, a1
                  bge          a3, t6, 251f
                  and          t5, ra, s11
233:              sltu         s9, t5, t3
                  slt          s8, s3, a3
                  nop
                  bge          t1, zero, 251f
                  xori         t2, s3, -1364
                  bne          a2, s7, 248f
239:              addi         s7, s2, 1226
                  or           s2, a7, s11
                  addi         a0, a6, -1727
                  sltu         a4, s0, a7
                  srl          t1, s11, t0
                  lui          s3, 733138
                  slti         a2, t1, 958
                  ori          a4, a7, 1098
                  bne          s11, s5, 255f
248:              bne          zero, gp, 263f
                  xori         s6, t6, 1415
                  slli         a5, s5, 23
251:              sub          a5, t6, s10
                  xor          s0, s11, s5
                  srl          s8, t2, s4
                  or           s8, s3, a1
255:              slti         s7, s9, -1972
                  srli         a2, t4, 31
                  slti         s1, a1, -534
                  srli         t3, t1, 29
                  and          s9, a3, t4
                  bge          t2, s9, 269f
                  slt          tp, zero, s10
                  srli         t0, zero, 29
263:              bge          a6, tp, 269f
                  beq          a0, s6, 280f
                  bge          s7, s5, 285f
                  xori         a6, s0, -325
                  sll          t3, s4, s5
                  slt          sp, s10, s0
269:              bltu         a7, a7, 289f
                  xor          s9, tp, t6
                  sltu         a5, s0, a1
                  and          s7, t4, a4
                  xor          t3, s4, a7
                  sra          s10, s2, ra
                  bne          sp, s8, 289f
                  slt          s8, s7, s2
                  srl          s4, t4, a7
                  lui          a2, 1039187
                  add          zero, s4, gp
280:              or           sp, s1, t2
                  xor          a4, s6, a6
                  add          s9, s0, t6
                  or           t3, gp, s8
                  sll          a6, a5, t2
285:              nop
                  slti         t1, a3, -190
                  beq          t5, s3, 301f
                  bge          a7, tp, 293f
289:              beq          a5, s5, 298f
                  sra          s9, s8, t4
                  srli         s4, t2, 7
                  xori         s7, s3, 687
293:              or           gp, s9, s0
                  andi         t0, gp, -1262
                  addi         a7, tp, 1101
                  slli         a3, s11, 31
                  auipc        s0, 613475
298:              srli         s8, a6, 13
                  xori         a3, s7, 1852
                  andi         s9, a4, 1259
301:              bltu         tp, s8, 321f
                  sll          a1, a2, s5
                  srai         gp, t6, 1
                  auipc        s7, 373338
                  or           s6, t2, t3
                  auipc        a7, 44123
                  sra          s9, s7, s6
                  sll          s10, a3, s0
                  add          s7, a3, sp
                  slti         a2, zero, -462
                  bltu         s7, a5, 313f
                  bltu         s11, t4, 328f
313:              slti         s8, a5, 1871
                  add          t0, s2, tp
                  sub          s7, s5, s2
                  lui          s3, 200495
                  add          ra, s3, s8
                  andi         s0, t3, 1733
                  or           t6, s11, s2
                  bge          t0, s7, 334f
321:              sltiu        zero, s10, 1781
                  blt          s0, s10, 328f
                  or           t5, t3, a0
                  ori          a4, a7, 1757
                  bne          a6, a2, 338f
                  andi         s9, t4, -347
                  addi         t5, s4, -96
328:              sll          ra, ra, s6
                  sub          a2, a2, t4
                  xor          s2, a2, s11
                  auipc        s2, 41002
                  auipc        zero, 273162
                  slti         s3, ra, 1378
334:              nop
                  andi         a7, s9, -528
                  sltu         s2, a7, a5
                  bgeu         s9, t1, 346f
338:              sub          t1, s2, a4
                  slli         s1, s7, 12
                  sra          s10, s3, s2
                  srai         sp, s5, 5
                  sltu         t6, s6, tp
                  xor          tp, a3, s9
                  lui          t5, 966043
                  beq          s2, t1, 360f
346:              sltu         sp, a5, a3
                  beq          ra, a2, 354f
                  bge          a6, zero, 352f
                  bgeu         t1, sp, 360f
                  ori          a0, s11, -101
                  sub          s2, t1, ra
352:              slt          a5, s2, s5
                  bne          a3, s9, 360f
354:              slli         s3, s11, 3
                  nop
                  beq          a7, s2, 360f
                  addi         a1, s11, -1098
                  slli         a7, tp, 10
                  addi         ra, s7, -1719
360:              srli         s1, tp, 28
                  lw           s3, 4(s5)
                  sltiu        t1, gp, 1483
                  add          a7, a4, s7
                  addi         s5, s5, 60
                  and          t2, a2, t5
                  add          tp, t5, t4
514:              addi x3, x19, 0
514:              jalr x3, x3, 0
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
.word 0xe2f2b237, 0x31af6166, 0x1b3d6d2e, 0x34c68384, 0x5a1011b2, 0xec4b6e14, 0xddb35bab, 0xfaded3b4
.word 0x3e3c7032, 0x2771eafd, 0xadd236f1, 0xcbce89f0, 0xbdee1ae7, 0x9fdde427, 0xe8de7ec3, 0x9d0d65cb
.word 0x8a4fd8ef, 0xedf28604, 0x95200453, 0xe9b62893, 0x4e68fa91, 0xc51a7c1d, 0xe27d2d72, 0xe3855786
.word 0x9cec01ca, 0x35cedb1e, 0xe7698b88, 0xa91f1596, 0x632cb52c, 0xc8d787f5, 0x5fd3cfec, 0xadbca05b
.word 0x2c4fe958, 0x8db09bc9, 0x06ffd391, 0x9972a12e, 0xf0980767, 0x882d697a, 0x5f4aee42, 0x35831cdd
.word 0x9f96f2e4, 0x4bb175ea, 0x86616b33, 0xe60b407b, 0x2fee020b, 0x65a5d008, 0xadaea090, 0x619c3014
.word 0x8910a393, 0x627e56da, 0xc129fda5, 0xeb424c3e, 0xf9365dc6, 0xdb57a28b, 0x41e5d763, 0x12abc78f
.word 0x8a69fbec, 0x4f6cbd5a, 0xc2384833, 0x311cd56c, 0xae0b2a3f, 0x9ad612f3, 0x19eb1d5f, 0x270a893a
.word 0x8345c4fc, 0x3a0cf327, 0xb07e5880, 0xce590801, 0x00cd1fec, 0x50376cdc, 0x053c268d, 0x5e1deae2
.word 0x303d1af3, 0x68a1b815, 0xef93c0b9, 0x2cf201b1, 0x871fa6cb, 0x5798c11c, 0x37511458, 0xdf9965d1
.word 0x8a5f0c12, 0x5afa7b71, 0xa6fc0da9, 0x539047bf, 0xf8b5dc17, 0x06d1e772, 0x5905b44b, 0xe91ae8a3
.word 0x2f82939e, 0x57cd1599, 0x72aab707, 0x8aec45c2, 0xfac518ef, 0xe762a795, 0x7ae7eb26, 0x34029e0c
.word 0x7d055666, 0xd240482a, 0xb52b0761, 0xfd95b0ee, 0x07ba7aab, 0xeed6e91c, 0x16f66abe, 0xfa595011
.word 0x83c26974, 0xb25fa692, 0x8d55c5d6, 0xa25a2f2c, 0x426d2be7, 0x8923e702, 0x1657c1c6, 0x4643ddd3
.word 0x6afc57de, 0x263d659e, 0x6be52861, 0xabd1c236, 0xe5f8d1f4, 0xc787d0c6, 0x57dd06c4, 0x58943b0f
.word 0xa5ef2ac2, 0xca3590f3, 0xde5dade9, 0xac3979c8, 0x3968c00f, 0x167c6595, 0x60d50c1e, 0x6698b0a0
.word 0x1a851ba8, 0x8d6156b9, 0x656e8121, 0x40a2b5d5, 0x7daab717, 0x869c3edd, 0x271be614, 0xc22b8bf4
.word 0xcda37662, 0xe855ec0a, 0xea4f2a5e, 0xfac3c424, 0xa8c8553b, 0x133b7fa1, 0x8779dec3, 0xa24d8b22
.word 0x8f4f431e, 0x65accbc4, 0xfff7c792, 0x2179ec8d, 0x2864e222, 0x7071499a, 0x1c2681a9, 0xb407ed41
.word 0xc9d2f280, 0xe8662909, 0xf85d200c, 0x8722506e, 0x5f22af78, 0xc17a83c8, 0x98fba466, 0x724db9a6
.word 0xa9bfce14, 0x94693942, 0xa65c53e8, 0xfe8c6c62, 0x2583d588, 0x13b95923, 0x89c56b86, 0x565961a7
.word 0xd5e9bc40, 0x27c933d9, 0x3bd45895, 0xef9d0c3e, 0x386bc312, 0x8b965dcb, 0x551fa386, 0x1d49ef8f
.word 0x0fcd9b31, 0x73623fb1, 0x83bfee59, 0x1134ae94, 0x552e297c, 0x641fecbf, 0xec343512, 0xcffb2ab2
.word 0x62d6d098, 0xb0b242ee, 0x9f7837a9, 0xa3de2bf9, 0xb2bb41fd, 0xddc1bf82, 0x422af3e4, 0x62234e85
.word 0x1b6b88ab, 0x3ef6f3ed, 0xca5d0b46, 0xa8cad9e4, 0x8309e620, 0x41d51d6b, 0xa532cbbb, 0x746ec1a2
.word 0x04571cf3, 0x9e22dbf0, 0xa17cc0af, 0xd8cdf39a, 0x65c0e452, 0x80a1cc7a, 0xae018084, 0x3bd45543
.word 0x34c701fa, 0x537eb59c, 0x2e39d566, 0xbd649e68, 0x71534cff, 0xe8688454, 0x7c084e44, 0x0aa7302d
.word 0xba6c55e8, 0x93dc24ba, 0x73bfd6c4, 0xc06c535c, 0x1e2a082a, 0x89941723, 0xef7b06c0, 0x57a00d03
.word 0x28f5be9c, 0xbf4c7a2e, 0x4f8ca326, 0xd7aef56f, 0x1afe2e93, 0xd80251f2, 0x8d670313, 0x732e7b21
.word 0x4673dd81, 0x8c8f6ffb, 0xc8b1e061, 0xd4a0b375, 0x742d43eb, 0x363ac88b, 0xa595f210, 0x622e87f1
.word 0xdf74d68a, 0x8c6700bc, 0xe58e6149, 0xf1465a12, 0x4b67083f, 0xb21e43d7, 0xbe38d533, 0x404bb111
.word 0x7c69a791, 0x2cc07ff7, 0xa36f11ec, 0x4b0a3cdc, 0x284eb9fe, 0x2c1a4c2f, 0x31d65f34, 0xe41fae8e
.word 0x7e24c87f, 0x57faa5e0, 0xc879cf81, 0xf9ec5d1a, 0x634fc30a, 0xa515bb21, 0x86fabbe3, 0xcc27f431
.word 0x25dba691, 0x97b613fb, 0x391d9ff8, 0xb10313a0, 0xaa4173ed, 0x07c74754, 0x51709459, 0x11a07918
.word 0xea45c4d1, 0x23f18147, 0x1f74a5ab, 0x95ce020b, 0x765a6246, 0xd11a6cfe, 0xbc30485c, 0x449befd6
.word 0xbf30cefa, 0xdc832858, 0x67def8dd, 0xc6a51759, 0xf80f9d58, 0xa4a45cbe, 0x7358493b, 0x3e15212a
.word 0x884e6847, 0x33a7fe7d, 0xfc628547, 0xaa54a36e, 0x42b293b1, 0x65f81563, 0x0ad844a0, 0x19530971
.word 0xad88b6eb, 0xadb52d13, 0x694c7832, 0xf0f43de3, 0x46401cfd, 0xabcbf505, 0x9cf4f5b0, 0xe1044770
.word 0x5ed60932, 0x5ee85917, 0xb03670ee, 0x076513f1, 0x4e98cca7, 0xc06c2273, 0xd7cfed8c, 0xa129e81c
.word 0x555e380c, 0x73a7006e, 0x0d6dc67e, 0x8b84bded, 0xb877c118, 0x55ecf713, 0x7055ace7, 0x32148ae1
.word 0x2a1eab21, 0x28fe1cbb, 0xdbcc7600, 0xdee3ad83, 0xebfec9be, 0x58fd34bb, 0x12aa20c2, 0x9ffd18e4
.word 0x4b2d37fa, 0x07dd829f, 0x7dfc414b, 0x9235df37, 0x51b69b7a, 0x786df3c0, 0xca2e71fa, 0xdcc77a58
.word 0xaea39371, 0x4478fd8c, 0xf15380f6, 0x829ef0e3, 0x261cb704, 0xc45080c9, 0xf0f01101, 0xfaec5b17
.word 0x9a225e97, 0xce4181c6, 0x8997107f, 0x29d81b18, 0xde3b5dd3, 0x236239aa, 0x6149ff6c, 0x2ed51350
.word 0xad2342da, 0xbb001c2a, 0xe2d92765, 0xf74e3bcf, 0xa401a5f4, 0x804bd788, 0x3ece9136, 0x775b27b4
.word 0x2c0c78f8, 0xdbd06504, 0x4b007e5d, 0xa267903d, 0xfe2d9d31, 0x43d5bdb5, 0xf662a348, 0x0bbe282d
.word 0xb3ee837e, 0xbddb5b3b, 0x489c0ef6, 0x4a0ebaaa, 0x95e87262, 0x0835a29f, 0xfe22b719, 0x2892cb04
.word 0x3507a653, 0xd617f149, 0x7dd04637, 0xb81c72f4, 0x49bcab3f, 0x20e8160f, 0xd7e41bcc, 0xd3ff9af1
.word 0x91cb7d62, 0x355cec86, 0x3df7807b, 0xa9cf5e38, 0xe75c9c07, 0xab19120c, 0x58a966ed, 0x09ee8076
.word 0xb89686b4, 0x905e9eb1, 0x4d6c9ec6, 0x72f70eb2, 0x4536ecd6, 0xe9189299, 0x21a438d7, 0x63909ab2
.word 0x4da8f67d, 0x8b55cff1, 0x65d1a9ee, 0x573fd304, 0xc66a20bf, 0x191d3902, 0x264e3ab0, 0xddb50d47
.word 0x7289d43d, 0xebd3cd72, 0xcc6de5f9, 0x18f6892f, 0x2f2fc26d, 0xca9eda8a, 0x2d90a1a4, 0x336fda0e
.word 0x58ce5283, 0x402c1db8, 0x8aa857fb, 0xf291129c, 0xe7c5688a, 0xa895184d, 0xe1d19d6a, 0x4fa09588
.word 0x769b93f3, 0xeccc1517, 0x1fa59f7b, 0xde3a9f8c, 0x8e909f6b, 0xa557da53, 0x80e8da67, 0xc742aeaa
.word 0xdba5dff3, 0x2061aa7a, 0x39f0e10d, 0x8339c3e5, 0x0d5b7e60, 0x61185c02, 0x4b2d9460, 0x9187d6f4
.word 0xb008a231, 0x78f9614b, 0x6eb8ba35, 0xa8a3252d, 0xd1543645, 0x14204935, 0xbfbb454d, 0xf1c4a482
.word 0x598effb4, 0xea6453e0, 0x8e594f9b, 0x2fd792c5, 0xaf118e46, 0x88926271, 0x9e5c5131, 0x0c31e069
.word 0xc12ce4fa, 0x3e2f3dc1, 0xf678dadd, 0xf2c583ed, 0xdfb5b13b, 0xa2aa29dc, 0x40a2d1af, 0x99074f70
.word 0xddc30104, 0x872fa6c4, 0xe7e2f542, 0xe56a6a7a, 0x589aeeff, 0x40de2d52, 0x4fb09982, 0xce358e13
.word 0xc533869b, 0xec44c741, 0x1cfc53c8, 0x69beba30, 0x0b8de9ef, 0x9d7dc6c3, 0x13bb1a95, 0x94b16b11
.word 0xf86e329e, 0x7f4619fd, 0x08544f91, 0xa558db74, 0x83c12388, 0x152b53c6, 0xce5d03d0, 0x48fd3e32
.word 0x28549802, 0xd57ffdaa, 0xb2c30410, 0xf75bdf7f, 0xca704d62, 0xb507dd22, 0x66354a61, 0x4d8f32c0
.word 0xf63d1ecb, 0x373a5c12, 0xfabfa3be, 0x3244446e
.section .region_1,"aw",@progbits;
region_1:
.word 0xd9edf4a5, 0xb3884559, 0xd4a121ae, 0xc0cbe0c9, 0x744344ff, 0xd1ab6c58, 0x68ecab68, 0x1251cbf0
.word 0x150105ad, 0xe42fd0a6, 0x7266a7c4, 0x73f49d47, 0x4fea012c, 0x2ab06394, 0x810d6ba7, 0x34d05593
.word 0xea8ddb39, 0x80af8c47, 0x463dcb16, 0x10041339, 0x91b1768f, 0xf99c2850, 0x20879da0, 0x4bb824e5
.word 0x70e3922b, 0xa1e6e32f, 0x097e6284, 0x9676c27a, 0x3aa512a6, 0xd0629c81, 0x7330e0f4, 0x1c42de5a
.word 0xca33ec11, 0x5bdc0eba, 0xaad0c2e5, 0x93db74c1, 0x48993c6f, 0x7c02b826, 0x48f6ff07, 0xad2f3b8c
.word 0x5fb85b51, 0xfeb292b1, 0x822a03c0, 0x3f765996, 0xacbc9bee, 0x05c4156e, 0x4424b8f0, 0x5fa99cd5
.word 0x5ecb1068, 0x29a48103, 0x7460a138, 0x7613ad12, 0x507bb012, 0x4476b1ed, 0xefedcc58, 0x86034fa4
.word 0x50414f28, 0x1670230a, 0xc58514d4, 0x36405975, 0xa2b8f665, 0x9c9aba4a, 0x32499069, 0x1c81bb14
.word 0x9e76eb17, 0xb85dfca7, 0xa88b16f1, 0xc7846322, 0x6f21e555, 0x4ab1f189, 0x916e52f1, 0xb154f483
.word 0x478e8ad9, 0xd2039b58, 0xaf40e637, 0x73923511, 0xbe65a8ee, 0x3dc50c06, 0x27be6fa9, 0x55f41dc9
.word 0x0be44867, 0x0a901dac, 0xd4ef0b99, 0xc8292065, 0xdabfe6bf, 0xf608c458, 0xff2f8037, 0xc9896da3
.word 0xb3918930, 0x8d71c4d4, 0x8a24b7bf, 0xa6499811, 0xc1c60b85, 0x5391917e, 0x2ecf7bf6, 0x683b4eda
.word 0x189df990, 0xca08f0a6, 0x817a5183, 0x2a228d95, 0x510d2fa9, 0x9fa7118b, 0xca4612d8, 0x3d3b3dce
.word 0x45e092e0, 0x3952d34b, 0x3bdc8bd9, 0xfd8f5d54, 0x70a87ade, 0xf7fa78e6, 0x4ee8c778, 0x662e7251
.word 0x24555a72, 0x1c58b329, 0x37a6d766, 0x578739d4, 0x71df2403, 0xb2c18430, 0x80453b69, 0x13832caa
.word 0xec834eec, 0x0fa37d01, 0x6d5e1692, 0xc8756125, 0xc18d768f, 0x22637d48, 0x02ce0285, 0x57ad3fb7
.word 0xbd979c74, 0x80f7b11d, 0x34c589ef, 0x238fa630, 0x66a9141d, 0x7ffe9e13, 0x3ba31a6f, 0x18368b0c
.word 0x8189b11f, 0x9fa0c4ba, 0x3718c3a5, 0x86ca99b8, 0x5a0d8395, 0x3d50aa75, 0xf7f8e77f, 0x18dc4b2e
.word 0x7f2a3c17, 0x941bd991, 0xb79c459e, 0xb43d3797, 0xeba17395, 0x95ffa90b, 0x67172288, 0xb719b393
.word 0x8ad96e21, 0x1c1eff50, 0x908726d8, 0x5b315711, 0x3303cfeb, 0xd75bce1c, 0xfa28ca29, 0x485116f1
.word 0x57e1c07f, 0xda6240f9, 0x952cb90d, 0xbb282536, 0x333b45c2, 0x385906c6, 0x86a1b1f7, 0x78db7dc2
.word 0x720c7555, 0xf93a31a9, 0x0144a2a9, 0x4f9c2792, 0xd91dfaea, 0x496b3e9a, 0xb315da73, 0x2c6a0ad4
.word 0x035619af, 0x4eb20c1e, 0x7826e5b3, 0xa969c5ad, 0xe04b0de2, 0x9fab0563, 0x184b03b4, 0x28867b19
.word 0x2f0a4c4e, 0x604c6565, 0x203ef823, 0x6bf83143, 0x9c5761fa, 0x7c6ee941, 0x700a97e4, 0x381efae9
.word 0xfaacdb12, 0xaa15a40c, 0x96ea1ebd, 0x3890755e, 0x2a7607f1, 0x31f37093, 0xf24f9cdf, 0x05e1e680
.word 0x82b18d55, 0xf0b62868, 0xca781682, 0x7c6675fe, 0xa2f83a7a, 0xe55c093c, 0x9b56b4d1, 0x87fd246d
.word 0x080d5fb1, 0xfe9875bf, 0x6842b7be, 0x7d0bec0d, 0x743cdfb3, 0xba9eb168, 0xe088bc5a, 0xb7eb2aac
.word 0x4b189909, 0x448a6883, 0x77d12f4b, 0x1adf645a, 0x12514f84, 0xc2bca183, 0x344b63ac, 0x271d10b6
.word 0x33ffce24, 0x70ca94f2, 0xa0110ef0, 0x3b7253bc, 0xd8c8f73d, 0x0b4f2b77, 0x6c406c33, 0x0ab4872f
.word 0xac954f8b, 0x28ea46fd, 0xb0825332, 0x2f6bcd1d, 0x3825a5a9, 0x27cd6952, 0x220c7e73, 0x2e7cfe38
.word 0x15925d2d, 0xea70a21c, 0x37032d2a, 0xb5e32212, 0x5515e85f, 0x8d413542, 0x826490eb, 0x8459eeac
.word 0xee13f516, 0x47a537e2, 0x3915bd6f, 0xd355b420, 0xc11ec0b8, 0x5f7dece8, 0xe015e044, 0xe5839ab9
.word 0xb19a061f, 0x9fbe7df9, 0x14f5862a, 0x3db81cd3, 0x807c3df0, 0x798776a6, 0xfba1dced, 0x5140d8be
.word 0xc922d0aa, 0x3699f570, 0xe74d95ea, 0x8dadde9c, 0x73f8c922, 0xdb52fbbf, 0xd10767a6, 0xecb5ac8e
.word 0xc81053d1, 0x37f8b155, 0x2744aea0, 0x26e7010d, 0x3238d15e, 0x5c563d7c, 0x66f83815, 0x98b1f166
.word 0x09a270f3, 0x819dd076, 0xb08ec4dd, 0x95045141, 0x5f47c027, 0xbe087f33, 0x57eed778, 0x54c0d475
.word 0x7edd69fb, 0x80feab22, 0x281924bf, 0xc47a40e6, 0x3d12d2fd, 0x595f04f4, 0xfe144d6a, 0x168ea134
.word 0xff67b5af, 0x69811fd4, 0xda330d54, 0xe5b5d6c5, 0x6c613680, 0x65f9486e, 0xc527ee0f, 0xc0ea1cae
.word 0x280ff514, 0x150541f6, 0xfbe40705, 0xf75b4dd3, 0x38b34cab, 0x2609ab9c, 0xff63e535, 0x7b499368
.word 0x0afa5848, 0xc1a027ee, 0x0961c89b, 0x58ca2ee9, 0x7247484e, 0x23f1fc7a, 0xaaf7d00c, 0x8d72b256
.word 0x4db28b17, 0xdaf70e18, 0xd0fe2e6b, 0x9f110830, 0xb18af7f5, 0xa1e56aa8, 0x53b35860, 0xa7e240e1
.word 0xc3e41662, 0x2a3924e4, 0xf075e82c, 0x0ea4b0c6, 0x0d8bbb37, 0xb5271e50, 0xf130b0db, 0xc2910265
.word 0x93211ba8, 0xcdec3c00, 0xeca1e713, 0x51220281, 0xb4c9ded3, 0x77d2a3c1, 0x1c280c4c, 0x828097df
.word 0xa3d94258, 0x8506108b, 0xab166ba4, 0xd06b767e, 0xb52640b0, 0xbed75329, 0x46dd766e, 0x2b37ac8d
.word 0x8a0054df, 0xb0031c08, 0x6acf7b45, 0x1a2c47c9, 0x44a98fb0, 0xcf8fac09, 0xb4b2aaf6, 0x51476a2b
.word 0xb660eda4, 0xe6e865df, 0x34c20c13, 0xf1f72c06, 0xbf7b0259, 0x6c4170b3, 0x36e5694f, 0x046fb6a0
.word 0xeaca1b06, 0x02177b71, 0xbec7ec29, 0xb64681d8, 0xf9285441, 0xdf8ef34e, 0xcbc701bc, 0x5bd124e6
.word 0x7d70a7f0, 0x13410301, 0x4937bad5, 0x4333af56, 0xf093c60a, 0xa572e872, 0x99457fb1, 0x53e33dcf
.word 0xf4b8ef69, 0x744db619, 0x9362f8b5, 0x11f25fe9, 0x9275816a, 0x0102a4d1, 0xa6c4b72e, 0xdfca2e92
.word 0xd0085fbc, 0x8ed9bb52, 0xf4c205ae, 0x7a226ada, 0x85e003db, 0xdfe8c748, 0xd6681e22, 0x5d860425
.word 0x507ff3b2, 0x186e88c7, 0x31820418, 0x28addf2e, 0xd1181317, 0x0168ac7a, 0xfcb1fb0b, 0xe6129408
.word 0xd60af002, 0x9626b558, 0x17e1e4ee, 0xfb03524e, 0x0247f6f0, 0x3e8a8112, 0x5841946a, 0x0b3bb333
.word 0xeebce77d, 0x2878604b, 0x16e3abeb, 0xe49f2346, 0xc86d11af, 0xcfa49d7a, 0xba381714, 0x840fdd46
.word 0x3a0b8e98, 0xe47f5eee, 0xb776717c, 0x973be542, 0x33132149, 0xd7d5999e, 0x6891aa66, 0x22745a7a
.word 0xf0c49c8f, 0xdc3cd72f, 0xae5cd675, 0x72d22139, 0x4200700d, 0xd1c518e1, 0x386083b9, 0x5c4e31d9
.word 0xfaa72858, 0xf695c635, 0x2425ecfa, 0x292fb26c, 0x0452a6f5, 0x18785fda, 0x40bd9cbb, 0xd7f6ead7
.word 0x5abd7108, 0x64a38191, 0xe465a86a, 0x0c843bfb, 0x157cf351, 0x2d6d85b3, 0x576b84c3, 0x277f1f89
.word 0xf812da4f, 0x0d3b2d46, 0xfc79704c, 0xb18a0a5e, 0x14ee4788, 0xfc5fe934, 0xb4dc1909, 0xc3df90cf
.word 0x54663b1e, 0xf26dd2ed, 0x68e7e246, 0x09840fd4, 0x667232e4, 0x779103e7, 0xc44ec408, 0x2be38a76
.word 0xa6739908, 0x0f5fe732, 0x871c2c08, 0x0957cc3e, 0x0365f23e, 0x63aa2e8b, 0x99c05e8f, 0xfaad8e2c
.word 0x8c5f794a, 0x7d4b5632, 0x9f58ad70, 0x9904c484, 0x06c11e16, 0x94349515, 0xdfa291f3, 0xe3248863
.word 0xc325881f, 0xb8069278, 0x447517da, 0x5f776dc5, 0x725b34f5, 0x90f09c34, 0xf2f964da, 0x88c26848
.word 0x7001ec7b, 0xf66c59d6, 0x5b250e2d, 0x2e91a226
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_2:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_3:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_4:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_5:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_6:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_7:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_8:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_9:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_10:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_11:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_12:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_13:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_14:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

mmode_intr_vector_15:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x29, test_done
                  jalr x0, x29, 0

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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x27, x21, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x19, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x19, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x19, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x19, x9, ecall_handler
                  li x9, 0x1
                  beq x19, x9, instr_fault_handler
                  li x9, 0x5
                  beq x19, x9, load_fault_handler
                  li x9, 0x7
                  beq x19, x9, store_fault_handler
                  li x9, 0xc
                  beq x19, x9, pt_fault_handler
                  li x9, 0xd
                  beq x19, x9, pt_fault_handler
                  li x9, 0xf
                  beq x19, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x21, x27, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
