.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x31, h0_start
jalr x0, x31, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xf19125b0
                  li x2, 0xf1db7ec9
                  li x3, 0x0
                  li x4, 0xf3fee28d
                  li x5, 0x25975d4
                  li x7, 0x0
                  li x8, 0xe
                  li x9, 0xf0e5c27f
                  li x10, 0x737542
                  li x11, 0x2
                  li x12, 0xfa8cd304
                  li x13, 0x80000000
                  li x14, 0xa
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0xf
                  li x19, 0x4
                  li x20, 0xe
                  li x21, 0xf8d81d6a
                  li x22, 0x80000000
                  li x23, 0xd2a0411d
                  li x24, 0xecb31aee
                  li x25, 0x3
                  li x27, 0x1
                  li x28, 0x9
                  li x29, 0x80000000
                  li x30, 0xd
                  li x31, 0x0
                  la x6, user_stack_end
main:             addi         s0, zero, 0 #init loop 1 counter
                  and          zero, s5, sp
                  slt          s2, s5, t0
                  slt          zero, s5, a1
                  ori          a4, t1, 2010
                  addi         t0, zero, 14 #init loop 1 limit
main_4_1_t:       slt          s8, s8, tp
                  sltu         t3, s5, t3
                  xor          s4, t1, sp
                  slt          s6, a5, t6
                  xori         s4, a0, 1432
                  addi         s0, s0, 2 #update loop 1 counter
                  add          s8, t1, s8
                  addi         s11, zero, 9 #init loop 0 counter
                  sltu         s2, sp, a2
                  slti         gp, s4, -1068
                  addi         a6, zero, -10 #init loop 0 limit
                  slli         s5, s8, 24
                  and          t3, t6, a1
                  xor          s1, t3, sp
                  xor          a7, t0, t6
                  addi         a5, tp, 925
                  and          gp, s4, s8
                  nop
main_4_0_t:       sltu         a2, t5, t3
                  auipc        a0, 645503
                  add          a4, a1, t3
                  xori         s1, s1, -1762
                  xor          s7, t5, a2
                  addi         s11, s11, -8 #update loop 0 counter
                  andi         t2, s8, 356
                  bge          s11, a6, main_4_0_t #branch for loop 0
                  beq          s0, t0, main_4_1_t #branch for loop 1
                  addi         zero, s9, -351
                  addi         s2, zero, -1 #init loop 1 counter
                  addi         s5, zero, -19 #init loop 1 limit
main_12_1_t:      add          s9, ra, a3
                  add          a6, t2, a7
                  add          s1, s6, ra
                  addi         s2, s2, -3 #update loop 1 counter
                  srli         a3, tp, 20
                  addi         a2, zero, 9 #init loop 0 counter
                  srli         a0, a6, 4
                  addi         s6, t2, 1005
                  addi         s0, zero, 15 #init loop 0 limit
main_12_0_t:      andi         ra, a4, -1888
                  addi         a2, a2, 6 #update loop 0 counter
                  or           a6, a0, s6
                  blt          a2, s0, main_12_0_t #branch for loop 0
                  andi         s3, gp, -1762
                  bne          s2, s5, main_12_1_t #branch for loop 1
                  nop
                  addi         a4, zero, 8 #init loop 1 counter
                  sub          s9, t2, t6
                  sltu         s6, a7, a5
                  add          s6, s11, a5
                  or           sp, t3, a1
                  andi         a6, tp, -141
                  sltiu        tp, tp, -1277
                  sltu         s11, t0, s2
                  sub          s9, s4, a0
                  addi         a2, zero, 1 #init loop 1 limit
                  or           sp, s6, a5
main_10_1_t:      sub          s3, gp, s1
                  addi         a4, a4, -7 #update loop 1 counter
                  sltu         a1, s7, a2
                  addi         s4, zero, -10 #init loop 0 counter
                  add          gp, s4, a5
                  addi         s5, zero, 9 #init loop 0 limit
                  sra          t4, t4, t1
                  slti         t4, tp, -410
main_10_0_t:      auipc        ra, 309524
                  addi         s4, s4, 9 #update loop 0 counter
                  blt          s4, s5, main_10_0_t #branch for loop 0
                  lui          t0, 610586
                  xori         t3, s3, 280
                  bne          a4, a2, main_10_1_t #branch for loop 1
                  srai         s2, a4, 3
                  addi         a6, zero, 3 #init loop 0 counter
                  xor          a5, tp, s10
                  sltu         t4, gp, s4
                  addi         s6, zero, -15 #init loop 0 limit
                  and          s0, s2, t6
                  lui          tp, 863669
                  sltiu        ra, sp, 1016
                  or           s3, t0, a4
                  slli         t3, a1, 28
main_2_0_t:       ori          s5, zero, 320
                  xori         t3, s4, -258
                  sltu         s8, s10, tp
                  lui          t2, 635508
                  slt          a2, s6, t0
                  sltiu        a3, t4, -1641
                  srai         t5, s2, 2
                  slti         s11, t5, 1512
                  and          t2, a3, s5
                  addi         a6, a6, -6 #update loop 0 counter
                  srai         sp, t1, 31
                  sra          a1, s5, a0
                  andi         a5, a4, -823
                  or           s11, sp, s3
                  auipc        s7, 234756
                  ori          t4, s1, -1771
                  bge          a6, s6, main_2_0_t #branch for loop 0
                  srai         s5, s5, 25
                  addi         s11, zero, -1 #init loop 0 counter
                  addi         t4, zero, 11 #init loop 0 limit
main_3_0_t:       slt          a4, s2, a5
                  ori          s3, s10, 1936
                  addi         s11, s11, 4 #update loop 0 counter
                  bne          s11, t4, main_3_0_t #branch for loop 0
                  add          s6, s3, s4
                  addi         a5, zero, -7 #init loop 1 counter
                  auipc        s8, 676766
                  slti         s7, tp, -1585
                  addi         a1, t3, -1052
                  slt          zero, s10, s11
                  addi         a6, zero, -17 #init loop 1 limit
                  nop
                  slti         s11, sp, 15
main_11_1_t:      ori          s4, s7, -1836
                  addi         a5, a5, -10 #update loop 1 counter
                  sra          t2, sp, s9
                  addi         tp, zero, 6 #init loop 0 counter
                  sll          s6, s0, t4
                  addi         s3, zero, 2 #init loop 0 limit
                  sll          s2, s10, s5
                  slli         s5, a3, 30
main_11_0_t:      slt          t3, s7, s3
                  slt          s11, a5, a4
                  srl          s6, t4, sp
                  addi         tp, tp, -4 #update loop 0 counter
                  sub          ra, sp, t4
                  beq          tp, s3, main_11_0_t #branch for loop 0
                  sll          a7, a2, t6
                  beq          a5, a6, main_11_1_t #branch for loop 1
                  sltiu        s6, s7, -1646
                  addi         a3, zero, 5 #init loop 0 counter
                  addi         a2, zero, 4 #init loop 0 limit
main_8_0_t:       lui          a4, 357358
                  sll          a0, s2, s6
                  addi         a3, a3, -2 #update loop 0 counter
                  slt          s8, t4, a4
                  bgeu         a3, a2, main_8_0_t #branch for loop 0
                  srai         s11, s9, 23
                  addi         a6, zero, 7 #init loop 0 counter
                  sltu         t3, sp, t1
                  xori         gp, s6, -473
                  slt          s1, a2, a7
                  add          s1, t0, a1
                  addi         t4, zero, 9 #init loop 0 limit
                  slt          a5, s0, a5
main_9_0_t:       sub          s2, t4, s10
                  add          gp, s9, t1
                  addi         a6, a6, 8 #update loop 0 counter
                  blt          a6, t4, main_9_0_t #branch for loop 0
                  sll          a5, sp, a4
                  addi         s2, zero, -1 #init loop 1 counter
                  slli         ra, ra, 30
                  sub          a5, s6, t5
                  sltu         zero, s11, a6
                  slt          s0, s6, s9
                  srli         s6, s0, 19
                  srli         s5, s5, 20
                  slli         a0, s10, 3
                  sltu         a7, s0, s4
                  addi         a4, zero, -11 #init loop 1 limit
                  auipc        gp, 630705
                  or           a5, t4, ra
main_1_1_t:       xori         tp, t1, -1495
                  and          t0, s7, a2
                  sra          ra, t1, t6
                  addi         s2, s2, -10 #update loop 1 counter
                  addi         s11, zero, -9 #init loop 0 counter
                  andi         a0, t4, -2021
                  and          s6, t6, t5
                  addi         a1, zero, 13 #init loop 0 limit
                  slti         s8, t4, 1353
                  slt          a2, a3, tp
main_1_0_t:       lui          t4, 622424
                  addi         s8, s2, 1428
                  or           s8, s7, s10
                  sub          zero, s5, a5
                  addi         s11, s11, 4 #update loop 0 counter
                  ori          a7, a5, 1089
                  slti         gp, s0, 560
                  blt          s11, a1, main_1_0_t #branch for loop 0
                  slli         s5, sp, 8
                  bne          s2, a4, main_1_1_t #branch for loop 1
                  lui          sp, 393452
                  addi         s3, zero, 9 #init loop 0 counter
                  sltu         a3, tp, gp
                  or           tp, t4, a7
                  nop
                  sltu         t3, t2, a3
                  addi         a4, zero, 10 #init loop 0 limit
                  add          s4, a1, s0
                  slli         a5, a2, 27
main_5_0_t:       ori          tp, ra, 820
                  nop
                  and          ra, tp, a4
                  addi         s3, s3, 2 #update loop 0 counter
                  ori          s7, gp, -677
                  bltu         s3, a4, main_5_0_t #branch for loop 0
                  or           t5, sp, s3
                  addi         s5, zero, 7 #init loop 0 counter
                  slt          s8, a7, tp
                  sra          a3, zero, t5
                  addi         s1, zero, -10 #init loop 0 limit
                  xor          a5, s5, a3
                  srai         a4, s11, 25
                  andi         a7, s6, -1234
                  add          a3, a7, sp
                  srai         tp, a1, 22
main_14_0_t:      sub          t3, ra, zero
                  lui          t0, 253831
                  addi         s5, s5, -4 #update loop 0 counter
                  sltiu        s9, s0, 764
                  nop
                  sll          a1, s11, t1
                  srli         a1, s4, 28
                  auipc        a3, 861420
                  ori          s7, t3, -1782
                  bge          s5, s1, main_14_0_t #branch for loop 0
                  sra          s0, t2, s10
                  addi         s8, zero, 3 #init loop 0 counter
                  addi         s5, zero, -17 #init loop 0 limit
                  slli         a6, s5, 18
main_7_0_t:       add          sp, t1, a7
                  addi         s8, s8, -9 #update loop 0 counter
                  nop
                  bge          s8, s5, main_7_0_t #branch for loop 0
                  andi         s1, tp, -1657
                  addi         s0, zero, -3 #init loop 0 counter
                  ori          a0, t4, 931
                  xor          a5, t3, a5
                  xor          zero, a3, a3
                  or           tp, a5, a6
                  sltiu        a2, s8, 510
                  slti         t3, t6, -1400
                  addi         t4, zero, 16 #init loop 0 limit
main_6_0_t:       slt          s6, t3, s9
                  auipc        ra, 1011115
                  addi         zero, t1, 187
                  addi         s0, s0, 5 #update loop 0 counter
                  nop
                  srl          s6, a6, s10
                  sra          s7, t2, t2
                  slli         s1, s1, 13
                  sra          t3, t3, s11
                  blt          s0, t4, main_6_0_t #branch for loop 0
                  slti         a6, s9, 1745
                  addi         tp, zero, -3 #init loop 0 counter
                  nop
                  sltu         s11, s10, t0
                  xor          s9, a1, s10
                  andi         t4, t1, 1591
                  add          a1, s4, t0
                  ori          a1, a7, -865
                  sltu         s9, ra, s4
                  srli         a6, tp, 3
                  addi         a7, zero, -13 #init loop 0 limit
                  lui          ra, 397194
                  addi         ra, t1, 1470
                  or           a5, s7, t6
                  sltu         a3, a1, a0
main_13_0_t:      ori          a6, tp, 893
                  srl          s2, a2, a0
                  andi         s8, t3, -1663
                  addi         tp, tp, -10 #update loop 0 counter
                  sub          t2, t5, t2
                  nop
                  lui          t2, 534937
                  srai         ra, a6, 12
                  srl          gp, a1, t4
                  sub          s9, s7, s0
                  bne          tp, a7, main_13_0_t #branch for loop 0
                  or           s11, t4, a1
                  srai         a5, tp, 23
                  nop
                  bltu         a2, a7, 17f
                  xor          a1, a4, s1
                  xori         s3, a6, 1988
                  sra          s11, a1, tp
                  beq          s2, a5, 20f
                  xori         zero, s4, -1253
                  srli         a5, a4, 11
                  bne          a2, a5, 23f
                  addi         a5, t4, -1052
                  sll          a2, s4, s0
                  bgeu         a0, s8, 24f
                  beq          zero, a0, 32f
                  nop
                  srai         s11, t4, 30
                  sub          s7, a5, sp
17:               add          s8, s4, s11
                  xori         s3, a6, -1115
                  bltu         s7, t1, 34f
20:               or           s0, s3, s0
                  or           a0, t6, a0
                  sra          s6, s4, t5
23:               slli         s1, s10, 13
24:               lui          ra, 797891
                  lui          a7, 339648
                  sra          s9, zero, t3
                  addi         t3, s2, -1869
                  srl          s1, a2, t2
                  bge          t3, zero, 46f
                  slti         ra, sp, -1375
                  addi         s0, s8, -759
32:               sltu         tp, a3, a3
                  bne          s5, t1, 38f
34:               bltu         s7, gp, 50f
                  bgeu         t1, s0, 54f
                  andi         tp, a2, 1404
                  sub          a6, sp, a6
38:               and          s0, t0, s7
                  slt          s2, a0, zero
                  addi         t0, t6, -1518
                  auipc        a7, 176448
                  and          s1, a0, s0
                  auipc        ra, 181767
                  sltiu        s11, s8, -2009
                  bltu         a4, gp, 53f
