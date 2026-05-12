.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x10, h0_start
jalr x0, x10, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 1
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x1
                  li x1, 0xb
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x2359249a
                  li x5, 0xf7ce181f
                  li x6, 0xb
                  li x8, 0x80000000
                  li x9, 0xd5f2cee
                  li x10, 0x7a9f756f
                  li x11, 0x80000000
                  li x12, 0xb
                  li x13, 0x2ca84882
                  li x14, 0x894856a3
                  li x15, 0xf760b332
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0xfdb5d3df
                  li x20, 0x80000000
                  li x21, 0x9fd5c5b0
                  li x22, 0x981755fc
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x24c035c8
                  li x26, 0x1bf54215
                  li x27, 0xe70bbd8
                  li x29, 0x80000000
                  li x30, 0xe61dfb82
                  li x31, 0x0
                  la x7, user_stack_end
main:             xor          s1, a3, s1
                  srli         s10, gp, 30
                  la           t0, sub_1
                  sltu         s5, s5, t1
                  andi         s9, a1, -2002
                  add          s10, a5, sp
                  addi         t0, t0, 516
                  srl          a3, a0, t2
                  and          sp, t6, t0
                  bgeu         t0, a5, main_j2 #branch to jump instr
                  sltu         a3, t1, s9
main_j2:          jalr         ra, t0, -515 #jump main -> sub_1
                  la           t4, sub_3
                  srai         a6, t5, 11
                  addi         a5, a0, -514
                  sltiu        s6, a4, 880
                  addi         t4, t4, 405
                  auipc        gp, 693849
                  addi         t0, ra, -535
                  slt          zero, ra, a6
                  sll          a2, a7, t3
                  slli         s8, t1, 22
                  sra          s11, s6, a0
                  bge          a3, s9, main_j4 #branch to jump instr
                  andi         ra, s3, 1527
main_j4:          jalr         ra, t4, -404 #jump main -> sub_3
                  la           s10, sub_4
                  sub          zero, s9, a2
                  srl          s5, a4, s5
                  addi         s10, s10, 91
                  addi         s6, t5, 1009
                  sltu         a5, tp, s6
                  srai         s1, t1, 22
                  srl          gp, s4, s11
                  slt          a5, s7, s4
main_j5:          jalr         ra, s10, -91 #jump main -> sub_4
                  addi         tp, zero, 9 #init loop 1 counter
                  sltiu        zero, s11, 1156
                  slti         s7, s8, 261
                  addi         s4, zero, 6 #init loop 1 limit
main_0_1_t:       or           a4, a5, gp
                  add          a6, a7, s4
                  sltu         s5, s9, ra
                  addi         tp, tp, -5 #update loop 1 counter
                  addi         a1, zero, 0 #init loop 0 counter
                  addi         s9, zero, -8 #init loop 0 limit
                  sub          s6, s6, s1
main_0_0_t:       slt          s10, t0, s7
                  addi         a1, a1, -8 #update loop 0 counter
                  nop
                  beq          a1, s9, main_0_0_t #branch for loop 0
                  sltiu        s7, s2, 1042
                  auipc        a7, 1018112
                  bgeu         tp, s4, main_0_1_t #branch for loop 1
                  sra          ra, s5, zero
                  addi         s8, zero, 10 #init loop 1 counter
                  nop
                  addi         a7, zero, 16 #init loop 1 limit
main_1_1_t:       lui          s7, 713441
                  and          zero, a6, t6
                  sra          gp, s0, a1
                  addi         a6, s6, 1803
                  lui          t6, 738565
                  sub          tp, s1, s2
                  addi         s10, a0, -771
                  addi         s8, s8, 3 #update loop 1 counter
                  slti         s10, a3, -1410
                  or           sp, t2, s1
                  addi         s0, zero, 7 #init loop 0 counter
                  sltu         t4, t0, s0
                  addi         t0, zero, -5 #init loop 0 limit
                  srai         s1, a1, 24
                  addi         t6, s7, -1411
                  slli         s7, a6, 19
main_1_0_t:       or           sp, a2, s11
                  auipc        ra, 650587
                  addi         s0, s0, -6 #update loop 0 counter
                  bne          s0, t0, main_1_0_t #branch for loop 0
                  addi         a5, zero, 1725
                  bne          s8, a7, main_1_1_t #branch for loop 1
                  srli         s6, a1, 7
                  sub          zero, s0, a2
                  add          a1, s6, s8
                  addi         t1, t6, 969
                  sltiu        a6, s8, 362
                  andi         s4, s5, 678
                  xori         ra, s9, 155
                  sra          s10, a3, s4
                  beq          t1, gp, 13f
                  add          s7, a5, s0
                  la           t5, sub_2
                  and          s7, s3, s8
                  sltiu        a3, t5, -1179
                  nop
                  sub          s0, a0, a1
                  addi         t5, t5, 594
                  and          a3, t5, a2
                  slti         s5, s0, 2019
                  lui          t0, 445316
main_j1:          jalr         ra, t5, -594 #jump main -> sub_2
                  srai         s0, t5, 26
                  sltiu        t4, s7, -1519
                  slt          a7, s9, a4
                  sll          t0, a4, a4
13:               bge          a1, ra, 25f
                  lui          a6, 884792
                  sra          s10, t0, s2
                  lui          s5, 935478
                  sub          a5, a5, ra
                  addi         s6, t0, 258
                  sra          t6, s4, a5
                  sra          a5, s0, t5
                  srl          a4, sp, a7
                  sra          tp, t3, gp
                  bgeu         gp, a6, 29f
                  auipc        a1, 446238
25:               sltu         a7, t5, gp
                  add          s10, s5, a2
                  nop
                  bltu         t1, ra, 29f
29:               lui          s4, 252761
                  and          s10, gp, a1
                  beq          s11, s8, 34f
                  sub          s9, a4, s2
                  ori          gp, a1, -628
34:               or           ra, s8, a1
                  bne          s0, s5, 55f
                  srli         s2, a0, 27
                  blt          zero, a6, 51f
                  srli         s10, ra, 19
                  slti         tp, t5, 1740
                  xor          s5, t4, s8
                  xori         a2, t5, 114
                  addi         s6, tp, 425
                  ori          gp, s5, 90
                  srli         a3, zero, 10
                  bge          s1, s4, 46f
46:               auipc        s3, 353255
                  sltiu        s7, s11, -1464
                  xori         t6, t1, -1837
                  ori          s2, s4, 129
                  slt          t0, gp, s9
51:               bne          s1, t6, 56f
                  slti         s8, a4, -1795
                  srai         a7, s7, 10
                  addi         t5, s3, -485
55:               nop
56:               slli         a4, a1, 15
                  sltu         s8, s2, s9
                  bge          a1, a0, 70f
                  bge          sp, s8, 62f
                  sltu         a2, s9, t4
                  ori          t1, zero, -157
62:               bgeu         a5, ra, 82f
                  add          a4, a3, sp
                  ori          t5, s4, 252
                  add          s11, a2, s5
                  auipc        zero, 885253
                  sll          s10, s8, s4
                  add          t1, s7, a2
                  sltiu        gp, s8, 146
                  srai         s6, a3, 10
                  sltiu        gp, a6, 1519
                  nop
                  la           t4, sub_4
                  lui          gp, 274501
                  slt          t1, s0, a7
                  addi         t4, t4, 587
                  slt          t6, a7, a5
                  xor          a1, a7, s0
                  xor          a5, a3, t0
                  slli         t5, s2, 15
main_j3:          jalr         ra, t4, -587 #jump main -> sub_4
70:               xor          t5, a7, s9
                  bge          s9, a0, 74f
                  andi         s9, t5, -1101
                  bltu         s1, a2, 82f
74:               slt          s6, a7, s2
                  srai         a6, t4, 27
                  sll          a2, s3, a3
                  sra          s1, t4, a0
                  ori          t5, t6, 674
                  slti         a1, s4, 432
                  xori         zero, s3, 1133
                  sltiu        sp, t5, -34
82:               lui          a1, 468170
                  xori         t1, s0, -852
                  and          t4, a4, t6
                  srai         a5, s0, 7
                  bne          s2, a0, 102f
                  sltu         t1, s7, a6
                  sltiu        t4, t3, -1688
                  beq          s11, s8, 108f
                  srli         tp, gp, 5
                  auipc        s2, 700830
                  or           t1, s8, ra
                  add          t0, s3, t2
                  addi         gp, t4, 1564
                  sll          s3, zero, a6
                  slt          tp, a1, a5
                  ori          s8, t5, -2048
                  sra          s4, s2, s11
                  srl          a6, tp, t5
                  srli         s1, a5, 14
                  add          ra, s0, t1
102:              bgeu         s6, t4, 105f
                  and          t6, s10, s8
                  bltu         a2, t2, 113f
105:              sub          t0, tp, s7
                  and          tp, a7, s5
                  srai         s9, t3, 5
108:              or           s2, t2, sp
                  and          sp, t6, gp
                  srai         tp, s4, 11
                  srli         a2, a6, 18
                  sll          s6, s7, s1
113:              sltiu        s10, a5, 693
                  slli         a6, s0, 3
                  sltiu        a3, a7, -606
                  la x10, test_done
                  jalr x0, x10, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bltu         s0, zero, sub_1_stack_p
                  add          sp, a7, a5
sub_1_stack_p:    addi         t2, t2, -20
                  srl          a5, t4, s0
                  sw           ra, 4(t2)
                  add          s5, ra, a4
                  addi         s8, zero, -4 #init loop 0 counter
                  and          a4, s2, a2
                  lui          s2, 940201
                  add          a2, a2, a4
                  srli         s2, t0, 29
                  sltu         a5, a5, s2
                  xori         t4, a1, -1215
                  addi         t6, zero, -20 #init loop 0 limit
                  sub          t1, s5, t3
                  srl          a5, s9, a2
                  slti         s5, t2, 602
                  ori          a2, t6, 900
                  auipc        s7, 578837
                  slli         t0, s1, 24
                  xori         s0, a5, 353
sub_1_15_0_t:     or           t4, a4, a2
                  slti         t1, s6, -1196
                  sltu         t0, a6, a6
                  addi         s8, s8, -8 #update loop 0 counter
                  srai         ra, a0, 1
                  beq          s8, t6, sub_1_15_0_t #branch for loop 0
                  slli         a6, a5, 2
                  addi         s6, zero, 8 #init loop 1 counter
                  addi         s0, zero, 8 #init loop 1 limit
sub_1_9_1_t:      addi         s9, t4, 716
                  addi         s6, s6, -7 #update loop 1 counter
                  addi         gp, zero, 9 #init loop 0 counter
                  sll          sp, t4, a7
                  addi         s1, zero, 8 #init loop 0 limit
sub_1_9_0_t:      sltiu        tp, a2, 1164
                  addi         gp, gp, -6 #update loop 0 counter
                  bgeu         gp, s1, sub_1_9_0_t #branch for loop 0
                  bgeu         s6, s0, sub_1_9_1_t #branch for loop 1
                  lui          t4, 336508
                  addi         a3, zero, -9 #init loop 0 counter
                  or           s11, t2, sp
                  slli         a5, s9, 8
                  addi         s3, zero, 20 #init loop 0 limit
sub_1_12_0_t:     auipc        s11, 665085
                  xor          a4, a5, a5
                  addi         a3, a3, 1 #update loop 0 counter
                  xor          s9, sp, a6
                  beq          a3, s3, sub_1_12_0_t #branch for loop 0
                  srl          t0, a3, t3
                  addi         t1, zero, -10 #init loop 1 counter
                  addi         s7, zero, 8 #init loop 1 limit
                  and          t4, s8, s0
                  and          gp, zero, a4
sub_1_11_1_t:     xor          ra, zero, s4
                  auipc        s11, 285630
                  addi         t1, t1, 6 #update loop 1 counter
                  addi         t5, zero, 9 #init loop 0 counter
                  sub          gp, t4, s11
                  andi         s10, s6, 338
                  srl          zero, s7, a1
                  addi         s8, zero, -8 #init loop 0 limit
sub_1_11_0_t:     and          s2, a5, s10
                  add          a7, gp, t0
                  addi         t5, t5, -4 #update loop 0 counter
                  bge          t5, s8, sub_1_11_0_t #branch for loop 0
                  ori          s10, a2, -1776
                  beq          t1, s7, sub_1_11_1_t #branch for loop 1
                  or           tp, t4, a1
                  addi         s10, zero, 2 #init loop 1 counter
                  addi         a7, zero, 10 #init loop 1 limit
sub_1_1_1_t:      slt          s5, a6, t3
                  andi         s0, s9, -1098
                  addi         s10, s10, 8 #update loop 1 counter
                  slli         t6, s4, 20
                  addi         t0, zero, 10 #init loop 0 counter
                  addi         t1, zero, 15 #init loop 0 limit
                  sltiu        a3, gp, -188
sub_1_1_0_t:      slti         a5, a4, 1616
                  addi         t0, t0, 4 #update loop 0 counter
                  xor          a2, s10, s6
                  blt          t0, t1, sub_1_1_0_t #branch for loop 0
                  beq          s10, a7, sub_1_1_1_t #branch for loop 1
                  and          s6, a2, a3
                  addi         s3, zero, -3 #init loop 1 counter
                  or           t1, t3, a7
                  addi         t5, zero, 3 #init loop 1 limit
                  slli         a3, s2, 24
sub_1_6_1_t:      slt          a7, a1, s3
                  addi         s3, s3, 9 #update loop 1 counter
                  slt          tp, zero, s8
                  xori         a1, a4, -1350
                  addi         s2, zero, 5 #init loop 0 counter
                  srl          a5, s5, s10
                  add          s7, s2, t0
                  addi         a4, zero, 13 #init loop 0 limit
                  srli         s7, t1, 27
sub_1_6_0_t:      sltu         s6, s11, a2
                  sltiu        s1, a5, 1719
                  addi         s2, s2, 10 #update loop 0 counter
                  add          a6, t6, t6
                  sra          zero, s1, s3
                  blt          s2, a4, sub_1_6_0_t #branch for loop 0
                  ori          s7, t1, -1952
                  srli         zero, s7, 3
                  xori         s6, s11, -466
                  add          a3, t2, s0
                  sll          s1, s1, t5
                  sll          a1, s4, t6
                  and          a6, ra, t4
                  srl          a3, s4, s9
                  sltiu        a2, s8, -360
                  blt          s3, t5, sub_1_6_1_t #branch for loop 1
                  slli         gp, a3, 28
                  addi         sp, zero, 8 #init loop 1 counter
                  sub          a6, a2, s4
                  xor          a2, s10, a6
                  add          s5, t1, a4
                  srl          a5, gp, t4
                  addi         s0, zero, -4 #init loop 1 limit
                  and          s7, a5, zero
                  srl          s4, s9, t1
sub_1_3_1_t:      ori          a2, s9, 367
                  xor          t6, t2, a6
                  slt          s5, t4, s0
                  addi         sp, sp, -10 #update loop 1 counter
                  xori         t6, t0, 1392
                  addi         ra, zero, -3 #init loop 0 counter
                  addi         s8, zero, 3 #init loop 0 limit
                  add          a2, t0, s2
sub_1_3_0_t:      sub          a2, t3, a1
                  andi         a3, t4, 2002
                  addi         ra, ra, 2 #update loop 0 counter
                  addi         s2, t0, 912
                  beq          ra, s8, sub_1_3_0_t #branch for loop 0
                  auipc        s4, 10348
                  bge          sp, s0, sub_1_3_1_t #branch for loop 1
                  sra          zero, s3, t5
                  addi         t6, zero, 9 #init loop 0 counter
                  addi         gp, t0, -1501
                  addi         a1, s9, -370
                  addi         s2, zero, -5 #init loop 0 limit
                  slt          t0, t5, s1
sub_1_17_0_t:     slti         zero, s2, -87
                  xor          a3, a3, t0
                  addi         t6, t6, -5 #update loop 0 counter
                  sltiu        a5, s2, 1538
                  bge          t6, s2, sub_1_17_0_t #branch for loop 0
                  srli         s7, a1, 28
                  addi         s5, zero, 3 #init loop 0 counter
                  sll          ra, a1, t2
                  sll          a6, t4, t2
                  auipc        s7, 684
                  addi         s1, zero, 7 #init loop 0 limit
                  sub          t4, t6, a1
                  lui          s10, 631109
                  srl          s8, t1, s2
