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
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
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
                  li x0, 0xff42c366
                  li x1, 0x0
                  li x3, 0x7d3280f7
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x6
                  li x7, 0x0
                  li x8, 0xf8527bbd
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0x7
                  li x12, 0x0
                  li x14, 0xa4a049e7
                  li x15, 0xb
                  li x16, 0x5dc70d56
                  li x17, 0x3
                  li x18, 0x0
                  li x19, 0x80000000
                  li x20, 0xe461b8f1
                  li x21, 0x6bdefff2
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x3
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x8
                  li x29, 0x7f34a5ae
                  li x30, 0xf27fb05a
                  li x31, 0x0
                  la x13, user_stack_end
main:             la           s8, sub_1
                  xori         t6, s11, -925
                  addi         s8, s8, 526
                  sub          tp, a1, s9
                  srli         s7, t6, 30
                  slti         a7, s6, 858
                  bne          zero, s5, main_j2 #branch to jump instr
                  and          t1, t0, s4
                  and          s10, s0, sp
                  and          s2, s8, t3
                  xor          t4, zero, s2
main_j2:          jalr         t1, s8, -525 #jump main -> sub_1
                  addi         t6, zero, -10 #init loop 0 counter
                  or           t4, s9, s3
                  xor          s8, t5, s9
                  srai         s9, a4, 29
                  srl          s11, a5, zero
                  lui          t3, 341325
                  xor          ra, s4, t1
                  or           t0, t2, gp
                  add          s8, s11, tp
                  sltu         s8, a6, a4
                  nop
                  sra          s5, a3, a1
                  sll          s4, s6, s0
                  slli         zero, s7, 11
                  srli         s5, a7, 31
                  sra          s1, gp, sp
                  add          s11, t5, a6
                  andi         s8, s6, 233
                  ori          s0, t0, -1992
                  addi         gp, zero, -20 #init loop 0 limit
                  nop
main_0_0_t:       sub          a5, t4, s4
                  addi         t6, t6, -1 #update loop 0 counter
                  srli         s2, s5, 29
                  andi         s1, s5, 409
                  slti         t0, a0, -1045
                  sub          s7, a1, t2
                  bge          t6, gp, main_0_0_t #branch for loop 0
                  add          s9, t5, s11
                  srai         tp, s9, 30
                  slti         t1, t2, -1389
                  add          t6, t5, t1
                  add          t4, a6, t4
                  blt          s9, s2, 18f
                  sll          ra, s7, a2
                  nop
                  sltiu        s9, a7, 63
                  srai         s5, a2, 26
                  or           t1, gp, a7
                  srai         s7, a6, 27
                  sll          a7, a2, s10
                  add          s7, t5, s4
                  srl          a2, zero, t0
                  bne          gp, s2, 22f
                  slt          t2, s0, s4
                  sll          gp, a0, t2
                  sltu         s5, s2, gp
18:               andi         gp, t5, 1311
                  and          s9, s8, s3
                  nop
                  bltu         s3, a5, 35f
22:               bgeu         t5, s4, 36f
                  srl          t5, t4, t0
                  bgeu         t4, a2, 39f
                  blt          s10, a7, 29f
                  bgeu         gp, tp, 37f
                  sltu         a5, a4, s0
                  auipc        s10, 505812
29:               bgeu         ra, a2, 33f
                  andi         a0, s11, 767
                  auipc        a5, 870493
                  add          s7, t0, s10
33:               srai         t4, tp, 15
                  andi         s5, t3, -2035
35:               xori         s11, a5, -1505
36:               sltu         s5, a3, sp
                  xori         s8, a2, 1039
                  sll          t2, a0, t4
                  srli         t0, a0, 15
                  sub          s9, a2, s0
                  la           t5, sub_1
                  andi         a2, a1, -1378
                  andi         zero, sp, -845
                  nop
                  addi         t5, t5, -295
                  nop
                  bne          s2, s10, main_j1 #branch to jump instr
                  andi         ra, a0, -1307
                  slli         ra, t6, 30
main_j1:          jalr         t1, t5, 296 #jump main -> sub_1
37:               bgeu         sp, s11, 46f
                  bgeu         t1, s4, 41f
39:               nop
                  bgeu         s4, t2, 55f
41:               or           a6, a3, s0
                  ori          s9, a0, 767
                  auipc        t5, 1039957
                  beq          s11, s0, 53f
                  auipc        s4, 849497
46:               ori          s7, t0, -586
                  ori          s3, s8, -338
                  nop
                  xori         s4, s5, 1797
                  or           s8, gp, s4
                  auipc        s4, 805961
                  sra          t6, s1, a5
53:               srli         s8, t4, 8
                  srl          zero, s5, s7
55:               slli         t4, zero, 19
                  slt          tp, s5, s3
                  slti         tp, gp, 797
                  bgeu         zero, s9, 68f
                  or           tp, a3, t2
                  or           t0, a5, a0
                  blt          s9, t1, 76f
                  or           s7, a4, sp
                  srl          s10, t3, s1
                  lui          a7, 980726
                  beq          a1, t6, 76f
                  sll          ra, s3, s6
                  bne          t4, t4, 76f
68:               sra          s5, a3, s8
                  srl          s1, t2, s0
                  slt          t6, s3, ra
                  lui          s7, 235449
                  andi         s9, a2, 585
                  bne          s4, a0, 76f
                  bne          a4, a6, 76f
                  sltu         a5, s0, t0
76:               sra          s1, a6, a2
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            slti         s4, sp, 292
                  srai         gp, s8, 6
                  bge          a6, s2, sub_4_stack_p
                  sub          s6, s7, a4
                  ori          s5, s8, -907
sub_4_stack_p:    addi         a3, a3, -20
                  lui          s4, 601203
                  slti         s2, a0, -639
                  sw           t1, 4(a3)
                  sra          a2, sp, a4
                  lui          a0, 130188
                  beq          s9, t5, 5f
                  add          s2, a2, t0
                  addi         t4, a2, 92
                  sltiu        t3, a1, 895
                  slt          s1, s5, t6
5:                lui          t0, 125004
                  srai         s9, t2, 10
                  lui          s7, 880553
                  slti         a6, tp, 388
                  add          t2, a1, t2
                  add          t5, t2, t6
                  slti         t5, t1, -1314
                  sll          t6, s3, gp
                  xori         s6, s6, 1135
                  lw           t1, 4(a3)
                  sltu         s7, s6, a4
                  addi         a3, a3, 20
                  sll          t3, s2, s11
29:               addi x5, x6, 0
29:               jalr x5, x5, 0
sub_2:            add          s9, t1, a2
                  lui          a5, 339264
                  slt          s8, s8, s6
                  andi         s2, a1, 1756
                  slt          a7, t6, t2
                  bltu         t5, a5, sub_2_stack_p
                  xori         s4, a7, -748
                  ori          s7, t3, 229
sub_2_stack_p:    addi         a3, a3, -52
                  srai         tp, s0, 13
                  srli         t5, a2, 21
                  sw           t1, 4(a3)
                  sra          a2, s7, a3
                  addi         s2, zero, 7 #init loop 0 counter
                  nop
                  or           s5, sp, t3
                  srli         gp, s10, 5
                  addi         t4, zero, 12 #init loop 0 limit
                  andi         t5, t2, 1489
sub_2_12_0_t:     sltiu        a0, a2, 1961
                  addi         s2, s2, 5 #update loop 0 counter
                  and          t0, a5, a0
                  bne          s2, t4, sub_2_12_0_t #branch for loop 0
                  slt          ra, s4, ra
                  addi         ra, zero, -9 #init loop 1 counter
                  ori          t4, s5, -801
                  slti         a2, s10, 1426
                  addi         a5, zero, 13 #init loop 1 limit
                  andi         s6, gp, 564
                  nop
sub_2_0_1_t:      addi         t3, gp, 1364
                  addi         ra, ra, 8 #update loop 1 counter
                  sltu         s4, s3, a2
                  ori          t6, s6, -478
                  addi         tp, zero, -7 #init loop 0 counter
                  addi         s0, zero, 3 #init loop 0 limit
                  slli         s5, s1, 31
                  add          t3, s3, a3
sub_2_0_0_t:      or           s9, tp, t4
                  addi         tp, tp, 5 #update loop 0 counter
                  ori          s6, t4, 26
                  ori          s10, gp, 1224
                  sltu         a0, s5, sp
                  addi         s11, a3, 1076
                  bltu         tp, s0, sub_2_0_0_t #branch for loop 0
                  andi         a1, t1, -1675
                  ori          s6, t6, -731
                  srli         t4, s4, 27
                  add          s8, gp, t1
                  bltu         ra, a5, sub_2_0_1_t #branch for loop 1
                  ori          s6, a1, -1310
                  addi         s8, zero, 1 #init loop 0 counter
                  lui          t1, 992734
                  addi         ra, zero, 16 #init loop 0 limit
sub_2_1_0_t:      xori         a2, sp, 920
                  slt          a2, a7, s8
                  add          a0, s8, zero
                  addi         s8, s8, 3 #update loop 0 counter
                  addi         t2, t2, -1938
                  auipc        a7, 950701
                  addi         t2, s9, -1947
                  xor          s7, a0, t1
                  bne          s8, ra, sub_2_1_0_t #branch for loop 0
                  addi         a1, s1, -1445
                  addi         a0, zero, 5 #init loop 0 counter
                  addi         s10, zero, -19 #init loop 0 limit
sub_2_15_0_t:     lui          zero, 205223
                  addi         a0, a0, -6 #update loop 0 counter
                  bne          a0, s10, sub_2_15_0_t #branch for loop 0
                  or           s5, t4, s7
                  addi         s8, zero, -4 #init loop 0 counter
                  xori         s2, s5, 1498
                  sra          a5, s9, s8
                  addi         gp, zero, 12 #init loop 0 limit
                  slti         a1, s4, 482
sub_2_13_0_t:     add          t0, t6, s9
                  and          t3, ra, a2
                  sub          s7, zero, s10
                  add          s3, s8, t6
                  addi         s8, s8, 2 #update loop 0 counter
                  xor          s5, a5, t4
                  xori         s2, s3, 1991
                  bltu         s8, gp, sub_2_13_0_t #branch for loop 0
                  sltu         ra, s5, t0
                  addi         t2, zero, 8 #init loop 1 counter
                  srl          s9, s11, a6
                  addi         tp, zero, 15 #init loop 1 limit
                  sll          s9, s9, t2
sub_2_10_1_t:     or           a5, s7, t6
                  srl          gp, s7, s10
                  addi         t2, t2, 1 #update loop 1 counter
                  xori         s7, s11, -188
                  slti         t6, a2, 1694
                  addi         s8, zero, -9 #init loop 0 counter
                  addi         a0, zero, 8 #init loop 0 limit
                  sll          zero, t6, s10
                  or           zero, a7, a7
                  sltiu        s11, gp, 1521
sub_2_10_0_t:     sltiu        gp, s4, -1510
                  addi         s8, s8, 7 #update loop 0 counter
                  sltu         s10, s4, a4
                  bltu         s8, a0, sub_2_10_0_t #branch for loop 0
                  sll          a6, t6, a4
                  xori         s0, s10, 1369
                  sll          gp, t1, a6
                  auipc        t1, 742100
                  blt          t2, tp, sub_2_10_1_t #branch for loop 1
                  andi         s3, tp, -64
                  addi         tp, zero, 1 #init loop 1 counter
                  xor          t3, s3, s0
                  sltu         t1, s0, t5
                  lui          a7, 664511
                  auipc        s1, 166444
                  addi         s0, zero, 10 #init loop 1 limit
                  xor          t2, s0, s11
                  slli         s9, a0, 2
sub_2_3_1_t:      sltiu        s4, s5, -1021
                  add          s9, a5, t6
                  andi         a7, t5, 1497
                  sra          ra, t2, s7
                  addi         tp, tp, 6 #update loop 1 counter
                  srai         s10, a0, 30
                  addi         t4, zero, 3 #init loop 0 counter
                  xor          zero, a3, s8
                  slti         gp, a4, 340
                  addi         a5, zero, 7 #init loop 0 limit
sub_2_3_0_t:      slti         s10, zero, 502
                  addi         t1, s10, -1977
                  slt          t0, t5, s2
                  slti         s8, ra, 245
                  addi         t4, t4, 3 #update loop 0 counter
                  sra          s11, s1, a5
                  bltu         t4, a5, sub_2_3_0_t #branch for loop 0
                  xori         ra, a4, 35
                  bltu         tp, s0, sub_2_3_1_t #branch for loop 1
                  srl          s1, s0, ra
                  addi         tp, zero, -9 #init loop 1 counter
                  add          s5, t5, t6
                  sra          t6, a5, s7
                  sltu         s6, s8, a3
                  addi         s2, s9, -995
                  ori          s4, a7, 1186
                  srai         t2, a7, 18
                  addi         s0, zero, -11 #init loop 1 limit
                  lui          s3, 795199
sub_2_14_1_t:     add          gp, s10, s10
                  addi         tp, tp, -2 #update loop 1 counter
                  xori         s3, ra, -29
                  addi         a1, zero, 10 #init loop 0 counter
                  andi         s5, t6, -1119
                  addi         a5, zero, 11 #init loop 0 limit
                  xor          a6, t1, a2
                  andi         s5, a3, -31
                  sltu         s6, t1, s10
sub_2_14_0_t:     or           s4, t5, t5
                  ori          s3, t0, -1478
                  srl          s11, s7, t5
                  addi         a1, a1, 3 #update loop 0 counter
                  bltu         a1, a5, sub_2_14_0_t #branch for loop 0
                  slti         a2, t3, 1046
                  slt          s10, a1, t1
                  or           t5, s2, s3
                  bne          tp, s0, sub_2_14_1_t #branch for loop 1
                  addi         s11, s7, 815
                  addi         s4, zero, 8 #init loop 0 counter
                  slti         a6, s5, 724
                  addi         ra, zero, 14 #init loop 0 limit
                  ori          s2, sp, 470
sub_2_7_0_t:      xori         t4, ra, 1407
                  lui          a1, 770226
                  addi         s4, s4, 6 #update loop 0 counter
                  or           t1, s2, s0
                  sltu         a0, a6, s3
                  srli         s1, a4, 2
                  and          zero, a7, s0
                  slli         t2, s5, 27
                  and          s6, s2, s7
                  slt          s7, ra, s0
                  sltiu        a7, gp, -109
                  sub          a0, a7, gp
                  bne          s4, ra, sub_2_7_0_t #branch for loop 0
                  slli         s2, t0, 27
                  addi         a7, zero, 0 #init loop 1 counter
                  slti         tp, s11, 465
                  xori         t0, tp, -835
                  addi         s9, zero, -4 #init loop 1 limit
                  lui          t2, 558671
                  sltu         tp, zero, zero
sub_2_8_1_t:      xor          t0, s8, a1
                  srli         s11, a5, 17
                  addi         a7, a7, -2 #update loop 1 counter
                  slt          a2, a3, a3
                  sltu         s7, t0, s11
                  slt          a5, s9, s8
                  addi         t4, zero, -1 #init loop 0 counter
                  addi         ra, zero, 9 #init loop 0 limit
                  srl          s7, tp, a4
                  addi         s5, t5, 2010
                  sll          a5, zero, t6
sub_2_8_0_t:      addi         a2, s9, 1283
                  add          s6, t3, zero
                  srai         s8, s11, 14
                  addi         t4, t4, 10 #update loop 0 counter
                  auipc        a1, 519907
                  bne          t4, ra, sub_2_8_0_t #branch for loop 0
                  sltiu        s2, t1, 91
                  slt          t0, t0, a3
                  nop
                  bge          a7, s9, sub_2_8_1_t #branch for loop 1
                  srli         s0, gp, 26
                  addi         s2, zero, 6 #init loop 1 counter
                  srl          a5, zero, a3
                  srli         s5, a0, 17
                  and          zero, a7, t4
                  sll          a5, s9, a4
                  addi         ra, zero, -9 #init loop 1 limit
sub_2_4_1_t:      andi         t5, s0, 1200
                  auipc        s0, 503389
                  or           zero, t4, t6
                  xor          a2, s6, ra
                  slti         t6, a0, -700
                  addi         s2, s2, -1 #update loop 1 counter
                  lui          t1, 757064
                  addi         s9, zero, 1 #init loop 0 counter
                  slt          s7, a7, t1
                  addi         s11, zero, 13 #init loop 0 limit
                  or           t4, s5, a4
                  xor          t2, zero, a7
                  andi         t1, t2, -2032
