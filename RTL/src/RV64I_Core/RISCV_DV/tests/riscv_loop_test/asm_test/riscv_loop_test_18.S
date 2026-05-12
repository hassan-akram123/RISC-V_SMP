.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 1
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x6
                  li x1, 0x80000000
                  li x2, 0xf6c736c8
                  li x3, 0x0
                  li x5, 0xf9cfcd44
                  li x6, 0x80000000
                  li x7, 0x3a93ab0f
                  li x8, 0x80000000
                  li x9, 0xb51c4129
                  li x10, 0x0
                  li x11, 0xb
                  li x12, 0x0
                  li x13, 0x52098942
                  li x14, 0x3e411ed7
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0xfe35440d
                  li x18, 0x0
                  li x19, 0xf1949ffd
                  li x20, 0x6124774f
                  li x21, 0x5
                  li x22, 0x80000000
                  li x24, 0x4eb806dd
                  li x25, 0xd
                  li x26, 0x7c3cabd3
                  li x27, 0xcf1b970
                  li x28, 0x20c0c1cc
                  li x29, 0xf92c663e
                  li x30, 0x80000000
                  li x31, 0xd
                  la x23, user_stack_end
main:             xor          s0, zero, t4
                  auipc        s1, 62976
                  la           t1, sub_1
                  addi         t1, t1, 381
                  auipc        s1, 223733
                  slt          t6, s4, tp
                  slti         s8, t4, 1448
                  bge          s9, t2, main_j2 #branch to jump instr
                  nop
                  slti         t4, t2, 1501
main_j2:          jalr         a4, t1, -380 #jump main -> sub_1
                  addi         s10, zero, -6 #init loop 1 counter
                  srai         t3, a1, 1
                  addi         s2, s8, -1976
                  nop
                  addi         gp, zero, -18 #init loop 1 limit
main_0_1_t:       xor          s3, a6, t0
                  sltu         s3, s0, s7
                  addi         s10, s10, -6 #update loop 1 counter
                  nop
                  sll          t1, s7, t3
                  addi         s1, zero, 10 #init loop 0 counter
                  slti         s3, t4, 202
                  nop
                  addi         s8, zero, 7 #init loop 0 limit
                  lui          a2, 597245
                  slt          t0, t3, s5
                  and          a3, a4, a6
                  nop
                  srai         s5, sp, 9
main_0_0_t:       addi         t4, t3, -1377
                  sltu         s2, a3, s2
                  slt          s6, s0, tp
                  ori          t3, s10, 957
                  slt          t3, s7, tp
                  sub          sp, a0, a5
                  addi         s1, s1, -5 #update loop 0 counter
                  add          ra, t3, zero
                  srai         t3, a4, 3
                  sltiu        s11, a0, -871
                  xori         a0, s0, -1210
                  bgeu         s1, s8, main_0_0_t #branch for loop 0
                  sub          s2, zero, s10
                  srli         t3, gp, 26
                  bne          s10, gp, main_0_1_t #branch for loop 1
                  sltu         s9, a5, s8
                  sra          s2, s10, a2
                  auipc        t3, 743942
                  slli         zero, s6, 3
                  srl          s3, sp, a3
                  sltu         s3, s6, t3
                  srl          t2, s11, s5
                  xori         zero, a7, -1155
                  addi         s2, a5, -1171
                  add          a4, s0, t2
                  ori          a3, s0, -1899
                  slli         a2, t6, 10
                  bgeu         gp, t0, 31f
                  or           a2, s8, t3
                  ori          sp, s7, -85
                  nop
                  nop
                  sltiu        s10, a0, 736
                  and          a4, s4, s9
                  xor          t6, s8, gp
                  slt          s10, s2, t1
                  la           s11, sub_1
                  slt          s0, t2, s0
                  nop
                  addi         s11, s11, -1020
                  add          t4, s3, s3
                  andi         s1, t4, 828
                  add          s3, gp, a2
                  nop
                  nop
main_j1:          jalr         a4, s11, 1021 #jump main -> sub_1
                  add          s6, a4, zero
                  sra          a4, t6, s5
                  bgeu         t4, a4, 29f
                  bgeu         t1, s6, 32f
                  sra          s1, ra, s0
                  bne          t5, t4, 35f
                  nop
                  blt          s0, t1, 39f
                  slti         s0, a6, 803
29:               bgeu         a2, s0, 39f
                  beq          s10, s0, 39f
31:               sll          t6, s10, s3
32:               add          s2, s10, t4
                  lui          a1, 870308
                  srai         t5, a1, 17
35:               srai         a7, tp, 24
                  slt          a7, tp, s8
                  bne          sp, s0, 39f
                  bgeu         s1, s3, 39f
39:               srai         t1, s2, 24
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sll          s9, t6, t3
                  sltu         s3, gp, t1
                  addi         s7, s7, -32
                  ori          s9, zero, -467
                  slti         s2, a1, 1550
                  srli         s1, tp, 19
                  addi         s10, s0, -1404
                  slli         t0, t0, 28
                  sw           a4, 4(s7)
                  andi         gp, t4, 1993
                  ori          s8, t6, 407
                  sltiu        ra, zero, -1452
                  la           t1, sub_4
                  addi         t1, t1, -302
                  slli         s11, t4, 21
                  lui          ra, 100071
                  blt          t5, t1, sub_1_j3 #branch to jump instr
                  sltiu        a3, a6, -935
                  sra          a7, s7, s8
sub_1_j3:         jalr         a4, t1, 302 #jump sub_1 -> sub_4
                  sltu         ra, s5, a7
                  lui          s9, 760604
                  sra          s11, s7, s2
                  srl          a4, s6, a7
                  sub          s4, s4, s7
sub_1_j4:         jal          a4, sub_2 #jump sub_1 -> sub_2
                  or           a3, s11, a1
                  or           a7, sp, tp
                  slti         s5, s2, 538
                  andi         a7, a3, -264
                  bne          t3, a2, sub_1_j5 #branch to jump instr
                  slti         s0, s8, 553
                  srai         s8, s7, 2
                  lui          s5, 769612
                  slti         zero, t5, 594
                  sltiu        s8, s4, 401
sub_1_j5:         jal          a4, sub_3 #jump sub_1 -> sub_3
                  la           gp, sub_5
                  addi         gp, gp, 400
                  bltu         s11, a0, sub_1_j6 #branch to jump instr
                  sub          ra, s7, a7
                  srai         ra, a5, 19
                  sltiu        a1, s3, -475
                  sltiu        t1, s0, -2018
                  ori          t5, s9, -316
sub_1_j6:         jalr         a4, gp, -399 #jump sub_1 -> sub_5
                  addi         s1, zero, 0 #init loop 0 counter
                  slt          gp, s6, sp
                  slt          s0, s1, t0
                  addi         s5, zero, 3 #init loop 0 limit
sub_1_0_0_t:      and          t6, s11, a0
                  sll          a2, s6, s0
                  nop
                  addi         s1, s1, 9 #update loop 0 counter
                  srli         a1, a3, 26
                  blt          s1, s5, sub_1_0_0_t #branch for loop 0
                  sub          ra, s6, s2
                  srai         a2, sp, 23
                  lui          a7, 143236
                  slli         s11, s8, 10
                  xori         ra, s7, -617
                  srli         s6, ra, 30
                  bltu         s6, t1, 22f
                  lui          s10, 984876
                  bltu         s1, t4, 19f
                  srl          a2, s2, ra
                  sub          s1, ra, a6
                  bgeu         t3, a1, 23f
                  slt          t1, ra, zero
                  sltiu        s9, s2, -695
                  addi         t5, gp, 1094
                  andi         s10, t4, -1955
                  sltiu        s8, s11, -960
                  slt          a3, s5, t5
                  addi         s8, gp, -237
                  slli         s10, sp, 23
19:               and          a4, t5, t1
                  ori          a7, sp, -694
                  xor          s2, s10, s5
22:               sltu         a2, s4, s5
23:               or           t0, s4, ra
                  ori          t4, t0, -1954
                  srli         t1, s6, 28
                  ori          a5, s11, -2012
                  xori         ra, a7, -199
                  slt          s0, s10, a3
                  bge          t0, a2, 49f
                  slt          t3, a4, t5
                  auipc        t5, 50793
                  beq          s1, s5, 52f
                  bge          s8, s11, 49f
                  slli         t5, t2, 10
                  bgeu         s4, s5, 43f
                  addi         t0, s5, -1795
                  slti         ra, t6, -854
                  sltiu        t6, t2, 1825
                  slt          ra, s7, ra
                  ori          s11, s3, -502
                  andi         s8, ra, -354
                  beq          s2, ra, 49f
43:               srai         sp, a3, 3
                  slti         a3, t5, -973
                  addi         s3, t4, 523
                  slt          a1, t1, a2
                  srl          a7, a6, sp
                  srai         a0, s1, 3
49:               nop
                  xori         s1, t3, -449
                  sltiu        gp, zero, 762
52:               slt          a5, s3, t1
                  beq          ra, a5, 54f
54:               slti         ra, s0, -1784
                  addi         s4, a7, 1658
                  lw           a4, 4(s7)
                  lui          s2, 321910
                  addi         s7, s7, 32
                  sll          s3, s0, a3
                  srai         t6, s1, 7
118:              addi x29, x14, 0
118:              jalr x29, x29, 0
sub_2:            srl          s10, t4, t1
                  srl          t6, t4, ra
                  nop
                  addi         s7, s7, -40
                  add          s9, a0, tp
                  sub          t5, s8, a7
                  andi         s9, t4, 1722
                  lui          sp, 13484
                  sll          s10, t5, s0
                  sw           a4, 4(s7)
                  lui          gp, 77752
                  addi         t4, s10, -2009
                  addi         s1, zero, 9 #init loop 0 counter
                  addi         t1, zero, 9 #init loop 0 limit
sub_2_11_0_t:     sltiu        ra, s8, 672
                  addi         s1, s1, -1 #update loop 0 counter
                  bgeu         s1, t1, sub_2_11_0_t #branch for loop 0
                  addi         a4, a5, -1578
                  addi         t1, zero, -2 #init loop 0 counter
                  add          a1, s5, t4
                  addi         s9, zero, 14 #init loop 0 limit
                  sltu         t2, a6, t3
                  sll          t0, ra, gp
sub_2_6_0_t:      xor          a7, tp, s9
                  ori          s5, tp, -505
                  addi         t1, t1, 2 #update loop 0 counter
                  sub          a0, a4, s4
                  addi         s0, tp, 1644
                  lui          t4, 531022
                  srli         s0, t0, 9
                  nop
                  blt          t1, s9, sub_2_6_0_t #branch for loop 0
                  srli         sp, s11, 12
                  addi         a5, zero, 8 #init loop 1 counter
                  sltiu        s5, s11, 2013
                  or           a2, t2, zero
                  sltiu        a7, t0, -1115
                  addi         s9, zero, -8 #init loop 1 limit
                  addi         a4, s4, 625
sub_2_13_1_t:     and          s10, s10, t0
                  addi         a5, a5, -1 #update loop 1 counter
                  addi         t0, zero, 7 #init loop 0 counter
                  srai         s11, s1, 17
                  addi         s4, zero, 4 #init loop 0 limit
                  lui          ra, 22085
sub_2_13_0_t:     addi         t2, s4, -614
                  slli         s2, s7, 12
                  addi         t0, t0, -3 #update loop 0 counter
                  sll          t5, s1, t6
                  bgeu         t0, s4, sub_2_13_0_t #branch for loop 0
                  beq          a5, s9, sub_2_13_1_t #branch for loop 1
                  sub          gp, s11, t1
                  addi         s6, zero, 8 #init loop 1 counter
                  addi         a4, zero, -16 #init loop 1 limit
                  sll          a3, t5, tp
sub_2_4_1_t:      auipc        t0, 751133
                  addi         s6, s6, -8 #update loop 1 counter
                  lui          a1, 915721
                  addi         s10, zero, 9 #init loop 0 counter
                  addi         a2, zero, 7 #init loop 0 limit
                  srli         t6, s7, 2
sub_2_4_0_t:      lui          a7, 132596
                  addi         s10, s10, -6 #update loop 0 counter
                  xori         s8, s9, 1958
                  bgeu         s10, a2, sub_2_4_0_t #branch for loop 0
                  beq          s6, a4, sub_2_4_1_t #branch for loop 1
                  add          t2, s5, t3
                  addi         t6, zero, 10 #init loop 0 counter
                  addi         gp, zero, 7 #init loop 0 limit
                  addi         t2, tp, -295
sub_2_12_0_t:     lui          t2, 800173
                  or           s10, s8, a2
                  sra          s4, s11, s2
                  slti         a7, a5, -916
                  addi         t6, t6, -6 #update loop 0 counter
                  add          t4, s4, s8
                  srli         t1, a7, 19
                  sltu         s3, t1, gp
                  andi         s6, ra, 288
                  slli         a2, t2, 7
                  sltu         a4, a3, s2
                  bgeu         t6, gp, sub_2_12_0_t #branch for loop 0
                  slli         t3, tp, 27
                  addi         s11, zero, 8 #init loop 0 counter
                  addi         s6, zero, 9 #init loop 0 limit
sub_2_10_0_t:     auipc        s4, 252696
                  xor          a7, s9, a3
                  xori         t4, tp, 1352
                  sra          s3, gp, s10
                  sltiu        ra, ra, -432
                  addi         s11, s11, 5 #update loop 0 counter
                  slli         sp, s3, 9
                  or           a7, s10, sp
                  add          t0, s9, t5
                  slti         zero, s0, 1912
                  auipc        s1, 28151
                  slli         a5, s9, 1
                  and          t5, s11, zero
                  blt          s11, s6, sub_2_10_0_t #branch for loop 0
                  add          s2, t3, sp
                  addi         s10, zero, 6 #init loop 0 counter
                  and          s6, t3, t3
                  addi         s8, zero, 10 #init loop 0 limit