46:               sub          a3, a5, s3
                  srai         s6, a1, 25
                  nop
                  slt          s9, t4, s8
50:               srai         gp, s2, 9
                  nop
                  add          t5, zero, t3
53:               blt          a2, s3, 59f
54:               sltiu        s2, s6, -1911
                  beq          s11, zero, 70f
                  lui          t3, 233958
                  sra          a2, a7, s1
                  nop
59:               srli         zero, s10, 16
                  sll          s0, s0, s11
                  srai         s2, t2, 27
                  bge          t2, t4, 79f
                  xor          s7, gp, s8
                  slli         a0, ra, 30
                  sub          s7, t6, t1
                  slti         s0, tp, 192
                  beq          a6, t5, 74f
                  bltu         s2, s6, 70f
                  sll          gp, t4, s10
70:               bge          t6, a7, 80f
                  blt          a4, s8, 85f
                  slti         t5, s4, 1185
                  addi         a3, a4, 891
74:               or           s8, s5, sp
                  bgeu         a2, a2, 88f
                  lui          a1, 691757
                  sll          s1, sp, sp
                  slt          gp, ra, t2
79:               bge          gp, tp, 91f
80:               and          s1, a2, zero
                  bge          a3, t4, 98f
                  xor          a0, t4, a0
                  slli         s5, t4, 15
                  srli         a5, t3, 2
85:               bne          s0, a3, 90f
                  andi         a4, a3, -1588
                  sltu         s5, s1, s8
88:               ori          t3, t1, 431
                  srl          s8, s8, a5
90:               sltu         ra, s3, t4
91:               slt          s11, t1, s10
                  sll          t4, a6, zero
                  sra          a2, a6, s1
                  xori         a1, s3, 1053
                  sltu         s2, s8, s6
                  slli         s1, s4, 14
                  sra          t3, sp, t5
98:               andi         a5, a7, 1914
                  sltiu        s7, s7, 671
                  slti         a3, s4, -204
                  nop
                  andi         s6, s11, -251
                  srai         t2, a6, 8
                  slt          s11, sp, a4
                  srli         tp, t2, 28
                  auipc        a4, 521378
                  bgeu         s11, a0, 125f
                  bne          a3, a0, 123f
                  add          a4, t5, s3
                  blt          s2, a5, 123f
                  sub          s6, s5, s0
                  bge          tp, zero, 113f
113:              and          a4, a5, s7
                  srli         t5, tp, 20
                  lui          a2, 470707
                  sltu         s2, a1, t5
                  xori         t0, t4, -1016
                  and          a4, t6, s6
                  srl          s11, s8, s4
                  bge          t1, s9, 137f
                  lui          s7, 584544
                  sra          s6, s1, s11
123:              sll          a2, a6, t6
                  srai         a6, zero, 30
125:              sll          a5, a4, s10
                  addi         t2, zero, 8 #init loop 1 counter
                  addi         t5, zero, 7 #init loop 1 limit
main_0_1_t:       lui          tp, 342185
                  or           s0, a7, s5
                  addi         t2, t2, -6 #update loop 1 counter
                  sub          a7, a2, s0
                  srli         s9, t4, 3
                  addi         s2, zero, 5 #init loop 0 counter
                  addi         a2, zero, 3 #init loop 0 limit
                  xori         t0, a3, 656
main_0_0_t:       sub          s4, t0, s0
                  addi         s2, s2, -2 #update loop 0 counter
                  srli         a5, t4, 12
                  bgeu         s2, a2, main_0_0_t #branch for loop 0
                  bgeu         t2, t5, main_0_1_t #branch for loop 1
                  srli         a1, s7, 28
                  add          s1, a4, s11
                  xori         s9, a5, -1054
                  beq          s9, s8, 135f
                  or           ra, s5, a0
                  srli         a3, tp, 6
                  srl          a2, s5, s3
                  addi         tp, t5, 1761
                  auipc        t2, 159601
                  lui          a5, 544267
135:              blt          a2, t3, 148f
                  slti         s8, t1, -1627
137:              slti         s7, s4, 866
                  srl          t3, sp, a2
                  slt          a2, s11, a2
                  xor          a5, tp, s3
                  nop
                  and          a7, s4, a0
                  bltu         t4, s7, 162f
                  ori          s3, t0, -1462
                  or           a3, a2, s6
                  srai         a0, a1, 19
                  auipc        a2, 48957
148:              srai         a2, t4, 20
                  xori         s4, s5, 1545
                  slli         t4, s3, 15
                  sll          ra, zero, s4
                  beq          t4, ra, 171f
                  bne          a7, t1, 168f
                  bge          t5, s8, 166f
                  xori         a3, t3, 414
                  andi         t4, s11, -1551
                  ori          a0, t3, -597
                  addi         zero, a1, 665
                  xor          a5, zero, gp
                  sra          t5, s4, a7
                  bgeu         a5, t3, 175f
162:              bge          a1, a3, 175f
                  auipc        s2, 492326
                  nop
                  auipc        t0, 225554
166:              ori          t4, t6, -705
                  srl          t4, t1, a6
168:              sub          t0, zero, gp
                  xori         a7, t5, 2012
                  addi         t5, gp, -1914
171:              add          ra, gp, t4
                  slli         t0, t0, 29
                  blt          s6, t3, 192f
                  sub          s7, t3, s4
175:              sll          a3, s11, a2
                  srl          s7, a1, a6
                  sll          s11, a1, a1
                  srai         a1, s5, 19
                  add          ra, t1, a2
                  bge          t0, s1, 181f
181:              sll          s5, t0, s3
                  srl          t0, a2, a2
                  ori          zero, s6, -1693
                  ori          s2, a2, 1731
                  ori          s0, t0, 1603
                  addi         s3, s11, 686
                  bltu         s6, s8, 204f
                  auipc        a6, 354764
                  sll          tp, s10, s5
                  bne          a5, t3, 192f
                  srl          a0, t5, s1
192:              add          s1, s3, s0
                  andi         s3, s4, 1662
                  or           t4, s11, s10
                  ori          t2, s11, 1326
                  bgeu         t3, t5, 208f
                  andi         a3, s11, -501
                  bltu         zero, gp, 206f
                  srai         s0, s2, 15
                  slt          s8, t6, s2
                  sltiu        s6, ra, -94
                  add          a4, t1, t2
                  or           sp, s2, tp
204:              sltu         s4, a6, a7
                  srai         a0, s8, 1
206:              sra          s2, s0, a0
                  xor          t3, a1, s8
208:              bne          gp, ra, 222f
                  sltiu        t3, t1, 61
                  slt          t2, t2, s3
                  sll          s0, sp, t4
                  andi         s5, t1, -1499
                  andi         a1, ra, 1398
                  or           a4, ra, tp
                  auipc        a5, 393196
                  slli         s5, s11, 9
                  xori         s11, s8, 1736
                  srai         s3, a1, 5
                  srai         zero, s8, 16
                  nop
                  ori          a0, t1, -319
222:              lui          t2, 834715
                  auipc        s7, 1022595
                  srli         sp, zero, 6
                  andi         gp, a1, 1597
                  and          a7, t6, t5
                  add          t2, sp, s9
                  and          a4, s0, t3
                  addi         s6, s5, -761
                  srl          s6, a0, sp
                  srl          a6, s7, a4
                  sub          t0, t6, a0
                  slt          s2, s5, s3
                  sltu         gp, t0, t3
                  slti         sp, s11, -1951
                  slt          a4, sp, a6
                  xor          s5, s4, sp
                  nop
                  xori         t4, s5, 1109
                  or           s3, s2, a3
                  andi         a7, t1, 487
                  bne          ra, a5, 247f
                  srli         a6, s7, 27
                  bltu         s4, s6, 259f
                  blt          t1, t3, 258f
                  and          a6, t4, s4
247:              slt          a6, s11, s11
                  sub          a7, a0, a4
                  srli         gp, t2, 6
                  auipc        a3, 878919
                  bne          t5, a2, 261f
                  beq          a7, t3, 259f
                  add          s5, s8, zero
                  sll          a7, s6, s3
                  sltiu        a2, s0, -1510
                  sub          tp, s4, gp
                  srli         s5, t5, 6
258:              lui          gp, 996843
259:              sub          a5, s3, s6
                  blt          s1, t2, 277f
261:              sltu         gp, a2, a7
                  ori          tp, a7, 613
                  srai         s3, zero, 15
                  sll          s6, s5, s0
                  srli         a2, t5, 1
                  srl          ra, gp, s8
                  or           s2, t1, a7
                  srl          ra, s5, a7
                  and          a3, a5, s1
                  slt          s3, zero, s5
                  srai         s8, s2, 14
                  bgeu         ra, s10, 285f
                  sltu         gp, t1, t5
                  bgeu         t6, t4, 292f
                  xor          s9, a3, s10
                  slli         s0, s8, 0
277:              srai         t3, a2, 15
                  sub          a2, a2, a1
                  srli         a4, sp, 11
                  xor          t3, tp, s1
                  slti         a4, a6, 951
                  slt          a5, a1, ra
                  bgeu         a7, t1, 299f
                  or           s3, s4, s8
285:              xori         s2, zero, -1222
                  and          s1, zero, s7
                  bne          sp, t0, 306f
                  sll          a7, a5, t5
                  auipc        tp, 721335
                  xor          s0, a7, a7
                  slt          s8, s10, t0
292:              srli         s2, t0, 10
                  bne          s3, t0, 310f
                  beq          zero, t5, 300f
                  bge          t6, s10, 302f
                  blt          a4, a0, 313f
                  lui          a1, 754508
                  bne          t1, s11, 313f
299:              sll          a5, t3, s10
300:              andi         zero, s4, 1369
                  add          a2, t3, s0
302:              ori          gp, s8, 2030
                  sltu         zero, a7, a6
                  bgeu         s3, s3, 309f
                  andi         a2, s10, -46
306:              sltu         zero, t5, a6
                  sub          zero, s5, t5
                  slti         zero, zero, 1820
309:              and          s1, s4, gp
310:              addi         t4, s7, -4
                  bltu         a2, t3, 325f
                  or           sp, t0, a4
313:              bne          a6, s3, 328f
                  sltu         t0, s0, s4
                  beq          s9, tp, 327f
                  addi         s6, a0, 2036
                  lui          sp, 314381
                  sub          zero, s5, a4
                  ori          s0, s1, -1020
                  slt          a3, s11, a0
                  lui          s5, 876059
                  xori         s1, s8, -1913
                  beq          gp, s10, 330f
                  nop
325:              bne          tp, s6, 338f
                  bltu         s0, s9, 343f
327:              and          s6, t0, t1
328:              beq          tp, s8, 345f
                  sra          a0, t5, a7
330:              sll          a2, s9, t3
                  sra          t4, a3, zero
                  srai         a4, s2, 26
                  sll          a4, sp, t2
                  bge          a3, s4, 339f
                  slt          a1, a1, tp
                  sra          s0, gp, s10
                  bgeu         s6, a6, 342f
338:              or           s1, a7, t3
339:              sltiu        a6, ra, -133
                  sll          sp, a5, a3
                  bltu         sp, a2, 360f
342:              xor          sp, s5, a4
343:              slli         zero, a7, 30
                  sltiu        a7, s10, 1397
345:              add          s2, s3, sp
                  slli         s1, t2, 13
                  slti         a6, t6, 184
                  sra          tp, a6, a3
                  beq          zero, s10, 362f
                  sltu         s2, t6, a3
                  beq          tp, t0, 365f
                  and          a3, sp, s0
                  add          a6, s2, a3
                  nop
                  bltu         sp, zero, 368f
                  sll          s2, a0, s0
                  or           ra, a1, s9
                  nop
                  sll          a4, a3, t5
360:              beq          sp, t0, 361f
361:              slli         s0, sp, 1
362:              sra          a1, s3, sp
                  slt          t0, s11, a0
                  and          t0, t0, s4
365:              beq          s10, t4, 379f
                  auipc        s0, 221525
                  lui          a5, 459117
368:              sll          gp, t4, s4
                  andi         s0, s3, 915
                  nop
                  bne          a5, s6, 383f
                  or           s2, t0, s11
                  slt          s6, s8, a7
                  beq          s10, s0, 384f
                  sra          s9, s7, s1
                  sltiu        s2, a3, -1025
                  sltu         gp, s7, s3
                  srai         s7, ra, 17
379:              srl          s6, s9, a4
                  bge          s10, s5, 395f
                  beq          s9, t2, 399f
                  srl          sp, t1, t4
383:              sltu         t5, s4, ra
384:              sra          a0, sp, s6
                  bgeu         s1, a2, 400f
                  and          tp, s8, s7
                  andi         a2, s11, -1905
                  add          a1, ra, s6
                  sub          t3, sp, ra
                  beq          t2, a2, 409f
                  sub          s4, zero, s11
                  xori         a2, s9, -483
                  slt          a0, s6, s8
                  or           zero, t6, a5
395:              slli         gp, t5, 23
                  srli         tp, zero, 0
                  slli         a5, t2, 27
                  andi         a0, t0, 461
399:              sub          s6, t0, a4
400:              srl          t3, a5, s10
                  auipc        t5, 948566
                  nop
                  slt          gp, t5, t2
                  lui          t3, 585892
                  bgeu         a0, t0, 421f
                  bge          a7, a2, 423f
                  or           s4, a1, s10
                  sltiu        tp, a2, 944
409:              bge          s7, ra, 417f
                  bgeu         a4, a7, 424f
                  xori         t5, a6, -1515
                  slli         a5, s9, 1
                  auipc        t5, 388792
                  auipc        a7, 608077
                  bltu         a4, a4, 430f
                  srai         zero, a6, 15
417:              sll          a6, t5, s6
                  srai         t0, s7, 4
                  bne          s9, gp, 434f
                  and          a4, t5, t4
421:              srl          tp, sp, a3
                  blt          a1, t1, 429f