sub_2_4_0_t:      add          t4, s9, t5
                  sra          s0, a1, sp
                  addi         s9, s9, 6 #update loop 0 counter
                  sltu         s4, a4, t4
                  bne          s9, s11, sub_2_4_0_t #branch for loop 0
                  srai         tp, t4, 16
                  sra          a7, s11, s4
                  nop
                  xori         s8, s0, 478
                  slli         gp, a5, 8
                  xor          s7, s6, a7
                  slli         s7, sp, 22
                  and          s3, a6, s11
                  lui          s1, 982234
                  beq          s2, ra, sub_2_4_1_t #branch for loop 1
                  xori         t1, a3, 1535
                  sltu         t2, tp, t1
                  nop
                  blt          t1, t6, 16f
                  andi         t1, gp, -1686
                  slti         s8, s0, 1627
                  sra          s2, t0, a6
                  sltu         s3, a0, t6
                  sub          t1, s11, s3
                  slti         a5, a7, 1814
                  sra          a1, t4, a4
                  add          s4, a5, s7
                  slt          s11, a7, s7
                  sltiu        t2, a3, -331
                  srli         a7, a6, 7
                  auipc        tp, 15199
                  slli         s9, a1, 26
16:               or           ra, s4, s6
                  bge          a2, s11, 27f
                  srl          a6, t0, a4
                  add          s8, s11, s4
                  beq          t1, a1, 40f
                  ori          t1, t0, 289
                  sra          t2, s11, a2
                  sra          s5, s11, t1
                  bne          t4, t5, 37f
                  sub          s5, s3, t3
                  srai         s11, t0, 5
27:               sra          zero, s8, s5
                  slt          a1, a4, s6
                  ori          t3, t2, -1114
                  lui          t6, 349809
                  sra          s6, s6, s10
                  slli         s4, s9, 29
                  srl          a5, a3, s5
                  andi         ra, zero, -1634
                  andi         tp, s6, -1990
                  srl          s5, t4, t1
37:               andi         gp, t4, 654
                  and          s0, ra, s0
                  slli         a1, t1, 15
40:               beq          s6, a4, 52f
                  slli         a2, t1, 26
                  ori          s6, a0, -493
                  or           a2, t6, zero
                  srl          s8, t3, s6
                  bne          t6, s5, 47f
                  auipc        a6, 64944
47:               xor          a6, t5, a5
                  sub          a0, s1, t6
                  or           t2, t4, a4
                  srli         t1, sp, 18
                  xor          gp, s0, s5
52:               bltu         s1, a0, 60f
                  bgeu         gp, t0, 61f
                  bgeu         zero, t1, 66f
                  sltu         t6, a7, sp
                  sll          gp, s0, a4
                  slt          a1, a7, s11
                  sub          s3, a0, s1
                  srli         s8, t0, 6
60:               srli         gp, s5, 26
61:               srl          s6, a2, a6
                  srai         zero, t0, 12
                  sltiu        s6, a3, 1456
                  or           tp, a7, s4
                  ori          a5, s1, 1199
                  addi         a2, zero, 10 #init loop 1 counter
                  addi         t4, zero, 9 #init loop 1 limit
sub_2_6_1_t:      xor          ra, t5, a0
                  srli         s9, s10, 8
                  ori          gp, s4, 1881
                  addi         a2, a2, -7 #update loop 1 counter
                  sltu         s0, s3, a0
                  srli         tp, t4, 2
                  auipc        tp, 951093
                  addi         s8, a2, 935
                  addi         s7, zero, -7 #init loop 0 counter
                  addi         s3, zero, -12 #init loop 0 limit
                  slt          a0, s10, a1
                  sltu         s9, a2, s3
                  or           ra, t5, a0
                  xori         t6, t4, -1638
sub_2_6_0_t:      ori          s6, t6, -751
                  srai         a1, t2, 15
                  lui          gp, 64374
                  sltiu        a0, a2, 225
                  auipc        t5, 466512
                  sll          s5, t4, t0
                  addi         s7, s7, -1 #update loop 0 counter
                  and          a6, a5, t6
                  and          s5, a3, s4
                  bne          s7, s3, sub_2_6_0_t #branch for loop 0
                  sltiu        s4, ra, -1825
                  addi         s9, a0, -1565
                  bgeu         a2, t4, sub_2_6_1_t #branch for loop 1
                  andi         s11, a1, -1030
66:               auipc        s9, 1014063
                  add          s0, a2, s6
                  nop
                  srl          t5, s3, s8
                  add          t5, s9, s4
                  ori          s2, s0, -1596
                  blt          zero, s3, 80f
                  sra          s6, t2, s4
                  slt          a6, gp, a0
                  andi         s1, s0, 1414
                  blt          a0, ra, 84f
                  srl          t5, sp, s2
                  nop
                  nop
80:               bgeu         s1, s6, 93f
                  srai         s8, zero, 25
                  sltiu        t5, s10, -1163
                  srl          t4, s1, a1
84:               bltu         sp, s2, 87f
                  sra          t1, s10, gp
                  slt          s11, t2, t3
87:               xor          ra, a4, a7
                  slt          s4, s8, s10
                  beq          s1, t1, 95f
                  addi         s1, a4, -1295
                  ori          s6, ra, 42
                  slli         t6, s2, 8
93:               sltu         s11, t2, tp
                  and          t1, ra, t3
95:               slti         t3, s4, -1697
                  andi         t6, a1, -717
                  bne          s0, s1, 110f
                  sub          a2, s5, t5
                  sll          s4, tp, s6
                  blt          t1, sp, 101f
101:              xor          s10, s1, t2
                  slti         a6, s10, -1739
                  andi         t3, a2, -1760
                  addi         s3, s7, -387
                  sltiu        s7, t2, 228
                  lui          t1, 362493
                  srli         s8, zero, 30
                  and          ra, t6, a7
                  slti         a7, tp, -473
110:              sra          s9, tp, s1
                  ori          s0, t2, 961
                  srai         a5, s7, 9
                  nop
                  lui          s11, 558508
                  andi         s4, s4, 1171
                  and          a5, s6, s0
                  srli         s2, t6, 23
                  blt          t5, sp, 134f
                  andi         s10, t3, 1928
                  sub          t5, tp, ra
                  nop
                  bne          s4, s5, 135f
                  sltiu        a2, t2, -964
                  sub          s0, s3, t3
                  bne          a0, s3, 136f
                  slt          s2, s3, s1
                  xor          s2, a0, a4
                  blt          t2, ra, 135f
                  beq          t1, zero, 149f
                  addi         s10, a0, 278
                  sltiu        s8, a4, 1167
                  or           s10, s11, a5
                  or           a6, s10, t1
134:              blt          s0, s8, 140f
135:              auipc        s6, 49708
136:              srai         s0, a1, 18
                  sub          t4, a1, s2
                  srli         a6, t6, 15
                  auipc        t2, 117950
140:              beq          s1, sp, 157f
                  bltu         t1, t2, 151f
                  add          s11, a7, t6
                  lui          a0, 843404
                  bge          s2, t0, 145f
145:              bne          t2, a7, 146f
146:              slti         t0, s2, 443
                  lui          s3, 199545
                  bne          a1, t0, 152f
149:              add          zero, a2, s3
                  bltu         s0, a7, 164f
151:              or           s2, a6, s0
152:              sltiu        ra, s3, 1480
                  lui          ra, 361932
                  slli         a2, t5, 17
                  slti         s4, s2, 1387
                  add          s6, a4, a4
157:              and          a1, ra, a7
                  add          s4, zero, t3
                  nop
                  xor          a0, zero, t2
                  bgeu         a7, gp, 176f
                  bne          a5, t2, 166f
                  sll          s1, s11, s7
164:              slli         s6, s6, 21
                  bge          s3, a5, 179f
166:              srli         s6, t5, 31
                  srli         t2, s4, 21
                  srl          s11, s8, gp
                  bge          a2, a4, 189f
                  srli         t2, a2, 7
                  xor          s1, ra, a1
                  srai         zero, zero, 18
                  and          t1, s7, a3
                  andi         s6, a6, 974
                  blt          t1, t1, 183f
176:              andi         a1, a2, 484
                  bgeu         s4, s10, 190f
                  slli         t5, tp, 19
179:              sltiu        a7, sp, -1005
                  andi         t3, a0, -1813
                  lui          s6, 737391
                  or           s2, t6, t4
183:              andi         s10, a7, 1556
                  bltu         s1, s10, 191f
                  ori          ra, s7, 1340
                  ori          s9, t6, 179
                  addi         a7, a4, 1795
                  ori          s5, s1, 1889
189:              bgeu         t6, a6, 204f
190:              bgeu         s8, s3, 207f
191:              srli         gp, s8, 23
                  sltiu        a0, t3, 325
                  sll          s8, s5, s11
                  xori         a0, s11, 737
                  addi         a1, zero, -9 #init loop 0 counter
                  xor          t6, s3, a4
                  xor          s1, tp, t6
                  xori         tp, s2, -927
                  xor          s11, sp, gp
                  xori         s3, a5, -1752
                  lui          a5, 742589
                  slti         s4, a5, 1620
                  addi         t1, zero, -1 #init loop 0 limit
                  xor          s3, sp, zero
                  slti         s9, s0, 969
                  ori          s0, s8, 1373
                  sll          s5, a7, ra
sub_2_5_0_t:      and          a7, a3, s3
                  andi         s8, t3, 471
                  srai         s11, s3, 29
                  addi         a1, a1, 4 #update loop 0 counter
                  lui          t3, 811737
                  sltu         s5, gp, zero
                  lui          zero, 321648
                  xori         a7, a3, -1075
                  srli         s9, s0, 6
                  sll          s6, t2, s1
                  auipc        s0, 900095
                  bne          a1, t1, sub_2_5_0_t #branch for loop 0
                  xori         t4, t2, 1892
                  nop
                  beq          s10, s2, 197f
197:              blt          a3, t2, 205f
                  addi         t1, s11, 339
                  bltu         ra, t1, 210f
                  sra          s5, s4, a0
                  and          s9, s11, s11
                  auipc        tp, 118209
                  slti         s6, t6, 1790
204:              sltiu        s5, t1, -855
205:              xor          ra, s0, a0
                  bltu         s9, a1, 220f
207:              sra          t3, t4, s11
                  srai         s10, t0, 25
                  sub          t6, a4, t1
210:              ori          s5, s1, -1034
                  slli         s2, s11, 19
                  beq          s11, t6, 224f
                  and          s7, t2, a6
                  lui          t4, 382336
                  bgeu         tp, gp, 221f
                  auipc        s5, 355219
                  srai         s3, s7, 10
                  addi         a7, zero, -10 #init loop 0 counter
                  auipc        a0, 496810
                  slli         s1, s1, 12
                  and          t1, t4, t4
                  addi         s4, zero, -6 #init loop 0 limit
sub_2_2_0_t:      and          ra, a0, ra
                  lui          s7, 764152
                  addi         a7, a7, 6 #update loop 0 counter
                  andi         a1, a2, -532
                  srli         s10, t6, 27
                  sltu         ra, t2, s8
                  sll          s5, t5, t2
                  blt          a7, s4, sub_2_2_0_t #branch for loop 0
                  xor          s0, a1, t4
                  xor          t4, t4, tp
                  bge          ra, s9, 220f
220:              lui          t5, 907935
221:              andi         t3, t1, 1203
                  xori         a7, s4, 1720
                  xori         s3, a4, -1367
224:              sltiu        t3, tp, 300
                  xori         s8, s5, 213
                  and          s2, gp, sp
                  xori         s1, s1, -1743
                  bltu         a0, s5, 234f
                  andi         s7, zero, -248
                  xori         t6, s2, 91
                  xor          a6, sp, s4
                  andi         a2, t1, -248
                  sub          s7, t6, s5
234:              blt          s2, s0, 242f
                  sra          a6, s7, s2
                  xor          a6, gp, t4
                  add          t3, t0, s10
                  add          s4, t5, s5
                  add          t2, s3, s10
                  slli         s0, t3, 19
                  sra          tp, s4, t3
242:              xori         t4, t1, 1618
                  bge          a5, sp, 259f
                  sltu         tp, tp, s8
                  addi         s5, t0, 1422
                  xor          zero, s9, a2
                  bgeu         t5, a2, 249f
                  bgeu         a6, s8, 261f
249:              add          zero, a1, s10
                  sltu         a1, a7, a5
                  blt          s4, s10, 264f
                  slli         t2, s8, 16
                  ori          t4, tp, -719
                  xor          a5, s10, t2
                  addi         t4, gp, 587
                  xori         s2, tp, -640
                  xor          s6, s3, a4
                  sltiu        s11, s3, 2028
259:              and          ra, s10, s8
                  slti         a0, s1, 836
261:              nop
                  xor          a6, s9, gp
                  ori          t0, gp, -274
264:              sltu         a2, s5, t4
                  nop
                  slt          t2, s4, t5
                  addi         a5, t6, -342
                  beq          s8, t1, 272f
                  or           a0, t2, a7
                  sltiu        a6, s2, -1482
                  srai         a6, gp, 1
272:              auipc        a2, 38254
                  sltu         s9, s10, a3
                  lui          s10, 427674
                  beq          s0, t4, 288f
                  sltiu        a6, tp, -719
                  slti         s11, sp, 199
                  slt          s4, s8, gp
                  sltiu        s6, t5, 479
                  xori         ra, a7, -1294
                  or           a5, s10, a4
                  srai         a7, a0, 19
                  xori         s10, sp, -297
                  addi         t4, t4, -222
                  sra          s7, s9, t1
                  and          gp, a5, s8
                  and          s9, t5, s9
288:              xor          gp, s1, s5
                  sltu         t5, t2, t1
                  sll          t4, t5, gp
                  srai         s3, a2, 29
                  xor          s11, s11, a6
                  bge          s6, tp, 305f
                  srl          s7, zero, s5
                  add          a2, sp, a2
                  srli         a6, t1, 23
                  blt          a6, s8, 305f
                  slli         s0, tp, 1
                  nop
                  nop
                  and          s7, t1, s8
                  sub          a6, s3, s2
                  sra          a6, a0, s1
                  slli         a2, t1, 5
305:              andi         a7, gp, -786
                  xori         t4, s8, 768
                  xor          a7, t5, tp
                  lui          s6, 665980
                  nop
                  add          s3, s8, s2
                  srli         s7, s1, 22
                  slli         t0, t3, 28
                  bltu         s8, s7, 314f
314:              or           s9, a4, t3
                  andi         t0, s5, 2010
                  sra          a2, t0, tp
                  sll          s9, s9, a0
                  nop
                  sra          s10, s7, s9
                  sub          a7, a6, s2
                  and          a7, a6, t0
                  slt          s2, t4, sp
                  sltu         t5, ra, t2
                  xor          t4, a4, t0
                  srai         t1, s0, 0
                  andi         s1, a6, -127
                  blt          s9, s6, 337f
                  nop
                  bltu         a2, a4, 349f
                  and          a5, s2, t1
                  sub          s6, s1, a1
                  bltu         zero, s0, 336f
                  addi         s2, t0, -1434
                  sub          a5, zero, a3
                  slti         s6, t0, 1310
336:              sra          s4, t6, s4
337:              sub          a1, t5, a3
                  sltu         gp, tp, t1
                  bgeu         zero, s8, 342f
                  nop
                  bgeu         a1, a5, 351f
342:              sll          t3, ra, s0
                  slli         s4, s10, 6
                  bltu         t2, t3, 345f
345:              beq          a4, t1, 358f
                  bge          t4, t1, 359f
                  add          a2, s9, s2
                  bge          ra, s11, 350f
349:              sra          a0, a1, t1
350:              sltu         s10, s10, s11
351:              srl          ra, t1, t2
                  sltiu        t3, s8, -1494
                  blt          s2, s10, 365f
                  and          s9, s1, s1
                  bgeu         tp, t0, 365f
                  sll          gp, a5, t6
                  bne          t0, t5, 371f
358:              srli         s2, s8, 18
359:              auipc        s2, 378463
                  or           t1, gp, t2
                  sra          s3, s6, a2
                  add          t5, s3, s2
                  srli         a5, t5, 17
                  andi         s11, a4, 856
365:              andi         a1, s10, -1194
                  andi         t4, s0, -1397
                  sltiu        a1, a5, -281
                  andi         a1, t2, 513
                  sra          s1, t2, a7
                  bgeu         s0, t2, 374f
371:              slt          a1, a5, t4
                  sll          a2, tp, ra
                  slti         s9, ra, 349