sub_2_14_0_t:     add          gp, s10, t2
                  addi         s10, s10, 2 #update loop 0 counter
                  xor          t4, s10, t0
                  slti         s1, tp, -1971
                  beq          s10, s8, sub_2_14_0_t #branch for loop 0
                  xor          a2, zero, s9
                  addi         ra, zero, -2 #init loop 1 counter
                  addi         a2, zero, -20 #init loop 1 limit
sub_2_9_1_t:      auipc        zero, 137701
                  add          s2, a1, s2
                  addi         ra, ra, -9 #update loop 1 counter
                  addi         s9, zero, -3 #init loop 0 counter
                  addi         t3, zero, -12 #init loop 0 limit
sub_2_9_0_t:      add          a7, s5, a6
                  srl          s1, t3, s1
                  addi         s9, s9, -10 #update loop 0 counter
                  bge          s9, t3, sub_2_9_0_t #branch for loop 0
                  beq          ra, a2, sub_2_9_1_t #branch for loop 1
                  sub          a7, ra, s11
                  addi         a5, zero, 10 #init loop 1 counter
                  xori         a7, s9, -1655
                  sra          s3, ra, s0
                  sub          ra, t2, gp
                  sub          s9, s1, s11
                  addi         a2, zero, 10 #init loop 1 limit
sub_2_7_1_t:      sltiu        a3, s9, 264
                  xor          a4, t4, a1
                  addi         a5, a5, -9 #update loop 1 counter
                  andi         t5, s4, 1598
                  srli         t5, a3, 4
                  sub          s5, s3, t5
                  srai         t5, gp, 28
                  sltu         s10, sp, ra
                  addi         a1, zero, -8 #init loop 0 counter
                  or           t6, t5, tp
                  srl          a3, s8, s5
                  addi         a0, zero, 1 #init loop 0 limit
                  xori         s0, zero, -1326
                  or           zero, zero, a1
                  sltu         t2, t2, a2
                  sltu         t1, a3, s11
                  srli         s11, a5, 30
sub_2_7_0_t:      and          s10, s1, t1
                  and          t2, s4, s10
                  addi         a1, a1, 7 #update loop 0 counter
                  srai         t0, t5, 12
                  blt          a1, a0, sub_2_7_0_t #branch for loop 0
                  addi         s6, a5, 1858
                  lui          s0, 248061
                  sltiu        sp, gp, 467
                  bgeu         a5, a2, sub_2_7_1_t #branch for loop 1
                  slti         zero, t0, -1654
                  addi         t6, zero, -6 #init loop 0 counter
                  sra          s1, a6, s4
                  sll          s1, s6, a4
                  srl          s0, tp, s8
                  andi         a7, s9, -126
                  addi         t2, zero, 17 #init loop 0 limit
                  lui          s10, 633307
                  nop
                  sltiu        t5, t3, 1322
sub_2_15_0_t:     auipc        t5, 655479
                  addi         t6, t6, 3 #update loop 0 counter
                  slt          a0, gp, zero
                  bltu         t6, t2, sub_2_15_0_t #branch for loop 0
                  xor          t5, s1, gp
                  addi         s6, zero, 10 #init loop 1 counter
                  or           s11, s2, s8
                  addi         ra, t2, 1160
                  addi         a2, zero, -1 #init loop 1 limit
sub_2_8_1_t:      xori         zero, s1, 1854
                  addi         s6, s6, -4 #update loop 1 counter
                  and          s2, a6, t3
                  addi         s1, zero, -6 #init loop 0 counter
                  addi         t0, t4, -246
                  addi         t3, zero, 10 #init loop 0 limit
                  srli         s4, t6, 17
sub_2_8_0_t:      slti         s0, s8, -1512
                  addi         s1, s1, 6 #update loop 0 counter
                  addi         s8, a0, 480
                  blt          s1, t3, sub_2_8_0_t #branch for loop 0
                  slli         gp, s1, 29
                  add          t5, t6, zero
                  bge          s6, a2, sub_2_8_1_t #branch for loop 1
                  srli         a4, s10, 20
                  addi         gp, zero, 0 #init loop 1 counter
                  and          a5, zero, s1
                  addi         t3, zero, -18 #init loop 1 limit
                  slt          zero, a3, s2
sub_2_5_1_t:      and          s6, tp, s5
                  addi         gp, gp, -9 #update loop 1 counter
                  addi         a1, zero, 9 #init loop 0 counter
                  addi         s1, zero, 19 #init loop 0 limit
sub_2_5_0_t:      ori          t4, s7, -443
                  addi         a1, a1, 10 #update loop 0 counter
                  blt          a1, s1, sub_2_5_0_t #branch for loop 0
                  beq          gp, t3, sub_2_5_1_t #branch for loop 1
                  srai         t1, a7, 28
                  addi         t0, zero, 5 #init loop 0 counter
                  srai         t6, sp, 29
                  slli         a5, t0, 26
                  srl          t5, s5, s3
                  nop
                  addi         a1, zero, 10 #init loop 0 limit
                  sub          t3, s6, sp
                  addi         s2, a2, 1123
sub_2_0_0_t:      or           a2, a1, s2
                  auipc        s4, 870063
                  add          s6, zero, s10
                  sll          sp, s5, a6
                  and          a5, a5, t2
                  addi         t0, t0, 5 #update loop 0 counter
                  xor          a4, s8, tp
                  nop
                  ori          s4, s1, -184
                  sra          a4, t0, s4
                  sltu         s11, s6, s0
                  auipc        gp, 672712
                  ori          s0, s2, -1737
                  ori          a4, a4, -1573
                  xori         s5, s1, 1935
                  srl          a2, t5, a1
                  bltu         t0, a1, sub_2_0_0_t #branch for loop 0
                  sltiu        s10, t5, 1702
                  sltiu        zero, a2, 1196
                  auipc        t6, 798709
                  slli         s1, tp, 28
                  sltiu        t6, s4, -1830
                  sltu         s6, a0, a1
                  nop
                  ori          t6, sp, -2035
                  xor          s2, s5, tp
                  bne          ra, t5, 13f
                  slli         s1, a2, 7
                  add          s6, zero, s1
                  and          s0, s8, s7
                  sll          s6, t5, s11
13:               sra          s3, s5, s2
                  and          a0, s1, zero
                  or           ra, zero, a5
                  bne          s6, sp, 18f
                  blt          t3, a1, 34f
18:               ori          s6, a7, 387
                  srl          s5, t4, sp
                  andi         s2, ra, -832
                  and          sp, s5, sp
                  srli         t3, s5, 31
                  bgeu         a4, s0, 34f
                  srli         s2, a1, 24
                  xor          gp, t0, s4
                  and          a3, ra, t6
                  srai         a0, tp, 9
                  beq          gp, tp, 45f
                  srli         s6, t1, 14
                  slli         ra, s6, 23
                  addi         a7, s3, -735
                  sub          s2, a7, s4
                  xori         sp, a1, -25
34:               blt          t6, s10, 49f
                  add          zero, s5, s5
                  blt          a5, s3, 53f
                  addi         s2, t6, 1079
                  srli         gp, s10, 5
                  sra          a7, a3, sp
                  or           a5, s8, sp
                  srli         s0, s2, 4
                  srli         a7, s8, 1
                  bltu         t6, sp, 52f
                  ori          gp, s5, -191
45:               slli         a5, s4, 8
                  slt          zero, s1, s11
                  beq          sp, s9, 50f
                  nop
49:               srli         a1, gp, 13
50:               add          s8, a2, t3
                  auipc        a7, 428001
52:               xor          t4, a1, s11
53:               sll          ra, t0, s8
                  slli         t2, a7, 9
                  or           t4, zero, t2
                  bge          a4, s2, 63f
                  slti         s5, s8, -111
                  sltu         a2, s0, s11
                  sltu         t4, t5, a2
                  sltu         s1, a2, s11
                  sll          a0, zero, s0
                  bne          s6, t4, 73f
63:               and          s11, a4, s2
                  bgeu         s0, t3, 82f
                  bne          s3, a4, 81f
                  srai         a7, a7, 22
                  bgeu         zero, s10, 71f
                  bgeu         s4, s10, 82f
                  bgeu         t5, sp, 76f
                  lui          sp, 515149
71:               sltu         t4, a3, zero
                  bltu         ra, s9, 82f
73:               andi         t1, ra, -1497
                  slli         s8, s1, 24
                  sub          a3, s6, ra
76:               xori         ra, a1, 1689
                  xor          gp, a7, a6
                  auipc        s6, 850505
                  srai         t1, s9, 12
                  andi         zero, a1, 1788
81:               slti         gp, t5, 57
82:               sra          s4, t0, s7
                  auipc        a3, 567618
                  bge          s4, t6, 98f
                  bltu         s4, t3, 92f
                  blt          sp, a7, 88f
                  srl          a1, tp, s2
88:               lui          t3, 44031
                  slti         t1, t4, 1722
                  nop
                  slli         a4, t4, 16
92:               ori          a1, t3, -1774
                  sll          gp, t0, s9
                  bne          s9, s2, 98f
                  srl          t0, s11, s4
                  and          t4, s1, t2
                  sltiu        t1, a1, -530
98:               bne          ra, s3, 116f
                  bgeu         s3, t4, 102f
                  nop
                  srai         s5, s0, 19
102:              bgeu         s5, t6, 116f
                  slli         t3, s2, 17
                  sltiu        s8, a4, 1585
                  add          t3, s9, a7
                  nop
                  srai         t3, zero, 24
                  blt          a4, s2, 113f
                  sltiu        a1, a4, -245
                  nop
                  lui          s2, 35028
                  bltu         s7, a1, 120f
113:              sltu         a3, sp, t6
                  and          s11, tp, t2
                  sll          t3, s2, s0
116:              auipc        t3, 348581
                  bne          s11, a4, 130f
                  slti         s4, tp, -1413
                  sll          t4, a5, t2
120:              slli         a7, t0, 28
                  sub          sp, a7, tp
                  ori          s3, t5, 1290
                  addi         gp, s8, -688
                  slt          a7, a2, a7
                  bne          s7, s10, 133f
                  sltu         t2, a6, ra
                  sub          t3, s3, a1
                  beq          t3, s3, 129f
129:              sltiu        s9, t1, -1738
130:              srl          a4, a6, s1
                  nop
                  bge          s7, ra, 141f
133:              sltu         sp, s0, a4
                  or           t1, a3, s1
                  sltiu        t4, gp, -1462
                  slti         s9, s4, -1126
                  xor          ra, s9, a5
                  andi         s0, s5, 1208
                  add          s4, a0, a0
                  srai         s10, t6, 26
141:              bgeu         t6, a6, 152f
                  slli         s10, s4, 16
                  bne          ra, a5, 147f
                  bne          t3, s9, 159f
                  add          ra, a1, s9
                  nop
147:              slt          a2, s4, s10
                  add          zero, zero, s10
                  addi         s2, t4, 67
                  or           a0, a1, s1
                  srai         a4, s8, 15
152:              lui          t3, 906523
                  add          gp, a3, tp
                  blt          a5, s10, 168f
                  bgeu         tp, t2, 157f
                  bge          s4, t0, 161f
157:              xor          s3, s3, s7
                  slt          t0, s8, t4
159:              bltu         a6, a3, 161f
                  bne          s1, a3, 177f
161:              srai         gp, s8, 8
                  srai         s4, a6, 20
                  blt          a0, s0, 180f
                  and          a0, t1, s3
                  beq          a7, sp, 170f
                  srl          s4, t6, a1
                  xori         s0, zero, -1788
168:              auipc        t0, 692849
                  and          a2, t4, t3
170:              slti         a7, t3, -1668
                  sra          s9, s10, a3
                  or           t4, t5, s8
                  sltiu        a0, a4, -1265
                  slti         t0, s10, -1681
                  blt          s5, a4, 178f
                  beq          a4, s6, 190f
177:              sra          s8, a7, s2
178:              ori          t2, tp, 643
                  or           t3, s3, gp
180:              and          a4, a4, t0
                  addi         a5, a1, 1644
                  add          t4, a3, t1
                  and          s8, s0, a5
                  andi         s1, s9, -1957
                  sub          s1, zero, s7
                  andi         s10, a2, -1721
                  auipc        s6, 846340
                  slti         a7, s7, 990
                  xor          t4, t1, a1
190:              srl          a4, gp, sp
                  srl          s6, zero, s6
                  auipc        t0, 822013
                  add          s10, a5, s11
                  lui          s2, 402447
                  srai         a7, a0, 6
                  add          s8, a0, s9
                  sub          a4, t0, s6
                  blt          t3, s4, 211f
                  blt          a3, s11, 215f
                  srl          s4, s0, t0
                  slt          t0, s7, t5
                  nop
                  sll          s10, s2, s2
                  sltiu        ra, t6, 1259
                  bne          s5, a2, 223f
                  ori          a5, a2, -277
                  slt          t5, a4, t4
                  beq          a1, a6, 215f
                  srli         t0, s2, 6
                  andi         t5, s8, -1504
211:              or           t0, s6, s4
                  sltu         t4, s10, s11
                  xor          ra, t0, s10
                  sra          t2, sp, a0
215:              bltu         s6, s3, 232f
                  and          a3, a4, s5
                  slti         a5, tp, -1033
                  nop
                  bge          t0, t6, 233f
                  ori          s2, t2, -623
                  auipc        s2, 693850
                  bge          t4, s4, 229f