423:              sra          s4, t4, zero
424:              srli         sp, gp, 13
                  bne          a3, s6, 444f
                  bgeu         a5, a6, 428f
                  and          s1, gp, a6
428:              nop
429:              sll          s4, s0, s10
430:              srl          t2, ra, s11
                  srli         a4, tp, 5
                  sra          a3, a6, t1
                  srai         a7, s11, 30
434:              auipc        tp, 670655
                  slt          s3, t4, a2
                  lui          a1, 966002
                  nop
                  sub          a5, zero, s7
                  beq          a6, s11, 456f
                  slt          t4, s1, s3
                  addi         a1, t1, -894
                  sra          a2, s1, a7
                  sra          a6, a3, gp
444:              slli         a5, s11, 22
                  beq          a3, sp, 451f
                  slti         a5, s8, -1150
                  sub          a4, s10, t2
                  sra          t4, a0, t2
                  bltu         s1, s8, 456f
                  beq          a2, t0, 465f
451:              slli         gp, s10, 2
                  add          s0, sp, a1
                  bge          t0, s11, 468f
                  bge          gp, s5, 468f
                  sll          a3, t1, a3
456:              srl          s7, a0, a2
                  nop
                  lui          s6, 328183
                  sub          a2, s9, t5
                  srl          a0, gp, s2
                  bne          a5, t0, 467f
                  lui          s9, 527775
                  andi         t4, a7, -1692
                  or           a6, a6, a6
465:              slt          a4, t2, tp
                  bgeu         s11, s5, 485f
467:              sub          a6, t3, s2
468:              srai         s7, a4, 6
                  or           tp, zero, s9
                  or           sp, a7, s6
                  nop
                  auipc        t0, 657285
                  or           t4, s5, t2
                  bgeu         s6, t5, 476f
                  sll          s4, a2, t2
476:              lui          s5, 185787
                  and          t4, s10, t2
                  bgeu         ra, ra, 495f
                  bltu         s5, t2, 498f
                  and          zero, s5, tp
                  sub          zero, s5, s10
                  ori          s0, s0, -1570
                  sra          s7, t5, t1
                  srai         t4, t1, 22
485:              ori          s8, a5, -1667
                  sll          zero, gp, t3
                  srai         a2, tp, 22
                  srli         a1, t2, 30
                  sra          s3, a1, a1
                  sub          a2, a6, s5
                  nop
                  blt          t4, t1, 509f
                  slti         s7, a7, 1084
                  xori         s9, a2, 1299
495:              andi         a0, a4, -1143
                  slli         s8, a7, 10
                  srl          s11, a6, s1
498:              sra          s9, s11, a7
                  bgeu         s4, s3, 500f
500:              sll          a6, s6, s3
                  slti         s6, s4, 2014
                  slli         t4, a1, 24
                  auipc        t5, 1005306
                  srli         t4, s0, 27
                  slt          s1, a2, s5
                  addi         s7, s9, 1843
                  bne          s10, s3, 520f
                  sra          gp, a6, a7
509:              add          a5, s10, sp
                  sltiu        s2, s4, -1439
                  and          t0, t1, s7
                  bne          s11, a4, 524f
                  lui          t3, 92299
                  blt          ra, s8, 529f
                  or           a0, t4, s6
                  andi         a7, t5, 273
                  or           t5, t3, s7
                  add          a5, s3, s9
                  sra          a2, t0, tp
520:              lui          s1, 488748
                  slli         t2, s0, 26
                  bltu         a4, zero, 539f
                  bgeu         s3, s0, 542f
524:              bne          a7, s1, 529f
                  sltu         s11, s1, s4
                  ori          s5, tp, -1828
                  xori         a4, zero, -1738
                  bne          gp, sp, 538f
529:              nop
                  slli         a3, a1, 26
                  bgeu         sp, a0, 543f
                  bge          s6, t3, 539f
                  add          zero, t6, a7
                  sub          s11, zero, t6
                  xori         s7, s1, 2020
                  blt          t4, s3, 550f
                  sra          s9, a4, a2
538:              bltu         a4, a1, 555f
539:              sltu         a5, a0, a0
                  lui          a4, 69165
                  slt          s11, s4, sp
542:              bne          s11, a2, 558f
543:              sltu         t0, s5, s1
                  srl          s7, s9, a7
                  and          s5, s5, a4
                  sra          s6, t0, t1
                  ori          a4, s1, 1424
                  or           gp, a6, t2
                  ori          a2, t2, -1486
550:              sub          t3, s8, s6
                  la           a3, sub_1
                  xor          sp, a5, s9
                  addi         a3, a3, 962
                  sltiu        t5, a7, 220
                  srl          t0, ra, s4
                  xori         a0, t4, -1918
                  bgeu         s5, s2, main_j1 #branch to jump instr
                  or           t0, s0, t4
                  sub          a1, s7, a2
                  and          s4, a7, s6
                  srl          s9, a2, s11
                  andi         gp, a6, 25
main_j1:          jalr         ra, a3, -961 #jump main -> sub_1
                  srl          s0, t1, s3
                  slti         ra, s4, -1177
                  lui          t2, 1041077
                  sll          zero, s11, ra
555:              auipc        a1, 621897
                  sra          t3, t4, s1
                  beq          t0, s4, 571f
558:              xori         t0, s5, -63
                  sll          zero, gp, s1
                  bne          s7, a7, 575f
                  bge          t5, t1, 574f
                  slt          t2, a0, t1
                  xor          ra, a1, s2
                  srl          a7, s2, s4
                  sltiu        tp, t4, -624
                  xori         s8, t5, 304
                  sltu         a0, t6, t0
                  lui          a6, 628386
                  slti         ra, s3, 572
                  xor          a7, s4, s0
571:              addi         s11, s8, 1253
                  add          a7, t5, s10
                  auipc        t4, 411060
574:              auipc        t3, 992608
575:              slli         s5, a6, 9
                  sub          a6, a3, a7
                  auipc        s1, 556595
                  xori         s11, a5, 1273
                  lui          s6, 144088
                  nop
                  addi         gp, s2, 1932
                  blt          s4, tp, 590f
                  ori          a1, s4, 97
                  auipc        a7, 141895
                  nop
                  slt          s5, ra, s6
                  auipc        a1, 133290
                  blt          a0, zero, 593f
                  xor          s3, a4, a2
590:              slli         t2, a2, 21
                  bne          t2, a2, 609f
                  sltu         s3, ra, s3
593:              bgeu         t0, s11, 606f
                  bne          a2, s5, 606f
                  slli         t3, ra, 2
                  and          s0, tp, s5
                  sll          t0, tp, s6
                  bgeu         t2, t6, 615f
                  slt          sp, a3, s10
                  nop
                  bgeu         s4, a4, 620f
                  srl          s0, a2, a6
                  slti         zero, s1, 341
                  ori          a2, s8, 516
                  addi         s2, s10, 1170
606:              or           t3, t5, s5
                  or           a6, s3, t1
                  xori         a5, t6, 1371
609:              slti         s0, s10, -1539
                  add          t4, tp, zero
                  blt          t5, a7, 630f
                  bltu         s11, s9, 617f
                  sltiu        zero, s4, 1219
                  sll          a2, a5, t6
615:              nop
                  beq          t6, s9, 632f
617:              bne          t2, a3, 624f
                  sub          t2, t5, t3
                  beq          t4, t4, 620f
620:              blt          s10, s3, 628f
                  sltiu        t4, a2, 591
                  or           s9, a6, tp
                  addi         s3, s7, -1677
624:              nop
                  andi         a5, zero, 138
                  srai         t2, s3, 22
                  sltiu        tp, s0, -772
628:              slti         s8, a4, -2025
                  xor          a4, a0, s2
630:              xor          gp, s10, t2
                  slti         s7, s7, -140
632:              lui          a1, 112426
                  sll          t0, a0, t4
                  sub          a5, t2, s3
                  sltu         a4, s5, s8
                  sltiu        s5, t1, 335
                  addi         ra, s7, -930
                  srli         s8, s11, 2
                  sltiu        t4, t4, -1300
                  bne          s8, sp, 655f
                  blt          s2, t2, 658f
                  slli         s5, s6, 7
                  sll          s1, ra, s6
                  sltu         s8, s5, s1
                  slt          a7, a5, ra
                  slti         gp, a4, -1161
                  or           s0, a0, tp
                  beq          s3, s6, 661f
                  slli         a2, s11, 29
                  sub          sp, s4, a1
                  srl          a6, tp, s10
                  ori          zero, s5, -811
                  srli         s3, t3, 23
                  sub          zero, s6, t3
655:              addi         gp, s9, 940
                  add          tp, a2, a1
                  blt          s4, a4, 662f
658:              and          a6, a1, s2
                  srl          s2, s2, a5
                  xor          s11, ra, a1
661:              bne          ra, s4, 679f
662:              andi         t0, s3, -1614
                  or           t0, s10, a1
                  nop
                  lui          a6, 162320
                  xor          s2, gp, ra
                  andi         s0, s2, 1485
                  auipc        tp, 265839
                  slt          s5, s6, ra
                  or           a4, t5, a1
                  add          a7, t5, s0
                  bgeu         a1, t0, 686f
                  bne          s6, s9, 686f
                  bge          a1, gp, 689f
                  sll          ra, s2, a7
                  auipc        a1, 497099
                  or           s4, a1, t4
                  lui          s1, 43607
679:              slli         t2, a0, 24
                  lui          s7, 1006008
                  or           s5, sp, t4
                  sltu         tp, a6, tp
                  ori          s9, t6, -1236
                  srai         s9, a7, 2
                  sltiu        sp, s10, 574
686:              srli         s8, ra, 21
                  srai         s1, s1, 26
                  slt          s7, t0, s8
689:              lui          t2, 371974
                  beq          gp, a3, 709f
                  auipc        s5, 269740
                  slti         s1, s0, -297
                  sra          s2, s9, a3
                  xor          gp, s2, s7
                  bne          a3, s1, 710f
                  and          s9, a6, s9
                  slli         t4, t5, 20
                  lui          s6, 828424
                  bge          s10, t6, 714f
                  bltu         gp, s1, 712f
                  sll          s7, a4, s5
                  slli         s0, a1, 24
                  auipc        a7, 678889
                  bge          s3, t4, 721f
                  nop
                  slti         t3, s6, 1437
                  srl          s11, a7, a3
                  andi         a7, s10, 543
709:              sra          s3, t1, a5
710:              slti         zero, a0, -1529
                  srai         a5, a3, 15
712:              or           s2, a2, ra
                  ori          a2, tp, -272
714:              sltiu        s7, t4, -688
                  srli         s6, s7, 16
                  ori          s11, s2, 367
                  srai         s7, a3, 30
                  auipc        t3, 638278
                  lui          s3, 322333
                  nop
721:              beq          t6, s10, 728f
                  sltu         s2, t0, s1
                  add          t4, t3, s3
                  xor          a2, gp, a7
                  lui          s2, 788904
                  xor          gp, a7, s4
                  sra          a4, a4, tp
728:              or           s5, a1, t2
                  bge          a4, t4, 731f
                  and          ra, t4, t1
731:              sltiu        gp, t1, -1037
                  slt          s4, ra, s7
                  slti         gp, s7, 1426
                  slli         s5, a1, 8
                  bne          s7, a0, 749f
                  srl          ra, s2, s10
                  nop
                  or           s0, tp, s1
                  nop
                  sltu         s4, t3, a2
                  blt          s2, t3, 758f
                  xor          sp, s7, s3
                  beq          a7, a1, 749f
                  or           a4, t6, a7
                  blt          t4, s7, 758f
                  auipc        zero, 796374
                  lui          t5, 690587
                  sub          ra, s3, s7
749:              ori          a6, gp, 1185
                  lui          a3, 861643
                  srai         s9, a2, 13
                  sub          a2, ra, a1
                  sub          a1, a3, a0
                  srai         s3, s11, 31
                  addi         zero, a0, 1349
                  add          sp, s10, s1
                  sltu         a2, a4, s5
758:              addi         s7, s5, -832
                  auipc        tp, 257722
                  slt          s4, t3, tp
                  nop
                  xori         s1, sp, 1072
                  or           s0, t1, s8
                  slli         gp, tp, 27
                  andi         t2, a0, 1107
                  slli         ra, s0, 18
                  nop
                  sra          tp, zero, tp
                  sll          s0, gp, sp
                  andi         t0, a1, -117
                  lui          s0, 756187
                  bne          t4, zero, 779f
                  sltu         s9, a3, a5
                  sll          t0, a0, s8
                  sub          a1, s8, ra
                  bltu         t4, a1, 779f
                  and          t3, s8, a4
                  nop
779:              xor          a5, a6, a3
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slt          gp, a0, s0
                  addi         a1, a3, 1011
                  bge          t5, t2, sub_2_stack_p
                  or           a6, sp, a5
                  srai         s6, a3, 13
                  sra          a5, a0, s4
sub_2_stack_p:    addi         t1, t1, -40
                  sw           ra, 4(t1)
                  slti         s11, a4, -378
                  addi         a3, zero, 9 #init loop 0 counter
                  srai         a4, t4, 7
                  auipc        a6, 915201
                  sltiu        t2, s6, -2018
                  addi         s11, zero, 2 #init loop 0 limit
                  ori          s0, t4, -1962
                  sra          a4, s5, a7
sub_2_9_0_t:      ori          a0, t2, 271
                  srl          t4, t1, a0
                  addi         a3, a3, -9 #update loop 0 counter
                  bge          a3, s11, sub_2_9_0_t #branch for loop 0
                  addi         s1, t5, 531
                  addi         ra, zero, 6 #init loop 1 counter
                  addi         s7, zero, 5 #init loop 1 limit
                  sltu         a6, s3, s11
sub_2_7_1_t:      nop
                  sub          gp, s2, s9
                  addi         ra, ra, -2 #update loop 1 counter
                  addi         t4, a7, -1673
                  auipc        gp, 156969
                  sll          t4, t4, a6
                  srai         a0, t5, 29
                  sub          t4, s4, a3
                  addi         a4, zero, 0 #init loop 0 counter
                  addi         s0, zero, 19 #init loop 0 limit
                  lui          t2, 1029778
                  ori          gp, t6, -1992