374:              lui          t5, 109610
                  sub          a7, ra, s4
                  beq          s9, s4, 384f
                  xori         ra, t2, 515
                  srli         a6, t2, 24
                  srl          tp, s4, t6
                  ori          s10, s5, -145
                  sub          a5, s7, t3
                  nop
                  xori         t5, s2, -1213
384:              bgeu         gp, a3, 404f
                  or           s10, t2, s11
                  ori          s6, s4, 770
                  auipc        a5, 426844
                  nop
                  xor          a2, a6, s5
                  srli         s4, s6, 6
                  slli         a7, t5, 18
                  andi         ra, s9, -1711
                  lui          zero, 943128
                  addi         s4, gp, -670
                  ori          t0, s7, -961
                  sub          s11, a3, a1
                  sll          ra, s10, a3
                  bgeu         s7, ra, 414f
                  nop
                  auipc        s5, 878705
                  srli         t5, s3, 19
                  sltu         a0, t2, ra
                  slti         s7, t0, 1
404:              slti         s6, s7, 322
                  sll          t2, s2, s4
                  slli         s0, t5, 3
                  addi         s1, ra, 1864
                  add          a6, t6, s10
                  blt          s1, s8, 410f
410:              andi         s1, s2, -1881
                  srli         a1, t6, 29
                  auipc        gp, 871413
                  beq          t6, gp, 421f
414:              sltiu        s3, s3, 9
                  sub          s0, a4, zero
                  add          a7, s1, a4
                  beq          s2, s0, 428f
                  bgeu         s1, gp, 422f
                  srli         s7, t3, 12
                  slli         s9, a0, 3
421:              srli         s9, s7, 29
422:              srl          s6, t0, s3
                  sra          t0, s10, t0
                  sltu         t1, t3, a0
                  blt          s5, s0, 438f
                  sra          a5, t2, t0
                  sll          t1, t0, a2
428:              xor          t5, s10, t3
                  beq          zero, tp, 435f
                  addi         s4, t5, -36
                  nop
                  sra          t1, s6, zero
                  srai         t1, t2, 26
                  addi         t0, s5, -1340
435:              bltu         s6, a6, 436f
436:              auipc        t1, 274456
                  slt          a7, s2, ra
438:              slt          a0, t1, t3
                  ori          t5, t0, -1187
                  srl          t6, s5, t1
                  xori         a2, t6, 505
                  blt          gp, t4, 450f
                  bltu         a0, t4, 463f
                  bgeu         s10, s3, 454f
                  sll          s4, a4, a3
                  beq          a4, ra, 453f
                  srl          s4, a7, ra
                  andi         s5, a7, -1273
                  nop
450:              slt          a6, s6, a7
                  xor          t4, t4, s11
                  srli         a2, s6, 18
453:              bgeu         a1, a3, 466f
454:              auipc        t0, 431322
                  xori         a0, tp, -1073
                  addi         a2, a3, 496
                  or           t4, s6, s0
                  addi         tp, a5, 1110
                  srl          s11, s4, t5
                  sub          t3, sp, zero
                  bge          t5, a0, 476f
                  andi         t1, a5, 463
463:              andi         t4, a5, 828
                  bge          a1, sp, 481f
                  slt          s1, s4, s0
466:              xor          a7, t0, s10
                  auipc        t5, 1017017
                  sll          t3, s7, s11
                  sll          zero, s7, a6
                  add          s6, s5, s2
                  sltiu        s8, s7, 548
                  nop
                  lui          s1, 246934
                  sra          s6, a7, t5
                  nop
476:              andi         t6, t1, -1683
                  slti         t2, s2, -315
                  bgeu         s10, s9, 486f
                  add          zero, tp, a0
                  srl          s9, t6, s0
481:              xor          s2, s9, s8
                  srl          s5, t3, ra
                  slti         s7, s2, -790
                  nop
                  andi         s1, a4, 859
486:              ori          s4, a3, -128
                  sub          s11, s10, t3
                  or           a6, a4, a5
                  bltu         t3, t5, 495f
                  add          a1, sp, a0
                  srai         t4, s10, 22
                  sub          s11, gp, a0
                  sltu         s5, s10, s3
                  srl          s1, s5, sp
495:              lui          t4, 17478
                  slti         a0, s2, 1995
                  slli         zero, s5, 7
                  bgeu         t0, a5, 501f
                  sra          s4, a0, t5
                  sltiu        s8, s4, 515
501:              andi         t0, s8, 1922
                  andi         s9, t6, -878
                  srl          t0, tp, a4
                  sll          a0, a5, s7
                  slli         gp, a4, 16
                  slt          s7, s5, t1
                  sltu         s11, s1, a0
                  and          t0, s4, s7
                  sll          s8, s6, s2
                  andi         a6, sp, -1185
                  bgeu         gp, s8, 525f
                  sltu         a7, t2, s1
                  bltu         s2, t5, 525f
                  blt          s9, s9, 527f
                  and          s8, s0, a6
                  bltu         a3, s2, 518f
                  bge          a6, s2, 530f
518:              bltu         s0, t0, 532f
                  slt          a5, t0, s5
                  sltiu        a2, s6, -790
                  bge          ra, s3, 529f
                  xori         t2, s4, 981
                  or           a5, t5, s8
                  bge          t2, s7, 532f
525:              srl          zero, gp, t0
                  sltiu        s2, a6, 128
527:              beq          t5, a0, 539f
                  auipc        t0, 425021
529:              srli         a0, a4, 26
530:              ori          s6, s4, 650
                  or           t6, t0, t4
532:              xor          t4, t6, s2
                  srai         t5, t5, 7
                  sltiu        t0, a6, -121
                  bge          t5, s0, 536f
536:              bltu         a2, a6, 544f
                  blt          s6, zero, 550f
                  beq          s7, s7, 542f
539:              andi         s3, zero, -456
                  beq          a3, s6, 541f
541:              blt          zero, s6, 548f
542:              andi         a5, a4, -1002
                  slt          s3, sp, s2
544:              nop
                  andi         t1, s6, -951
                  slti         t2, s5, -792
                  xori         t1, s8, -1923
548:              srl          t4, t6, a0
                  srli         a6, s3, 3
550:              srli         t4, t6, 11
                  sltu         ra, s5, s4
                  beq          s2, zero, 556f
                  srl          s5, a0, ra
                  nop
                  beq          s7, s4, 566f
556:              bgeu         zero, t0, 557f
557:              or           t0, t1, a6
                  sra          t0, s3, tp
                  srli         t1, gp, 2
                  sub          s9, a0, s10
                  nop
                  slti         t1, a5, -1081
                  or           s9, s9, t5
                  slti         s5, zero, -804
                  srai         s1, t5, 11
566:              xor          tp, a4, t5
                  ori          s0, a5, -369
                  auipc        a1, 635984
                  addi         a0, zero, 9 #init loop 0 counter
                  addi         a2, zero, 8 #init loop 0 limit
sub_2_9_0_t:      sltu         s2, a3, a2
                  srai         s7, s10, 29
                  add          s2, a1, s5
                  addi         a0, a0, -7 #update loop 0 counter
                  bgeu         a0, a2, sub_2_9_0_t #branch for loop 0
                  andi         t0, s6, 1717
                  sltu         zero, t0, a4
                  sltu         t1, s8, a1
                  slt          s4, s5, sp
                  auipc        t3, 224443
                  sltiu        s1, s8, 1981
                  and          s8, a1, s9
                  srl          s7, s8, t5
                  slti         t0, t5, -64
                  or           s1, a5, a5
                  xor          s4, s4, a2
                  add          s7, s8, s8
                  ori          s9, s8, -681
                  sltiu        s1, s3, 1658
                  addi         t1, a7, 635
                  xor          t0, ra, a3
                  sll          s9, a2, s4
                  addi         tp, t5, -474
                  srai         s0, t0, 0
                  and          a6, gp, t0
                  bge          ra, a1, 598f
                  sltu         s0, ra, a7
                  slti         a1, zero, -1010
                  srl          gp, zero, gp
                  slt          a1, s6, s3
                  nop
                  nop
                  nop
                  srl          s8, sp, t6
                  xor          s8, gp, a5
598:              sra          t2, s10, t1
                  srl          s6, t5, t5
                  bgeu         t1, a2, 614f
                  sub          a0, s1, t0
                  sltiu        s5, sp, 1070
                  slti         t2, a4, 312
                  sll          a5, a3, ra
                  sra          a6, a6, zero
                  blt          s5, a0, 614f
                  srli         a0, t1, 26
                  slti         gp, s0, -666
                  slti         t4, s1, -1593
                  auipc        gp, 838949
                  srai         s9, a7, 26
                  bgeu         s8, s3, 628f
                  xor          zero, s7, ra
614:              slt          t6, a3, s7
                  bne          a1, ra, 635f
                  srai         a6, t0, 18
                  sub          a6, s3, a7
                  lui          a1, 348446
                  add          a6, tp, s3
                  add          a7, a6, a1
                  sub          s2, s8, s3
                  slti         s5, s7, 837
                  srl          t1, s7, s11
                  addi         s9, s8, -238
                  sll          s10, gp, t1
                  sltiu        s10, sp, 430
                  sltiu        t0, s0, -1959
628:              blt          a6, zero, 638f
                  or           t3, a5, s0
                  addi         ra, a6, 418
                  slli         a5, t3, 29
                  srli         a2, s8, 12
                  xori         t0, s10, 1139
                  xor          gp, a7, s9
635:              lui          gp, 627917
                  beq          s11, a2, 653f
                  and          s2, a5, t4
638:              auipc        s10, 231012
                  sll          t6, a6, s2
                  srai         zero, s6, 14
                  andi         s5, s3, -584
                  slt          t5, t4, s10
                  bne          t3, a2, 649f
                  xori         s3, t6, -1119
                  sra          s7, tp, t3
                  bgeu         zero, sp, 666f
                  lui          a5, 1039049
                  srl          s0, t0, s3
649:              and          a6, sp, s8
                  addi         t4, a6, -1960
                  lui          ra, 492050
                  slt          s2, t5, s8
653:              bgeu         s11, s8, 665f
                  slli         a6, t0, 5
                  lui          s0, 626486
                  sltu         s2, s3, s4
                  sra          s9, a5, s1
                  srl          t0, a1, s11
                  beq          s10, zero, 674f
                  auipc        s3, 238126
                  andi         a1, a4, 1117
                  ori          s0, t4, 468
                  bgeu         a3, a4, 676f
                  sltiu        zero, a0, -998
665:              nop
666:              lui          t5, 692917
                  addi         s9, a3, 1146
                  and          s10, sp, zero
                  andi         s5, t0, -267
                  sub          s6, ra, t5
                  nop
                  srai         zero, a6, 14
                  blt          a4, t5, 679f
674:              slt          a7, s7, a4
                  bltu         s6, t0, 678f
676:              beq          gp, a6, 678f
                  blt          s8, s7, 683f
678:              addi         t1, t4, 4
679:              srli         s3, zero, 18
                  bgeu         a0, a1, 694f
                  add          s8, s8, s2
                  sll          s5, t0, t0
683:              lui          a5, 919004
                  slt          a2, a5, a3
                  srai         tp, a3, 0
                  addi         tp, zero, 9 #init loop 1 counter
                  or           s11, s6, s1
                  addi         s3, zero, 9 #init loop 1 limit
                  auipc        s8, 222657
                  sra          gp, t4, t5
                  lui          s0, 44084
                  sub          a5, s0, t6
                  sltiu        s10, s2, 1478
                  srli         s2, tp, 19
                  auipc        s8, 650495
                  sltiu        t1, s0, 651
                  sra          a2, s1, t4
                  nop
sub_2_11_1_t:     xori         s11, s9, 1010
                  xori         t5, ra, 453
                  sra          t0, s8, t6
                  addi         tp, tp, -7 #update loop 1 counter
                  lui          a7, 783034
                  and          t1, a0, sp
                  addi         a6, zero, 3 #init loop 0 counter
                  auipc        a1, 610234
                  sub          gp, s4, t4
                  addi         s4, zero, 3 #init loop 0 limit
                  add          s8, s2, s11
sub_2_11_0_t:     xor          t3, s4, t6
                  sltiu        a7, a0, 584
                  addi         a6, a6, -4 #update loop 0 counter
                  srli         s11, s6, 19
                  bge          a6, s4, sub_2_11_0_t #branch for loop 0
                  sltiu        t2, s3, 902
                  sltiu        a0, ra, 851
                  bgeu         tp, s3, sub_2_11_1_t #branch for loop 1
                  ori          s1, s8, 724
                  bltu         a6, s2, 706f
                  lui          t5, 413321
                  lui          ra, 974916
                  sra          t4, t0, a4
                  andi         t2, s5, 73
                  sub          a7, s1, s4
                  slt          s9, zero, ra
                  slti         s6, s7, -1946
694:              sub          s2, t2, s11
                  sltiu        t3, ra, 208
                  ori          a2, s8, 605
                  blt          s3, s4, 704f
                  or           t2, s9, a2
                  sll          a1, a7, t4
                  sra          t3, s11, t0
                  bgeu         a5, a2, 711f
                  andi         a2, a2, 1730
                  bltu         s5, a7, 711f
704:              sltiu        zero, t2, 1022
                  addi         s8, s6, 237
706:              slti         t4, s3, -971
                  bne          t3, a7, 722f
                  bltu         t2, s8, 721f
                  sltiu        a6, t3, 1501
                  andi         t6, a4, 2000
711:              add          s3, a2, sp
                  addi         s5, s9, -446
                  sub          s0, t6, t1
                  auipc        t5, 173489
                  ori          s9, s1, 1842
                  ori          s4, a2, -657
                  bge          gp, s5, 720f
                  srli         s11, gp, 15
                  sub          gp, s8, s7
720:              add          a7, t5, a6
721:              addi         s2, a4, 235
722:              bgeu         s2, s9, 730f
                  slt          a5, s4, sp
                  slti         s11, s6, -474
                  slti         s7, a6, -164
                  sub          ra, t5, s6
                  lui          t5, 874004
                  and          s1, s3, t3
                  slt          a2, a5, s7
730:              beq          s1, sp, 740f
                  sltu         s8, s3, s11
                  xor          t4, a5, s5
                  slli         s10, s7, 27
                  ori          a6, a5, -1692
                  xor          t5, ra, a7
                  xor          s6, a2, t2
                  bltu         sp, a3, 751f
                  beq          s8, s1, 739f
739:              beq          t0, a2, 743f
740:              or           t2, t4, s10
                  sub          s1, a0, zero
                  bne          s0, ra, 759f
743:              or           ra, s5, s1
                  ori          t1, a2, 1487
                  andi         ra, s0, 1865
                  nop
                  and          gp, a1, s8
                  addi         a6, zero, 5 #init loop 1 counter
                  addi         ra, zero, 17 #init loop 1 limit
sub_2_16_1_t:     sltu         t5, t0, s4
                  sll          s4, s8, sp
                  addi         a6, a6, 6 #update loop 1 counter
                  xor          s9, s1, s4
                  addi         a7, zero, -10 #init loop 0 counter
                  addi         tp, zero, 14 #init loop 0 limit
                  sltu         s6, t0, a2
sub_2_16_0_t:     auipc        a5, 119753
                  addi         a7, a7, 6 #update loop 0 counter
                  beq          a7, tp, sub_2_16_0_t #branch for loop 0
                  nop
                  sltiu        zero, tp, 2019
                  beq          a6, ra, sub_2_16_1_t #branch for loop 1
                  andi         s5, ra, 295
                  nop
                  xori         tp, s10, -442
                  lui          ra, 349475
751:              srl          t4, t6, t4
                  sra          t3, zero, a5
                  lui          s2, 954458
                  xori         s7, t6, 1504
                  xor          s1, t3, ra
                  ori          s11, t0, -1928
                  sub          gp, a5, s0
                  and          t4, gp, s4
759:              srai         t6, ra, 28
                  sll          t1, sp, s11
                  xori         s4, a5, 1151
                  add          a7, s9, a2
                  sll          a5, ra, a4
                  srli         s6, s9, 0
                  sub          s0, a6, s11
                  xor          s2, t1, s6
                  bgeu         s2, s5, 768f
768:              beq          s7, s1, 769f
769:              slt          s6, a4, a7
                  bge          s8, gp, 786f
                  andi         t5, t3, 1937
                  xor          ra, a3, a1
                  slli         gp, tp, 21
                  xori         zero, a6, -624
                  bgeu         s11, zero, 781f
                  srai         s7, a6, 30
                  bge          s0, a4, 789f
                  bgeu         s6, s1, 791f
                  bne          s0, sp, 787f
                  or           a1, s4, tp