223:              blt          t2, a0, 227f
                  nop
                  xori         t3, a7, -1264
                  bge          t4, t4, 236f
227:              slli         s3, t4, 28
                  and          s6, a4, t6
229:              slti         s0, s8, 5
                  bge          t1, a2, 237f
                  blt          a4, s2, 240f
232:              nop
233:              slti         gp, s8, 1444
                  and          s5, s4, a4
                  beq          s8, a3, 246f
236:              bgeu         tp, s8, 245f
237:              or           s3, ra, t3
                  sra          s0, s8, t0
                  blt          s2, a2, 257f
240:              add          s3, a3, s3
                  addi         s0, s9, -1837
                  srl          gp, gp, a5
                  srl          s2, t1, a7
                  xor          a2, s1, a5
245:              xori         t1, t4, -1838
246:              bge          a4, a1, 254f
                  srai         s0, a4, 15
                  bne          s2, a3, 251f
                  andi         s3, t5, 545
                  ori          a1, t1, -1794
251:              blt          zero, a7, 259f
                  lui          a2, 390319
                  andi         s6, t3, -1835
254:              sltu         s1, a3, a6
                  sltiu        a7, s0, -115
                  xor          s11, s10, t0
257:              lui          ra, 71607
                  or           s1, gp, t6
259:              slli         s1, tp, 9
                  sltiu        a5, s8, -1233
                  and          zero, s2, a3
                  bne          s10, t0, 263f
263:              beq          a3, t2, 268f
                  andi         s1, a6, -1965
                  sltu         a7, ra, s6
                  add          a0, s0, s9
                  slt          s6, t2, a1
268:              bltu         zero, a3, 281f
                  blt          gp, tp, 272f
                  addi         a0, zero, -4 #init loop 1 counter
                  add          t2, s9, gp
                  auipc        t3, 1026984
                  addi         t4, zero, -11 #init loop 1 limit
sub_2_3_1_t:      slti         s11, s1, 143
                  srai         s6, t6, 23
                  srl          s5, a6, a4
                  lui          ra, 259028
                  slt          s11, a2, t2
                  addi         a0, a0, -7 #update loop 1 counter
                  slt          t5, s3, s1
                  addi         s0, zero, -9 #init loop 0 counter
                  or           ra, s5, ra
                  addi         a5, zero, -19 #init loop 0 limit
sub_2_3_0_t:      ori          a7, tp, -878
                  addi         s0, s0, -10 #update loop 0 counter
                  xori         gp, t3, -1709
                  bne          s0, a5, sub_2_3_0_t #branch for loop 0
                  ori          t6, s11, -1261
                  bne          a0, t4, sub_2_3_1_t #branch for loop 1
                  slti         zero, a2, -709
                  addi         ra, zero, 289
                  blt          t2, a2, 288f
272:              auipc        s4, 256984
                  slti         a7, tp, 745
                  slli         s3, t4, 30
                  blt          s9, s7, 286f
                  sltu         t1, t4, s8
                  sltu         t6, t5, t1
                  lui          t1, 892362
                  nop
                  bge          t2, s11, 287f
281:              auipc        a5, 375636
                  srai         t2, t2, 21
                  sltiu        s6, zero, 1700
                  slli         a1, s4, 9
                  srai         s10, s4, 20
286:              auipc        s1, 893600
287:              nop
288:              xor          s0, sp, a1
                  blt          t4, s9, 298f
                  add          t5, s8, s5
                  bgeu         s7, s8, 293f
                  sltu         s9, s3, s3
293:              or           a7, tp, t4
                  sra          ra, t5, a3
                  auipc        a7, 881041
                  beq          s10, a1, 311f
                  bgeu         s7, t2, 304f
298:              sub          t2, s1, t6
                  sub          a3, s3, gp
                  blt          s6, t1, 308f
                  nop
                  beq          t2, a2, 319f
                  slli         s4, t3, 31
304:              bgeu         a3, gp, 306f
                  add          t0, s8, s4
306:              sub          sp, t2, s8
                  srai         t1, s6, 29
308:              xor          t0, s3, s3
                  sra          t0, t5, ra
                  slt          t0, a2, s9
311:              nop
                  srl          t5, a7, s8
                  addi         s4, zero, 10 #init loop 1 counter
                  sll          t3, a3, sp
                  auipc        a0, 992006
                  addi         s8, zero, 10 #init loop 1 limit
                  and          t5, s3, s1
                  srli         t0, t0, 22
sub_2_1_1_t:      sub          t6, ra, t4
                  slli         t6, s10, 27
                  sub          a3, t5, s8
                  addi         s4, s4, -7 #update loop 1 counter
                  slt          t5, zero, s5
                  addi         a7, zero, -1 #init loop 0 counter
                  srai         s2, t4, 10
                  srl          t1, s8, sp
                  xori         s3, a2, -1005
                  addi         s1, zero, -8 #init loop 0 limit
                  srl          a0, a2, s0
                  lui          a0, 812219
                  sub          sp, a0, a5
                  sll          ra, t2, t5
                  srl          sp, s7, tp
sub_2_1_0_t:      xori         gp, t0, -1701
                  sra          s9, t4, zero
                  slti         s10, s1, 1386
                  addi         a7, a7, -10 #update loop 0 counter
                  auipc        s2, 1047756
                  bge          a7, s1, sub_2_1_0_t #branch for loop 0
                  bgeu         s4, s8, sub_2_1_1_t #branch for loop 1
                  sltiu        t4, s0, 689
                  bltu         a1, t3, 321f
                  add          a3, tp, s0
                  bltu         s8, t3, 325f
                  blt          t2, zero, 325f
                  bltu         a5, s6, 318f
318:              xor          s10, s2, s6
319:              or           s8, s5, a1
                  bge          s8, s0, 331f
321:              addi         t1, t3, 1786
                  bge          a7, zero, 326f
                  bgeu         a2, t4, 339f
                  andi         a1, a6, 1190
325:              srl          s9, s10, s9
326:              bgeu         a1, s8, 344f
                  slt          s1, t3, a7
                  and          gp, zero, t5
                  srli         s6, a5, 19
                  bgeu         s8, s4, 337f
331:              lui          a3, 503173
                  sub          s9, a3, a5
                  srl          a7, a2, a6
                  bltu         s1, gp, 337f
                  xori         s0, a7, 1141
                  add          t5, s11, s10
337:              ori          t1, tp, 424
                  sltu         zero, s4, a6
339:              xori         s3, a4, -292
                  slt          s4, s9, s8
                  bge          s5, s3, 346f
                  slt          s3, a5, t3
                  sltiu        t0, t0, -1307
344:              xor          t2, t0, s10
                  bge          t2, a5, 359f
346:              and          a7, t0, gp
                  sra          s3, tp, s6
                  auipc        s1, 698793
                  andi         a4, ra, 780
                  srli         s4, t5, 6
                  add          a7, a1, s2
                  srl          t2, s5, t0
                  blt          t4, a2, 357f
                  bltu         t6, t2, 371f
                  xori         a2, s6, 1563
                  xori         s1, ra, -262
357:              bgeu         a6, a1, 371f
                  xori         t1, t6, 1070
359:              ori          t2, tp, -534
                  bltu         s6, s0, 378f
                  auipc        s5, 983342
                  bltu         s7, s0, 376f
                  xori         t0, s4, -1639
                  or           t5, s7, s9
                  beq          tp, s10, 375f
                  nop
                  sltiu        sp, a6, 1632
                  slti         zero, t5, -587
                  auipc        s4, 466537
                  sub          s11, t5, s3
371:              addi         s2, s7, 1089
                  add          a1, s0, s5
                  lui          s6, 710985
                  bge          s4, t3, 381f
375:              srl          a7, a6, a4
376:              or           s9, s10, sp
                  nop
378:              lui          a4, 774250
                  sltiu        t4, a0, 1442
                  bge          t3, s1, 394f
381:              sltiu        t0, s1, -255
                  srl          s3, s7, s6
                  srli         a1, s10, 31
                  andi         a2, t2, -1613
                  slli         a7, t5, 8
                  lui          s6, 765877
                  auipc        a4, 378737
                  sub          s9, s0, s2
                  sltu         t3, s11, zero
                  slti         a4, s3, 809
                  slt          a3, t2, s7
                  bge          a1, t6, 395f
                  andi         a0, sp, -1882
394:              or           s4, s6, a6
395:              srli         s8, s4, 20
                  add          s6, gp, s11
                  sub          s9, t5, zero
                  auipc        a5, 813761
                  sub          t0, sp, s2
                  srl          s5, sp, gp
                  nop
                  xor          a7, ra, t5
                  sll          s6, s8, t1
                  nop
                  srli         t4, t3, 31
                  addi         t3, a6, 846
                  slt          gp, a5, a3
                  and          s11, t6, a4
                  xori         s11, t1, 1965
                  srl          t1, s3, t3
                  sltiu        gp, s11, -939
                  nop
                  sub          t2, t1, a0
                  or           a3, t5, t4
                  srli         a4, t2, 0
                  xori         a3, t0, -297
                  bgeu         sp, a7, 434f
                  bgeu         s11, t3, 423f
                  bgeu         s1, a4, 433f
                  lui          s1, 536620
                  bne          t6, t1, 425f
                  xor          s9, t4, s4
423:              slli         s3, s5, 15
                  bge          t6, t3, 425f
425:              xor          s9, a0, tp
                  bgeu         a0, a3, 429f
                  bltu         ra, tp, 442f
                  slli         t3, a1, 12
429:              bltu         t3, a0, 438f
                  bltu         s2, s3, 443f
                  and          s9, s8, t0
                  xor          t3, t5, s5
433:              slt          s0, s9, a7
434:              add          a4, tp, a2
                  bgeu         s8, tp, 446f
                  bne          a1, s3, 440f
                  xor          a7, s1, t0
438:              slt          a2, t0, s6
                  sltu         gp, sp, t5
440:              slli         s5, s3, 26
                  sra          s0, a6, t5
442:              bgeu         s4, a0, 450f
443:              addi         t4, s11, 1634
                  andi         s5, s4, 1415
                  addi         s2, s3, -453
446:              beq          a6, a2, 454f
                  and          t1, t1, a4
                  sltu         a4, a3, a6
                  srai         t5, s8, 28
450:              bgeu         sp, s5, 466f
                  srl          s6, s5, s5
                  sll          s4, a5, a4
                  bne          s4, s9, 462f
454:              blt          zero, a5, 461f
                  sra          a1, t5, s3
                  srl          t3, a3, s11
                  auipc        s2, 974963
                  slt          a5, a2, s3
                  srl          s10, s11, t0
                  nop
461:              sra          s4, s1, s8
462:              beq          s1, s7, 467f
                  and          a1, a2, s1
                  blt          s9, a6, 478f
                  add          t5, t4, zero
466:              sub          a0, t3, tp
467:              bge          s0, s11, 484f
                  srai         t0, a6, 17
                  srai         t3, t4, 7
                  srli         s3, t5, 11
                  blt          t0, a5, 489f
                  bne          s7, s1, 483f
                  xori         t0, s3, -881
                  auipc        s11, 36631
                  sra          zero, s0, a0
                  and          s4, tp, s11
                  slt          s6, a6, s10
478:              srl          zero, t0, s5
                  and          a5, s7, t5
                  andi         s3, a4, -580
                  andi         t1, s11, 754
                  sub          t5, gp, a5
483:              addi         zero, a3, 1376
484:              and          t0, a3, zero
                  bne          t1, a3, 487f
                  andi         a5, s5, -190
487:              bltu         s0, s11, 505f
                  xor          s3, t5, a7
489:              bge          sp, t2, 491f
                  sltu         t1, s4, ra
491:              or           s9, a6, s4
                  bge          s2, s7, 509f
                  and          t3, ra, t1
                  lui          s10, 850949
                  andi         ra, s7, -82
                  and          t5, s11, t0
                  slti         s4, t6, 231
                  srli         a1, s2, 21
                  srai         s1, zero, 28
                  and          s3, s5, s2
                  add          a7, a1, a7
                  sltiu        s11, s9, -105
                  add          t6, s9, s9
                  ori          a7, t3, 1716
505:              ori          sp, a7, -660
                  slli         t6, s1, 21
                  srl          s3, s3, tp
                  andi         s9, s2, 1716
509:              nop
                  beq          s10, gp, 517f
                  addi         t1, a3, 1645
                  bgeu         t5, t4, 517f
                  srl          a3, s8, s0
                  or           t1, s7, s4
                  srli         sp, tp, 8
                  bgeu         s4, s2, 530f
517:              srl          t2, s11, s3
                  xori         gp, a5, 547
                  slli         s10, s10, 11
                  and          s8, s2, sp
                  srli         s2, zero, 29
                  or           t5, s1, s5
                  slti         sp, s10, 1578
                  ori          a4, s3, 875
                  nop
                  bne          t4, gp, 533f
                  nop
                  auipc        ra, 830796
                  add          ra, s7, a2
530:              srl          s1, a1, t4
                  sltu         s3, a3, a2
                  srai         s2, s6, 12
533:              add          s1, s2, a5
                  add          t4, t2, a5
                  auipc        t6, 901358
                  slti         t2, zero, 1799
                  nop
                  blt          s5, sp, 555f
                  beq          a3, t4, 553f
                  beq          t1, s10, 544f
                  srl          a4, zero, t2
                  nop
                  blt          s2, a3, 560f
544:              andi         a0, a3, 973
                  bne          s3, s10, 553f
                  sltiu        a5, a0, -1885
                  and          t2, s7, s9
                  bne          a0, a7, 555f
                  slti         s9, s2, -470
                  or           s9, s4, s3
                  bltu         s4, t0, 562f
                  srai         a7, s5, 1