sub_1_13_0_t:     addi         s4, a2, -835
                  addi         s5, s5, 1 #update loop 0 counter
                  nop
                  srai         a7, gp, 27
                  slti         t5, a6, 959
                  xori         s7, ra, 938
                  bne          s5, s1, sub_1_13_0_t #branch for loop 0
                  sra          a6, t4, t6
                  addi         a7, zero, 8 #init loop 0 counter
                  add          s5, ra, gp
                  nop
                  nop
                  sltiu        s4, s3, -1681
                  or           a2, s2, s6
                  nop
                  ori          s5, s6, -1372
                  addi         tp, zero, 7 #init loop 0 limit
sub_1_18_0_t:     nop
                  srai         a4, sp, 20
                  addi         a4, s3, -1009
                  slli         s9, s8, 25
                  addi         a7, a7, -6 #update loop 0 counter
                  auipc        a6, 266159
                  xori         s2, t0, 103
                  srai         s2, a0, 3
                  add          a6, a5, s10
                  and          s1, t4, gp
                  srli         s9, a0, 21
                  bge          a7, tp, sub_1_18_0_t #branch for loop 0
                  sll          s10, tp, s6
                  addi         t1, zero, 8 #init loop 0 counter
                  xor          s7, ra, t4
                  xori         a4, s9, 113
                  addi         a2, zero, 5 #init loop 0 limit
                  sra          s1, gp, s9
sub_1_14_0_t:     add          s6, t1, s1
                  ori          s5, t5, -223
                  sra          a1, a1, tp
                  ori          s11, t1, -766
                  auipc        ra, 487504
                  lui          a6, 763520
                  addi         t1, t1, -1 #update loop 0 counter
                  xor          a4, t0, s10
                  slti         s3, s7, 328
                  srai         t0, a2, 15
                  sub          s5, a6, s4
                  bgeu         t1, a2, sub_1_14_0_t #branch for loop 0
                  sub          s8, s8, a4
                  addi         s7, zero, -2 #init loop 0 counter
                  nop
                  slti         a5, s3, 1709
                  addi         s10, zero, 1 #init loop 0 limit
                  ori          t0, s5, -1120
sub_1_4_0_t:      ori          s4, a7, -1402
                  addi         s7, s7, 3 #update loop 0 counter
                  xor          a6, s7, t4
                  or           s6, a0, s4
                  ori          t0, sp, -1192
                  beq          s7, s10, sub_1_4_0_t #branch for loop 0
                  and          t4, s1, a2
                  addi         s2, zero, -4 #init loop 0 counter
                  xor          gp, s5, s6
                  srli         a4, a7, 7
                  andi         zero, a3, -1588
                  nop
                  addi         s3, zero, -13 #init loop 0 limit
                  xor          a2, s9, s6
sub_1_7_0_t:      or           ra, s10, s10
                  sltu         s8, a4, s7
                  add          s9, t1, s2
                  xor          s10, t6, s3
                  slli         a2, s2, 0
                  addi         t1, zero, 278
                  sub          t6, t3, s4
                  auipc        t4, 510897
                  addi         s2, s2, -7 #update loop 0 counter
                  add          a6, a0, a7
                  auipc        zero, 87261
                  lui          s7, 770485
                  xori         s9, s11, -867
                  lui          ra, 581889
                  nop
                  add          a7, t5, a7
                  slti         a3, sp, 1355
                  sltu         ra, t5, tp
                  bge          s2, s3, sub_1_7_0_t #branch for loop 0
                  slli         s9, s1, 15
                  addi         tp, zero, 10 #init loop 0 counter
                  addi         t1, zero, -14 #init loop 0 limit
                  addi         t5, t1, -782
sub_1_10_0_t:     sltiu        ra, t6, 476
                  andi         zero, s7, 1672
                  sltiu        a4, t5, -956
                  addi         tp, tp, -4 #update loop 0 counter
                  slt          a7, s0, a3
                  andi         s5, t4, -987
                  slli         t4, t4, 6
                  srai         s2, s2, 24
                  bne          tp, t1, sub_1_10_0_t #branch for loop 0
                  sll          a4, a5, s3
                  addi         a6, zero, 3 #init loop 0 counter
                  sra          sp, gp, a1
                  xori         s2, t2, -627
                  sll          s1, s8, s3
                  ori          s7, s5, -650
                  sltiu        s11, s2, 1611
                  addi         s4, zero, 10 #init loop 0 limit
                  sra          a4, s8, s2
                  srai         a2, s10, 12
sub_1_2_0_t:      and          s2, a3, s6
                  xori         a7, s0, -1200
                  addi         a6, a6, 10 #update loop 0 counter
                  add          a3, t2, a5
                  srai         a4, t4, 5
                  srl          a7, zero, zero
                  ori          s5, ra, 1314
                  bltu         a6, s4, sub_1_2_0_t #branch for loop 0
                  srli         t1, a7, 28
                  add          s3, t2, s2
                  bltu         a0, s10, 9f
                  beq          sp, t5, 18f
                  and          s1, t1, t1
                  beq          s9, gp, 21f
                  xori         ra, t4, 767
                  bge          a3, t5, 23f
                  or           ra, t1, s10
                  ori          s3, t1, 421
9:                sltiu        a4, s3, 230
                  lui          t6, 986283
                  sub          gp, a5, s3
                  or           a6, gp, s11
                  addi         s9, zero, 6 #init loop 0 counter
                  addi         t0, zero, -3 #init loop 0 limit
                  and          s3, a0, s9
                  sll          sp, s9, a4
                  or           t6, t2, sp
                  or           t1, ra, a6
sub_1_8_0_t:      lui          s4, 436716
                  addi         s9, s9, -9 #update loop 0 counter
                  andi         s8, a0, 575
                  slti         a2, a5, 310
                  sub          tp, s11, s9
                  slli         a6, t0, 30
                  slti         tp, t4, -1659
                  andi         s3, a2, -1448
                  addi         gp, s2, 379
                  sll          a6, a6, s7
                  bne          s9, t0, sub_1_8_0_t #branch for loop 0
                  nop
                  bge          s10, t4, 14f
14:               and          s10, a6, s5
                  sub          a3, a5, s6
                  slti         s8, t4, -849
                  sub          s11, t2, s8
18:               sub          s5, a3, t4
                  srai         a6, zero, 23
                  lui          t0, 643340
21:               lui          a6, 607198
                  sub          a7, ra, s9
23:               nop
                  andi         gp, s4, -186
                  andi         ra, ra, -958
                  blt          tp, s10, 42f
                  bge          a3, zero, 46f
                  srli         s8, tp, 26
                  ori          t1, gp, 1262
                  lui          a6, 128909
                  sltiu        s4, a3, -1953
                  add          sp, t5, s1
                  slt          s1, s11, a3
                  sra          a1, zero, t2
                  sltu         ra, t0, t6
                  beq          s10, t0, 53f
                  add          a6, t1, s0
                  bne          t6, a1, 52f
                  sub          s5, t5, tp
                  sll          zero, a1, gp
                  srli         t1, s11, 1
42:               add          t6, s11, s0
                  srli         a7, gp, 22
                  lui          s6, 428656
                  sll          t1, a5, t0
46:               bltu         t5, a0, 60f
                  srl          a3, t5, a5
                  addi         a5, a4, 1811
                  or           t1, a6, t4
                  sra          s5, s4, gp
                  beq          a5, zero, 69f
52:               sll          s11, s6, a1
53:               slli         s1, t0, 13
                  xori         t0, s9, -551
                  sltiu        s8, s8, -301
                  andi         s7, zero, 162
                  slti         tp, a1, 795
                  beq          s2, s11, 65f
                  srli         s6, a7, 11
60:               addi         t1, s11, -1351
                  or           ra, t3, t3
                  bltu         s1, sp, 81f
                  xori         a7, t3, 1952
                  xori         zero, s3, -361
65:               sub          a5, s4, a3
                  beq          s4, a0, 81f
                  or           ra, a1, s6
                  beq          s8, a0, 72f
69:               bltu         a1, s5, 78f
                  add          s4, s4, a7
                  slli         tp, a1, 3
72:               slti         a2, s0, 111
                  or           t5, t1, a0
                  add          t4, t5, s5
                  slt          ra, a1, a4
                  sll          s9, tp, s1
                  slt          t5, a6, a5
78:               and          t4, gp, a2
                  slli         s4, tp, 4
                  beq          s10, a4, 92f
81:               addi         s7, s5, -1509
                  and          a3, t2, s10
                  slti         s9, gp, -1421
                  xor          s11, t1, s2
                  sltiu        s5, a2, 2029
                  lui          s9, 201658
                  ori          ra, s1, -218
                  sra          ra, gp, s11
                  slti         s9, a4, -474
                  or           s4, a2, t6
                  srl          t5, s10, s5
92:               sra          t1, sp, s2
                  bltu         t4, a0, 98f
                  sltiu        s3, s10, 193
                  andi         a6, sp, 603
                  srli         s2, ra, 6
                  srli         a2, s11, 3
98:               nop
                  nop
                  sra          t1, s5, t2
                  srl          s10, s9, s3
                  bgeu         s3, a5, 122f
                  sltiu        a1, s10, 2006
                  bge          s9, t4, 124f
                  ori          s1, a0, 1742
                  slli         s10, sp, 12
                  slti         a4, s1, -2011
                  sltu         t4, t4, t2
                  slti         gp, a7, 616
                  add          t1, gp, t3
                  auipc        ra, 249377
                  bgeu         s11, a4, 123f
                  beq          a7, s3, 133f
                  sltu         zero, sp, zero
                  andi         s0, a7, 50
                  beq          a7, a7, 130f
                  lui          a4, 650997
                  ori          s9, a4, -764
                  srai         t4, t0, 23
                  sll          a2, s2, a3
                  xori         a3, s1, 810
122:              nop
123:              xor          s2, s9, s0
124:              xori         tp, s8, 1450
                  beq          s6, s6, 129f
                  srl          ra, s1, s4
                  lui          a5, 994681
                  beq          a4, t0, 136f
129:              xor          a1, gp, gp
130:              slli         t0, s9, 18
                  lui          s6, 875894
                  slli         s10, ra, 2
133:              bgeu         ra, tp, 136f
                  srl          ra, s11, a5
                  bne          ra, s4, 136f
136:              bgeu         a4, s9, 146f
                  sltiu        t4, a5, 1221
                  srl          s11, t3, t5
                  ori          s8, t5, 23
                  ori          t1, s6, -462
                  sltu         s10, a1, t1
                  nop
                  andi         zero, tp, -1505
                  blt          s3, t5, 158f
                  slti         a1, zero, 964
146:              and          s9, s4, sp
                  xori         s7, s8, -1841
                  xor          s10, a2, t6
                  sltu         t5, a0, a0
                  or           t6, t1, t3
                  auipc        s4, 462852
                  srli         sp, ra, 2
                  srli         a3, s10, 30
                  add          sp, t4, t2
                  slti         t5, a2, 225
                  and          s3, t3, a2
                  lui          zero, 237148
158:              ori          zero, s10, 495
                  add          sp, s8, s2
                  add          t5, s4, s4
                  bltu         s2, s6, 174f
                  xor          gp, t3, a3
                  beq          s9, s8, 180f
                  addi         t6, tp, 332
                  addi         s11, a4, 40
                  sra          a4, s3, a2
                  ori          s3, s10, -1182
                  bgeu         s7, s0, 188f
                  bge          tp, t4, 180f
                  addi         a4, s7, 605
                  sltiu        a7, s7, 282
                  nop
                  ori          ra, a3, 1481
174:              auipc        zero, 770438
                  nop
                  slli         ra, t2, 16
                  sltiu        sp, a6, -1970
                  sll          t6, t6, s3
                  bne          s10, s2, 192f
180:              sub          s6, s8, gp
                  sltiu        s4, s3, 1289
                  srai         t4, t4, 4
                  nop
                  auipc        ra, 408806
                  srai         ra, s0, 12
                  srli         a5, a7, 12
                  and          sp, t0, t4
188:              blt          t2, a2, 207f
                  bltu         s10, a6, 209f
                  andi         a1, t0, -1288
                  addi         ra, s0, 1805
192:              bne          s3, s0, 196f
                  sll          t1, t2, t2
                  andi         s0, ra, 25
                  or           t5, s4, sp
196:              srai         a6, s4, 3
                  addi         sp, s1, 259
                  nop
                  blt          s3, t3, 200f
200:              ori          t0, s0, 1741
                  slli         s0, a1, 25
                  xori         s4, t1, -1055
                  slt          ra, s9, s9
                  addi         s0, t1, 1686
                  or           sp, t1, s3
                  bge          s4, s7, 210f
207:              nop
                  srli         a5, s8, 13
209:              nop
210:              lui          a4, 233504
                  srli         s6, t0, 19
                  sltiu        ra, gp, -1122
                  bltu         s4, s4, 221f
                  sltu         s10, a3, t6
                  and          s5, zero, a3
                  sltu         s7, zero, t4
                  sltiu        s7, a4, -1772
                  bge          sp, a3, 232f
                  sltu         t1, s0, s11
                  bgeu         a5, s2, 237f
221:              slli         t4, t0, 31
                  slti         t0, a5, 1128
                  xor          a4, s1, s0
                  slt          a6, zero, a4
                  sub          a1, t0, ra
                  sll          s0, s11, tp
                  auipc        gp, 624133
                  add          t1, s9, s1
                  xor          a5, tp, s7
                  srli         s4, s8, 6
                  slti         s2, t0, 1584
232:              xor          a2, a4, zero
                  or           s5, t4, a2
                  srli         s4, sp, 19
                  xori         a5, t1, -917
                  srli         t0, t6, 15
237:              beq          a1, a0, 247f
                  bge          s4, sp, 253f
                  srl          s11, s9, a0
                  slt          s3, a0, a3
                  blt          s10, s9, 261f
                  blt          a5, t2, 245f
                  blt          t3, t0, 259f
                  slli         s3, s2, 9
245:              srl          s9, tp, t0
                  sra          s2, a1, s3
247:              and          a5, a2, s1
                  ori          s4, s0, -440
                  slt          a4, s9, t5
                  bne          a2, s6, 262f
                  slt          a5, zero, a6
                  sra          s4, t3, a7
253:              sltu         ra, t3, s3
                  andi         a5, a1, -705
                  andi         s10, t5, 694
                  slti         t6, s7, -53
                  addi         t4, s2, -2042
                  bgeu         s4, t1, 259f
259:              sra          zero, a2, a1
                  srli         s5, a2, 2
261:              and          s11, gp, s11
262:              lui          t1, 179126
                  srl          a4, tp, zero
                  andi         sp, s3, 986
                  srl          s6, s5, s2
                  sltu         s10, s1, sp
                  slti         s10, zero, -721
                  andi         s10, t5, -316
                  bltu         s10, a7, 278f
                  sltu         zero, s5, a7
                  srli         t6, s5, 24
                  add          t4, a7, s2
                  ori          gp, t2, 1699
                  slti         s4, t0, -534
                  bne          a4, a3, 283f
                  or           s8, gp, s8
                  beq          sp, ra, 294f
278:              bgeu         s6, a1, 292f
                  bge          a4, s3, 293f
                  bge          s11, s1, 294f
                  srli         a5, a7, 7
                  and          t1, a4, s1
283:              slti         a3, s9, 663
                  xor          a5, a5, zero
                  or           s3, zero, s4
                  xor          ra, t5, a6
                  addi         s11, a3, 164
                  beq          sp, s4, 306f
                  bltu         s0, s5, 305f
                  sltiu        gp, a3, -471
                  srl          s8, gp, s6
292:              sra          gp, s10, a0
293:              sra          t4, s7, a4
294:              blt          s7, a6, 301f
                  bltu         s4, a0, 314f
                  xori         a4, s11, -449
                  bne          s1, zero, 302f
                  auipc        s8, 994125
                  beq          t2, s7, 304f
                  srli         s3, s3, 26
301:              nop
302:              slli         zero, t1, 22
                  bltu         s10, tp, 307f
304:              srli         t0, a6, 24
305:              andi         a3, t5, 1735
306:              xor          t6, ra, t0
307:              bltu         t5, sp, 317f
                  sra          a2, ra, s5
                  andi         s5, s0, -860
                  beq          sp, a4, 330f
                  xor          t1, ra, tp
                  add          s1, zero, s4
                  sltiu        tp, a2, -1884
314:              andi         gp, a6, -1961
                  srl          s7, tp, s7
                  nop
317:              bgeu         a7, a7, 329f
                  sltu         tp, s10, s7
                  addi         s11, a2, 847
                  auipc        s1, 694230
                  xor          a6, s2, t3
                  bltu         a5, a7, 335f
                  add          sp, a5, s11
                  sltu         t6, sp, s8
                  sltiu        s5, s7, 1455
                  sltu         t4, gp, a2
                  srai         gp, t6, 29
                  auipc        s5, 860220