781:              bge          s3, a0, 794f
                  ori          tp, s2, -739
                  bne          t1, a3, 803f
                  add          s2, sp, s9
                  ori          t3, t3, -1013
786:              andi         s6, ra, 1046
787:              ori          t1, t0, -2022
                  srai         s1, a2, 0
789:              sll          t3, s3, t3
                  addi         zero, tp, -953
791:              and          t6, t5, t4
                  add          a7, s3, s10
                  xor          a7, s4, s1
794:              blt          a7, s10, 798f
                  sra          s8, a0, t2
                  bgeu         a3, a4, 804f
                  bge          s11, a0, 809f
798:              add          a7, a5, a2
                  slti         tp, t5, -444
                  blt          s1, sp, 813f
                  sll          t1, a6, s11
                  slli         t4, t1, 13
803:              addi         s0, s3, -708
804:              add          s10, s9, s5
                  xor          s2, t0, s8
                  xori         s1, gp, 563
                  srl          gp, t5, s4
                  bltu         t3, t1, 819f
809:              and          t2, t2, sp
                  sll          a5, a7, a1
                  beq          s1, a0, 817f
                  slti         t6, a7, -1682
813:              bge          t1, s6, 825f
                  auipc        t1, 252988
                  blt          s4, s3, 816f
816:              bgeu         s11, t2, 823f
817:              nop
                  sltu         a1, a5, s7
819:              sltiu        s11, s2, -1555
                  xori         a6, t5, 662
                  andi         s9, a6, -1518
                  sll          t2, a1, ra
823:              sub          s6, a2, a6
                  nop
825:              sll          gp, t4, s10
                  addi         s4, t5, 1158
                  sltu         t2, s6, s11
                  beq          s10, a6, 829f
829:              beq          s7, ra, 833f
                  slt          s6, a4, s6
                  addi         ra, t6, -173
                  slli         s11, gp, 17
833:              xori         s0, t5, 462
                  or           s8, a1, s8
                  ori          tp, ra, -1240
                  blt          a0, t1, 844f
                  sub          a0, t3, t2
                  slli         s2, gp, 30
                  xori         ra, s10, -1621
                  slli         a6, t6, 10
                  sra          t0, t0, sp
                  andi         t4, t5, 613
                  ori          s11, s11, 1796
844:              beq          s1, gp, 850f
                  srai         t0, s3, 17
                  and          s6, t0, s1
                  bgeu         t5, s7, 851f
                  and          s10, sp, s0
                  auipc        s3, 18776
850:              bltu         a7, a1, 852f
851:              xori         t4, a1, -231
852:              srli         a2, a7, 22
                  sra          a1, s3, s11
                  or           a1, tp, a3
                  ori          tp, t3, -388
                  srai         s8, a2, 22
                  andi         s0, s11, -403
                  blt          zero, s6, 866f
                  slli         tp, s10, 20
                  or           s11, t0, a6
                  bge          a2, a7, 873f
                  xori         t3, s11, -1027
                  sltiu        a0, s9, 1903
                  bgeu         a7, t1, 873f
                  srai         a1, t4, 4
866:              or           a6, s9, s9
                  slt          s5, tp, t6
                  beq          a4, s6, 873f
                  bne          s6, a5, 873f
                  auipc        a5, 725065
                  bge          s2, s6, 873f
                  sltiu        t3, t3, -23
873:              add          a7, a0, t3
                  addi         t5, s9, -1130
                  lw           t1, 4(a3)
                  xor          tp, s9, s7
                  srl          s3, a6, s2
                  xor          zero, t4, s6
                  addi         a3, a3, 52
                  slli         t4, tp, 21
                  auipc        a7, 886981
1254:             addi x22, x6, 1
1254:             jalr x22, x22, 0
sub_3:            sra          a0, t4, tp
                  xori         a5, a5, 874
                  slli         s5, a3, 7
                  and          t3, a5, t0
                  xori         s8, t5, -561
                  addi         a3, a3, -40
                  srli         s8, a5, 23
                  sw           t1, 4(a3)
                  slli         t6, s10, 31
                  slti         t0, t2, -82
                  sra          a0, t6, tp
                  sltiu        a5, a5, 1657
                  bltu         sp, s0, 6f
                  xor          s8, s0, t5
                  or           a7, t1, s2
                  sltu         s4, s5, s5
                  blt          s2, t5, 13f
6:                slti         s11, a6, 1830
                  and          s8, a2, s1
                  or           a5, a3, a5
                  slt          gp, s1, s6
                  ori          s1, t4, -85
                  sltu         a0, sp, a7
                  auipc        zero, 769340
13:               lui          tp, 662411
                  slti         tp, a4, -430
                  andi         t6, a3, -928
                  srai         a6, t6, 9
                  sub          t4, s6, a3
                  beq          a6, t2, 33f
                  sub          s0, gp, sp
                  beq          s10, s11, 33f
                  bgeu         a0, a5, 33f
                  ori          t6, a2, 654
                  addi         s10, s11, -230
                  lui          a7, 204015
                  add          s6, s10, t3
                  bltu         a7, gp, 33f
                  bge          a0, t6, 28f
28:               blt          zero, s8, 33f
                  srai         s8, s4, 3
                  add          s4, a1, s10
                  srl          s10, s0, s1
                  bgeu         tp, s10, 33f
33:               add          a6, t3, s9
                  lw           t1, 4(a3)
                  sltiu        t6, s1, 1513
                  xor          s2, s7, t3
                  xor          s6, s4, a0
                  xori         t4, s11, -624
                  slt          a0, s11, a2
                  addi         a3, a3, 40
                  slt          zero, t1, s11
                  srli         s8, a1, 6
                  auipc        s1, 307631
                  sra          s0, t1, a6
56:               addi x5, x6, 0
56:               jalr x5, x5, 0
sub_5:            xor          s10, s4, tp
                  sltiu        a6, a4, 1083
                  bne          a0, s7, sub_5_stack_p
                  slt          t4, s5, s9
                  sra          a6, a5, ra
sub_5_stack_p:    addi         a3, a3, -40
                  sw           t1, 4(a3)
                  xori         a0, a6, -1359
                  or           a0, a7, t6
                  sll          s11, s9, s10
                  blt          ra, a4, 15f
                  nop
                  blt          zero, a2, 12f
                  sra          s4, t4, a6
                  bge          t5, a3, 18f
                  auipc        t6, 4557
                  slti         t4, t1, 1067
                  sll          zero, a7, a5
                  srai         t4, zero, 2
                  andi         ra, a2, -837
12:               bge          s3, a4, 22f
                  or           s8, t3, a3
                  sub          s5, a1, a7
15:               add          s4, s7, s10
                  sub          t0, t3, t4
                  sll          s11, s6, a4
18:               bgeu         a5, s7, 22f
                  addi         zero, zero, -1610
                  bgeu         a1, s3, 22f
                  sub          t4, t4, t0
22:               or           s11, t2, sp
                  slt          s3, sp, a6
                  addi         t5, gp, -1554
                  lw           t1, 4(a3)
                  sub          s7, s9, s7
                  ori          s6, s5, -744
                  slli         a0, s1, 30
                  addi         a3, a3, 40
                  sra          s8, s9, t0
                  srai         a5, gp, 18
                  xor          s3, ra, s1
                  or           a7, s8, s4
                  sra          a0, s7, t3
43:               addi x12, x6, 0
43:               jalr x12, x12, 0
sub_1:            bge          s4, t5, sub_1_stack_p
                  srai         a2, a6, 9
                  add          t2, a3, t6
                  andi         s11, t1, 741
                  slt          s9, s2, a1
                  lui          s10, 250022
                  lui          t5, 432519
sub_1_stack_p:    addi         a3, a3, -48
                  sw           t1, 4(a3)
                  ori          s1, a6, 340
                  sub          a0, s4, a1
                  andi         a0, a4, 945
                  add          gp, s4, s2
                  slti         s4, s4, 1494
                  srli         a5, zero, 16
                  xor          s2, s11, tp
                  and          s7, s1, t5
                  slt          t0, sp, s8
                  bltu         t0, ra, sub_1_j4 #branch to jump instr
                  xor          t2, tp, s3
                  xor          s1, t1, s10
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  la           a5, sub_4
                  or           tp, s9, gp
                  andi         tp, a1, 773
                  addi         a5, a5, 246
                  add          s3, s10, t6
                  srli         s4, s1, 16
                  bne          s2, s2, sub_1_j6 #branch to jump instr
                  slli         s10, s7, 24
                  auipc        a2, 952097
                  srl          s8, s1, t0
sub_1_j6:         jalr         t1, a5, -246 #jump sub_1 -> sub_4
                  addi         s7, zero, 8 #init loop 1 counter
                  auipc        a5, 180425
                  addi         s8, zero, 8 #init loop 1 limit
                  sra          zero, s1, s7
sub_1_7_1_t:      xor          s3, tp, s10
                  srli         tp, s1, 9
                  addi         s7, s7, -4 #update loop 1 counter
                  addi         a7, zero, -10 #init loop 0 counter
                  addi         a6, zero, 10 #init loop 0 limit
sub_1_7_0_t:      lui          zero, 437578
                  addi         a7, a7, 10 #update loop 0 counter
                  add          s11, a4, a2
                  bne          a7, a6, sub_1_7_0_t #branch for loop 0
                  bgeu         s7, s8, sub_1_7_1_t #branch for loop 1
                  sub          t5, zero, s7
                  addi         a5, zero, 8 #init loop 1 counter
                  lui          a0, 138856
                  slli         s10, gp, 22
                  srl          s5, a3, tp
                  slti         s11, a5, -728
                  slli         zero, s4, 31
                  addi         a1, zero, 8 #init loop 1 limit
                  srli         s7, a3, 18
                  slti         t0, s4, -102
sub_1_5_1_t:      sltiu        s7, a5, 379
                  sra          s2, s3, zero
                  sub          a6, a2, s2
                  addi         a5, a5, -7 #update loop 1 counter
                  sll          s3, s10, a4
                  addi         gp, zero, 0 #init loop 0 counter
                  sub          s9, a1, s6
                  addi         s0, zero, 13 #init loop 0 limit
                  slli         s6, s10, 19
sub_1_5_0_t:      sltiu        s5, a2, -885
                  slt          a0, a5, zero
                  xori         s5, a1, 612
                  slti         t0, tp, 1759
                  addi         gp, gp, 3 #update loop 0 counter
                  slli         s8, a3, 18
                  sra          a0, s7, s4
                  blt          gp, s0, sub_1_5_0_t #branch for loop 0
                  slt          s7, s10, a6
                  srai         s5, s3, 9
                  bgeu         a5, a1, sub_1_5_1_t #branch for loop 1
                  lui          a6, 420499
                  addi         s7, zero, -6 #init loop 1 counter
                  slt          a2, a2, a0
                  addi         t6, zero, 1 #init loop 1 limit
                  slli         a7, t0, 0
sub_1_16_1_t:     sltu         s6, s7, s4
                  addi         s7, s7, 7 #update loop 1 counter
                  addi         ra, zero, 6 #init loop 0 counter
                  addi         s0, zero, 17 #init loop 0 limit
                  lui          s6, 710123
sub_1_16_0_t:     slti         a0, a4, 911
                  addi         ra, ra, 3 #update loop 0 counter
                  or           a6, zero, s11
                  bltu         ra, s0, sub_1_16_0_t #branch for loop 0
                  srli         s1, a2, 20
                  bltu         s7, t6, sub_1_16_1_t #branch for loop 1
                  slti         s3, a6, 16
                  addi         ra, zero, 2 #init loop 1 counter
                  slt          s8, t0, a4
                  slt          s2, s5, ra
                  srl          s4, a3, t5
                  xor          s2, a6, t1
                  addi         s11, zero, -1 #init loop 1 limit
                  srl          zero, t0, s8
                  nop
sub_1_6_1_t:      auipc        s10, 284983
                  addi         ra, ra, -3 #update loop 1 counter
                  addi         t3, zero, -2 #init loop 0 counter
                  addi         t2, zero, 12 #init loop 0 limit
                  nop
sub_1_6_0_t:      sub          t0, t3, gp
                  addi         t3, t3, 1 #update loop 0 counter
                  sltu         s7, s3, t5
                  slli         s3, t6, 4
                  beq          t3, t2, sub_1_6_0_t #branch for loop 0
                  or           tp, t0, gp
                  sltiu        s1, t0, -1734
                  bne          ra, s11, sub_1_6_1_t #branch for loop 1
                  slli         t1, s8, 25
                  addi         a7, zero, -7 #init loop 1 counter
                  addi         t6, zero, -14 #init loop 1 limit
sub_1_4_1_t:      andi         s9, a0, -546
                  addi         a7, a7, -7 #update loop 1 counter
                  addi         s4, zero, -4 #init loop 0 counter
                  addi         s2, zero, 20 #init loop 0 limit
                  add          s1, s0, ra
sub_1_4_0_t:      lui          tp, 208790
                  lui          t3, 965794
                  addi         s4, s4, 9 #update loop 0 counter
                  bltu         s4, s2, sub_1_4_0_t #branch for loop 0
                  bne          a7, t6, sub_1_4_1_t #branch for loop 1
                  andi         s11, a0, 631
                  addi         a7, zero, -9 #init loop 0 counter
                  addi         a6, zero, -19 #init loop 0 limit
sub_1_17_0_t:     or           t3, s2, t3
                  addi         a7, a7, -1 #update loop 0 counter
                  bge          a7, a6, sub_1_17_0_t #branch for loop 0
                  xori         gp, t3, -1022
                  addi         a7, zero, 9 #init loop 1 counter
                  xori         gp, s0, -585
                  addi         a1, zero, 17 #init loop 1 limit
                  ori          t2, s7, -1116
sub_1_14_1_t:     sub          s4, a3, s7
                  addi         ra, t6, -1030
                  addi         a7, a7, 3 #update loop 1 counter
                  srli         a6, s4, 26
                  addi         s7, zero, -1 #init loop 0 counter
                  srl          a6, s10, t1
                  addi         s10, zero, 9 #init loop 0 limit
                  xor          s0, tp, t6
sub_1_14_0_t:     add          t3, t2, gp
                  addi         s7, s7, 10 #update loop 0 counter
                  xor          s8, sp, s0
                  srai         gp, a2, 18
                  andi         tp, a4, -1224
                  beq          s7, s10, sub_1_14_0_t #branch for loop 0
                  sll          t4, s6, s11
                  sub          s1, sp, s10
                  sll          t2, t5, a1
                  xori         t2, s9, -1534
                  sltiu        t1, s8, -1408
                  sltu         gp, tp, zero
                  auipc        s0, 185087
                  bltu         a7, a1, sub_1_14_1_t #branch for loop 1
                  and          tp, s7, a4
                  addi         a0, zero, 7 #init loop 0 counter
                  sll          a2, a7, a2
                  addi         s5, zero, 12 #init loop 0 limit
                  sll          t5, zero, a5
                  slti         zero, a0, -1727
                  srl          t5, t3, sp
sub_1_3_0_t:      slt          s11, s7, ra
                  addi         a0, a0, 5 #update loop 0 counter
                  blt          a0, s5, sub_1_3_0_t #branch for loop 0
                  xor          ra, a6, s1
                  addi         a2, zero, 3 #init loop 1 counter
                  addi         t1, zero, 3 #init loop 1 limit
sub_1_10_1_t:     andi         t6, s4, -877
                  addi         a2, a2, -1 #update loop 1 counter
                  addi         s1, zero, 10 #init loop 0 counter
                  or           t5, t4, t4
                  addi         s10, zero, 7 #init loop 0 limit
sub_1_10_0_t:     lui          zero, 596406
                  addi         s1, s1, -6 #update loop 0 counter
                  bgeu         s1, s10, sub_1_10_0_t #branch for loop 0
                  bgeu         a2, t1, sub_1_10_1_t #branch for loop 1
                  nop
                  addi         s4, zero, 3 #init loop 0 counter
                  sltiu        t3, sp, 945
                  addi         t6, zero, -8 #init loop 0 limit
                  slti         gp, a7, -1381
                  and          ra, s9, a7
                  sltiu        gp, s5, 402
sub_1_13_0_t:     ori          zero, t2, -2008
                  or           s5, t2, t3
                  addi         s4, s4, -5 #update loop 0 counter
                  lui          ra, 453149
                  sra          s5, a7, sp
                  or           s6, s10, t0
                  sra          a5, s11, t6
                  xori         a2, t3, -886
                  xori         s1, a0, 709
                  xor          a6, t3, s5
                  sltiu        ra, a3, -1771
                  bge          s4, t6, sub_1_13_0_t #branch for loop 0
                  sltu         s1, a3, s9
                  addi         s3, zero, 1 #init loop 0 counter
                  and          t5, s5, t2
                  addi         s0, zero, 5 #init loop 0 limit