sub_2_7_0_t:      andi         zero, s4, 1494
                  ori          t0, s5, -900
                  nop
                  addi         a4, a4, 4 #update loop 0 counter
                  bltu         a4, s0, sub_2_7_0_t #branch for loop 0
                  sra          s11, s8, t0
                  sltiu        s1, zero, 1260
                  sra          s9, t5, a6
                  sra          a0, t3, ra
                  sltu         t0, s11, a6
                  lui          gp, 516844
                  bgeu         ra, s7, sub_2_7_1_t #branch for loop 1
                  srli         s4, t3, 21
                  addi         tp, zero, 10 #init loop 0 counter
                  srli         sp, t3, 11
                  srli         t0, sp, 13
                  addi         s11, zero, 10 #init loop 0 limit
                  srai         sp, t0, 8
                  sub          s6, s9, t3
                  slti         t2, s8, -1377
                  slli         ra, sp, 3
                  nop
                  add          gp, t3, a5
sub_2_15_0_t:     lui          sp, 734142
                  sltu         t4, tp, s9
                  addi         tp, tp, -7 #update loop 0 counter
                  nop
                  srli         a2, a5, 30
                  xori         s9, t6, -1235
                  and          t3, a4, s5
                  andi         s0, s7, 623
                  xori         t2, t6, 443
                  or           s0, t5, ra
                  bgeu         tp, s11, sub_2_15_0_t #branch for loop 0
                  slt          s5, s4, t1
                  addi         sp, zero, 7 #init loop 0 counter
                  srai         a0, s9, 29
                  sub          s0, a2, s2
                  slli         a4, t1, 22
                  add          a6, sp, a6
                  addi         t3, t3, 1404
                  slti         t5, a2, 217
                  addi         s2, zero, 12 #init loop 0 limit
sub_2_11_0_t:     andi         a2, t6, -1777
                  addi         sp, sp, 5 #update loop 0 counter
                  addi         zero, a5, 1543
                  sub          s8, s10, a3
                  slt          s8, t5, s7
                  nop
                  sltu         a3, gp, t5
                  andi         a1, a0, -1290
                  andi         s4, t4, -136
                  srai         zero, s11, 19
                  bne          sp, s2, sub_2_11_0_t #branch for loop 0
                  slli         s1, s1, 29
                  addi         a4, zero, 1 #init loop 1 counter
                  sltiu        s0, tp, 813
                  lui          s9, 143127
                  andi         t2, t6, 1441
                  addi         s1, zero, -12 #init loop 1 limit
                  slli         s2, a5, 11
                  andi         a0, t4, -1645
                  ori          ra, ra, 1758
sub_2_13_1_t:     ori          s9, s1, 978
                  addi         a4, a4, -1 #update loop 1 counter
                  add          t2, t5, a4
                  addi         a5, zero, 2 #init loop 0 counter
                  sra          s11, a5, s4
                  slti         sp, t0, 1299
                  addi         a3, zero, -8 #init loop 0 limit
sub_2_13_0_t:     xori         gp, s3, -1078
                  xor          a7, t3, s3
                  sltu         t3, t0, zero
                  srai         t4, gp, 18
                  addi         a5, a5, -10 #update loop 0 counter
                  xor          s6, s1, a5
                  beq          a5, a3, sub_2_13_0_t #branch for loop 0
                  beq          a4, s1, sub_2_13_1_t #branch for loop 1
                  slti         gp, t3, -1304
                  addi         a3, zero, -9 #init loop 0 counter
                  sra          s9, t5, tp
                  addi         s4, zero, 9 #init loop 0 limit
sub_2_12_0_t:     sltu         sp, a0, gp
                  slt          a4, a4, t4
                  addi         a3, a3, 8 #update loop 0 counter
                  blt          a3, s4, sub_2_12_0_t #branch for loop 0
                  addi         t5, s0, -358
                  addi         s1, zero, -8 #init loop 1 counter
                  slt          sp, t1, t2
                  srli         s3, a4, 11
                  add          t3, a6, s8
                  sra          ra, s10, t5
                  addi         s9, zero, -18 #init loop 1 limit
                  slt          s8, t5, s3
sub_2_6_1_t:      and          tp, a1, a7
                  addi         s1, s1, -2 #update loop 1 counter
                  addi         a4, zero, 2 #init loop 0 counter
                  or           s7, zero, s10
                  addi         t0, zero, 3 #init loop 0 limit
                  nop
sub_2_6_0_t:      add          a7, t4, a0
                  slli         gp, a7, 18
                  slli         s11, s0, 16
                  nop
                  addi         a4, a4, 9 #update loop 0 counter
                  bltu         a4, t0, sub_2_6_0_t #branch for loop 0
                  beq          s1, s9, sub_2_6_1_t #branch for loop 1
                  lui          ra, 397224
                  addi         a2, zero, 9 #init loop 1 counter
                  addi         a5, zero, 15 #init loop 1 limit
sub_2_3_1_t:      xor          s8, a3, a6
                  srai         s7, t4, 15
                  addi         a2, a2, 7 #update loop 1 counter
                  xori         s8, t4, -126
                  addi         tp, zero, -5 #init loop 0 counter
                  sub          s5, ra, t4
                  addi         t5, zero, -14 #init loop 0 limit
                  slt          ra, s3, t4
sub_2_3_0_t:      lui          a0, 285998
                  addi         tp, tp, -9 #update loop 0 counter
                  addi         a6, a2, 879
                  beq          tp, t5, sub_2_3_0_t #branch for loop 0
                  add          s1, s11, ra
                  blt          a2, a5, sub_2_3_1_t #branch for loop 1
                  xori         s5, s8, 1273
                  addi         a2, zero, 7 #init loop 1 counter
                  srli         t0, a7, 10
                  srli         s2, a1, 30
                  srl          a3, t1, t4
                  xori         a0, s6, 273
                  or           a3, s9, t6
                  addi         tp, zero, 18 #init loop 1 limit
                  xori         s8, a0, 1749
                  add          a6, s4, a2
                  ori          t0, t5, 1154
                  srli         ra, s6, 8
                  sra          zero, s6, a3
sub_2_10_1_t:     xor          s1, a4, a5
                  srl          t5, ra, a1
                  addi         a2, a2, 1 #update loop 1 counter
                  andi         a1, t1, -148
                  addi         s6, zero, -6 #init loop 0 counter
                  slt          gp, t2, s10
                  addi         s0, zero, -12 #init loop 0 limit
                  srl          a0, s7, a0
sub_2_10_0_t:     xor          a3, s6, ra
                  addi         s6, s6, -2 #update loop 0 counter
                  srl          zero, a0, zero
                  nop
                  lui          a3, 142127
                  bne          s6, s0, sub_2_10_0_t #branch for loop 0
                  slt          a4, s10, a3
                  sub          s2, ra, tp
                  srai         t4, s2, 24
                  srl          sp, s9, s4
                  sra          ra, sp, s9
                  nop
                  bltu         a2, tp, sub_2_10_1_t #branch for loop 1
                  sub          sp, s9, t0
                  addi         s1, zero, 9 #init loop 0 counter
                  srai         a7, s7, 24
                  nop
                  sltiu        a2, ra, 1618
                  srl          a6, a4, t0
                  xor          zero, s7, a6
                  slli         s2, t4, 21
                  or           tp, s2, s5
                  or           s11, s0, s4
                  srl          a2, a4, a6
                  xori         s2, gp, -615
                  or           a5, a3, a0
                  auipc        s0, 91635
                  sltu         t3, t6, a4
                  sra          sp, sp, s0
                  addi         s5, zero, 8 #init loop 0 limit
                  srl          s4, zero, s1
                  sra          t0, gp, a1
sub_2_8_0_t:      slt          s7, a0, t1
                  addi         s1, s1, -7 #update loop 0 counter
                  ori          t0, t3, -1047
                  auipc        sp, 504964
                  and          s6, t2, a7
                  slli         s4, zero, 31
                  bgeu         s1, s5, sub_2_8_0_t #branch for loop 0
                  addi         s6, t0, -1793
                  addi         a3, zero, 3 #init loop 0 counter
                  sra          gp, ra, a1
                  srli         s3, a4, 26
                  addi         sp, zero, -9 #init loop 0 limit
                  slti         gp, a0, 1151
                  sll          a2, a5, a1
sub_2_4_0_t:      addi         a0, a7, 234
                  and          s5, ra, s11
                  slti         t0, s7, -236
                  addi         a3, a3, -4 #update loop 0 counter
                  sra          a2, t1, t5
                  xori         a1, a0, 922
                  sra          zero, gp, gp
                  and          s3, s2, s3
                  andi         a7, zero, -1155
                  sltu         s3, s10, a0
                  bne          a3, sp, sub_2_4_0_t #branch for loop 0
                  andi         ra, t5, 1427
                  addi         sp, zero, 9 #init loop 0 counter
                  sll          s9, a6, s3
                  addi         a1, t6, -223
                  addi         s11, s10, -1691
                  addi         a3, zero, 7 #init loop 0 limit
                  xor          a5, t5, s10
                  srli         s5, ra, 23
                  xori         s6, s0, -1478
                  srl          a2, t5, s6
sub_2_14_0_t:     auipc        s2, 218861
                  addi         sp, sp, -6 #update loop 0 counter
                  slt          t5, a4, s10
                  addi         s0, s2, -1866
                  lui          a5, 193690
                  sltu         a7, t3, s4
                  lui          t5, 393398
                  sltu         a1, s10, s8
                  xor          s8, t0, s5
                  sll          s11, s4, a5
                  auipc        s1, 1006670
                  srai         s4, s2, 5
                  sltiu        a2, a6, 474
                  andi         tp, a4, -1863
                  xori         ra, t1, -639
                  ori          t4, t6, 1464
                  add          t4, t5, t0
                  sltiu        a5, gp, -1780
                  bgeu         sp, a3, sub_2_14_0_t #branch for loop 0
                  srai         a2, a7, 16
                  addi         tp, zero, 1 #init loop 0 counter
                  sltu         gp, t0, s6
                  or           s0, a6, t0
                  slli         s2, s2, 1
                  srl          t3, s6, gp
                  sll          a1, s1, gp
                  addi         s11, zero, -11 #init loop 0 limit
                  andi         a0, zero, 534
sub_2_5_0_t:      ori          a4, t0, 1153
                  auipc        a6, 997360
                  add          t2, a7, zero
                  srl          a7, sp, s10
                  auipc        a4, 58164
                  srli         ra, s7, 25
                  sub          s0, a4, a6
                  addi         tp, tp, -2 #update loop 0 counter
                  xor          a7, t6, t5
                  sub          s0, a3, a4
                  ori          a1, gp, 1109
                  bne          tp, s11, sub_2_5_0_t #branch for loop 0
                  sll          a6, s3, ra
                  bltu         gp, s11, 1f
1:                sra          s6, gp, a2
                  bltu         t2, t2, 12f
                  srli         a5, tp, 20
                  blt          t1, a6, 12f
                  blt          a2, tp, 23f
                  sltiu        s3, a5, 86
                  sltiu        t3, s6, -1196
                  bne          s8, s4, 21f
                  auipc        a3, 5445
                  and          a3, a7, s4
                  srli         s6, a5, 17
12:               bltu         s8, s10, 32f
                  srl          t0, s8, a4
                  bgeu         ra, t3, 20f
                  sub          a4, a1, t0
                  sltu         t0, s1, t6
                  sra          a2, a4, a2
                  addi         s11, s2, -1545
                  slt          s11, t1, t0
20:               bge          t1, a0, 36f
21:               and          a3, s10, s9
                  andi         a1, tp, -1706
23:               blt          tp, t5, 28f
                  bltu         t4, s1, 41f
                  ori          s9, zero, -1995
                  xori         s11, s2, 794
                  nop
28:               add          a7, a6, ra
                  srai         t5, a1, 9
                  or           a7, s3, t4
                  beq          zero, tp, 36f
32:               andi         s9, ra, -1765
                  sub          s6, a7, a4
                  sra          tp, a1, t4
                  ori          t4, zero, -1451
36:               lui          s4, 938376
                  blt          a4, s3, 42f
                  beq          tp, s3, 49f
                  lui          a7, 212222
                  sub          s9, t2, a4
41:               lui          t4, 1002508
42:               blt          t1, s0, 56f
                  sltiu        t4, s2, -239
                  or           ra, s4, a7
                  add          s6, ra, t4
                  bltu         sp, s1, 63f
                  sra          s8, a6, s11
                  nop
49:               add          tp, a0, s3
                  xori         a1, a1, 581
                  bne          t2, t5, 53f
                  slti         t3, s8, -86
53:               xor          s5, a5, zero
                  slli         s6, tp, 18
                  slli         t4, a3, 27
56:               sub          s1, s5, t4
                  andi         s4, t0, 396
                  bltu         t5, a5, 64f
                  sll          a6, s2, t1
                  addi         ra, t1, -1563
                  bge          t1, s5, 78f
                  sltiu        ra, s1, 1657
63:               andi         s0, s9, -1176
64:               addi         a1, s5, -350
                  slti         zero, t6, -369
                  srli         a2, s0, 16
                  slti         s6, s11, 877
                  or           s9, t0, s8
                  sltiu        s6, s0, -502
                  andi         sp, ra, -61
                  add          s0, s1, a5
                  slli         s11, t1, 30
                  sra          s9, s5, s8
                  lui          s8, 585741
                  srl          a7, t4, t3
                  srli         a1, zero, 2
                  bgeu         t2, s11, 78f
78:               bne          a0, s4, 96f
                  auipc        a6, 960568
                  bge          t2, t2, 96f
                  slt          gp, t2, s10
                  xor          s2, a3, t6
                  sra          s0, s9, a1
                  srl          a2, s2, s10
                  bgeu         s9, s8, 98f
                  slli         t4, a0, 4
                  bltu         s10, t0, 104f
                  xori         a1, s7, 1560
                  slti         s5, t0, 1161
                  auipc        s11, 821316
                  sltiu        tp, s3, 557
                  andi         t5, tp, -1377
                  addi         s0, s4, 1172
                  ori          a3, s5, 1590
                  srl          t0, a6, t5