553:              sll          a2, a5, s5
                  lui          t0, 526459
555:              ori          a0, gp, 1414
                  srai         s2, s7, 5
                  bge          s10, a5, 571f
                  srli         ra, s8, 1
                  blt          s4, t0, 570f
560:              srl          a1, s2, a0
                  slli         t5, t3, 0
562:              xor          s10, t6, a5
                  add          a5, a2, t3
                  slli         sp, a6, 16
                  and          s6, a1, s5
                  srli         a1, gp, 4
                  srai         s1, ra, 22
                  srai         a0, a5, 22
                  bgeu         s10, t1, 572f
570:              sll          gp, a0, s6
571:              add          s1, ra, a3
572:              addi         a2, s0, 17
                  auipc        s9, 694396
                  srl          t1, t5, a6
                  sltiu        a5, s5, 529
                  addi         a0, t0, -1307
                  lui          t3, 883124
                  ori          t2, a1, 1868
                  srai         s6, s8, 31
                  bltu         t6, s3, 590f
                  bne          t1, t6, 599f
                  or           s3, ra, t0
                  sltu         t3, a6, s6
                  slti         a2, a1, 1106
                  sltu         t5, a0, a1
                  and          gp, a2, t0
                  beq          ra, s11, 596f
                  sll          a2, tp, s10
                  andi         s6, t3, 1223
590:              blt          s10, a3, 607f
                  bne          zero, s9, 607f
                  addi         a0, t4, 1639
                  sltu         a0, s1, s7
                  auipc        t1, 82537
                  nop
596:              slli         a0, t6, 31
                  andi         a5, s2, -629
                  beq          a0, t5, 600f
599:              auipc        a7, 143527
600:              bne          s2, a5, 615f
                  bgeu         a0, a3, 614f
                  srl          s11, t1, s11
                  add          t4, a4, a2
                  add          t1, s4, gp
                  addi         s8, gp, 643
                  auipc        sp, 795235
607:              beq          s9, s11, 611f
                  add          t5, s0, zero
                  bne          s4, s9, 612f
                  addi         t1, a2, 1245
611:              auipc        t4, 1031059
612:              ori          s8, t1, -1635
                  slli         s6, s8, 31
614:              bge          t0, zero, 622f
615:              addi         t4, s2, -1867
                  addi         s6, zero, -938
                  sra          t4, s8, zero
                  andi         t2, a5, 1041
                  slt          t4, s5, s4
                  sub          a3, a6, gp
                  auipc        s2, 150425
622:              xor          s10, s2, a6
                  beq          t0, t2, 632f
                  srl          s11, s4, s3
                  slti         s8, a4, -400
                  sll          t6, a4, s5
                  srai         t6, t1, 16
                  xori         a4, a5, -1644
                  auipc        a7, 205500
                  bgeu         t6, a4, 648f
                  or           t3, s10, sp
632:              slt          s2, a0, s6
                  sub          t1, a2, t4
                  srli         a7, t5, 6
                  auipc        t3, 374470
                  bltu         s10, s0, 637f
637:              auipc        t4, 256999
                  and          a3, a3, s2
                  nop
                  add          sp, s0, s10
                  sltiu        s9, s11, -1846
                  ori          a5, a6, -1961
                  bgeu         a4, zero, 645f
                  srai         s9, t0, 11
645:              srl          s0, s7, t3
                  andi         s1, s8, -1724
                  sra          s10, t1, t3
648:              slli         a3, ra, 22
                  addi         s2, zero, -1 #init loop 1 counter
                  srli         t0, a4, 19
                  srl          t5, t5, a2
                  auipc        s4, 451684
                  addi         s8, zero, 13 #init loop 1 limit
                  srai         s9, t3, 28
sub_2_16_1_t:     andi         a3, gp, -183
                  addi         s2, s2, 10 #update loop 1 counter
                  auipc        gp, 418105
                  addi         a4, zero, -3 #init loop 0 counter
                  addi         t4, zero, 13 #init loop 0 limit
                  srli         t5, a0, 20
sub_2_16_0_t:     auipc        s4, 738178
                  addi         a4, a4, 6 #update loop 0 counter
                  andi         a7, s10, -456
                  blt          a4, t4, sub_2_16_0_t #branch for loop 0
                  xori         zero, a0, 1172
                  blt          s2, s8, sub_2_16_1_t #branch for loop 1
                  slti         s6, zero, -1659
                  srai         t1, t1, 25
                  bge          s9, t2, 655f
                  or           s11, s1, ra
                  lui          gp, 198286
                  sll          gp, a4, t6
                  sra          s4, gp, sp
655:              xori         s6, a2, -659
                  addi         s1, s2, 1003
                  lui          t3, 390891
                  ori          s2, a6, 1480
                  srl          t5, s4, a2
                  nop
                  slt          sp, s8, t2
                  bgeu         t3, t3, 669f
                  bge          s2, s0, 666f
                  xor          t3, a6, s8
                  nop
666:              bltu         s2, a7, 674f
                  ori          ra, ra, -616
                  addi         t3, t2, -1236
669:              bge          t2, s0, 674f
                  xori         a4, s11, -560
                  ori          a1, s2, 898
                  sra          s0, zero, a2
                  sltiu        a3, sp, -1634
674:              xori         a0, s0, 1422
                  srli         s1, gp, 13
                  xori         s6, t6, -759
                  addi         a2, a2, 645
                  slli         s6, s10, 10
                  and          t3, s1, s1
                  addi         a7, a3, 1288
                  sub          a1, s0, s10
                  slti         ra, a3, -783
                  sub          a1, s11, a2
                  bge          t4, a5, 695f
                  blt          t4, s5, 695f
                  xori         s4, t1, 912
                  bge          s9, s7, 690f
                  srli         s4, s6, 14
                  lui          zero, 365615
690:              nop
                  bge          s7, t2, 706f
                  slli         s2, sp, 11
                  blt          s0, a2, 710f
                  andi         a1, s11, 293
695:              add          t0, s0, a6
                  bge          gp, t0, 703f
                  xori         s10, t1, 1243
                  nop
                  ori          a0, ra, -726
                  sltiu        s0, a1, -1570
                  xor          t6, a1, t5
                  xor          s6, a0, a3
703:              xori         zero, zero, 50
                  slti         s2, a0, -1145
                  bltu         s8, s5, 718f
706:              sltiu        t6, t1, -1948
                  sltiu        a5, t4, -1912
                  srli         t2, sp, 17
                  sra          t6, a7, a3
710:              sra          a2, s2, s11
                  andi         s9, t2, -1577
                  ori          t6, s5, -1960
                  bge          a2, a0, 729f
                  nop
                  add          t5, tp, s0
                  auipc        a1, 119654
                  slli         a4, s4, 7
718:              sll          t1, a4, s11
                  sra          a2, t0, a3
                  blt          zero, s9, 734f
                  nop
                  blt          s10, s10, 736f
                  sltiu        t5, gp, 1221
                  sltu         a3, a4, s7
                  sltiu        t3, ra, -1857
                  blt          t5, s4, 734f
                  srai         gp, s8, 12
                  slti         t2, t2, 392
729:              beq          t0, tp, 733f
                  or           s2, s5, s7
                  sra          t2, t1, a1
                  or           s2, s9, a5
733:              sra          s3, s1, s0
734:              beq          s4, s10, 743f
                  sub          gp, sp, a7
736:              slt          s9, t3, t3
                  srl          s3, t5, a4
                  addi         s8, a4, -351
                  or           sp, a4, s4
                  xori         a1, t4, -253
                  add          t6, ra, s7
                  blt          a2, t4, 751f
743:              lui          t6, 920884
                  slti         ra, gp, 376
                  srai         s1, s8, 8
                  slt          t6, s4, s6
                  bgeu         a6, a5, 752f
                  srai         a3, a4, 4
                  sra          s4, sp, s8
                  srl          a1, a1, s4
751:              andi         s3, t6, -704
752:              ori          t0, s1, 1121
                  srai         t5, s6, 16
                  sra          ra, s7, sp
                  nop
                  addi         a7, a4, 1057
                  nop
                  bne          s2, s11, 775f
                  and          s6, sp, tp
                  sra          s1, a6, s2
                  srai         s9, a2, 30
                  bne          t3, t1, 776f
                  add          t5, zero, s5
                  slli         t3, sp, 12
                  addi         s1, ra, 391
                  xor          a4, s4, a6
                  slt          ra, t2, s3
                  blt          a0, s5, 775f
                  addi         s1, zero, 6 #init loop 0 counter
                  slt          s10, s0, t4
                  srli         t0, t3, 22
                  xori         t0, s4, -1123
                  addi         s9, zero, 6 #init loop 0 limit
sub_2_2_0_t:      or           gp, gp, s0
                  sub          t6, a5, t1
                  addi         s1, s1, -1 #update loop 0 counter
                  lui          t3, 629855
                  sra          t6, s11, s11
                  or           s2, a5, s6
                  bgeu         s1, s9, sub_2_2_0_t #branch for loop 0
                  andi         a0, t4, 1825
                  bgeu         a1, zero, 771f
                  sub          s11, a5, a1
771:              auipc        t1, 422296
                  srli         a4, a4, 29
                  bne          a5, s6, 775f
                  srai         s1, s0, 7
775:              and          a7, sp, s3
776:              bge          a0, s6, 794f
                  sltiu        t5, t6, -1671
                  blt          s3, a7, 796f
                  bltu         a5, s0, 796f
                  nop
                  andi         s2, t0, -7
                  addi         a7, s0, 1284
                  slt          gp, a7, s7
                  nop
                  auipc        t1, 812746
                  bgeu         tp, t1, 797f
                  ori          zero, s2, -2007
                  xor          s10, t0, a0
                  add          t0, a7, s8
                  and          s9, tp, t5
                  bge          t5, s6, 795f
                  bgeu         s11, sp, 799f
                  and          s5, a2, s6
794:              lui          s6, 984074
795:              ori          s11, s6, -1886
796:              sltu         a3, s3, a1
797:              blt          t4, a2, 798f
798:              ori          a7, a2, 1828
799:              sra          s1, t3, tp
                  srli         s6, t4, 11
                  xori         s0, t4, 1204
                  slt          s5, t0, a0
                  sub          s4, s6, sp
                  slt          s5, t5, s9
                  slti         gp, t1, 955
                  or           zero, t5, zero
                  sra          t0, a6, s2
                  bge          s5, t1, 823f
                  sra          a1, s2, t1
                  slti         t3, sp, 1411
                  sub          s8, t1, zero
                  srli         t6, s10, 27
                  sra          t4, s10, t5
                  and          a0, s11, t2
                  nop
                  addi         a7, a0, 1231
                  beq          s11, a7, 821f
                  and          s10, a2, a5
                  bne          s0, s11, 828f
                  xor          a0, s0, s8
821:              andi         t0, t0, 738
                  sltu         s1, s3, s10
823:              xor          ra, s4, a6
                  srai         s1, t2, 23
                  or           a7, t2, a0
                  blt          t1, t3, 829f
                  ori          s6, a4, -1422
828:              and          a3, a2, a3
829:              sll          ra, s1, a7
                  xor          t4, t0, a7
                  and          ra, a2, t1
                  blt          sp, t5, 850f
                  auipc        s3, 556611
                  slt          t2, t0, a0
                  srai         a4, s2, 28
                  auipc        a7, 268584
                  bgeu         s6, s3, 841f
                  xori         s5, t2, 1727
                  slli         s9, gp, 1
                  sra          a1, t0, a4
841:              sltiu        s2, s0, 1665
                  andi         a3, s10, 594
                  sltu         t6, t5, tp
                  srl          s10, a5, s0
                  addi         s2, a2, -1481
                  srl          t4, sp, s10
                  srl          a3, a3, t3
                  sub          a0, s6, a0
                  bne          a2, ra, 867f
850:              srli         zero, s0, 0
                  or           sp, t3, s4
                  bltu         a2, s6, 860f
                  slt          a1, s3, s1
                  and          s6, sp, s5
                  xor          s1, s11, t3
                  blt          s4, t1, 863f
                  srai         t3, t2, 23
                  sltiu        ra, zero, 1399
                  srli         s0, s2, 13
860:              slti         a2, a1, -1832
                  bltu         s6, a2, 868f
                  sltiu        s3, t0, -80
863:              srl          s10, gp, s8
                  bne          t0, s0, 878f
                  sll          s11, a7, s7
                  andi         zero, gp, -2011
867:              andi         s10, zero, 223
868:              bne          t4, a7, 885f
                  ori          t2, tp, -695
                  slli         s2, s2, 16
                  xori         a1, s3, 1337
                  bge          s6, s4, 888f
                  sra          a1, tp, a6
                  sra          a1, t2, s9
                  addi         t3, a4, 1297
                  bne          s6, gp, 888f
                  blt          s8, a5, 884f
878:              xori         a0, tp, 913
                  lui          s0, 764486
                  srai         s3, a0, 5
                  blt          gp, a7, 888f
                  bltu         a3, tp, 888f
                  bltu         t3, s8, 885f
884:              sll          sp, t0, t3
885:              bne          s6, s11, 888f
                  sltiu        s8, tp, 729
                  slli         t0, a7, 27
888:              slt          a7, a2, t6
                  auipc        s10, 482536
                  sra          gp, ra, zero
                  slt          a3, a2, t3
                  lw           a4, 4(s7)
                  srl          a2, ra, s11
                  addi         s7, s7, 40
                  and          t3, t0, a7
                  ori          s3, s4, -407