sub_1_2_0_t:      ori          s9, s3, 1641
                  addi         s3, s3, 4 #update loop 0 counter
                  beq          s3, s0, sub_1_2_0_t #branch for loop 0
                  auipc        s8, 576540
                  addi         a5, zero, -10 #init loop 1 counter
                  andi         gp, t4, -180
                  addi         a0, zero, -5 #init loop 1 limit
sub_1_11_1_t:     add          t1, a7, s9
                  slli         a2, t3, 21
                  addi         a5, a5, 5 #update loop 1 counter
                  and          t2, a0, a4
                  addi         t4, zero, 10 #init loop 0 counter
                  addi         a7, zero, 9 #init loop 0 limit
sub_1_11_0_t:     or           zero, t0, tp
                  addi         t4, t4, -8 #update loop 0 counter
                  ori          s1, a5, 888
                  bgeu         t4, a7, sub_1_11_0_t #branch for loop 0
                  bne          a5, a0, sub_1_11_1_t #branch for loop 1
                  slli         gp, s1, 4
                  addi         t4, zero, -10 #init loop 1 counter
                  addi         ra, zero, -17 #init loop 1 limit
sub_1_9_1_t:      auipc        a5, 545726
                  addi         t4, t4, -7 #update loop 1 counter
                  addi         tp, zero, 10 #init loop 0 counter
                  addi         a7, zero, 18 #init loop 0 limit
sub_1_9_0_t:      or           t0, a0, s11
                  addi         tp, tp, 4 #update loop 0 counter
                  blt          tp, a7, sub_1_9_0_t #branch for loop 0
                  beq          t4, ra, sub_1_9_1_t #branch for loop 1
                  sll          t3, t3, s11
                  addi         t3, zero, 10 #init loop 0 counter
                  sltu         s3, s9, s9
                  srai         s6, a3, 18
                  addi         s10, zero, -18 #init loop 0 limit
                  sra          t5, t2, sp
sub_1_8_0_t:      xori         s11, s7, -845
                  sll          s9, s7, s4
                  addi         t3, t3, -4 #update loop 0 counter
                  sltiu        s8, t1, -40
                  xor          s2, t3, zero
                  srli         s11, t3, 20
                  slti         s5, ra, 1914
                  and          s11, s1, t6
                  slli         s9, tp, 21
                  xori         s4, a2, 1619
                  andi         zero, gp, -1906
                  ori          s1, s6, -200
                  srai         a6, s2, 23
                  and          s6, t1, s10
                  sll          t6, t0, s6
                  bne          t3, s10, sub_1_8_0_t #branch for loop 0
                  ori          s3, t4, -1202
                  addi         s8, zero, 5 #init loop 0 counter
                  lui          s0, 493354
                  slli         s11, a3, 14
                  nop
                  auipc        s10, 737368
                  srli         t6, a0, 8
                  xor          a7, s4, s9
                  addi         gp, a2, -1081
                  slt          s10, sp, tp
                  lui          t0, 505242
                  auipc        t4, 278688
                  addi         s1, zero, -6 #init loop 0 limit
                  srl          tp, s9, a2
sub_1_15_0_t:     lui          zero, 218331
                  srai         zero, sp, 25
                  or           t4, t0, s8
                  addi         s8, s8, -2 #update loop 0 counter
                  slti         t5, zero, 1538
                  bge          s8, s1, sub_1_15_0_t #branch for loop 0
                  or           s6, s7, a2
                  addi         t6, zero, 0 #init loop 0 counter
                  addi         a2, zero, 15 #init loop 0 limit
                  lui          t5, 78478
                  sltu         t1, a2, ra
sub_1_1_0_t:      xori         s8, s0, -490
                  xori         t5, s1, -1527
                  addi         t6, t6, 1 #update loop 0 counter
                  srli         s7, t4, 7
                  beq          t6, a2, sub_1_1_0_t #branch for loop 0
                  sltiu        t5, s1, -1040
                  addi         s3, zero, 8 #init loop 0 counter
                  addi         t5, zero, -5 #init loop 0 limit
sub_1_18_0_t:     slti         s0, a6, -928
                  addi         s3, s3, -5 #update loop 0 counter
                  bge          s3, t5, sub_1_18_0_t #branch for loop 0
                  lui          s7, 710662
                  sltiu        s6, s9, -1555
                  addi         a0, a5, -1396
                  xor          s6, a6, s5
                  sltu         s9, a4, t6
                  bne          a3, ra, 7f
                  sltiu        t2, a1, -211
                  addi         a0, t4, 1878
7:                andi         s1, s6, 375
                  and          s10, a0, s10
                  sltu         t0, s0, s0
                  nop
                  auipc        s9, 509058
                  sll          s9, s10, s10
                  srli         tp, a4, 28
                  xor          s9, s10, t4
                  bltu         s1, s8, 29f
                  beq          s3, s0, 18f
                  slt          s5, s9, s11
18:               bltu         a4, s11, 23f
                  andi         t5, s0, -1331
                  beq          s8, s2, 38f
                  sltiu        a2, t0, -722
                  srl          a2, a6, a3
23:               xori         s0, a7, 1089
                  srai         s11, t6, 0
                  or           a1, t6, t4
                  srai         s2, a2, 18
                  nop
                  auipc        s1, 826185
29:               xor          s2, s2, a2
                  ori          s0, t1, -49
                  bltu         sp, a3, 49f
                  sra          s2, a0, t5
                  ori          t5, gp, -309
                  beq          sp, t5, 51f
                  nop
                  slt          t6, t6, t2
                  ori          t5, gp, -1489
38:               srli         t1, t2, 11
                  sltiu        s4, t5, 562
                  srli         s0, zero, 20
                  sra          zero, s5, a1
                  or           a5, zero, s5
                  xor          s0, a1, t6
                  bne          t3, a5, 59f
                  bltu         tp, a6, 60f
                  xor          t3, a0, t3
                  addi         a1, sp, 1919
                  sll          a5, s3, t1
49:               addi         ra, s0, 525
                  andi         s10, t6, 1517
51:               sltu         a2, s11, t4
                  blt          t0, t5, 62f
                  sltiu        gp, ra, -1409
                  xor          a0, s8, s2
                  and          t3, a3, s10
                  nop
                  ori          s6, a5, -621
                  slt          s9, s2, s0
59:               ori          t6, a3, -1807
60:               auipc        ra, 295439
                  bne          a0, t2, 72f
62:               sltu         s8, s9, a1
                  srai         s11, t5, 10
                  ori          ra, ra, 1089
                  slli         t6, tp, 27
                  slti         t5, s4, 236
                  addi         tp, s10, 1940
                  sll          t6, s8, s7
                  slli         gp, zero, 6
                  add          a7, a0, t0
                  or           t4, t6, s5
72:               slti         s8, s10, -1338
                  nop
                  addi         gp, a7, 675
                  bge          sp, sp, 93f
                  and          t6, s4, zero
                  slli         s8, s3, 24
                  sltiu        a1, zero, 1405
                  xor          s4, a5, t3
                  add          a5, s1, t3
                  auipc        t4, 99542
                  and          ra, a2, a6
                  sra          s7, s3, t4
                  sltu         s8, zero, a6
                  nop
                  slti         s4, s2, -988
                  srai         s4, s8, 31
                  sub          t4, a2, s9
                  sltu         ra, s2, s5
                  beq          t6, s5, 91f
91:               sll          t2, s3, t2
                  beq          zero, t0, 95f
93:               sub          s5, t6, s8
                  sltu         s9, t2, s9
95:               slti         t4, ra, -153
                  addi         s0, t0, 1615
                  bltu         s10, a5, 114f
                  and          t6, a5, s6
                  sltu         t5, sp, t2
                  sra          s5, a6, s8
                  sra          s2, t0, zero
                  nop
                  bge          s7, s11, 105f
                  bne          t3, zero, 106f
105:              srai         t4, t3, 15
106:              slli         s0, a3, 24
                  bne          s3, s6, 111f
                  addi         s0, s2, 135
                  bge          s2, tp, 111f
                  ori          a1, s8, -551
111:              andi         s7, a7, -676
                  andi         a1, s5, 789
                  lui          s2, 792919
114:              sra          t4, s10, tp
                  lui          s6, 92299
                  slli         a1, a1, 30
                  xor          s6, a3, s6
                  slt          t4, s2, zero
                  bgeu         tp, t0, 122f
                  or           s5, a1, s4
                  slli         s9, s5, 11
122:              slt          gp, a7, t2
                  bge          s9, t6, 124f
124:              addi         zero, t0, 209
                  sltu         t4, tp, s4
                  andi         s7, s6, 1011
                  bltu         t6, t2, 135f
                  ori          a5, a4, -520
                  slli         a5, s3, 3
                  lui          a5, 391140
                  sltu         a0, s1, s1
                  sll          s9, gp, ra
                  xor          t6, a5, s4
                  sra          s8, a7, s4
135:              auipc        s9, 451648
                  srai         s8, t0, 14
                  nop
                  slti         s11, s5, -57
                  sll          s11, t2, gp
                  lui          a6, 510240
                  or           zero, a6, s10
                  bge          gp, s8, 150f
                  blt          t4, t6, 148f
                  sltiu        t5, a7, -1193
                  sll          s3, s10, s9
                  bge          t6, s10, 153f
                  andi         s4, s2, 1950
148:              sltiu        a2, t4, 1269
                  sltiu        ra, t6, -1012
150:              beq          a2, s10, 168f
                  slt          a6, s1, s5
                  sub          tp, s0, t3
153:              sltu         t1, a5, a4
                  auipc        s4, 890940
                  addi         s4, t2, -1011
                  srli         s5, s6, 29
                  blt          t3, ra, 175f
                  srai         t3, t2, 20
                  auipc        s3, 481096
                  xor          tp, s6, tp
                  bge          sp, s3, 167f
                  nop
                  srai         s0, a1, 18
                  bne          s2, s8, 167f
                  auipc        s11, 727221
                  nop
167:              beq          t2, s8, 174f
168:              and          s4, s9, t5
                  slli         s1, s3, 31
                  or           gp, s1, s6
                  bgeu         s4, a5, 176f
                  blt          a7, s0, 190f
                  slli         s4, a2, 26
174:              slt          t3, s5, s0
175:              slli         s0, s6, 5
176:              beq          a7, s9, 179f
                  sltiu        s9, s1, -1940
                  sltu         zero, s10, s0
179:              sltiu        zero, s2, 624
                  slt          ra, ra, s9
                  add          s1, s9, s6
                  srli         s10, a5, 14
                  srli         gp, s5, 0
                  ori          a2, zero, -1509
                  sltu         s4, s1, ra
                  beq          t4, a2, 191f
                  bge          a4, s3, 204f
                  bge          a1, ra, 190f
                  ori          s11, a7, 481
190:              bge          gp, t5, 208f
191:              or           a6, t5, s9
                  bgeu         s5, t4, 194f
                  bne          t3, a7, 196f
194:              nop
                  andi         t0, t1, -935
196:              andi         a6, s11, 1189
                  sltiu        s5, a6, -201
                  bne          s11, s9, 208f
                  auipc        t0, 5982
                  bge          gp, s11, 215f
                  or           s4, a7, zero
                  bgeu         t1, a0, 217f
                  slli         s1, t5, 10
204:              add          t2, s9, s11
                  bgeu         a4, s1, 207f
                  bgeu         a2, s11, 223f
207:              beq          s3, t3, 213f
208:              slt          t0, t1, gp
                  xori         t6, t4, -1125
                  slli         s10, s4, 27
                  nop
                  auipc        s2, 133807
213:              srli         s8, a3, 5
                  lui          a0, 1023796
215:              auipc        a0, 661823
                  lui          zero, 273018
217:              andi         a5, a3, -920
                  bltu         a2, tp, 221f
                  sub          t2, s3, s1
                  addi         s6, t5, 886
221:              xor          ra, s11, a0
                  bltu         a1, a5, 223f
223:              ori          a6, a2, 775
                  bgeu         s8, s3, 232f
                  xor          t4, a1, s5
                  sltiu        s0, s2, -1969
                  sltu         tp, s6, s6
                  beq          s1, tp, 231f
                  ori          s2, a7, 1968
                  xori         s4, a6, -635
231:              bgeu         s2, a6, 233f
232:              and          a1, t1, a3
233:              andi         s0, a1, 1054
                  slt          a1, t3, zero
                  sltu         t3, s4, a0
                  bne          a2, s11, 243f
                  bgeu         s4, a0, 255f
                  slli         s5, zero, 13
                  add          tp, t5, a3
                  sltiu        s3, a4, 937
                  bge          tp, s3, 242f
242:              bge          sp, s6, 260f
243:              sltiu        gp, s2, -1821
                  bgeu         s8, t0, 258f
                  srli         s6, s8, 7
                  bge          s4, gp, 253f
                  addi         s4, sp, 690
                  add          zero, a7, s6
                  xori         t3, t6, -1284
                  lui          a5, 171496
                  xor          s2, s10, s11
                  bge          s5, s3, 256f
253:              and          s0, t1, s9
                  srl          s1, t0, t1
                  xori         s11, t0, 941
                  srl          ra, a7, a7
                  xor          a0, ra, s4
                  lui          t3, 582939
                  auipc        s10, 645079
                  slt          tp, a1, a1
                  add          t1, s2, a0
                  sll          t4, s5, sp
                  xori         t3, s8, -316
sub_1_j7:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sll          a6, a4, s0
255:              srl          t3, s4, s11
256:              slti         a6, a7, 215
                  srl          t5, sp, s11
258:              auipc        a1, 297830
                  addi         a7, zero, 302
260:              slt          s9, a1, t1
                  bgeu         s5, s11, 272f
                  srli         t5, s7, 6
                  nop
                  addi         a0, s1, -1339
                  beq          zero, s8, 283f
                  or           a0, s6, tp
                  add          t1, gp, a7
                  xor          t1, t6, t5
                  bge          t6, gp, 277f
                  sub          s7, t6, tp
                  bgeu         sp, s8, 279f
272:              slt          a0, t2, ra
                  and          s4, a3, s10
                  add          zero, t5, ra
                  srl          t3, t6, s2
                  bge          sp, s2, 286f
277:              sra          s7, s2, a5
                  beq          a7, sp, 284f
279:              sub          s2, s9, a2
                  add          t4, s2, t5
                  andi         s8, s5, 433
                  ori          s5, s11, 1622
283:              andi         t0, s11, -473
284:              sltu         a7, s6, ra
                  and          t6, s0, a0
286:              srai         s2, a2, 8
                  and          s11, s7, t1
                  add          a7, a6, a1
                  blt          t5, t5, 307f
                  add          t0, s7, t6
                  sll          t5, s1, a7
                  bgeu         t2, s8, 295f
                  sltiu        s10, t0, -122
                  sltiu        a1, t3, 1400
295:              addi         a7, s1, -1459
                  and          gp, a1, s1
                  sra          s4, a6, t1
                  sra          s4, s0, t6
                  and          t2, s2, a3
                  add          s11, a2, t3
                  slt          t3, t6, t4
                  addi         a5, s6, 777
                  lui          a5, 488686
                  bne          s11, t2, 306f
                  xor          s3, t6, ra
306:              bne          s5, a1, 311f
307:              srli         t2, s0, 21
                  and          s1, zero, s0
                  or           a2, s11, a3
                  sll          s0, a1, zero
311:              sltu         a5, t0, a6
                  bne          t4, zero, 316f
                  bne          gp, tp, 315f
                  srl          s8, ra, s8
315:              srli         t3, t0, 25
316:              srai         s0, t1, 13
                  auipc        t5, 96699
                  slt          a2, a2, s8
                  srai         tp, s5, 10
                  srai         t0, gp, 16
                  ori          tp, t2, 543
                  sltu         s4, s11, s3
                  nop
sub_1_j5:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  and          t2, a5, a7
                  srai         s9, s1, 18
                  nop
                  bge          s9, t0, 323f
                  beq          s10, s7, 327f
323:              beq          t6, s0, 324f
324:              blt          t3, gp, 338f
                  or           t0, t5, s9
                  beq          t2, t2, 329f
327:              or           gp, s10, s2
                  sll          s6, s0, s9