329:              beq          s5, sp, 337f
330:              srli         s0, s0, 16
                  bltu         s5, a4, 342f
                  bltu         a1, a7, 352f
                  xori         s4, a4, -1777
                  bge          gp, t2, 335f
335:              slt          zero, a4, s4
                  slli         a4, s9, 8
337:              ori          a3, t6, -1046
                  or           ra, t4, a0
                  bge          t1, ra, 353f
                  srai         t4, s2, 21
                  xor          s5, gp, s5
342:              xor          sp, s6, gp
                  sltiu        s10, a7, -970
                  add          t1, s2, t0
                  bne          t6, tp, 364f
                  andi         t6, s9, 939
                  sltu         a2, a6, t5
                  or           a4, zero, a1
                  and          s0, zero, sp
                  srli         s6, t2, 12
                  srli         a7, s8, 28
352:              sub          a7, t1, t3
353:              and          s10, s4, a0
                  nop
                  slti         t4, s1, -1342
                  slli         a1, s3, 14
                  blt          s0, s3, 373f
                  slli         a4, gp, 24
                  srai         s8, t6, 31
                  and          s10, tp, t0
                  blt          s11, s7, 375f
                  slli         a2, t0, 15
                  slli         s5, a7, 0
364:              bltu         t0, s8, 378f
                  xor          a6, t2, t6
                  xor          s3, a2, s0
                  bltu         sp, t0, 385f
                  sll          a6, a1, sp
                  slti         a2, t0, 728
                  nop
                  slt          s9, t2, t3
                  slt          t6, tp, s7
373:              sll          s4, s10, a6
                  bne          t5, a4, 393f
375:              blt          a2, zero, 383f
                  sub          ra, a1, t4
                  xor          s11, gp, t0
378:              srai         s11, s3, 0
                  or           a6, a7, s11
                  bltu         a1, s8, 395f
                  slt          s3, t0, t5
                  srai         s10, a1, 19
383:              beq          a1, s6, 384f
384:              add          a2, s2, s2
385:              srl          zero, a7, t3
                  bgeu         t2, s6, 393f
                  sltu         a5, sp, a3
                  slt          t1, a4, a1
                  bgeu         s8, s10, 393f
                  addi         s1, zero, -4 #init loop 1 counter
                  addi         t5, zero, 17 #init loop 1 limit
                  sltu         s8, zero, t6
sub_1_0_1_t:      sub          a7, t3, t6
                  addi         s1, s1, 1 #update loop 1 counter
                  addi         gp, zero, 8 #init loop 0 counter
                  addi         a6, zero, 1 #init loop 0 limit
sub_1_0_0_t:      sltiu        s7, a7, 691
                  addi         gp, gp, -2 #update loop 0 counter
                  srli         s7, s11, 12
                  sltu         tp, t0, ra
                  bge          gp, a6, sub_1_0_0_t #branch for loop 0
                  slti         s8, t5, 1175
                  bltu         s1, t5, sub_1_0_1_t #branch for loop 1
                  srl          s8, a2, a6
                  sltiu        s2, s4, 825
                  slli         tp, s10, 15
                  srli         t1, a7, 17
393:              xor          a3, t5, a6
                  bge          s2, s5, 403f
395:              add          s7, t4, s0
                  addi         ra, t0, 1051
                  nop
                  bne          s3, t3, 401f
                  slti         t1, t1, 789
                  bltu         a6, tp, 417f
401:              bne          s0, a5, 415f
                  lui          s10, 625304
403:              sltu         tp, sp, sp
                  beq          t5, s2, 421f
                  addi         a6, s9, -1101
                  nop
                  bltu         a5, s5, 424f
                  slli         a1, a5, 12
                  srai         s9, t3, 7
                  addi         s0, s2, -1412
                  srai         ra, a2, 10
                  bltu         t0, zero, 428f
                  ori          zero, a4, 808
                  sra          s9, s7, s5
415:              or           a6, a4, sp
                  bge          a4, zero, 436f
417:              lui          s7, 906597
                  bgeu         s10, s2, 421f
                  or           a1, t6, s6
                  sra          zero, t2, t5
421:              addi         s11, a2, -2016
                  bltu         ra, s4, 439f
                  sra          s0, t2, t2
424:              addi         t6, s4, -181
                  srl          t4, s1, zero
                  ori          s9, s2, -40
                  bltu         tp, a0, 445f
428:              srai         a7, gp, 30
                  slt          t6, t0, a0
                  xori         t0, gp, 34
                  xor          a2, s2, s10
                  addi         a3, tp, -777
                  nop
                  sltiu        tp, s11, 1597
                  lui          s4, 431604
436:              beq          s11, a6, 437f
437:              sltu         ra, s4, s8
                  or           s11, sp, t4
439:              bne          s2, s3, 459f
                  srai         s1, a0, 20
                  srli         s8, a4, 11
                  xori         s5, t0, 1019
                  slt          a7, a5, a4
                  lui          tp, 886833
445:              bltu         t0, t1, 455f
                  slt          t1, zero, a1
                  slt          a3, s1, s0
                  sra          s5, a5, s7
                  sltu         s2, s11, s2
                  xori         a5, zero, -237
                  andi         a2, s3, -1847
                  slti         a7, s5, 1257
                  sltiu        s5, s5, 1024
                  bltu         s11, a1, 468f
455:              andi         tp, a1, 417
                  sll          s6, zero, a6
                  bge          t0, s6, 472f
                  or           zero, t6, s7
459:              slt          s0, tp, gp
                  bne          t1, a3, 477f
                  srli         gp, a7, 15
                  xor          s11, ra, gp
                  addi         a6, a4, -264
                  srai         a5, ra, 0
                  beq          s0, a4, 473f
                  andi         s2, s5, -1653
                  auipc        s10, 527962
468:              xori         sp, t5, -1309
                  sra          s7, a1, gp
                  sra          zero, s4, a4
                  bne          a6, ra, 491f
472:              blt          a4, a2, 479f
473:              srl          a1, ra, t5
                  xor          a5, t6, a5
                  srai         t0, s6, 22
                  bne          gp, sp, 492f
477:              slt          a3, tp, t0
                  sub          s10, a4, ra
479:              srli         a5, a5, 15
                  bge          s10, a4, 488f
                  slt          s9, zero, zero
                  add          zero, s2, tp
                  sra          a6, a5, a1
                  bgeu         s5, s11, 498f
                  sra          t1, tp, a5
                  srai         s0, s6, 13
                  nop
488:              add          s1, s9, s2
                  bgeu         a2, t2, 508f
                  slt          gp, s3, t0
491:              andi         s7, sp, 1447
492:              slti         ra, ra, 1915
                  bltu         s0, t4, 505f
                  sltiu        a1, s9, -392
                  srai         t0, s7, 11
                  nop
                  sll          a4, a6, s5
498:              sub          t4, s7, a3
                  andi         s9, s2, 1822
                  slt          s10, a0, t3
                  slli         ra, s7, 6
                  bne          t5, t2, 521f
                  beq          a5, s0, 512f
                  nop
505:              add          tp, s7, t3
                  beq          a3, t0, 510f
                  add          a3, s7, tp
508:              bge          s3, tp, 509f
509:              auipc        s8, 60717
510:              sra          a5, t4, t0
                  slt          zero, s9, t4
512:              srl          t5, a1, a1
                  addi         s6, a7, -875
                  xori         a1, a0, 1441
                  add          s3, s2, a6
                  sll          s8, ra, a2
                  srli         s11, t5, 4
                  bltu         ra, a2, 534f
                  slt          s7, s8, s3
                  beq          tp, s8, 533f
521:              lui          zero, 1002540
                  bge          s2, s2, 542f
                  srli         sp, t1, 31
                  slt          t4, s8, t3
                  slli         s4, t0, 16
                  sub          s5, a7, s5
                  beq          s9, a2, 538f
                  ori          t1, a6, -1572
                  and          t4, t4, a0
                  slt          s2, s11, a3
                  auipc        a6, 363997
                  sub          s4, s10, s10
533:              slti         t0, a6, 441
534:              srli         s11, a1, 18
                  xori         s8, s10, -924
                  srl          a5, s3, t4
                  auipc        t0, 1008482
538:              xor          s7, s1, s5
                  xori         s5, gp, -387
                  slti         s5, t3, 898
                  sra          s2, s4, t1
542:              nop
                  srli         zero, s11, 22
                  sra          a3, t2, s1
                  beq          gp, a5, 562f
                  and          t0, ra, s5
                  addi         t6, zero, 9 #init loop 0 counter
                  sub          t5, t0, a6
                  addi         s5, zero, 15 #init loop 0 limit
                  srai         t0, sp, 30
                  slt          sp, t0, s8
                  slli         a2, a7, 22
                  auipc        t5, 599486
sub_1_16_0_t:     sltiu        s8, s10, -739
                  lui          sp, 713660
                  addi         t6, t6, 3 #update loop 0 counter
                  sll          s10, zero, sp
                  ori          zero, t1, 148
                  srai         s0, a5, 31
                  xor          s9, t1, s5
                  slti         s2, a7, -1752
                  xor          s4, s0, s2
                  lui          a2, 309429
                  sltiu        t0, a6, -1942
                  or           s4, gp, s6
                  srl          s3, s7, a7
                  xori         gp, t3, 1890
                  bltu         t6, s5, sub_1_16_0_t #branch for loop 0
                  slti         gp, tp, 1852
                  and          s8, zero, t6
                  ori          s6, s11, -602
                  blt          a3, a6, 563f
                  andi         s10, s2, -362
                  bne          s5, t1, 556f
                  xori         t0, s4, -1824
                  slt          a6, s9, s3
                  sll          a6, s0, s6
                  bgeu         s1, t0, 569f
556:              andi         tp, s11, -1707
                  bge          t2, sp, 561f
                  xor          t0, s9, t1
                  sltu         t4, t5, s8
                  sll          a7, s2, a7
561:              add          s6, zero, s7
562:              sltiu        s11, s1, 1526
563:              bge          a3, tp, 574f
                  blt          a1, a3, 577f
                  srai         sp, t1, 18
                  beq          t0, tp, 586f
                  nop
                  slli         a5, a2, 0
569:              andi         gp, s8, -1580
                  srai         a5, t2, 26
                  bge          ra, t2, 590f
                  srli         t6, a0, 2
                  bgeu         s2, t4, 587f
574:              bge          s8, tp, 591f
                  xor          t5, s0, a2
                  add          a5, s8, s4
577:              addi         gp, t5, 1735
                  sltu         s2, s6, s10
                  sltiu        a6, s2, 452
                  nop
                  and          s7, a4, a7
                  add          a7, t6, s7
                  sub          a7, t6, a3
                  sltu         t4, s4, a0
                  xor          s5, s8, a2
586:              sra          s3, a1, a0
587:              beq          ra, tp, 588f
588:              sltiu        s0, s6, -624
                  sll          a3, s6, s11
590:              and          s2, s3, zero
591:              sra          a2, a5, t2
                  and          t6, a7, a1
                  srai         s1, t4, 6
                  sra          a6, a6, t5
                  beq          a7, zero, 609f
                  slli         a2, s10, 13
                  lui          s5, 679570
                  auipc        s7, 92575
                  sub          zero, s3, s9
                  sub          a5, a3, s2
                  beq          t1, a5, 617f
                  srai         a1, tp, 18
                  xori         a5, a0, -336
                  srai         sp, tp, 27
                  sltiu        s3, a0, 535
                  srai         s2, tp, 22
                  bltu         t4, s10, 624f
                  auipc        a7, 54434
609:              addi         s0, t3, 1451
                  bgeu         gp, s1, 619f
                  lui          s1, 524534
                  sltiu        a7, a3, 152
                  addi         t4, s8, 438
                  sltiu        s10, s8, -64
                  beq          s0, s2, 619f
                  sltu         t5, a1, s5
617:              srli         t6, a0, 6
                  addi         a4, t6, 379
619:              ori          s1, zero, 2013
                  sltiu        t5, s10, -1159
                  slt          s9, t3, t3
                  auipc        sp, 990727
                  beq          zero, a4, 631f
624:              slti         s4, a4, -151
                  beq          s5, a5, 637f
                  slti         s8, s7, -587
                  sltiu        a6, s9, 1299
                  and          s0, t1, s1
                  andi         tp, s6, 1360
                  blt          gp, a5, 646f
631:              slti         a3, a2, -1567
                  bge          s10, t1, 652f
                  xor          ra, s8, t0
                  lui          tp, 663202
                  sll          a1, s1, s9
                  bne          a2, s5, 651f
637:              add          t4, s0, t5
                  sra          t0, a4, t1
                  addi         t5, t6, -1560
                  srai         s10, s9, 3
                  sra          s8, s11, a2
                  sltiu        t1, tp, 115
                  sra          gp, t0, t4
                  ori          s10, s11, 820
                  sra          s10, s9, s0
646:              and          t5, s11, t5
                  nop
                  lui          s9, 441193
                  srai         t5, s4, 4
                  sltu         ra, t4, s7
651:              srli         s5, zero, 24
652:              srl          tp, s4, t3
                  srl          s5, t0, s4
                  srl          s11, a5, a1
                  addi         s4, t1, 1309
                  addi         s10, a7, -1871
                  xori         s9, t2, -1678
                  slt          s6, s6, s4
                  ori          s3, gp, -1897
                  nop
                  bgeu         t4, a6, 675f
                  slt          tp, a7, t0
                  ori          zero, s10, 1889
                  xori         t1, s11, 751
                  auipc        s6, 195342
                  slt          tp, s11, a3
                  srl          s8, t3, a4
                  slt          zero, s5, a2
                  nop
                  srli         a6, s9, 17
                  bltu         t4, s1, 679f
                  bgeu         s9, a0, 682f
                  sub          s9, a5, gp
                  ori          t0, tp, -1246
675:              slli         t6, s9, 4
                  slti         s0, t1, -411
                  andi         s0, t4, 218
                  srl          s8, s5, s0
679:              addi         s10, s7, 525
                  srl          t5, t6, s11
                  xor          s3, zero, a1
682:              and          tp, a4, t5
                  slt          t1, a0, s6
                  add          tp, t5, s8
                  sra          tp, a5, s10
                  auipc        s7, 8420
                  bgeu         s9, t5, 694f
                  beq          s2, a0, 691f
                  add          t4, a1, tp
                  andi         t4, t2, 739
691:              beq          s2, s8, 709f
                  xor          t6, zero, s8
                  slt          t0, t5, t3
694:              and          s9, a6, s0
                  or           t5, t6, a6
                  blt          sp, a1, 715f
                  sub          sp, s9, ra
                  bge          a5, ra, 718f
                  auipc        s3, 553207
                  bne          s7, t4, 701f
701:              add          s0, s4, s6
                  ori          tp, s3, -692
                  sra          t1, t4, zero
                  auipc        s3, 888409
                  sltu         t4, s3, s6
                  srl          tp, s7, a7
                  nop
                  bgeu         s10, a1, 725f
709:              sub          a4, s10, a3
                  sltiu        s6, t4, -8
                  addi         t1, s1, -1080
                  bne          sp, ra, 717f
                  lui          tp, 229025
                  slli         ra, a0, 19
715:              beq          a0, a4, 729f
                  sll          a1, s4, s11
717:              bne          s2, a3, 721f
718:              sra          s2, t5, t1
                  bne          a4, t5, 723f
                  slt          a3, tp, s5
721:              bge          s8, s5, 739f
                  sra          s1, t5, t2
723:              blt          a5, a6, 736f
                  srli         a2, s2, 23
725:              srai         t1, t2, 8
                  ori          t1, s2, 1109
                  srl          s2, t1, tp
                  bgeu         s2, a4, 742f
729:              andi         t6, ra, -70
                  add          tp, sp, s2
                  sltu         s0, t5, t0
                  lui          s7, 784437
                  auipc        s7, 679554
                  srli         s11, zero, 5
                  nop
736:              blt          a5, s4, 750f
                  bne          s7, t1, 745f
                  bne          a6, a3, 743f
739:              beq          t5, s1, 759f
                  add          gp, s7, s6
                  or           a7, sp, s2
742:              ori          s3, sp, -857
743:              bne          s6, t1, 763f
                  srl          s8, s2, a4
745:              sltu         s6, ra, a5
                  and          t0, tp, a4
                  add          a7, t3, s6
                  beq          s1, a7, 749f
