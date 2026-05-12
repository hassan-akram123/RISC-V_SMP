.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x29, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 1
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x1dc222f2
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0xf8c10d65
                  li x6, 0x0
                  li x7, 0x80000000
                  li x8, 0x0
                  li x9, 0x32699daf
                  li x10, 0x7
                  li x11, 0xb
                  li x12, 0x80000000
                  li x13, 0xfe46b6c9
                  li x14, 0x80000000
                  li x15, 0x677408b4
                  li x16, 0xf42986e6
                  li x17, 0x0
                  li x18, 0x6
                  li x19, 0x2
                  li x20, 0x1
                  li x21, 0x80000000
                  li x22, 0x1352ecca
                  li x23, 0x8
                  li x25, 0xe
                  li x26, 0x0
                  li x27, 0x2
                  li x28, 0x9bc17c02
                  li x30, 0x0
                  li x31, 0x6
                  la x24, user_stack_end
main:             la           t5, sub_1
                  slli         a1, a0, 19
                  addi         t5, t5, -653
                  sll          ra, s4, t3
                  bne          s4, s4, main_j2 #branch to jump instr
                  or           zero, a4, a5
                  sll          a3, s1, s8
                  slli         a1, s9, 11
main_j2:          jalr         t1, t5, 653 #jump main -> sub_1
                  la           a1, sub_3
                  add          a6, s7, s5
                  addi         a1, a1, -812
                  andi         s5, t4, -182
                  lui          s5, 656590
                  srli         t6, t0, 1
                  xori         s3, tp, -1097
                  xori         s1, s6, 815
                  sltu         zero, s8, s6
                  srai         s0, s4, 13
                  sltu         t0, a1, s8
main_j3:          jalr         t1, a1, 812 #jump main -> sub_3
                  addi         s0, zero, 7 #init loop 1 counter
                  addi         a4, zero, 3 #init loop 1 limit
                  sltu         a1, s3, t1
main_0_1_t:       add          zero, s1, t6
                  addi         s0, s0, -1 #update loop 1 counter
                  srl          s6, s8, s7
                  addi         s5, zero, 1 #init loop 0 counter
                  addi         t2, zero, 8 #init loop 0 limit
main_0_0_t:       sub          sp, t3, tp
                  addi         s5, s5, 10 #update loop 0 counter
                  bltu         s5, t2, main_0_0_t #branch for loop 0
                  bgeu         s0, a4, main_0_1_t #branch for loop 1
                  srl          s4, s9, a5
                  bltu         s11, t1, 16f
                  srl          t6, a7, s5
                  srai         s11, s1, 24
                  and          s11, a3, t5
                  auipc        s5, 420255
                  or           zero, zero, s2
                  la           s4, sub_2
                  xori         s0, gp, -21
                  addi         s4, s4, -568
                  srl          s10, t1, t5
                  sub          t2, tp, tp
                  and          s1, s9, s7
main_j1:          jalr         t1, s4, 569 #jump main -> sub_2
                  sltiu        a0, a4, 1285
                  or           s7, a5, a7
                  add          s6, zero, s3
                  slti         a4, ra, 1228
                  or           s9, s10, zero
                  beq          t1, s5, 12f
                  slt          a0, a4, gp
                  and          a7, a6, s0
12:               slti         a3, s8, 1005
                  slt          t6, s8, tp
                  ori          sp, s10, -566
                  blt          s3, a3, 23f
16:               slti         s6, s11, -839
                  slli         t2, s11, 28
                  xor          s5, tp, s2
                  sub          s1, t3, a3
                  sltu         a1, a5, s3
                  sll          s11, a1, s4
                  add          a4, t1, a1
23:               sltiu        a7, tp, 584
                  sra          t2, s7, gp
                  sll          s11, s5, tp
                  andi         ra, t0, 484
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bge          t6, tp, sub_2_stack_p
                  and          a2, a6, zero
                  srai         s10, s9, 12
sub_2_stack_p:    addi         s8, s8, -32
                  sw           t1, 4(s8)
                  sltiu        gp, s1, 1462
                  ori          s0, t4, 548
                  srli         tp, t6, 14
                  add          a1, a7, s11
                  sltu         s7, t6, s1
                  lui          t0, 444081
                  blt          s2, s10, 8f
                  or           a4, a4, a0
                  sll          a2, s10, s2
                  addi         t3, a5, -882
8:                srai         sp, gp, 2
                  sra          s10, s9, t4
                  lw           t1, 4(s8)
                  slt          gp, a1, a3
                  slli         gp, a5, 16
                  ori          s2, s6, 422
                  addi         s8, s8, 32
                  auipc        s4, 974592
                  add          s6, a5, t5
                  add          zero, a2, zero
                  nop
26:               addi x17, x6, 0
26:               jalr x17, x17, 0
sub_1:            beq          s6, t4, sub_1_stack_p
sub_1_stack_p:    addi         s8, s8, -44
                  slt          t3, t1, s8
                  auipc        s10, 412713
                  sltiu        t3, s10, 512
                  sw           t1, 4(s8)
                  add          gp, ra, s0
                  sltu         s5, s5, t6
                  add          a2, s0, ra
                  and          t0, a6, t3
                  nop
                  addi         s10, t2, -1877
                  sra          sp, t2, t4
                  xori         zero, s3, 1299
                  xor          a6, t0, t4
                  and          tp, t5, a1
                  slli         a7, t6, 1
                  bge          zero, t5, sub_1_j4 #branch to jump instr
                  add          a2, s11, s9
sub_1_j4:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  la           s0, sub_5
                  andi         t1, s4, 373
                  add          s2, tp, t0
                  addi         s0, s0, 419
                  add          a3, sp, s11
                  blt          s5, ra, sub_1_j5 #branch to jump instr
                  srl          s4, a1, t0
                  slti         s1, ra, 1552
sub_1_j5:         jalr         t1, s0, -419 #jump sub_1 -> sub_5
                  sub          zero, ra, s7
                  lui          a0, 344649
                  xori         t3, s3, 1146
                  sltiu        a7, gp, 917
                  bne          s7, s3, 16f
                  sll          zero, a2, a7
                  sll          a6, a6, ra
                  srai         t3, a7, 23
                  sltu         s3, zero, s4
                  sll          s10, a7, t2
                  srai         tp, gp, 15
                  srli         s6, t1, 22
                  xori         ra, s8, -166
                  sltu         s11, t6, s7
                  sra          a7, ra, t6
                  bgeu         a2, s5, 32f
16:               slti         a1, ra, 1209
                  beq          t1, s3, 32f
                  beq          s6, s3, 22f
                  addi         a4, t4, -1373
                  lui          s10, 707585
                  ori          s3, a2, -784
22:               andi         ra, s10, 1671
                  or           zero, a3, t0
                  lui          s0, 620371
                  sra          s3, t4, s6
                  bge          t5, t5, 32f
                  sltu         s4, a3, a0
                  bltu         t3, a7, 31f
                  bne          t4, t5, 32f
                  andi         t5, s11, 1476
31:               blt          s1, s1, 32f
32:               xori         tp, s2, 1746
                  and          s6, s1, a5
                  xori         s11, gp, -1652
                  auipc        a7, 517445
                  sltiu        s1, t2, 607
                  lw           t1, 4(s8)
                  srai         gp, s0, 2
                  sltiu        s1, t4, 940
                  addi         s8, s8, 44
                  sltu         gp, t3, a4
71:               addi x11, x6, 1
71:               jalr x11, x11, 0
sub_3:            slli         ra, s7, 24
                  bne          a3, a0, sub_3_stack_p
                  sub          t3, s4, a2
sub_3_stack_p:    addi         s8, s8, -8
                  sw           t1, 4(s8)
                  sll          s1, a7, sp
                  andi         t1, s2, -1494
                  bgeu         gp, tp, 13f
                  bgeu         a2, tp, 4f
                  srl          tp, t5, tp
4:                lui          a0, 625072
                  auipc        t6, 54460
                  auipc        tp, 525486
                  sub          s11, s10, s7
                  beq          t4, s2, 26f
                  sub          s6, ra, s1
                  sll          a1, s8, a3
                  srai         s1, tp, 19
                  srli         sp, a2, 20
13:               bne          sp, ra, 17f
                  slti         tp, gp, -1476
                  bne          s2, t4, 34f
                  srli         s1, s2, 30
17:               xor          s1, a4, t0
                  srli         zero, t5, 2
                  or           tp, s10, a1
                  bgeu         a6, a1, 22f
                  bne          a0, a1, 23f
22:               auipc        s7, 491107
23:               auipc        s7, 706809
                  bge          t0, ra, 34f
                  auipc        a2, 633821
26:               beq          s9, t5, 46f
                  sll          a3, zero, s9
                  addi         gp, t1, 1812
                  add          t3, t6, s5
                  xori         s10, s9, 1255
                  slt          s2, s9, s3
                  srl          t6, s7, s3
                  srl          t3, tp, s9
34:               srli         s9, gp, 9
                  srli         a0, a2, 21
                  bne          t0, s9, 44f
                  addi         a2, t5, 129
                  srl          s9, s1, s9
                  sltiu        t1, t0, -1442
                  bge          t5, s10, 46f
                  bgeu         tp, a4, 46f
                  lui          s10, 997936
                  slli         a1, a4, 2
44:               sltu         s7, s5, s10
                  xor          s2, tp, s0
46:               srli         s5, a6, 4
                  andi         sp, t3, 283
                  xori         s4, a2, -1088
                  sub          t3, tp, t5
                  lw           t1, 4(s8)
                  slt          a4, s9, a3
                  xori         zero, s2, 577
                  ori          a1, t1, -570
                  addi         t2, t6, -1385
                  srli         t2, zero, 28
                  addi         s8, s8, 8
                  nop
64:               addi x31, x6, 0
64:               jalr x31, x31, 0
sub_4:            srli         a7, s0, 6
                  or           t6, t2, s7
                  sll          tp, s4, t0
                  addi         s8, s8, -28
                  lui          s0, 34322
                  ori          zero, t1, -2000
                  sltu         s7, s3, a5
                  sw           t1, 4(s8)
                  slt          s1, a2, s11
                  add          s3, s1, a2
                  sltiu        s6, t4, -1466
                  blt          t5, s11, 10f
                  nop
                  andi         s10, a4, -1935
                  andi         s10, a0, 43
                  sltu         s11, t5, a6
                  or           ra, t6, a7
                  beq          s8, t3, 10f
                  beq          t0, s1, 10f
                  and          s9, zero, a2
10:               sll          a4, a0, a3
                  sll          sp, a7, sp
                  auipc        ra, 284157
                  lw           t1, 4(s8)
                  ori          tp, a4, -1603
                  slli         s10, t5, 13
                  addi         s8, s8, 28
                  sra          a0, t1, a3
28:               addi x5, x6, 1
28:               jalr x5, x5, 0
sub_5:            slt          s6, s9, s9
                  beq          sp, t2, sub_5_stack_p
sub_5_stack_p:    addi         s8, s8, -60
                  sub          a6, s7, s9
                  sw           t1, 4(s8)
                  sub          t3, s2, sp
                  addi         s4, zero, -9 #init loop 1 counter
                  addi         s10, zero, 11 #init loop 1 limit
sub_5_18_1_t:     or           a2, gp, tp
                  addi         s4, s4, 1 #update loop 1 counter
                  addi         s6, zero, -1 #init loop 0 counter
                  slt          gp, t2, s7
                  addi         t1, zero, 14 #init loop 0 limit
sub_5_18_0_t:     andi         a0, t4, 1946
                  addi         s6, s6, 3 #update loop 0 counter
                  or           s0, a6, s1
                  bltu         s6, t1, sub_5_18_0_t #branch for loop 0
                  slt          a7, a2, s5
                  blt          s4, s10, sub_5_18_1_t #branch for loop 1
                  srl          s1, s4, s0
                  addi         t0, zero, 3 #init loop 1 counter
                  or           s11, s5, s11
                  nop
                  and          s2, a0, s0
                  or           zero, tp, zero
                  addi         t3, zero, -11 #init loop 1 limit
                  sub          tp, ra, s3
sub_5_5_1_t:      addi         s11, s5, 211
                  ori          sp, a0, 1400
                  addi         t0, t0, -7 #update loop 1 counter
                  andi         t5, t0, 1612
                  srai         tp, sp, 4
                  addi         a6, zero, -9 #init loop 0 counter
                  addi         s6, zero, -5 #init loop 0 limit
                  slti         s3, s9, -1468
sub_5_5_0_t:      nop
                  xor          a2, a5, a5
                  srai         tp, a6, 25
                  addi         a6, a6, 5 #update loop 0 counter
                  slli         s2, t5, 30
                  xor          a3, gp, a1
                  sltiu        s10, a0, 229
                  blt          a6, s6, sub_5_5_0_t #branch for loop 0
                  sltiu        s7, t3, 615
                  beq          t0, t3, sub_5_5_1_t #branch for loop 1
                  and          s1, a6, a1
                  addi         s10, zero, 8 #init loop 0 counter
                  srl          t3, s8, t1
                  srl          t2, s6, s6
                  addi         s7, zero, 10 #init loop 0 limit
sub_5_36_0_t:     xori         a0, t3, -1401
                  auipc        gp, 21827
                  ori          gp, sp, 376
                  addi         s10, s10, 7 #update loop 0 counter
                  and          a2, t3, a5
                  srai         a1, s8, 30
                  sub          t5, s9, t6
                  blt          s10, s7, sub_5_36_0_t #branch for loop 0
                  and          tp, s1, a5
                  addi         a3, zero, -9 #init loop 1 counter
                  lui          a2, 485601
                  sub          t3, a1, s9
                  xori         ra, s0, -605
                  addi         gp, zero, 6 #init loop 1 limit
                  srai         a0, tp, 29
sub_5_11_1_t:     andi         tp, a2, -571
                  and          t1, t0, zero
                  sltu         t6, t5, a7
                  addi         a3, a3, 7 #update loop 1 counter
                  addi         s0, zero, 8 #init loop 0 counter
                  ori          tp, t4, 1802
                  sra          s9, zero, a7
                  ori          t5, t5, 1686
                  andi         s3, s3, -1993
                  nop
                  slti         s3, ra, 375
                  addi         t2, zero, -17 #init loop 0 limit
                  srl          t6, s11, zero
                  slti         t5, t1, -1698
                  nop