329:              nop
                  xor          gp, t4, a6
                  srli         gp, a2, 31
                  add          s10, s0, tp
                  sltiu        t2, t1, 334
                  bgeu         s5, tp, 352f
                  srai         a1, t0, 5
                  sra          a7, s6, s10
                  andi         s9, t4, 255
338:              bltu         s6, t6, 355f
                  bgeu         ra, s3, 347f
                  addi         t4, gp, 1206
                  beq          s5, t4, 344f
                  slti         s4, s5, -2024
                  andi         s10, t1, -845
344:              ori          s11, s9, 146
                  or           a2, s0, s1
                  and          t3, t5, t6
347:              blt          zero, t2, 349f
                  bge          a2, s1, 355f
349:              bgeu         s3, a5, 364f
                  srl          s6, zero, s4
                  sltu         a0, ra, ra
352:              bltu         t3, a2, 363f
                  sltiu        s7, s5, 44
                  sra          s8, a0, s6
355:              addi         s1, ra, -1594
                  sltu         s7, s3, a4
                  nop
                  bltu         s6, s6, 373f
                  add          s9, s8, s4
                  slti         s4, a1, 1564
                  bne          t1, s9, 379f
                  xor          t4, gp, s0
363:              add          zero, t6, t3
364:              ori          s11, t6, 996
                  slti         t1, a4, -1027
                  bltu         ra, s7, 373f
                  addi         t6, s5, -813
                  sltu         t0, s0, s5
                  lui          gp, 713858
                  xor          t1, s10, a4
                  srl          t1, t1, s5
                  add          s5, s0, a7
373:              ori          s10, s2, 1499
                  nop
                  xori         s3, sp, -380
                  and          t6, s1, a7
                  add          t0, s6, a7
                  sub          a7, a3, t4
379:              auipc        t3, 986055
                  srai         t0, s9, 28
                  bne          s0, s10, 399f
                  auipc        tp, 35065
                  slli         s5, zero, 14
                  bge          gp, s4, 387f
                  beq          t4, s0, 386f
386:              srai         s6, a0, 5
387:              auipc        s4, 312016
                  andi         a6, s11, 1161
                  sra          s2, s7, t2
                  andi         s8, s5, -481
                  bne          a1, a0, 408f
                  bge          s5, s8, 410f
                  or           t3, t3, s5
                  add          gp, a1, a0
                  sra          t3, t1, t4
                  auipc        s4, 150713
                  lui          t1, 753021
                  srl          ra, gp, s1
399:              slt          s4, zero, gp
                  bltu         s1, sp, 402f
                  sltu         ra, a5, s6
402:              slt          s8, t3, a6
                  auipc        a0, 167429
                  andi         s5, a1, 334
                  bgeu         a3, sp, 420f
                  add          s11, s9, s0
                  bgeu         t0, t5, 414f
408:              srai         t3, a3, 15
                  andi         t5, t3, 758
410:              xor          tp, t4, s5
                  blt          a7, a2, 429f
                  lui          t0, 3380
                  srli         a5, sp, 12
414:              or           s9, s5, t1
                  or           t0, t5, s5
                  xori         t3, s5, 1834
                  srli         t6, sp, 21
                  ori          s4, s5, 1748
                  andi         s0, t2, 693
420:              xori         t1, s8, 1550
                  sltu         zero, t2, s9
                  sltiu        t6, s5, -134
                  beq          s4, s9, 426f
                  and          s2, a5, t5
                  sub          s3, t3, s8
426:              bltu         t2, s7, 444f
                  bltu         s6, t2, 442f
                  sltiu        s11, s0, 520
429:              slt          a0, a2, a6
                  add          s8, t1, a2
                  xor          a7, a4, s10
                  add          s6, s11, a1
                  slli         s7, t6, 20
                  sltiu        t1, s6, -1435
                  sub          s5, s6, s5
                  sltiu        a6, s9, -1027
                  sra          t2, a7, a5
                  andi         t2, s6, 1308
                  sltu         s5, s6, s0
                  xor          s3, t1, s0
                  sub          t2, s7, s0
442:              bltu         a4, t1, 447f
                  add          s0, t4, s6
444:              add          s6, t2, t2
                  sub          s11, s7, s1
                  beq          tp, s9, 451f
447:              bltu         t4, t2, 465f
                  sll          a1, s8, s2
                  xori         zero, s1, 1496
                  andi         a0, s1, -1480
451:              bgeu         s10, a2, 454f
                  and          s8, ra, s5
                  lui          s8, 951419
454:              sll          a0, zero, a2
                  xori         a0, sp, -1011
                  addi         t1, t6, -600
                  addi         s3, s9, -220
                  bne          ra, a0, 475f
                  lui          a7, 856906
                  or           t6, t3, a6
                  bge          gp, t1, 472f
                  srai         s8, s1, 4
                  sub          s7, t0, gp
                  slti         zero, a0, -452
465:              and          s11, a1, s2
                  addi         a5, zero, -458
                  or           s11, s9, s7
                  srai         t2, t4, 3
                  slti         zero, s7, -298
                  srai         s9, s0, 21
                  slt          t1, gp, s6
472:              sltiu        a5, a3, -360
                  ori          s9, tp, 273
                  xor          a5, a1, t4
475:              lui          s10, 301358
                  add          tp, s3, tp
                  bge          t5, s7, 487f
                  sll          s7, a3, s1
                  sll          gp, s9, a0
                  and          t5, a6, s1
                  slt          t6, t4, s5
                  add          s7, s5, t2
                  slli         s2, tp, 5
                  ori          a7, s6, 699
                  slti         zero, a2, -487
                  slti         s5, tp, 850
487:              or           s7, a4, s6
                  sltu         t1, s7, t0
                  bgeu         a2, s1, 495f
                  slt          s8, a1, t3
                  add          t6, a1, t2
                  slli         s11, a0, 19
                  sltiu        s7, a6, 218
                  xor          t3, a6, a3
495:              and          s2, a4, a4
                  sub          s4, t4, s1
                  slti         t0, s4, 845
                  sra          t5, a3, s3
                  slti         t6, s4, -1314
                  slli         a2, s7, 25
                  bne          a1, s0, 504f
                  bltu         a4, tp, 516f
                  add          s11, tp, s4
504:              bne          s2, a2, 508f
                  sll          a7, s7, s7
                  sub          t3, a5, zero
                  add          t3, t5, a0
508:              beq          s11, gp, 516f
                  sltiu        a2, s7, 1600
                  add          ra, a5, a2
                  bgeu         a6, t1, 518f
                  srai         s0, sp, 21
                  xor          a0, s11, s11
                  bgeu         ra, a7, 515f
515:              srl          a2, a7, t2
516:              andi         zero, a1, 1309
                  auipc        zero, 535916
518:              slt          a7, a2, t5
                  or           a2, t4, s1
                  beq          t2, zero, 538f
                  andi         t6, s0, 461
                  xor          t2, a2, t5
                  sub          t1, s1, s4
                  sra          s4, a4, t4
                  bltu         s4, a7, 526f
526:              slt          zero, t4, t4
                  beq          s5, s10, 535f
                  addi         s2, zero, -4 #init loop 1 counter
                  and          s6, s1, a1
                  sltiu        s9, t6, -915
                  lui          a7, 6668
                  srli         gp, gp, 3
                  addi         t3, zero, 0 #init loop 1 limit
                  srli         s7, t2, 21
                  or           s0, s4, s3
sub_1_0_1_t:      slti         a7, t2, 1505
                  addi         s2, s2, 2 #update loop 1 counter
                  srl          s0, a3, s4
                  addi         t0, zero, -5 #init loop 0 counter
                  sra          s8, s1, s10
                  addi         a6, zero, -13 #init loop 0 limit
sub_1_0_0_t:      slt          a2, tp, a6
                  addi         t0, t0, -6 #update loop 0 counter
                  add          a1, a0, zero
                  addi         s3, t6, -1596
                  sltu         s9, s5, a7
                  srli         s0, s7, 21
                  bge          t0, a6, sub_1_0_0_t #branch for loop 0
                  xor          a1, a1, t2
                  blt          s2, t3, sub_1_0_1_t #branch for loop 1
                  slti         t4, t6, 111
                  ori          gp, a5, -1874
                  blt          s2, a6, 532f
                  andi         zero, a6, 43
                  sra          s1, a1, a5
532:              nop
                  sra          a5, t5, a3
                  sub          t6, zero, s3
535:              srai         s3, s2, 2
                  sra          s1, s0, t5
                  sll          s5, t4, gp
538:              xori         a5, a7, -1499
                  xor          s5, a2, a4
                  sub          s11, s1, a2
                  slt          a6, a4, s3
                  xor          s9, a0, t5
                  andi         t1, s2, -1106
                  srli         ra, t3, 17
                  bne          t5, t3, 547f
                  lui          zero, 958179
547:              slti         t1, s9, 1162
                  andi         s1, t4, 428
                  bltu         t2, s4, 551f
                  srai         zero, gp, 24
551:              bltu         t1, t3, 553f
                  blt          a1, sp, 570f
553:              xor          s0, a1, s11
                  slt          t6, s9, a7
                  sll          t2, s0, a5
                  beq          s10, s2, 573f
                  bne          a6, sp, 559f
                  slli         s9, t3, 11
559:              sub          s0, t1, a1
                  sltu         s6, s1, a3
                  blt          s7, s1, 567f
                  or           t3, a1, a6
                  nop
                  bgeu         s9, t2, 566f
                  nop
566:              beq          s11, gp, 583f
567:              sltiu        a1, sp, 1209
                  or           t0, t3, a7
                  ori          s7, s0, -927
570:              bge          s1, s10, 571f
571:              sltiu        s4, t2, 1735
                  addi         s8, a7, 810
573:              sltiu        a2, s7, 1123
                  beq          s7, zero, 585f
                  bne          a2, s8, 577f
                  andi         s0, t3, -1865
577:              addi         t5, s11, -18
                  slti         ra, t2, -1184
                  sub          s6, a0, ra
                  srai         s8, a7, 30
                  andi         s0, zero, -3
                  andi         s9, t1, -1230
583:              sub          s7, s1, t3
                  auipc        t6, 162210
585:              lui          t4, 172817
                  sll          t4, a3, s0
                  slli         gp, s10, 7
                  xori         a1, a1, 686
                  andi         s5, s9, 621
                  bltu         ra, t6, 608f
                  srli         a2, ra, 10
                  slt          t3, t3, s3
                  lui          s9, 811060
                  bgeu         s0, s8, 596f
                  auipc        ra, 297170
596:              andi         s6, s6, -1806
                  lui          s11, 877659
                  ori          s4, a3, -1058
                  xor          t1, a4, s11
                  lui          s1, 792074
                  nop
                  add          t3, a5, s7
                  ori          a6, a4, -1420
                  sub          s6, gp, tp
                  sra          t2, a7, a5
                  sub          s3, s1, s1
                  bgeu         ra, s3, 617f
608:              and          a6, s8, tp
                  addi         s10, a2, -661
                  nop
                  sub          s11, t2, s7
                  lui          a5, 753167
                  add          s6, s4, sp
                  auipc        s6, 42067
                  add          s6, a2, s9
                  srli         s1, s11, 29
617:              bne          a5, s8, 624f
                  bne          t4, t4, 636f
                  bge          t6, a4, 624f
                  bgeu         zero, a5, 623f
                  sub          zero, t1, ra
                  slli         s6, a4, 6
623:              beq          s5, a4, 627f
624:              slt          s1, ra, s6
                  ori          gp, a3, 1640
                  and          t6, s3, a6
627:              beq          t5, s2, 645f
                  sltu         a5, t1, t2
                  bltu         t3, a6, 644f
                  xori         t0, a5, 550
                  slli         tp, a0, 26
                  add          s3, s1, s11
                  addi         t1, s7, -1268
                  xor          a0, sp, t4
                  bne          t4, t5, 638f
636:              slli         t1, t6, 20
                  sub          a5, zero, a1
638:              slt          s2, s3, a1
                  sra          a0, s11, t0
                  bgeu         s4, s8, 645f
                  slli         s7, s5, 21
                  bne          a5, s0, 659f
                  bne          s10, t5, 661f
644:              xori         ra, s6, -1590
645:              lui          s6, 277937
                  sll          gp, tp, s8
                  beq          t0, tp, 662f
                  sra          zero, a0, t0
                  andi         s0, a4, -369
                  andi         s2, a5, -1519
                  srai         zero, t0, 21
                  sltu         s8, t4, ra
                  nop
                  nop
                  ori          a5, t3, -1252
                  xor          s5, a2, t0
                  srli         t2, t1, 2
                  xori         a7, a6, -566
659:              xori         t6, s1, -1717
                  addi         gp, s0, 1151
661:              add          s8, s3, s2
662:              sub          s0, zero, s11
                  sltiu        s6, s2, -1498
                  lui          a7, 136262
                  srai         a7, sp, 23
                  bltu         s9, a6, 680f
                  beq          a3, a6, 674f
                  lui          t6, 921763
                  and          s6, s11, a1
                  srli         s0, a2, 6
                  add          t4, s7, s7
                  xori         ra, a4, 1419
                  and          s9, s5, ra
674:              andi         t4, tp, -1397
                  or           s0, a6, a2
                  addi         t0, t2, -1043
                  sltu         s9, s8, t5
                  nop
                  xor          t2, a6, ra
680:              nop
                  srli         t4, s9, 27
                  xori         a0, a6, 248
                  bge          s8, s9, 684f
684:              bge          a4, a5, 687f
                  addi         s5, sp, -722
                  srl          t0, s9, a5
687:              bgeu         s1, s2, 695f
                  auipc        s9, 1012073
                  bne          t3, gp, 707f
                  sub          ra, t1, a5
                  bge          s2, a7, 699f
                  xor          a7, tp, s2
                  sltiu        a5, t3, -1888
                  slt          s3, s10, s9
695:              add          t3, a6, s7
                  blt          a2, a0, 699f
                  lui          s4, 546061
                  andi         s10, s2, -394
699:              bne          a2, a3, 716f
                  srli         s6, a0, 7
                  srli         t5, t1, 19
                  srl          t5, s5, s11
                  slti         t6, s8, 533
                  bltu         t3, a3, 707f
                  ori          s2, t6, -1198
                  beq          t2, s11, 708f
707:              or           a6, t3, a6
708:              xor          s0, s11, s1
                  addi         s3, gp, 711
                  bge          gp, a1, 713f
                  sltu         tp, a0, a6
                  bne          t4, s11, 730f
713:              bgeu         t3, s6, 714f
714:              beq          s3, a3, 717f
                  bne          sp, t6, 716f
716:              nop
717:              slt          t3, tp, s0
                  auipc        s11, 764130
                  addi         s6, zero, 5 #init loop 0 counter
                  auipc        t2, 871988
                  slli         s9, sp, 28
                  slti         s10, a7, 1194
                  sub          t4, s9, s4
                  slti         a7, s11, -400
                  xori         gp, t2, -1150
                  slli         s10, s11, 20
                  lui          s5, 870808
                  or           t3, gp, zero
                  slt          a6, a7, s3
                  add          ra, a5, t2
                  addi         a5, zero, -12 #init loop 0 limit
sub_1_12_0_t:     xor          a1, tp, s4
                  addi         s6, s6, -3 #update loop 0 counter
                  srli         s5, tp, 13
                  xor          s8, a0, sp
                  xor          a7, s2, a3
                  slti         a0, a2, 1849
                  xori         s1, zero, 886
                  auipc        s1, 646465
                  auipc        s3, 27912
                  xor          s4, s6, s3
                  slti         ra, t2, -1393
                  sll          gp, s3, zero
                  xor          t2, s2, a2
                  addi         a7, zero, 1105
                  bge          s6, a5, sub_1_12_0_t #branch for loop 0
                  nop
                  bltu         s9, t5, 721f
                  andi         s7, a0, 99
721:              nop
                  lui          a1, 277922
                  sra          s0, t6, s10
                  nop
                  bne          s9, s5, 736f
                  srli         a5, a0, 27
                  sra          a2, a0, a6
                  sltiu        a7, zero, 839
                  and          t3, t5, t0
730:              or           s0, a0, t5
                  xori         s7, a5, -1325
                  srli         s7, a1, 18
                  sltu         s5, a3, a1
                  xor          gp, zero, sp
                  blt          t4, t4, 745f
736:              or           a2, a5, s2
                  srai         a2, s4, 1
                  nop
                  slti         t0, a2, 373
                  sltu         a6, s5, s11
                  slt          a6, s8, sp
                  nop
                  slt          s7, a3, s2
                  beq          s2, s0, 750f