749:              auipc        ra, 212030
750:              andi         s0, s10, 1144
                  xor          s11, t5, s3
                  slt          s8, a2, zero
                  auipc        t6, 886860
                  beq          zero, s2, 758f
                  srai         s8, a5, 11
                  lui          a7, 905270
                  sltu         s3, s1, a4
758:              or           sp, s5, t0
759:              bge          s9, t6, 779f
                  sll          s2, t1, sp
                  sltiu        s6, s8, 206
                  srl          s2, s5, sp
763:              sll          a2, s7, a7
                  sltu         a3, sp, a0
                  srl          s5, a7, s3
                  bge          s0, a6, 778f
                  auipc        s7, 754216
                  slti         s10, s0, -1054
                  ori          t4, a4, -449
                  nop
                  lui          s3, 740369
                  slti         gp, a7, 181
                  srai         s0, a6, 24
                  addi         sp, a1, -54
                  andi         t1, a1, 1714
                  beq          s7, gp, 777f
777:              srai         a1, t0, 25
778:              slti         s4, t1, 750
779:              add          t0, ra, a6
                  sltiu        a3, a3, 36
                  addi         s5, a7, -1856
                  sltu         s10, s8, s8
                  srl          t4, s2, s9
                  sltu         s6, a2, t4
                  bne          s8, t2, 800f
                  lui          s2, 991952
                  sra          a1, s2, s6
                  blt          s5, zero, 807f
                  sll          zero, zero, a0
                  bltu         sp, a2, 807f
                  bgeu         ra, s9, 808f
                  or           s1, t2, t2
                  or           a7, a2, t2
                  slt          s2, ra, s1
                  blt          a4, s7, 809f
                  or           a4, s2, s6
                  add          s11, s3, s8
                  sra          s6, t3, t0
                  sub          s5, s1, s10
800:              auipc        gp, 885859
                  and          ra, s6, t5
                  srai         gp, t5, 26
                  sra          t6, t0, t0
                  nop
                  beq          tp, s4, 813f
                  bltu         a4, s4, 809f
807:              andi         tp, t1, 901
808:              blt          s6, t6, 827f
809:              andi         t0, a3, 1062
                  addi         a3, s2, -1682
                  and          s10, s6, s2
                  beq          a1, gp, 823f
813:              slli         t5, s2, 12
                  nop
                  slti         zero, a6, -1171
                  nop
                  sra          t4, a6, t3
                  ori          s3, s5, 359
                  sltu         s8, t6, s7
                  add          s11, s7, t0
                  beq          a6, a2, 837f
                  xori         s11, t3, 1535
823:              andi         s7, s0, -346
                  bltu         s5, s5, 841f
                  add          s3, a5, s8
                  lui          s5, 26189
827:              bgeu         s3, s7, 836f
                  xor          s4, a7, t6
                  and          s5, s9, s1
                  slt          s1, ra, s1
                  xori         s0, a6, 1096
                  and          s1, gp, s0
                  bge          a4, s10, 840f
                  xor          t1, s9, s9
                  slti         t5, s3, -1359
836:              bgeu         zero, zero, 852f
837:              sra          s4, t3, s11
                  blt          t1, a4, 848f
                  slt          sp, t0, a1
840:              or           a6, s11, ra
841:              slti         s3, a7, 1844
                  slt          t4, s11, ra
                  xori         a5, ra, 539
                  srai         t4, t0, 29
                  bltu         t1, a4, 859f
                  bgeu         s11, t3, 859f
                  sub          s3, a1, a6
848:              srl          t1, s5, s11
                  bne          a7, gp, 863f
                  or           s1, a2, a4
                  blt          s9, t2, 861f
852:              lui          a3, 177539
                  slti         a1, a0, -1648
                  sll          t5, tp, s11
                  ori          s5, a1, -1938
                  slli         a5, ra, 27
                  sra          a2, t5, s9
                  srli         ra, a7, 27
859:              srl          ra, a7, s3
                  bltu         s4, a6, 875f
861:              srli         t6, s3, 24
                  bgeu         a5, s7, 882f
863:              slli         a3, zero, 10
                  slt          t6, s3, t3
                  auipc        a3, 1037175
                  and          sp, s1, gp
                  beq          zero, ra, 884f
                  lui          t1, 610262
                  andi         t5, tp, -1070
                  lui          s0, 95485
                  and          s11, s0, zero
                  bne          t1, a0, 877f
                  auipc        s11, 559400
                  sub          zero, s8, t1
875:              srl          a2, gp, t5
                  srli         a3, tp, 5
877:              bgeu         t3, s2, 886f
                  sltu         s0, s11, t4
                  srai         a3, a2, 30
                  add          t0, t2, t5
                  blt          a5, sp, 895f
                  addi         a5, zero, 5 #init loop 0 counter
                  sra          s4, t1, a2
                  srli         a2, a4, 4
                  ori          s3, s3, -1042
                  add          a6, a1, s3
                  srli         s1, a0, 23
                  or           tp, tp, s2
                  srl          s5, zero, a6
                  addi         ra, zero, 4 #init loop 0 limit
                  xor          a6, a2, tp
                  lui          a7, 284309
sub_1_5_0_t:      nop
                  andi         s4, t3, 1224
                  addi         zero, zero, 1669
                  andi         s9, s8, -282
                  addi         a5, a5, -3 #update loop 0 counter
                  andi         s11, ra, 1665
                  auipc        sp, 755387
                  srli         s11, gp, 13
                  bgeu         a5, ra, sub_1_5_0_t #branch for loop 0
                  add          a7, ra, s1
882:              nop
                  addi         s0, t6, 1955
884:              srl          s8, t2, s2
                  xor          t4, a6, a7
886:              nop
                  slti         s3, t2, -1558
                  ori          s5, s2, 787
                  nop
                  sltiu        s0, t4, 1530
                  and          s7, s9, ra
                  bge          s7, s8, 911f
                  sltiu        t4, gp, -1837
                  srl          tp, a6, a1
895:              bgeu         a1, s4, 898f
                  andi         t4, a4, 1936
                  beq          s9, s3, 911f
898:              sub          gp, a3, zero
                  srl          s2, t3, s5
                  sltiu        a1, sp, -1912
                  srai         a1, a6, 24
                  andi         s1, t5, -874
                  sub          s7, s1, t1
                  slti         t6, s3, -1658
                  and          t5, t5, ra
                  bltu         a3, t6, 926f
                  and          s4, t4, a0
                  bgeu         a7, t3, 924f
                  slt          t6, s5, t3
                  lui          s4, 57986
911:              addi         tp, t2, -1089
                  bltu         s9, s1, 919f
                  sltu         s3, sp, a5
                  ori          a7, s4, -1631
                  lui          a5, 92571
                  srl          a5, a3, ra
                  srai         s9, s10, 19
                  sll          t4, zero, t0
919:              slli         t5, s0, 22
                  auipc        t4, 985900
                  auipc        s5, 720251
                  beq          gp, t2, 933f
                  slli         s8, a1, 18
924:              srl          a2, t1, a4
                  lui          t5, 748565
926:              auipc        a7, 972344
                  auipc        a4, 469331
                  srli         a4, a1, 23
                  or           s2, s6, a0
                  sltu         a4, s8, s5
                  auipc        s5, 989540
                  blt          s7, a2, 949f
933:              srli         s8, t0, 6
                  sub          s6, a4, s3
                  slli         a2, t5, 13
                  srai         s8, a4, 5
                  bne          a1, sp, 951f
                  srl          s7, a5, t2
                  add          s3, s0, sp
                  nop
                  sub          s5, s9, s8
                  slt          s5, tp, s7
                  bgeu         a2, t2, 947f
                  srl          t6, t0, a0
                  auipc        ra, 539040
                  bgeu         a1, s1, 954f
947:              slti         s7, gp, -1914
                  sra          sp, t2, s2
949:              slt          a6, t3, a7
                  or           a2, s1, s4
951:              ori          sp, zero, -621
                  sub          s2, a1, s6
                  andi         gp, t6, 1685
954:              bge          ra, t5, 955f
955:              and          gp, tp, tp
                  andi         a6, zero, -1606
                  srli         s2, a1, 10
                  xori         s0, a6, -213
                  sll          s10, s5, a1
                  slli         s4, s11, 28
                  addi         sp, s9, 451
                  and          s4, zero, t6
                  blt          s8, s5, 971f
                  ori          tp, s1, 533
                  addi         tp, s1, -416
                  slt          sp, a5, a0
                  xori         t0, t6, -1079
                  sra          s7, t4, s2
                  slt          s1, t6, s6
                  lui          a4, 490009
971:              xori         gp, t2, -1348
                  slti         s1, tp, 1139
                  beq          s4, sp, 977f
                  beq          s10, a6, 975f
975:              sll          a6, s6, t4
                  bge          a5, sp, 990f
977:              srai         s5, t3, 6
                  xor          s3, s11, a7
                  blt          s6, sp, 990f
                  andi         a2, t5, 1062
                  blt          a2, tp, 990f
                  sltu         a1, a2, t1
                  ori          s6, t0, -570
                  or           a6, t5, a4
                  srl          s1, zero, t6
                  slli         ra, s5, 26
                  slli         sp, a4, 4
                  bne          a5, a7, 990f
                  add          t5, tp, t6
990:              lui          s5, 504573
                  srl          t0, s10, s7
                  lw           ra, 4(t2)
                  auipc        zero, 580
                  addi         t2, t2, 20
                  slt          a6, t3, tp
1348:             addi x29, x1, 0
1348:             jalr x29, x29, 0
sub_2:            bge          t2, s5, sub_2_stack_p
                  sltu         t4, s9, s0
sub_2_stack_p:    addi         t2, t2, -64
                  and          t4, a1, t5
                  and          zero, t2, a6
                  sw           ra, 4(t2)
                  xor          s1, t1, gp
                  addi         a4, s2, 885
                  slt          a3, a0, a4
                  xor          a7, a0, s3
                  addi         a5, t1, 723
                  srli         a5, tp, 6
                  ori          s9, a5, 1692
                  addi         t5, zero, 5 #init loop 1 counter
                  addi         gp, zero, 17 #init loop 1 limit
sub_2_9_1_t:      or           tp, s0, s8
                  addi         t5, t5, 6 #update loop 1 counter
                  addi         a2, zero, 9 #init loop 0 counter
                  addi         s2, zero, -11 #init loop 0 limit
sub_2_9_0_t:      nop
                  addi         a2, a2, -10 #update loop 0 counter
                  bne          a2, s2, sub_2_9_0_t #branch for loop 0
                  beq          t5, gp, sub_2_9_1_t #branch for loop 1
                  srai         s10, t0, 26
                  addi         s6, zero, -3 #init loop 1 counter
                  sltu         a3, a0, a0
                  ori          s3, a1, -852
                  nop
                  and          a6, t5, s11
                  sltiu        a5, t2, 1748
                  sltiu        ra, t5, 375
                  addi         s9, zero, 12 #init loop 1 limit
                  xor          s8, a4, s6
sub_2_6_1_t:      or           a2, s2, t4
                  slli         s8, a0, 17
                  addi         t1, s11, 593
                  addi         s6, s6, 6 #update loop 1 counter
                  xor          a1, s10, t4
                  srli         s5, a0, 20
                  slli         s5, t0, 12
                  addi         a7, zero, -1 #init loop 0 counter
                  sub          a6, s9, s5
                  srli         zero, a7, 11
                  addi         t4, zero, -13 #init loop 0 limit
sub_2_6_0_t:      slti         s1, a7, -978
                  srai         t5, s3, 18
                  addi         a7, a7, -6 #update loop 0 counter
                  sltu         sp, a0, a4
                  xori         t6, s0, -1657
                  sub          zero, a5, t1
                  sra          ra, gp, a5
                  auipc        s11, 577707
                  andi         t0, s5, -112
                  srl          s8, t3, a5
                  bne          a7, t4, sub_2_6_0_t #branch for loop 0
                  srli         a4, sp, 28
                  sra          a1, s0, s11
                  blt          s6, s9, sub_2_6_1_t #branch for loop 1
                  auipc        ra, 39348
                  addi         t5, zero, 8 #init loop 1 counter
                  addi         a5, t1, 393
                  addi         s3, zero, 8 #init loop 1 limit
                  or           s1, s8, tp
                  or           s1, zero, s10
sub_2_8_1_t:      auipc        a7, 777029
                  addi         t5, t5, -7 #update loop 1 counter
                  sub          s10, t2, a0
                  addi         t1, zero, 6 #init loop 0 counter
                  auipc        s9, 293428
                  auipc        sp, 1041708
                  addi         a6, zero, -18 #init loop 0 limit
                  sub          a4, s5, t1
sub_2_8_0_t:      xori         zero, s11, -1685
                  srai         s9, s2, 26
                  addi         t1, t1, -8 #update loop 0 counter
                  slli         a4, t6, 4
                  bne          t1, a6, sub_2_8_0_t #branch for loop 0
                  add          s1, ra, t1
                  sra          s4, a0, s7
                  sll          s4, sp, s2
                  and          tp, s0, s5
                  auipc        zero, 65044
                  bgeu         t5, s3, sub_2_8_1_t #branch for loop 1
                  xor          s8, s0, a5
                  addi         s5, zero, 2 #init loop 0 counter
                  xori         s4, sp, -131
                  srl          a7, t6, t4
                  addi         s9, zero, -14 #init loop 0 limit
                  sub          sp, t3, a3
sub_2_4_0_t:      addi         tp, a0, 1900
                  auipc        t5, 721928
                  auipc        a5, 293923
                  slti         s0, s4, -1573
                  xor          a5, a6, a6
                  addi         s5, s5, -8 #update loop 0 counter
                  srl          s1, t5, s4
                  slti         t6, ra, -1719
                  sltiu        s2, a6, 698
                  beq          s5, s9, sub_2_4_0_t #branch for loop 0
                  sltu         t6, t2, t2
                  addi         sp, zero, 1 #init loop 1 counter
                  sltiu        ra, s5, 670
                  sltu         s5, gp, gp
                  addi         t4, zero, 17 #init loop 1 limit
                  sll          a7, a7, a2
sub_2_13_1_t:     ori          ra, a3, 533
                  slt          t0, a4, s1
                  xori         t6, s5, 1033
                  addi         sp, sp, 4 #update loop 1 counter
                  slti         t1, a5, -800
                  sltu         s8, s6, s2
                  sltu         a6, t1, s8
                  addi         gp, zero, 8 #init loop 0 counter
                  lui          s7, 732705
                  srl          a6, s8, s11
                  sltiu        s6, s7, -1709
                  addi         a5, zero, 2 #init loop 0 limit
                  andi         s5, a1, -1740
                  and          a4, s0, t4
sub_2_13_0_t:     sub          zero, a4, a0
                  nop
                  addi         gp, gp, -9 #update loop 0 counter
                  bge          gp, a5, sub_2_13_0_t #branch for loop 0
                  auipc        ra, 573719
                  add          a6, a2, s11
                  ori          a7, zero, 655
                  sub          s3, s10, t4
                  beq          sp, t4, sub_2_13_1_t #branch for loop 1
                  nop
                  addi         t5, zero, 2 #init loop 0 counter
                  srl          s3, s5, gp
                  addi         t6, zero, 12 #init loop 0 limit
sub_2_3_0_t:      add          s6, s2, a4
                  addi         t5, t5, 1 #update loop 0 counter
                  blt          t5, t6, sub_2_3_0_t #branch for loop 0
                  sra          ra, a4, tp
                  addi         a7, zero, -5 #init loop 1 counter
                  addi         s9, zero, 18 #init loop 1 limit
                  nop
sub_2_1_1_t:      or           s7, gp, a7
                  sra          tp, s8, a7
                  addi         a7, a7, 9 #update loop 1 counter
                  addi         s3, zero, 1 #init loop 0 counter
                  slti         s0, sp, 39
                  addi         s2, zero, 15 #init loop 0 limit
sub_2_1_0_t:      slt          t6, tp, s3
                  addi         s3, s3, 5 #update loop 0 counter
                  slt          t1, ra, a3
                  blt          s3, s2, sub_2_1_0_t #branch for loop 0
                  blt          a7, s9, sub_2_1_1_t #branch for loop 1
                  sll          ra, s2, s1
                  addi         s3, zero, -8 #init loop 0 counter
                  and          gp, gp, t5
                  andi         sp, sp, 683
                  addi         s2, s10, 75
                  xor          gp, s10, s3
                  lui          a1, 371479
                  andi         sp, a1, 1576
                  lui          s8, 324567
                  addi         s5, s4, 1195
                  srai         sp, t3, 8
                  sll          ra, a2, sp
                  sltiu        zero, s7, -726
                  addi         a3, zero, 3 #init loop 0 limit
                  sltiu        a7, a6, -1092