1206:             addi x14, x14, 1
1206:             jalr x14, x14, 0
sub_4:            addi         s7, s7, -44
                  auipc        t2, 774890
                  and          s8, a6, s6
                  or           a3, a5, tp
                  sw           a4, 4(s7)
                  slti         t3, s2, 1972
                  andi         a0, a7, -1586
                  lui          s11, 553173
                  lui          s5, 453678
                  and          s4, t1, zero
                  srai         a3, s5, 5
                  slli         s4, t0, 12
                  addi         a2, zero, 4 #init loop 1 counter
                  slt          sp, s5, ra
                  srl          a7, s1, a5
                  addi         s3, zero, 4 #init loop 1 limit
                  xor          t0, s9, s5
                  sltu         s9, a1, ra
sub_4_0_1_t:      slt          s1, s1, a5
                  slti         s11, gp, 1164
                  addi         a2, a2, -1 #update loop 1 counter
                  addi         s5, zero, -4 #init loop 0 counter
                  lui          s10, 281432
                  addi         gp, zero, -3 #init loop 0 limit
sub_4_0_0_t:      addi         s10, a7, 202
                  addi         s5, s5, 9 #update loop 0 counter
                  or           a0, sp, t6
                  blt          s5, gp, sub_4_0_0_t #branch for loop 0
                  nop
                  bgeu         a2, s3, sub_4_0_1_t #branch for loop 1
                  sll          ra, a0, s5
                  addi         a7, zero, 8 #init loop 0 counter
                  sll          s6, s6, a3
                  sltiu        t5, s8, 1592
                  slli         t1, t2, 29
                  auipc        t2, 575231
                  sra          s4, s4, ra
                  sll          gp, a3, s3
                  addi         a0, zero, 17 #init loop 0 limit
                  srai         t4, t4, 23
                  srli         zero, a5, 9
sub_4_1_0_t:      slt          s3, a7, a4
                  slti         ra, a3, -1671
                  and          s6, ra, t3
                  addi         a7, a7, 5 #update loop 0 counter
                  srli         a4, t0, 23
                  sra          a5, t1, t3
                  auipc        sp, 973116
                  ori          t0, t6, 1547
                  add          gp, t0, t4
                  srai         t1, gp, 5
                  slti         t5, a7, 848
                  nop
                  sltiu        a4, s6, -1682
                  slli         t3, s0, 23
                  sll          s10, tp, a1
                  or           t6, a6, s8
                  slt          t1, s3, s0
                  slt          s9, a4, t0
                  bltu         a7, a0, sub_4_1_0_t #branch for loop 0
                  sltu         s1, ra, t3
                  addi         ra, zero, 0 #init loop 1 counter
                  sltu         t3, s1, t2
                  addi         s10, zero, -16 #init loop 1 limit
sub_4_2_1_t:      slti         a0, t4, -868
                  addi         ra, ra, -1 #update loop 1 counter
                  sra          s1, a7, t1
                  slti         a3, ra, -1543
                  addi         s2, zero, 6 #init loop 0 counter
                  addi         s5, zero, 8 #init loop 0 limit
sub_4_2_0_t:      and          t2, t6, t0
                  xor          sp, zero, s10
                  sra          a3, a3, s0
                  slli         s0, a0, 5
                  addi         s2, s2, 9 #update loop 0 counter
                  bltu         s2, s5, sub_4_2_0_t #branch for loop 0
                  bge          ra, s10, sub_4_2_1_t #branch for loop 1
                  slt          t5, t0, a0
                  and          s3, s2, t4
                  sltiu        sp, s11, -911
                  beq          t0, t1, 17f
                  sll          s8, a5, a3
                  slli         t4, tp, 28
                  andi         s8, s3, -711
                  add          s1, t4, a2
                  sll          s2, zero, a7
                  sll          a2, t5, t5
                  beq          s5, t4, 28f
                  slli         t2, tp, 1
                  xori         s5, tp, 1982
                  sll          sp, a1, a6
                  bne          a7, t3, 31f
                  sub          gp, sp, gp
                  xori         a1, t4, 721
                  bltu         a1, s8, 32f
17:               srl          s5, a1, a5
                  sltiu        s3, s7, -8
                  auipc        t2, 752688
                  nop
                  slli         a7, t3, 17
                  or           a7, tp, a4
                  srli         t2, a3, 13
                  or           s11, s3, s10
                  xori         t4, s11, 1596
                  blt          s0, t2, 37f
                  xori         t2, t1, 1256
28:               or           s4, a5, sp
                  add          sp, gp, a2
                  ori          t0, t5, 1058
31:               add          s0, s2, a0
32:               sll          a1, gp, a1
                  sll          t5, s8, s4
                  sll          t2, s3, s7
                  bgeu         t4, s1, 55f
                  auipc        a5, 1000300
37:               add          s10, s7, t6
                  sltu         s8, a1, a2
                  ori          t5, a3, 766
                  srl          zero, ra, a2
                  andi         t3, sp, -1425
                  srai         s0, t0, 20
                  andi         sp, a0, -1589
                  sra          s5, t3, t0
                  and          t2, a3, a3
                  or           t6, a4, sp
                  lui          s3, 111151
                  srl          s10, s4, s1
                  auipc        s8, 887966
                  beq          s4, t0, 65f
                  sll          s0, s6, a0
                  sltiu        s10, t3, 807
                  blt          a7, s11, 68f
                  sub          sp, s3, s3
55:               bgeu         s0, s8, 59f
                  slti         s11, a4, 582
                  bgeu         s0, t3, 60f
                  andi         s9, s4, 1361
59:               sub          s0, s3, t6
60:               blt          a6, zero, 62f
                  andi         s0, t6, -70
62:               bltu         t3, s10, 81f
                  bge          s7, s5, 68f
                  andi         a5, a2, 797
65:               bgeu         gp, a0, 84f
                  bgeu         s1, t6, 72f
                  addi         a4, s2, -131
68:               xori         s5, t6, 957
                  slti         s9, a0, 492
                  slli         s10, s9, 20
                  srli         s2, s4, 5
72:               sll          s2, s10, s10
                  srl          s8, sp, s5
                  nop
                  bgeu         a7, s4, 93f
                  sub          a7, zero, s8
                  add          a1, a6, t0
                  xor          s10, t0, a1
                  slt          t5, t0, s3
                  srl          s8, t6, a2
81:               bge          t2, tp, 82f
82:               bne          s0, a1, 86f
                  slli         s0, sp, 15
84:               andi         a1, s10, 2031
                  or           t0, t4, s6
86:               slt          s3, s3, s7
                  sltiu        a1, s8, -1847
                  slti         t5, s10, -1150
                  srli         s9, s0, 26
                  nop
                  srli         s6, s8, 31
                  srli         s4, zero, 8
93:               xori         s4, a5, 1445
                  sll          s3, s9, t6
                  nop
                  auipc        s2, 580242
                  beq          ra, a6, 112f
                  or           t6, s4, s11
                  sub          a4, s0, t4
                  or           a5, sp, ra
                  addi         t1, a2, -1411
                  slti         a3, t2, 618
                  or           t6, sp, t1
                  xor          a4, a5, t5
                  slli         ra, t1, 10
                  sltiu        a0, gp, 1061
                  bne          t6, t2, 113f
                  bltu         t3, t3, 113f
                  srl          t3, t4, t2
                  or           t3, t0, zero
                  srli         zero, sp, 8
112:              addi         t2, t5, -396
113:              bltu         s3, s7, 119f
                  beq          s10, t6, 129f
                  xor          s0, a3, zero
                  sltu         zero, t2, a1
                  and          s11, t1, s3
                  and          s6, zero, sp
119:              nop
                  bge          t5, zero, 134f
                  bgeu         a2, s10, 125f
                  sltiu        s2, t4, -1202
                  xor          s2, t6, s4
                  blt          a4, s5, 125f
125:              bge          s11, a5, 136f
                  andi         zero, tp, 572
                  slli         t3, a3, 26
                  ori          t0, s0, 1963
129:              auipc        s4, 867494
                  sll          a0, a6, t2
                  blt          a6, a0, 142f
                  bne          s11, t0, 136f
                  sra          s1, s7, s3
134:              sra          ra, t1, a5
                  srli         t3, s6, 19
136:              auipc        a7, 350816
                  sltu         t0, sp, a1
                  srai         a0, t5, 2
                  ori          zero, sp, 1116
                  bltu         s4, s5, 157f
                  bge          s5, t0, 158f
142:              bge          s0, t5, 157f
                  slti         t0, a0, 935
                  andi         t5, s3, 1754
                  bge          t2, a3, 149f
                  beq          t1, s10, 164f
                  nop
                  blt          s8, s8, 167f
149:              slti         s3, s7, 849
                  and          s8, s10, ra
                  srai         s5, t2, 1
                  sll          t0, s0, s7
                  sltiu        a2, sp, 51
                  sll          s10, s1, s7
                  bgeu         s9, s1, 159f
                  nop
157:              sub          gp, s9, s11
158:              slt          s5, a1, s5
159:              auipc        t0, 772677
                  sub          a7, t5, s10
                  bltu         s5, zero, 181f
                  addi         a1, ra, 1315
                  bge          zero, a4, 165f
164:              srl          s8, zero, s10
165:              bge          a6, t4, 176f
                  slli         s9, s4, 10
167:              xori         ra, a4, 1109
                  bltu         s8, ra, 187f
                  slli         sp, t0, 4
                  slli         a4, s11, 8
                  or           a0, a2, a6
                  bltu         a0, sp, 187f
                  srli         s4, a6, 17
                  xor          t6, a0, s2
                  srai         s6, zero, 25
176:              bltu         t4, t5, 194f
                  slli         a7, a6, 7
                  andi         gp, t6, 2039
                  nop
                  andi         t6, gp, 19
181:              sra          a5, zero, t5
                  bgeu         a6, s4, 197f
                  addi         a2, t5, 91
                  sra          s4, t3, ra
                  or           t0, t0, t1
                  auipc        s0, 995460
187:              and          zero, sp, s7
                  sub          s0, gp, s2
                  sltiu        a0, s11, -1382
                  ori          t1, t2, -1666
                  addi         a5, s2, 1164
                  sltiu        a5, a6, 1014
                  and          s10, t1, t4
194:              bge          a4, zero, 197f
                  slti         s0, s4, -734
                  andi         s9, s4, 50
197:              sra          s10, t0, s5
                  xori         s10, a7, -512
                  lw           a4, 4(s7)
                  srli         s0, ra, 7
                  or           t3, a3, a2
                  sub          a1, tp, t0
                  addi         s7, s7, 44
                  nop
                  xor          ra, a4, s0
284:              addi x2, x14, 0
284:              jalr x2, x2, 0
sub_5:            slli         s4, t3, 15
                  bgeu         a7, a0, sub_5_stack_p
                  srl          a5, a4, t6
sub_5_stack_p:    addi         s7, s7, -36
                  sw           a4, 4(s7)
                  sra          s1, a2, t6
                  addi         ra, zero, -2 #init loop 0 counter
                  sll          s5, t6, a3
                  slt          gp, ra, a1
                  addi         a7, zero, 15 #init loop 0 limit
                  and          t2, a7, t3
sub_5_9_0_t:      sltiu        a0, t0, 900
                  sra          s11, a5, zero
                  nop
                  sra          s2, t6, s6
                  sltiu        t5, t2, -831
                  auipc        s9, 222781
                  sll          s0, s4, a5
                  addi         ra, ra, 1 #update loop 0 counter
                  and          s5, t0, s7
                  sra          a4, t0, s11
                  srai         s1, s7, 2
                  bne          ra, a7, sub_5_9_0_t #branch for loop 0
                  add          a2, s0, t4
                  addi         s0, zero, -2 #init loop 1 counter
                  sub          s9, a6, ra
                  ori          t4, s6, -615
                  sra          a7, s9, sp
                  addi         a5, zero, -12 #init loop 1 limit
sub_5_7_1_t:      addi         a7, tp, 951
                  srai         t4, ra, 14
                  andi         ra, s9, -1319
                  addi         s0, s0, -7 #update loop 1 counter
                  addi         t6, zero, -8 #init loop 0 counter
                  addi         a2, zero, 12 #init loop 0 limit
                  sltiu        a1, s3, 569
                  or           gp, s4, s5
sub_5_7_0_t:      nop
                  addi         t6, t6, 3 #update loop 0 counter
                  srl          t0, a6, zero
                  blt          t6, a2, sub_5_7_0_t #branch for loop 0
                  xori         a3, t5, -1185
                  srli         t0, a2, 22
                  bge          s0, a5, sub_5_7_1_t #branch for loop 1
                  or           gp, zero, s10
                  addi         s10, zero, 3 #init loop 0 counter
                  addi         t4, zero, -2 #init loop 0 limit
                  sra          a4, ra, a3
sub_5_2_0_t:      and          gp, a1, t6
                  sll          a0, s1, t6
                  slti         s8, s0, -1328
                  addi         s10, s10, -9 #update loop 0 counter
                  sltu         a4, s11, zero
                  bge          s10, t4, sub_5_2_0_t #branch for loop 0
                  srl          a3, s11, s3
                  addi         s5, zero, 2 #init loop 0 counter
                  xori         a3, s3, -436
                  sll          s1, s6, tp
                  addi         t0, zero, -19 #init loop 0 limit
sub_5_8_0_t:      slt          ra, t1, t6
                  addi         s5, s5, -7 #update loop 0 counter
                  slti         s9, t5, 1121
                  auipc        t2, 426108
                  add          s1, t2, s0
                  ori          t2, a1, 122
                  srai         a1, s4, 18
                  bne          s5, t0, sub_5_8_0_t #branch for loop 0
                  sltu         ra, s2, s6
                  addi         t6, zero, 7 #init loop 1 counter
                  or           s4, s5, zero
                  addi         s3, zero, 0 #init loop 1 limit
                  srai         s0, s7, 14