96:               srli         tp, s6, 23
                  and          s1, a4, s0
98:               add          sp, gp, s1
                  bltu         a6, tp, 115f
                  beq          t5, sp, 116f
                  blt          a0, a4, 109f
                  bltu         t0, s0, 103f
103:              bne          s0, sp, 104f
104:              auipc        gp, 248543
                  nop
                  sra          t2, t6, t0
                  andi         ra, tp, 1200
                  slti         s4, s1, 1459
109:              slli         a1, a2, 11
                  add          a6, ra, sp
                  xor          sp, t5, ra
                  auipc        t4, 680167
                  or           s0, s2, t3
                  slt          s6, s9, a4
115:              sra          a4, tp, s10
116:              add          s6, s11, t1
                  slli         t5, s1, 22
                  bgeu         s1, t4, 121f
                  beq          t4, s2, 136f
                  sll          s8, a1, tp
121:              bgeu         s6, s3, 138f
                  xori         s9, s7, -1118
                  beq          s5, a7, 134f
                  bltu         t4, s8, 132f
                  sub          t4, s7, s11
                  addi         s9, a4, -1524
                  andi         s1, s8, -1473
                  sltu         s5, s8, t3
                  addi         a3, t4, -48
                  andi         a7, s0, 2032
                  sll          t2, s3, s5
132:              sll          s4, s1, s7
                  slti         a5, s9, 1294
134:              srli         t0, t6, 4
                  lui          a1, 76231
136:              or           a0, s0, s6
                  auipc        a4, 873020
138:              slti         sp, a0, -745
                  slti         a2, a6, -1266
                  sltu         s11, tp, a7
                  srai         sp, a5, 31
                  addi         tp, zero, 1 #init loop 0 counter
                  xor          ra, s3, t3
                  addi         s1, a6, 813
                  addi         a1, zero, 12 #init loop 0 limit
                  sltiu        gp, t0, -1393
sub_2_0_0_t:      sub          a0, a1, t0
                  slti         s9, tp, -224
                  sltu         a6, s7, s2
                  srl          s3, s10, a6
                  and          a5, a0, t4
                  addi         tp, tp, 8 #update loop 0 counter
                  srli         s5, a0, 26
                  add          s7, t5, zero
                  sub          gp, a6, t1
                  xori         s9, t0, 1132
                  bltu         tp, a1, sub_2_0_0_t #branch for loop 0
                  add          t0, a3, s3
                  sltu         a3, sp, s2
                  slti         sp, s11, -1791
                  auipc        s9, 655122
                  bltu         s3, t4, 165f
                  bgeu         sp, s7, 160f
                  lui          a1, 982282
                  ori          t2, s0, -280
                  sltiu        a7, t6, 231
                  ori          a4, s8, -1898
                  and          s4, s3, a7
                  blt          a4, t4, 162f
                  slti         s5, zero, 1870
                  sltu         a7, s3, s9
                  bgeu         s10, t6, 172f
                  or           s8, s1, a5
                  and          a7, t4, a7
                  or           a6, sp, gp
                  sltiu        s3, s4, 1702
160:              nop
                  xori         t5, s1, 1019
162:              sll          a2, s10, s4
                  nop
                  auipc        s11, 187641
165:              xor          a0, sp, t6
                  slti         sp, s3, 58
                  bne          a7, s4, 168f
168:              slt          s2, gp, a4
                  addi         s7, a1, -381
                  nop
                  lui          sp, 507692
172:              beq          s9, gp, 189f
                  blt          t0, t5, 191f
                  auipc        s11, 297418
                  auipc        s0, 443339
                  srl          tp, t4, a2
                  srli         t0, s3, 24
                  srl          gp, t0, s2
                  and          s7, s11, t4
                  bltu         a2, s11, 186f
                  bgeu         s7, s9, 198f
                  srai         a5, a0, 1
                  auipc        s4, 793291
                  sll          s8, a6, a7
                  add          s6, s6, a6
186:              sltiu        s9, t6, 263
                  sra          a4, a5, a6
                  sll          a2, s3, a3
189:              xori         a0, ra, -1087
                  srai         ra, a3, 4
191:              bne          s10, ra, 196f
                  or           t2, s0, t2
                  slli         s1, a5, 16
                  ori          s11, s4, 516
                  sltu         s7, s1, s6
196:              srli         t4, gp, 9
                  nop
198:              andi         gp, t0, -212
                  beq          a0, s6, 215f
                  sltu         t0, sp, s0
                  auipc        ra, 293882
                  or           ra, a3, a6
                  sltiu        a1, t5, 1674
                  srli         tp, t3, 30
                  xor          t3, a6, s7
                  add          t4, t1, t0
                  srli         t3, a7, 11
                  sub          gp, sp, tp
                  sltiu        a5, s2, -1377
                  addi         t0, s3, -56
                  sra          s8, s7, t3
                  lui          s0, 680728
                  add          a6, tp, a1
                  bge          t2, a7, 232f
215:              or           t2, a1, s1
                  or           s4, s0, a0
                  slt          a5, t4, t6
                  slti         ra, a3, 276
                  sra          t3, t1, t0
                  bgeu         s1, s8, 222f
                  lui          a4, 200304
222:              addi         a3, a1, -72
                  add          a7, t3, t6
                  bge          t6, s3, 237f
                  srai         sp, s9, 7
                  bne          s7, s11, 242f
                  xori         s7, zero, -60
                  ori          t2, gp, 1289
                  slt          a4, s1, s5
                  or           a7, s8, s11
                  sub          s1, t3, a6
232:              slti         a3, gp, -1974
                  sltiu        a2, s5, 1416
                  beq          t3, a2, 250f
                  add          a4, s2, s2
                  ori          s0, a2, 1761
237:              beq          t5, s2, 254f
                  auipc        a3, 856053
                  bgeu         t0, t5, 245f
                  add          t0, a6, s0
                  beq          s8, zero, 244f
242:              andi         t3, a4, 1265
                  beq          t3, s0, 248f
244:              srai         gp, s3, 22
245:              blt          s6, gp, 261f
                  blt          a6, s6, 247f
247:              xori         a5, s5, -664
248:              addi         tp, s8, -1791
                  auipc        t0, 188686
250:              slt          t0, t5, a6
                  or           gp, a0, s9
                  beq          t6, a7, 257f
                  or           s5, a7, s3
254:              blt          sp, s5, 262f
                  beq          a1, t3, 268f
                  slt          s0, ra, ra
257:              andi         t0, s2, 445
                  srai         tp, a3, 25
                  sltiu        tp, a2, -569
                  sub          a7, s9, sp
261:              nop
262:              andi         s2, s2, 983
                  add          s4, a2, s6
                  sltu         a6, t3, t1
                  add          s0, t2, gp
                  sra          s6, a6, s2
                  addi         t2, a2, 1265
268:              beq          a1, t6, 269f
269:              andi         s3, s8, 467
                  sltu         a1, s6, s10
                  slti         t4, s10, 440
                  blt          a0, a4, 273f
273:              or           s0, a5, sp
                  sltu         a0, t4, a5
                  sltu         s2, a0, gp
                  bge          s0, s1, 294f
                  ori          s11, zero, -2038
                  sll          s11, s7, gp
                  andi         a3, gp, 610
                  add          gp, s8, t3
                  sra          t0, s9, a5
                  lui          s4, 306559
                  sltu         gp, s10, s5
                  andi         t2, s11, -1537
                  andi         a0, s9, -1817
                  slti         t4, t4, 588
                  sra          ra, a6, s11
                  srai         ra, sp, 18
                  lui          sp, 592646
                  sra          s4, s8, ra
                  srl          s7, s0, s1
                  sltiu        a0, t3, 1847
                  ori          s11, a1, -903
294:              slti         zero, s1, -677
                  blt          t1, a5, 298f
                  ori          sp, a5, -782
                  slti         s8, t1, -1227
298:              bltu         s8, t0, 314f
                  srli         s4, s2, 28
                  bltu         s7, a5, 305f
                  sltiu        s6, a3, -578
                  bltu         t0, a0, 304f
                  bne          t4, s9, 323f
304:              srl          s4, sp, t5
305:              ori          t2, a7, -428
                  and          a2, s10, a0
                  beq          a0, gp, 320f
                  sltu         zero, t0, t3
                  slti         ra, s2, -1303
                  sra          a2, t0, s0
                  ori          s1, s4, -1879
                  sub          s8, s10, s2
                  sltu         gp, s8, tp
314:              bltu         a3, s6, 319f
                  slli         s8, t6, 13
                  lui          s0, 410532
                  beq          a5, ra, 325f
                  sra          s11, sp, a3
319:              sltu         a1, s11, tp
320:              bne          a1, t2, 337f
                  slli         t3, s9, 0
                  andi         ra, s11, 173
323:              auipc        s3, 397231
                  sltu         s4, s0, gp
325:              sltu         a5, zero, s1
                  andi         t3, zero, 501
                  addi         t5, t1, 240
                  add          ra, a6, t1
                  srai         a5, a5, 10
                  add          s6, t0, t0
                  blt          s10, t6, 341f
                  ori          s9, t2, -1415
                  ori          s8, a1, 754
                  sra          s11, gp, s3
                  bgeu         a5, s4, 341f
                  sltiu        t3, a6, -32
337:              nop
                  srai         s8, a1, 22
                  andi         a6, a4, -774
                  bgeu         s6, sp, 357f
341:              bgeu         t3, a5, 346f
                  sltiu        t2, t1, -168
                  beq          s9, s3, 357f
                  slti         t3, a4, -1639
                  slt          a6, a7, s7
346:              bgeu         ra, a2, 363f
                  blt          tp, a3, 355f
                  nop
                  bltu         a4, t5, 350f
350:              slti         s3, s5, 1662
                  lui          a1, 568819
                  and          zero, s0, s10
                  srli         a2, s9, 10
                  slti         a7, a5, -1436
355:              bgeu         a5, s6, 361f
                  slli         a1, s4, 18
357:              bltu         t4, s5, 358f
358:              sll          a0, a7, s5
                  slt          sp, t6, s9
                  auipc        s3, 534897
361:              ori          s3, s10, 198
                  nop
363:              add          a0, a7, t1
                  sltiu        a4, s0, -1744
                  sltu         s3, s11, a1
                  xori         a7, a6, -481
                  beq          a4, s0, 383f
                  bge          a1, gp, 379f
                  slti         t2, a0, -822
                  xor          s8, t4, t2
                  sltiu        s8, t6, -376
                  sra          gp, a7, s7
                  bltu         s2, s8, 389f
                  sll          s1, gp, s0
                  srai         a0, t6, 25
                  sub          a1, a2, s6
                  lui          a1, 841839
                  srai         a3, s7, 13
379:              sra          t4, s3, s5
                  sltiu        s11, s4, 774
                  srl          gp, t0, s10
                  bgeu         gp, zero, 383f
383:              xor          ra, s8, zero
                  andi         sp, s8, 325
                  andi         s4, t3, -1612
                  srli         s5, a1, 28
                  blt          t4, s2, 388f
388:              sltu         sp, a6, a3
389:              andi         a5, t1, 1826
                  sra          a3, s1, gp
                  add          gp, t4, s8
                  slt          a0, a1, a6
                  bge          sp, sp, 406f
                  nop
                  sltiu        a2, s6, 17
                  slli         a0, tp, 5
                  bge          a0, s2, 415f
                  slt          t0, a6, s7
                  xor          t5, s2, a2
                  and          t0, ra, s9
                  sltu         tp, ra, s3
                  slti         t5, t1, -1679
                  or           a2, sp, a7
                  beq          tp, t0, 420f
                  srl          a6, s4, s1
406:              beq          sp, s7, 423f
                  bgeu         a6, t4, 424f
                  or           a5, a4, t2
                  lui          s5, 18075
                  slt          zero, sp, s2
                  la           a0, sub_4
                  slt          gp, s9, s7
                  addi         a0, a0, 970
                  and          zero, t0, s1
                  lui          a3, 468860
                  bltu         s8, t3, sub_2_j5 #branch to jump instr
                  lui          gp, 662819
sub_2_j5:         jalr         ra, a0, -969 #jump sub_2 -> sub_4
                  sub          s1, ra, t0
                  slli         zero, s8, 15
                  sll          a3, s7, a1
                  sltu         a2, s8, ra
                  sub          a3, a6, s0
415:              sub          a7, s3, s4
                  sltiu        s8, t0, 378
                  bltu         s0, ra, 431f
                  and          a6, t1, s11
                  nop
420:              blt          tp, a1, 428f
                  addi         a1, s4, -1312
                  srai         s1, t2, 25
423:              lui          gp, 844269
424:              slti         s1, s8, 50
                  sra          a6, sp, s10
                  bge          a4, t1, 431f
                  sub          s8, t0, t3
428:              bgeu         s7, s8, 429f
429:              bne          t4, s10, 446f
                  nop
431:              sltiu        t3, s6, 1596
                  auipc        a5, 47642
                  slti         s9, a6, -450
                  auipc        a4, 634693
                  srl          s9, s10, t4
                  xori         s2, t2, -926
                  addi         s8, zero, -10 #init loop 1 counter
                  slt          s11, s6, a5
                  lui          s5, 334091
                  sll          t3, t6, a0
                  addi         ra, zero, -20 #init loop 1 limit
sub_2_16_1_t:     or           t4, t4, tp
                  ori          t3, t2, 1001
                  sltiu        a0, sp, -561
                  sra          a5, t5, t5
                  addi         s8, s8, -2 #update loop 1 counter
                  addi         a1, zero, 7 #init loop 0 counter
                  addi         t2, zero, 5 #init loop 0 limit
                  srli         zero, t4, 6