sub_5_11_0_t:     addi         s9, s0, -843
                  addi         s0, s0, -5 #update loop 0 counter
                  auipc        t0, 367190
                  sltiu        zero, s3, -873
                  slli         ra, zero, 1
                  sltiu        a2, s7, 290
                  beq          s0, t2, sub_5_11_0_t #branch for loop 0
                  slt          s2, s3, s0
                  or           s10, s10, s9
                  srl          s4, s2, t5
                  bltu         a3, gp, sub_5_11_1_t #branch for loop 1
                  lui          s2, 24250
                  addi         s4, zero, -1 #init loop 1 counter
                  addi         s10, zero, 9 #init loop 1 limit
                  andi         a6, t2, -471
                  sub          s6, a5, t1
sub_5_3_1_t:      sub          s7, s11, s8
                  ori          s9, ra, -410
                  addi         s4, s4, 10 #update loop 1 counter
                  andi         t3, s4, 256
                  sub          a7, s10, s10
                  srl          s7, a6, a2
                  addi         s5, zero, 9 #init loop 0 counter
                  or           t6, a7, s6
                  addi         s0, zero, 17 #init loop 0 limit
                  and          a0, t1, a6
                  slti         s3, s10, -1133
                  and          a4, t6, s3
                  sltiu        a3, s7, -1523
                  xori         tp, s2, -1284
                  lui          a1, 533072
sub_5_3_0_t:      slt          s2, a6, a6
                  add          s2, tp, a5
                  add          t2, tp, t2
                  addi         s5, s5, 4 #update loop 0 counter
                  sll          s2, a1, gp
                  sltiu        s3, s2, 1702
                  slli         t0, gp, 3
                  sltu         a6, s5, ra
                  blt          s5, s0, sub_5_3_0_t #branch for loop 0
                  sub          t3, a6, a7
                  sltu         t3, a3, a5
                  sll          gp, s6, t5
                  and          ra, a2, s6
                  sltiu        zero, sp, -703
                  beq          s4, s10, sub_5_3_1_t #branch for loop 1
                  lui          sp, 410818
                  addi         gp, zero, 0 #init loop 0 counter
                  srl          s11, s10, s9
                  sll          s10, a5, gp
                  addi         a7, zero, 16 #init loop 0 limit
sub_5_35_0_t:     sub          tp, sp, s11
                  addi         gp, gp, 8 #update loop 0 counter
                  lui          a4, 1042973
                  sub          s2, t3, s1
                  beq          gp, a7, sub_5_35_0_t #branch for loop 0
                  sll          s7, t2, s1
                  addi         t0, zero, -7 #init loop 0 counter
                  xor          s11, t2, s0
                  xor          zero, s0, tp
                  srl          a7, t2, t5
                  addi         gp, zero, -3 #init loop 0 limit
sub_5_12_0_t:     ori          s11, zero, -1064
                  slt          ra, s1, t0
                  addi         t0, t0, 4 #update loop 0 counter
                  bne          t0, gp, sub_5_12_0_t #branch for loop 0
                  sra          ra, ra, a0
                  addi         t5, zero, 0 #init loop 0 counter
                  nop
                  addi         a3, zero, -5 #init loop 0 limit
                  or           a6, a1, sp
                  nop
                  srl          a2, a7, s7
                  auipc        t6, 239787
                  slt          a0, a7, t2
                  xor          a7, t1, sp
                  addi         t3, t2, 1725
                  nop
sub_5_10_0_t:     sub          a2, a0, s8
                  sll          a0, t0, a5
                  auipc        a2, 639827
                  addi         a2, s8, 144
                  sltiu        a1, a3, 1541
                  sll          t1, s3, tp
                  addi         t5, t5, -7 #update loop 0 counter
                  add          a4, s9, ra
                  auipc        a0, 764080
                  nop
                  add          s7, t5, t1
                  addi         s7, a7, 1034
                  nop
                  sltu         a4, t2, t2
                  bge          t5, a3, sub_5_10_0_t #branch for loop 0
                  slli         tp, a1, 1
                  addi         s5, zero, 0 #init loop 1 counter
                  addi         s1, zero, 10 #init loop 1 limit
                  sltu         a4, a7, t2
                  sub          t1, s4, a1
                  auipc        s6, 32034
sub_5_25_1_t:     sltu         s10, s7, t3
                  xori         a6, t6, 161
                  addi         s5, s5, 2 #update loop 1 counter
                  sub          s2, a0, s10
                  addi         s7, zero, 5 #init loop 0 counter
                  addi         a3, zero, 8 #init loop 0 limit
                  srli         t0, a4, 3
sub_5_25_0_t:     xor          t5, t2, s4
                  sra          tp, s0, t5
                  addi         s7, s7, 5 #update loop 0 counter
                  xor          a0, tp, a6
                  sltu         t0, a3, ra
                  bltu         s7, a3, sub_5_25_0_t #branch for loop 0
                  blt          s5, s1, sub_5_25_1_t #branch for loop 1
                  slt          s2, t6, s10
                  addi         s3, zero, -7 #init loop 0 counter
                  sub          a6, s0, a4
                  ori          s5, sp, 802
                  nop
                  auipc        sp, 864463
                  srai         t3, a1, 24
                  sltu         t0, s1, s11
                  srl          gp, s7, a0
                  and          t1, t1, t5
                  xori         s7, a7, -1595
                  add          s10, gp, t6
                  addi         s9, zero, 11 #init loop 0 limit
                  srai         s2, tp, 22
sub_5_20_0_t:     xor          gp, a2, s5
                  andi         zero, a2, 2022
                  lui          s2, 648744
                  sll          a6, zero, t6
                  nop
                  addi         s3, s3, 9 #update loop 0 counter
                  sll          a7, s8, t0
                  srai         t3, s1, 9
                  sltiu        s1, t1, 98
                  lui          a3, 996353
                  slli         t2, tp, 8
                  srli         t3, a3, 5
                  sltu         a0, tp, a2
                  blt          s3, s9, sub_5_20_0_t #branch for loop 0
                  sra          s11, a6, a5
                  addi         s9, zero, 7 #init loop 1 counter
                  addi         s0, zero, 19 #init loop 1 limit
                  sll          s3, t1, a0
                  sub          s5, t1, a6
                  sub          t6, zero, s10
sub_5_27_1_t:     nop
                  srai         a4, s3, 4
                  add          s4, s11, t1
                  addi         s9, s9, 2 #update loop 1 counter
                  slti         s3, s2, -1069
                  addi         t2, zero, -3 #init loop 0 counter
                  srai         a3, gp, 7
                  addi         ra, zero, 15 #init loop 0 limit
                  and          a2, a3, sp
                  srli         s7, a0, 31
sub_5_27_0_t:     andi         tp, ra, 2002
                  slt          a0, a6, t1
                  addi         t2, t2, 3 #update loop 0 counter
                  xor          s3, tp, a6
                  beq          t2, ra, sub_5_27_0_t #branch for loop 0
                  andi         a3, a1, 1944
                  xor          zero, s8, t4
                  lui          t6, 626119
                  sltu         zero, a5, s10
                  slli         a0, s3, 14
                  lui          t0, 666139
                  blt          s9, s0, sub_5_27_1_t #branch for loop 1
                  add          zero, s10, tp
                  addi         a6, zero, 1 #init loop 0 counter
                  slli         s9, t5, 7
                  ori          s9, s0, 1063
                  srl          a7, s3, s5
                  addi         t1, zero, 7 #init loop 0 limit
                  srli         a1, a3, 2
                  slti         zero, s6, 2009
                  add          t2, s7, a5
sub_5_17_0_t:     slt          gp, s6, zero
                  srl          sp, t3, t0
                  srai         s3, t5, 2
                  auipc        ra, 13474
                  auipc        ra, 445069
                  slli         s4, s10, 10
                  slli         s0, s2, 10
                  slli         s6, s8, 12
                  slt          t6, a3, t0
                  or           s7, t5, t1
                  add          s9, s1, t4
                  nop
                  nop
                  addi         a4, s3, 1608
                  sub          s7, t5, a2
                  addi         a6, a6, 6 #update loop 0 counter
                  srl          sp, a4, s0
                  add          s9, s4, tp
                  srli         t5, s11, 27
                  beq          a6, t1, sub_5_17_0_t #branch for loop 0
                  xori         a4, tp, -19
                  addi         s0, zero, -7 #init loop 1 counter
                  addi         s9, zero, 2 #init loop 1 limit
                  slti         s4, s10, -16
                  sub          a1, zero, s3
                  srl          t0, a5, a4
                  andi         s4, s1, -1183
sub_5_34_1_t:     ori          s10, s11, -1990
                  slli         s11, s0, 28
                  addi         s0, s0, 5 #update loop 1 counter
                  andi         t5, t5, 229
                  and          a4, t5, s11
                  addi         a3, zero, 7 #init loop 0 counter
                  ori          a4, a5, -1806
                  addi         t1, zero, 11 #init loop 0 limit
                  srl          sp, s5, s10
sub_5_34_0_t:     sub          a6, t3, a3
                  sltu         a6, s3, s8
                  sltu         gp, a0, t0
                  sub          sp, s7, s0
                  auipc        ra, 552223
                  sub          t3, t1, s8
                  addi         a3, a3, 6 #update loop 0 counter
                  addi         t3, s9, 1345
                  blt          a3, t1, sub_5_34_0_t #branch for loop 0
                  sltu         s3, sp, s10
                  slti         s3, t5, 2037
                  sll          gp, t1, s4
                  slti         a0, s5, 1434
                  bltu         s0, s9, sub_5_34_1_t #branch for loop 1
                  or           sp, s3, s4
                  addi         s2, zero, 0 #init loop 1 counter
                  addi         s1, sp, 322
                  sltu         t1, a6, tp
                  add          zero, a3, s2
                  addi         t3, zero, -5 #init loop 1 limit
sub_5_28_1_t:     xori         a1, s2, 568
                  nop
                  sltu         s4, t1, ra
                  xor          t5, gp, a5
                  addi         s2, s2, -4 #update loop 1 counter
                  andi         t2, s4, 76
                  sll          s1, zero, sp
                  addi         s3, zero, -4 #init loop 0 counter
                  xori         a3, sp, -485
                  addi         s11, zero, -10 #init loop 0 limit
                  or           s4, a3, s6
sub_5_28_0_t:     xor          t2, s4, a0
                  xori         a2, t1, -238
                  sub          t1, t2, s5
                  and          a4, t3, t2
                  addi         s3, s3, -6 #update loop 0 counter
                  sltu         gp, s3, a0
                  bne          s3, s11, sub_5_28_0_t #branch for loop 0
                  xori         a3, s0, -311
                  sltiu        s1, a3, 797
                  slt          gp, sp, a4
                  andi         a6, s0, 448
                  xor          a0, s9, t4
                  ori          tp, t3, -413
                  bge          s2, t3, sub_5_28_1_t #branch for loop 1
                  slli         t5, s4, 3
                  addi         tp, zero, 6 #init loop 1 counter
                  addi         s6, zero, 14 #init loop 1 limit
                  srl          t2, a6, s9
sub_5_30_1_t:     slt          t0, zero, t3
                  addi         tp, tp, 3 #update loop 1 counter
                  addi         s4, zero, 2 #init loop 0 counter
                  addi         a3, zero, -20 #init loop 0 limit
sub_5_30_0_t:     andi         s7, s1, 400
                  srl          a2, a6, sp
                  addi         s4, s4, -4 #update loop 0 counter
                  bge          s4, a3, sub_5_30_0_t #branch for loop 0
                  blt          tp, s6, sub_5_30_1_t #branch for loop 1
                  lui          gp, 260761
                  addi         s0, zero, 7 #init loop 0 counter
                  and          zero, t6, s8
                  sll          t5, a7, s10
                  auipc        sp, 1045668
                  auipc        t2, 957571
                  sub          t6, a2, tp
                  andi         s10, tp, 285
                  or           t1, s7, s0
                  sra          a0, a6, s9
                  addi         gp, zero, 7 #init loop 0 limit
                  ori          s9, s10, 994
                  srli         a6, a7, 25
                  and          s2, t0, a3
                  sltiu        zero, a0, 0
sub_5_14_0_t:     slti         sp, a6, -1151
                  sll          s7, s0, a7
                  srli         a3, t6, 29
                  addi         s0, s0, -4 #update loop 0 counter
                  sltu         t1, t1, a2
                  sltiu        s10, s10, 1951
                  sltiu        s9, gp, 1239
                  add          s10, gp, s11
                  bgeu         s0, gp, sub_5_14_0_t #branch for loop 0
                  srai         s2, s8, 11
                  addi         gp, zero, 8 #init loop 1 counter
                  addi         a1, zero, 12 #init loop 1 limit
                  slt          s3, s8, s10
sub_5_15_1_t:     sltiu        s11, sp, 1462
                  addi         gp, gp, 8 #update loop 1 counter
                  addi         sp, zero, -5 #init loop 0 counter
                  srli         s0, s10, 23
                  addi         a2, zero, 18 #init loop 0 limit
sub_5_15_0_t:     xori         s11, a7, 1308
                  auipc        t5, 13720
                  addi         sp, sp, 1 #update loop 0 counter
                  bne          sp, a2, sub_5_15_0_t #branch for loop 0
                  bltu         gp, a1, sub_5_15_1_t #branch for loop 1
                  xor          a0, a4, s5
                  addi         s9, zero, 10 #init loop 1 counter
                  addi         s4, zero, -14 #init loop 1 limit
sub_5_31_1_t:     and          ra, s8, a5
                  addi         s9, s9, -8 #update loop 1 counter
                  addi         a4, zero, -7 #init loop 0 counter
                  srli         s6, sp, 2
                  addi         t3, zero, 17 #init loop 0 limit
sub_5_31_0_t:     lui          s5, 220691
                  ori          t0, s9, 1864
                  addi         a4, a4, 9 #update loop 0 counter
                  bltu         a4, t3, sub_5_31_0_t #branch for loop 0
                  and          s11, tp, t4
                  beq          s9, s4, sub_5_31_1_t #branch for loop 1
                  nop
                  addi         t1, zero, -5 #init loop 0 counter
                  andi         a4, zero, 1575
                  addi         s9, zero, -14 #init loop 0 limit
                  srai         s0, s0, 8
                  sra          a7, t1, t4
                  sra          ra, a1, tp