sub_5_1_1_t:      and          s8, s11, a1
                  slt          s2, t6, s3
                  addi         t6, t6, -7 #update loop 1 counter
                  slt          s11, a1, t6
                  addi         s1, zero, 6 #init loop 0 counter
                  addi         sp, zero, -17 #init loop 0 limit
                  sltu         gp, s5, s4
                  sub          a2, s8, s4
sub_5_1_0_t:      ori          s5, t6, -2030
                  and          t0, a3, a1
                  addi         s1, s1, -8 #update loop 0 counter
                  bge          s1, sp, sub_5_1_0_t #branch for loop 0
                  lui          t1, 346815
                  beq          t6, s3, sub_5_1_1_t #branch for loop 1
                  auipc        s6, 611912
                  addi         s10, zero, -9 #init loop 0 counter
                  sra          sp, s4, t6
                  auipc        a5, 44966
                  addi         a0, zero, -14 #init loop 0 limit
                  slti         t6, s5, -225
                  slli         t6, sp, 22
                  add          ra, sp, t0
sub_5_4_0_t:      slti         t6, t0, 1367
                  or           t4, a0, t1
                  srli         s1, a4, 18
                  addi         s10, s10, -5 #update loop 0 counter
                  slli         t3, s9, 22
                  sub          s4, ra, ra
                  xor          t5, t1, s8
                  sra          a4, t3, a4
                  sltiu        s8, a7, 1883
                  xor          a3, a7, s9
                  beq          s10, a0, sub_5_4_0_t #branch for loop 0
                  sltu         s2, s10, a5
                  addi         a3, zero, -7 #init loop 1 counter
                  srl          s0, s5, s3
                  addi         t4, t0, -691
                  xori         a2, a7, 1243
                  addi         gp, zero, 14 #init loop 1 limit
                  add          t5, a4, zero
sub_5_0_1_t:      add          s8, s6, s0
                  xori         ra, zero, 544
                  sltu         zero, tp, s5
                  add          s1, t2, ra
                  nop
                  addi         a3, a3, 7 #update loop 1 counter
                  sltiu        t1, a2, -1867
                  sltiu        s6, s9, 1018
                  addi         s5, zero, -8 #init loop 0 counter
                  srai         s8, s11, 0
                  add          s10, s11, s5
                  lui          t2, 479020
                  addi         t6, zero, 20 #init loop 0 limit
                  nop
sub_5_0_0_t:      ori          a0, t6, 102
                  addi         s5, s5, 7 #update loop 0 counter
                  andi         t2, s0, -945
                  slt          s9, zero, s5
                  sltiu        s3, a1, 1644
                  and          a1, tp, s3
                  addi         a0, s7, -1086
                  addi         s9, t2, -497
                  xori         s9, s7, -1583
                  bne          s5, t6, sub_5_0_0_t #branch for loop 0
                  sub          ra, sp, s5
                  sub          t2, a0, s0
                  beq          a3, gp, sub_5_0_1_t #branch for loop 1
                  sub          s6, t3, t0
                  addi         t4, zero, -7 #init loop 1 counter
                  addi         a0, zero, -15 #init loop 1 limit
sub_5_5_1_t:      and          s8, s1, s9
                  addi         t4, t4, -8 #update loop 1 counter
                  addi         s6, s2, -447
                  addi         ra, zero, -5 #init loop 0 counter
                  addi         s10, zero, 17 #init loop 0 limit
                  lui          t5, 257397
sub_5_5_0_t:      lui          t1, 170564
                  addi         ra, ra, 2 #update loop 0 counter
                  andi         zero, s3, -185
                  auipc        t3, 182427
                  beq          ra, s10, sub_5_5_0_t #branch for loop 0
                  add          a4, s3, tp
                  beq          t4, a0, sub_5_5_1_t #branch for loop 1
                  and          s5, t5, tp
                  addi         a4, zero, 6 #init loop 0 counter
                  andi         t4, a5, 380
                  addi         t0, t1, 1259
                  addi         s5, zero, -19 #init loop 0 limit
                  sll          t5, a0, tp
sub_5_11_0_t:     lui          t4, 524797
                  srl          a3, s7, s5
                  addi         a4, a4, -5 #update loop 0 counter
                  xor          t5, s5, s6
                  addi         t4, a0, -833
                  auipc        s8, 37886
                  ori          t5, zero, 416
                  bne          a4, s5, sub_5_11_0_t #branch for loop 0
                  add          s0, a3, gp
                  addi         s9, zero, -4 #init loop 0 counter
                  nop
                  sltu         t5, t6, t2
                  nop
                  auipc        t1, 766966
                  addi         a1, zero, -20 #init loop 0 limit
                  sltu         a3, s5, a7
                  srl          a7, t3, t4
                  slli         t6, sp, 29
                  sltu         a5, t2, s8
                  srl          s0, zero, s1
                  xor          t5, s8, t6
                  sub          s1, s6, s8
sub_5_3_0_t:      andi         t3, a1, -2020
                  addi         t6, t4, -1071
                  slti         t0, tp, 740
                  sub          ra, tp, a5
                  sra          sp, gp, a1
                  sll          t0, a1, a7
                  xori         s4, s2, 1626
                  sltu         a3, t4, t3
                  sll          s8, s2, s11
                  addi         s9, s9, -5 #update loop 0 counter
                  slti         a3, s9, 1382
                  and          zero, a1, t0
                  auipc        t4, 479251
                  bge          s9, a1, sub_5_3_0_t #branch for loop 0
                  and          t3, a6, t3
                  sra          a2, a2, a7
                  beq          a5, gp, 15f
                  add          s5, s3, sp
                  sub          a0, a6, a3
                  slli         a5, t2, 31
                  bge          a5, s9, 17f
                  bne          s8, s8, 23f
                  blt          a6, zero, 8f
8:                bge          a4, s5, 14f
                  sll          s1, s9, t1
                  andi         a5, s10, -1643
                  lui          a2, 638263
                  and          a7, s5, a3
                  and          t4, s2, ra
14:               slli         a0, a3, 15
15:               xori         s3, a7, -753
                  beq          t1, s6, 22f
17:               ori          a2, s4, 1195
                  xori         gp, a7, -1935
                  ori          s2, a4, -88
                  srli         a7, sp, 2
                  nop
22:               bne          a1, a4, 35f
23:               sltu         a1, a3, zero
                  beq          t2, t2, 34f
                  addi         s3, a6, -694
                  sltu         s5, s9, a7
                  ori          sp, t3, 1611
                  bge          s0, t0, 30f
                  bgeu         t3, t3, 37f
30:               bgeu         a6, a3, 41f
                  bgeu         zero, a3, 48f
                  sub          a7, s1, a4
                  slli         t4, s0, 20
34:               xor          a2, s10, zero
35:               bgeu         a4, s10, 36f
36:               srli         s8, s2, 9
37:               sub          a4, s8, s11
                  bltu         a0, t1, 57f
                  lui          s5, 761814
                  srli         s10, s3, 6
41:               slti         s6, t0, 256
                  srli         t0, s11, 6
                  addi         s8, t1, 668
                  bne          s2, s2, 48f
                  andi         t6, gp, -563
                  lui          zero, 245365
                  add          zero, t2, t0
48:               and          t6, s9, t6
                  or           sp, t4, s7
                  xor          s11, s10, t4
                  nop
                  blt          s10, s9, 63f
                  add          s0, gp, t3
                  bge          s7, tp, 70f
                  and          t3, s10, a5
                  addi         t0, t3, 1266
57:               slti         a4, t1, -1935
                  bgeu         a4, gp, 71f
                  sltiu        sp, sp, 105
                  ori          t3, a1, 86
                  lui          a0, 115398
                  blt          sp, t1, 67f
63:               srli         s2, s11, 22
                  sra          s6, s1, s5
                  sltiu        s8, t1, 331
                  beq          s6, s3, 76f
67:               sub          gp, a7, t0
                  add          s0, s10, a3
                  xori         t1, s8, 537
70:               nop
71:               srl          t1, a5, s7
                  or           s5, s9, a0
                  addi         sp, a6, -315
                  slti         zero, a7, -1129
                  bge          tp, a3, 94f
76:               beq          sp, a6, 84f
                  bge          s10, t3, 96f
                  lui          t6, 792874
                  bgeu         a6, a2, 84f
                  bge          zero, a1, 92f
                  bne          t4, s11, 96f
                  sltu         t5, s9, a5
                  srli         a0, zero, 20
84:               slt          s11, a3, s7
                  auipc        s4, 556329
                  andi         s0, a2, 1046
                  nop
                  beq          t5, gp, 101f
                  lui          sp, 149628
                  andi         t5, zero, -1553
                  beq          s6, a2, 106f
92:               sltu         ra, t1, s3
                  slli         ra, t5, 7
94:               and          gp, a2, gp
                  bgeu         gp, t0, 102f
96:               blt          t1, gp, 116f
                  lui          ra, 322827
                  beq          a2, a2, 112f
                  srai         a0, s1, 0
                  nop
101:              lui          s8, 302546
102:              andi         sp, t0, 1510
                  srai         t0, a5, 23
                  blt          t1, s0, 115f
                  or           t3, a4, s11
106:              sll          s4, s11, ra
                  sub          s4, s6, s4
                  bne          s9, a3, 115f
                  ori          s0, s4, 17
                  slt          a5, t0, t0
                  and          sp, a2, s9
112:              addi         gp, sp, 1703
                  beq          t3, s4, 130f
                  bge          s7, s7, 133f
115:              slt          a2, a6, a3
116:              xori         s8, ra, -973
                  srai         a4, s11, 20
                  xori         s8, a1, -481
                  bge          s9, ra, 129f
                  bne          s1, a2, 137f
                  slt          gp, a6, s9
                  xor          a4, s4, s0
                  sll          s2, s1, s11
                  auipc        zero, 207589
                  sll          t4, a4, s0
                  auipc        sp, 35700
                  bge          a2, t4, 133f
                  slt          a4, a5, a2
129:              lui          t2, 714970
130:              bge          t6, s11, 132f
                  sltiu        a7, t0, 166
132:              ori          gp, zero, -636
133:              nop
                  sltiu        a4, a7, -121
                  sub          s9, t5, s4
                  bltu         t5, s9, 144f
137:              sll          s1, s3, t5
                  bne          s2, t3, 148f
                  blt          s0, a1, 151f
                  slt          s10, t2, ra
                  bge          ra, s4, 146f
                  or           s11, ra, a7
                  blt          a3, s6, 147f
144:              andi         a4, t4, -1794
                  bltu         t3, sp, 158f
146:              sra          s6, s9, gp
147:              and          a4, s9, s3
148:              srl          s0, t4, a0
                  nop
                  xor          t1, t5, tp
151:              slli         a1, a4, 11
                  srai         ra, s11, 29
                  sub          t0, t3, s2
                  sltiu        sp, t6, 1679
                  bltu         s4, s9, 160f
                  srl          t5, s1, s10
                  or           a5, a3, zero
158:              bltu         a0, s11, 178f
                  ori          s9, s11, 1418
160:              sll          gp, zero, t4
                  sltu         s4, a7, t3
                  sub          a5, a1, t5
                  bne          s2, tp, 171f
                  or           gp, t0, s3
                  bge          s2, t6, 178f
                  beq          s10, a5, 179f
                  sltu         a1, t0, s8
                  xor          t3, t0, s11
                  nop
                  srai         s11, s1, 9
                  addi         a3, zero, 7 #init loop 0 counter
                  sltu         sp, s11, gp
                  slti         t0, a7, 555
                  srli         a5, a6, 3
                  slti         s0, a7, -1136
                  sltu         t6, ra, t4
                  slti         s11, s1, 2014
                  xori         s6, t6, -305
                  addi         a7, zero, 13 #init loop 0 limit
                  nop
                  slti         s5, s1, 605
                  xor          sp, a2, a7
                  srai         s10, s0, 1
                  nop
                  lui          s1, 992165
sub_5_10_0_t:     slti         s4, a0, 321
                  addi         a3, a3, 2 #update loop 0 counter
                  auipc        s4, 108707
                  xori         sp, s9, 818
                  bne          a3, a7, sub_5_10_0_t #branch for loop 0
                  andi         s0, t1, -296
171:              slt          s3, tp, a4
                  sra          s9, a5, gp
                  beq          t3, sp, 188f
                  andi         a4, s9, 264
                  bgeu         s8, a1, 194f
                  slli         s5, t3, 5
                  slli         a4, a6, 0
178:              xori         t3, t6, -1203
179:              blt          a1, s11, 185f
                  sra          a2, t6, t5
                  sub          t2, s5, t5
                  srai         a7, a4, 9
                  sltu         s6, s1, s2
                  bgeu         zero, a0, 203f
185:              sra          s2, s11, a5
                  xori         t0, a1, 260
                  and          a0, sp, s10
188:              srl          s8, s3, t6
                  and          a3, a5, s2
                  sra          s11, sp, s0
                  slti         a3, s9, 1324
                  bltu         t4, a3, 207f
                  slli         t3, a7, 23
194:              sltiu        ra, s7, -962
                  andi         s3, t0, -580
                  sub          s6, tp, a5
                  add          a3, a0, s10
                  sll          sp, t4, a4
                  srl          a5, t4, a2
                  auipc        t6, 725913
                  sra          t3, a2, s0
                  andi         s2, a7, 94