745:              bgeu         a3, gp, 752f
                  bge          a5, s5, 760f
                  sltu         s9, tp, t3
                  bne          s2, tp, 765f
                  beq          t4, t5, 751f
750:              slli         t2, s7, 22
751:              sltiu        s3, t0, -935
752:              add          zero, t1, s5
                  xor          s9, s2, s8
                  addi         t0, s3, 621
                  xor          s11, t2, s3
                  slti         t2, a5, 48
                  sll          s5, a6, a1
                  xor          a7, s4, t2
                  andi         s5, t4, 768
760:              bltu         s1, s5, 768f
                  slt          a6, zero, a5
                  xori         t0, ra, 1664
                  srl          t6, s5, t5
                  add          t6, s11, s7
765:              sltiu        t1, s4, 26
                  ori          gp, s4, -1680
                  srl          ra, s4, s2
768:              bge          s8, a0, 786f
                  sltiu        s10, a0, -797
                  sltiu        tp, a6, -1869
                  bgeu         gp, a5, 776f
                  beq          zero, s3, 787f
                  sra          a1, s1, t6
                  xor          s9, s4, ra
                  slli         t4, a4, 12
776:              srai         a5, a2, 11
                  lui          t6, 87098
                  srai         t6, t6, 2
                  bltu         a4, zero, 797f
                  sub          ra, s8, tp
                  bge          a2, t3, 799f
                  and          s7, s10, s4
                  and          t1, a5, a3
                  bgeu         ra, s10, 802f
                  bge          s7, gp, 790f
786:              blt          t1, t4, 793f
787:              beq          a2, t3, 802f
                  sra          gp, t0, a2
                  addi         s6, s6, 335
790:              beq          s0, s6, 793f
                  xori         a7, s5, 1540
                  ori          s8, a6, 1846
793:              sltu         a1, a1, s4
                  nop
                  add          a2, t5, s5
                  bne          s3, s2, 804f
797:              srl          t5, a0, s1
                  beq          zero, t1, 800f
799:              nop
800:              sltiu        a7, t1, -928
                  lui          t0, 538978
802:              add          zero, s9, s3
                  nop
804:              srli         s5, gp, 13
                  sltu         zero, t6, a0
                  addi         s6, t1, 1567
                  srl          zero, gp, s5
                  srai         t5, s1, 8
                  ori          s8, s10, 1221
                  addi         s6, t1, 751
                  bltu         s9, s8, 815f
                  bge          ra, s4, 827f
                  srai         t0, ra, 22
                  slt          s6, a6, t1
815:              bge          s0, a0, 818f
                  addi         t5, a5, 466
                  addi         zero, s6, 1784
818:              and          t2, tp, t1
                  xor          s7, s2, t4
                  and          s2, a0, gp
                  bgeu         s1, t1, 839f
                  sltiu        ra, sp, -371
                  slti         s0, s0, 896
                  sub          s8, a5, a3
                  srli         tp, s0, 13
                  ori          s6, t4, 1540
827:              xori         t5, a7, -1861
                  xor          t6, ra, a0
                  srli         a5, zero, 3
                  addi         gp, t4, -1817
                  sra          s2, a6, s11
                  xor          t3, s1, t4
                  xor          gp, s5, s1
                  blt          gp, s10, 838f
                  or           s4, a0, a1
                  xor          a2, sp, s8
                  bge          t2, s0, 855f
838:              srli         a1, t1, 21
839:              nop
                  and          t4, t1, s7
                  sltiu        t6, s1, -675
                  addi         s1, s5, 1033
                  sll          ra, s11, s10
                  srai         t5, zero, 18
                  bne          t6, ra, 846f
846:              slt          t0, t1, tp
                  blt          s4, t4, 855f
                  nop
                  bne          s4, s10, 857f
                  srli         t6, t4, 16
                  andi         a5, t4, -2039
                  sltu         s4, a5, gp
                  bgeu         s6, s1, 859f
                  and          t3, a2, a3
855:              bge          gp, a2, 872f
                  bne          a6, a2, 859f
857:              lui          s1, 897046
                  bge          s7, tp, 863f
859:              beq          s10, a0, 877f
                  beq          s9, t3, 870f
                  add          a7, s5, t6
                  lui          a5, 884245
863:              blt          s1, s8, 878f
                  add          s1, t4, s0
                  slti         a6, t5, 1968
                  sltu         a6, s3, s7
                  blt          t5, a3, 870f
                  or           s3, t6, s4
                  xori         a5, s5, -1447
870:              sltu         s4, a7, t5
                  or           s2, t1, zero
872:              srl          s8, a7, gp
                  slti         a6, a7, 1776
                  addi         s5, s8, -342
                  addi         t6, a6, -1157
                  nop
877:              bne          zero, a2, 891f
878:              slt          s8, s10, a5
                  srai         s11, a1, 16
                  bge          a0, s4, 891f
                  ori          t6, s11, -720
                  add          s1, a3, gp
                  addi         s1, gp, -1922
                  sltiu        t2, a2, 962
                  add          s6, a7, s6
                  and          s8, t6, a6
                  bne          s4, s8, 905f
                  srl          s2, t1, a5
                  sltiu        t6, ra, 530
                  xor          s3, ra, a5
891:              sltu         a7, ra, zero
                  addi         t6, a1, -513
                  ori          a0, gp, -427
                  srai         s3, gp, 16
                  xor          s2, a2, s5
                  sra          s8, t2, s2
                  andi         s4, tp, -170
                  srli         a2, sp, 4
                  or           t2, a2, t5
                  andi         a7, a3, -161
                  srai         s5, s9, 0
                  add          a0, t0, s3
                  blt          s3, s9, 905f
                  slli         a0, tp, 30
905:              sltu         a0, ra, s4
                  slli         s8, s1, 28
                  nop
                  auipc        a5, 798717
                  sltiu        a6, t1, 825
                  bne          t4, s0, 912f
                  or           s0, s6, s7
912:              add          t3, tp, tp
                  nop
                  add          tp, s7, s7
                  bge          tp, s5, 917f
                  srai         s7, ra, 22
917:              add          s6, a2, a3
                  ori          ra, s11, 502
                  sltiu        t0, s2, 1997
                  sub          t3, t6, a0
                  beq          t4, a2, 924f
                  andi         s0, s3, -216
                  beq          s1, s2, 925f
924:              auipc        s9, 958882
925:              andi         s10, sp, 182
                  auipc        s11, 73206
                  add          s3, s6, s9
                  blt          t6, t4, 935f
                  nop
                  or           s3, ra, s11
                  bne          a4, gp, 932f
932:              bltu         s7, a2, 939f
                  lui          s0, 73952
                  bltu         s8, ra, 951f
935:              auipc        s5, 1018925
                  nop
                  blt          s3, t1, 942f
                  add          gp, ra, t0
939:              srai         a5, a1, 1
                  xori         s2, t2, 1684
                  slti         t0, t3, 1796
942:              sll          a1, gp, t6
                  add          ra, s1, s4
                  auipc        a5, 372558
                  sltu         t1, s5, t6
                  xor          a6, a6, sp
                  bne          t0, s8, 965f
                  lui          a2, 331490
                  and          t6, t0, a6
                  or           s0, s7, tp
951:              beq          t2, t3, 955f
                  bgeu         s11, a2, 966f
                  bltu         t6, s11, 971f
                  nop
955:              addi         s1, a3, -523
                  slli         t2, a7, 3
                  xori         s7, t6, 1026
                  ori          t3, tp, 1489
                  srl          a7, s2, s10
                  srai         tp, a0, 18
                  slt          t2, s9, s11
                  srl          s1, a7, s10
                  sltu         tp, s6, s11
                  slt          t1, a3, t3
                  srli         tp, a1, 30
sub_1_j3:         jal          t1, sub_5 #jump sub_1 -> sub_5
                  bgeu         t5, t0, 959f
                  bge          a7, s1, 963f
959:              sltiu        a1, s9, 868
                  auipc        s10, 589665
                  or           a1, a7, s4
                  beq          s2, zero, 978f
963:              add          t5, sp, t1
                  srli         zero, t0, 20
965:              sra          t1, s9, a2
966:              add          s0, a3, a5
                  andi         t5, zero, 603
                  sll          a7, s5, t5
                  sub          a7, s2, t4
                  bge          gp, a4, 975f
971:              sll          s2, gp, t1
                  srli         t5, s2, 1
                  sra          a1, s4, sp
                  slt          s1, a7, s4
975:              or           s5, t1, a3
                  sra          a2, s5, ra
                  sra          a6, t0, t1
978:              andi         t0, s4, 1344
                  sltu         t0, s11, s6
                  srai         a7, a2, 11
                  lw           t1, 4(a3)
                  addi         a3, a3, 48
                  sll          s3, a5, s9
                  sltu         a7, sp, s11
                  nop
                  sub          s8, a1, s4