sub_5_32_0_t:     add          a6, sp, ra
                  or           s2, t2, a2
                  sll          t5, t6, s6
                  srl          s3, s5, s1
                  sub          a4, sp, sp
                  sub          a0, t3, t2
                  srai         a0, s8, 5
                  srai         s3, t6, 26
                  add          sp, tp, t4
                  sub          a4, zero, tp
                  and          s3, s2, a6
                  lui          a1, 103571
                  and          s0, a0, tp
                  or           zero, t0, t5
                  addi         t1, t1, -9 #update loop 0 counter
                  sra          gp, t3, a7
                  xori         a4, ra, -1415
                  srai         a1, t5, 26
                  xor          s2, t4, a3
                  srai         a1, s10, 6
                  xor          t6, t3, s2
                  sltiu        t5, a7, -1423
                  bne          t1, s9, sub_5_32_0_t #branch for loop 0
                  or           s11, a7, s7
                  addi         s7, zero, 5 #init loop 1 counter
                  addi         t1, zero, 15 #init loop 1 limit
sub_5_4_1_t:      xori         s10, s1, 524
                  addi         s7, s7, 5 #update loop 1 counter
                  addi         a1, zero, 10 #init loop 0 counter
                  addi         a2, zero, 18 #init loop 0 limit
sub_5_4_0_t:      andi         a3, s4, -422
                  addi         a1, a1, 8 #update loop 0 counter
                  bne          a1, a2, sub_5_4_0_t #branch for loop 0
                  bltu         s7, t1, sub_5_4_1_t #branch for loop 1
                  or           tp, s5, a0
                  addi         t2, zero, 1 #init loop 1 counter
                  sltiu        t6, s7, -713
                  addi         a4, zero, 0 #init loop 1 limit
                  and          zero, zero, s1
                  srai         s1, t0, 23
                  ori          s1, a4, 1091
sub_5_13_1_t:     sub          t5, a7, s11
                  addi         s10, a5, -1216
                  slt          zero, a7, s0
                  addi         t2, t2, -1 #update loop 1 counter
                  addi         tp, zero, -10 #init loop 0 counter
                  srli         t1, a7, 5
                  addi         s9, zero, 20 #init loop 0 limit
                  nop
                  srli         t6, s10, 14
                  sltu         a1, t2, s10
                  auipc        s0, 94151
                  xori         t5, a2, 590
sub_5_13_0_t:     ori          s6, gp, -2015
                  add          s6, s7, s3
                  addi         tp, tp, 10 #update loop 0 counter
                  xor          t5, s1, s6
                  xori         t1, s5, 135
                  beq          tp, s9, sub_5_13_0_t #branch for loop 0
                  slti         s0, s8, -1651
                  addi         s6, s5, 1410
                  xor          a7, s6, ra
                  bge          t2, a4, sub_5_13_1_t #branch for loop 1
                  and          t0, t3, t6
                  addi         s7, zero, 9 #init loop 1 counter
                  slli         s1, a0, 26
                  slt          s0, s5, a7
                  nop
                  sub          a7, s6, s0
                  xori         s4, s7, -852
                  addi         s2, zero, 16 #init loop 1 limit
sub_5_16_1_t:     ori          sp, a5, 801
                  addi         s7, s7, 9 #update loop 1 counter
                  addi         t3, zero, 6 #init loop 0 counter
                  srl          t6, tp, tp
                  addi         s3, zero, -8 #init loop 0 limit
                  sltiu        tp, t4, -498
                  slt          s11, gp, gp
                  nop
sub_5_16_0_t:     or           s5, s7, a6
                  xori         a4, a0, -1000
                  addi         t3, t3, -2 #update loop 0 counter
                  slti         sp, s5, 403
                  sll          a4, s2, t1
                  beq          t3, s3, sub_5_16_0_t #branch for loop 0
                  addi         a3, a0, 578
                  bltu         s7, s2, sub_5_16_1_t #branch for loop 1
                  add          t1, s3, s3
                  addi         gp, zero, -7 #init loop 0 counter
                  lui          s10, 560416
                  add          ra, t2, s6
                  slti         t2, t2, -860
                  andi         t0, s11, -116
                  or           s4, t2, t5
                  sra          s6, t5, t6
                  lui          s2, 845148
                  lui          a7, 467450
                  addi         s0, zero, -10 #init loop 0 limit
                  srli         t3, t5, 12
                  auipc        t2, 613760
                  sra          s10, s6, s5
sub_5_7_0_t:      lui          a4, 898415
                  slt          s11, tp, t2
                  addi         gp, gp, -6 #update loop 0 counter
                  xor          s6, a4, gp
                  sra          t6, s6, a2
                  slti         a6, t2, -1479
                  sub          s3, s8, a2
                  sra          s6, s1, s3
                  slli         t3, a5, 23
                  or           s1, s0, gp
                  sll          s4, gp, t6
                  addi         s5, a3, 1985
                  bge          gp, s0, sub_5_7_0_t #branch for loop 0
                  sll          sp, a2, t3
                  addi         s4, zero, 10 #init loop 0 counter
                  addi         s0, zero, 0 #init loop 0 limit
                  srli         s3, t1, 7
sub_5_0_0_t:      or           zero, s1, s2
                  addi         s4, s4, -2 #update loop 0 counter
                  sra          s9, a4, s1
                  sltu         a7, a1, tp
                  ori          s7, a3, -246
                  bge          s4, s0, sub_5_0_0_t #branch for loop 0
                  or           a0, s3, s2
                  addi         s0, zero, -2 #init loop 0 counter
                  sra          a7, a1, a2
                  andi         a0, a2, -1693
                  sltu         s5, a1, t1
                  addi         s4, zero, 8 #init loop 0 limit
sub_5_2_0_t:      and          s3, a4, s1
                  srai         a7, s5, 27
                  addi         s0, s0, 5 #update loop 0 counter
                  and          t1, t6, s11
                  auipc        zero, 476412
                  srli         sp, t5, 2
                  bne          s0, s4, sub_5_2_0_t #branch for loop 0
                  srai         t6, t5, 24
                  addi         t5, zero, 7 #init loop 1 counter
                  addi         s5, sp, 1561
                  sltiu        t6, t1, -1568
                  sll          a6, a5, a1
                  slti         ra, s5, 1911
                  addi         s11, zero, -5 #init loop 1 limit
                  srai         zero, s7, 25
                  srl          a3, t5, a7
                  lui          s7, 836608
sub_5_8_1_t:      sltu         sp, t0, s8
                  add          s5, s4, t1
                  slli         s3, t4, 12
                  andi         s6, s1, 1608
                  addi         t5, t5, -2 #update loop 1 counter
                  addi         tp, a3, -808
                  addi         t0, zero, 0 #init loop 0 counter
                  addi         t1, zero, 14 #init loop 0 limit
                  and          s0, s4, s2
                  srli         s9, a3, 7
                  andi         s2, s9, -1436
                  sltu         a2, t4, ra
sub_5_8_0_t:      sltiu        a2, a6, -596
                  addi         t0, t0, 3 #update loop 0 counter
                  sub          t3, a4, t5
                  blt          t0, t1, sub_5_8_0_t #branch for loop 0
                  add          a6, s9, s7
                  or           s4, a0, t1
                  lui          t2, 1035934
                  add          a2, t5, a1
                  or           zero, zero, s5
                  and          s6, s7, s2
                  bne          t5, s11, sub_5_8_1_t #branch for loop 1
                  lui          sp, 367840
                  addi         a1, zero, -7 #init loop 0 counter
                  sll          a6, s8, t2
                  and          t0, tp, s0
                  srai         zero, zero, 19
                  nop
                  addi         s1, zero, 8 #init loop 0 limit
                  or           tp, tp, sp
                  sra          t2, s7, t4
                  ori          t5, t5, -740
                  srli         t0, a4, 8
                  sltiu        a6, a7, -528
                  andi         s10, a0, -985
sub_5_23_0_t:     and          a6, t0, s7
                  nop
                  addi         a1, a1, 9 #update loop 0 counter
                  add          s6, a0, a7
                  andi         a3, s9, -951
                  sll          s9, s9, a7
                  or           s3, s9, a3
                  bltu         a1, s1, sub_5_23_0_t #branch for loop 0
                  slt          s0, s6, s4
                  addi         s2, zero, -1 #init loop 0 counter
                  addi         s7, s8, -1076
                  or           gp, a7, s5
                  or           s6, s9, t2
                  addi         s11, ra, 1059
                  srli         a0, a7, 9
                  sltu         gp, t0, s2
                  xori         a7, t0, -1244
                  addi         a3, zero, -13 #init loop 0 limit
sub_5_29_0_t:     sltiu        s3, tp, -1400
                  slli         s5, a2, 31
                  sra          s11, s10, a6
                  addi         s2, s2, -3 #update loop 0 counter
                  sub          gp, s7, t3
                  sltu         a0, s9, s8
                  srli         s10, s11, 8
                  sltiu        s5, s3, 1274
                  slli         t2, zero, 12
                  sra          a1, tp, t1
                  xori         s7, ra, 440
                  srli         t0, t0, 1
                  or           a7, sp, t4
                  beq          s2, a3, sub_5_29_0_t #branch for loop 0
                  srli         s5, s8, 15
                  andi         gp, s8, -731
                  blt          s2, s10, 13f
                  and          t1, s2, s1
                  sra          s2, s7, t6
                  slti         t6, t0, 993
                  srli         a7, a1, 16
                  sra          a1, a0, a7
                  srli         s7, s0, 11
                  blt          t2, t4, 27f
                  nop
                  srai         a7, s0, 16
                  sll          ra, a1, zero
                  xori         zero, a1, 434
13:               bge          s2, a6, 33f
                  sra          t1, s7, t1
                  slt          s4, a7, s11
                  addi         a0, s5, 623
                  srl          gp, zero, ra
                  sra          tp, s3, gp
                  sltiu        a0, a4, -1324
                  addi         s11, sp, -78
                  srli         a6, s0, 29
                  andi         ra, s5, -1672
                  and          t2, s2, a1
                  srai         a0, a2, 26
                  and          s2, s11, t5
                  sub          s9, s2, a5
27:               add          tp, tp, tp
                  addi         tp, s0, -1945
                  sub          s5, s1, a3
                  beq          s4, s10, 38f
                  sll          a4, a0, sp
                  sltu         a3, s7, t2
33:               sub          t3, a0, sp
                  sra          t1, s2, t4
                  bne          a3, s4, 48f
                  srl          s5, sp, t1
                  slti         a6, a1, -506
38:               sra          ra, zero, s2
                  beq          s0, t4, 58f
                  bge          t3, a4, 42f
                  slti         sp, a5, 335
42:               bne          a4, a0, 57f
                  sll          a0, sp, s1
                  bgeu         t1, ra, 55f
                  slt          s9, a6, t6
                  andi         s4, a4, 1183
                  srai         a4, s10, 16
48:               andi         gp, s3, -759
                  srl          a4, s7, zero
                  add          gp, s8, s10
                  addi         s11, s0, 540
                  xori         t0, s11, -1695
                  lui          s2, 995290
                  xori         s2, tp, 1826
55:               beq          a5, s7, 58f
                  srl          a6, t4, a4
57:               blt          s6, sp, 73f
58:               beq          s4, a0, 65f
                  auipc        a2, 889996
                  and          sp, a6, t3
                  bltu         s11, s10, 69f
                  or           t0, t1, t4
                  addi         a3, s11, -807
                  bltu         t1, t6, 82f
65:               srli         t2, a2, 8
                  auipc        t2, 76806
                  bltu         s1, a2, 82f
                  sub          t2, a2, t5
69:               xor          t3, s1, tp
                  srl          t3, s11, gp
                  lui          t2, 259597
                  bge          a6, a4, 75f
73:               or           t0, s9, t5
                  ori          a3, s9, 290
75:               slti         s3, zero, 677
                  and          t5, a0, ra
                  xor          t1, a1, s5
                  beq          a7, t2, 98f
                  and          s7, s4, t1
                  srai         s11, t4, 20
                  lui          s9, 303432
82:               nop
                  slli         tp, sp, 4
                  srl          s4, s1, zero
                  sltiu        a6, a1, -1500
                  xor          t0, t3, s2
                  nop
                  sll          sp, s8, a6
                  slli         s5, s5, 1
                  slt          s11, a0, s1
                  slt          ra, s7, t1
                  xor          zero, s8, a0
                  srai         a6, a7, 27
                  auipc        sp, 903968
                  add          s6, a6, a1
                  sll          a3, s0, t1
                  and          a3, a3, a7
98:               blt          a6, t5, 118f
                  sltu         s6, s10, a4
                  xori         a6, t5, -571
                  lui          s1, 338516
                  andi         s11, zero, 1920
                  sra          s1, s10, t3
                  srl          s1, t2, s6
                  auipc        s0, 430192
                  slti         tp, t0, -113
                  beq          zero, a3, 112f
                  sub          s10, s4, a7
                  slt          t3, a4, gp
                  nop
                  srl          a6, a6, s10
112:              sub          t2, t1, s5
                  addi         a4, s9, 1646
                  and          t1, s1, a3
                  bne          a5, s2, 124f
                  bgeu         a0, s3, 119f
                  blt          s4, t3, 127f
118:              sltu         a2, s5, s5
119:              blt          a2, s9, 125f
                  sra          a2, s3, a2
                  sub          t0, s8, s4
                  sll          t2, s1, t0
                  slli         t0, t5, 13
124:              sra          a6, zero, ra
125:              ori          t3, a3, 867
                  lui          a6, 922305
127:              xori         s9, t1, -1226
                  sltu         s1, a7, s4
                  sltiu        s0, a3, -1766
                  addi         t3, s11, 722
                  bltu         s1, a5, 147f
                  srli         a3, a0, 22
                  addi         t6, s2, -463
                  beq          s6, a0, 141f
                  or           sp, a1, a0
                  sll          s0, s4, a4
                  srli         s6, a6, 16
                  sub          s7, s10, s5
                  sub          a3, zero, t0
                  bgeu         a4, s4, 142f
141:              andi         a7, a3, 514
142:              andi         a4, sp, -1828
                  bge          a7, sp, 152f
                  slt          ra, a5, s0
                  ori          s5, a7, -197
                  sltu         s7, zero, a3
147:              auipc        tp, 996830
                  sll          s9, zero, s1
                  lui          s2, 306788
                  slt          a4, s9, s7
                  sltiu        s4, t2, -1208
152:              bltu         gp, s11, 160f
                  ori          a4, a0, 1333
                  slt          a3, s6, s10
                  and          s10, t1, s6
                  bltu         t5, zero, 163f
                  srl          t3, a7, a5
                  sll          a0, t4, a7
                  lui          s0, 589644
160:              sub          s4, a5, zero
                  sltiu        t3, gp, -278
                  srli         s5, a0, 23