203:              or           t4, t5, tp
                  xor          t4, s8, a6
                  beq          s10, a5, 217f
                  blt          a4, a4, 207f
207:              slt          s0, sp, s5
                  srli         t3, t2, 18
                  lui          zero, 606644
                  nop
                  addi         t3, a6, -220
                  andi         a7, a3, -385
                  and          a1, t3, a7
                  sltu         t4, s9, s5
                  xori         a1, s9, -1748
                  sltu         sp, sp, t5
217:              auipc        a3, 675378
                  and          t2, a0, s8
                  bge          s3, s11, 220f
220:              sltu         s4, s7, t0
                  sltiu        s9, s8, 789
                  beq          s3, t5, 233f
                  sll          a7, s7, t4
                  blt          s5, s5, 240f
                  srli         a5, s9, 31
                  srli         s5, s4, 29
                  beq          a3, s2, 228f
228:              ori          t0, t6, -1922
                  slt          a3, s8, s3
                  sra          ra, s4, s7
                  beq          s4, t1, 246f
                  srl          t6, ra, a6
233:              and          s2, s3, t2
                  xor          t3, t4, a1
                  slti         a0, s6, 988
                  bne          t5, s7, 255f
                  bltu         t5, s7, 252f
                  bgeu         t5, t0, 250f
                  or           s9, s5, t1
240:              addi         t6, zero, -331
                  slli         s9, s10, 0
                  addi         t5, s3, 1513
                  ori          gp, s8, -1559
                  srl          s3, a5, a5
                  andi         s3, a1, 241
246:              add          s5, s0, t4
                  bne          t4, s9, 252f
                  add          a4, a1, s4
                  slti         a2, s5, 241
250:              ori          a2, a2, 1838
                  srl          s2, s5, s9
252:              slt          a5, a5, s3
                  ori          s4, s10, -830
                  addi         s9, gp, 451
255:              and          a7, s8, a1
                  srl          s1, a1, a1
                  sltiu        t6, t5, -871
                  addi         a4, s2, 1938
                  nop
                  blt          s2, gp, 262f
                  bltu         tp, s3, 274f
262:              addi         t0, s9, 257
                  srl          t3, a4, t1
                  andi         a2, a7, -1414
                  sll          s6, ra, s3
                  sra          s2, a7, tp
                  srai         s6, ra, 0
                  add          s6, s7, a7
                  slt          a3, s11, s8
                  andi         s3, gp, 1594
                  slt          s1, zero, t2
                  sltiu        s3, t6, 780
                  xor          gp, zero, a2
274:              sll          s8, t4, t4
                  addi         t3, s7, -1782
                  nop
                  sra          a3, a1, s3
                  addi         a1, zero, -10 #init loop 1 counter
                  andi         a4, ra, -1835
                  xor          t0, a7, ra
                  slli         s6, s3, 5
                  addi         s5, zero, 8 #init loop 1 limit
                  lui          s4, 1001529
sub_5_6_1_t:      addi         t4, s7, -1882
                  addi         a1, a1, 4 #update loop 1 counter
                  srli         t4, t4, 31
                  and          t5, s3, t3
                  add          ra, s2, t1
                  addi         a5, zero, -3 #init loop 0 counter
                  sll          a0, s6, s1
                  sub          t1, t5, s8
                  addi         t4, t3, -1255
                  or           t4, a1, a1
                  sll          a7, a7, t2
                  addi         a2, zero, -2 #init loop 0 limit
                  slt          t3, s0, t3
                  srl          s11, sp, a3
                  nop
                  sll          t5, t2, zero
                  slli         t2, s5, 29
                  xori         t0, s0, -815
                  addi         s1, s10, 692
sub_5_6_0_t:      and          a4, a1, t4
                  auipc        t3, 659709
                  addi         a5, a5, 4 #update loop 0 counter
                  srli         t6, t1, 8
                  blt          a5, a2, sub_5_6_0_t #branch for loop 0
                  sll          ra, s0, gp
                  slli         gp, a3, 0
                  slli         ra, a1, 20
                  blt          a1, s5, sub_5_6_1_t #branch for loop 1
                  nop
                  lui          s6, 292965
                  ori          s0, a3, 1306
                  lui          a1, 103139
                  sll          s9, s6, s11
                  lui          s4, 395896
                  or           s0, s9, s9
                  bne          s9, a4, 303f
                  bgeu         s1, t5, 295f
                  srli         a1, a3, 13
                  sltiu        s3, s2, 1584
                  lui          a7, 370245
                  andi         s0, s8, -1460
                  xori         sp, s10, -1838
                  bge          sp, s2, 296f
                  auipc        sp, 773464
                  slli         s4, t3, 25
                  beq          a4, sp, 311f
295:              blt          s2, t2, 303f
296:              lui          s4, 326019
                  slt          s6, t3, t2
                  srl          s1, t2, s0
                  ori          a1, a2, -1059
                  srl          t2, t5, a1
                  beq          t0, s1, 312f
                  bne          t2, a3, 312f
303:              andi         s4, s2, -1438
                  or           zero, s9, s3
                  slli         a4, s10, 22
                  or           ra, t5, a5
                  nop
                  slti         s1, t6, -1741
                  nop
                  sltiu        a3, t1, 843
311:              sltiu        a7, a3, -1316
312:              srli         s6, a5, 22
                  sll          s2, s4, s1
                  srai         s5, t2, 27
                  blt          s11, s7, 328f
                  slli         a1, gp, 4
                  srl          ra, sp, s3
                  nop
                  auipc        s3, 941961
                  lui          t2, 750089
                  addi         s11, s5, -1140
                  blt          t5, t6, 323f
323:              and          t5, s4, t6
                  add          s0, s0, t6
                  xori         a7, sp, 49
                  beq          t1, s7, 343f
                  beq          t0, s5, 333f
328:              nop
                  bltu         t6, t6, 337f
                  bge          a6, ra, 346f
                  xor          s2, t3, t2
                  bne          a6, s3, 343f
333:              andi         t5, t1, -608
                  and          t5, t4, tp
                  xor          t5, s1, t0
                  slt          s8, s11, zero
337:              sltiu        t3, t6, 1183
                  srl          s5, a3, s8
                  xor          s0, a3, t3
                  addi         s4, s2, 1109
                  and          s1, a5, t0
                  bge          s3, s1, 354f
343:              bltu         s3, s0, 363f
                  xori         s2, t1, -2012
                  bltu         s5, a3, 358f
346:              slt          ra, a2, t0
                  bltu         t4, t4, 354f
                  srl          t3, tp, s0
                  blt          a2, t3, 355f
                  addi         a0, s10, 393
                  srl          a4, t6, gp
                  beq          gp, s1, 356f
                  ori          a2, a0, 1876
354:              add          s10, t3, s8
355:              lui          sp, 824156
356:              slli         t2, a3, 6
                  or           t3, a7, t1
358:              or           a3, t1, s2
                  sltu         a7, s6, s10
                  sub          t0, sp, a6
                  addi         a3, s10, 1904
                  slli         s4, s0, 30
363:              auipc        s3, 797124
                  lui          zero, 730506
                  or           s6, s6, a0
                  auipc        t5, 900101
                  ori          t3, s3, -2029
                  nop
                  slti         ra, s8, 1694
                  slt          a1, zero, a7
                  xor          t0, a5, s4
                  srl          ra, t3, a3
                  add          s6, t5, s1
                  sll          s11, a0, sp
                  bge          s2, t6, 389f
                  srai         s9, sp, 4
                  blt          t0, s11, 396f
                  sra          s5, s9, a0
                  xori         zero, s0, -808
                  slti         s9, s7, 1748
                  xori         ra, t4, 1388
                  or           s5, a4, a1
                  nop
                  and          t5, t6, s4
                  srli         a0, ra, 16
                  sll          a0, a4, a0
                  bne          sp, s4, 392f
                  slti         a4, s5, 136
389:              sltu         a5, s2, s4
                  sub          a7, s3, t2
                  sra          s0, s1, t2
392:              slti         t4, a3, 1566
                  and          a3, a0, t5
                  beq          s5, s2, 404f
                  srl          a3, s0, a5
396:              addi         s4, ra, 1597
                  sll          t6, a2, zero
                  srli         t4, t2, 12
                  add          s6, zero, s10
                  auipc        s2, 1001277
                  sra          a1, s7, s1
                  or           a5, gp, a3
                  auipc        a2, 247112
404:              auipc        t0, 1024727
                  or           t1, s1, s7
                  slti         s10, a0, 103
                  lui          s10, 967872
                  srai         a3, s3, 13
                  bltu         s4, t6, 413f
                  bne          zero, tp, 412f
                  slt          s5, s4, s4
412:              ori          s2, a2, -1338
413:              slli         a1, zero, 30
                  sltiu        s4, a7, -411
                  sub          a5, s9, s8
                  lui          gp, 451603
                  nop
                  xor          s4, t2, s1
                  auipc        s8, 955124
                  and          gp, t6, sp
                  slti         t4, s2, -915
                  sra          gp, t5, a1
                  srl          s3, tp, s2
                  auipc        sp, 159649
                  nop
                  andi         t1, s4, -1602
                  beq          s8, a4, 428f
428:              slt          t4, gp, a7
                  xor          t0, t0, s3
                  bge          t1, gp, 447f
                  bne          t6, a2, 432f
432:              srli         s11, s10, 29
                  or           a2, t3, gp
                  slli         t5, tp, 28
                  auipc        t3, 498870
                  bgeu         s3, gp, 449f
                  srli         s2, ra, 21
                  srai         a4, t0, 2
                  sll          s0, gp, t2
                  bge          s1, t1, 459f
                  add          a5, s0, a5
                  add          s0, s2, a5
                  nop
                  srl          t5, s8, s0
                  beq          s1, t4, 457f
                  slt          t0, s10, t6
447:              sltiu        s9, s0, -141
                  addi         t0, t4, 983
449:              srai         a1, s5, 16
                  srli         a1, t2, 13
                  srai         s5, s10, 25
                  bne          s7, sp, 471f
                  ori          ra, s2, 1124
                  bgeu         t3, s10, 462f
                  slti         t3, a6, 1627
                  sll          ra, gp, s7
457:              bge          s2, a5, 465f
                  slli         ra, ra, 14
459:              sll          s5, a4, s1
                  bgeu         t3, t4, 475f
                  srai         s3, s11, 27
462:              bltu         t6, t0, 473f
                  xori         a0, t2, -161
                  xori         zero, s0, -801
465:              add          t5, s11, t2
                  sub          t6, s7, s4
                  lui          a0, 552382
                  blt          ra, s5, 481f
                  auipc        s8, 775832
                  sltiu        zero, s3, 670
471:              or           a5, t0, s3
                  bge          s0, s9, 478f
473:              xor          s0, t5, s9
                  sra          t5, a0, s9
475:              sra          a4, a6, tp
                  blt          s10, sp, 495f
                  auipc        t5, 799690
478:              sltiu        t3, tp, -904
                  sub          s2, a6, a4
                  slti         s6, s7, -1322
481:              sltiu        s3, s9, -41
                  beq          a2, s2, 488f
                  slli         s8, a0, 30
                  srai         t2, t1, 16
                  andi         a5, s0, -499
                  bne          s8, s11, 499f
                  or           t5, s3, a0
488:              add          s1, sp, a1
                  srl          sp, ra, a3
                  xor          s1, tp, a0
                  and          s3, a5, t5
                  bge          s8, ra, 506f
                  sltu         t1, a5, a2
                  sltu         ra, t6, a7
495:              bne          a3, t1, 510f
                  bltu         t2, a3, 507f
                  sub          s10, s11, s2
                  add          s10, s8, ra
499:              sll          s3, a4, a7
                  xor          a5, a3, a5
                  nop
                  addi         a5, s2, 46
                  slti         gp, s7, -620
                  andi         a2, a1, 896
                  sll          zero, ra, a1
506:              beq          s11, t3, 526f
507:              blt          s11, a7, 514f
                  bltu         a7, t6, 518f
                  slt          s11, s8, s5
510:              srai         s11, a0, 0
                  sra          s9, t3, s7
                  bgeu         s3, s5, 524f
                  bltu         sp, t3, 529f
514:              ori          s10, s7, 1683
                  xor          t5, s5, gp
                  srai         t0, a6, 1
                  sub          s4, tp, t0
518:              blt          sp, s9, 535f
                  nop
                  srli         s9, s4, 24
                  and          gp, t4, tp
                  add          s8, s3, tp
                  slli         t5, s6, 21
524:              nop
                  xori         t6, sp, 384
526:              sll          s6, a6, s7
                  add          s5, gp, s4
                  ori          gp, s0, 2017
529:              srai         s0, a5, 19
                  lui          a7, 586950
                  srl          t5, a0, a7
                  bne          s5, a6, 537f
                  and          t5, a1, s11
                  sub          t6, a6, t4
535:              bne          t5, t5, 543f
                  srli         s9, s0, 12
537:              srai         gp, s6, 0
                  srli         a1, gp, 1
                  slti         s0, t2, -1060
                  ori          s11, a2, 1560
                  slti         s1, s11, -1651
                  slti         ra, s3, -873
543:              sltu         gp, s7, a2
                  srli         ra, gp, 25
                  xor          a5, a2, s6
                  srl          zero, s6, s0
                  slt          s2, t0, a4
                  sltu         sp, ra, t1
                  srai         s4, t0, 19
                  slti         s5, zero, -577
                  slli         t1, t5, 3
                  srai         s3, t5, 2
                  add          s11, t2, t5
                  bgeu         zero, a7, 559f
                  sra          s9, s5, sp
                  xori         ra, s0, -257
                  sltiu        a4, t6, 2024
                  slti         a3, s5, 1578