sub_2_11_0_t:     slt          s10, a7, s3
                  addi         a4, s4, -891
                  sltiu        s10, s8, 1300
                  add          s11, s6, ra
                  add          a6, s9, a7
                  or           a5, a0, t5
                  sll          s5, s4, s8
                  lui          t6, 311367
                  srl          a2, s3, s1
                  addi         s3, s3, 8 #update loop 0 counter
                  xor          sp, a4, t0
                  blt          s3, a3, sub_2_11_0_t #branch for loop 0
                  addi         a2, a0, -1861
                  addi         a7, zero, -7 #init loop 0 counter
                  addi         t1, zero, 20 #init loop 0 limit
sub_2_0_0_t:      and          s2, s6, s10
                  sra          t4, s6, t6
                  addi         a7, a7, 5 #update loop 0 counter
                  blt          a7, t1, sub_2_0_0_t #branch for loop 0
                  sra          a1, a0, s11
                  addi         t4, zero, -6 #init loop 0 counter
                  slli         a3, t3, 22
                  addi         s1, zero, 0 #init loop 0 limit
                  srl          gp, tp, s7
sub_2_12_0_t:     slti         s6, t2, 779
                  srli         s9, a0, 28
                  addi         t4, t4, 3 #update loop 0 counter
                  or           t0, a4, tp
                  add          s10, a1, t3
                  or           s2, t2, t6
                  beq          t4, s1, sub_2_12_0_t #branch for loop 0
                  add          s2, a6, t1
                  addi         s6, zero, 2 #init loop 0 counter
                  slt          sp, s10, a1
                  srli         tp, zero, 9
                  sltu         gp, t6, s3
                  xori         t4, a4, -1968
                  lui          t6, 395284
                  slti         t4, t1, -1041
                  sub          s9, s4, t1
                  addi         ra, zero, 5 #init loop 0 limit
                  sub          s11, s0, sp
sub_2_2_0_t:      addi         s0, tp, -463
                  auipc        t1, 247165
                  or           s0, zero, a6
                  addi         s6, s6, 9 #update loop 0 counter
                  sub          a7, t6, a3
                  ori          sp, s3, 1728
                  nop
                  xor          s2, a1, a0
                  slli         a1, a1, 0
                  auipc        s3, 538899
                  sltu         t0, s7, s7
                  srl          s11, a4, a7
                  blt          s6, ra, sub_2_2_0_t #branch for loop 0
                  add          s7, a5, gp
                  addi         tp, zero, -9 #init loop 1 counter
                  slli         s9, zero, 19
                  addi         s3, zero, -19 #init loop 1 limit
                  and          s10, s9, s3
sub_2_14_1_t:     xor          t4, t5, s0
                  addi         tp, tp, -10 #update loop 1 counter
                  addi         sp, zero, 3 #init loop 0 counter
                  slti         s6, a6, -2005
                  addi         t1, zero, 2 #init loop 0 limit
sub_2_14_0_t:     add          t0, t2, t0
                  addi         ra, t2, -1525
                  srai         zero, t1, 26
                  addi         sp, sp, -1 #update loop 0 counter
                  and          a6, t1, gp
                  bgeu         sp, t1, sub_2_14_0_t #branch for loop 0
                  beq          tp, s3, sub_2_14_1_t #branch for loop 1
                  lui          s7, 1013952
                  srli         a7, t0, 28
                  sltiu        a2, sp, 1260
                  sub          t6, s10, a3
                  blt          s1, a3, 16f
                  sll          t0, a7, a3
                  bgeu         a6, s0, 23f
                  auipc        t1, 724525
                  bge          s9, a5, 11f
                  bne          zero, zero, 22f
                  xori         s6, tp, 109
                  sll          a6, s8, s11
11:               bltu         t6, a5, 22f
                  lui          ra, 234892
                  blt          s2, gp, 33f
                  srai         s5, ra, 28
                  bltu         t5, s7, 30f
16:               andi         a6, a0, 1442
                  sra          t0, s10, s6
                  srl          a6, a2, s4
                  sltu         s0, s10, zero
                  sltu         a3, s8, s7
                  slti         a1, t5, -237
22:               xor          s3, s1, s7
23:               or           s3, gp, a2
                  ori          s9, gp, 197
                  beq          s7, s1, 31f
                  nop
                  auipc        s6, 267736
                  bgeu         a7, a7, 47f
                  bgeu         ra, s10, 45f
30:               xori         s7, zero, 1044
31:               blt          s4, a3, 33f
                  addi         ra, zero, 1 #init loop 0 counter
                  sltiu        s7, a1, 1572
                  xori         t1, a4, 1495
                  slti         a6, s2, -257
                  addi         s6, zero, -4 #init loop 0 limit
                  auipc        t4, 792965
                  nop
sub_2_10_0_t:     sltiu        s10, t5, -624
                  addi         ra, ra, -2 #update loop 0 counter
                  auipc        s0, 169639
                  sltiu        sp, s3, 122
                  addi         t4, s2, 31
                  or           s8, s6, gp
                  nop
                  auipc        a4, 47981
                  addi         a5, t3, 1865
                  srai         a4, a4, 17
                  nop
                  sltiu        s1, s11, 995
                  slt          t0, s5, sp
                  add          zero, a6, t4
                  sra          s3, a2, s0
                  ori          s4, s6, -574
                  sltiu        a3, t5, 1984
                  xor          s4, s2, t0
                  bge          ra, s6, sub_2_10_0_t #branch for loop 0
                  add          s4, tp, t4
                  beq          a4, s1, 50f
33:               beq          t6, s5, 42f
                  xori         a7, s8, -613
                  lui          t4, 703421
                  lui          t0, 615677
                  blt          zero, zero, 40f
                  srai         t5, s0, 10
                  srli         s11, zero, 18
40:               and          s2, s6, tp
                  srl          s6, a0, a4
42:               beq          ra, ra, 53f
                  sra          s10, sp, a6
                  sltu         a6, zero, t0
45:               bne          a3, t3, 63f
                  sltiu        s5, a1, 1420
47:               xor          s4, s2, t5
                  sub          a4, s7, zero
                  lui          s11, 401271
50:               bne          a4, t1, 53f
                  or           s6, a5, a6
                  bltu         sp, t4, 55f
53:               sltiu        s6, zero, 988
                  xor          tp, s7, t1
55:               xori         a3, s0, -316
                  add          s6, s8, t4
                  xori         t5, s11, 1069
                  bgeu         t0, a4, 59f
59:               bgeu         a7, tp, 60f
60:               srai         s0, t5, 27
                  xori         gp, s0, 1123
                  bge          t3, t5, 63f
63:               sltiu        a3, sp, 300
                  auipc        t4, 996290
                  auipc        a7, 13099
                  addi         zero, t0, 519
                  blt          s3, a1, 79f
                  bgeu         ra, s6, 78f
                  and          tp, s11, sp
                  sll          s6, t2, t5
                  srai         t5, t1, 22
                  lui          s6, 1048169
                  bge          s7, s0, 78f
                  srl          sp, s8, t0
                  slt          s3, tp, s11
                  srl          a2, a6, t3
                  addi         s1, s5, -1793
78:               slli         a6, a0, 29
79:               bltu         s6, s6, 89f
                  addi         s0, a3, 1929
                  xori         ra, s4, 302
                  bgeu         a4, s0, 90f
                  ori          t0, t0, -604
                  sltiu        t0, a3, 732
                  and          zero, ra, s5
                  nop
                  bne          s3, gp, 95f
                  bgeu         s7, s9, 90f
89:               srli         s6, s6, 9
90:               sltu         s9, zero, s8
                  nop
                  srli         s10, s9, 8
                  add          t0, s3, s0
                  beq          s7, tp, 98f
95:               srai         s11, a2, 3
                  and          a7, a7, t0
                  bgeu         s4, a6, 101f
98:               bge          tp, a7, 111f
                  slti         s11, t4, 1171
                  srl          s10, t4, t6
101:              srl          s2, a0, a1
                  bgeu         gp, s11, 104f
                  bge          a6, s10, 113f
104:              srl          tp, t6, a3
                  andi         s7, a6, 1130
                  add          s10, a2, a5
                  sltiu        s7, a0, 1860
                  sltiu        t4, s8, 1252
                  sltu         sp, tp, s2
                  sltu         sp, a5, t1
111:              beq          sp, t5, 119f
                  bltu         s7, t1, 121f
113:              nop
                  bgeu         t4, s0, 117f
                  srli         s6, a7, 16
                  nop
117:              andi         s4, s0, 1998
                  blt          s10, a7, 122f
119:              sltiu        s8, sp, -1728
                  addi         a6, s11, 769
121:              addi         s2, a7, -526
122:              xor          t5, t2, a4
                  srl          s3, s3, tp
                  slti         s5, ra, -1739
                  and          s10, a0, zero
                  bne          t1, a1, 138f
                  sub          ra, zero, a6
                  andi         a3, s10, 1903
                  sltu         a4, t5, a5
                  bge          s9, s7, 144f
                  xori         t1, t0, -1352
                  srai         t5, s9, 27
                  blt          t1, zero, 151f
                  slti         a4, a6, -928
                  blt          s9, a6, 146f
                  sub          s11, t1, s5
                  sra          a5, s6, s10
138:              bne          sp, t4, 156f
                  addi         s7, ra, -1789
                  slli         s5, sp, 13
                  xori         t6, t4, -564
                  bne          a7, zero, 145f
                  addi         s3, zero, -9 #init loop 1 counter
                  lui          a6, 319762
                  srai         a1, a4, 4
                  srai         zero, s1, 30
                  slt          s7, s5, t3
                  addi         t6, zero, 1 #init loop 1 limit
                  xor          s2, zero, sp
                  sll          s0, a2, t5
                  and          ra, s2, a7
sub_2_5_1_t:      slti         s9, sp, 1862
                  sub          zero, s0, s0
                  srl          s6, t4, s9
                  slli         t1, s8, 5
                  auipc        t4, 944107
                  addi         s3, s3, 6 #update loop 1 counter
                  xor          tp, t6, t5
                  sra          s0, zero, s6
                  xor          a1, sp, sp
                  slt          s8, a0, gp
                  addi         sp, zero, 3 #init loop 0 counter
                  addi         a3, zero, 3 #init loop 0 limit
                  and          s8, sp, a5
sub_2_5_0_t:      xor          s5, a3, a5
                  sra          a7, s2, s8
                  srli         s2, a0, 10
                  or           s11, gp, s9
                  sltiu        s1, a5, -355
                  add          zero, t6, zero
                  sltiu        tp, s0, 1541
                  addi         sp, sp, -1 #update loop 0 counter
                  auipc        t4, 991855
                  bgeu         sp, a3, sub_2_5_0_t #branch for loop 0
                  blt          s3, t6, sub_2_5_1_t #branch for loop 1
                  lui          s11, 1022556
                  sltu         s2, a0, a7
144:              and          s0, zero, s1
145:              slli         a4, s2, 18
146:              and          a1, a2, gp
                  slti         s8, s0, 1395
                  sub          s2, t1, s9
                  xori         tp, t1, -1009
                  ori          s11, ra, 1840
151:              auipc        s6, 110371
                  srl          sp, t3, s6
                  bltu         s5, sp, 172f
                  srl          a5, a6, gp
                  sltiu        a1, s3, -1632
156:              xori         a1, a4, 2014
                  blt          s5, s9, 163f
                  addi         s1, s9, -74
                  lui          t0, 235543
                  bltu         t0, t3, 168f
                  slti         sp, tp, 1066
                  bne          t2, s11, 165f
163:              bgeu         sp, gp, 174f
                  sub          s10, t0, ra
165:              ori          a3, s3, -1427
                  addi         s2, t0, -571
                  sltu         t1, s10, s4
168:              srl          t0, s9, t4
                  or           t4, ra, s1
                  xori         s3, s0, 1203
                  xori         s10, s2, 1175
172:              bge          s7, s0, 174f
                  slti         s2, t4, 2003
174:              blt          s8, t0, 192f
                  sra          tp, s5, s3
                  sub          s2, sp, s2
                  bgeu         tp, t0, 178f
178:              or           t0, s9, t4
                  xori         s1, a6, 607
                  addi         s8, a6, 1898
                  xor          a6, s9, zero
                  auipc        s10, 488965
                  blt          tp, s7, 184f
184:              slli         zero, t2, 15
                  or           a1, t5, ra
                  add          t5, a3, a1
                  bgeu         t1, a0, 191f
                  bne          t1, a1, 203f
                  nop
                  bgeu         a0, s0, 210f
191:              sll          a4, a5, t5
192:              sll          t4, t2, s11
                  xori         a3, tp, 804
                  bltu         s7, s8, 210f
                  srl          a3, a4, t0
                  add          s11, t4, s0
                  sltu         a7, s1, t0
                  slt          a4, tp, a6
                  sll          a6, s2, s2
                  sra          sp, a3, s1
                  slti         s7, s2, -91
                  sub          s4, a6, t3
203:              add          t0, s0, t3
                  bge          a5, t1, 214f
                  ori          a7, s11, 1510
                  slt          s11, s3, t2
                  bge          a1, t3, 208f
208:              nop
                  sub          t5, zero, s2
210:              bgeu         s2, t2, 214f
                  lui          t6, 57886
                  blt          a2, t2, 217f
                  slt          s5, t1, s2
214:              xor          s11, zero, s7
                  srl          tp, zero, tp
                  sltu         a6, s11, a4
217:              lui          t1, 997663
                  auipc        a5, 949306
                  srai         a6, tp, 13
                  slt          zero, s10, s6
                  sub          zero, s2, s10
                  ori          a4, a0, 1648
                  srai         s7, s6, 4
                  bne          s10, s5, 230f
                  sltu         t6, ra, s10
                  srli         s4, t5, 15
                  bltu         a7, gp, 231f
                  or           s2, s5, a6
                  sltu         s10, s6, sp
230:              ori          ra, t1, -1412
231:              blt          t0, s6, 244f
                  bltu         t4, a4, 233f
233:              srli         t1, s4, 8
                  srai         s10, s8, 31
                  bge          a0, s5, 236f
236:              xori         s3, s8, -1206
                  bltu         t4, t5, 245f
                  srli         a6, s2, 16
                  sra          s3, s9, s4
                  srl          s9, s9, gp
                  and          sp, a4, s10
                  slli         a5, t0, 27
                  auipc        s11, 1009632
244:              xori         a6, ra, -37
245:              ori          tp, a3, -198
                  nop
                  bne          t1, a6, 250f
                  and          a6, a1, gp
                  sltiu        t1, s1, -141
250:              andi         a3, a5, -1715
                  sub          t5, a3, a7
                  xori         s3, a7, -2038
                  bne          t0, s4, 271f
                  bgeu         s1, s8, 257f
                  srai         s2, s7, 1
                  bgeu         a7, s0, 261f
257:              lui          a2, 119737
                  and          zero, s0, s0
                  srli         a5, s0, 24
                  sll          a3, s6, a7
261:              addi         a5, s5, 1802
                  srli         t4, a5, 0
                  beq          a5, t4, 272f
                  blt          t4, sp, 266f
                  and          tp, s7, a0
266:              sub          t6, t6, a1
                  addi         s9, zero, 286
                  bltu         s9, s5, 270f
                  srai         a7, t3, 10
270:              and          tp, a6, s7
271:              slt          s0, a0, t6
272:              and          s3, s0, s10
                  srl          s7, tp, ra
                  slt          s6, s11, t6
                  bltu         zero, a3, 276f
276:              addi         a6, a0, -1119
                  beq          a1, t4, 280f
                  ori          ra, tp, -2039
                  and          s6, a2, t1
280:              sltiu        s4, t2, 617
                  slt          s6, zero, t4
                  or           t6, s5, s11
                  bltu         t5, s9, 298f
                  beq          t1, zero, 300f
                  nop
                  slti         ra, zero, -1163
                  and          a7, a2, s10
                  sll          a7, a3, t4
                  lui          s8, 463971
                  sltiu        ra, s5, -1691
                  xori         s5, a2, -1853
                  slt          s7, s2, a6
                  and          a6, tp, a5
                  xor          t6, a0, a0
                  xor          s1, t3, s8
                  or           gp, t0, s2
                  bne          s10, tp, 315f
298:              srai         s11, s3, 30
                  bgeu         t0, s3, 313f