163:              addi         gp, t1, -250
                  srl          ra, ra, a5
                  auipc        gp, 687596
                  nop
                  bltu         a5, s7, 169f
                  slli         s7, a3, 5
169:              slli         s2, t5, 7
                  bge          s7, a6, 189f
                  and          t5, gp, s0
                  and          a0, s5, s4
                  sub          sp, t2, gp
                  slti         s3, a6, -79
                  lui          a3, 400918
                  slli         t0, s1, 24
                  andi         s1, t6, -1897
                  add          ra, t4, gp
                  xori         a3, s10, -431
                  slli         t3, s8, 6
                  sub          s9, t2, s7
                  xori         s4, a1, -1549
                  bltu         zero, a7, 190f
                  nop
                  ori          s11, s7, -191
                  sltu         s4, s0, tp
                  blt          s6, s7, 203f
                  bge          s7, s3, 191f
189:              sub          gp, s11, a7
190:              lui          s2, 150103
191:              sltu         s7, a5, zero
                  and          t3, a1, s0
                  slti         a2, t3, 186
                  bge          s9, t0, 205f
                  add          t5, a5, t6
                  xor          t6, a4, a4
                  bltu         s4, s11, 203f
                  sra          s2, tp, a3
                  sltiu        t6, s5, -1072
                  beq          s11, s5, 207f
                  blt          a1, s7, 206f
                  slt          t1, ra, s9
203:              sra          a7, s0, s6
                  sll          t6, s0, s10
205:              srli         t3, a7, 22
206:              slli         t0, t2, 20
207:              addi         sp, s11, -1089
                  xor          a4, t2, s0
                  addi         s2, s4, -1092
                  auipc        gp, 263623
                  and          gp, t0, t6
                  lui          t3, 687806
                  slt          a3, tp, ra
                  srai         s10, s3, 1
                  addi         t2, zero, -3 #init loop 1 counter
                  lui          tp, 918758
                  or           s7, a6, s3
                  auipc        s6, 65356
                  add          s1, s10, a7
                  xor          sp, a7, a6
                  addi         a4, zero, -12 #init loop 1 limit
sub_5_19_1_t:     sltiu        t1, a6, 1947
                  srai         zero, gp, 0
                  auipc        s5, 747818
                  slli         a6, s2, 1
                  slt          s6, a4, sp
                  srli         ra, a0, 28
                  srai         s4, a3, 29
                  slti         a2, a2, -464
                  sltiu        s4, t2, 259
                  or           s10, s11, s2
                  slti         gp, t4, -896
                  auipc        zero, 343861
                  addi         t2, t2, -9 #update loop 1 counter
                  ori          t1, s9, -1741
                  addi         t0, zero, -6 #init loop 0 counter
                  sra          a2, a1, s5
                  addi         s0, s0, 81
                  xor          s5, s5, s1
                  andi         t6, a0, 1953
                  addi         a3, zero, 6 #init loop 0 limit
                  srli         s11, s3, 28
sub_5_19_0_t:     auipc        ra, 150069
                  slt          s5, a4, zero
                  addi         t0, t0, 10 #update loop 0 counter
                  bltu         t0, a3, sub_5_19_0_t #branch for loop 0
                  beq          t2, a4, sub_5_19_1_t #branch for loop 1
                  sltiu        s11, s2, 729
                  xori         s1, t5, -1459
                  srai         s2, s11, 29
                  xori         ra, ra, -1412
                  xori         s9, s7, 1111
                  sltiu        a3, s4, -1958
                  nop
                  slt          sp, t0, s11
                  bgeu         ra, a5, 229f
                  nop
                  add          t1, t3, a2
                  sltiu        a6, s5, -1345
                  addi         s6, zero, 9 #init loop 1 counter
                  andi         t6, t6, 1158
                  and          t3, s3, sp
                  addi         s0, zero, 8 #init loop 1 limit
                  srli         s2, a7, 11
sub_5_26_1_t:     or           sp, t4, s9
                  addi         s6, s6, -3 #update loop 1 counter
                  addi         t2, a1, -155
                  addi         s9, zero, 3 #init loop 0 counter
                  auipc        zero, 813500
                  slt          gp, s1, a7
                  addi         a6, zero, 8 #init loop 0 limit
                  slt          zero, t1, s5
sub_5_26_0_t:     xor          a0, s9, sp
                  sltu         t5, t6, a3
                  addi         s9, s9, 5 #update loop 0 counter
                  bne          s9, a6, sub_5_26_0_t #branch for loop 0
                  sltiu        s2, a5, 1101
                  nop
                  sra          s5, a1, s3
                  srl          s11, s0, s4
                  bgeu         s6, s0, sub_5_26_1_t #branch for loop 1
                  add          t6, a2, a4
                  auipc        s2, 730611
                  beq          s0, s11, 235f
                  auipc        t3, 555202
229:              ori          s0, a0, -561
                  slt          a1, t1, a0
                  srli         t1, s1, 11
                  bne          sp, a2, 244f
                  srli         a2, t2, 8
                  sltu         s7, t6, s2
235:              nop
                  and          s0, s6, s1
                  srai         a6, ra, 3
                  xor          t5, s0, a6
                  sll          a6, t3, s2
                  sltu         sp, s6, t5
                  xori         s5, a1, -837
                  sub          t3, s5, s2
                  xor          a2, a2, a6
244:              srai         s10, s0, 20
                  bne          a0, a2, 260f
                  sll          s1, s8, tp
                  nop
                  bltu         s4, s8, 258f
                  xori         s1, t6, 777
                  bltu         zero, t2, 270f
                  add          s9, s1, s4
                  andi         sp, a0, -1486
                  xor          s3, t2, t1
                  srai         t3, a1, 22
                  nop
                  sltiu        a6, t3, 1862
                  slti         t5, s7, -1099
258:              srai         s7, t4, 8
                  beq          s10, gp, 262f
260:              lui          gp, 298334
                  slt          t2, s7, t0
262:              srai         s4, s10, 8
                  and          a7, a0, a0
                  srli         t5, s3, 15
                  sltiu        t0, s4, -606
                  nop
                  xor          s7, s7, a3
                  blt          s2, a1, 286f
                  lui          a1, 16098
270:              srli         tp, s0, 4
                  add          s3, s0, s6
                  sll          zero, a1, a4
                  sll          tp, s3, s7
                  and          s5, a3, s8
                  slli         a7, s10, 8
                  slti         gp, t4, -1934
                  sra          a7, s4, sp
                  andi         t5, s8, 1181
                  ori          t0, a3, -1711
                  sll          s2, a2, s0
                  addi         a0, zero, 811
                  or           t5, t1, t0
                  nop
                  bltu         a5, s11, 299f
                  xor          s4, a4, t6
286:              nop
                  andi         s0, s10, -1564
                  srl          ra, a6, zero
                  srai         s1, s3, 4
                  or           a6, ra, a4
                  sltu         a2, a5, s8
                  bgeu         a0, s5, 295f
                  blt          a4, a2, 306f
                  bltu         s11, s8, 303f
295:              blt          t5, a7, 303f
                  blt          s4, s7, 316f
                  sub          s7, ra, s5
                  and          a6, s5, a3
299:              or           t5, t3, s8
                  srli         s2, s6, 31
                  srai         s7, zero, 1
                  sltu         s10, a0, t3
303:              add          s10, t2, s5
                  sll          t6, gp, s8
                  bgeu         s2, ra, 314f
306:              slti         zero, s11, 1513
                  xori         s11, a5, 1626
                  auipc        t2, 512710
                  sub          s1, t3, a2
                  slt          t0, s7, s8
                  blt          a1, s5, 313f
                  sll          s7, s1, s6
313:              bne          a7, zero, 332f
314:              and          s0, s5, a7
                  beq          a2, t2, 317f
316:              or           t0, t6, a4
317:              bge          a4, s10, 325f
                  beq          t4, zero, 334f
                  sra          s0, t0, t4
                  bge          t6, s3, 322f
                  sra          tp, s0, ra
322:              bge          a4, a6, 342f
                  srl          s3, a3, sp
                  srai         s9, a7, 20
325:              srl          t1, s7, a4
                  lui          a1, 817309
                  bgeu         t0, a6, 334f
                  srl          t2, s0, t3
                  nop
                  sll          zero, zero, sp
                  sub          s5, s8, ra
332:              slt          s11, s7, s3
                  bge          s4, s2, 348f
334:              sra          t0, s0, t2
                  slli         a3, s6, 3
                  nop
                  bltu         s3, s4, 348f
                  bge          s0, a6, 341f
                  and          s1, a0, s2
                  sra          a7, a3, s7
341:              auipc        s2, 15406
342:              bne          s10, sp, 362f
                  blt          s4, zero, 362f
                  and          zero, a2, t3
                  addi         s0, s8, 1962
                  srli         a6, zero, 22
                  slli         a7, s6, 7
348:              blt          a5, t1, 356f
                  bltu         s2, t0, 352f
                  beq          s0, s2, 357f
                  slli         sp, a3, 30
352:              or           sp, s9, a6
                  sub          t0, s2, a1
                  bltu         tp, a3, 366f
                  slli         a0, a3, 7
356:              addi         gp, s8, -1276
357:              ori          s6, s2, -959
                  slti         a7, a7, -1926
                  blt          a2, s2, 379f
                  xori         a3, a2, -1912
                  slt          t2, s1, s8
362:              bne          t4, a5, 364f
                  lui          a0, 587366
364:              addi         s3, a1, 817
                  bne          s6, gp, 373f
366:              beq          a3, s1, 371f
                  slli         a7, a5, 15
                  sltiu        s9, a4, 1337
                  ori          sp, t0, -334
                  xori         s1, a6, 2011
371:              bne          t1, t4, 380f
                  sll          a2, t2, t0
373:              bne          s2, s4, 388f
                  nop
                  bne          a0, ra, 391f
                  slti         a7, s8, -410
                  bne          a6, sp, 395f
                  xor          t1, tp, s1
379:              and          sp, a3, s3
380:              auipc        s7, 702220
                  bgeu         tp, t4, 384f
                  bge          s4, t1, 402f
                  addi         s1, s0, -263
384:              slli         s6, sp, 16
                  bge          t2, s1, 394f
                  and          s6, s10, t0
                  srai         s7, zero, 9
388:              beq          tp, a2, 394f
                  or           tp, s1, s4
                  bge          sp, s8, 392f
391:              bgeu         t4, s0, 393f
392:              srl          t5, a3, a2
393:              sltiu        t2, t5, -1902
394:              auipc        s1, 451281
395:              sll          t5, a3, s8
                  andi         t2, s9, 1100
                  srl          s9, s9, s1
                  sub          t3, s8, a6
                  or           tp, s2, tp
                  auipc        s9, 585202
                  slt          a4, a4, s4
402:              auipc        t3, 967570
                  andi         zero, s8, 1070
                  xori         t5, t1, -422
                  slli         tp, gp, 4
                  blt          a3, s7, 416f
                  srai         s5, s9, 27
                  auipc        a4, 860626
                  auipc        s10, 42910
                  slli         a3, t5, 1
                  sltiu        s5, s1, 1865
                  slli         s3, t5, 13
                  blt          a0, s4, 420f
                  xori         s6, a0, -1469
                  slli         s5, t6, 14
416:              bgeu         a0, s10, 429f
                  and          a1, t6, ra
                  ori          zero, a2, 28
                  slt          a4, s1, s10
420:              sltu         s5, t2, s7
                  ori          s2, s5, -259
                  addi         a2, zero, 3 #init loop 0 counter
                  addi         a6, zero, -2 #init loop 0 limit
                  srl          t2, s2, t1
                  xori         s6, a0, -1509
                  andi         a1, t2, 663
                  and          t3, a3, t6
sub_5_33_0_t:     auipc        s3, 851384
                  ori          t2, gp, 1015
                  srl          a7, s1, a1
                  slli         s5, a2, 27
                  addi         a2, a2, -4 #update loop 0 counter
                  xor          zero, t3, s4
                  bge          a2, a6, sub_5_33_0_t #branch for loop 0
                  slli         s0, tp, 19
                  ori          s10, s10, 727
                  bgeu         s0, tp, 442f
                  sll          s4, s7, sp
                  blt          a3, zero, 441f
                  beq          t4, a0, 434f
                  or           s3, s3, s3
                  bgeu         a5, s5, 446f
429:              sltiu        t6, t5, 1477
                  auipc        t6, 1002017
                  ori          s3, t5, 978
                  ori          a2, t0, -1267
                  xori         s7, a1, -1135
434:              xori         a3, t5, 1262
                  bltu         t4, a5, 455f
                  bge          t2, s5, 443f
                  or           s7, s11, s11
                  xor          s7, s3, a0
                  auipc        a7, 1038943
                  nop
441:              slt          t0, a3, t1
442:              blt          tp, ra, 445f
443:              srai         s2, gp, 10
                  sra          a7, a2, t5
445:              sra          tp, t5, s3
446:              srai         t0, sp, 4
                  andi         a7, s2, 1571
                  xor          a7, s5, t2
                  srli         tp, t1, 30
                  lui          s7, 923187
                  sra          s3, s3, s2
                  sltu         s3, t5, sp
                  beq          s5, gp, 461f
                  srl          t3, gp, tp
455:              xori         s11, t1, -785
                  bltu         s9, t2, 458f
                  bltu         a7, s3, 464f
458:              blt          s11, s9, 463f
                  slli         s6, t5, 13
                  sltu         s10, ra, t1
461:              bgeu         a5, a7, 463f
                  add          ra, s10, t1
463:              blt          s2, s0, 471f
464:              slli         a2, zero, 6
                  sub          s11, s3, t3
                  ori          s2, s7, -586
                  beq          s2, s8, 478f
                  slt          s11, a6, s0
                  sltiu        t2, t5, 1615
                  addi         s9, ra, -1545
471:              sll          a4, a5, a1
                  and          t3, t0, a6
                  or           a2, s0, a0
                  slli         t1, t5, 14
                  nop
                  auipc        t5, 674166
                  sub          s9, s11, s6
478:              sub          gp, a2, s6
                  xori         a0, gp, 299
                  slt          tp, s9, zero
                  sub          gp, s6, s9
                  andi         a7, s11, 1429
                  sra          a3, s1, s8
                  beq          t6, t6, 500f
                  blt          s5, t4, 497f
                  and          a6, s1, s11
                  sltiu        s3, t0, -772
                  nop
                  addi         a3, s3, 547
                  bge          t6, t2, 493f
                  slli         t0, ra, 31
                  srli         s3, a4, 7