1362:             addi x24, x6, 0
1362:             jalr x24, x24, 0
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
.word 0xbec70bdf, 0x190b9dd6, 0xc8f5b3b6, 0x3ddf11b4, 0x2180987f, 0x4248c4a4, 0x89608e77, 0xc545cd2f
.word 0xb94bc64d, 0xeda794d7, 0x4551284f, 0x10266ce9, 0x3e6ad856, 0xcacff739, 0x1aad1653, 0xf50befbe
.word 0x2f9efee9, 0xcb10241d, 0x278c7630, 0x9ec5fe0a, 0x18cb6d0a, 0xffeb650c, 0x5be1e120, 0x092f2896
.word 0xac0d7221, 0x801112a4, 0x05ff6d19, 0xcbfdd272, 0xa6d8894b, 0x88367506, 0x3216a8c6, 0x1acd4a18
.word 0x65a8a30a, 0x64cbdc86, 0xb01df787, 0x1de192bc, 0x34cc4e78, 0x66ca595c, 0xb8f0f136, 0xdca097dd
.word 0x7623ba02, 0x48f61972, 0xc7ffa8ab, 0x9eb73409, 0xdd383678, 0xf9b2f10f, 0x64ff8315, 0x187f4fa1
.word 0x80dc3079, 0xd1c7e6da, 0x2926aac9, 0x570fddfd, 0x15213082, 0x2f188551, 0x02cf560a, 0x8862774a
.word 0x76d72a4d, 0x45d9f415, 0x61bce40e, 0x9541d48f, 0x73bd02a3, 0xaa75e132, 0xb041b3aa, 0x1cf4428e
.word 0xa17670a9, 0x3b013b3a, 0xfdd41221, 0xec5038fb, 0x676b2e1a, 0x570f9e57, 0xf5ca5f9e, 0xc2794863
.word 0xcba62efd, 0x0ee991e3, 0xe48b8414, 0x004901c2, 0x88ee04c9, 0xa1bf4ab7, 0xaf1d3564, 0xcf6ee5a7
.word 0x6dbbb3fc, 0x8e5b4ef5, 0xd3d382c0, 0x27e61c5c, 0x6a4672d6, 0x82ff50d3, 0x3a433997, 0xb3011ddb
.word 0xc0e0b0ba, 0x4405b387, 0x5310890a, 0x7783fd05, 0x097c2230, 0x374ff9db, 0xdf27e834, 0xca1f0acb
.word 0xfcab564c, 0x57c7f355, 0x3be5f968, 0x5aa51635, 0x77826b79, 0x9beed72b, 0x2c3e4d3c, 0x5abdbacb
.word 0x8e469f64, 0xe37dbb04, 0x3bf45ecc, 0x7c1abc05, 0x27f43f2b, 0x3a2ebafb, 0xf283805f, 0x99cd3fc2
.word 0x5bdd7df8, 0x8ba98735, 0x23b8720b, 0x711f99cc, 0x12c6a003, 0xe594d564, 0xb4b05ce7, 0x7854e3bb
.word 0x53b79067, 0x0aaf8279, 0xbe4c5f8e, 0x4b224e1d, 0xdc3b346e, 0xd856c1bb, 0x292fb599, 0xd2c88fbd
.word 0x62037646, 0xfb6ca676, 0x9f2f658a, 0xd6f80c92, 0x209eaf43, 0x045faf7e, 0xdfef1fed, 0xed1a754f
.word 0x4902c2a8, 0x5b9a3c31, 0x23ded4f7, 0x23417b3d, 0x5fc8d085, 0x33ecdc20, 0x51d8bdaa, 0xe394a4c8
.word 0x46567f19, 0xaa69b328, 0x95ca0e75, 0x12cc2b8f, 0x9caccfee, 0x1c1dae0b, 0x8f17b9a7, 0xa67a152a
.word 0x40e6194a, 0x97ad1d7c, 0x4c32e30e, 0x14f4a633, 0x0793d6ff, 0xc8782959, 0x95bd1965, 0x6e7dc302
.word 0x71f75c24, 0xea4d98af, 0x4b91984d, 0x45b303fc, 0x0424771e, 0x4583ef41, 0xf016a323, 0xf27b4461
.word 0x2705a5fa, 0xed3a7f49, 0x78a78f20, 0xc6f7bf0d, 0xb3a68a56, 0x698e0fdc, 0x0372dba0, 0xee87a4b8
.word 0xee049de1, 0xbb54354a, 0x94ed5eb7, 0xcec66671, 0x03e6128a, 0xf2b2b71f, 0xda9ad509, 0x41d3e976
.word 0x7e9dd938, 0xc79bb120, 0x4ea9c12a, 0xbe3ded11, 0x1a9dc594, 0x0c0a4d44, 0xf8845a91, 0x14d90702
.word 0x3471c42a, 0x0b46a2c5, 0xad080e61, 0x08019b35, 0x3e7d0ab1, 0x9ec5b980, 0xf60bf83e, 0x650bff6b
.word 0x5ea0d1ad, 0xc3831988, 0xdf242e7b, 0xfdd9f7ba, 0xd2cffa66, 0x7f44d579, 0x2e7aef5b, 0xe7c3a197
.word 0x20811472, 0x3106c5a6, 0xb8c3bbe7, 0x9d816819, 0xcf109206, 0xfeec27fc, 0xed9be653, 0x4ec66485
.word 0x920db437, 0xbf70af6d, 0x6e54a2c5, 0x4c829516, 0xbb679fb0, 0x77c058fe, 0xf99c9323, 0xe75a187b
.word 0x4649bb93, 0x7927f810, 0x06c5be3b, 0x52a59d49, 0x01ed0010, 0xc00fb106, 0x548261b5, 0x573c3bbd
.word 0x46083be6, 0x7cde1028, 0x851f905f, 0x8f252331, 0x70e51d7a, 0x8c9a103b, 0xe64d41d3, 0x102f535d
.word 0x5215fc12, 0x55af5e40, 0x30118bd7, 0x33ccec56, 0xfff8fbc6, 0xa598cdd4, 0xc7cf4328, 0x0f06228b
.word 0x94208f37, 0xd63ca0cf, 0xbae7dcad, 0x1ade0843, 0xfe0af711, 0xa995c926, 0x133c4906, 0x63b3809d
.word 0x0acd7190, 0xa6c6e32c, 0x4823c432, 0xb167decd, 0xbd8364b6, 0x84debd36, 0xba75f153, 0x0448cfb2
.word 0x2da47a22, 0x1a35f356, 0x136515e0, 0x46f3712f, 0x7d6e2d69, 0x5a1a9128, 0x89c333f4, 0x0332d2af
.word 0xfb9d368c, 0xefebc28a, 0x7ade5ca8, 0x36df7f08, 0x21f7bddd, 0xd731012f, 0x47903e23, 0xd30c0a5d
.word 0x9f020d9b, 0xb9281d2e, 0x20635171, 0x8ad0a05e, 0x1e63ccc5, 0x4d4c97af, 0x512d9621, 0xa76519c3
.word 0x524c2351, 0x5bbe6265, 0x0482303f, 0x32e526f1, 0xcc16ce92, 0x4c58e7ce, 0x53777a37, 0xef0ea39f
.word 0x535a64f8, 0x6987103f, 0xf13c834e, 0x47446758, 0xc4304bd0, 0x6d1f3f39, 0x52891035, 0x96bbd1bc
.word 0x28d8c412, 0x267783ca, 0x4b9e57f6, 0xac47a1e3, 0xfc0d99e7, 0x948a1d3f, 0x01365ffb, 0x1381d3b3
.word 0x2bb0426b, 0xa4035d41, 0xdaba62a5, 0x87cbd44d, 0x8bf5229d, 0x3e7bf4e4, 0x44b63a48, 0x784c67e0
.word 0x2030e84b, 0x4a91ce9d, 0x1fe363f5, 0x0ef93193, 0xde90f99e, 0xc0cdcc89, 0xee0de076, 0x18f14253
.word 0x5552de56, 0x8cfcd023, 0x604d9628, 0x73ee5515, 0xea8a5ac3, 0x881ebb4c, 0x5e36856f, 0x2fc73d6c
.word 0xc1c7b15a, 0x33041dd9, 0x33efc498, 0x872cdbeb, 0xa062c499, 0x08921d21, 0xc2aed169, 0x66c78e9a
.word 0xe11c0a80, 0xa6574ba2, 0xa6275b2f, 0x8601b09e, 0x43041bfd, 0x2d125772, 0xee830b92, 0x7aa0d382
.word 0x3f827f1c, 0xa203af35, 0xab01b926, 0xf74c7c6c, 0xde9d39e5, 0x62bd1608, 0x5df049c0, 0x2c83781e
.word 0x8e4a0542, 0x090d1096, 0xa6e9374c, 0xbbf1e274, 0x2af362dd, 0x87964786, 0x4879727d, 0x6543340c
.word 0x301cfebb, 0x541422c4, 0xead1fd89, 0x20542174, 0x71fd7154, 0xd0f03732, 0x4b37d861, 0x04ec5ead
.word 0x5df212a7, 0x355f824f, 0xed65db2c, 0x88b9fd07, 0x28921fe9, 0xb48de07b, 0x464e2e79, 0x03a7b848
.word 0xa6abb3ff, 0x6d285aec, 0x6e3363f6, 0x2785d542, 0x867d09cf, 0xed0c09d6, 0x66140248, 0x00b2c72b
.word 0xa6103d06, 0x8575dd97, 0xffa22f11, 0x2a5244d8, 0x177cea9c, 0x1f65b008, 0x7080e615, 0xa8285c43
.word 0xd3e9bd93, 0xe956dbb6, 0x8bd3dcf7, 0x3b381aa4, 0x4f1ef811, 0x4851d46d, 0x971059f3, 0xbee99373
.word 0x622a6cab, 0x873962b2, 0x958bf4aa, 0xd744f92a, 0xb73219a7, 0x7e97eb72, 0x39713979, 0xfaa280af
.word 0xdfa5467c, 0x259496c1, 0xaf21c129, 0x92135ef8, 0x666e6be7, 0x0f2459ac, 0xf35ed362, 0xc194564a
.word 0x8cd3a14f, 0x0f4bf624, 0x41a4b949, 0xe063fa96, 0x1c1107ea, 0x12732a41, 0x97baa6d1, 0x0c1e176d
.word 0x50ad3653, 0xd7f20e6a, 0x98e0d770, 0x093dae6e, 0x051c2187, 0x477169f1, 0x7b1b2fb3, 0x4b56e69f
.word 0x961f0e3c, 0x4e7ecfa3, 0xb84044c4, 0x6db2c7fe, 0x4e05dfe7, 0x571d26ed, 0xc6c50ec9, 0x682298a3
.word 0x53cc1b27, 0x19f30e3f, 0x521cfd5c, 0x3bc8006d, 0x5b26c311, 0x398604a7, 0x884a87d5, 0x690b5ef9
.word 0x59e866c2, 0x1ff670f7, 0xa20c3bd1, 0xc737c2d5, 0xbbb7d4c8, 0x1d75c723, 0x050adca2, 0x7f7ed0af
.word 0x122c53f1, 0xdb6ed4eb, 0x5ee12187, 0x008f2ada, 0x48501dc1, 0xada96564, 0x6d1f2dee, 0x2eadd5bc
.word 0x300a8cf0, 0xda68bc02, 0x35301ff0, 0x0e1923b7, 0xe67e4357, 0x383e2a9a, 0xcb816e61, 0xd3356c5a
.word 0xee07a9bb, 0x23411361, 0x107fa4ca, 0x629b4ebe, 0xaf3493b4, 0x39f3b399, 0x99b245cb, 0xd5fc8ff4
.word 0x59693c95, 0x3587508c, 0x12d69c67, 0x2fd77166, 0x1c682abd, 0x252e17db, 0xa5e133ac, 0x21984525
.word 0x5fe04c5b, 0xe653bd08, 0x24ef5faa, 0x60bd7dc8
.section .region_1,"aw",@progbits;
region_1:
.word 0xf9ae1d1b, 0xf026be69, 0xfe406f0b, 0xa2bad3ca, 0xa000d3e6, 0x07ee64a8, 0x34cdc3e8, 0x6b0b864c
.word 0x8732967a, 0x68e93270, 0xf37c5cfa, 0x3ad3f805, 0x969a2f56, 0x06bbaab2, 0xf54b36d0, 0x6a3241f1
.word 0xbf8e3fab, 0x2716de01, 0x5944cebd, 0xfc6973e4, 0x2c19faf8, 0x2b5c3c37, 0x3385c9e1, 0xec7a83b3
.word 0x2fededb0, 0x8135ec55, 0x5de6456d, 0xa3909b9f, 0xd1a9f680, 0x750cc2d7, 0x08f9c0bf, 0x662c5070
.word 0x5ecd96f4, 0x0c389707, 0xb53d74c8, 0x59041271, 0xa87c6603, 0x6653066d, 0x3d1c47bd, 0x62cda983
.word 0xde4ae5a9, 0x1fd13942, 0x51fd97a7, 0x9ac167f1, 0x07721f58, 0xdecb8a2d, 0xc3e8f7f2, 0xdbd8bd4f
.word 0xb7677119, 0x71f42f64, 0xe3603cb0, 0x5b947b51, 0x3f2f9cfb, 0xfff5e4b2, 0xe84128a3, 0xa10727b3
.word 0xcc978717, 0xb21114a4, 0x4203efab, 0xa0f14694, 0x8de4aeee, 0xf668f2dd, 0x31594528, 0xb3a1124e
.word 0x14619663, 0xe61aea83, 0xd01d5486, 0x92509bf4, 0x3c6e2305, 0x3ec7d27c, 0x3a266185, 0x489a192e
.word 0x05849ab5, 0x4bf4c5dd, 0x5391f5ef, 0x72361af1, 0x633115c7, 0x58c715e3, 0x210ac281, 0x7cba116d
.word 0x29d70fd0, 0x113bd1de, 0x19a109ba, 0xd59521fa, 0x8ead151d, 0xf373d01d, 0x4c5312a8, 0x707f9acb
.word 0xe81083d1, 0xd22ca55d, 0x1067d1e2, 0x298372c6, 0xee229b34, 0x36c5dc9d, 0x3944f13e, 0xaf56291a
.word 0xca2184a1, 0x20e77b29, 0x0448fa43, 0x1eb8c19d, 0xc79c42c5, 0xf6f89450, 0xf8383cfe, 0x2adaf9f8
.word 0x251d6be6, 0x9ce7d4dd, 0x4e794790, 0x0bc31987, 0x0ab7459c, 0xa8c7291f, 0x4e14e5f0, 0x7af3581a
.word 0x0f583c8d, 0xd57868e0, 0x5c38bc33, 0x2e316c65, 0x0991782a, 0xa2a44ce5, 0x68a4401e, 0xc112e02b
.word 0xd413634d, 0x8864f934, 0xc6cfb6ad, 0x219b9391, 0x70987129, 0xc83769fd, 0x68a5d320, 0x05038569
.word 0xa1208308, 0x638706f2, 0x1475d280, 0xfef8b605, 0xd8e570b1, 0x57c47dd9, 0x5ca74970, 0xbb3ccea8
.word 0xc2d09499, 0xffde0f4f, 0xbc63acde, 0x2cea0d8c, 0xe86a7c45, 0x23646b08, 0x84c1830d, 0xe47f3775
.word 0x702f3d7e, 0x63753e9b, 0xcb1a9932, 0xed6be4fd, 0x82927b3d, 0x7d0cd84b, 0x43158538, 0x4abe25a6
.word 0x4999c90b, 0x2f023186, 0x074ac39f, 0x2fbbed02, 0x0b15e587, 0x1f83b089, 0x6e6b4a9d, 0xaa7ebb00
.word 0xe1d06bdb, 0x0694fac3, 0xf0e9fedb, 0x0800f800, 0xe834b3ca, 0x8506c5f9, 0xdacd90c1, 0xbc636dee
.word 0xc281695a, 0xdda209c4, 0xda58831d, 0x62143ffd, 0xf1333a4e, 0xc4f5f5bb, 0xc7581a50, 0x563e0268
.word 0x25c7eaa1, 0x6b680b2e, 0x7415c9f7, 0x6186d3fd, 0x9f8e4e9e, 0x86636113, 0x615e39d6, 0x231c66e6
.word 0xe04282a3, 0xe2b767fe, 0xe2ce30d1, 0xc6c65f36, 0x4c9ccd45, 0x8d15e528, 0x0416a0f0, 0xa4cf83ff
.word 0xc9d9fb2b, 0xc1475159, 0xe130e9db, 0xb13f3b54, 0xd2957631, 0x6ff18726, 0x81358f56, 0x479b0150
.word 0xbdaf17fa, 0x9c05c4c8, 0xbebeae1a, 0xc986a1d0, 0xce3cb318, 0x566f0430, 0xeb1d932c, 0xbc9bc098
.word 0x71435b3f, 0x38dedcfc, 0xef786e41, 0xbf3ab51b, 0x5ceb0ff5, 0xe5c185d4, 0x84d6be15, 0x5806115e
.word 0xf809d893, 0x5e9faf90, 0xca26b8d4, 0x61cc6cb4, 0xbea549ef, 0xc41e9619, 0x03df154c, 0x027ac0ae
.word 0x7f070213, 0x2ede64e7, 0xeced520d, 0x744c06b0, 0xe20580d6, 0x6ed96f4d, 0xd228cb9d, 0xa17e42a3
.word 0xb9d7f172, 0xf7019c6f, 0x9a931fd9, 0x36bc69bd, 0xb53cf345, 0xe6b73f6d, 0x5d357a02, 0x1369c629
.word 0x3b62641e, 0x0680c777, 0xe0c172f8, 0x83323bfe, 0x4fbeb00e, 0xfaab2908, 0xb66b7f65, 0xa1eda1e2
.word 0x51c4eb9e, 0xf7b0e468, 0x29fbe185, 0xc8dfee96, 0x21ce1da2, 0x4602cf96, 0x6f0f864f, 0x1611925d
.word 0xa5c32446, 0x8320559d, 0xcb40c737, 0x5a512ceb, 0xc816aff4, 0x7b0ba816, 0xacb01037, 0xb581a53f
.word 0x13c24c2c, 0x68bbbdf6, 0xd091a1da, 0x034b7e34, 0x0079d463, 0x94f1c384, 0x9ca9b57f, 0xaa1b70e0
.word 0x82c412df, 0x201543d6, 0xb9a8523b, 0xb1023690, 0x5f6fa736, 0x8c59d6df, 0x950409be, 0x0693fdc9
.word 0xb1db1030, 0xcae7f546, 0x7570bc9b, 0x41b084fd, 0x5c3d1b18, 0x8fa4ef0e, 0x91f45d27, 0x35be21f2
.word 0x952f5c73, 0xd3f01a49, 0x275d3b1d, 0x6424b7bf, 0x443638f8, 0x56ce166c, 0x90d98581, 0x67832475
.word 0x3279957e, 0xd75b7f16, 0xb5f67c7f, 0x53356a24, 0x3ac53106, 0xe23d76e9, 0x3727519a, 0x7d60ecce
.word 0x88d3a764, 0xbdc601db, 0x48916c55, 0x2ea497a3, 0xc92cdd5d, 0x98a640dc, 0xa8e6e30b, 0xc8a13475
.word 0x46b03b9a, 0x9d593ebc, 0x0e466709, 0x592a8b8a, 0xc2212741, 0xb1ea956d, 0x76e20413, 0xf98a7604
.word 0xd44e819f, 0x52ac488a, 0xfc7405b6, 0x82b63cfe, 0x6dc2c11e, 0x9b9c5f4c, 0x223acf88, 0xc6a4cc68
.word 0xba26b737, 0x40b1d49c, 0xcea9e642, 0xd5eacb44, 0x685722d2, 0x8a184654, 0xc2f43971, 0x2eb393a4
.word 0xb386aa1c, 0x700f6350, 0x2288481c, 0xbe010ad1, 0x2bf0e3fa, 0x0467a7a4, 0xb031c35e, 0x6089843e
.word 0xb6e187e3, 0xf3a1f718, 0x03966e6d, 0x76a791a2, 0xd0f2dad9, 0x4b6aaac2, 0x017e6110, 0x2432d962
.word 0xcb8caf51, 0x0807f621, 0x5e22b263, 0x7d028b40, 0xb40c830e, 0xab6b41a7, 0xfdc0d451, 0x0b930072
.word 0x0d7f42b2, 0x7675992e, 0xb3494818, 0x65b48b29, 0x73788254, 0xae4d78f9, 0x31beb54b, 0xd2a49e2b
.word 0xad27c183, 0xedc714cb, 0x9951a925, 0xb439a729, 0xb92dd17d, 0x306e8f33, 0x5133030e, 0x9b503f53
.word 0x3baf03fe, 0xb532eb8b, 0x90b087be, 0x6e40d2bf, 0xe867aee5, 0xbd64f3c1, 0xed972e3c, 0x6390576c
.word 0x7025c932, 0x93bb1cab, 0xacfbb2bd, 0x31ad71bd, 0x0a311aad, 0x8dfffba0, 0xa1db0a50, 0x95604174
.word 0x436e58ad, 0xf0336b58, 0x86678e17, 0x51962887, 0x76790223, 0x0de114e1, 0x9fc6368f, 0xfa628893
.word 0xa3686d33, 0xc6629b39, 0xf8eba088, 0xbc4c58e1, 0xdf7ec081, 0x8deea18e, 0x33afc5e4, 0x2addb565
.word 0x35fb506f, 0xcf70e61e, 0xacd0d6d3, 0xf2c38dfa, 0xf2fe0f16, 0x171d6952, 0x1515c770, 0xaa4e3193
.word 0xd6dd0272, 0x37f203a0, 0x78ac5473, 0xb1e6e83c, 0x9a3e8c68, 0xcf347484, 0x26a9ab1e, 0xb8792e32
.word 0x79d02c7a, 0x7b334238, 0x725d937a, 0x675ac238, 0x1049992b, 0x7aeb9297, 0x73707579, 0x60cb1d67
.word 0x2297b5f5, 0xb86f5429, 0x90f6b5ff, 0x0dbac76a, 0xcec4f3ea, 0x0b41dae4, 0xb5798d71, 0x9f9bb214
.word 0x5e6feb4f, 0x5d4bc9c4, 0x97ed948c, 0x564a455c, 0xb4320690, 0x4f0327ce, 0xec9bd190, 0xc8a21bd8
.word 0x8573b925, 0x88e4619d, 0x055b189a, 0x3000759f, 0xd2f001fe, 0xeb709c5f, 0x1f8cbbd3, 0x308e4ad6
.word 0x7532a856, 0x948e01e0, 0xd62e8681, 0x5415efd2, 0x6e2c1e5f, 0xde228d3e, 0x44fbc765, 0xe7d20b7a
.word 0xbc1fd991, 0x759f8bf2, 0xb2cd8319, 0x52af8ad0, 0x62c9c8f2, 0xa3d9061c, 0xe197324d, 0x60ce73a7
.word 0xec595a0b, 0x6c9d036e, 0x76f09ed9, 0x6bdab92b, 0x59b2e02a, 0x98d3a963, 0x7e22053a, 0x851f1de7
.word 0x3f906490, 0xa0eb3aa3, 0x1bb49d4e, 0x554b6540, 0x46c4beb2, 0x7cefd838, 0xa4b19271, 0x4ab4d25a
.word 0x1387f3dd, 0x9dd6ef29, 0x527a323f, 0x84ff58ba, 0x3074e860, 0xbb32aa56, 0x88cd4401, 0xaeea6781
.word 0xcfca6dbc, 0xe3ce11db, 0x8e4fa6d6, 0xa74b0472
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x2, x13, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x19, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x19, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x19, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x19, x8, ecall_handler
                  li x8, 0x1
                  beq x19, x8, instr_fault_handler
                  li x8, 0x5
                  beq x19, x8, load_fault_handler
                  li x8, 0x7
                  beq x19, x8, store_fault_handler
                  li x8, 0xc
                  beq x19, x8, pt_fault_handler
                  li x8, 0xd
                  beq x19, x8, pt_fault_handler
                  li x8, 0xf
                  beq x19, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

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
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x13, x2, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x2, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x2, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x13, x2, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x13, x2, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x13, x2, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