300:              or           a4, a5, t4
                  ori          s0, s11, 1341
                  bgeu         s8, t3, 310f
                  sub          s7, s1, s8
                  srl          s2, gp, s1
                  sra          a1, s7, a6
                  srl          t0, a7, t2
                  sra          s7, t0, a0
                  xor          ra, s9, t3
                  ori          zero, a4, -1736
310:              and          t5, s0, a3
                  xor          a6, a6, s10
                  lui          s1, 955744
313:              bne          s10, a3, 333f
                  srl          s8, t3, a5
315:              srai         s7, t6, 10
                  slti         zero, t0, 146
                  bltu         s4, s7, 336f
                  ori          ra, a2, -1000
                  srli         a1, s2, 24
                  sltiu        s2, a2, -124
                  srli         s1, s8, 25
                  sra          t5, s10, a3
                  nop
                  sltu         s11, sp, sp
                  auipc        t5, 501095
                  auipc        gp, 919055
                  srli         a4, s3, 12
                  bge          a2, t5, 346f
                  and          t5, tp, s2
                  xori         gp, s5, 1603
                  slt          s11, t3, s5
                  slt          s10, zero, a0
333:              auipc        s8, 99264
                  xor          s0, gp, s11
                  srli         a6, s7, 30
336:              andi         t5, t1, -1901
                  srai         s5, s11, 17
                  sltu         ra, t5, s11
                  xor          zero, s7, a5
                  addi         s11, s2, -1259
                  bltu         t4, t2, 351f
                  sll          sp, s4, a0
                  sll          s6, a6, a2
                  blt          t0, a3, 348f
                  lui          tp, 338128
346:              ori          s10, s2, -275
                  bltu         ra, s1, 358f
348:              slli         a7, t2, 17
                  xor          s7, a2, s2
                  srai         a1, t1, 12
351:              andi         a6, ra, -1358
                  xori         s7, a0, 1912
                  sltu         s7, s9, t5
                  addi         a1, a4, -1165
                  xori         t6, s9, -1188
                  slti         zero, s7, -1193
                  add          a5, s11, s4
358:              bge          a4, t6, 369f
                  sltu         zero, a4, t6
                  srli         s8, a1, 2
                  auipc        a1, 399843
                  beq          s7, s10, 372f
                  and          s1, a0, a1
                  sub          s0, a7, t0
                  blt          a2, t0, 369f
                  bne          s8, a6, 378f
                  or           s6, t2, s5
                  addi         a5, s5, -1192
369:              auipc        s5, 468530
                  lui          tp, 161315
                  beq          tp, s10, 374f
372:              auipc        s6, 228189
                  xor          s1, s2, s10
374:              andi         a2, s10, -1
                  add          s11, s2, s0
                  beq          gp, t1, 390f
                  xor          tp, s9, s11
378:              sltiu        a5, a6, -1036
                  xor          ra, a3, s9
                  bltu         s1, sp, 395f
                  bge          a2, sp, 392f
                  bltu         s10, a2, 400f
                  slti         s2, a2, 577
                  lui          a3, 1020692
                  beq          s7, t3, 397f
                  xori         a1, gp, 715
                  add          t1, t5, a0
                  blt          s10, s2, 393f
                  and          s8, s10, s2
390:              bgeu         t2, t0, 398f
                  bgeu         t1, s11, 401f
392:              blt          t1, s11, 393f
393:              sltu         s4, s11, ra
                  auipc        t4, 138069
395:              auipc        t0, 462162
                  and          a7, t6, s3
397:              xor          s1, s7, a5
398:              xor          s2, a7, a2
                  srl          a7, s1, s2
400:              srl          s7, t2, sp
401:              bltu         a7, t0, 405f
                  bgeu         a4, a2, 406f
                  ori          s4, s5, -1370
                  blt          t6, a5, 407f
405:              bge          s9, t2, 408f
406:              xor          a6, gp, s8
407:              xori         zero, t6, -1745
408:              addi         t4, t1, -94
                  sra          s3, s5, a0
                  sra          a2, a0, a5
                  xori         a5, s0, 161
                  slli         s8, s9, 20
                  xori         t1, a6, 1010
                  slti         t1, s0, -1578
                  sltu         a3, s0, t2
                  srli         sp, a1, 20
                  bltu         s4, s10, 427f
                  bne          s0, t6, 424f
                  bge          s3, a2, 427f
                  nop
                  nop
                  sltiu        s1, t2, 371
                  bge          s11, t0, 432f
424:              nop
                  andi         s0, t0, 272
                  srli         s5, tp, 15
427:              and          a6, gp, gp
                  xori         s6, s9, -1914
                  srl          a7, s5, a5
                  srl          s8, gp, s2
                  blt          t2, tp, 432f
432:              sll          t4, s0, t2
                  sltu         s6, s1, ra
                  bgeu         t5, t4, 453f
                  slli         s6, t6, 15
                  srl          sp, tp, a3
                  or           s6, s3, t2
                  auipc        a4, 392295
                  sltu         s8, t2, a7
                  xor          a1, a1, s3
                  bge          a6, s0, 457f
                  xor          t6, s8, s4
                  and          gp, sp, s4
                  nop
                  slti         tp, s7, -1401
                  and          s9, t4, tp
                  lui          s2, 262326
                  sll          s5, a1, a3
                  sltu         s7, t3, t5
                  sra          zero, a4, s3
                  lui          s4, 297161
                  addi         t1, s0, -1042
453:              bge          zero, s5, 471f
                  sltu         tp, s10, t6
                  beq          gp, gp, 456f
456:              addi         t0, a7, 450
457:              slli         s7, zero, 15
                  slli         s2, t2, 10
                  ori          zero, zero, 1442
                  add          s10, a6, t5
                  ori          a7, t3, -1999
                  sltu         s0, tp, t3
                  beq          s0, s5, 474f
                  beq          s11, tp, 482f
                  auipc        zero, 521757
                  srl          s0, t5, t1
                  sltiu        s4, s10, -342
                  bgeu         t2, s8, 470f
                  ori          sp, a5, -1910
470:              bltu         a4, t2, 490f
471:              or           t4, a3, a7
                  and          t5, a5, t0
                  sra          a1, gp, s9
474:              bne          s11, s11, 478f
                  sltiu        a2, t0, -38
                  bge          t2, t3, 489f
                  auipc        s5, 489766
478:              blt          a0, s3, 480f
                  bgeu         a2, tp, 494f
480:              sra          s5, t1, ra
                  sub          ra, s8, ra
482:              add          s1, s11, a1
                  or           t5, a2, s11
                  addi         a6, t1, 506
                  bltu         s6, s11, 503f
                  bge          s9, s4, 491f
                  slli         a1, t5, 11
                  sltu         s6, a0, s6
489:              auipc        gp, 503399
490:              bgeu         s8, a6, 493f
491:              sll          a3, t3, s8
                  xori         s10, a2, -1638
493:              bltu         s8, a0, 501f
494:              ori          t1, s11, 1098
                  xor          tp, t2, a3
                  ori          s3, gp, 1598
                  xori         ra, t0, 556
                  sll          a2, a3, a7
                  or           s3, t2, s10
                  ori          sp, t4, 1989
501:              xor          s8, a3, a2
                  srai         a7, a5, 15
503:              bgeu         s7, a0, 522f
                  xori         a1, s4, 860
                  slti         s9, s5, 98
                  and          s4, s11, t4
                  xori         s1, s7, -1788
                  slti         s8, a4, -804
                  sltiu        a6, s5, -276
                  bne          tp, t6, 512f
                  auipc        a5, 610675
512:              ori          s3, s9, 949
                  sltu         s6, ra, t2
                  slti         t6, s10, -151
                  slti         t0, s8, -50
                  sltiu        s10, s0, -989
                  nop
                  lui          s6, 357983
                  xor          s10, t6, t2
                  beq          ra, t2, 538f
                  lui          s10, 417502
522:              andi         zero, s11, -738
                  addi         s7, a2, -2015
                  add          t4, a6, gp
                  bltu         t5, s5, 528f
                  sltiu        s11, s7, -447
                  lui          t5, 629197
528:              nop
                  add          a4, a5, ra
                  bgeu         s9, t4, 539f
                  srai         t1, zero, 6
                  bgeu         gp, s6, 535f
                  andi         sp, zero, -941
                  slti         t5, a0, -1053
535:              sltiu        gp, t5, -175
                  sub          s10, t1, s3
                  srl          s11, a4, a6
538:              sra          t6, s11, s10
539:              sra          s1, a0, t2
                  add          a6, t6, tp
                  auipc        s5, 399633
                  slti         s8, s3, 1831
                  nop
                  or           t4, a1, t1
                  blt          t5, a7, 553f
                  xori         s4, s4, 1941
                  addi         s3, t0, -882
                  addi         s9, t2, -2004
                  addi         s8, s0, 23
                  xor          s7, a2, a0
                  blt          a1, tp, 565f
                  or           s7, t6, t0
553:              srli         ra, t6, 15
                  bltu         s10, s7, 555f
555:              bge          s8, t2, 573f
                  and          a4, a5, s10
                  andi         a3, t5, -491
                  addi         ra, a6, -809
                  ori          s7, t5, -1086
                  bge          s6, a4, 566f
                  xor          a5, t0, t0
                  addi         s9, zero, 0 #init loop 0 counter
                  addi         s3, zero, 4 #init loop 0 limit
sub_2_7_0_t:      lui          s10, 229258
                  addi         s9, s9, 1 #update loop 0 counter
                  blt          s9, s3, sub_2_7_0_t #branch for loop 0
                  sltiu        a4, ra, 2038
                  bltu         a2, s10, 563f
563:              nop
                  and          t6, tp, s9
565:              lui          t1, 135532
566:              bne          s1, a0, 582f
                  slli         s3, zero, 27
                  xor          s2, t2, t4
                  add          a6, a2, s0
                  beq          s9, a0, 583f
                  sltu         s4, s11, a7
                  ori          s7, t0, -147
573:              sltiu        a6, s4, 1004
                  slli         t4, s3, 6
                  sltiu        t1, t1, -257
                  beq          a4, tp, 580f
                  slli         a6, s0, 6
                  beq          a0, t1, 582f
                  sra          s0, s2, t5
580:              srli         zero, s5, 31
                  srl          tp, s6, a6
582:              xor          a3, a2, tp
583:              blt          ra, tp, 593f
                  bgeu         s10, tp, 595f
                  sltiu        s8, s8, -732
                  sub          a3, a0, t3
                  srai         a7, t3, 30
                  sltiu        a6, a7, -1669
                  addi         s9, t3, -1313
                  nop
                  addi         a6, t6, -1965
                  sltiu        a2, t0, -1545
593:              bge          ra, t3, 597f
                  bgeu         a3, a1, 614f
595:              nop
                  bltu         t4, tp, 606f
597:              beq          s3, sp, 608f
                  add          s11, a0, s9
                  slti         s7, t0, -1846
                  sub          a1, s10, s11
                  ori          t6, a5, -819
                  beq          s11, s9, 614f
                  sra          t1, t5, a4
                  sra          a6, t1, s8
                  sll          a1, a5, s10
606:              srli         s0, a3, 1
                  sra          a4, gp, a4
608:              ori          zero, t4, 1377
                  srl          s6, a1, s0
                  add          s2, s0, tp
                  andi         s2, t6, 187
                  slti         a4, t4, -124
                  or           a7, s8, t3
614:              sltiu        t1, s5, -698
                  add          a1, t0, s3
                  xori         s10, s8, -1492
                  bgeu         a7, s3, 619f
                  slt          s3, a7, t3
619:              srl          s2, t3, sp
                  slli         tp, t6, 11
                  and          s1, t3, a4
                  bltu         s4, a5, 623f
623:              srl          s5, s1, a5
                  blt          sp, s3, 642f
                  auipc        s4, 194994
                  sltiu        s7, s2, 1557
                  slli         s2, ra, 3
                  xor          a6, tp, t5
                  bge          t6, t1, 648f
                  ori          t5, s8, 589
                  beq          t4, s6, 632f
632:              xori         t6, sp, -41
                  sra          s8, t0, sp
                  andi         zero, s6, -1714
                  bne          s2, t0, 638f
                  slt          s3, s10, t0
                  nop
638:              bltu         a7, s10, 646f
                  sub          s11, s4, a1
                  bne          a6, s11, 644f
                  sra          sp, s6, t3
642:              slti         s5, t4, -1969
                  xori         t6, a5, 441
644:              lui          a6, 415776
                  or           gp, sp, t4
646:              sll          t1, s11, t4
                  blt          a4, t1, 662f
648:              bge          s3, tp, 650f
                  bltu         gp, a5, 661f
650:              slt          s1, a2, sp
                  auipc        s4, 163573
                  bge          a4, t5, 653f
653:              or           a4, s11, a2
                  addi         s2, a2, -1976
                  addi         s11, t0, -1819
                  lui          s7, 802438
                  sub          s0, zero, t6
                  srli         a7, t3, 29
                  slt          a7, a1, s11
                  or           s5, s11, s5
661:              andi         a7, s6, -20
662:              sub          s7, s0, tp
                  ori          a4, a0, 546
                  xor          s1, t3, s5
                  bgeu         t2, s4, 673f
                  nop
                  blt          a6, zero, 678f
                  sltiu        s3, s4, -693
                  xor          s0, s1, sp
                  bne          s11, a5, 675f
                  addi         t1, t0, -401
                  addi         s5, ra, 141
673:              xori         s7, t5, -1345
                  sltu         s0, s9, zero
675:              srai         t6, s1, 22
                  sll          s11, gp, a4
                  nop
678:              slti         s8, t3, 468
                  slli         s4, sp, 26
                  srai         a5, t4, 13
                  sltiu        s3, zero, -100
                  ori          ra, a2, -796
                  and          s0, a3, t5
                  slli         gp, t4, 16
                  auipc        s6, 697799
                  sltiu        t5, s1, -462
                  sll          s3, s7, t3
                  slti         sp, s11, 1551
                  bgeu         t0, sp, 691f
                  nop
691:              and          s10, a0, a1
                  blt          a6, t4, 695f
                  bge          t2, s11, 709f
                  andi         s11, t2, -109
695:              xor          gp, t0, a2
                  beq          s6, s2, 700f
                  blt          t6, t2, 707f
                  andi         zero, tp, -388
                  and          s10, s3, a6
700:              srai         a6, s2, 2
                  slt          a2, ra, t6
                  slt          t1, s9, s11
                  beq          s6, s1, 713f
                  xori         s4, s8, 1477
                  sra          s2, ra, zero
                  slli         t5, a7, 12
707:              slli         s11, t5, 11
                  ori          s7, s5, 1148
709:              bge          sp, a4, 715f
                  srl          t0, t1, a2
                  slti         a6, t3, -1560
                  sltiu        t5, a3, 1451
713:              ori          tp, s10, -2027
                  nop
715:              sltiu        t0, s4, -1940
                  srli         s11, s10, 27
                  sltu         s11, s7, s9
                  slli         ra, ra, 0
                  nop
                  slti         a4, s9, 1847
                  xori         t6, s6, -565
                  nop
                  srli         s1, s1, 5
                  sra          t5, s6, a6
                  slt          s10, a1, s4
                  nop
                  blt          s1, s10, 740f
                  beq          gp, a5, 731f
                  bge          a1, t6, 747f
                  auipc        s10, 450775
731:              xor          gp, s5, s5
                  slt          s7, s3, a4
                  slt          a7, s3, s5
                  sltu         t4, s9, a6
                  nop
                  sub          ra, a3, t3
                  bgeu         a0, tp, 757f
                  or           a2, s0, s9
                  and          s11, a3, t1
740:              srl          gp, s9, a6
                  sltiu        a3, t3, 1790
                  and          s10, a4, t2
                  add          s7, t4, sp
                  auipc        s7, 823185
                  srl          s3, gp, s6
                  srli         s9, s2, 2
747:              sra          t4, s3, s2
                  addi         s9, t2, -1399
                  ori          t1, a4, 387
                  andi         s10, ra, -696
                  xor          ra, tp, s6
                  slli         zero, a5, 1
                  slli         t6, s11, 30
                  or           s7, a4, tp
                  bgeu         ra, t1, 766f
                  blt          a1, sp, 765f
757:              andi         a4, a4, -832
                  nop
                  beq          s1, a6, 773f
                  bne          t4, t3, 764f
                  andi         s4, a4, 1987
                  bgeu         s6, t4, 780f
                  lui          a5, 1041881