493:              bne          a2, s6, 513f
                  blt          t4, gp, 496f
                  bltu         s2, t0, 510f
496:              andi         s0, t6, 236
497:              ori          s5, t1, -1094
                  bltu         t0, a7, 514f
                  sub          s0, s1, s1
500:              xor          a6, s5, t1
                  sra          t0, t0, s6
                  sll          a7, s0, a5
                  ori          s11, a6, 156
                  and          t0, s2, a2
                  blt          s0, a3, 511f
                  blt          s9, gp, 514f
                  add          t3, t1, s6
                  slti         tp, zero, 236
                  bltu         s3, s4, 518f
510:              nop
511:              or           ra, t5, t6
                  xori         s11, s3, 1180
513:              add          s2, t0, t0
514:              bltu         s7, t4, 524f
                  or           t1, t1, t0
                  sltu         t1, a5, s6
                  sll          gp, a2, a3
518:              xor          a1, tp, s8
                  addi         a7, a2, 62
                  sll          gp, a5, a2
                  bltu         a7, t2, 541f
                  nop
                  slli         t5, a4, 10
524:              sra          tp, a4, t2
                  addi         t6, s0, 1911
                  addi         s1, gp, -1810
                  sltu         a6, s3, t0
                  sra          t0, t4, a4
                  lui          t1, 121047
                  andi         a2, s1, 1074
                  nop
                  slt          s10, s5, t3
                  bge          a7, a4, 536f
                  blt          a2, t1, 543f
                  sltiu        t5, s11, -14
536:              nop
                  sll          s10, s11, gp
                  addi         t5, s1, -520
                  sub          s2, tp, sp
                  bge          t3, ra, 559f
541:              auipc        a2, 259848
                  srai         a1, t5, 21
543:              ori          t1, t2, 585
                  slti         t0, t6, 513
                  sltu         s6, a4, a7
                  sll          s11, s5, a6
                  auipc        sp, 98199
                  slli         a3, s9, 24
                  auipc        s3, 824991
                  nop
                  beq          s3, a4, 558f
                  xor          t3, s6, a2
                  andi         s7, t0, 1002
                  and          s6, t5, s3
                  bge          a6, s9, 570f
                  slti         a7, s1, -510
                  sll          s1, t4, sp
558:              bgeu         a6, s5, 577f
559:              sltiu        t0, s10, 207
                  xor          t5, gp, a2
                  beq          s1, t5, 574f
                  bne          s3, t0, 565f
                  srli         a7, t4, 26
                  add          s10, gp, tp
565:              xor          gp, a7, sp
                  slti         s4, a5, -23
                  lui          a3, 381868
                  blt          tp, gp, 576f
                  and          ra, s7, t6
570:              and          a2, a2, s11
                  ori          t2, s2, -2032
                  sra          s9, t6, s10
                  ori          a3, gp, -611
574:              slt          a7, s5, s10
                  slt          s7, s8, a7
576:              slt          t1, s1, s9
577:              add          s3, zero, s4
                  xori         a3, s7, -2013
                  add          s1, sp, s9
                  ori          s6, sp, -1764
                  slt          s11, gp, s0
                  srli         a6, s0, 9
                  slti         s3, s1, 1497
                  and          s7, a0, s6
                  slli         s10, a4, 22
                  slt          s5, s8, s2
                  and          t0, t2, a0
                  slti         s11, s10, 49
                  sub          t3, a5, a1
                  xori         sp, t0, 1397
                  xor          a4, s6, a1
                  addi         a7, a4, -874
                  blt          tp, s7, 599f
                  or           t5, a5, a2
                  srli         a2, s3, 5
                  slt          s3, a2, sp
                  nop
                  xor          a7, ra, s1
599:              slti         a7, gp, 1733
                  xor          sp, s11, ra
                  lui          s7, 559962
                  xori         a1, t0, 463
                  ori          t2, a2, 884
                  sll          s9, s2, s1
                  bgeu         zero, t1, 625f
                  xor          s2, t2, s0
                  sltiu        s2, t0, -294
                  xori         s3, a6, -802
                  lui          s9, 826173
                  bltu         t4, s6, 615f
                  bltu         zero, a6, 623f
                  bge          t5, a3, 628f
                  add          gp, s10, a2
                  bne          s4, t2, 617f
615:              bgeu         s4, a7, 631f
                  sub          a6, s1, s6
617:              or           s9, s9, zero
                  srl          a6, t6, s4
                  sltiu        t2, t6, -1132
                  ori          t6, sp, -1550
                  bgeu         s11, s9, 641f
                  ori          s2, ra, -1732
623:              lui          a0, 875742
                  srai         t1, t6, 2
625:              bltu         s1, s6, 640f
                  bltu         s10, a2, 633f
                  ori          t2, s1, 1852
628:              bne          a2, t0, 638f
                  beq          t4, a0, 631f
                  slti         s11, s10, 495
631:              andi         ra, s8, -800
                  sub          a7, t0, t0
633:              sra          s7, a7, t5
                  blt          a5, s3, 642f
                  sltiu        s2, zero, 2008
                  or           s11, s6, s10
                  sltiu        s11, zero, -1813
638:              sra          t1, s11, t0
                  sll          gp, t6, t5
640:              lui          t3, 96708
641:              xori         s3, s11, -1628
642:              nop
                  sltiu        t1, a5, -1215
                  ori          a1, t1, 4
                  andi         a2, a4, -255
                  srl          a7, a2, a2
                  addi         s5, s6, -120
                  addi         tp, a3, -590
                  sub          s7, t2, s4
                  lui          t5, 560123
                  and          t2, a4, s1
                  add          s4, sp, zero
                  slt          t2, s9, s9
                  bge          zero, s5, 673f
                  lui          t1, 746771
                  bgeu         s1, a3, 665f
                  bltu         s8, t2, 664f
                  slti         s7, tp, 641
                  blt          t6, a7, 668f
                  nop
                  slt          s0, sp, s3
                  add          s0, s1, s6
                  and          t0, a3, s3
664:              or           a1, sp, t2
665:              sra          t3, s3, s6
                  srli         a6, a0, 5
                  sltiu        t0, t5, -667
668:              lui          tp, 96986
                  slt          t5, t1, s4
                  addi         gp, ra, 927
                  lui          s6, 926696
                  blt          a1, t1, 674f
673:              blt          s11, tp, 675f
674:              xori         t3, s2, -1175
675:              slt          tp, tp, s6
                  bge          s7, t6, 684f
                  srli         t3, s9, 11
                  andi         t6, s1, -962
                  bne          a2, tp, 686f
                  srli         t0, s4, 18
                  xor          ra, a4, sp
                  addi         s6, t1, 1930
                  xor          tp, a7, ra
684:              bge          t4, s7, 702f
                  xori         t2, a3, -697
686:              ori          t3, s11, 1833
                  sltu         a3, a3, a5
                  add          s0, t0, s5
                  or           t6, s9, a0
                  xori         a7, t6, 1833
                  srl          t3, t1, sp
                  and          s2, s5, zero
                  srl          a1, t3, s8
                  bgeu         s7, s6, 705f
                  xor          t2, a4, t3
                  andi         t5, s4, -1176
                  sll          s10, s5, t0
                  bgeu         ra, a7, 718f
                  bltu         s9, s2, 702f
                  sll          s6, a0, t2
                  slt          a0, s3, s5
702:              and          a1, t2, gp
                  srl          s0, s9, a1
                  add          s3, a0, s6
705:              blt          t1, s11, 718f
                  slt          t6, a2, a2
                  bltu         ra, a3, 722f
                  ori          s6, t5, 905
                  addi         s3, zero, 5 #init loop 0 counter
                  slli         ra, sp, 0
                  xor          s6, a5, s3
                  srli         t0, t2, 9
                  addi         s0, zero, 15 #init loop 0 limit
                  slti         s11, t1, -1480
                  slti         a2, tp, -210
                  srai         s9, t3, 22
                  xor          s10, t1, s7
                  sra          sp, a7, t2
                  nop
                  slt          a3, s3, s1
                  lui          s1, 41698
                  xor          a7, a4, s4
                  ori          t2, gp, -42
                  or           a2, ra, t0
sub_5_6_0_t:      xor          t0, a4, ra
                  addi         s3, s3, 7 #update loop 0 counter
                  srli         a0, a0, 18
                  bltu         s3, s0, sub_5_6_0_t #branch for loop 0
                  sub          s4, s7, s0
                  srl          s4, a6, s3
                  and          s5, gp, t5
                  bge          zero, s4, 730f
                  xor          s2, a1, a2
                  srai         s7, a0, 3
                  sra          zero, s7, t3
                  or           s9, a2, s6
                  add          t3, s11, zero
                  sltu         a0, t3, t1
718:              bge          s6, s2, 738f
                  lui          s1, 333190
                  slti         a7, t5, -1828
                  add          s1, s0, a3
722:              nop
                  sub          s4, t0, ra
                  slti         s2, s2, 629
                  srai         s9, zero, 21
                  sra          t1, s2, s2
                  slti         s2, s1, -584
                  slt          sp, s9, a4
                  blt          s2, s11, 744f
730:              bltu         sp, sp, 746f
                  add          ra, t4, a4
                  slt          s4, sp, ra
                  srl          s10, t1, s4
                  sra          s5, t6, s10
                  srl          t0, s7, a7
                  andi         s0, s2, 136
                  xor          a6, a4, s8
738:              and          sp, a3, s1
                  slt          s0, sp, zero
                  auipc        s2, 261162
                  xori         t5, a3, 1155
                  beq          s4, t1, 744f
                  addi         a2, t2, -1491
744:              srli         t0, s6, 20
                  slti         t3, a5, 287
746:              bge          s1, t2, 765f
                  slti         s0, s7, -88
                  sll          s7, a7, s2
                  bgeu         s3, t5, 760f
                  slti         tp, t3, -2018
                  addi         t3, a7, 1012
                  andi         ra, t4, 2029
                  or           a3, s1, s6
                  sll          s5, s4, t6
                  slli         s11, s5, 28
                  beq          s0, a6, 765f
                  bgeu         a1, t1, 760f
                  xor          t0, t0, gp
                  sltiu        gp, s9, -1353
760:              bltu         a6, a5, 763f
                  sra          a1, t5, a1
                  slti         s7, a6, -1968
763:              or           a0, t5, s8
                  slli         s11, s4, 17
765:              sltiu        a1, a7, 963
                  and          zero, t0, a6
                  bge          tp, t1, 776f
                  ori          zero, s6, -984
                  addi         a0, tp, 1072
                  slli         a3, s9, 10
                  slt          a4, a4, a7
                  srai         a2, s2, 23
                  bne          s5, t0, 781f
                  bge          s3, s9, 792f
                  sub          a1, tp, t6
776:              srli         a4, s11, 20
                  add          t3, t1, s2
                  andi         s6, a3, 501
                  ori          s7, a4, 1883
                  sll          a7, a2, t2
781:              sltu         a6, t4, a6
                  blt          a2, a5, 798f
                  or           s4, s4, gp
                  xori         a7, a3, -1729
                  srai         t1, tp, 14
                  srai         s1, s5, 3
                  sub          s4, s9, t2
                  lui          t2, 709191
                  xori         tp, a7, 1534
                  auipc        a0, 595621
                  and          gp, t6, a3
792:              ori          a7, t1, -1552
                  add          s5, a1, a4
                  slli         s2, a4, 30
                  srli         s10, a6, 6
                  or           s2, t6, a2
                  bge          s6, t3, 803f
798:              bne          a5, a0, 803f
                  bge          s1, s0, 801f
                  and          t0, a6, s7
801:              ori          a6, a4, -1206
                  bgeu         s9, s10, 812f
803:              beq          t2, s11, 810f
                  bge          s8, s4, 819f
                  blt          t2, a1, 808f
                  lui          t3, 97470
                  slt          t5, t5, s2
808:              or           s9, zero, a1
                  xor          s10, ra, t0
810:              or           t3, a0, s11
                  blt          t3, t4, 819f
812:              addi         s11, sp, 281
                  srai         a1, a2, 29
                  beq          sp, s0, 834f
                  bge          t5, a4, 823f
                  slli         zero, t1, 27
                  auipc        t1, 665956
                  sub          a0, a2, t3
819:              and          a7, a6, t4
                  bgeu         t3, a2, 840f
                  andi         a4, gp, 1390
                  nop
823:              nop
                  sub          tp, s11, t3
                  sltu         t0, s0, t2
                  sra          t6, a1, t2
                  beq          s2, a4, 834f
                  bgeu         t1, s11, 830f
                  sltiu        t6, t6, 87
830:              add          t0, t6, a0
                  bge          t6, sp, 850f
                  auipc        s1, 150773
                  andi         s2, s4, -1679
834:              bltu         a0, t6, 847f
                  sub          s5, a4, a1
                  and          s5, tp, a4
                  addi         a4, s1, 526
                  addi         s9, a4, -1533
                  bge          s9, s4, 851f
840:              bne          s3, a1, 847f
                  or           a6, s7, a1
                  xori         sp, s0, -1234
                  blt          s7, t0, 851f
                  bge          s11, tp, 846f
                  xor          s9, s7, zero
846:              ori          a0, ra, -1154
847:              xor          a6, zero, a7
                  beq          sp, a4, 855f
                  lui          gp, 995700
850:              bne          s4, t5, 860f
851:              sltu         gp, s1, a7
                  bge          s7, a7, 855f
                  andi         s1, t1, -593
                  sll          t6, zero, a6
855:              or           a6, t2, t2
                  beq          a3, t4, 875f
                  xori         t1, s5, -387
                  lui          s2, 26353
                  srl          a1, a6, a0
860:              srai         s1, s6, 15
                  lui          tp, 1024990
                  lui          s6, 281466
                  xor          a6, s3, a1
                  xori         a3, s7, -447
                  or           gp, a0, gp
                  nop
                  xor          a6, a2, s4
                  srl          sp, t1, s3
                  sll          tp, t2, zero
                  slti         t2, s9, 1118
                  slli         t6, s2, 8
                  and          t2, t6, a1
                  beq          a2, s5, 889f
                  slli         t0, a7, 4
875:              lui          t2, 721782
                  srli         s3, t5, 4
                  sltu         s0, t1, s4
                  bge          a7, t2, 891f
                  auipc        a6, 400716
                  ori          s7, s4, -214
                  sra          a1, s3, zero
                  sltiu        a0, s7, -1109
                  sub          s3, a4, a5
                  slti         t2, s7, -99
                  add          t0, s7, s0
                  ori          s9, zero, 1334
                  addi         ra, t6, -175
                  blt          t3, a5, 896f