sub_2_16_0_t:     sltu         t3, s5, s9
                  slti         a3, s11, -367
                  slti         s3, s9, 787
                  sll          s2, s7, gp
                  sra          s0, a2, gp
                  slt          zero, s0, t0
                  addi         a1, a1, -1 #update loop 0 counter
                  sub          t4, t3, zero
                  bgeu         a1, t2, sub_2_16_0_t #branch for loop 0
                  sra          s11, a7, a3
                  ori          zero, gp, 1416
                  auipc        t5, 1030112
                  srli         s0, sp, 19
                  sub          t5, ra, t2
                  and          t3, t2, s0
                  bne          s8, ra, sub_2_16_1_t #branch for loop 1
                  auipc        s3, 1035978
                  nop
                  sll          s0, t0, s5
                  and          zero, a2, a0
                  sub          s0, gp, a0
                  srli         a7, s2, 23
                  sltu         s2, a6, s11
                  slli         a6, sp, 22
                  srli         a5, a0, 15
                  bne          t5, a5, 448f
446:              beq          a6, s11, 447f
447:              blt          s8, s1, 449f
448:              xor          s8, s8, t2
449:              and          t0, s9, a1
                  blt          ra, s2, 468f
                  addi         a5, s11, 1107
                  xori         t3, a5, -755
                  beq          a7, t1, 470f
                  blt          a1, s6, 471f
                  slti         tp, s1, 546
                  ori          gp, a4, 1649
                  beq          s0, t5, 477f
                  sll          s0, t0, s1
                  sltu         t2, gp, a6
                  srli         s11, s4, 28
                  sll          a1, sp, t1
                  auipc        a6, 309010
                  nop
                  bltu         a0, t5, 480f
                  sra          a4, gp, t2
                  bltu         s6, t5, 484f
                  beq          t6, s2, 473f
468:              ori          gp, t5, 555
                  slli         t3, s10, 8
470:              srai         s3, t1, 28
471:              srli         a0, s11, 30
                  lui          a4, 378924
473:              srl          a6, s4, a0
                  sll          ra, s0, s5
                  or           t2, tp, a2
                  sltu         a0, s2, a1
477:              lui          t0, 870183
                  xor          s7, t6, t4
                  slli         a1, a7, 0
480:              bne          s11, s7, 488f
                  ori          a2, t1, 1621
                  srl          a7, ra, s10
                  sra          s4, s1, a6
484:              slti         s3, a1, 1334
                  and          a2, s10, s10
                  add          a4, s6, ra
                  bne          s5, tp, 498f
488:              bltu         s1, zero, 494f
                  or           s4, tp, s3
                  bge          tp, s2, 491f
491:              slli         a6, a5, 26
                  ori          s2, t0, -146
                  auipc        s11, 1030489
494:              nop
                  blt          s11, gp, 508f
                  blt          s10, s3, 501f
                  lui          s5, 896011
498:              lui          ra, 635886
                  srli         s5, a4, 28
                  sub          a2, t3, a7
501:              sub          s8, s11, t4
                  slt          gp, a0, a0
                  slt          s11, a3, s11
                  sltu         t4, t5, a1
                  srli         t4, tp, 18
                  and          s2, s7, tp
                  sub          gp, t0, gp
508:              or           t2, t5, t2
                  sra          s4, s4, s7
                  lui          a3, 353300
                  nop
                  bltu         t4, s2, 529f
                  srl          gp, sp, t0
                  blt          a3, t1, 531f
                  bge          s4, s10, 531f
                  nop
                  nop
                  ori          s7, gp, -1244
                  and          s5, s7, s11
                  bgeu         s2, a6, 521f
521:              slt          a3, s5, t2
                  and          a6, a3, t0
                  sub          a6, s7, a3
                  bne          s10, t2, 529f
                  ori          s6, tp, -1712
                  slti         a2, t6, -1482
                  slti         a0, t0, 158
                  srli         s8, sp, 9
529:              ori          a3, sp, -644
                  xori         t5, t6, 1068
531:              srl          a7, t2, s7
                  or           t0, s5, a7
                  addi         t0, a5, -893
                  sra          t3, s10, s0
                  andi         gp, ra, 633
                  xor          a5, s6, t6
                  addi         a5, s5, 740
                  srai         s8, s0, 17
                  sll          sp, a6, s0
                  srli         a3, a4, 3
                  slli         s2, s10, 27
                  slli         tp, ra, 17
                  sltu         a3, t5, s2
                  bge          t6, gp, 560f
                  xori         s9, s2, 66
                  auipc        sp, 668094
                  srl          s6, a1, s5
                  bne          ra, t2, 561f
                  ori          t4, s1, 1804
                  and          a1, s0, s8
                  slt          s5, sp, a0
                  nop
                  andi         s5, sp, 668
                  bne          t1, sp, 570f
                  or           a3, zero, a2
                  beq          a5, tp, 566f
                  srli         s5, zero, 3
                  nop
                  bne          s11, s11, 575f
560:              sub          s8, a2, s9
561:              slt          a1, s2, a0
                  srli         s4, a7, 2
                  slli         s9, sp, 5
                  beq          gp, t0, 569f
                  blt          s11, t4, 566f
566:              srli         a1, a3, 6
                  bne          t4, t4, 573f
                  ori          s2, s11, 708
569:              or           tp, sp, tp
570:              sltu         t3, gp, t3
                  add          a3, a5, s9
                  or           t0, s6, s11
573:              sltu         gp, t2, s3
                  sltiu        tp, a2, 1582
575:              sub          ra, sp, a6
                  srli         s1, ra, 31
                  lui          s4, 146293
                  beq          a5, t4, 583f
                  sltiu        s4, s10, -1831
                  addi         a7, t4, 898
                  and          ra, t0, s4
                  sltu         t4, a7, a1
583:              sll          s5, t4, s1
                  lui          s9, 558547
                  srli         t2, a0, 22
                  bge          t2, gp, 604f
                  xor          a7, s11, a6
                  bltu         t4, sp, 601f
                  bne          s3, t2, 595f
                  srl          ra, sp, t3
                  bgeu         a4, s7, 607f
                  add          a0, s8, a3
                  bgeu         a0, t5, 594f
594:              bne          sp, a5, 610f
595:              lui          t2, 1016348
                  addi         s1, a7, -1315
                  slt          s0, t6, s0
                  bgeu         t4, ra, 612f
                  sltu         s2, s1, t4
                  auipc        a2, 983381
601:              add          a3, a7, a2
                  or           tp, tp, a6
                  bgeu         a7, s6, 620f
604:              bltu         s5, s1, 621f
                  sra          gp, t5, tp
                  slti         s5, s1, 368
607:              sll          ra, ra, a4
                  blt          s9, a4, 613f
                  bltu         t1, s6, 629f
610:              sra          tp, s3, s0
                  beq          s6, t3, 621f
612:              addi         a4, t0, -1783
613:              slti         s6, s3, 1008
                  bltu         a3, t0, 622f
                  add          a2, zero, t4
                  sltiu        s11, t5, 933
                  sra          s2, t2, zero
                  sll          t2, a7, sp
                  nop
620:              bgeu         s7, t1, 633f
621:              bge          a0, s3, 638f
622:              or           s8, a6, s9
                  bltu         t5, s0, 626f
                  xori         s3, t5, -1712
                  addi         s9, zero, -2 #init loop 1 counter
                  slti         gp, s6, -943
                  addi         a6, zero, -12 #init loop 1 limit
                  sll          s2, gp, t6
                  sub          s5, a1, zero
                  srl          a5, s0, t3
                  lui          a0, 1015355
sub_2_1_1_t:      slt          s5, t3, t6
                  addi         s9, s9, -10 #update loop 1 counter
                  srli         s6, t0, 8
                  srai         s11, a0, 15
                  addi         s7, zero, -2 #init loop 0 counter
                  addi         sp, zero, 12 #init loop 0 limit
                  srl          t2, a6, a3
sub_2_1_0_t:      xor          a0, a6, s0
                  or           t2, zero, a3
                  addi         s7, s7, 7 #update loop 0 counter
                  sub          s8, s11, gp
                  nop
                  beq          s7, sp, sub_2_1_0_t #branch for loop 0
                  sra          a7, a7, ra
                  sltiu        a1, a7, -965
                  sltu         s6, t2, s6
                  ori          t0, sp, 1991
                  sub          zero, t4, t1
                  bne          s9, a6, sub_2_1_1_t #branch for loop 1
                  srli         a2, a2, 10
                  srli         t2, s9, 3
626:              srai         s7, s2, 3
                  xori         s3, zero, -1125
                  xor          a7, t6, s11
629:              xori         t4, a0, -1087
                  slt          s2, tp, s9
                  or           s8, t4, zero
                  andi         s3, t3, -107
633:              bge          ra, s5, 634f
634:              lui          t5, 91889
                  sltu         t5, t4, s5
                  srai         s2, t2, 0
                  nop
638:              sll          a7, tp, s9
                  srl          s0, zero, t2
                  andi         a3, sp, 1351
                  xori         s0, tp, -1594
                  and          t3, s8, a1
                  bltu         t3, s7, 651f
                  bne          s4, a6, 645f
645:              sra          a2, a7, a1
                  add          t3, s6, sp
                  bltu         s6, s1, 665f
                  blt          s9, s11, 664f
                  andi         s1, a1, -1553
                  slt          t3, s3, s10
651:              lui          tp, 502456
                  sll          ra, s10, zero
                  lui          a2, 525647
                  add          s1, a4, s7
                  xor          s8, t2, s2
                  ori          sp, t2, -1056
                  sltiu        sp, a0, 1328
                  bne          t1, s11, 675f
                  beq          s5, a1, 676f
                  or           t4, gp, s5
                  slli         ra, s10, 4
                  blt          s8, a6, 664f
                  slti         t4, t6, 721
664:              blt          a1, a4, 675f
665:              bltu         s10, t4, 682f
                  srli         s9, t6, 4
                  slt          a5, s5, a1
                  sltiu        ra, s8, 164
                  slti         a4, a7, -1001
                  sra          t2, s11, a0
                  bge          s9, zero, 674f
                  slt          s3, t1, t1
                  ori          sp, s5, 1736
674:              srli         s2, t4, 26
675:              auipc        a5, 997779
676:              add          s9, s10, gp
                  add          a6, a2, zero
                  nop
                  sub          t5, t6, s6
                  blt          zero, a0, 698f
                  andi         s7, a4, -1046
682:              nop
                  nop
                  slt          a4, s2, s7
                  sub          a7, a1, t1
                  beq          s5, t4, 704f
                  xori         t2, zero, -1882
                  sub          s1, zero, t4
                  andi         a7, s6, -198
                  sltiu        s7, a4, 718
                  xori         a7, tp, 196
                  blt          a7, a1, 698f
                  and          s7, s3, s3
                  nop
                  beq          s7, t5, 712f
                  bgeu         s7, a0, 709f
                  andi         a5, gp, -1400
698:              lui          t3, 586814
                  bgeu         t2, s1, 715f
                  andi         s6, t1, 1262
                  beq          s0, a1, 706f
                  slti         a7, s9, -923
                  bgeu         sp, t6, 704f
704:              ori          sp, a7, -637
                  xori         s0, t4, 1449
706:              bgeu         ra, t3, 722f
                  blt          t3, sp, 727f
                  and          t2, s5, s7
                  sra          s11, s5, a6
                  or           s4, s8, a6
                  andi         s8, sp, 382
                  sra          s7, t3, tp
                  slt          a5, t5, s4
                  sra          a0, t4, t5
                  sltiu        s11, t4, -849
                  sra          t3, t2, s4
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
709:              addi         a4, t0, 1853
                  bltu         t0, t1, 727f
                  bne          sp, a0, 727f
712:              nop
                  bltu         t3, s4, 715f
                  addi         tp, t2, -528
715:              beq          s2, s5, 725f
                  xori         a3, a3, 231
                  sltiu        a7, s2, -246
                  sltu         a6, s2, sp
                  slti         t5, s11, -81
                  bne          s0, t0, 721f
721:              slli         s5, s5, 15
722:              sra          t5, s1, gp
                  srai         zero, s8, 14
                  andi         ra, gp, -2009
725:              nop
                  ori          a6, a5, 267
727:              sll          t2, s10, sp
                  sub          s11, a4, a1
                  sra          a2, s0, a7
                  and          t3, t0, s5
                  srl          s8, s0, a0
                  andi         a5, s4, 426
                  or           s9, t2, t1
                  bgeu         s0, a5, 735f
735:              bge          ra, sp, 743f
                  bge          a3, t6, 749f
                  slli         t4, t4, 20
                  and          t3, s3, s4
                  addi         s0, s7, -1926
                  srl          s4, a6, s3
                  nop
                  bltu         gp, s5, 756f
743:              andi         a6, s10, -445
                  srai         zero, t5, 8
                  and          s7, ra, tp
                  or           sp, a0, s7
                  srli         s4, a5, 4
                  addi         t5, zero, -1 #init loop 1 counter
                  srli         t4, a4, 30
                  auipc        a2, 47675
                  addi         t3, zero, 11 #init loop 1 limit
                  auipc        zero, 847178
sub_2_2_1_t:      xor          s6, s2, s10
                  lui          a4, 773916
                  addi         t5, t5, 8 #update loop 1 counter
                  ori          a5, t4, -1609
                  addi         s9, zero, 3 #init loop 0 counter
                  lui          s4, 640201
                  addi         a1, zero, -3 #init loop 0 limit
                  sltu         a0, t5, a6
sub_2_2_0_t:      xori         a5, a4, -1109
                  addi         s9, s9, -2 #update loop 0 counter
                  slt          gp, t6, s0
                  bne          s9, a1, sub_2_2_0_t #branch for loop 0
                  slt          s0, gp, s5
                  nop
                  blt          t5, t3, sub_2_2_1_t #branch for loop 1
                  sra          s6, t1, s2
                  lui          s4, 788638
749:              slli         t2, s8, 2
                  bge          t0, s3, 767f
                  bne          a3, s10, 762f
                  beq          gp, t5, 753f