764:              lui          t4, 511127
765:              auipc        s9, 555191
766:              bge          t3, s9, 767f
767:              nop
                  bgeu         a0, a1, 770f
                  bge          s1, t2, 771f
770:              sub          s3, t6, ra
771:              nop
                  bne          a3, a3, 787f
773:              sub          sp, s7, t4
                  sra          s5, zero, a2
                  sra          gp, t3, t5
                  add          s8, t0, zero
                  blt          s9, a4, 780f
                  auipc        a4, 365929
                  sra          s6, s4, a5
780:              sltiu        t1, gp, -1442
                  xori         a3, s3, -1008
                  sltiu        t5, s3, 1060
                  lui          s1, 290978
                  sll          s10, sp, t2
                  srli         s7, s8, 21
                  sra          gp, t0, s9
787:              srl          s0, s11, a6
                  sub          gp, t2, gp
                  xor          a2, s4, t5
                  lw           ra, 4(t2)
                  lui          s5, 961563
                  addi         t2, t2, 64
                  sra          t0, gp, t6
                  srl          s4, a5, s5
1100:             addi x17, x1, 0
1100:             jalr x17, x17, 0
sub_5:            addi         t2, t2, -28
                  add          s8, s6, a7
                  xori         t5, gp, 1908
                  sltiu        a6, a5, 1077
                  sltiu        s6, t6, -541
                  srli         a7, zero, 26
                  or           tp, t4, a6
                  add          a3, a0, t3
                  sw           ra, 4(t2)
                  auipc        s1, 329525
                  sll          s5, a2, s2
                  slti         s2, a7, 1183
                  slt          s10, t0, s11
                  srl          s8, s8, t0
                  xori         t4, s6, -660
                  xori         s6, t3, 1486
                  sub          zero, t4, a1
                  sra          s7, t6, s4
                  srai         s7, t5, 26
                  and          s2, ra, a6
                  andi         a3, ra, 425
                  lw           ra, 4(t2)
                  xor          s4, gp, t1
                  xor          a5, a7, s0
                  addi         t2, t2, 28
                  lui          s4, 799090
                  or           t5, sp, t6
                  sub          a4, s7, s6
28:               addi x20, x1, 0
28:               jalr x20, x20, 0
sub_3:            xori         t1, s5, 345
                  andi         a6, s9, 1642
                  sll          tp, t0, t6
                  add          zero, sp, t6
                  sltu         a1, s2, ra
                  or           tp, s10, a6
                  addi         t2, t2, -32
                  andi         sp, a2, -275
                  sw           ra, 4(t2)
                  andi         a3, s11, -1310
                  srai         s3, t0, 4
                  xori         s4, tp, -1539
                  add          t0, a5, s5
                  la           s5, sub_5
                  or           gp, t0, s9
                  addi         s5, s5, 494
                  auipc        s3, 1029242
                  add          ra, s10, s8
                  sra          a7, a1, zero
                  nop
                  slti         t0, s4, -956
                  sub          tp, s0, s0
                  sltu         s3, s8, s8
                  srli         a5, a4, 15
sub_3_j6:         jalr         ra, s5, -493 #jump sub_3 -> sub_5
                  srl          ra, a4, t6
                  or           s6, s6, s9
                  bge          a1, a0, sub_3_j7 #branch to jump instr
                  xori         sp, a6, -1866
                  slt          sp, tp, a2
                  nop
                  sltiu        s7, tp, 1791
sub_3_j7:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  auipc        t6, 271963
                  sltiu        gp, s4, 1347
                  sub          s5, s0, sp
                  ori          s1, t1, -1296
                  sub          s10, a0, a3
                  srli         s4, s8, 3
                  slli         a3, s0, 6
                  blt          s7, a7, 15f
                  andi         s6, s6, -1333
                  bne          sp, t6, 19f
                  blt          s3, s11, 23f
                  bgeu         s1, s6, 31f
                  bge          a0, s1, 25f
                  bge          s3, s9, 19f
                  sra          t6, t0, s2
15:               sltu         zero, t3, t3
                  bge          a7, s6, 19f
                  xori         tp, a0, -832
                  auipc        a3, 492374
19:               and          a2, t1, a3
                  sltiu        s4, s3, 1788
                  add          a4, s11, t6
                  srli         a1, t1, 14
23:               srai         t5, a4, 19
                  bne          s5, a0, 31f
25:               addi         zero, gp, -366
                  bgeu         s3, a4, 34f
                  sltiu        ra, a4, 1620
                  sltu         sp, a4, s11
                  bgeu         s7, a1, 34f
                  nop
31:               bgeu         a0, s7, 34f
                  add          zero, s6, tp
                  andi         a5, zero, 1553
34:               nop
                  lw           ra, 4(t2)
                  addi         t2, t2, 32
                  sll          t0, tp, s8
                  slti         sp, s0, 1485
                  andi         sp, a2, -1641
                  sub          s11, s9, a4
                  ori          s6, s3, 395
75:               addi x27, x1, 1
75:               jalr x27, x27, 0
sub_4:            slti         s9, a7, -1079
                  srl          t4, s2, s6
                  addi         t2, t2, -48
                  nop
                  sw           ra, 4(t2)
                  xori         s10, s8, -1145
                  slt          s6, gp, a6
                  addi         a1, a3, 1341
                  sll          a2, t1, zero
                  srai         t4, t6, 0
                  sll          sp, s11, s7
                  addi         a2, zero, -10 #init loop 0 counter
                  addi         a4, zero, 15 #init loop 0 limit
                  sltu         s6, t3, a2
sub_4_0_0_t:      addi         s5, zero, -725
                  xor          a5, s6, a6
                  addi         a2, a2, 1 #update loop 0 counter
                  blt          a2, a4, sub_4_0_0_t #branch for loop 0
                  and          s3, t5, t6
                  ori          tp, t1, 211
                  bltu         a7, t4, 4f
                  xor          s7, tp, a1
                  srai         a7, a5, 27
4:                andi         a4, a6, -1591
                  srai         s4, t1, 24
                  beq          s0, s5, 25f
                  and          s0, a0, a4
                  bltu         s0, t4, 12f
                  bne          a2, tp, 22f
                  bltu         t4, s0, 18f
                  bgeu         s3, s8, 26f
12:               slti         s7, s7, -1244
                  srl          a5, s0, a3
                  ori          s8, t2, 583
                  bgeu         ra, tp, 26f
                  xori         a6, zero, 1309
                  blt          s4, s8, 27f
18:               slt          s8, zero, a4
                  xori         a3, t6, -1570
                  srl          t0, a6, s6
                  srli         s7, t0, 24
22:               ori          s0, gp, -998
                  bge          zero, s11, 32f
                  or           zero, a5, s2
25:               or           a7, s9, a4
26:               sltu         t0, s1, s8
27:               beq          a7, s4, 35f
                  sll          tp, s8, a2
                  srli         a2, a7, 18
                  sltu         ra, s6, a2
                  or           s5, s8, s9
32:               slli         zero, ra, 3
                  bne          s8, a4, 44f
                  xor          sp, ra, s11
35:               ori          sp, t1, 1446
                  xori         t4, t6, -90
                  xor          t5, a1, s0
                  sub          s6, t5, t3
                  or           s5, a4, a3
                  sra          sp, t3, a3
                  sll          gp, zero, s3
                  bge          a7, t0, 56f
                  srai         a6, zero, 4
44:               beq          t5, a6, 56f
                  beq          s5, a6, 51f
                  auipc        s2, 108406
                  sll          s10, zero, a2
                  sub          t1, a4, zero
                  slti         s10, s7, 467
                  auipc        s6, 502096
51:               bltu         ra, a0, 56f
                  bge          s8, a5, 56f
                  bge          t0, s9, 54f
54:               srl          ra, a3, s10
                  ori          s2, t4, -1938
56:               nop
                  sra          a5, s8, a7
                  nop
                  slti         a6, t0, 2043
                  lw           ra, 4(t2)
                  add          t5, s5, tp
                  addi         t2, t2, 48
                  xori         s2, s4, 1032
                  ori          s5, s4, 1869