889:              srl          sp, t6, s10
                  bltu         zero, t5, 893f
891:              bge          t3, s9, 911f
                  lui          a3, 516628
893:              sltiu        s0, a5, -1855
                  bge          t6, s0, 909f
                  srli         a1, s2, 10
896:              slt          a0, t3, s6
                  or           s5, a1, sp
                  xor          t6, s2, s2
                  xori         a4, a0, 761
                  sra          t2, s10, t3
                  bgeu         s10, a6, 921f
                  lui          t0, 423664
                  slti         s4, t6, -1924
                  sub          t5, sp, s7
                  bgeu         s2, s9, 910f
                  xori         ra, t4, -165
                  srli         a0, t0, 17
                  xor          zero, tp, s9
909:              slt          gp, t1, a4
910:              add          a4, t6, a7
911:              add          a6, t3, a0
                  slt          t6, s10, t0
                  bne          a3, tp, 915f
                  bgeu         s3, gp, 929f
915:              beq          a4, t0, 926f
                  ori          a3, s2, -1083
                  srli         s6, ra, 31
                  sub          a3, t4, a0
                  srli         s3, a5, 1
                  and          t0, s5, sp
921:              sltiu        a7, t6, -651
                  slti         t5, s8, -1814
                  srli         t2, a5, 6
                  srl          t0, zero, s7
                  sll          t6, zero, s6
926:              xori         a3, tp, 406
                  sltiu        tp, s0, 241
                  srl          a1, a7, a1
929:              blt          t2, a2, 938f
                  bltu         t6, s5, 936f
                  bne          gp, s11, 943f
                  sltu         s4, a7, s2
                  xor          t3, a6, a0
                  xor          a6, gp, t2
                  or           t5, zero, t3
936:              slti         a3, s9, -1038
                  blt          s1, s2, 939f
938:              slli         a4, s10, 30
939:              lui          s1, 629191
                  slli         sp, t3, 5
                  add          ra, s7, gp
                  srai         a1, a4, 17
943:              addi         a6, a4, 1852
                  srli         tp, gp, 13
                  srli         s11, sp, 23
                  bge          a1, t6, 953f
                  slli         a2, s6, 27
                  add          sp, s2, s7
                  ori          s10, t5, 381
                  bge          s5, zero, 968f
                  lui          t6, 164236
                  andi         s9, gp, -407
953:              sub          t3, s10, t4
                  slti         s10, a4, -215
                  srai         s0, t6, 15
                  srli         ra, s4, 21
                  bgeu         a4, s9, 976f
                  xori         s7, t6, -118
                  ori          tp, s11, 1023
                  xori         s1, tp, 1509
                  sltiu        tp, s8, 1046
                  slt          a3, s0, a7
                  slt          a0, s8, s3
                  add          s9, a3, a1
                  auipc        a6, 122448
                  blt          s2, t3, 982f
                  add          zero, a5, s11
968:              auipc        s5, 702123
                  bge          t1, s5, 972f
                  sra          t5, t1, tp
                  blt          t1, a2, 980f
972:              lui          a0, 649368
                  sll          t5, t1, tp
                  or           tp, t3, s10
                  xor          s0, a2, s8
976:              sub          s6, s5, a1
                  sltiu        t2, s2, 722
                  sltiu        t5, gp, 175
                  blt          a2, t3, 987f
980:              and          a6, s5, t2
                  sra          s1, a1, t5
982:              andi         a6, s3, -824
                  sll          t0, a4, a5
                  xori         s5, ra, 1573
                  blt          a3, s4, 1005f
                  srl          t2, s11, s11
987:              slt          s7, s5, s8
                  xori         zero, sp, -1506
                  addi         s5, gp, 1759
                  beq          a4, t1, 997f
                  srai         t5, t1, 16
                  xor          t0, s0, s9
                  add          t3, s5, a5
                  or           gp, t3, zero
                  sltiu        t0, a3, 1388
                  or           tp, s8, a0
997:              bgeu         tp, a2, 1012f
                  bge          a7, t5, 1007f
                  srl          s2, a4, zero
                  bne          t5, s6, 1002f
                  bne          s9, s11, 1021f
1002:             auipc        t0, 702797
                  auipc        t2, 463527
                  slti         s3, t1, -942
1005:             xor          t0, t0, zero
                  srli         zero, a7, 23
1007:             bltu         s5, t3, 1012f
                  sltiu        t2, a4, -1864
                  xor          a4, a6, t1
                  bne          sp, s11, 1013f
                  slt          s10, t4, s1
1012:             xori         gp, s3, 2038
1013:             slti         t3, s6, -566
                  slti         zero, ra, -999
                  ori          a6, tp, -1641
                  lui          s7, 61274
                  srl          a7, gp, t2
                  sra          gp, a1, tp
                  bltu         a7, s2, 1027f
                  addi         s10, a4, -1825
1021:             srai         t5, s2, 8
                  and          t2, s9, s11
                  or           s5, t4, ra
                  srli         ra, tp, 24
                  addi         a4, zero, -10 #init loop 1 counter
                  slli         sp, s2, 23
                  slli         ra, t5, 2
                  addi         a6, zero, -16 #init loop 1 limit
                  sub          zero, a3, a2
sub_5_22_1_t:     lui          zero, 629549
                  auipc        t2, 343273
                  slti         a1, t3, 371
                  sltu         a1, t0, s7
                  addi         a4, a4, -3 #update loop 1 counter
                  andi         s0, s10, 1085
                  addi         s11, zero, 10 #init loop 0 counter
                  sra          zero, s11, t3
                  addi         t1, zero, 3 #init loop 0 limit
sub_5_22_0_t:     or           s3, s7, s0
                  lui          a7, 1012935
                  addi         s11, s11, -2 #update loop 0 counter
                  addi         t5, a2, 284
                  bgeu         s11, t1, sub_5_22_0_t #branch for loop 0
                  bge          a4, a6, sub_5_22_1_t #branch for loop 1
                  slti         s1, t6, -1330
                  srli         s9, s1, 17
                  slt          s5, t3, t1
1027:             xor          s10, a4, t2
                  sub          t3, s5, t1
                  add          s7, t5, a2
                  sltu         a3, zero, s0
                  and          t0, t0, gp
                  srl          tp, s1, s5
                  xori         t2, ra, 738
                  bltu         ra, s8, 1040f
                  beq          tp, s0, 1053f
                  slt          tp, s2, s3
                  bgeu         s2, s11, 1047f
                  bne          a0, a0, 1058f
                  sub          sp, s9, a7
1040:             or           t5, s5, a0
                  nop
                  lui          tp, 538104
                  addi         zero, t4, 996
                  srl          a3, s6, zero
                  sra          s5, s9, s8
                  slli         s0, s8, 16
1047:             blt          t4, gp, 1063f
                  slli         s10, zero, 25
                  bgeu         s10, a4, 1068f
                  sra          a2, a3, s9
                  xor          sp, a6, t0
                  sra          a1, t5, s7
1053:             ori          ra, t6, -1488
                  slti         t2, s5, 1367
                  bne          gp, a2, 1062f
                  slli         gp, ra, 25
                  lui          s10, 768330
1058:             and          s2, a4, a6
                  addi         gp, t6, 1987
                  beq          t4, a3, 1079f
                  slli         ra, zero, 14
1062:             xori         s0, t5, 439
1063:             or           t3, t1, t3
                  sub          a3, s1, s5
                  blt          s2, t5, 1073f
                  nop
                  ori          s6, s5, 396
1068:             srli         a1, a5, 17
                  bne          a0, s6, 1077f
                  srai         gp, t3, 15
                  beq          gp, a7, 1073f
                  slti         a7, s6, -822
1073:             slli         t5, s6, 10
                  nop
                  bltu         ra, s5, 1088f
                  slt          sp, s6, s0
1077:             andi         t1, t6, 763
                  auipc        sp, 960159
1079:             lui          sp, 520109
                  bltu         a5, t3, 1087f
                  slt          a0, s0, a7
                  sltiu        s10, s5, -1093
                  andi         s7, a2, -845
                  ori          zero, s4, -348
                  auipc        a0, 16171
                  nop
1087:             beq          a3, t4, 1102f
1088:             slti         s4, ra, 982
                  sltiu        gp, a2, 1333
                  bgeu         t1, a3, 1092f
                  andi         a6, a5, 1426
1092:             srai         t3, t5, 28
                  nop
                  srli         a2, t5, 22
                  andi         s7, s4, -1976
                  xori         a7, a1, -287
                  xori         zero, a6, -1687
                  bgeu         a4, s3, 1118f
                  addi         tp, zero, 7 #init loop 1 counter
                  addi         a4, zero, 7 #init loop 1 limit
sub_5_1_1_t:      or           s10, ra, t3
                  addi         tp, tp, -6 #update loop 1 counter
                  addi         sp, zero, 2 #init loop 0 counter
                  addi         a6, zero, -6 #init loop 0 limit
                  slli         a0, s2, 18
sub_5_1_0_t:      sub          t6, s8, a3
                  addi         sp, sp, -8 #update loop 0 counter
                  bne          sp, a6, sub_5_1_0_t #branch for loop 0
                  bgeu         tp, a4, sub_5_1_1_t #branch for loop 1
                  xor          s9, s2, a0
                  slli         t0, a7, 18
                  or           s5, s1, a4
                  add          s3, ra, s6
1102:             addi         t3, t2, 586
                  sll          t3, s10, s11
                  beq          s5, a7, 1113f
                  bltu         s7, s4, 1108f
                  bgeu         s10, s8, 1109f
                  slti         s2, t3, 289
1108:             bne          s5, t5, 1115f
1109:             or           t5, s2, t0
                  auipc        a7, 378143
                  srai         s7, a2, 4
                  lui          a6, 135669
1113:             xor          t6, s5, a3
                  sltu         a7, s10, s1
1115:             and          s2, ra, s1
                  ori          s0, s11, 154
                  xori         a4, a1, 1246
1118:             srai         s1, s9, 7
                  srl          s9, sp, s2
                  blt          gp, a0, 1132f
                  lui          t6, 786962
                  lui          t2, 904416
                  sltu         a7, a0, s6
                  bge          s1, s7, 1135f
                  sltu         a0, ra, a3
                  ori          a4, a2, -6
                  bge          a6, zero, 1143f
                  auipc        a7, 724742
                  srl          t1, t2, s9
                  bltu         ra, s7, 1139f
                  addi         t3, t1, 1683
1132:             andi         a3, a3, -790
                  or           s11, gp, gp
                  slti         s2, s3, 1559
1135:             sltiu        a2, s7, -636
                  srai         s7, t4, 14
                  sub          s4, a6, a7
                  sltiu        s1, t5, 2029
1139:             slt          t5, s5, t4
                  xori         zero, s11, 726
                  auipc        t0, 327006
                  bltu         a3, ra, 1161f
1143:             auipc        t2, 35977
                  sub          s11, gp, ra
                  ori          t6, s1, -1371
                  xori         ra, s6, -1628
                  srai         gp, t5, 24
                  beq          a4, a6, 1161f
                  slli         a4, a6, 29
                  slli         s4, gp, 13
                  xori         a6, s5, -542
                  xor          t1, s8, s7
                  sltu         a1, t0, t1
                  sltiu        t2, gp, 839
                  bge          t1, a5, 1160f
                  sll          a1, s5, s11
                  sltu         zero, t4, a5
                  auipc        s2, 990210
                  sltiu        a1, t1, 424
1160:             blt          s0, t0, 1169f
1161:             slt          a3, s2, s8
                  addi         a1, t4, -1705
                  slt          sp, s9, a1
                  srai         t5, s1, 4
                  lui          s10, 926226
                  sra          t0, s3, a0
                  bltu         t2, s2, 1169f
                  add          s5, a3, s6
1169:             sll          sp, t5, a5
                  auipc        a2, 502830
                  nop
                  add          s0, t1, a4
                  xor          tp, zero, a6
                  slti         t0, s6, 1828
                  addi         a4, t4, 974
                  slt          gp, s9, a7
                  andi         a0, a1, 484
                  srli         ra, a0, 10
                  slti         gp, t3, -391
                  andi         s10, s9, -1816
                  and          s10, s9, zero
                  slt          s7, t6, a1
                  slli         t0, t5, 24
                  srai         t6, a7, 5
                  nop
                  xor          t2, t6, s4
                  bge          sp, ra, 1202f
                  blt          a5, zero, 1207f
                  srai         s0, a7, 1
                  nop
                  andi         t5, t1, -104
                  auipc        s5, 279200
                  srli         a3, s2, 16
                  blt          s1, a0, 1210f
                  sub          t3, s2, t5
                  beq          a4, tp, 1216f
                  sltiu        t6, a6, 295
                  addi         a7, gp, -414
                  srai         s1, ra, 15
                  auipc        s5, 632905
                  sub          s2, a7, a7
1202:             bge          s5, s5, 1222f
                  srai         a6, a0, 12
                  bne          s0, s2, 1220f
                  ori          t2, s2, 88
                  srl          a1, s6, t3
1207:             and          s9, a7, t1
                  xori         s2, a4, -1732
                  xori         t5, s8, 1955
1210:             sll          a2, ra, s1
                  add          t5, s8, s7
                  andi         s11, s6, 378
                  sll          a4, zero, a5
                  andi         ra, s4, 1883
                  bgeu         sp, t2, 1225f
1216:             slt          s1, a6, a1
                  ori          s9, s1, -2014
                  and          s7, t6, t6
                  slti         a6, s9, 1965
1220:             addi         a1, s7, 2047
                  slti         sp, s4, 1857
1222:             xori         zero, tp, 1980
                  srai         tp, sp, 9
                  auipc        a2, 1036643
1225:             slt          t3, a1, t6
                  bge          a1, s5, 1232f
                  beq          s9, a0, 1234f
                  xori         s4, gp, 1698
                  sra          s2, s10, s4
                  andi         tp, t5, 1885
                  sub          s2, a2, tp
1232:             bgeu         s10, s10, 1243f
                  addi         a4, sp, 1901
1234:             ori          a6, s1, 735
                  srai         s2, tp, 31
                  lui          a7, 363652
                  srl          t1, tp, s3
                  sltiu        s6, s2, -923
                  xor          s0, s5, ra
                  slti         gp, s6, 489
                  xor          t1, s5, t0
                  sltiu        s9, a4, -1415