753:              lui          a2, 947849
                  xor          zero, s10, s10
                  xor          t0, s11, a1
756:              sltiu        s4, gp, 1954
                  lui          t2, 123729
                  bltu         t5, s6, 775f
                  sub          s2, s7, t3
                  sub          s3, s4, s5
                  sub          gp, s11, s8
762:              slli         a7, tp, 9
                  slli         s8, t3, 10
                  xori         s4, s7, -1267
                  slt          s9, t4, t3
                  xori         s3, a0, -341
767:              or           s9, s9, a1
                  srli         t0, a0, 16
                  addi         s8, tp, 571
                  bgeu         s1, t3, 778f
                  bge          a4, a5, 776f
                  beq          t3, s9, 788f
                  and          a5, a7, s1
                  nop
775:              andi         t2, t1, -1481
776:              ori          a0, sp, -899
                  blt          t1, a5, 783f
778:              blt          s8, a2, 783f
                  auipc        t3, 517949
                  ori          a7, t3, -377
                  nop
                  srli         s0, s0, 14
783:              and          a3, tp, s2
                  or           s9, t0, s4
                  bltu         t6, s5, 798f
                  addi         s5, a6, 1662
                  andi         s5, zero, 1862
788:              ori          t2, s3, 329
                  add          a1, t0, a7
                  sra          tp, a5, a2
                  slt          a3, s6, a2
                  slli         t2, s0, 8
                  bne          t2, s2, 798f
                  bgeu         s8, t4, 810f
                  blt          gp, s1, 801f
                  addi         s11, s1, 381
                  or           s6, s5, s1
798:              sra          t0, s7, s6
                  sltu         s7, a3, t3
                  nop
801:              xor          s9, t3, s8
                  bltu         s0, t5, 820f
                  xor          s3, s5, s0
                  slli         a7, s6, 4
                  or           zero, s11, s0
                  srl          s6, ra, t1
                  bgeu         tp, t2, 808f
808:              add          t2, t6, t2
                  add          t3, zero, s10
810:              srai         gp, s5, 30
                  sltu         zero, a7, s1
                  or           a3, a1, zero
                  srli         t5, s1, 15
                  sra          t5, t6, tp
                  bge          s8, s7, 831f
                  sub          sp, s4, s7
                  sll          zero, zero, s4
                  sltu         s3, t2, a0
                  sll          zero, s7, t3
820:              srai         s9, s2, 28
                  sub          s5, t3, a7
                  and          a1, sp, zero
                  slli         t5, s1, 11
                  sltiu        a2, s2, 1078
                  and          s3, zero, s0
                  srl          a3, t4, s9
                  sltu         s6, a4, s6
                  or           ra, s4, s7
                  blt          t1, t0, 842f
                  xori         sp, t3, 785
831:              blt          t1, s5, 836f
                  lui          t4, 192419
                  sra          a0, a1, t3
                  sltiu        a5, a3, -379
                  srli         s2, a3, 1
836:              sltu         t5, s6, s8
                  lui          t3, 478335
                  xori         s7, a7, -1195
                  addi         s8, t3, -650
                  addi         t3, a4, 419
                  lui          t4, 995171
842:              addi         s9, a7, -1212
                  sra          t4, t1, a5
                  bgeu         s6, a0, 852f
                  addi         s11, s6, -1440
                  lui          sp, 384642
                  srl          a3, ra, a5
                  andi         s8, sp, -493
                  bne          s4, s10, 850f
850:              sra          a1, a2, t2
                  addi         tp, s1, -13
852:              bne          s9, a2, 863f
                  bne          ra, t4, 863f
                  beq          s11, a0, 855f
855:              andi         gp, gp, -1652
                  sra          s1, zero, ra
                  sltiu        t2, sp, -1540
                  or           t0, a5, a4
                  and          s9, s9, s2
                  sltu         a1, a3, t0
                  srl          s2, a1, s1
                  andi         a7, s1, -1411
863:              ori          s6, t1, -1639
                  sra          s0, s8, sp
                  and          a5, a2, s7
                  srai         t2, s11, 10
                  lui          s0, 799380
                  and          a5, t5, s3
                  lw           ra, 4(t1)
                  ori          s7, s0, -1386
                  lui          s2, 65755
                  addi         t1, t1, 40
                  andi         s6, a3, -1933
                  srl          s8, t2, s9
                  andi         a7, s0, -566
1278:             addi x23, x1, 0
1278:             jalr x23, x23, 0
sub_5:            bltu         a5, gp, sub_5_stack_p
                  srl          s7, a0, a0
sub_5_stack_p:    addi         t1, t1, -56
                  sw           ra, 4(t1)
                  slti         sp, s4, -28
                  xori         a1, t3, -1637
                  addi         ra, zero, -3 #init loop 0 counter
                  addi         a1, zero, 7 #init loop 0 limit
sub_5_0_0_t:      xor          a2, a3, zero
                  addi         ra, ra, 5 #update loop 0 counter
                  bne          ra, a1, sub_5_0_0_t #branch for loop 0
                  sra          zero, a4, s4
                  sltu         s6, ra, a5
                  bgeu         a5, a6, 4f
                  srai         s6, s5, 3
                  srli         s4, a0, 1
4:                and          s1, s9, s8
                  bgeu         s2, s9, 22f
                  xori         sp, s5, -1611
                  xori         s6, s9, 1278
                  sll          s5, s4, t3
                  sltiu        a3, t2, 446
                  add          s5, s10, t2
                  add          s5, s5, a5
                  srl          a2, t6, t1
                  beq          s5, s0, 22f
                  srai         a7, a7, 5
                  xor          a7, t1, gp
                  srli         a0, s7, 1
                  beq          s11, t6, 30f
                  addi         s9, s2, -1659
                  beq          s4, t3, 23f
                  sltiu        sp, a2, -165
                  xor          t0, s7, s4
22:               and          gp, sp, a2
23:               bltu         t0, t0, 40f
                  bne          t1, gp, 39f
                  add          s4, a0, tp
                  sltiu        t5, zero, 335
                  blt          a6, sp, 45f
                  slli         ra, sp, 26
                  srl          s0, s2, a7
30:               slti         a7, zero, 659
                  srli         t4, s6, 30
                  sll          tp, a1, s0
                  sltiu        sp, s10, -351
                  bge          a3, a2, 42f
                  add          tp, s1, s10
                  srai         s4, a2, 28
                  addi         s3, tp, 2009
                  sltu         a1, t6, t2
39:               xor          a3, a3, s9
40:               beq          ra, s10, 51f
                  slli         s0, s7, 31
42:               bge          s4, s9, 60f
                  xor          t3, sp, t1
                  slli         a0, a3, 13
45:               bge          a6, sp, 46f
46:               and          zero, s11, sp
                  sra          s8, a5, s10
                  xor          s11, s8, s9
                  srl          sp, s1, t0
                  sll          s2, a4, a3
51:               bne          a3, s7, 61f
                  lui          a7, 467897
                  slli         s5, a0, 11
                  lui          s6, 1004223
                  bgeu         a1, zero, 67f
                  sll          ra, s2, a2
                  xori         s1, a0, -832
                  bge          s7, a2, 67f
                  bgeu         s0, t2, 67f
60:               sub          s1, s9, t4
61:               xori         a4, a6, 1573
                  sltu         t3, t0, a6
                  srai         gp, s10, 24
                  sra          a7, t0, t3
                  ori          s5, t6, 1329
                  srl          s4, t2, t4
67:               lui          gp, 847757
                  addi         t3, s4, 1219
                  lw           ra, 4(t1)
                  sub          s0, t4, a4
                  addi         t1, t1, 56
                  auipc        s6, 555338
                  andi         s11, a0, 300
86:               addi x3, x1, 0
86:               jalr x3, x3, 0
sub_3:            addi         t1, t1, -36
                  sltiu        zero, a3, -1445
                  sw           ra, 4(t1)
                  slli         a2, t1, 16
                  nop
                  srli         s8, ra, 7
                  addi         t4, zero, 5 #init loop 0 counter
                  addi         a4, zero, 14 #init loop 0 limit
                  sltiu        a7, a7, -78
sub_3_0_0_t:      xor          s2, ra, t6
                  addi         t4, t4, 10 #update loop 0 counter
                  ori          s3, tp, 58
                  blt          t4, a4, sub_3_0_0_t #branch for loop 0
                  sll          s6, tp, s5
                  sra          t5, t2, s9
                  slti         s4, s11, 1357
                  ori          s8, a4, -1904
                  sltu         ra, s5, ra
                  bne          t4, t4, 12f
                  bltu         t4, s4, 16f
                  bge          t0, gp, 19f
                  slt          s7, sp, t2
                  srl          t5, gp, s10
                  bltu         a0, t4, 16f
                  sub          s5, t1, t6
                  sll          a0, a7, a5
12:               add          gp, t6, tp
                  sltiu        a0, a7, -879
                  bltu         a2, a0, 21f
                  srai         sp, s8, 2
16:               add          a3, s10, s7
                  bge          a2, s4, 37f
                  sra          s8, t5, s7
19:               bne          s9, t2, 20f
20:               nop
21:               xor          t3, a3, a1
                  srai         tp, t0, 7
                  blt          gp, s1, 27f
                  bge          s10, t1, 33f
                  xori         t4, a3, 766
                  bge          s5, s4, 27f
27:               lui          t3, 165227
                  and          sp, a5, t1
                  addi         s6, s7, -321
                  sltu         a2, s11, s0
                  bge          a3, a5, 34f
                  beq          s1, t2, 51f
33:               bgeu         zero, gp, 47f
34:               andi         s7, a3, -690
                  srli         s6, t1, 8
                  sub          t0, s2, s4
37:               sll          a2, s5, tp
                  and          gp, a0, s6
                  add          a5, s8, t5
                  addi         s4, a3, 460
                  ori          t3, s0, 342
                  srl          t4, s5, a3
                  blt          s11, a1, 57f
                  add          s8, t0, ra
                  addi         a0, t6, 1587
                  sub          s6, a4, s3
47:               xori         t3, a2, -1209
                  sltiu        a3, sp, -814
                  sll          t3, s10, t1
                  beq          t5, s5, 57f
51:               sra          s0, t3, a3
                  auipc        s1, 167630
                  bne          s9, a0, 66f
                  nop
                  sltiu        s5, a5, -192
                  or           s1, s6, t2
57:               or           a4, a0, gp
                  srli         t3, t3, 28
                  beq          zero, a0, 61f
                  srai         a2, s3, 30
61:               sltiu        zero, a5, -40
                  sltiu        a4, s4, -860
                  andi         t3, a1, 1794
                  bgeu         tp, t0, 75f
                  xor          t4, s9, a7
66:               auipc        t3, 709806
                  slt          ra, tp, a1
                  ori          a0, t0, -1155
                  addi         t2, s6, 1594
                  add          s5, a2, t3
                  beq          a3, a5, 83f
                  or           s9, s8, s7
                  lui          ra, 183577
                  addi         t2, ra, -1787
75:               ori          s1, tp, -1538
                  xor          a4, a2, gp
                  xori         s0, t4, 1535
                  add          a5, s6, t2
                  srl          t3, gp, t5
                  srli         s11, a0, 17
                  xori         t5, s3, -1003
                  beq          s0, tp, 92f
83:               srl          s8, s9, zero
                  add          s6, s7, t0
                  xor          a4, t6, s6
                  slt          a6, s9, a5
                  nop
                  xor          a0, t6, a1
                  nop
                  blt          s5, s11, 98f
                  ori          a7, zero, 1096
92:               sra          s8, zero, s5
                  slti         s2, s1, 1628
                  slli         a7, s7, 23
                  sltiu        t2, s6, -1815
                  blt          a5, a0, 98f
                  sltu         a4, gp, a7
98:               sub          s3, gp, s3
                  lw           ra, 4(t1)
                  or           t3, s9, a6
                  addi         a2, tp, 453
                  addi         t5, s8, 137
                  or           a6, t4, a3
                  xor          a6, a2, sp
                  sra          s3, t4, t1
                  addi         t1, t1, 36
                  srai         t0, t0, 15
122:              addi x12, x1, 1
122:              jalr x12, x12, 0
sub_4:            blt          t5, sp, sub_4_stack_p
sub_4_stack_p:    addi         t1, t1, -56
                  add          a1, ra, t6
                  sltu         a2, a3, s5
                  slt          gp, s0, a5
                  sltiu        t2, s0, -413
                  sw           ra, 4(t1)
                  srl          s1, t2, t6
                  srli         s2, sp, 8
                  srli         t2, s1, 30
                  lui          ra, 989554
                  la           s1, sub_5
                  nop
                  addi         s1, s1, 500
                  bgeu         s5, t3, sub_4_j7 #branch to jump instr
                  sll          s8, zero, s10
                  sltiu        a6, s8, 205
                  and          t4, s11, t0
sub_4_j7:         jalr         ra, s1, -499 #jump sub_4 -> sub_5
                  blt          t2, s3, 18f
                  sltu         s3, t5, a5
                  slt          s2, ra, s7
                  srl          ra, t1, gp
                  sub          t5, s3, s6
                  sll          s7, tp, tp
                  beq          s3, t3, 14f
                  auipc        a7, 904865
                  blt          t2, a0, 23f
                  addi         s3, a5, 1238
                  blt          s1, t0, 27f
                  bltu         a1, t3, 27f
                  srai         s11, ra, 6
                  nop
14:               sra          gp, s2, s11
                  slli         s9, s5, 8
                  srli         a1, zero, 11
                  nop
18:               slli         gp, s6, 16
                  blt          a1, a4, 27f
                  slti         s5, a2, 713
                  srai         a1, s7, 17
                  sub          a3, a7, a7
23:               lui          s5, 57417
                  bge          zero, a6, 27f
                  slti         s8, gp, -2012
                  auipc        s4, 413378
27:               slti         s4, s1, -532
                  lui          a7, 24911
                  xori         s2, s2, -271
                  slt          s4, t4, s2
                  addi         s11, t5, 247
                  add          s8, t1, a6
                  and          sp, s7, s11
                  lw           ra, 4(t1)
                  addi         s5, a6, 642
                  or           a1, t5, a1
                  addi         t1, t1, 56
                  andi         a2, t2, -989