84:               addi x22, x1, 0
84:               jalr x22, x22, 0
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
.word 0xac2cc86f, 0xea633549, 0xd1a8893d, 0x68684e4d, 0x5f706ed7, 0x243abb7f, 0xdcd40d33, 0x35deb2fa
.word 0xe6e30b22, 0xb18dd188, 0x18cdf775, 0x50fbeca8, 0x5f3cf4a4, 0x7be16cbb, 0x85692c08, 0x21a66ed0
.word 0x28c6cab8, 0xb9fb3f0f, 0x152880c9, 0x6f3701d7, 0xc485d1bd, 0xf08b3f45, 0x0f675457, 0x8dcffcc1
.word 0xf41bf1fc, 0xd6885d78, 0xd7de9e3c, 0xa1e41c8c, 0x15397f35, 0xdd9f4557, 0xf04026c1, 0x90c23006
.word 0x70406dcd, 0xb0590316, 0x36ee4ac8, 0x7ee143dd, 0xc03eddca, 0xfb199dc6, 0xf48fc900, 0x5193f36d
.word 0xc3321644, 0xf09affae, 0xdd806be8, 0x6777ca5c, 0x4dff00d3, 0xa4a1c9d5, 0x12ee9fb3, 0x34f984b7
.word 0x60111fcc, 0x7936f0a2, 0x9e2e77d7, 0x71623283, 0x4c57234a, 0xc437737f, 0x49013026, 0x2806226a
.word 0x14846eab, 0xcf57bab5, 0x742fac7b, 0x3f10cb22, 0xe501ca0c, 0x4485f657, 0xcffaa237, 0xcc716b70
.word 0xc6475afa, 0x65f716b0, 0xf29aefb5, 0x16a5c049, 0x41bc5279, 0x31ce3513, 0x9b2b6d05, 0x4d1c03bb
.word 0x8abd656e, 0x0bb6b5d8, 0x16f2cff9, 0x1b175f65, 0x7bc8ec6f, 0x7e8cef18, 0x941626c6, 0xc9a35c05
.word 0xa9e394e0, 0x339fbc01, 0x5f124297, 0x9c0005fb, 0x4dca28d5, 0xc82ec62b, 0x3190cec5, 0x378334ff
.word 0xd5236439, 0xd8750081, 0xaae435fb, 0x1759b739, 0x6610b2b6, 0x360dc4e1, 0x01a92085, 0xb51f27ec
.word 0xc2143fad, 0x5a1209f0, 0xfcd0828a, 0xd917ae4a, 0xe53eeeda, 0x10a11868, 0xb363be08, 0xb8a3b9f6
.word 0x41674685, 0xa791d210, 0xef90a82a, 0xee313aae, 0x2152becf, 0x0f61ab49, 0x9e44d711, 0x33fd8c54
.word 0x86682781, 0xb6aed648, 0x86ac5cdc, 0x5f573cbb, 0xe8dc4374, 0xeba3f77f, 0x2c40e8a5, 0x3fc63858
.word 0xbb7fe135, 0x7042cf8c, 0xf22705f2, 0xad95a235, 0x20605004, 0xfacec922, 0xcb9db926, 0x2e3e41dc
.word 0x97e69976, 0xc89780aa, 0x8f91c816, 0x42fcf007, 0xb9d0543a, 0x591b8f4c, 0xb908048c, 0x40f2e02e
.word 0x4f448e43, 0xfce56341, 0xc33cd0b7, 0xf815e603, 0x45ba2aa9, 0x31bf42eb, 0x580bd92c, 0x08806fd0
.word 0x4936d23a, 0x452b8860, 0x32f71bf9, 0xf47413c1, 0x83fde519, 0x5fd4b9b2, 0x4e3c9acf, 0xb255d18c
.word 0x769f6191, 0x33914d38, 0x55fbd19e, 0x3666271c, 0xf95923cc, 0x9ce3672f, 0x7c729c9b, 0x817863a2
.word 0x0e2f87a3, 0x82213b4b, 0x2c09e74d, 0xec194ce5, 0xa56821da, 0x1a01b539, 0xd663ce9c, 0xbfe0097a
.word 0xe236b83b, 0xd07352a6, 0xec9a1ac0, 0x793ffc0e, 0x8064cdaa, 0x09db17fa, 0xa06f6bc8, 0xa15a7218
.word 0x900806b1, 0xa60d81e9, 0x2023413d, 0xf1eca75f, 0x9749b77b, 0xc9cd4962, 0x6d50ff63, 0x07edba3b
.word 0xe4e9bf02, 0xf269055b, 0x9f8bfb33, 0x4b950722, 0xa907c4d3, 0xdfaedd91, 0x5ec21168, 0xf22d02cc
.word 0x146e1a6a, 0x814d2f2f, 0x35eb4350, 0x44062022, 0x3c90c0cc, 0x469bb327, 0x47c032f6, 0x03c28d84
.word 0x64cd10ab, 0x26782056, 0x1885749b, 0x59175b79, 0xc739a3be, 0x2c64bfa9, 0x75cf2208, 0xbc3c3b84
.word 0xac39b7cc, 0x94b096f7, 0x717a2534, 0x3b6af39a, 0xc50be6e8, 0x12171b12, 0x08b81413, 0xc6d777d2
.word 0x5c79186f, 0x8b717521, 0x251ff1ff, 0x5afeec42, 0x52d0bd3a, 0xb5783303, 0x6927a982, 0xc7913f6b
.word 0xb1ad7af7, 0x3b2f228e, 0x924a8743, 0x0cc8c96b, 0xb22890e3, 0xb46f7419, 0x3bda57eb, 0x16941b26
.word 0x1fb3ddaa, 0xe72bdb4f, 0x41d23da0, 0x8fdc5dc7, 0x619d15b3, 0xc3d59c84, 0xe74c8d8c, 0xb2f7d61e
.word 0x4ed79a0f, 0x13e01d4e, 0xbf57bbc7, 0x30d1360a, 0xa5bf693d, 0xbd960db0, 0x4bd784e6, 0x1f7ac9a9
.word 0x04124b87, 0x2dd5071b, 0xbee9479f, 0x0fef4c42, 0xb4f7dacf, 0x65963fa6, 0x80117c17, 0xea3cdba9
.word 0x8ecfccec, 0xd726d80d, 0xb8bcd19f, 0x844bc331, 0xfef7fc31, 0x220ef860, 0xeb04085b, 0xc4fcea19
.word 0xee600a71, 0x600bf449, 0xdd0a84cf, 0xb7a26307, 0xc2053917, 0x7785f29a, 0x3eda3eab, 0x42aa12e9
.word 0xb86d085d, 0x0a8f149f, 0xeb6f0b00, 0xf55ae496, 0x5d40727a, 0x38ce903e, 0x52865129, 0x7d54aa00
.word 0xf9dfd240, 0xda09b9bc, 0x6ee51013, 0x7d2c1ce3, 0xa0326ed1, 0x9ef1e3c5, 0x2bde1222, 0xa1b4abc8
.word 0x891bb187, 0x59810c20, 0x99a4f44a, 0x253454f1, 0xbfe926d8, 0x77211801, 0x5a991c58, 0xf8dd19c3
.word 0x74d1290e, 0xea329b28, 0x19e87cf3, 0x963999fb, 0x8e2bc23b, 0x2815de06, 0xe1a3af4b, 0xbe5bfc60
.word 0x7c9cf6c8, 0xe781b97b, 0xbc5f9894, 0x9a7b3be9, 0xfe25a84d, 0x4ec85e8f, 0xbc666885, 0x3157d5d3
.word 0x65c30e2e, 0x7485039b, 0xf10f47a1, 0x7daac574, 0x89debf5f, 0xedd2e761, 0xd04ce185, 0x7a957a77
.word 0x44b3d09c, 0x61773d8e, 0x89224707, 0x7ab55674, 0x84ab091a, 0xb15524c1, 0x88e0a2c8, 0x9e1a64cb
.word 0x13821005, 0x8019e759, 0x8efd1364, 0x5ae5e2dc, 0xff9672db, 0xab67a993, 0x4b9c1354, 0x43305dd2
.word 0xa593167c, 0xd3e15c69, 0xa7158ef9, 0x015acf80, 0x15ebd04f, 0x18855523, 0x2e4203b5, 0xa0926745
.word 0x348dcca4, 0x4b2093f9, 0x4a0738d3, 0x60b8b1b9, 0x94eb7b7f, 0x225a930b, 0x8d380c94, 0x9c1cadc0
.word 0xa2a9aedc, 0x19b5af63, 0x5f05459b, 0xd4815324, 0x55d44585, 0x97fe0005, 0x514ead4a, 0x654ae92b
.word 0xc5be9e93, 0x37e531f0, 0xc01eb2c6, 0xa46d6746, 0x93a36feb, 0x0f11b3ac, 0xad030163, 0x3e7f8482
.word 0x4685e37d, 0x4fd9868f, 0x55dfc319, 0xc03c0432, 0x4655011e, 0xfc82e4d4, 0xfb706c6c, 0xd2813006
.word 0x6dc63304, 0xc25a5a4a, 0xa84ab98c, 0x323416a7, 0x5e6be5a5, 0xc4640790, 0x86ba7dfe, 0x4aee9354
.word 0x91b47061, 0xf52e47a1, 0x1c1d5dc3, 0x0718d7c8, 0x1d2613ef, 0x1ad7e063, 0x8af22f10, 0xcf4cf08f
.word 0x2fa5eae8, 0x37813f0a, 0xd841cd73, 0x2b387b96, 0xc83bb124, 0xd334ba44, 0xdf1f7158, 0xe8de150d
.word 0x98a5a236, 0x9f6480e2, 0x27a14cfb, 0xff5765e8, 0xc9181f80, 0x0094b579, 0x80746e60, 0x3fc1fdbb
.word 0x65fa1e31, 0x2cde7665, 0x06fd1707, 0x258959ea, 0x4a609cf6, 0xdd64b6c8, 0xfb844c59, 0xfcf59e47
.word 0x96b116e9, 0x866ddbc7, 0x1249dfd7, 0x8598520b, 0x529b3d2a, 0x6bb3f2e1, 0x79809b24, 0x52f2b6a0
.word 0xd8e9c5c7, 0x0afefc4c, 0x5af1bdc7, 0xaafdddf8, 0x8f7574fd, 0xd98576b9, 0x40fb3aec, 0x6ad2d44c
.word 0xf0011cfc, 0x240f9996, 0x5e58b01b, 0x1c829a97, 0xa4345d72, 0xe535bf91, 0x58f89fa6, 0x99b7e419
.word 0x49a81d14, 0x5013c1a3, 0x586ba9d9, 0x2fe0059f, 0xad3906ac, 0xf2ebe328, 0x7e68b6ca, 0xeed480fd
.word 0xa016ba35, 0x25a47bd4, 0xe9aea503, 0x55ca34e9, 0x4ded5f26, 0x32724c94, 0xeab2fe82, 0x6b367b40
.word 0x395be2c8, 0x94f3f20d, 0x75c508db, 0xecca1b63, 0xf779a26d, 0x31726e7f, 0xfe082e98, 0x67326f79
.word 0xf481447c, 0x4b4b3db9, 0x528202db, 0x8de2ec7c, 0x3dcd0d2b, 0x3245cbf2, 0xd976aa4c, 0x907a0c02
.word 0x6695e60a, 0xf99b2800, 0x92bf9e29, 0x030b8e8b, 0x40c695b2, 0xb5df5ce3, 0xb14b9012, 0xbd8a6444
.word 0x3cf8732a, 0x1d2aa670, 0x818fbfd5, 0x3ccb4ce5, 0x7893cc72, 0x4fc84a4c, 0xda52768a, 0x18b8828d
.word 0x83540810, 0x8306bf5e, 0xa07aad43, 0x31541c67, 0xb771291f, 0xe58df512, 0xede17a99, 0xaa2e86f1
.word 0x8d2a94cd, 0x72e57309, 0x505e73c6, 0xbf3b8114
.section .region_1,"aw",@progbits;
region_1:
.word 0x505a9332, 0x51ed832d, 0x3757d7dd, 0x30b4daa1, 0x39dcff5d, 0xf309952e, 0x383d065e, 0x69fbf682
.word 0xf5078a35, 0xa98b617b, 0x12b2fe8c, 0x3a00effe, 0x540d86d6, 0x70ea6ded, 0x63bf4841, 0xfa2bd230
.word 0x35fe1ca0, 0x68c04db9, 0xcc183849, 0x1ac79d44, 0x4dd52947, 0x3cdf80c5, 0x5e6ce631, 0x60ed728a
.word 0xabc137ea, 0xdd3c6967, 0x8b01046f, 0x553e01c6, 0x7c4516c8, 0xf5f4a410, 0x1c5d798f, 0x5af585ea
.word 0xae88cdab, 0x6885b078, 0xa3c399f1, 0x2c1f3da4, 0x1e6e7e54, 0x7d933156, 0x3d63307a, 0x20fa42ec
.word 0x26a04c4f, 0x35305b5c, 0x165ff75f, 0xf397fdc9, 0xee746919, 0x49f96beb, 0xd3e7b3ac, 0x811f1a28
.word 0x2adb5bb1, 0xb1a07d17, 0x9404103c, 0xf9308cca, 0xdd5c7665, 0x11206d03, 0xc2040485, 0x2151b45d
.word 0x64c7540a, 0x6c3de828, 0x19dc1cd1, 0xd859cc79, 0x0b4869de, 0x93849606, 0x890d72ed, 0x7f5fb6e5
.word 0x9d0c5aa4, 0x1e801167, 0x35528c5f, 0xf380e0ff, 0xe69a857a, 0x85151dcf, 0x92613fc0, 0xe98efdc0
.word 0xa7100ef3, 0x84927a9b, 0xb2613613, 0xc677122e, 0xf8078360, 0xec82ca09, 0x937046dd, 0x9e65b4eb
.word 0x66ca731c, 0xc2aa03d7, 0xddff2020, 0xb8e59c19, 0x7c6a81b1, 0x3d92f3c7, 0x47e18b6f, 0xdf223957
.word 0xe396ac1e, 0x6fb1890c, 0xebc9e91a, 0x9a38b7b3, 0x39eef33c, 0x25269bb0, 0x92a84f80, 0x3f6bae4e
.word 0x4ba960d6, 0x6467937b, 0x143e5b56, 0xa5702e7f, 0x27c5c959, 0x7508e7cb, 0x2565cc3c, 0x0a97c41e
.word 0xde4d0519, 0x25441306, 0x587823f3, 0x1692f0e6, 0xec710215, 0xc8f495de, 0xd16daa24, 0xc2adba0f
.word 0xbf0dea45, 0x5438e239, 0xbe562dbb, 0x4d4860a0, 0x4d8ad9a4, 0x618f7e03, 0xc8cb8948, 0xeb06f67d
.word 0x2d16c048, 0x6a4718b4, 0xb5f6e8cc, 0x28df8b10, 0x6605a200, 0xd137bfa8, 0x1b9aadd8, 0x61bec208
.word 0x87672bb0, 0x3e6d061d, 0x51971263, 0x1af37069, 0xd2279517, 0x35f27363, 0xe31d196c, 0xf765d0c1
.word 0x91ff1840, 0xcf3da53e, 0x6f3d53be, 0xd4490742, 0x1f3aac54, 0x76d6bfad, 0x03bd8ce0, 0xe964654e
.word 0x16d25011, 0x8d151060, 0xcc4169a5, 0x70cc23f2, 0x204ad370, 0x49b3a941, 0x70a3efd3, 0x7893caeb
.word 0x4f82ff28, 0xeb01a0f2, 0x0ec4a62f, 0x274dcbf8, 0xf42600cd, 0x7e0926a3, 0xc3ea92f4, 0x30ebcce7
.word 0x9f35f632, 0x304b01d7, 0x7bbbd5e9, 0xabbe7ac8, 0x9c30e8d1, 0x85a246f6, 0xa29e80d9, 0xce60cfc5
.word 0x7d8bfe7a, 0xd123c07a, 0x58ea8b45, 0xf97de2f9, 0x37e2e0a5, 0xa691f345, 0x6d542e0a, 0x22f38421
.word 0x4099179d, 0x252a8b69, 0xe26111f6, 0x633f2ad3, 0xe012313d, 0xe0d01f15, 0xb7e5a72d, 0x1ebfbd21
.word 0x006a9823, 0xebc5ea03, 0x3026eb7c, 0x1db6d219, 0x0d5b531f, 0x2e72d3a5, 0xc6ab0ab9, 0x7b4d38c9
.word 0x0fe8c7b5, 0xf96c39b2, 0x5a02fdba, 0xca026fca, 0x14274d71, 0x0f054e03, 0xe4b6fae4, 0x3de33f35
.word 0x8231f9a1, 0xd6105fb4, 0x10533748, 0x92a378f2, 0x6a2a26dc, 0xf6eb4da1, 0x6540affa, 0xa7a1d5b3
.word 0x45955802, 0x15fb963d, 0x80dc2d68, 0xd689388f, 0x9043736e, 0x6d6e6656, 0xdd93ecee, 0xe3271d71
.word 0xc877e00c, 0xa421acfd, 0x9391cb88, 0x05dbdcbb, 0xb12a463a, 0x6b0a543a, 0xf6d14bba, 0xd50cb9b7
.word 0x6aeab2f2, 0x6cc45998, 0xc52f0287, 0xf8258cdc, 0x8356e831, 0x60cc51b9, 0x205d8381, 0xd2be6be6
.word 0x70592cb4, 0x87fe7904, 0x59262235, 0x2e2915f6, 0x221e5a79, 0xe5318f0e, 0x870a9b98, 0x31cffdf9
.word 0xbaff25a7, 0xa2c96c7d, 0x1244e4d2, 0x12471147, 0xc8c42b0c, 0x8b033582, 0x59e3c80a, 0x5ef9f33f
.word 0x6922e23d, 0x7e0df449, 0xfaa8ba89, 0x6cf38e06, 0x7f796f53, 0xde3b8d0d, 0xaa2ce171, 0x603ec96c
.word 0xa6455b08, 0x93b2c1b3, 0x93f18ab0, 0x98d76994, 0xbf906900, 0xd1c00863, 0xba7f0107, 0x05249488
.word 0xb991c347, 0x66ea33b7, 0x53ec80a2, 0xe667c5c0, 0x2013d6f4, 0x86adcf0b, 0x1b303f5f, 0xf450419f
.word 0xd9382fe5, 0xdf227c1d, 0x239811e6, 0x20b15c94, 0x3cbc0b73, 0x939e69cd, 0x1156dcaf, 0xdcfe967d
.word 0xb56558cc, 0x1f1dd602, 0x1ae0c7ff, 0xa287909c, 0x3d9e2093, 0xeb111239, 0x7b4af186, 0x1d676b1e
.word 0xed6c68de, 0xf860ec1f, 0xa55a47eb, 0x8636bab1, 0xac5eb805, 0x2c33c85c, 0x8f4c3bef, 0xca9b5f34
.word 0x41ac0119, 0xf9e79b9f, 0x5342d77f, 0x94998954, 0x57eac796, 0x235b2ec8, 0x037527c5, 0x884a97cc
.word 0x2797122e, 0x8fb88377, 0xcca28854, 0x060cf3a4, 0x354c38c9, 0x41fde77d, 0xfa0def6b, 0x6bc0f797
.word 0x6e248817, 0x1606a053, 0x1a7b7a73, 0x7f9ff748, 0xa1127b19, 0xf3582dde, 0xae07e11b, 0x22e4ac93
.word 0x40bf9285, 0x149dcf9b, 0xc42a3ca7, 0x717e6ff6, 0x5cdc18bd, 0x7132ea2a, 0xe5a503fa, 0x381a5245
.word 0xfffac671, 0x8be741b7, 0x34a76335, 0x19332273, 0x852fbee9, 0xb9a7168d, 0x27c58682, 0xcc59f5db
.word 0x569d3437, 0x7f3e5af6, 0xa9da8a18, 0xb9418b1b, 0xea493822, 0x11e7c256, 0x63b11efb, 0x9f857ad2
.word 0x9b4ad06d, 0xb473400d, 0xb3785b52, 0xbc893dc7, 0x3d377be8, 0x98973298, 0x47494381, 0x4338aeaf
.word 0x016568d8, 0xfd76fe03, 0xafa5744e, 0x0c25b9dd, 0x21218c59, 0xf13feeba, 0x587bff41, 0x12172df9
.word 0x2dd54cda, 0xe5c25be2, 0x1bdb939f, 0x2054369a, 0x4684efbd, 0xaca3c98a, 0xcd63ad2f, 0x79407dcd
.word 0xab3f44ec, 0xf609585f, 0x4c516777, 0xc5441198, 0x218cf032, 0x02a3d34e, 0x8748e7f8, 0xb2f5fdc9
.word 0x5dd86d1c, 0xe96aab3a, 0x7338c92c, 0x460760d8, 0xfdf18105, 0xf6662399, 0xbc806291, 0x4244da52
.word 0xed387aab, 0x7dcf7b2e, 0x8dbb9a19, 0xda3c96ca, 0x3b8b9a45, 0x46260885, 0x9129e4b0, 0x3f1aacbc
.word 0x94763f8f, 0x3bc657f1, 0x531cafe9, 0x8652fd94, 0x2fece858, 0x1eb4c8f5, 0xea1e0938, 0x6315b881
.word 0x4a3e358a, 0x6d08c931, 0x3ceb5e80, 0x83db6a9e, 0x054aeeba, 0x74d25b81, 0x28ccdd0a, 0x63f5fb7f
.word 0x3e32d057, 0xb2a8e7fe, 0xc4f439d2, 0x05824989, 0x308c134f, 0xd0ba22e4, 0xefe688c1, 0x7dc6524c
.word 0x686749d9, 0x5fb6d49d, 0xa73eff35, 0x697dd01b, 0xc7617942, 0xa0f645d8, 0xd8a6c2b1, 0xebc3ab36
.word 0x1072758f, 0xb640c801, 0x487abd20, 0x4a15f6d5, 0x1a618326, 0xde98e8de, 0xbf946d2e, 0x5234015e
.word 0x587e76ae, 0x354e5cb5, 0x18cd7df5, 0xe1ae1683, 0x2aaa13d2, 0x874e3203, 0x4df64dd2, 0x755a7122
.word 0xb962fb09, 0xb8fbab61, 0x79ea57cb, 0xb138d6d3, 0xd9b6c08d, 0xea2bdb35, 0x3c0d738a, 0x9b717e8d
.word 0xc2b8edd2, 0x33612e48, 0x1669d862, 0x8309da32, 0x2f421a72, 0x9efdad7b, 0xc626bcd0, 0x04dd0620
.word 0x5333e041, 0x258a6d3c, 0x4647a108, 0xab944bb6, 0x3e7c1780, 0xb62585bf, 0x315d61da, 0xf4574ae1
.word 0x049f5739, 0x8465ed54, 0x6ec6e9b1, 0xbe4ff20c, 0x3d10cd55, 0xef0adaa8, 0x51aa2a66, 0xf0562420
.word 0xd68d15e9, 0xefdc6901, 0xe1690509, 0xedfa3dec, 0xd1f2039d, 0xeb5e277c, 0x8df1fc2f, 0xa282c3c0
.word 0xe5f9c931, 0x28723677, 0xe32d6165, 0xe5f3316b, 0xfd20d99c, 0x193cb320, 0x477e128e, 0xe40e31ff
.word 0x23c2df29, 0xb6487cde, 0x1003e79f, 0xfa3fc37b, 0x646f700c, 0x47dae498, 0x37b8de40, 0xca9cb162
.word 0x29028c87, 0xacac07e8, 0xc03d4660, 0x9b6c284e
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_2:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_3:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_4:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_5:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_6:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_7:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_8:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_9:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_10:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_11:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_12:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_13:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_14:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

mmode_intr_vector_15:
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 0x1f
                  beqz x29, 1f
                  j mmode_intr_handler
                  1: la x10, test_done
                  jalr x0, x10, 0

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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x27, 0x3 # BREAKPOINT
                  beq x29, x27, ebreak_handler
                  li x27, 0x8 # ECALL_UMODE
                  beq x29, x27, ecall_handler
                  li x27, 0x9 # ECALL_SMODE
                  beq x29, x27, ecall_handler
                  li x27, 0xb # ECALL_MMODE
                  beq x29, x27, ecall_handler
                  li x27, 0x1
                  beq x29, x27, instr_fault_handler
                  li x27, 0x5
                  beq x29, x27, load_fault_handler
                  li x27, 0x7
                  beq x29, x27, store_fault_handler
                  li x27, 0xc
                  beq x29, x27, pt_fault_handler
                  li x27, 0xd
                  beq x29, x27, pt_fault_handler
                  li x27, 0xf
                  beq x29, x27, pt_fault_handler
                  li x27, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x27, illegal_instr_handler
                  csrr x27, 0x343 # MTVAL
                  1: la x10, test_done
                  jalr x1, x10, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x10, write_tohost
                  jalr x0, x10, 0

instr_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