1243:             and          t5, s7, s1
                  bgeu         a6, tp, 1251f
                  sra          s1, a2, a4
                  srl          a4, s6, t3
                  srli         a4, a6, 24
                  lui          t0, 270799
                  addi         s11, s5, 494
                  andi         t0, s5, -793
1251:             xori         zero, s4, -1765
                  bltu         s5, t5, 1254f
                  auipc        t1, 352435
1254:             slli         a6, a3, 10
                  slti         s6, s8, -23
                  srai         t2, s3, 4
                  auipc        t2, 82353
                  addi         tp, t3, 1724
                  srai         t0, s3, 28
                  slti         t0, s7, 916
                  andi         zero, zero, 816
                  sub          a3, sp, s8
                  bne          a2, zero, 1271f
                  blt          t4, a1, 1266f
                  xori         s2, a6, -1051
1266:             sltiu        s7, t4, -1527
                  slti         a3, a1, -171
                  ori          tp, sp, 875
                  blt          s5, t0, 1272f
                  ori          a3, a3, 1542
1271:             nop
1272:             sra          s0, s6, s10
                  slt          t1, t6, sp
                  sltu         ra, a6, a7
                  beq          t1, gp, 1278f
                  ori          a3, tp, -1143
                  sltiu        s10, a4, -1521
1278:             slli         t2, s3, 7
                  ori          s11, a1, 145
                  blt          s0, t2, 1288f
                  sll          gp, a4, s11
                  ori          a3, a5, -1253
                  ori          ra, a2, 893
                  srai         s2, a4, 22
                  sra          t3, s9, a7
                  beq          s11, s5, 1304f
                  xori         a7, gp, 175
1288:             sll          t0, t3, a7
                  sub          sp, zero, s7
                  xori         t2, a6, 1322
                  xori         a2, sp, -855
                  nop
                  bne          a0, s2, 1305f
                  and          sp, t4, s11
                  xor          t3, s8, s4
                  srai         s11, t0, 10
                  beq          sp, s8, 1305f
                  blt          s1, t4, 1301f
                  sra          s7, s9, s4
                  blt          a7, s9, 1320f
1301:             add          a0, t3, s8
                  addi         a3, gp, -173
                  blt          t6, s3, 1318f
1304:             bltu         ra, zero, 1311f
1305:             sra          t2, s0, a4
                  xor          t1, t2, s4
                  slt          ra, a2, a4
                  bltu         s8, a1, 1323f
                  sll          a6, s5, t4
                  and          t0, s9, s8
1311:             slt          s5, sp, sp
                  slt          sp, s5, a3
                  sltu         s11, s5, t2
                  addi         zero, ra, -1845
                  bne          sp, a2, 1331f
                  sub          a3, sp, a3
                  sub          s6, a1, a3
1318:             xor          zero, s5, gp
                  srl          s1, t1, a6
1320:             slt          s9, s0, t0
                  srli         t0, t2, 9
                  bne          sp, zero, 1330f
1323:             or           s6, a3, s1
                  srli         s5, s0, 23
                  xori         t6, t2, 1178
                  slt          t3, s0, s1
                  srl          a1, a1, tp
                  slt          t3, gp, s4
                  lui          s4, 89396
1330:             lui          s11, 225198
1331:             bltu         s11, s11, 1341f
                  or           a0, s1, t3
                  srli         zero, s10, 28
                  srai         t3, t2, 26
                  blt          s7, a1, 1343f
                  sub          gp, zero, a0
                  bne          ra, s0, 1344f
                  nop
                  ori          a6, zero, -133
                  bltu         zero, a0, 1356f
1341:             lui          zero, 201221
                  add          s11, s9, t0
1343:             xor          s2, a4, a5
1344:             or           t3, s11, t6
                  andi         s6, s1, 1500
                  lui          t5, 270820
                  or           a7, s4, t0
                  srli         sp, s8, 3
                  xor          sp, a2, t0
                  and          s0, a6, s8
                  sra          t6, t2, s7
                  andi         s2, s10, -620
                  slt          a0, sp, a3
                  srli         s9, s7, 30
                  srl          s2, s3, t5
1356:             ori          a0, ra, -911
                  srai         gp, s9, 18
                  bltu         a7, a5, 1370f
                  andi         ra, t2, 437
                  beq          sp, t3, 1367f
                  srl          t3, s5, s0
                  srai         s9, t4, 27
                  sltiu        a3, t1, -1418
                  sub          s6, a5, sp
                  slti         a4, a3, 1089
                  or           a2, s1, a4
1367:             nop
                  slli         s10, a5, 0
                  slli         t6, s2, 10
1370:             addi         t1, zero, -1680
                  sub          gp, s8, zero
                  srai         a0, a7, 6
                  lui          t1, 366217
                  auipc        gp, 140085
                  sltu         t0, gp, s10
                  xori         ra, s1, 799
                  slti         a0, s6, 356
                  srl          a0, t2, s2
                  and          s5, s1, a4
                  beq          a6, tp, 1382f
                  slli         a3, t5, 15
1382:             srli         t6, a4, 28
                  auipc        s0, 908016
                  auipc        a6, 497119
                  bge          s6, t5, 1387f
                  auipc        t6, 706177
1387:             sltu         t5, a5, a5
                  bne          a3, s0, 1403f
                  sltu         a0, s4, s11
                  xori         a7, a3, 75
                  slt          t6, t3, s4
                  lui          a4, 7531
                  slli         a7, a2, 22
                  slti         t6, s11, -1105
                  srai         s2, t0, 18
                  xor          sp, t6, s9
                  beq          s5, s4, 1400f
                  sra          a1, s7, t4
                  nop
1400:             xor          a1, tp, s2
                  bltu         a3, sp, 1408f
                  bge          s9, a7, 1421f
1403:             srai         a0, s1, 18
                  sra          s0, s5, a0
                  sub          s7, s0, s8
                  add          s9, t6, sp
                  nop
1408:             sub          tp, a5, a3
                  slli         a6, s3, 5
                  xori         sp, a6, 1790
                  blt          zero, a7, 1430f
                  or           s0, s4, t5
                  bne          s4, s5, 1416f
                  srli         a7, a6, 8
                  bge          t4, ra, 1426f
1416:             addi         a2, t1, -1196
                  slt          a3, a7, a3
                  slt          a7, s9, a4
                  srli         a3, s5, 9
                  xori         a1, s0, 1045
1421:             and          zero, s5, t0
                  bge          a0, s4, 1442f
                  blt          t1, s9, 1443f
                  slli         zero, s6, 22
                  sltu         zero, s8, s5
1426:             srl          s11, s10, s0
                  bge          a4, s7, 1429f
                  add          s6, sp, a7
1429:             slli         a1, s11, 2
1430:             ori          sp, a2, 1109
                  sub          t3, s7, a0
                  andi         a0, a0, 168
                  sub          a4, t4, a6
                  bltu         a2, a3, 1440f
                  srli         s6, s10, 10
                  slti         a6, gp, 307
                  addi         a7, t3, 1666
                  bge          a0, t4, 1441f
                  andi         s10, s3, 589
1440:             lui          t2, 935866
1441:             sltiu        s1, s3, 144
1442:             slli         a4, s11, 29
1443:             ori          a3, a6, 692
                  beq          tp, s8, 1453f
                  sltiu        t1, s2, 1559
                  add          a4, tp, s7
                  sll          s6, s8, a3
                  sub          t2, s4, zero
                  sltiu        s2, s4, 2005
                  slti         s9, s4, 1473
                  addi         s7, t1, 908
                  slti         t2, a4, 843
1453:             add          s5, a7, a4
                  xori         a7, s5, -1460
                  bgeu         t4, s7, 1460f
                  sltiu        s11, gp, 910
                  xori         a1, s11, -538
                  xori         s0, s1, 372
                  bge          a3, s0, 1467f
1460:             add          t2, t2, s0
                  slti         a4, a1, -1927
                  sll          s4, s9, a5
                  or           s11, tp, gp
                  add          s0, t4, ra
                  sra          s4, t0, t5
                  add          s5, tp, s7
1467:             slt          t3, a5, gp
                  sltiu        a7, s11, -1025
                  bltu         s9, s11, 1482f
                  and          zero, a3, tp
                  bne          t6, s8, 1480f
                  sltiu        a4, s2, -1045
                  add          a6, t2, a5
                  sltu         a1, s3, a6
                  nop
                  add          s4, ra, s9
                  blt          s4, s9, 1497f
                  slt          s2, a3, s1
                  bne          zero, t5, 1497f
1480:             slli         s0, t5, 0
                  slt          a1, a6, s3
1482:             beq          sp, gp, 1487f
                  sra          s0, t2, s4
                  sra          s3, s2, s11
                  slti         t6, ra, 1004
                  sra          s1, t5, ra
1487:             addi         ra, s4, 1439
                  slt          gp, s1, zero
                  beq          s2, s9, 1492f
                  addi         a4, t5, 295
                  auipc        a4, 744674
1492:             beq          t4, t3, 1504f
                  srl          a4, s11, t3
                  srai         s6, a1, 26
                  bne          a0, t5, 1497f
                  bge          s4, s10, 1516f
1497:             blt          t4, s7, 1499f
                  andi         s7, s4, 749
1499:             and          zero, t2, s4
                  add          a1, tp, t6
                  addi         a4, zero, -4 #init loop 1 counter
                  srli         ra, s8, 0
                  nop
                  srai         s11, t3, 27
                  addi         s1, s2, -1483
                  slli         a0, a0, 22
                  addi         a3, zero, -19 #init loop 1 limit
                  slt          t2, s9, zero
sub_5_9_1_t:      andi         tp, t5, 1425
                  sltu         s10, a1, a6
                  addi         a4, a4, -10 #update loop 1 counter
                  addi         s7, zero, 0 #init loop 0 counter
                  addi         a2, zero, -1 #init loop 0 limit
sub_5_9_0_t:      sub          ra, a5, s0
                  slt          s2, s6, a0
                  srli         sp, a1, 9
                  addi         s7, s7, -9 #update loop 0 counter
                  add          a0, zero, s4
                  bge          s7, a2, sub_5_9_0_t #branch for loop 0
                  ori          gp, gp, -297
                  sltu         s11, tp, t3
                  bge          a4, a3, sub_5_9_1_t #branch for loop 1
                  and          s3, s11, t3
                  srli         tp, s9, 24
                  bgeu         a0, zero, 1509f
                  srl          s4, t2, a5
1504:             slt          s3, tp, s9
                  srl          s10, a2, s1
                  bgeu         s6, t1, 1522f
                  srl          t1, t3, a5
                  and          s0, a7, a3
1509:             ori          t3, s0, -1034
                  slt          ra, t0, a2
                  srli         s4, s8, 12
                  srli         t0, t4, 14
                  sll          s9, s10, t6
                  and          s10, t5, s6
                  bltu         t4, t5, 1526f
1516:             slti         gp, zero, 1099
                  ori          s11, a5, -1145
                  blt          t4, a1, 1537f
                  bltu         t1, s3, 1521f
                  slli         s0, s10, 5
1521:             bltu         a4, s7, 1530f
1522:             blt          a6, a7, 1530f
                  blt          a7, t2, 1532f
                  beq          a4, zero, 1527f
                  bge          t3, tp, 1533f
1526:             sll          s2, zero, s10
1527:             srli         s0, tp, 30
                  xor          s1, t6, a4
                  slt          s3, s10, sp
1530:             blt          gp, s5, 1550f
                  xor          s4, a2, t2
1532:             srli         a1, t3, 2
1533:             srai         s0, s9, 22
                  beq          ra, s6, 1542f
                  nop
                  slli         a6, s2, 25
1537:             slti         t6, t6, 1593
                  bne          t2, a2, 1553f
                  addi         s11, s6, -1247
                  xor          s5, a1, s6
                  beq          gp, ra, 1561f
1542:             sll          s1, t0, s10
                  or           s2, s4, s2
                  slt          ra, s11, a0
                  slt          ra, ra, t2
                  sll          t0, ra, zero
                  sltu         s4, ra, s4
                  lui          a2, 920273
                  andi         a6, t2, 268
1550:             srl          s6, s11, s2
                  andi         s3, t2, 973
                  xor          a3, s4, s3
1553:             xor          gp, a6, s6
                  addi         t1, s4, -276
                  srli         t3, ra, 15
                  bltu         s9, s10, 1563f
                  bne          s11, a2, 1572f
                  xori         a7, s3, -1948
                  sltiu        t1, a1, -1481
                  auipc        t5, 875069
1561:             and          s9, s1, a3
                  slli         s4, s3, 31
1563:             auipc        s5, 669304
                  bgeu         s0, s1, 1567f
                  sltu         a4, s1, s6
                  lui          t2, 554934
1567:             nop
                  nop
                  bge          s9, t2, 1588f
                  sub          gp, s6, s9
                  sra          s0, s7, ra
1572:             xor          s7, t1, t1
                  add          a4, zero, s6
                  xori         s11, s1, -1179
                  xori         t3, s5, -688
                  xor          t0, s8, tp
                  bltu         a6, s10, 1587f
                  add          a1, ra, s5
                  bge          t4, s10, 1595f
                  sltu         s6, a6, t1
                  nop
                  slli         s10, a2, 5
                  bgeu         a0, ra, 1589f
                  beq          s8, a3, 1591f
                  xori         t2, t4, 144
                  blt          a0, t2, 1599f
1587:             bge          a4, a7, 1605f
1588:             sltu         t3, a6, s1
1589:             bgeu         a4, s11, 1609f
                  add          t0, a3, a0
1591:             slli         t5, tp, 29
                  sltu         t1, s11, t0
                  xor          a3, s0, t4
                  sltiu        s9, gp, 425
1595:             bne          t6, s5, 1610f
                  blt          a4, s4, 1603f
                  andi         t6, t0, -1643
                  sra          a4, gp, a5
1599:             slti         s6, s11, -1598
                  slti         a6, t4, 1798
                  sltiu        gp, a6, -110
                  slti         gp, gp, 1937
1603:             bne          a5, s11, 1606f
                  slt          s11, s8, s7
1605:             nop
1606:             bne          gp, a1, 1624f
                  srli         s1, a2, 9
                  add          tp, s8, tp
1609:             bltu         ra, a0, 1628f
1610:             xor          a1, s7, t3
                  bgeu         t0, sp, 1617f
                  beq          a6, t6, 1620f
                  sra          ra, a0, a5
                  bge          s10, s3, 1616f
                  or           s2, s10, s0