58:               addi x24, x1, 1
58:               jalr x24, x24, 0
sub_1:            sltiu        s2, t1, -1087
                  bgeu         a4, s6, sub_1_stack_p
                  lui          s11, 411625
                  lui          gp, 919167
                  sltiu        s4, a6, -109
                  xor          a6, s2, s10
                  sra          tp, t0, s6
sub_1_stack_p:    addi         t1, t1, -64
                  sub          a0, a1, s11
                  sra          a0, sp, s3
                  sw           ra, 4(t1)
                  xori         s7, s9, 935
                  or           zero, s7, a0
                  add          a6, tp, ra
                  addi         s7, t0, -1529
                  add          s2, t6, s7
                  nop
                  andi         a5, t4, -561
                  and          a6, t0, ra
                  srai         s3, s5, 2
                  sltiu        zero, s4, 1128
                  srl          gp, a0, a6
sub_1_j2:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  srli         a7, ra, 3
                  slli         s6, a4, 5
                  la           a5, sub_3
                  addi         a5, a5, -685
                  andi         tp, s5, 84
                  sra          s6, s6, s5
                  xor          s2, a2, s2
                  xori         t3, s10, 178
                  nop
                  slli         s3, s3, 0
                  bgeu         s9, s10, sub_1_j3 #branch to jump instr
                  lui          gp, 594517
sub_1_j3:         jalr         ra, a5, 685 #jump sub_1 -> sub_3
                  add          a1, sp, s2
                  nop
                  sra          t5, a3, s6
                  andi         a3, s1, 1297
                  or           a4, t5, s9
                  la           a2, sub_2
                  sltu         zero, s9, a4
                  sll          a5, s4, s3
                  ori          a0, s11, 252
                  addi         a2, a2, -511
                  bltu         s10, a4, sub_1_j4 #branch to jump instr
                  andi         s11, s5, 681
                  addi         gp, s3, -1721
sub_1_j4:         jalr         ra, a2, 511 #jump sub_1 -> sub_2
                  addi         a0, zero, 2 #init loop 1 counter
                  and          sp, zero, s1
                  nop
                  or           t3, t1, a5
                  sub          s5, a1, a2
                  ori          s0, s0, 121
                  sra          ra, s7, a0
                  addi         t0, zero, 2 #init loop 1 limit
                  sll          a4, s2, sp
                  ori          sp, s11, -1583
sub_1_1_1_t:      andi         s9, a1, 1243
                  xori         t4, s1, 1296
                  addi         a1, s3, 582
                  sltu         tp, a1, gp
                  addi         a0, a0, -1 #update loop 1 counter
                  addi         a5, zero, -5 #init loop 0 counter
                  andi         t2, s0, -755
                  addi         a6, zero, 9 #init loop 0 limit
                  sltu         s5, s5, s11
                  srli         s3, s3, 13
                  slt          s2, t5, t3
                  sra          s1, a3, t1
sub_1_1_0_t:      sub          a1, s11, t6
                  addi         a5, a5, 7 #update loop 0 counter
                  auipc        s11, 890309
                  sltiu        s11, s7, 1438
                  andi         s8, zero, 1051
                  bne          a5, a6, sub_1_1_0_t #branch for loop 0
                  sltiu        s8, s1, 1605
                  slt          s7, s6, ra
                  srli         tp, s6, 28
                  addi         a4, s9, -1384
                  bgeu         a0, t0, sub_1_1_1_t #branch for loop 1
                  sltiu        a2, s3, 762
                  addi         s2, zero, 8 #init loop 1 counter
                  addi         s8, zero, 14 #init loop 1 limit
sub_1_2_1_t:      lui          a6, 422212
                  addi         s2, s2, 1 #update loop 1 counter
                  addi         sp, zero, 8 #init loop 0 counter
                  addi         t5, zero, -10 #init loop 0 limit
sub_1_2_0_t:      slti         a4, a4, -604
                  addi         sp, sp, -6 #update loop 0 counter
                  beq          sp, t5, sub_1_2_0_t #branch for loop 0
                  beq          s2, s8, sub_1_2_1_t #branch for loop 1
                  and          t3, t1, s4
                  addi         s9, zero, 10 #init loop 0 counter
                  or           s1, t3, a3
                  slt          t3, gp, s3
                  or           s5, s4, gp
                  sll          a0, s4, a2
                  addi         a3, zero, 6 #init loop 0 limit
                  sub          t5, ra, s6
                  sltu         s4, tp, s3
                  ori          a5, a6, -817
                  and          a7, t5, s0
                  and          s2, s8, a4
                  srl          s5, ra, s11
                  srl          s5, a5, t1
                  xor          a0, s11, gp
sub_1_0_0_t:      sub          zero, s4, a6
                  xori         a7, a1, 1675
                  addi         s9, s9, -5 #update loop 0 counter
                  srai         sp, s3, 14
                  bgeu         s9, a3, sub_1_0_0_t #branch for loop 0
                  xor          tp, s10, s9
                  bge          tp, a5, 9f
                  blt          s9, a2, 9f
                  or           a7, tp, a5
                  lui          t2, 139635
                  srli         a2, s5, 19
                  ori          s3, s8, -1645
                  and          s6, a5, zero
                  bge          a6, a7, 13f
                  ori          s11, s9, 1163
9:                bne          t4, ra, 14f
                  sltiu        a6, s2, -1049
                  bgeu         t1, s10, 23f
                  bgeu         sp, zero, 25f
13:               sra          s9, a7, a7
14:               addi         s9, s3, 1427
                  xor          s1, gp, gp
                  sub          gp, a2, t6
                  bge          ra, a0, 31f
                  bne          s9, a1, 26f
                  andi         t2, s1, 94
                  bne          s11, tp, 39f
                  slt          t3, sp, s11
                  andi         s1, t6, 1939
23:               xor          a6, t3, a0
                  ori          ra, s3, 1172
25:               sub          a3, s8, a2
26:               nop
                  and          zero, s7, s8
                  srl          s8, t6, s3
                  xori         zero, ra, 460
                  auipc        a5, 690612
31:               sub          s5, a7, t1
                  srl          sp, ra, t2
                  srai         a0, s8, 30
                  sra          a1, t6, s5
                  slli         s3, s9, 13
                  sltu         a7, s7, s4
                  bne          a3, s3, 57f
                  xor          tp, a6, a4
39:               bne          s1, t4, 43f
                  and          ra, a1, a4
                  sll          t5, t2, s9
                  sltiu        s6, t6, -877
43:               auipc        a6, 918613
                  andi         s9, t6, 943
                  sltiu        s3, sp, -1494
                  add          sp, s1, sp
                  slti         t3, a0, 973
                  slli         t4, sp, 18
                  andi         s1, gp, 1200
                  slti         s0, s5, -1665
                  bge          s3, zero, 61f
                  bltu         s6, s7, 63f
                  ori          s3, a4, -1194
                  sra          s3, t6, t0
                  auipc        a4, 657273
                  sltu         a7, s0, sp
57:               nop
                  lui          s4, 362844
                  bge          s4, t4, 68f
                  srl          s3, tp, t5
61:               andi         s2, a6, -1161
                  add          t4, s6, s2
63:               slli         tp, s5, 11
                  ori          t4, t0, -660
                  slti         t4, s10, -1394
                  or           a0, t6, s2
                  auipc        a0, 161622
68:               sra          s9, t0, s6
                  andi         s1, s1, 404
                  slli         s0, s10, 5
                  and          a7, a0, a3
                  sll          a1, a1, s2
                  xor          s6, s7, a5
                  ori          s6, a1, -1767
                  or           a2, s6, a4
                  beq          t6, a4, 87f
                  sll          t5, s4, a7
                  slti         a1, s9, -281
                  blt          sp, zero, 81f
                  nop
81:               beq          a3, s6, 97f
                  addi         zero, tp, 401
                  srli         s8, s3, 21
                  bltu         a7, t2, 92f
                  add          s5, s3, gp
                  sub          s8, s0, s11
87:               srai         s3, a1, 10
                  xor          s9, t3, gp
                  xor          a0, a3, s5
                  srli         a3, s6, 17
                  bne          sp, t5, 95f
92:               lui          a6, 536444
                  srai         s9, s10, 12
                  lui          t2, 688898
95:               xor          s5, s3, s1
                  bltu         t1, s0, 102f
97:               bltu         t2, t2, 115f
                  andi         s2, s0, -220
                  ori          a2, ra, 82
                  auipc        s11, 213258
                  sra          s9, a2, a2
102:              nop
                  or           a3, t2, s8
                  and          s6, a0, a7
                  and          a5, zero, t2
                  xori         a4, s3, 2008
                  bge          a4, s3, 123f
                  or           sp, s5, s4
                  ori          a0, t5, -278
                  bgeu         s5, s5, 128f
                  andi         a2, s1, -1464
                  slti         zero, s0, -1439
                  blt          a3, tp, 131f
                  blt          a0, a0, 123f
115:              sltu         a0, t6, a2
                  sltiu        t3, s1, -1319
                  sltu         a7, s0, s3
                  nop
                  bltu         a3, s8, 135f
                  addi         a4, a3, 429
                  lui          a2, 279271
                  auipc        a7, 994016
123:              and          s1, a3, a0
                  sltiu        t5, s1, 564
                  slli         tp, s10, 26
                  bgeu         sp, t3, 141f
                  xori         t5, s11, 982
128:              andi         a6, s3, 863
                  srl          sp, t1, s3
                  slti         a1, a7, -15
131:              sll          s5, a4, t6
                  bgeu         s0, a1, 139f
                  nop
                  slti         a2, s7, -880
135:              bge          ra, s11, 149f
                  nop
                  bgeu         a5, t3, 157f
                  slli         a6, a7, 6
139:              addi         s2, s2, 664
                  sra          s3, s10, s0
141:              bne          t3, s8, 157f
                  sltu         a0, s10, s7
                  xor          s11, a1, t6
                  srli         a0, s10, 0
                  slt          s6, a2, t4
                  addi         s8, a1, 1843
                  addi         t0, s4, 964
                  bne          a5, s11, 160f
149:              sltu         t0, a5, t6
                  slt          s5, t6, s9
                  sub          s5, a7, t5
                  xor          s5, s5, t4
                  sltu         tp, s4, s9
                  add          s4, t0, s3
                  slti         s9, s10, 529
                  auipc        s8, 638917
157:              srli         s5, s6, 19
                  bgeu         a5, s9, 160f
                  sltiu        a5, s3, 496
160:              slt          zero, t3, s1
                  sub          s6, a6, s8
                  srli         t3, t3, 13
                  srai         a2, sp, 6
                  lw           ra, 4(t1)
                  ori          t3, a0, -968
                  or           s9, s0, s4
                  addi         t1, t1, 64
                  auipc        a6, 243373
                  or           t5, s1, t1
                  slt          s5, t4, s11
286:              addi x8, x1, 0
286:              jalr x8, x8, 0
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
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.section .region_1,"aw",@progbits;
region_1:
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

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
                  addi x6, x6, -128
                  sw  x1, 4(x6)
                  sw  x2, 8(x6)
                  sw  x3, 12(x6)
                  sw  x4, 16(x6)
                  sw  x5, 20(x6)
                  sw  x6, 24(x6)
                  sw  x7, 28(x6)
                  sw  x8, 32(x6)
                  sw  x9, 36(x6)
                  sw  x10, 40(x6)
                  sw  x11, 44(x6)
                  sw  x12, 48(x6)
                  sw  x13, 52(x6)
                  sw  x14, 56(x6)
                  sw  x15, 60(x6)
                  sw  x16, 64(x6)
                  sw  x17, 68(x6)
                  sw  x18, 72(x6)
                  sw  x19, 76(x6)
                  sw  x20, 80(x6)
                  sw  x21, 84(x6)
                  sw  x22, 88(x6)
                  sw  x23, 92(x6)
                  sw  x24, 96(x6)
                  sw  x25, 100(x6)
                  sw  x26, 104(x6)
                  sw  x27, 108(x6)
                  sw  x28, 112(x6)
                  sw  x29, 116(x6)
                  sw  x30, 120(x6)
                  sw  x31, 124(x6)
                  add x26, x6, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x13, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x13, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x13, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x13, x30, ecall_handler
                  li x30, 0x1
                  beq x13, x30, instr_fault_handler
                  li x30, 0x5
                  beq x13, x30, load_fault_handler
                  li x30, 0x7
                  beq x13, x30, store_fault_handler
                  li x30, 0xc
                  beq x13, x30, pt_fault_handler
                  li x30, 0xd
                  beq x13, x30, pt_fault_handler
                  li x30, 0xf
                  beq x13, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

load_fault_handler:
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

store_fault_handler:
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x6, x26, zero
                  lw  x1, 4(x6)
                  lw  x2, 8(x6)
                  lw  x3, 12(x6)
                  lw  x4, 16(x6)
                  lw  x5, 20(x6)
                  lw  x6, 24(x6)
                  lw  x7, 28(x6)
                  lw  x8, 32(x6)
                  lw  x9, 36(x6)
                  lw  x10, 40(x6)
                  lw  x11, 44(x6)
                  lw  x12, 48(x6)
                  lw  x13, 52(x6)
                  lw  x14, 56(x6)
                  lw  x15, 60(x6)
                  lw  x16, 64(x6)
                  lw  x17, 68(x6)
                  lw  x18, 72(x6)
                  lw  x19, 76(x6)
                  lw  x20, 80(x6)
                  lw  x21, 84(x6)
                  lw  x22, 88(x6)
                  lw  x23, 92(x6)
                  lw  x24, 96(x6)
                  lw  x25, 100(x6)
                  lw  x26, 104(x6)
                  lw  x27, 108(x6)
                  lw  x28, 112(x6)
                  lw  x29, 116(x6)
                  lw  x30, 120(x6)
                  lw  x31, 124(x6)
                  addi x6, x6, 128
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