559:              xori         a2, sp, 1898
                  slti         a3, s1, -149
                  add          s0, s0, t3
                  and          s11, s4, sp
                  slt          t3, t0, s11
                  srai         t3, a7, 24
                  or           zero, t4, s1
                  addi         t1, t1, 549
                  lui          ra, 708173
                  ori          t4, a7, -1107
                  sltu         zero, a6, a6
                  lui          t4, 96863
                  slti         ra, zero, -1207
                  bge          s10, ra, 579f
                  srl          a2, zero, a2
                  sra          s11, a3, t4
                  nop
                  add          a3, s3, sp
                  sra          t2, s4, a2
                  blt          t5, t4, 597f
579:              or           t2, s2, s6
                  xori         s5, t6, -1083
                  beq          s3, s9, 582f
582:              slt          zero, sp, ra
                  sltu         s0, t1, s1
                  blt          s10, s3, 599f
                  andi         t6, s3, 1773
                  srai         t3, t5, 12
                  srl          gp, s11, a2
                  andi         sp, a2, 1281
                  slt          s2, a2, a2
                  srli         s4, t0, 12
                  sltu         s11, s6, s10
                  andi         a5, sp, -1674
                  slt          s8, t5, a2
                  slli         a7, a5, 8
                  beq          a0, s9, 614f
                  xor          a3, s4, tp
597:              sll          t3, a1, s1
                  add          gp, a2, t1
599:              and          s3, t6, s7
                  sll          sp, ra, t1
                  sll          t2, ra, t1
                  ori          t3, s6, -786
                  sltiu        t1, t6, -136
                  srli         s6, s3, 26
                  bge          ra, a6, 616f
                  slti         gp, t2, 180
                  slt          ra, t1, a3
                  blt          a3, t5, 614f
                  add          t2, t1, t0
                  sra          a1, a1, t6
                  blt          ra, tp, 619f
                  ori          a5, ra, 24
                  srli         s8, s7, 5
614:              xor          s0, t1, s10
                  bge          a2, s0, 617f
616:              sll          a4, s7, s2
617:              auipc        t6, 618717
                  srli         s6, s3, 30
619:              srli         t1, a3, 10
                  xori         s8, s4, 935
                  lw           a4, 4(s7)
                  ori          sp, a3, -1627
                  addi         s7, s7, 36
                  sub          s10, ra, a7
                  sll          t0, a5, s7
                  andi         s11, s1, -1444
                  sltu         t4, s11, s3
                  sltiu        t1, s8, -837
                  add          a7, sp, t3
                  slli         a0, a1, 2
                  sll          s4, s8, a4
886:              addi x20, x14, 1
886:              jalr x20, x20, 0
sub_3:            slt          a0, t1, s10
                  bge          a5, a5, sub_3_stack_p
sub_3_stack_p:    addi         s7, s7, -12
                  or           a3, a7, t0
                  andi         t3, sp, -540
                  or           t6, zero, t2
                  sw           a4, 4(s7)
                  and          s6, t3, a1
                  andi         a0, t0, 906
                  add          t4, a6, t2
                  addi         s6, zero, -1 #init loop 1 counter
                  addi         t1, zero, 6 #init loop 1 limit
                  srl          t3, s1, s4
sub_3_2_1_t:      slt          sp, s2, t0
                  addi         s6, s6, 7 #update loop 1 counter
                  addi         s8, zero, -10 #init loop 0 counter
                  ori          s2, t6, -1864
                  addi         a4, zero, -18 #init loop 0 limit
                  or           a5, t2, t2
sub_3_2_0_t:      slti         sp, s2, -1899
                  and          s9, a2, gp
                  addi         s8, s8, -8 #update loop 0 counter
                  bne          s8, a4, sub_3_2_0_t #branch for loop 0
                  andi         a7, s5, -1998
                  bne          s6, t1, sub_3_2_1_t #branch for loop 1
                  sub          t6, s10, a0
                  addi         a1, zero, 8 #init loop 1 counter
                  addi         t1, zero, 8 #init loop 1 limit
sub_3_0_1_t:      or           a5, zero, t2
                  addi         a1, a1, -7 #update loop 1 counter
                  sltiu        s4, s4, 740
                  addi         s5, zero, 4 #init loop 0 counter
                  addi         a7, zero, 4 #init loop 0 limit
                  addi         t3, a3, -763
sub_3_0_0_t:      or           zero, t0, a7
                  addi         s5, s5, -3 #update loop 0 counter
                  bgeu         s5, a7, sub_3_0_0_t #branch for loop 0
                  slli         s11, t5, 31
                  bgeu         a1, t1, sub_3_0_1_t #branch for loop 1
                  srl          s10, a2, a6
                  addi         a7, gp, -778
                  and          s2, t2, a5
                  xori         s10, a6, 1802
                  bge          t1, s7, 4f
4:                sra          a7, s0, a4
                  srl          gp, s3, t1
                  srl          a1, zero, gp
                  add          s8, sp, a1
                  slli         t5, a5, 5
                  andi         t4, s6, -1434
                  bgeu         t2, a3, 28f
                  bltu         s3, s7, 21f
                  bne          s9, s9, 28f
                  sltiu        gp, t1, -264
                  sll          ra, a0, a4
                  add          a7, tp, zero
                  ori          a3, s10, -273
                  ori          s1, s1, 427
                  sll          gp, a6, a5
                  sub          s10, s6, a7
                  xori         t6, t5, -1927
21:               sltiu        s11, s6, -1725
                  srl          t5, a4, gp
                  xor          s0, s6, a6
                  bgeu         s11, t6, 44f
                  srl          t0, zero, s11
                  lui          a2, 776799
                  sub          s2, s5, s3
28:               slli         t6, a4, 0
                  auipc        t5, 54755
                  bgeu         t1, a1, 32f
                  srai         a2, ra, 12
32:               nop
                  xori         s0, s3, -834
                  auipc        a5, 225863
                  sub          s1, t3, a5
                  slli         a5, s8, 0
                  sltu         a1, gp, s6
                  auipc        s2, 833388
                  sra          sp, t2, ra
                  sll          t1, s7, ra
                  bgeu         t0, t0, 51f
                  bgeu         s0, s0, 56f
                  srli         s2, ra, 0
44:               bltu         s3, s1, 50f
                  sltiu        s1, t5, -709
                  addi         sp, zero, -6 #init loop 0 counter
                  lui          t1, 708147
                  addi         s11, zero, -13 #init loop 0 limit
                  or           ra, sp, a6
                  sltu         a0, a1, s5
                  sll          s3, t0, s9
sub_3_1_0_t:      ori          a0, a4, 1477
                  sltu         s1, s7, t4
                  and          t3, a3, s1
                  slti         s8, t6, 1231
                  addi         sp, sp, -1 #update loop 0 counter
                  sra          s6, s5, s0
                  auipc        t4, 788890
                  sub          gp, a3, a2
                  sltiu        s5, a2, -233
                  srl          t0, s7, a0
                  or           zero, gp, t5
                  srli         s8, s0, 13
                  sltu         s8, tp, a6
                  sub          s9, s11, s8
                  add          s10, sp, s6
                  nop
                  xor          a3, s11, s3
                  xori         gp, a4, -1482
                  slli         s10, a4, 10
                  bge          sp, s11, sub_3_1_0_t #branch for loop 0
                  add          t2, s4, t2
                  srai         t4, a2, 16
                  bltu         s1, a0, 65f
                  auipc        s10, 64568
                  bltu         t4, ra, 58f
50:               sll          t4, t5, s1
51:               bltu         s4, s1, 59f
                  and          a5, s9, s4
                  or           ra, a7, t5
                  addi         t2, s6, -1182
                  srai         sp, s7, 5
56:               bne          a7, a2, 70f
                  add          s5, a0, s9
58:               blt          zero, a7, 75f
59:               lui          zero, 144866
                  bgeu         s3, a1, 70f
                  sltu         a5, s6, s7
                  addi         s3, s2, 1764
                  slt          s2, a5, a1
                  sltiu        ra, s11, -1890
65:               blt          s11, s2, 73f
                  addi         ra, t4, -129
                  slli         a2, s6, 23
                  xori         a0, a0, -1370
                  sra          a5, s9, s0
70:               and          ra, a6, a7
                  and          a5, s8, a6
                  blt          a0, a4, 83f
73:               ori          a4, s10, 1959
                  add          t1, ra, a4
75:               auipc        t4, 297793
                  nop
                  slli         a2, a4, 11
                  sll          s2, s0, gp
                  bgeu         t1, ra, 99f
                  xori         a1, s9, 1025
                  sub          s2, s10, a7
                  addi         s5, s4, -1504
83:               beq          s8, s11, 93f
                  srai         a5, s4, 2
                  sll          s0, a2, a5
                  add          a0, s4, s4
                  bgeu         s0, a3, 100f
                  blt          s2, s7, 97f
                  xor          t5, s5, gp
                  sll          t6, a4, a7
                  blt          t2, sp, 92f
92:               sub          s5, s8, ra
93:               xori         t3, s0, -1207
                  bne          tp, ra, 96f
                  nop
96:               lui          a0, 335696
97:               bltu         a5, t4, 115f
                  srl          s11, s0, t5
99:               slt          a5, t4, s3
100:              slti         s3, tp, 1502
                  srai         gp, a0, 1
                  slli         a2, s8, 30
                  bltu         t5, a0, 115f
                  and          a3, s11, zero
                  andi         a5, t3, 1305
                  nop
                  andi         a2, t2, -708
                  bgeu         s0, t3, 109f
109:              srli         sp, a4, 28
                  srli         a3, a4, 18
                  ori          a2, s2, -263
                  auipc        s1, 540703
                  bne          zero, s8, 123f
                  addi         a1, t2, -1256
115:              slli         a4, s11, 31
                  bltu         sp, s6, 133f
                  xor          zero, s1, s4
                  and          t6, s9, s3
                  andi         sp, s11, -832
                  srai         t3, a5, 2
                  sltu         t6, t0, s8
                  xori         a4, t1, 608
123:              bgeu         s11, ra, 131f
                  and          a3, gp, s3
                  nop
                  and          s1, t2, s6
                  sra          t6, s5, t1
                  beq          s10, a7, 144f
                  sub          a5, a1, gp
                  bne          a4, s3, 131f
131:              nop
                  slli         a0, t1, 28
133:              lui          a2, 357749
                  srl          s2, s4, t3
                  nop
                  srli         s3, tp, 30
                  srli         s11, s0, 8
                  bge          a4, s3, 147f
                  beq          s4, s1, 149f
                  xori         gp, s0, -1374
                  xor          zero, s4, s5
                  sub          s0, a1, ra
                  bge          t4, s10, 156f
144:              blt          s7, t2, 154f
                  and          s2, s7, s9
                  srl          s5, ra, t5
147:              sltiu        ra, zero, -1440
                  andi         t6, s6, 1943
149:              srl          a5, t5, a5
                  lui          s11, 711248
                  sltiu        s2, t5, 1482
                  xor          s0, t2, t6
                  xori         gp, s9, -1575
154:              sll          s3, zero, t1
                  srli         ra, t2, 19
156:              andi         a0, s2, -164
                  auipc        a0, 140195
                  sltu         a1, s8, s2
                  bge          a4, a6, 160f
160:              nop
                  srai         s9, a3, 6
                  nop
                  auipc        s0, 813538
                  beq          zero, s5, 170f
                  xor          s4, a5, t5
                  lui          s5, 445333
                  slt          a0, a4, a7
                  bgeu         s7, gp, 182f
                  slli         t2, s6, 7
170:              beq          a6, zero, 188f
                  auipc        s10, 644810
                  or           s6, s11, sp
                  slt          a1, s7, s0
                  addi         a4, a6, 597
                  slli         a1, t2, 9
                  and          t0, a3, gp
                  bne          a5, a1, 194f
                  add          a4, s4, s11
                  slti         s6, t3, -1648
                  ori          t1, t4, 105
                  sra          a4, a7, s0
182:              sra          t1, s7, a2
                  sltiu        s9, s1, -1256
                  and          zero, t3, t3
                  sll          a7, a7, a5
                  sltu         a5, t0, sp
                  ori          a2, t4, 863
188:              srli         s10, s5, 1
                  blt          s11, s4, 196f
                  nop
                  bgeu         s9, s10, 193f
                  nop
193:              sltiu        s2, s7, 1656
194:              slli         t0, a4, 15
                  slti         gp, s2, -964
196:              slti         a5, a4, -443
                  lw           a4, 4(s7)
                  sltiu        s9, t1, 63
                  slt          s5, tp, s3
                  addi         s7, s7, 12
                  srli         a3, a0, 3
269:              addi x31, x14, 1
269:              jalr x31, x31, 0
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
mmode_intr_vector_1:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_2:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_3:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_4:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_5:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_6:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_7:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_8:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_9:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_10:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_11:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_12:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_13:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_14:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

mmode_intr_vector_15:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x16, test_done
                  jalr x0, x16, 0

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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x4, x23, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x8, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x8, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x8, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x8, x19, ecall_handler
                  li x19, 0x1
                  beq x8, x19, instr_fault_handler
                  li x19, 0x5
                  beq x8, x19, load_fault_handler
                  li x19, 0x7
                  beq x8, x19, store_fault_handler
                  li x19, 0xc
                  beq x8, x19, pt_fault_handler
                  li x19, 0xd
                  beq x8, x19, pt_fault_handler
                  li x19, 0xf
                  beq x8, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x23, x4, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x4, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x4, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x23, x4, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x23, x4, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x23, x4, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