1616:             srl          a0, t6, zero
1617:             ori          s11, gp, -1757
                  srai         s10, a5, 30
                  sltu         s5, t2, sp
1620:             srai         sp, t0, 28
                  sra          s0, a6, t2
                  xor          s11, sp, a4
                  ori          t5, sp, -1923
1624:             srli         s2, sp, 6
                  srli         t2, gp, 2
                  nop
                  bne          a7, gp, 1640f
1628:             ori          s1, ra, -1053
                  slli         a3, s11, 24
                  add          s1, ra, a4
                  bne          s10, a7, 1650f
                  beq          s7, a3, 1640f
                  auipc        s7, 633902
                  bne          a4, s0, 1637f
                  ori          s0, a6, 1122
                  sltu         sp, t1, a3
1637:             beq          a6, s7, 1653f
                  slti         a0, ra, 688
                  bge          s3, s9, 1642f
1640:             srli         ra, s0, 16
                  and          s3, s5, s5
1642:             andi         s0, a7, 842
                  xori         zero, gp, -1913
                  bltu         a5, a4, 1651f
                  srli         s7, t0, 30
                  xori         s0, a2, -380
                  slti         a4, a1, 2025
                  slli         t6, s8, 12
                  sltu         gp, t4, a2
1650:             and          s6, s9, t0
1651:             slti         zero, s9, 1998
                  blt          zero, gp, 1662f
1653:             xori         s5, s3, 625
                  and          s0, s11, s11
                  slli         s1, s6, 31
                  bge          a2, s10, 1665f
                  slt          s0, gp, s10
                  and          gp, a7, zero
                  srli         s1, ra, 30
                  nop
                  srl          t3, t5, t0
1662:             sra          s11, s3, t1
                  sll          t6, a2, zero
                  sltu         s3, s7, s3
1665:             srl          s6, t1, gp
                  slti         a7, a3, 713
                  bne          s8, t5, 1683f
                  addi         s11, a6, -1874
                  slli         tp, t3, 17
                  beq          gp, s7, 1685f
                  sub          a1, s6, s11
                  xor          t2, t0, s8
                  sltu         s2, s11, a4
                  bge          a3, a7, 1682f
                  add          s4, ra, s1
                  srai         s6, s9, 11
                  sltu         ra, s2, s8
                  srl          a0, s10, s9
                  and          a4, a1, s1
                  xori         t1, a7, 627
                  sll          t3, s11, t5
1682:             xori         s3, s7, 41
1683:             xori         a6, s1, -11
                  bge          t3, s10, 1689f
1685:             srl          s0, s7, t3
                  lui          tp, 788576
                  lui          t3, 64047
                  lui          s10, 26898
1689:             sra          s6, t4, a3
                  nop
                  andi         a0, t2, 1085
                  xori         t6, a1, -1770
                  srl          a6, s4, a1
                  andi         s6, s11, 254
                  andi         a1, a7, -680
                  nop
                  beq          s0, a3, 1708f
                  andi         gp, gp, 996
                  sub          t6, s4, a1
                  nop
                  sra          a3, s7, t5
                  bge          a4, a0, 1711f
                  xori         s6, s2, 1266
                  xori         a2, s5, 1945
                  bgeu         ra, s9, 1717f
                  addi         s5, zero, 0 #init loop 1 counter
                  lui          gp, 919258
                  slt          t5, s1, a3
                  addi         t1, gp, 594
                  addi         t2, zero, 9 #init loop 1 limit
                  slti         s3, t3, 618
sub_5_21_1_t:     slti         gp, s1, -542
                  sub          s11, t0, a1
                  auipc        t1, 619133
                  addi         s5, s5, 9 #update loop 1 counter
                  srai         a4, a4, 7
                  addi         t3, zero, 1 #init loop 0 counter
                  addi         t6, zero, 3 #init loop 0 limit
                  and          s10, t1, zero
sub_5_21_0_t:     xor          a4, s10, t1
                  ori          s6, t2, -882
                  sltu         a0, s11, s3
                  srai         a7, t1, 20
                  srai         zero, a4, 4
                  sra          a3, s10, t2
                  sltu         a1, gp, t2
                  xor          t0, t2, t2
                  addi         t3, t3, 1 #update loop 0 counter
                  auipc        t0, 141375
                  auipc        t0, 439540
                  srai         s3, s2, 6
                  bltu         t3, t6, sub_5_21_0_t #branch for loop 0
                  slli         s4, a6, 1
                  add          sp, a1, s11
                  xori         s10, a5, -1384
                  andi         a2, s2, -1527
                  xor          sp, sp, s7
                  bne          s5, t2, sub_5_21_1_t #branch for loop 1
                  slt          a1, a5, s3
                  lui          s10, 941113
                  srli         t6, a5, 14
1708:             andi         t3, s8, -1685
                  lui          s9, 167065
                  ori          sp, t1, 607
1711:             sltiu        t0, t4, 2018
                  xor          t3, s7, t6
                  srli         s11, sp, 17
                  bgeu         s5, s11, 1716f
                  sll          a4, s11, ra
1716:             slt          s2, a2, s0
1717:             sub          s3, t1, a2
                  and          a3, s1, t1
                  bltu         a1, s1, 1726f
                  sub          a6, s0, zero
                  blt          s2, a1, 1723f
                  bltu         a4, s2, 1742f
1723:             bge          t2, t5, 1743f
                  xori         zero, a0, -1630
                  bltu         zero, ra, 1730f
1726:             blt          s1, s1, 1734f
                  srl          s10, s4, t1
                  sll          s6, s3, s0
                  addi         a2, a2, 532
1730:             blt          s9, a7, 1745f
                  sll          s11, s5, sp
                  bne          a3, a6, 1750f
                  nop
1734:             sub          tp, tp, t5
                  bltu         t6, s1, 1755f
                  slti         s11, t1, 1003
                  sltiu        s7, s8, 1612
                  slt          gp, s6, a4
                  beq          s2, s3, 1742f
                  beq          t2, a1, 1743f
                  sltu         s6, s0, s1
1742:             xor          t3, a7, s5
1743:             addi         gp, a5, -913
                  and          t2, s6, t4
1745:             sltu         a3, s4, t2
                  xor          s7, t5, a5
                  blt          s7, t2, 1760f
                  srai         s1, sp, 9
                  add          tp, gp, s2
1750:             andi         t6, t1, 1952
                  xor          ra, sp, t4
                  bltu         a6, zero, 1754f
                  xori         tp, s4, -1724
1754:             nop
1755:             add          t3, a6, s3
                  or           a1, a1, s8
                  ori          s10, s7, 1423
                  beq          a0, s5, 1777f
                  sltiu        a1, sp, 149
1760:             auipc        a1, 64424
                  andi         t5, s6, -1417
                  addi         a1, zero, -5 #init loop 1 counter
                  addi         t3, zero, 10 #init loop 1 limit
sub_5_24_1_t:     sub          s9, a1, s3
                  addi         a1, a1, 10 #update loop 1 counter
                  addi         s10, zero, -10 #init loop 0 counter
                  addi         tp, zero, 8 #init loop 0 limit
sub_5_24_0_t:     add          t1, t2, t6
                  addi         s10, s10, 2 #update loop 0 counter
                  bne          s10, tp, sub_5_24_0_t #branch for loop 0
                  blt          a1, t3, sub_5_24_1_t #branch for loop 1
                  srai         t1, a2, 3
                  andi         t5, s5, 1655
                  sub          t5, s3, s1
                  sltu         s4, s1, t1
                  xor          t0, a6, a4
                  slti         s3, s1, 647
                  blt          s9, s6, 1773f
                  srli         a7, s5, 3
                  sll          s1, a5, a3
                  add          t3, a7, a4
                  or           t0, s5, s9
                  slt          tp, s1, a2
1773:             bgeu         a2, t4, 1780f
                  nop
                  sll          t3, s4, t1
                  lui          s4, 302272
1777:             sll          a1, s8, s5
                  slli         s9, s7, 2
                  add          s4, a1, a7
1780:             andi         ra, s0, 1912
                  ori          s5, a2, 763
                  add          s4, ra, a5
                  beq          zero, s4, 1791f
                  slt          a6, t2, ra
                  xori         a4, a7, 529
                  blt          t2, a7, 1788f
                  add          s3, s3, zero
1788:             sltiu        s11, s1, 1801
                  or           tp, a4, a1
                  add          s10, s4, t5
1791:             slti         a7, s10, 761
                  sra          s6, s9, tp
                  bne          t4, s2, 1808f
                  xori         s5, a6, 1923
                  slti         t0, a6, 906
                  sra          s6, s10, s11
                  lui          s3, 201899
                  slli         a4, a6, 7
                  and          a1, a5, t0
                  sltiu        s7, s1, 916
                  sra          tp, s5, s7
                  lui          s5, 854831
                  srai         s2, gp, 1
                  xor          a1, tp, s10
                  bgeu         ra, s8, 1813f
                  addi         s4, t0, -992
                  srai         s11, a5, 11
1808:             nop
                  sltu         t6, t5, gp
                  bltu         a2, ra, 1830f
                  slti         s10, a4, 2019
                  sub          s1, s10, s8
1813:             addi         a2, s11, 1959
                  xori         a7, s5, -1383
                  ori          s7, s3, -855
                  slt          t6, t3, a5
                  bgeu         a3, s9, 1826f
                  slt          a4, a4, s5
                  bge          s1, s3, 1835f
                  bne          a2, s4, 1823f
                  srli         s7, a2, 6
                  srl          s9, s1, s5
1823:             auipc        ra, 701387
                  bgeu         a1, s7, 1836f
                  xor          s4, a3, a3
1826:             sltu         sp, s8, s3
                  sra          s0, a4, ra
                  xori         zero, ra, 236
                  beq          s10, s5, 1848f
1830:             auipc        zero, 819483
                  addi         t3, a2, -1100
                  xori         a2, s3, 760
                  sll          ra, s1, t4
                  bltu         a1, s9, 1841f
1835:             addi         s11, s4, -848
1836:             sll          gp, s9, s9
                  slli         a3, a7, 1
                  and          s10, s8, gp
                  blt          a1, a7, 1841f
                  slt          a4, t2, s11
1841:             bge          s9, s10, 1857f
                  ori          t0, a2, 542
                  sll          a0, s2, a0
                  srl          t5, zero, s3
                  nop
                  sll          s4, a6, t1
                  beq          s9, a0, 1856f
1848:             srai         s5, t6, 31
                  ori          t3, t6, -819
                  bgeu         a4, t3, 1857f
                  bne          s2, t1, 1862f
                  add          ra, a1, t6
                  andi         a6, gp, 589
                  ori          s4, a3, 1016
                  add          t2, t3, t3
1856:             sra          a0, ra, a7
1857:             sra          t5, s11, s5
                  sltu         s0, t6, t2
                  slt          zero, s10, tp
                  srli         a7, t4, 4
                  beq          a7, s7, 1870f
1862:             and          s10, ra, t2
                  slt          tp, s2, s2
                  srli         sp, s8, 8
                  addi         a4, s6, -1142
                  srli         a6, s1, 17
                  xori         ra, a7, -1268
                  slli         s1, a4, 10
                  bltu         s2, t0, 1870f
1870:             sll          a1, a4, s1
                  lw           t1, 4(s8)
                  xori         a6, t4, -611
                  addi         s8, s8, 60
                  xor          a7, a2, a3
                  srl          t0, s8, a3
2696:             addi x17, x6, 0
2696:             jalr x17, x17, 0
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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 0x1f
                  beqz x22, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  addi x24, x24, -128
                  sw  x1, 4(x24)
                  sw  x2, 8(x24)
                  sw  x3, 12(x24)
                  sw  x4, 16(x24)
                  sw  x5, 20(x24)
                  sw  x6, 24(x24)
                  sw  x7, 28(x24)
                  sw  x8, 32(x24)
                  sw  x9, 36(x24)
                  sw  x10, 40(x24)
                  sw  x11, 44(x24)
                  sw  x12, 48(x24)
                  sw  x13, 52(x24)
                  sw  x14, 56(x24)
                  sw  x15, 60(x24)
                  sw  x16, 64(x24)
                  sw  x17, 68(x24)
                  sw  x18, 72(x24)
                  sw  x19, 76(x24)
                  sw  x20, 80(x24)
                  sw  x21, 84(x24)
                  sw  x22, 88(x24)
                  sw  x23, 92(x24)
                  sw  x24, 96(x24)
                  sw  x25, 100(x24)
                  sw  x26, 104(x24)
                  sw  x27, 108(x24)
                  sw  x28, 112(x24)
                  sw  x29, 116(x24)
                  sw  x30, 120(x24)
                  sw  x31, 124(x24)
                  add x29, x24, zero
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x22, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x22, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x22, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x22, x20, ecall_handler
                  li x20, 0x1
                  beq x22, x20, instr_fault_handler
                  li x20, 0x5
                  beq x22, x20, load_fault_handler
                  li x20, 0x7
                  beq x22, x20, store_fault_handler
                  li x20, 0xc
                  beq x22, x20, pt_fault_handler
                  li x20, 0xd
                  beq x22, x20, pt_fault_handler
                  li x20, 0xf
                  beq x22, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x24, x29, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

load_fault_handler:
                  add x24, x29, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

store_fault_handler:
                  add x24, x29, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x24, x29, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x24, x29, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x24, x29, zero
                  lw  x1, 4(x24)
                  lw  x2, 8(x24)
                  lw  x3, 12(x24)
                  lw  x4, 16(x24)
                  lw  x5, 20(x24)
                  lw  x6, 24(x24)
                  lw  x7, 28(x24)
                  lw  x8, 32(x24)
                  lw  x9, 36(x24)
                  lw  x10, 40(x24)
                  lw  x11, 44(x24)
                  lw  x12, 48(x24)
                  lw  x13, 52(x24)
                  lw  x14, 56(x24)
                  lw  x15, 60(x24)
                  lw  x16, 64(x24)
                  lw  x17, 68(x24)
                  lw  x18, 72(x24)
                  lw  x19, 76(x24)
                  lw  x20, 80(x24)
                  lw  x21, 84(x24)
                  lw  x22, 88(x24)
                  lw  x23, 92(x24)
                  lw  x24, 96(x24)
                  lw  x25, 100(x24)
                  lw  x26, 104(x24)
                  lw  x27, 108(x24)
                  lw  x28, 112(x24)
                  lw  x29, 116(x24)
                  lw  x30, 120(x24)
                  lw  x31, 124(x24)
                  addi x24, x24, 128
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
