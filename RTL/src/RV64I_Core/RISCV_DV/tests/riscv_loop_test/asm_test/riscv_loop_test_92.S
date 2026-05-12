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
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 0
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0xf7d9298b
                  li x1, 0x80000000
                  li x3, 0x858dae0e
                  li x4, 0xf6f40b7c
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0x8a94f308
                  li x9, 0x34e9ed6f
                  li x10, 0x80000000
                  li x11, 0xf2df29fb
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x80000000
                  li x18, 0x0
                  li x19, 0xd3f9426c
                  li x20, 0x80000000
                  li x21, 0x5
                  li x22, 0x351e13aa
                  li x23, 0x0
                  li x24, 0x9
                  li x25, 0x0
                  li x26, 0xe
                  li x27, 0xa
                  li x28, 0xff061f31
                  li x29, 0x58c22d6f
                  li x30, 0x0
                  li x31, 0x0
                  la x17, user_stack_end
main:             sll          gp, s9, a0
                  lui          ra, 581344
                  srai         a6, a4, 15
                  add          a6, s3, gp
                  slti         t2, t5, -66
                  lui          s4, 994326
                  la           s5, sub_1
                  xori         t4, gp, -1212
                  slli         a3, a2, 18
                  ori          t6, zero, -1648
                  addi         s5, s5, 60
                  add          s3, a4, a0
main_j2:          jalr         ra, s5, -60 #jump main -> sub_1
                  auipc        tp, 392636
                  addi         gp, t6, 531
                  auipc        s4, 435456
                  lui          s3, 917399
                  srai         gp, a5, 28
                  la           s10, sub_2
                  addi         s10, s10, -474
                  sll          t0, tp, t1
main_j3:          jalr         ra, s10, 474 #jump main -> sub_2
                  addi         s3, zero, 10 #init loop 1 counter
                  addi         s8, zero, 4 #init loop 1 limit
main_0_1_t:       auipc        a5, 680477
                  addi         s3, s3, -3 #update loop 1 counter
                  addi         t5, t5, 1330
                  addi         s5, zero, -3 #init loop 0 counter
                  addi         a6, zero, 15 #init loop 0 limit
main_0_0_t:       xori         a1, a5, 1819
                  srai         tp, t2, 25
                  addi         s5, s5, 9 #update loop 0 counter
                  bne          s5, a6, main_0_0_t #branch for loop 0
                  bgeu         s3, s8, main_0_1_t #branch for loop 1
                  and          a2, t5, a1
                  slti         gp, s8, -1177
                  sll          s9, a4, s1
                  andi         a0, zero, 484
                  srli         ra, a4, 5
                  lui          zero, 216609
                  srai         s7, tp, 29
                  la           a0, sub_1
                  auipc        zero, 205196
                  addi         a0, a0, 652
                  sltu         t1, a0, a1
                  sltiu        t1, s10, 468
                  srai         s0, s6, 30
main_j1:          jalr         ra, a0, -652 #jump main -> sub_1
                  or           t1, tp, s11
                  slti         a6, s8, 185
                  and          s6, t0, s0
                  srl          a1, t5, t3
                  or           t6, t2, s4
                  bge          a7, a7, 19f
                  ori          a3, s5, -1698
                  ori          t5, zero, -1035
                  blt          a0, t4, 22f
                  slt          tp, s3, s7
                  or           a3, s5, s2
                  srai         a2, tp, 2
                  srl          a3, a1, s5
                  bltu         t2, a4, 36f
                  bne          s6, s7, 23f
19:               sltiu        gp, a3, 583
                  nop
                  sltu         zero, a6, s5
22:               sub          t1, s4, a2
23:               ori          t3, s0, -1314
                  blt          t2, sp, 25f
25:               bgeu         ra, s2, 36f
                  bne          a2, s6, 29f
                  beq          s11, gp, 36f
                  slli         s8, a7, 17
29:               sltu         a2, zero, t6
                  blt          s11, s7, 36f
                  slt          t1, s1, t3
                  slt          s9, a7, tp
                  or           a6, ra, a0
                  beq          a6, zero, 36f
                  sll          s10, s4, ra
36:               sub          s7, s9, t1
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            sltiu        s10, t0, -1520
                  addi         a7, a7, -56
                  lui          s8, 780595
                  slt          a0, sp, a5
                  srli         s7, t0, 16
                  sll          s6, a1, s7
                  sltu         zero, a0, t5
                  sw           ra, 4(a7)
                  lui          gp, 935744
                  addi         s2, zero, 2 #init loop 1 counter
                  addi         a1, zero, -16 #init loop 1 limit
sub_4_0_1_t:      addi         gp, s10, -422
                  nop
                  sltiu        t2, s0, 1067
                  addi         s2, s2, -6 #update loop 1 counter
                  addi         s5, zero, 9 #init loop 0 counter
                  sra          s0, t4, a3
                  addi         a6, zero, 6 #init loop 0 limit
sub_4_0_0_t:      slt          t6, zero, t4
                  ori          s6, s6, -1306
                  addi         s5, s5, -5 #update loop 0 counter
                  bgeu         s5, a6, sub_4_0_0_t #branch for loop 0
                  sra          gp, a1, t2
                  and          t6, s8, s7
                  beq          s2, a1, sub_4_0_1_t #branch for loop 1
                  xori         s6, t0, -1202
                  addi         s2, zero, -8 #init loop 0 counter
                  slt          t6, a1, s4
                  or           gp, s7, zero
                  addi         t0, zero, 8 #init loop 0 limit
                  auipc        s11, 856321
sub_4_1_0_t:      lui          t1, 510438
                  slti         s7, t6, 1598
                  slt          t5, gp, s6
                  slli         tp, zero, 18
                  addi         s2, s2, 9 #update loop 0 counter
                  nop
                  auipc        a6, 238328
                  or           s10, a6, s2
                  and          a3, gp, s11
                  srli         s0, t4, 22
                  addi         gp, s1, 1316
                  sll          s11, a7, s3
                  xor          s4, t2, s6
                  slt          s0, t6, t3
                  or           s11, zero, a6
                  sub          zero, a5, s7
                  bltu         s2, t0, sub_4_1_0_t #branch for loop 0
                  slli         s11, t3, 23
                  slli         tp, s2, 18
                  bltu         gp, s2, 12f
                  or           t1, s5, zero
                  ori          s10, a0, 594
                  sub          a3, zero, sp
                  lui          s3, 145743
                  xori         t6, t6, 1267
                  bge          sp, a1, 20f
                  srl          s3, gp, zero
                  sub          a1, s5, s8
                  andi         a0, s1, -1946
                  xor          a6, s11, gp
12:               srli         t0, s7, 26
                  auipc        s1, 115021
                  bltu         a7, t0, 18f
                  slt          s3, s11, ra
                  xor          tp, s5, t4
                  or           s5, s11, sp
18:               add          s10, a6, s1
                  sra          s9, a7, zero
20:               beq          a2, t2, 32f
                  addi         s1, gp, -1512
                  auipc        a2, 1029665
                  lui          s5, 915016
                  xor          s10, tp, tp
                  xor          ra, a6, a7
                  bge          t0, a0, 31f
                  xor          t6, a3, t0
                  sra          a1, t5, a4
                  and          t0, t1, s0
                  sll          s8, t1, s11
31:               srl          t0, t3, a5
32:               beq          a4, a5, 51f
                  srai         t5, a6, 27
                  sltu         t2, s11, t0
                  and          a5, s11, t2
                  slt          s10, ra, a3
                  bltu         a5, s0, 44f
                  andi         t4, gp, 836
                  lui          s3, 248111
                  sra          t4, s1, t5
                  blt          a4, s1, 59f
                  bne          sp, t6, 51f
                  and          s2, zero, gp
44:               and          s5, s10, t1
                  and          a1, gp, s8
                  nop
                  bne          t5, a0, 55f
                  andi         a2, s2, 1268
                  bgeu         t2, s6, 63f
                  sra          a6, zero, s0
51:               bltu         s10, s9, 60f
                  slt          a1, s8, s2
                  xor          t6, s0, s0
                  sll          t6, s6, t6
55:               nop
                  andi         s7, s8, -1811
                  blt          zero, zero, 72f
                  bge          sp, ra, 78f
59:               sra          s8, s5, a7
60:               lui          t6, 249932
                  sub          t2, s7, s8
                  addi         t2, s0, -539
63:               slli         s0, t4, 13
                  andi         a1, t0, 79
                  bltu         tp, s3, 75f
                  bge          tp, s4, 74f
                  sltiu        s10, a2, -26
                  slt          tp, t5, a5
                  srai         t3, a4, 7
                  slt          a5, s6, a6
                  slt          s7, s2, s9
72:               or           s6, ra, zero
                  lui          gp, 286408
74:               add          s8, s5, t6
75:               addi         gp, t3, -573
                  add          t6, s0, t2
                  bne          s4, a2, 84f
78:               and          s6, s10, a2
                  sltiu        s7, t3, -1300
                  xori         s9, t0, 680
                  blt          t6, gp, 100f
                  andi         a6, s9, 62
                  slli         t0, a0, 11
84:               sll          t6, s5, s11
                  srai         t0, t6, 17
                  sub          gp, a3, s11
                  srl          s4, s3, s9
                  slli         s8, t6, 14
                  bgeu         s6, t4, 105f
                  ori          ra, t0, -950
                  slti         gp, s9, -1090
                  or           s8, s5, t3
                  and          a3, tp, zero
                  sub          t4, s7, s11
                  slti         a6, s5, -1561
                  sll          a0, gp, s3
                  srl          a1, s6, s2
                  ori          ra, a0, 1634
                  blt          s6, sp, 106f
100:              bltu         a6, t3, 106f
                  srli         s10, s11, 0
                  bge          s0, a2, 119f
                  srl          zero, s4, s3
                  ori          s8, t3, 1378
105:              beq          zero, s8, 121f
106:              lui          t5, 437570
                  lui          t3, 110376
                  xor          a3, s10, t4
                  slli         s4, s11, 2
                  ori          s8, s5, -1202
                  andi         t3, gp, -259
                  and          s8, a3, s0
                  sll          s5, s1, s9
                  slli         s10, t5, 10
                  ori          ra, s9, 1754
                  srli         s4, ra, 12
                  beq          t4, s0, 121f
                  bge          s5, sp, 121f
119:              bgeu         t6, s6, 121f
                  auipc        t6, 456642
121:              srli         a3, gp, 11
                  srli         t6, a6, 9
                  sltiu        s7, a6, 591
                  sub          t6, a6, s7
                  lw           ra, 4(a7)
                  sra          s4, t3, s5
                  addi         a7, a7, 56
                  and          s10, t2, a0
178:              addi x19, x1, 1
178:              jalr x19, x19, 0
sub_1:            addi         a7, a7, -12
                  sw           ra, 4(a7)
                  lui          t1, 563941
                  nop
                  or           t3, zero, t2
                  and          a1, sp, s9
                  xori         s1, s5, -1311
                  and          ra, t3, s9
                  slli         zero, s0, 29
                  xor          zero, t1, s2
                  auipc        s9, 17637
                  bne          t3, a6, sub_1_j5 #branch to jump instr
                  slti         a3, s2, -1856
sub_1_j5:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  andi         zero, gp, -1528
                  slli         a2, ra, 3
                  andi         s3, t3, -478
                  sub          s1, s3, a1
                  slli         a0, t4, 16
                  nop
                  xori         a2, s7, 1601
                  beq          ra, a0, sub_1_j6 #branch to jump instr
                  srl          gp, s10, zero
sub_1_j6:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  addi         a0, zero, -10 #init loop 1 counter
                  sra          s5, a2, a0
                  ori          t4, s7, 823
                  auipc        t1, 249689
                  addi         t2, zero, 8 #init loop 1 limit
                  andi         s5, s4, 2006
sub_1_21_1_t:     andi         a3, s7, 1437
                  slti         a5, a7, -1905
                  addi         a0, a0, 9 #update loop 1 counter
                  slli         s3, t2, 20
                  sltu         a5, t5, s3
                  srai         s0, a7, 4
                  nop
                  addi         s9, zero, 0 #init loop 0 counter
                  addi         ra, zero, -3 #init loop 0 limit
                  xori         tp, gp, 487
sub_1_21_0_t:     addi         a5, t6, 1823
                  xori         s5, s2, -1065
                  addi         s9, s9, -3 #update loop 0 counter
                  andi         s2, sp, 1632
                  beq          s9, ra, sub_1_21_0_t #branch for loop 0
                  auipc        a1, 1016851
                  and          a2, s0, a4
                  bne          a0, t2, sub_1_21_1_t #branch for loop 1
                  or           s2, a1, t0
                  addi         t6, zero, 9 #init loop 0 counter
                  addi         s7, zero, 7 #init loop 0 limit
                  sltiu        zero, s2, -141
sub_1_14_0_t:     addi         s10, s0, -1312
                  addi         t6, t6, -6 #update loop 0 counter
                  bgeu         t6, s7, sub_1_14_0_t #branch for loop 0
                  srai         a2, tp, 18
                  addi         s6, zero, 7 #init loop 0 counter
                  addi         t5, zero, 12 #init loop 0 limit
sub_1_23_0_t:     andi         gp, s2, 774
                  addi         s6, s6, 5 #update loop 0 counter
                  beq          s6, t5, sub_1_23_0_t #branch for loop 0
                  srli         ra, s9, 4
                  addi         s10, zero, 7 #init loop 0 counter
                  xori         t2, t6, 520
                  addi         gp, zero, -10 #init loop 0 limit
                  slt          a6, s10, t4
                  nop
sub_1_5_0_t:      sltiu        t5, s2, -1425
                  srai         t3, t1, 16
                  srl          a0, s10, ra
                  or           t0, s0, a1
                  addi         s10, s10, -5 #update loop 0 counter
                  add          a1, zero, s0
                  slt          t3, t4, s1
                  or           s2, t6, a6
                  xor          s0, s10, t3
                  xori         s1, a3, -112
                  srai         s3, s6, 8
                  sub          a1, a3, s8
                  srai         ra, t1, 27
                  lui          t5, 402749
                  nop
                  slli         t1, s0, 25
                  sra          s6, s1, a2
                  bge          s10, gp, sub_1_5_0_t #branch for loop 0
                  ori          ra, t5, 524
                  addi         a3, zero, -2 #init loop 0 counter
                  and          a6, s0, a7
                  addi         s6, zero, -13 #init loop 0 limit
                  srli         s11, tp, 12
sub_1_6_0_t:      auipc        a1, 76942
                  addi         a3, a3, -1 #update loop 0 counter
                  lui          a5, 845111
                  srl          t5, a5, t3
                  bne          a3, s6, sub_1_6_0_t #branch for loop 0
                  addi         a2, a7, -1642
                  addi         tp, zero, -7 #init loop 0 counter
                  sub          zero, t4, a6
                  sltu         ra, zero, a3
                  xor          s9, zero, t4
                  srai         t0, a4, 10
                  addi         t6, zero, -13 #init loop 0 limit
                  sub          a1, a5, s0
                  slt          s3, a6, a6
                  ori          ra, a5, -96
sub_1_13_0_t:     addi         t3, s4, -1189
                  slti         s8, s11, -1646
                  addi         tp, tp, -9 #update loop 0 counter
                  or           s5, tp, s3
                  sltu         s9, s4, s11
                  nop
                  slt          s10, t3, s10
                  add          a6, a6, ra
                  lui          a1, 284483
                  auipc        zero, 87522
                  bge          tp, t6, sub_1_13_0_t #branch for loop 0
                  lui          s7, 602720
                  addi         t2, zero, 0 #init loop 0 counter
                  slli         a0, a4, 23
                  ori          a3, s9, 794
                  srai         t0, a6, 13
                  slti         a1, zero, -1767
                  srl          s2, a4, t4
                  addi         s1, s0, -1622
                  srai         a3, s11, 28
                  addi         t6, zero, 9 #init loop 0 limit
                  ori          s5, s7, 1854
                  ori          s5, s10, -394
                  srli         a6, t4, 27
sub_1_12_0_t:     and          t3, t5, s1
                  xor          s0, a3, s11
                  addi         t2, t2, 9 #update loop 0 counter
                  and          zero, s7, ra
                  slt          t4, zero, t4
                  srl          tp, a0, a5
                  addi         a1, a0, -1966
                  beq          t2, t6, sub_1_12_0_t #branch for loop 0
                  and          s7, s7, s4
                  addi         s11, zero, -9 #init loop 0 counter
                  xor          s1, a1, t6
                  andi         gp, s7, -503
                  add          t0, s10, t3
                  slt          t2, s11, a3
                  addi         tp, zero, 11 #init loop 0 limit
                  sll          s0, tp, t3
sub_1_1_0_t:      auipc        s7, 602901
                  slli         t3, a2, 14
                  or           t3, s6, zero
                  addi         s11, s11, 9 #update loop 0 counter
                  or           s3, s2, s1
                  and          a3, s0, s0
                  ori          s4, s2, -1421
                  sub          zero, s9, t0
                  sll          s2, a0, a6
                  srl          gp, t3, t6
                  sltiu        gp, s2, -731
                  srai         s6, a6, 11
                  bltu         s11, tp, sub_1_1_0_t #branch for loop 0
                  sra          a3, s10, t4
                  addi         a5, zero, -2 #init loop 1 counter
                  sll          t0, sp, a4
                  srai         zero, t4, 27
                  addi         s3, s3, -1534
                  sra          gp, s10, sp
                  or           t4, gp, a4
                  sll          ra, t1, a7
                  or           a2, a2, t4
                  or           s3, tp, a1
                  addi         a1, zero, -11 #init loop 1 limit
                  slt          s8, tp, t6
sub_1_3_1_t:      auipc        s9, 222869
                  addi         a5, a5, -3 #update loop 1 counter
                  sltiu        a2, t4, 913
                  addi         s5, s9, 516
                  xori         ra, a6, 723
                  addi         a3, zero, 3 #init loop 0 counter
                  sub          t6, s10, t0
                  addi         a0, zero, 18 #init loop 0 limit
                  slti         s4, s9, -1789
                  ori          t5, s1, -807
                  ori          ra, s4, 265
                  xor          s2, s10, s2
sub_1_3_0_t:      sub          tp, s1, s3
                  sub          s11, s10, a7
                  andi         t0, s7, 1935
                  addi         a3, a3, 7 #update loop 0 counter
                  slti         t2, a0, -213
                  blt          a3, a0, sub_1_3_0_t #branch for loop 0
                  and          s5, a5, t6
                  xori         s3, a6, -19
                  ori          s7, s2, -809
                  bne          a5, a1, sub_1_3_1_t #branch for loop 1
                  slli         t0, t5, 5
                  addi         s11, zero, 0 #init loop 1 counter
                  addi         a6, zero, 2 #init loop 1 limit
                  sltiu        tp, t5, -886
sub_1_24_1_t:     sltiu        s6, s0, -196
                  addi         s11, s11, 6 #update loop 1 counter
                  addi         t5, zero, -9 #init loop 0 counter
                  addi         s7, zero, -18 #init loop 0 limit
                  addi         s8, t1, -1859
                  lui          s5, 310648
sub_1_24_0_t:     addi         ra, s1, -1212
                  addi         t5, t5, -1 #update loop 0 counter
                  beq          t5, s7, sub_1_24_0_t #branch for loop 0
                  blt          s11, a6, sub_1_24_1_t #branch for loop 1
                  sll          s5, t1, t2
                  addi         s10, zero, -5 #init loop 0 counter
                  sll          s9, ra, s8
                  xori         tp, s5, -592
                  or           s4, s4, sp
                  add          t4, sp, s0
                  andi         t6, a3, -1472
                  ori          tp, t6, 1131
                  add          s2, s5, s8
                  sltu         ra, a4, a7
                  ori          s11, s8, -436
                  addi         gp, zero, -20 #init loop 0 limit
sub_1_4_0_t:      xor          s0, t2, a2
                  xor          zero, a2, s0
                  sltiu        s7, t2, 140
                  sltu         t4, s11, sp
                  addi         s10, s10, -8 #update loop 0 counter
                  xor          a5, t6, s9
                  slt          s4, ra, a0
                  and          s9, a0, ra
                  bge          s10, gp, sub_1_4_0_t #branch for loop 0
                  andi         a2, a7, -1110
                  addi         tp, zero, 7 #init loop 0 counter
                  or           zero, a1, t5
                  lui          a2, 316323
                  nop
                  addi         s6, zero, -7 #init loop 0 limit
                  srli         t3, t5, 15
                  addi         a3, t2, 743
sub_1_22_0_t:     xor          s3, t4, t6
                  ori          t1, t6, -1375
                  addi         tp, tp, -3 #update loop 0 counter
                  add          s7, s1, a1
                  sub          s11, s8, a3
                  bge          tp, s6, sub_1_22_0_t #branch for loop 0
                  sub          t1, a0, s5
                  addi         a5, zero, 3 #init loop 1 counter
                  xor          t4, s5, t6
                  xor          ra, t0, t5
                  or           s11, a2, s8
                  xori         zero, a5, 1569
                  nop
                  sltiu        t5, t1, 928
                  sltiu        t5, t2, 1926
                  addi         t3, zero, 6 #init loop 1 limit
sub_1_10_1_t:     slti         t2, a7, -713
                  andi         s11, s10, -1028
                  addi         a5, a5, 3 #update loop 1 counter
                  addi         a3, zero, 6 #init loop 0 counter
                  nop
                  slli         s7, sp, 3
                  or           s7, s2, s6
                  or           s11, a7, s8
                  addi         t1, zero, -18 #init loop 0 limit
sub_1_10_0_t:     nop
                  and          s6, a5, gp
                  addi         ra, s4, 464
                  addi         a3, a3, -4 #update loop 0 counter
                  beq          a3, t1, sub_1_10_0_t #branch for loop 0
                  or           a2, a0, t0
                  or           s9, s1, t1
                  xor          s0, t5, a5
                  slt          a1, s3, s2
                  blt          a5, t3, sub_1_10_1_t #branch for loop 1
                  addi         zero, s10, -330
                  addi         t1, zero, 5 #init loop 1 counter
                  srl          s9, s10, ra
                  srli         a0, s11, 2
                  addi         s0, zero, 5 #init loop 1 limit
sub_1_7_1_t:      xori         t4, t0, 1692
                  srl          t3, a2, t1
                  and          s3, a4, s9
                  srai         s5, tp, 7
                  addi         t1, t1, -3 #update loop 1 counter
                  addi         s7, zero, -5 #init loop 0 counter
                  andi         a6, s0, 1401
                  or           a5, t4, a5
                  sra          t6, tp, a4
                  addi         gp, zero, -13 #init loop 0 limit
                  and          t3, t1, a2
                  sltu         a5, a7, s10
sub_1_7_0_t:      sltu         s4, a4, s6
                  addi         a3, gp, 1847
                  addi         s7, s7, -8 #update loop 0 counter
                  srli         zero, t5, 29
                  bne          s7, gp, sub_1_7_0_t #branch for loop 0
                  bgeu         t1, s0, sub_1_7_1_t #branch for loop 1
                  sltu         s9, s7, t2
                  addi         s10, zero, 1 #init loop 1 counter
                  andi         t0, a4, -1029
                  addi         s1, zero, 11 #init loop 1 limit
sub_1_16_1_t:     add          s7, s10, s11
                  nop
                  addi         s10, s10, 5 #update loop 1 counter
                  srai         a1, s1, 15
                  nop
                  addi         s6, zero, 5 #init loop 0 counter
                  sra          t6, s0, tp
                  srai         t2, s6, 14
                  sra          a1, s8, a3
                  auipc        a0, 656081
                  addi         t3, zero, 10 #init loop 0 limit
                  slli         a6, zero, 1
                  xor          s9, a2, sp
                  auipc        t6, 802208
                  srli         s7, t4, 11
sub_1_16_0_t:     addi         a2, s11, 192
                  xori         t1, a1, -123
                  addi         s6, s6, 1 #update loop 0 counter
                  blt          s6, t3, sub_1_16_0_t #branch for loop 0
                  beq          s10, s1, sub_1_16_1_t #branch for loop 1
                  slti         a2, a7, 653
                  addi         a3, zero, 2 #init loop 0 counter
                  addi         s7, zero, -17 #init loop 0 limit
sub_1_11_0_t:     sltiu        s4, s1, -1619
                  addi         a3, a3, -10 #update loop 0 counter
                  bge          a3, s7, sub_1_11_0_t #branch for loop 0
                  srl          a0, s7, gp
                  addi         s0, zero, 9 #init loop 1 counter
                  addi         tp, zero, 18 #init loop 1 limit
                  slt          ra, s4, tp
                  ori          t2, sp, 1490
                  sra          ra, t4, a4
sub_1_15_1_t:     or           a2, zero, s11
                  sub          zero, t2, a3
                  lui          a6, 114282
                  addi         s0, s0, 3 #update loop 1 counter
                  and          s11, ra, s9
                  addi         s4, zero, 3 #init loop 0 counter
                  andi         t2, s1, -1007
                  addi         s5, s9, -244
                  and          t1, zero, t1
                  addi         t3, zero, -1 #init loop 0 limit
sub_1_15_0_t:     sltiu        s3, zero, -1465
                  sltu         t2, s4, s9
                  srl          a6, t6, s9
                  addi         s4, s4, -1 #update loop 0 counter
                  andi         s10, t2, -1168
                  bge          s4, t3, sub_1_15_0_t #branch for loop 0
                  addi         t0, s11, 794
                  ori          s10, s4, -1474
                  slti         s8, t1, -234
                  slli         t1, s10, 6
                  beq          s0, tp, sub_1_15_1_t #branch for loop 1
                  slt          a6, ra, s11
                  addi         t2, zero, 2 #init loop 1 counter
                  srli         s4, t2, 18
                  addi         a0, zero, 5 #init loop 1 limit
sub_1_25_1_t:     slt          t1, s11, s5
                  srl          s5, t4, t4
                  addi         t2, t2, 5 #update loop 1 counter
                  addi         s1, zero, 10 #init loop 0 counter
                  addi         s0, zero, 3 #init loop 0 limit
sub_1_25_0_t:     sltiu        gp, a1, 1694
                  sra          t4, t5, t1
                  addi         s1, s1, -6 #update loop 0 counter
                  bge          s1, s0, sub_1_25_0_t #branch for loop 0
                  ori          gp, ra, -489
                  blt          t2, a0, sub_1_25_1_t #branch for loop 1
                  slti         ra, s8, 436
                  addi         a0, zero, -9 #init loop 0 counter
                  sub          s4, a3, a7
                  sltiu        s0, s6, -29
                  addi         t2, zero, 11 #init loop 0 limit
sub_1_20_0_t:     ori          zero, zero, -729
                  or           t3, s0, s5
                  sltiu        s3, s0, -1107
                  addi         a0, a0, 10 #update loop 0 counter
                  slt          tp, t4, t4
                  beq          a0, t2, sub_1_20_0_t #branch for loop 0
                  andi         t0, t4, -567
                  addi         ra, zero, -4 #init loop 0 counter
                  xori         a2, a0, 2033
                  and          a0, s5, s0
                  xor          s1, ra, t1
                  slti         t2, a7, 1747
                  slti         s0, t4, 970
                  sltu         s5, ra, ra
                  addi         s10, zero, -12 #init loop 0 limit
                  lui          a1, 133303
                  slli         t4, a0, 23
                  and          a2, t0, t0
                  srai         t3, s0, 6
                  xori         a0, t1, -211
                  andi         t5, s10, 534
                  and          s7, t1, a2
                  auipc        s9, 1041939
                  ori          t4, a0, -1235
sub_1_26_0_t:     xor          t3, ra, s0
                  slti         s9, a0, 464
                  addi         ra, ra, -3 #update loop 0 counter
                  xor          t5, a3, sp
                  slt          a0, s0, s1
                  and          a1, s10, ra
                  bge          ra, s10, sub_1_26_0_t #branch for loop 0
                  srai         a1, s6, 26
                  addi         s2, zero, 7 #init loop 0 counter
                  nop
                  slt          a1, t4, sp
                  addi         s6, zero, 5 #init loop 0 limit
                  and          s3, s6, ra
                  or           t1, tp, t4
sub_1_9_0_t:      slt          t0, s10, gp
                  srl          tp, a4, a2
                  addi         s2, s2, -2 #update loop 0 counter
                  addi         a0, s8, -944
                  srai         s5, a7, 7
                  bgeu         s2, s6, sub_1_9_0_t #branch for loop 0
                  sltu         s1, s2, t2
                  addi         t0, zero, -6 #init loop 0 counter
                  sra          a3, ra, a4
                  sll          s2, s2, s7
                  add          t6, t4, t6
                  sub          s1, s11, s9
                  and          t3, s11, a3
                  and          s3, s3, gp
                  ori          s9, s1, 1139
                  xor          gp, s9, zero
                  sltiu        a0, s11, 39
                  auipc        a5, 763583
                  slt          a2, s2, s10
                  slt          tp, s7, s0
                  addi         s5, zero, 8 #init loop 0 limit
                  sub          gp, a4, a0
                  slt          a6, s1, t0
                  nop
sub_1_18_0_t:     xori         t3, a2, -1391
                  or           s0, t1, s9
                  sub          s1, t4, a0
                  addi         t0, t0, 9 #update loop 0 counter
                  sub          t6, t5, t0
                  sltu         s10, t3, t3
                  sub          t5, a0, a0
                  add          a5, a7, a2
                  bltu         t0, s5, sub_1_18_0_t #branch for loop 0
                  srli         s6, s5, 20
                  bltu         ra, t6, 19f
                  sub          tp, s6, s0
                  sra          ra, s2, a6
                  slli         t1, s10, 5
                  add          ra, s11, t1
                  nop
                  lui          tp, 198828
                  blt          s7, tp, 18f
                  sub          s10, t1, zero
                  srl          a1, a4, a6
                  sltiu        s0, t2, -2007
                  slt          s6, s2, t4
                  beq          a6, s9, 32f
                  lui          s7, 493226
                  sub          t2, a7, t3
                  xor          s1, tp, s1
                  xor          ra, s6, t4
                  srai         s3, s9, 16
18:               sra          s2, a1, a7
19:               lui          t2, 436470
                  xor          s8, a5, s5
                  blt          t6, t0, 30f
                  bne          a0, a7, 29f
                  lui          a5, 1009172
                  and          a2, t4, s10
                  slt          a0, t4, t5
                  beq          s9, a5, 40f
                  beq          a2, s4, 33f
                  bge          s2, t6, 46f
29:               bgeu         s3, s7, 49f
30:               and          s2, a6, s5
                  slt          t4, s9, a5
32:               xor          a3, s10, a7
33:               slti         s0, a7, 851
                  srl          t6, a4, sp
                  sra          s5, s5, s6
                  lui          a2, 789117
                  sltu         t0, s5, a0
                  add          t0, s1, t3
                  auipc        s4, 406001
40:               slti         t0, t0, 1409
                  sra          a1, gp, a0
                  sra          s7, a5, t1
                  srli         zero, sp, 23
                  sltiu        s0, t0, 1163
                  xori         t0, a1, 1750
46:               nop
                  bltu         s1, tp, 52f
                  srai         a3, t3, 30
49:               slt          t5, s6, t5
                  addi         t6, t6, -818
                  andi         s5, s3, 368
52:               blt          t1, t6, 58f
                  lui          a2, 240989
                  sltiu        t0, s10, 1799
                  srli         s1, tp, 6
                  addi         s6, zero, 9 #init loop 1 counter
                  sub          a6, t1, s10
                  ori          s9, a4, 1492
                  addi         s5, zero, 3 #init loop 1 limit
                  srl          a5, a7, t0
                  or           t0, t0, s1
sub_1_8_1_t:      and          gp, a6, zero
                  sll          s0, a5, a5
                  lui          t5, 720867
                  addi         s6, s6, -2 #update loop 1 counter
                  or           s1, a2, a5
                  addi         s3, zero, 10 #init loop 0 counter
                  xori         a1, s2, 267
                  ori          t5, a3, -1577
                  addi         t2, zero, -15 #init loop 0 limit
sub_1_8_0_t:      and          a0, a5, a2
                  sub          tp, t4, s7
                  addi         s3, s3, -3 #update loop 0 counter
                  and          a3, t4, t4
                  sub          a3, s9, t1
                  bge          s3, t2, sub_1_8_0_t #branch for loop 0
                  sll          ra, s7, s6
                  bgeu         s6, s5, sub_1_8_1_t #branch for loop 1
                  srai         t4, gp, 1
                  ori          gp, a0, -307
                  sltu         a3, t2, ra
58:               ori          a3, a3, -1795
                  srl          t5, a6, zero
                  andi         ra, s6, 690
                  sra          a0, s3, t1
                  sltiu        s10, a3, 485
                  sll          a3, tp, a3
                  srli         a1, tp, 26
                  nop
                  auipc        t4, 473695
                  sub          s5, a3, zero
                  ori          a5, a5, 1849
                  bltu         a7, a5, 71f
                  sub          s3, gp, gp
71:               sll          t5, s6, s5
                  add          t2, t5, tp
                  slli         s6, a2, 11
                  srli         s3, a5, 20
                  sltiu        tp, ra, 350
                  sll          a5, s2, t0
                  beq          t1, ra, 78f
78:               bltu         s10, gp, 86f
                  add          tp, s3, s5
                  andi         s4, s9, -412
                  addi         t6, a1, 269
                  and          a5, a3, gp
                  auipc        t2, 977316
                  sra          t4, s5, a5
                  srai         zero, t1, 13
86:               add          t6, s11, gp
                  auipc        s9, 491171
                  sub          t6, s11, a2
                  lui          gp, 323696
                  and          s11, t0, gp
                  ori          gp, s9, 835
                  srai         t1, s7, 12
                  srli         s9, t4, 10
                  beq          a0, a4, 111f
                  xor          s0, s4, zero
                  bgeu         t1, ra, 105f
                  andi         a0, s9, -214
                  ori          t3, s2, -245
                  lui          a0, 231687
                  xori         s9, t6, 1907
                  and          gp, a1, s6
                  ori          t0, s8, -1681
                  slti         s10, s11, 1154
                  andi         a6, tp, 669
105:              or           tp, a0, t6
                  blt          a7, s11, 123f
                  srli         tp, s9, 11
                  srai         s7, t1, 31
                  nop
                  add          a6, a6, s7
111:              bne          a5, a3, 124f
                  xori         t4, s6, 1804
                  srai         ra, a5, 5
                  xor          t3, s4, t6
                  sll          s11, ra, t5
                  srl          s8, a1, a3
                  bne          s1, s11, 122f
                  ori          t5, t6, 1153
                  srl          t2, t2, a3
                  srai         s0, s3, 25
                  sltu         a6, sp, s8
122:              sra          a3, s9, s3
123:              bltu         t0, a6, 125f
124:              and          t5, a1, a2
125:              auipc        s10, 134657
                  lui          a2, 717875
                  and          s4, zero, s2
                  srl          a0, a2, a5
                  bge          t4, a6, 137f
                  slli         a2, t3, 14
                  sll          zero, s7, a2
                  bne          t4, s6, 147f
                  slli         s2, a2, 26
                  xori         s1, a3, 1914
                  ori          t6, t2, 1900
                  beq          s2, a6, 152f
137:              andi         gp, t4, 1110
                  sltiu        t3, a0, 1539
                  xor          a3, a1, gp
                  bne          gp, t3, 150f
                  andi         t0, a7, -1876
                  blt          s0, s7, 160f
                  srai         s10, t2, 23
                  slti         gp, a7, 1149
                  xori         a5, a4, 1319
                  sltiu        t5, zero, -370
147:              sub          s8, t2, gp
                  and          s10, t0, sp
                  or           s10, a1, a3
150:              or           a3, s5, a2
                  beq          a7, t4, 158f
152:              sltu         s2, a5, t1
                  slli         a5, s9, 30
                  slti         t4, s2, 1392
                  auipc        s9, 969788
                  sub          zero, s10, ra
                  beq          s8, a3, 176f
158:              sltiu        zero, t6, 334
                  sltiu        t3, s3, 249
160:              bltu         a3, s0, 174f
                  sll          ra, s11, t3
                  and          a2, a3, a4
                  lui          a2, 987270
                  lui          s9, 300937
                  or           t1, t0, gp
                  bltu         a6, t6, 182f
                  andi         zero, t2, 1655
                  bltu         s5, s4, 185f
                  ori          s4, t2, -1175
                  add          t5, s11, a4
                  sra          zero, t1, s10
                  srli         s6, a3, 14
                  auipc        a5, 74829
174:              sltu         a3, s8, s6
                  sub          t4, t6, gp
176:              add          gp, s10, t1
                  and          s3, s2, t2
                  addi         s9, s6, 1726
                  auipc        tp, 597814
                  bgeu         gp, s4, 196f
                  lui          a3, 22109
182:              sltu         tp, s0, t3
                  sra          t5, sp, s4
                  bne          s7, t1, 190f
185:              add          t3, a7, s5
                  sltu         s2, a4, a7
                  lui          s4, 872636
                  bgeu         gp, s4, 189f
189:              sltu         ra, a0, a0
190:              addi         a3, a7, 1105
                  blt          a0, t6, 205f
                  auipc        s9, 642304
                  srl          s9, a4, s1
                  slt          a2, a3, s2
                  bne          a6, a3, 197f
196:              nop
197:              srl          gp, t5, s9
                  xori         t1, t3, 1810
                  srai         t6, s1, 13
                  bgeu         s7, t1, 205f
                  add          s7, t2, a0
                  srli         a1, t2, 1
                  bne          a6, s6, 211f
                  bge          sp, zero, 223f
205:              auipc        s10, 820914
                  xori         zero, a2, 270
                  sltiu        a1, tp, -1150
                  bltu         s7, s0, 210f
                  bne          tp, t0, 220f
210:              slt          t4, t1, a4
211:              and          s3, s8, t0
                  ori          t0, s2, 753
                  sra          s10, t6, t2
                  ori          a6, s11, 1729
                  bge          t1, s9, 232f
                  slti         t4, t0, -365
                  auipc        s9, 833521
                  xor          a2, s1, t6
                  bgeu         a4, s7, 236f
220:              auipc        s7, 275585
                  sra          a6, t0, t1
                  blt          s5, a7, 239f
223:              xor          a3, s0, t2
                  slt          s1, t6, s5
                  auipc        s5, 216522
                  add          t6, s11, s10
                  beq          a4, s0, 245f
                  sltiu        s9, a3, -1129
                  blt          a1, s8, 249f
                  sltiu        t6, s3, 1274
                  xor          s1, a6, sp
232:              srl          s2, sp, zero
                  bge          t0, a3, 239f
                  addi         a3, s0, 262
                  slli         a0, s11, 9
236:              sltu         t4, t1, gp
                  auipc        s5, 795823
                  add          s8, a3, ra
239:              blt          a4, s10, 252f
                  sll          a1, s5, a6
                  srl          t4, s11, tp
                  bge          s3, t5, 250f
                  sub          s7, s9, s8
                  bne          a3, s2, 263f
245:              blt          t5, t2, 255f
                  add          a6, t6, t0
                  lui          s7, 78506
                  slt          a5, t3, zero
249:              or           t6, t4, s4
250:              sub          a3, t6, t2
                  and          s8, a0, tp
252:              bltu         zero, t4, 268f
                  add          t4, gp, s8
                  bne          t2, s7, 259f
255:              srai         t0, t4, 13
                  bgeu         s7, t3, 274f
                  addi         s2, zero, 4 #init loop 0 counter
                  addi         s9, t1, 935
                  slli         s0, a3, 15
                  sub          t1, zero, a4
                  sra          a3, t6, zero
                  nop
                  or           tp, t6, a7
                  addi         s5, zero, 14 #init loop 0 limit
                  srli         t1, t5, 11
                  lui          zero, 535716
                  xor          t3, a5, ra
                  and          a0, a1, t1
sub_1_19_0_t:     add          s9, s11, a4
                  sub          t6, s6, s10
                  auipc        s9, 676711
                  srai         tp, s4, 21
                  slti         s8, s9, 1524
                  srai         t5, a7, 8
                  sltu         t1, tp, s3
                  addi         s2, s2, 10 #update loop 0 counter
                  add          s1, s1, zero
                  slti         t4, tp, -1733
                  slt          a5, t3, s5
                  addi         s4, a7, 1666
                  sltu         s0, s7, a0
                  sltu         s10, a2, s5
                  slt          t3, s5, a5
                  addi         t6, s10, 1892
                  beq          s2, s5, sub_1_19_0_t #branch for loop 0
                  xori         tp, a2, -1416
                  slli         s0, a5, 9
                  slt          t2, tp, t5
259:              bge          a3, a7, 268f
                  sll          t1, s7, a1
                  bge          a2, t4, 268f
                  sra          s8, a2, t2
263:              srai         s8, s3, 22
                  sub          s11, a2, s3
                  sll          a0, a0, t2
                  slli         a1, t5, 2
                  andi         t0, a3, -1633
268:              ori          tp, a0, -129
                  bge          s3, t6, 284f
                  sltu         s9, a0, a0
                  beq          t6, gp, 291f
                  bne          s1, t2, 279f
                  sltiu        t0, gp, -825
274:              srai         a0, ra, 13
                  sltu         tp, a2, s4
                  bne          t5, a7, 285f
                  andi         a3, s10, 2024
                  auipc        a6, 754530
279:              srl          s0, s8, s1
                  xori         s6, s8, -169
                  sll          a5, a3, s11
                  lui          zero, 570385
                  bgeu         a3, sp, 297f
284:              sll          gp, a1, s1
285:              bltu         t3, s1, 291f
                  slti         a3, t5, -1999
                  slli         s7, a4, 23
                  or           a0, ra, sp
                  xori         s11, s11, 887
                  blt          gp, sp, 307f
291:              bltu         a4, sp, 298f
                  srai         t0, s10, 20
                  blt          sp, sp, 312f
                  srli         a5, gp, 23
                  xor          s10, s1, s7
                  bgeu         a6, t5, 316f
297:              sll          s9, zero, t5
298:              sll          s0, t3, t4
                  sub          t6, s11, s3
                  srli         s1, sp, 20
                  nop
                  blt          s4, a0, 309f
                  sltu         s2, zero, t4
                  sltiu        t2, a4, 1824
                  sltiu        zero, s9, -1172
                  srai         t0, a4, 3
307:              srl          s10, a4, t6
                  nop
309:              srai         s9, t4, 29
                  addi         t3, s6, -387
                  sltiu        s9, sp, 643
312:              bne          s3, t6, 329f
                  xor          zero, s0, s2
                  ori          s4, t5, -581
                  srli         t1, gp, 6
316:              xori         s3, s1, -449
                  or           a5, tp, a1
                  ori          t6, t4, 604
                  lui          s10, 968469
                  slli         t6, s2, 22
                  srl          s9, gp, tp
                  add          t2, s5, sp
                  addi         t0, s2, 1002
                  sra          a0, s6, zero
                  beq          s5, s10, 334f
                  beq          s5, a4, 344f
                  add          s8, t1, t3
                  add          a1, a4, a6
329:              sll          t6, a2, t5
                  sub          a5, s6, zero
                  xori         t2, a6, -1001
                  lui          a5, 624523
                  or           a3, t2, s4
334:              bge          a7, t0, 350f
                  addi         s11, a4, 1756
                  bne          ra, tp, 347f
                  srli         a2, sp, 20
                  add          s10, s11, sp
                  srai         a5, zero, 5
                  bltu         t0, a6, 360f
                  sll          ra, ra, t3
                  or           a6, a6, a3
                  sll          t2, s8, s3
344:              bne          tp, s0, 353f
                  bltu         a2, ra, 353f
                  lui          s11, 31520
347:              slli         s6, s6, 19
                  nop
                  sll          t5, s3, t6
350:              beq          t1, ra, 363f
                  add          ra, gp, a6
                  sll          ra, s5, gp
353:              and          t0, t2, s7
                  sub          ra, t4, sp
                  or           tp, a2, s11
                  slli         s4, a0, 17
                  bge          a5, t5, 365f
                  sltiu        t0, a2, 1012
                  sub          s1, a5, s10
360:              and          gp, s9, t3
                  srli         s4, a1, 21
                  srli         s4, s9, 9
363:              bne          a3, a0, 365f
                  slli         t4, gp, 15
365:              sra          s2, a5, a5
                  or           t4, t3, a1
                  and          s3, t1, t6
                  lui          s5, 974400
                  bgeu         s0, t3, 379f
                  slti         a2, zero, 1569
                  srli         a6, s11, 0
                  add          ra, s3, a3
                  bge          s10, gp, 392f
                  ori          s11, s6, 840
                  ori          ra, s8, -975
                  slti         gp, t3, 1055
                  or           a0, s5, gp
                  srai         t4, s1, 2
379:              bltu         s5, s6, 381f
                  and          s4, sp, a3
381:              add          t2, s1, s2
                  sra          a5, s8, a2
                  sub          s0, a3, a4
                  xori         gp, ra, -627
                  xori         s8, t3, 1097
                  and          s3, s5, zero
                  add          t3, t5, s2
                  beq          s8, t4, 403f
                  xori         a6, s2, -1962
                  sra          a2, s8, s9
                  bgeu         s5, t1, 396f
392:              beq          sp, sp, 398f
                  sltu         a5, s7, s0
                  nop
                  sra          s7, t6, s5
396:              ori          a5, zero, 1810
                  sltu         s1, a4, ra
398:              sll          t2, t6, sp
                  slti         t5, a6, 872
                  bltu         t2, s7, 414f
                  auipc        s3, 58666
                  xor          a1, a7, s8
403:              sltu         zero, gp, s9
                  bge          t4, t1, 420f
                  bltu         a4, s0, 423f
                  addi         t1, s10, 2043
                  beq          t1, a4, 412f
                  srl          t6, a4, t5
                  or           t5, s9, s3
                  nop
                  lui          s8, 238878
412:              xor          s10, s7, s6
                  slt          s7, s8, gp
414:              and          s8, a4, s11
                  sltu         t6, a6, sp
                  auipc        a1, 137118
                  lui          s11, 598468
                  add          zero, s9, t3
                  sll          s1, s3, s6
420:              nop
                  beq          zero, t5, 422f
422:              addi         a2, s8, 237
423:              srl          t5, a2, a2
                  add          s1, s2, s2
                  lui          s8, 252055
                  slt          a0, ra, t6
                  beq          ra, s1, 441f
                  blt          s11, a3, 445f
                  sll          a5, s5, sp
                  xor          a5, s5, t6
                  sll          t0, s4, t4
                  srl          t6, a7, s3
                  ori          a5, a3, 941
                  beq          t6, t5, 442f
                  srai         a5, a3, 1
                  nop
                  sub          a5, t3, t4
                  auipc        t3, 339375
                  slt          t3, s6, zero
                  slt          a0, ra, s3
441:              bltu         s6, s8, 460f
442:              slli         a1, a6, 23
                  slt          s10, s8, s6
                  bltu         zero, a0, 461f
445:              bne          tp, gp, 462f
                  and          s11, s7, s5
                  nop
                  auipc        a6, 8087
                  slt          t4, ra, s10
                  or           s7, a0, a0
                  slt          s2, t0, t3
                  xori         t3, a3, 1413
                  slti         t2, zero, -497
                  nop
                  sra          ra, t2, t6
                  bne          a2, t0, 465f
                  and          s9, s2, s1
                  or           s6, s2, t5
                  andi         t2, a6, 290
460:              or           t5, a1, ra
461:              bne          s1, t4, 475f
462:              bgeu         a2, a3, 473f
                  sltiu        a5, t4, -632
                  blt          a1, t3, 483f
465:              slti         tp, t6, 1183
                  blt          t2, s0, 486f
                  bne          zero, a1, 476f
                  andi         gp, t2, 457
                  sll          a3, s11, s8
                  ori          zero, t5, 918
                  beq          t6, a7, 486f
                  bltu         a5, s9, 473f
473:              sub          a2, t1, a6
                  lui          a2, 454289
475:              nop
476:              xor          s6, t3, a6
                  slt          s3, a5, ra
                  sra          s10, t4, s11
                  blt          s6, a5, 495f
                  srli         s6, s7, 6
                  andi         t3, s11, 1841
                  srai         zero, a3, 25
483:              bgeu         tp, t1, 485f
                  sra          t5, s7, s4
485:              add          t0, t3, tp
486:              sll          s2, s6, s10
                  xor          t4, s0, s5
                  sltu         s0, a7, s6
                  srli         s1, t4, 12
                  or           s0, a6, ra
                  or           t4, t1, s6
                  or           s0, t2, a2
                  xor          s10, a0, s1
                  auipc        s1, 894398
495:              andi         a0, a0, -1063
                  bne          a1, s10, 503f
                  srli         t4, ra, 11
                  sltu         a6, sp, sp
                  bne          a6, s9, 505f
                  slli         s8, t1, 19
                  nop
                  xori         ra, s6, 1339
503:              addi         t0, a4, 1215
                  bltu         s7, s4, 524f
505:              lui          t4, 938757
                  slt          s5, s9, sp
                  slt          s4, s10, s4
                  sra          ra, s4, t6
                  beq          a2, s5, 516f
                  bgeu         s8, a6, 527f
                  sra          a0, s0, s2
                  nop
                  srli         a5, a2, 10
                  auipc        t6, 953319
                  or           gp, gp, gp
516:              slli         t4, s3, 4
                  auipc        a2, 619338
                  auipc        a6, 336783
                  bgeu         t0, a7, 537f
                  bne          s6, a7, 525f
                  sltiu        s8, t3, -1751
                  xor          s9, t4, t4
                  beq          ra, t3, 541f
524:              xori         s0, ra, -578
525:              or           t4, t5, s5
                  bgeu         s6, t0, 531f
527:              bgeu         a2, s4, 529f
                  andi         t6, ra, 1919
529:              slli         gp, s1, 8
                  xor          t5, s1, a3
531:              beq          s9, ra, 537f
                  sltu         zero, s10, a6
                  sll          s10, s10, gp
                  ori          t0, s5, 2012
                  add          a0, s1, s10
                  srli         t0, t0, 20
537:              addi         a0, s5, 880
                  xor          s9, s11, s6
                  sub          t6, s9, sp
                  ori          t0, s7, -1763
541:              sll          s6, t4, a2
                  slt          ra, a1, t6
                  bge          a1, a3, 553f
                  sltu         t1, a1, gp
                  slli         s0, t1, 10
                  andi         s3, s5, -2023
                  slt          a0, tp, t5
                  sltu         ra, zero, s1
                  slli         s2, a1, 14
                  beq          a3, gp, 563f
                  sra          s4, s3, s5
                  sltiu        s9, t2, -672
553:              bge          gp, ra, 569f
                  slli         t3, ra, 15
                  nop
                  auipc        t2, 208625
                  sltiu        t4, t5, -983
                  bltu         a4, s7, 566f
                  srl          s7, t4, s1
                  nop
                  addi         a6, ra, -1069
                  xor          s10, t2, tp
563:              sub          s10, gp, s1
                  lui          a2, 860305
                  sltiu        a0, t4, -922
566:              addi         a1, a5, -2014
                  sra          t2, ra, sp
                  srli         t6, s10, 0
569:              beq          zero, a6, 583f
                  auipc        t2, 591341
                  xori         t2, s3, -1516
                  sltu         s2, t3, s0
                  srl          s11, ra, a7
                  sub          t5, s3, a6
                  and          a3, s10, s0
                  bne          gp, s3, 594f
                  xori         s3, a5, -412
                  bltu         a7, zero, 597f
                  ori          zero, s0, -1645
                  srli         s6, t0, 24
                  andi         a3, zero, 1763
                  add          t6, t6, s0
                  or           s6, t3, t5
                  xor          t1, ra, s6
                  srl          a3, s1, s1
                  sra          s10, a1, zero
                  addi         t5, t2, -1958
                  ori          a5, gp, -762
                  xori         s10, ra, -595
                  addi         s7, s6, 515
                  sll          s4, s10, s5
sub_1_j4:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  srai         s10, t6, 4
                  addi         s1, zero, 5 #init loop 0 counter
                  slli         zero, a1, 13
                  auipc        t5, 539734
                  slt          t4, t4, s7
                  ori          s8, a7, 1664
                  srl          ra, s10, a6
                  srai         t3, a4, 20
                  addi         s2, zero, 4 #init loop 0 limit
                  sra          s3, s3, a2
                  lui          t5, 817060
                  srai         ra, t2, 5
sub_1_17_0_t:     xori         t6, t0, 878
                  and          t1, sp, a6
                  xor          s11, a7, tp
                  xori         s10, a6, 1316
                  addi         s1, s1, -2 #update loop 0 counter
                  and          ra, s3, t3
                  sll          t5, t5, s1
                  or           s6, s4, s6
                  andi         t6, s0, -1386
                  auipc        t4, 966634
                  xori         a6, a6, -1295
                  slti         s4, s7, 1658
                  xor          tp, s1, t2
                  addi         ra, a7, 1740
                  bgeu         s1, s2, sub_1_17_0_t #branch for loop 0
                  slti         gp, a2, -458
583:              slt          a1, s4, a7
                  srai         a5, t5, 11
                  or           s4, s7, a0
                  srli         zero, s4, 4
                  xor          a0, s1, s2
                  and          t2, tp, a5
                  bge          tp, a5, 609f
                  sltiu        a6, a2, -1514
                  sub          s7, t2, t1
                  bgeu         tp, a3, 606f
                  srl          s4, s3, ra
594:              auipc        s4, 778044
                  addi         zero, s11, 1332
                  auipc        s6, 583369
597:              and          tp, ra, t6
                  slli         a2, t6, 27
                  blt          t2, t4, 608f
                  and          s1, gp, s3
                  bgeu         sp, tp, 606f
                  beq          s3, s11, 616f
                  beq          t5, zero, 610f
                  beq          tp, ra, 612f
                  bge          gp, a1, 613f
606:              andi         t5, a6, -2009
                  bge          a6, ra, 624f
608:              bltu         tp, s11, 614f
609:              nop
610:              or           s10, a2, s11
                  nop
612:              slti         s2, a4, 1350
613:              lui          s1, 904088
614:              slti         a1, gp, 88
                  add          s0, a0, a5
616:              slt          s3, t3, t0
                  bge          s4, s7, 626f
                  slti         t3, t2, -1156
                  slli         s4, s4, 0
                  bgeu         t0, s9, 633f
                  srl          s7, zero, a2
                  srl          s7, gp, ra
                  sll          gp, s3, t4
624:              slt          s0, s10, a1
                  sub          s1, t0, t1
626:              sltu         s9, s10, s2
                  srl          s3, t1, a7
                  ori          s6, s8, 1382
                  nop
                  slli         s6, s1, 19
                  srli         s8, s9, 7
                  blt          t2, s2, 638f
633:              sltu         t0, t1, a1
                  bgeu         a0, s0, 654f
                  slt          s6, t5, s9
                  xori         t2, ra, 1443
                  auipc        s0, 984019
638:              sltiu        t5, a2, -662
                  sra          a1, t3, s6
                  bne          a3, t0, 647f
                  lui          t2, 481437
                  slt          s7, sp, s0
                  sltu         a6, a4, a3
                  and          s9, t0, a3
                  nop
                  lui          s7, 41009
647:              andi         s1, t4, 90
                  xor          a3, gp, t5
                  xori         s1, s1, -1369
                  or           s8, t5, s3
                  bge          s4, a7, 668f
                  add          ra, a7, ra
                  bge          s5, s7, 671f
654:              auipc        s6, 394395
                  ori          t4, a7, 27
                  bne          s2, t0, 658f
                  srai         t6, a3, 19
658:              or           s3, s5, s11
                  srai         s2, ra, 27
                  xor          s6, s4, a1
                  bgeu         a1, a4, 677f
                  bne          gp, s0, 678f
                  blt          s0, s9, 674f
                  sub          t0, t4, t4
                  xori         a6, ra, 619
                  sll          s5, s8, t6
                  xor          a3, zero, s3
668:              xor          t0, zero, a5
                  add          s6, t0, s7
                  slt          s8, s1, s5
671:              bne          a1, t3, 690f
                  sub          t6, t2, s3
                  bne          s0, s9, 678f
674:              sll          a3, s7, s11
                  bge          a5, a7, 692f
                  sll          s6, s6, s6
677:              sra          a5, tp, t2
678:              auipc        a2, 239403
                  srai         s3, t2, 0
                  nop
                  blt          a2, sp, 682f
682:              slt          s5, s7, t1
                  sll          t3, s8, a7
                  auipc        s10, 585928
                  bgeu         a2, a3, 700f
                  andi         t3, a1, 1429
                  xor          s2, a4, t3
                  srl          a0, t2, a3
                  xor          t6, t5, t0
690:              sra          t0, t6, a2
                  auipc        t0, 287787
692:              or           s3, s8, s7
                  xori         s4, s2, -557
                  slli         t4, t6, 8
                  or           s9, s9, gp
                  srai         s5, t4, 9
                  srl          s3, t6, s5
                  andi         s6, gp, -1070
                  addi         t3, sp, 1856
700:              srl          a1, s10, ra
                  and          tp, a1, s2
                  or           a3, s10, t5
                  ori          ra, s9, -1985
                  srli         t0, s6, 16
                  addi         t1, a0, -1763
                  bltu         a3, s4, 708f
                  sra          t2, a5, tp
708:              slt          a2, a1, s10
                  srai         s5, a0, 27
                  sltu         a0, gp, t5
                  or           s0, s4, s5
                  ori          zero, s10, -1943
                  srli         s8, gp, 23
                  bgeu         a4, t0, 724f
                  srai         s3, s1, 24
                  sll          t4, a2, s2
                  beq          t6, s0, 734f
                  addi         t3, s2, 372
                  slli         a5, a6, 18
                  bgeu         t5, t0, 740f
                  or           s11, t2, s9
                  bltu         a7, s2, 724f
                  nop
724:              sltiu        s9, t2, 1825
                  xori         s2, s1, -1016
                  slli         s7, t6, 22
                  bge          t0, s6, 733f
                  slti         s3, t4, -1626
                  slt          s5, s0, a7
                  sll          s3, t5, gp
                  sra          t0, zero, s5
                  bne          s3, s9, 737f
733:              bltu         s9, s3, 748f
734:              ori          t0, s10, 1356
                  srl          s1, t0, s3
                  sra          t4, t3, t2
737:              ori          a2, s1, 56
                  bge          s3, zero, 752f
                  bne          s8, zero, 753f
740:              srai         s4, zero, 13
                  lui          a5, 918308
                  xor          s2, s1, zero
                  bgeu         tp, zero, 749f
                  auipc        a3, 840181
                  xor          s4, s2, t1
                  sltiu        zero, t2, -581
                  slli         s8, a7, 25
748:              slt          s8, a4, a2
749:              ori          gp, zero, 2014
                  beq          s4, s2, 759f
                  beq          a7, s11, 759f
752:              sltu         s10, s2, s2
753:              lui          s2, 769514
                  bltu         a2, s5, 759f
                  add          s0, s3, a0
                  bne          s6, gp, 772f
                  bne          a1, t2, 767f
                  xori         a5, zero, -1357
759:              sra          s4, a2, t4
                  or           s7, s0, s2
                  bltu         s10, a4, 777f
                  and          s2, tp, s8
                  bne          t3, s4, 780f
                  sll          tp, s2, s1
                  bgeu         t3, s5, 782f
                  and          zero, t4, s1
767:              andi         a2, s6, -776
                  slt          t1, s5, s9
                  sltu         t5, ra, zero
                  sltiu        s8, s2, -733
                  bgeu         t6, gp, 772f
772:              sra          s4, a7, sp
                  add          a6, a3, s11
                  sltu         s5, t1, s10
                  addi         s3, t1, 1597
                  srai         s4, s0, 23
777:              xori         t0, s7, 798
                  nop
                  or           s5, t0, t0
780:              or           zero, s4, zero
                  srl          s9, t3, t4
782:              beq          t5, t1, 800f
                  srai         t0, a7, 2
                  xori         s1, t6, 1260
                  sltiu        zero, s9, 1092
                  andi         s5, s8, 1608
                  add          s8, a1, t5
                  blt          s0, s2, 795f
                  and          t5, s1, a0
                  bge          s7, s3, 808f
                  or           s6, zero, zero
                  xor          t0, s9, tp
                  slli         a2, s4, 28
                  add          a2, a5, a7
795:              bgeu         s0, a6, 806f
                  xori         a6, gp, -1140
                  xori         s7, a7, 1997
                  sltu         s5, s1, s3
                  auipc        s9, 948587
800:              bltu         tp, a5, 819f
                  sub          s3, t5, s2
                  add          a0, t2, s1
                  bne          a7, s7, 810f
                  bgeu         tp, sp, 817f
                  bltu         s0, t4, 824f
806:              or           s5, t1, s6
                  srai         t6, s7, 22
808:              beq          s9, a5, 817f
                  bge          zero, s6, 811f
810:              blt          t5, s7, 818f
811:              srai         s3, a7, 11
                  or           ra, s3, a6
                  andi         t3, s1, 1872
                  srli         t6, t4, 3
                  bne          t0, a6, 835f
                  bgeu         ra, tp, 822f
817:              srli         gp, t3, 31
818:              beq          a4, t4, 820f
819:              beq          s10, t4, 837f
820:              lui          s1, 802237
                  auipc        zero, 737568
822:              sltiu        s10, ra, 179
                  ori          s11, a3, 832
824:              slt          s4, a3, s9
                  slt          gp, t2, a3
                  lui          ra, 681671
                  slt          ra, a4, s3
                  bltu         a7, s9, 848f
                  bge          t0, t1, 848f
                  srai         s0, t4, 25
                  srai         a3, t4, 27
                  xor          a2, tp, a4
                  srli         s11, gp, 13
                  slli         s4, a5, 28
835:              slti         s6, a4, -819
                  xori         a0, s8, -1652
837:              xori         t0, t5, 557
                  or           gp, s0, s10
                  sra          s10, t2, a1
                  addi         t0, zero, 1413
                  slt          s8, tp, gp
                  auipc        s9, 71203
                  auipc        t4, 57320
                  slli         a3, t2, 9
                  slli         s8, t5, 21
                  andi         t2, s1, 1582
                  andi         zero, a3, 1644
848:              slti         s7, sp, 1835
                  slt          s7, s11, tp
                  srai         s10, s5, 15
                  beq          a2, a3, 868f
                  add          t1, s9, s0
                  sra          s11, s5, t4
                  slt          t2, ra, zero
                  srai         a6, a5, 25
                  bne          s7, a2, 863f
                  sll          s2, t4, a2
                  bltu         s5, t6, 863f
                  sltiu        s11, s6, -659
                  srai         t0, a0, 10
                  slti         s1, s9, -1792
                  auipc        ra, 532642
863:              slti         t1, s7, -415
                  andi         s0, t6, 61
                  andi         a6, gp, 293
                  bltu         s5, s2, 873f
                  sll          t1, t2, sp
868:              srai         tp, t6, 12
                  or           t4, ra, a2
                  slti         tp, a2, 101
                  slt          s3, a7, t3
                  sltu         a3, s1, s1
873:              slti         s0, t5, 1913
                  addi         s10, zero, 157
                  slti         s7, a4, 285
                  slli         t1, t5, 19
                  add          ra, ra, s6
                  blt          s8, t5, 880f
                  slli         t5, a6, 30
880:              bltu         t2, a7, 896f
                  and          a6, s9, a5
                  andi         t5, a6, 472
                  or           s11, s3, t4
                  slti         a0, a0, 1280
                  and          s4, s0, s9
                  sub          a1, a2, a5
                  ori          zero, a7, 1368
                  beq          s8, t6, 905f
                  sll          t5, sp, t3
                  blt          s0, sp, 906f
                  slt          s8, s6, s2
                  srli         s9, t3, 25
                  srli         s5, a0, 20
                  bgeu         a3, s10, 902f
                  sub          a1, t0, s2
896:              sll          s2, s0, s3
                  slt          s10, a2, s6
                  bne          a2, tp, 908f
                  sll          s8, a3, tp
                  slli         t1, s6, 0
                  lui          a6, 255154
902:              beq          a6, a0, 907f
                  srl          s6, a7, t6
                  nop
905:              sra          gp, s11, s11
906:              srl          a2, t2, s2
907:              addi         s5, sp, -329
908:              add          a1, s0, s7
                  nop
                  sub          t0, tp, s11
                  slli         tp, t3, 6
                  and          s5, a0, a0
                  xor          a6, a2, a7
                  andi         s7, a5, 1171
                  xori         s10, t5, -849
                  slti         s7, s6, -1548
                  sltiu        a5, gp, -797
                  srl          s11, t5, zero
                  bgeu         s5, t5, 933f
                  srli         s4, s7, 30
                  bgeu         a2, t6, 927f
                  srai         t5, s10, 22
                  add          a1, gp, t3
                  sltu         s2, a1, a2
                  srli         t0, tp, 30
                  slt          zero, s1, t6
927:              ori          s4, a6, -1944
                  sra          a5, s1, ra
                  or           s3, tp, a5
                  sra          s5, s3, zero
                  srl          s6, s11, t4
                  xori         t2, t0, 331
933:              srli         gp, t5, 16
                  bgeu         s3, s7, 952f
                  sltiu        a6, tp, -347
                  addi         gp, a2, -205
                  sra          tp, s4, a3
                  bne          tp, a1, 958f
                  bne          a5, s3, 940f
940:              bne          s9, t5, 949f
                  blt          s6, t6, 956f
                  slt          s11, t5, s11
                  srai         s6, t5, 19
                  sltiu        s2, a3, 486
                  add          s11, s10, s8
                  ori          gp, a3, -804
                  srl          s0, s3, a6
                  lui          s4, 82042
949:              sub          t1, s1, tp
                  lui          a3, 774452
                  bgeu         a6, s9, 962f
952:              sltiu        s2, a2, 1347
                  or           s0, zero, t2
                  srli         s1, a2, 24
                  sub          t3, s6, a0
956:              sra          s1, tp, s10
                  bne          tp, a4, 970f
958:              add          s2, t4, t4
                  bne          zero, tp, 976f
                  bgeu         zero, a0, 979f
                  srl          t0, t2, a5
962:              auipc        zero, 685931
                  lui          t6, 471853
                  sltu         s2, t5, tp
                  xor          a6, zero, s7
                  andi         a6, s9, -1872
                  nop
                  andi         s11, t3, -1893
                  bge          s4, s10, 977f
970:              blt          a4, s7, 979f
                  ori          s1, gp, 220
                  sltiu        s2, sp, 1070
                  srai         t1, a1, 9
                  sltu         t3, s4, s2
                  addi         a5, t0, -624
976:              bgeu         s6, a4, 990f
977:              bgeu         a4, a0, 988f
                  xor          a2, s7, a5
979:              addi         t1, tp, -1671
                  bge          s8, a1, 998f
                  sltu         s9, s0, a3
                  slti         s2, a7, 890
                  slti         s9, gp, -1875
                  slli         a2, a0, 10
                  bltu         s7, s1, 987f
                  add          s6, a2, s5
987:              sra          t6, sp, a0
988:              sra          s10, t6, s6
                  bne          s2, a3, 999f
990:              xori         a6, ra, -1472
                  add          s10, zero, s0
                  slti         s8, s7, 1364
                  addi         s0, zero, 3 #init loop 0 counter
                  auipc        a3, 36146
                  auipc        t5, 695407
                  addi         s11, zero, 9 #init loop 0 limit
                  addi         s9, sp, -1326
                  xori         s5, s9, -1750
                  xor          s8, s2, t0
                  sltu         s5, s5, s10
sub_1_0_0_t:      andi         t1, t1, 644
                  sltiu        a6, s3, 1842
                  and          s3, t1, gp
                  sltu         ra, zero, t6
                  sltu         s7, s0, s3
                  addi         s0, s0, 2 #update loop 0 counter
                  sltu         s4, a5, t3
                  and          zero, s3, tp
                  slli         a3, s11, 13
                  sra          a1, s3, a0
                  slli         s10, t0, 30
                  bltu         s0, s11, sub_1_0_0_t #branch for loop 0
                  srli         s1, a1, 24
                  sub          t4, t2, sp
                  slli         s0, ra, 10
                  slt          tp, a5, s4
                  auipc        t4, 265408
                  bne          a4, s1, 1015f
998:              sub          ra, s1, s11
999:              slli         s2, a4, 22
                  slt          t3, a0, a7
                  bltu         t0, s10, 1008f
                  or           t3, a3, s0
                  blt          sp, t0, 1017f
                  sra          s7, s7, a4
                  slti         s6, a2, -1557
                  sra          a1, t5, s6
                  xori         t1, a5, 1101
1008:             sltu         t0, a7, s3
                  ori          a6, sp, -2046
                  xor          s2, a6, gp
                  bltu         s5, ra, 1028f
                  auipc        a6, 515854
                  slt          a3, s3, ra
                  beq          a4, t0, 1015f
1015:             blt          gp, gp, 1022f
                  bgeu         s4, s0, 1031f
1017:             bne          zero, t3, 1022f
                  addi         a0, t6, 778
                  sltu         s2, s1, s10
                  xor          a2, ra, s4
                  nop
1022:             sll          tp, a5, sp
                  sltu         s9, t2, s3
                  andi         a3, s6, 45
                  srl          a6, a1, s5
                  andi         tp, t2, 1587
                  slli         s6, t1, 28
1028:             or           s1, t4, t1
                  andi         a2, a0, -1561
                  srl          s4, s2, s4
1031:             slti         a6, a3, -535
                  ori          s0, a2, -508
                  or           s3, s7, a3
                  slli         t4, t0, 27
                  and          s2, s8, t0
                  beq          a2, a3, 1045f
                  nop
                  slli         t0, t6, 25
                  bgeu         s10, sp, 1058f
                  bltu         t1, s2, 1060f
                  srai         a5, tp, 6
                  sltu         t0, t5, s6
                  sltu         t2, s11, s3
                  bge          t6, a2, 1060f
1045:             bltu         gp, ra, 1051f
                  sub          ra, t5, t1
                  bltu         a2, sp, 1063f
                  sltiu        a0, s9, 1644
                  srai         s4, t6, 4
                  srai         t2, ra, 3
1051:             slti         t6, a4, 123
                  bltu         zero, t6, 1069f
                  bge          a7, s4, 1062f
                  sra          s1, t6, s6
                  srli         a3, zero, 3
                  srl          s9, t4, s4
                  bne          t5, s3, 1059f
1058:             xor          t4, s4, a0
1059:             sltu         s2, a5, s8
1060:             blt          s5, ra, 1077f
                  andi         s1, t2, 312
1062:             xor          s4, t6, a4
1063:             auipc        s3, 824364
                  srl          gp, t0, a5
                  andi         s6, s4, 958
                  and          a6, t5, s7
                  xori         a0, t1, -1625
                  blt          s3, s7, 1081f
1069:             blt          a7, t3, 1088f
                  ori          t5, s4, 1276
                  slli         t6, t2, 17
                  bgeu         a0, s8, 1078f
                  sltiu        a0, a1, 1609
                  slt          t5, s9, sp
                  add          tp, a7, a7
                  xori         ra, s4, -920
1077:             srl          s4, s7, a4
1078:             auipc        t3, 995175
                  auipc        a3, 693591
                  ori          s9, t1, 1118
1081:             slti         s5, ra, 1656
                  sltu         s7, s8, tp
                  sub          a0, a7, a4
                  sll          t0, a2, a0
                  sub          t3, t2, s1
                  bge          s1, s10, 1094f
                  lui          s6, 772127
1088:             sltu         t6, a3, s7
                  slt          t6, s7, s11
                  slli         ra, t3, 11
                  beq          a0, s9, 1096f
                  srli         s11, s5, 0
                  bgeu         s5, a7, 1107f
1094:             bne          a6, s7, 1114f
                  bgeu         a4, t0, 1103f
1096:             xori         t1, zero, -92
                  xori         a5, t4, 1844
                  sll          s6, t6, s6
                  bge          a0, s3, 1104f
                  ori          t6, ra, -2003
                  or           a1, a0, a4
                  xor          s1, s2, zero
1103:             slti         zero, zero, -1522
1104:             slt          ra, a7, s7
                  sra          a5, s5, gp
                  bne          t0, s6, 1115f
1107:             nop
                  addi         s4, tp, 1613
                  addi         s6, s4, -1677
                  sra          a5, t0, t3
                  sltiu        t1, t6, -327
                  blt          zero, s10, 1129f
                  sll          t0, gp, s4
1114:             bne          t3, s10, 1132f
1115:             or           s1, a4, a2
                  auipc        gp, 176481
                  sltiu        a0, t3, 305
                  srai         a1, s8, 31
                  xor          s6, t3, t0
                  srai         a0, s11, 3
                  blt          s6, s0, 1134f
                  bne          a1, t1, 1129f
                  lui          s0, 302874
                  lui          s4, 376776
                  andi         s7, zero, 853
                  bgeu         t4, s9, 1145f
                  sub          t0, a4, a0
                  srli         zero, a3, 16
1129:             slti         t2, a5, 382
                  slt          t6, t0, s10
                  nop
1132:             and          a3, a2, t2
                  bltu         a1, a1, 1151f
1134:             xor          s3, s5, a4
                  slli         s10, s3, 17
                  xori         t0, t4, 1558
                  lui          s2, 817603
                  bltu         a6, t1, 1146f
                  xori         s11, s5, 1300
                  srai         t3, t5, 20
                  addi         a5, zero, -8 #init loop 0 counter
                  addi         s3, ra, 1284
                  ori          s8, s8, -966
                  xori         tp, s7, 1246
                  sra          zero, a2, a4
                  andi         t3, s9, 1826
                  sub          t4, a3, a0
                  addi         s0, zero, -11 #init loop 0 limit
                  sltu         ra, s2, a2
                  srai         a3, s8, 11
                  srai         t6, a6, 23
                  or           s4, a0, a2
sub_1_2_0_t:      lui          a1, 550518
                  slli         tp, t2, 2
                  addi         a5, a5, -1 #update loop 0 counter
                  slti         s4, sp, -70
                  sll          a0, s4, s7
                  ori          s1, tp, -180
                  slli         s3, s1, 2
                  slt          a0, s11, t3
                  sra          a0, s1, ra
                  slli         t2, a4, 31
                  xor          s3, t0, tp
                  sll          s10, t1, t5
                  srai         s9, s4, 12
                  bge          a5, s0, sub_1_2_0_t #branch for loop 0
                  slt          gp, s8, tp
                  beq          s3, s10, 1152f
                  slti         s1, s11, -1895
                  auipc        zero, 687193
                  slli         gp, a5, 23
1145:             sltiu        a6, s10, 996
1146:             blt          a6, s5, 1148f
                  srli         a6, ra, 19
1148:             sub          s4, t1, t4
                  sra          t1, zero, s8
                  sll          t5, sp, t1
1151:             lui          t3, 56974
1152:             bne          s1, t5, 1168f
                  and          a0, t5, gp
                  sll          s5, tp, sp
                  srli         t6, a0, 21
                  srl          s11, s5, t3
                  bge          t1, s0, 1163f
                  sub          s1, s6, a2
                  xori         s9, a7, -1063
                  sub          a2, a6, t6
                  auipc        t6, 287774
                  sltiu        s8, s6, -1069
1163:             and          s4, t4, s2
                  blt          tp, tp, 1181f
                  sltu         t4, s11, s1
                  add          t2, gp, a3
                  slt          s8, t6, s11
1168:             srai         s9, a3, 18
                  slli         s7, ra, 12
                  sltu         t6, t2, s8
                  addi         s1, a6, -1618
                  blt          t6, ra, 1192f
                  srl          s11, s0, s5
                  lui          s8, 337913
                  beq          s7, t2, 1190f
                  andi         s11, t1, -1513
                  nop
                  sub          s1, s3, gp
                  sll          a2, zero, s4
                  slti         gp, t1, -26
1181:             or           s0, s8, a2
                  sll          s5, a7, zero
                  or           zero, a3, t1
                  sra          t5, s10, t3
                  add          t0, a3, s9
                  ori          a5, a6, 1488
                  bne          s7, s4, 1203f
                  bgeu         s5, s5, 1208f
                  or           ra, a5, a3
1190:             blt          s9, t1, 1209f
                  bltu         ra, t2, 1192f
1192:             ori          a1, s9, 1452
                  sra          gp, a4, s0
                  xor          s2, s11, ra
                  slt          t2, a0, gp
                  blt          t5, t1, 1202f
                  srli         s3, s1, 8
                  sub          ra, a5, s9
                  bgeu         t5, gp, 1206f
                  add          t4, a2, s0
                  sll          a5, s2, a1
1202:             ori          s2, t2, -1077
1203:             xor          s11, s7, t2
                  srai         a1, s8, 5
                  blt          s10, t0, 1222f
1206:             lui          t4, 229925
                  add          s3, a0, ra
1208:             slt          tp, s3, ra
1209:             slt          gp, s5, t6
                  beq          a7, a6, 1215f
                  slti         s7, s5, -212
                  sra          t0, sp, a0
                  srl          s3, sp, s10
                  sltu         a3, t3, s0
1215:             sra          t5, t3, s6
                  slli         t2, s0, 4
                  add          ra, t1, a2
                  sub          ra, s4, s2
                  sltu         a3, s7, ra
                  srl          t4, s4, zero
                  lui          t1, 688305
1222:             bgeu         t2, gp, 1232f
                  nop
                  slli         s2, s7, 5
                  sll          s7, s7, s2
                  ori          t6, ra, -1575
                  srai         s0, t4, 19
                  sltu         t3, a2, a6
                  beq          a5, s8, 1231f
                  auipc        t6, 67550
1231:             sltiu        s7, s8, -1661
1232:             srai         a5, s4, 22
                  srai         a2, a3, 9
                  bge          gp, a4, 1242f
                  sltiu        s2, s9, 1065
                  lui          a2, 447048
                  bgeu         tp, s7, 1251f
                  beq          t5, s6, 1252f
                  bltu         t1, s0, 1248f
                  sltiu        s7, sp, -1750
                  or           gp, a1, s8
1242:             or           s8, s0, a7
                  add          t4, zero, a3
                  blt          a0, s4, 1258f
                  bne          s11, zero, 1247f
                  and          s8, s8, s3
1247:             sub          a6, s1, s1
1248:             sll          s1, s5, a4
                  lui          s11, 163523
                  sltu         a6, s1, s6
1251:             beq          a7, t5, 1260f
1252:             bne          ra, zero, 1267f
                  srli         a5, a6, 26
                  andi         t3, s0, 14
                  slli         zero, s10, 9
                  xori         s2, tp, 1226
                  bltu         s5, s8, 1275f
1258:             slt          ra, t5, t0
                  lui          s10, 567633
1260:             ori          t1, a1, 1042
                  sub          t0, a2, gp
                  slli         s7, gp, 5
                  auipc        s2, 1015893
                  sub          t4, t5, t0
                  sltu         s8, s2, s7
                  sra          a0, zero, t2
1267:             sub          a3, t0, s5
                  ori          ra, gp, 1116
                  sll          ra, sp, s7
                  bgeu         t4, t1, 1288f
                  slt          s10, tp, a3
                  bgeu         s8, s2, 1288f
                  lui          gp, 1013377
                  xori         a3, s0, -1123
1275:             blt          t4, s4, 1282f
                  lui          a6, 653208
                  addi         s4, s6, -568
                  add          a3, a2, s6
                  and          s4, s4, a0
                  andi         s5, t3, -637
                  bne          t6, s6, 1290f
1282:             xori         a3, s3, 1500
                  bgeu         s7, s7, 1291f
                  blt          a4, zero, 1286f
                  xor          s0, tp, t4
1286:             sub          tp, tp, gp
                  sub          s4, s9, s9
1288:             srl          s10, ra, s8
                  or           s6, sp, a2
1290:             sltu         tp, t2, a3
1291:             xor          t3, tp, s11
                  beq          zero, s2, 1309f
                  slti         s10, a5, 1541
                  sltiu        s9, s10, 1784
                  bltu         s1, ra, 1314f
                  blt          s10, a5, 1313f
                  ori          a2, s0, -1463
                  xor          s8, s10, t0
                  sltu         s9, s11, t0
                  ori          s6, tp, -1783
                  andi         a6, a2, -227
                  bge          a3, tp, 1319f
                  addi         t0, tp, 1517
                  addi         s2, a7, -146
                  bltu         sp, s2, 1306f
1306:             addi         s7, ra, 836
                  srli         s4, s9, 24
                  or           t0, a2, tp
1309:             slti         zero, s5, 1107
                  bge          ra, t2, 1318f
                  srl          s8, a1, s7
                  bge          s2, a3, 1332f
1313:             srli         t4, ra, 5
1314:             bgeu         s2, a7, 1320f
                  slt          s9, t5, s0
                  beq          ra, t3, 1332f
                  xori         a2, a5, -820
1318:             lui          a0, 981617
1319:             sltu         s4, t3, a1
1320:             srai         gp, sp, 16
                  beq          s9, s7, 1326f
                  sltiu        tp, a1, -1857
                  lui          a5, 107398
                  sra          a2, a6, t1
                  sll          s6, a2, a0
1326:             lui          s10, 208585
                  bne          gp, s2, 1346f
                  sub          ra, t6, s2
                  addi         a6, gp, -81
                  add          t4, s1, s6
                  slt          s4, a2, s7
1332:             beq          a0, a0, 1339f
                  or           tp, a2, s10
                  bgeu         tp, t4, 1354f
                  srl          gp, t4, a2
                  ori          t2, s10, 1405
                  sub          s0, a2, a6
                  andi         s5, s11, -809
1339:             sltiu        s9, s0, -194
                  bltu         a4, a0, 1346f
                  andi         s0, s3, 1925
                  xor          s4, a7, t0
                  sra          gp, a5, t1
                  lui          s6, 923987
                  or           gp, sp, a7
1346:             auipc        t3, 508800
                  bgeu         t4, s1, 1360f
                  srl          a0, zero, t1
                  ori          ra, gp, 933
                  slt          s2, gp, t4
                  blt          s5, s8, 1365f
                  bge          t5, t0, 1363f
                  ori          t3, s9, 1345
1354:             sll          s1, s11, s8
                  sltu         s10, s11, a0
                  andi         s10, s11, 999
                  bne          t6, a3, 1367f
                  sra          t4, t4, t6
                  sltiu        s3, a1, -622
1360:             andi         tp, s3, -1314
                  sltu         a1, a0, t5
                  srl          a1, a0, s7
1363:             bge          s4, t2, 1368f
                  addi         a6, a7, 1290
1365:             andi         t2, s11, -1291
                  sltu         t6, a1, s0
1367:             srli         s7, s10, 4
1368:             blt          t6, s1, 1377f
                  add          a5, a1, t0
                  beq          t0, a3, 1377f
                  ori          t1, t0, -550
                  bne          s5, t0, 1377f
                  addi         a5, ra, 1884
                  auipc        s2, 822007
                  sltu         t6, tp, s7
                  sub          s5, t3, gp
1377:             ori          a0, s11, 1442
                  lw           ra, 4(a7)
                  slti         a3, a1, 2000
                  sra          s7, t3, s0
                  auipc        s8, 484399
                  srli         t5, t0, 26
                  slt          a2, gp, tp
                  sra          t0, s8, t1
                  addi         a7, a7, 12
                  slt          s5, s7, s4
                  xori         t1, a0, -703
                  nop
                  slt          s6, s10, zero
1972:             addi x15, x1, 1
1972:             jalr x15, x15, 0
sub_5:            bne          a6, s9, sub_5_stack_p
sub_5_stack_p:    addi         a7, a7, -44
                  add          tp, s1, t0
                  sltu         t1, tp, t4
                  sltiu        gp, a0, -1618
                  sw           ra, 4(a7)
                  srl          s11, t3, s10
                  blt          s1, t1, 14f
                  or           a2, a3, zero
                  lui          t3, 384515
                  slt          s4, a2, s5
                  srl          a1, s5, s11
                  srl          s9, zero, s10
                  slli         s7, s4, 31
                  add          t5, t0, t1
                  sll          t3, ra, s4
                  sltu         s8, s11, t0
                  sltiu        s2, tp, -1311
                  blt          a7, s1, 21f
                  lui          a6, 688709
                  xor          a2, t0, s4
14:               sltu         s1, tp, t4
                  beq          s0, t0, 21f
                  sltu         s5, s10, gp
                  ori          gp, tp, -1349
                  addi         gp, a3, 650
                  slt          t5, t1, sp
                  ori          a0, s1, 697
21:               srli         s11, ra, 2
                  xori         tp, t1, 1483
                  lw           ra, 4(a7)
                  addi         a7, a7, 44
                  slt          t2, s1, a6
                  or           a3, gp, s2
                  lui          a5, 365170
                  nop
                  xor          t6, t5, tp
                  lui          a1, 531201
                  slt          s10, s2, s7
39:               addi x16, x1, 0
39:               jalr x16, x16, 0
sub_2:            xori         s9, s10, 1025
                  addi         a7, a7, -20
                  lui          s7, 757384
                  sw           ra, 4(a7)
                  sltu         s3, s5, s3
                  add          s5, s7, tp
                  slti         a6, s1, 1014
                  or           a0, t5, s11
                  srl          s4, s9, s11
                  andi         a3, gp, -986
                  addi         ra, zero, -6 #init loop 1 counter
                  addi         gp, zero, -5 #init loop 1 limit
sub_2_1_1_t:      or           t6, s7, gp
                  xori         s1, a6, 1421
                  addi         ra, ra, 1 #update loop 1 counter
                  addi         t4, s8, -1529
                  addi         t2, zero, -4 #init loop 0 counter
                  slti         t4, tp, -1251
                  srli         t3, s6, 11
                  addi         a3, zero, 9 #init loop 0 limit
sub_2_1_0_t:      and          a6, s5, s5
                  addi         t2, t2, 8 #update loop 0 counter
                  sltiu        s1, sp, 2047
                  bltu         t2, a3, sub_2_1_0_t #branch for loop 0
                  slti         s1, a1, 336
                  bne          ra, gp, sub_2_1_1_t #branch for loop 1
                  lui          s10, 722681
                  addi         tp, zero, 7 #init loop 1 counter
                  srai         s2, t3, 8
                  xor          t6, a0, t2
                  addi         s4, zero, 17 #init loop 1 limit
sub_2_2_1_t:      auipc        s10, 898057
                  srai         gp, a5, 5
                  addi         tp, tp, 7 #update loop 1 counter
                  ori          zero, sp, 98
                  addi         a0, zero, 6 #init loop 0 counter
                  sltu         t3, t0, a2
                  and          gp, t2, s6
                  addi         s0, s10, -255
                  addi         ra, zero, 6 #init loop 0 limit
                  addi         t0, t2, 1079
sub_2_2_0_t:      slt          t1, tp, s8
                  addi         a0, a0, -5 #update loop 0 counter
                  ori          a2, t4, -1292
                  andi         t6, t3, -1910
                  bgeu         a0, ra, sub_2_2_0_t #branch for loop 0
                  lui          t5, 321804
                  srl          s1, gp, s0
                  sltiu        a3, s8, -943
                  lui          s8, 715623
                  xor          s6, t6, t2
                  blt          tp, s4, sub_2_2_1_t #branch for loop 1
                  sra          t1, a5, t4
                  addi         a2, zero, 2 #init loop 1 counter
                  slli         a6, t1, 6
                  addi         s11, zero, 12 #init loop 1 limit
                  add          s8, s9, t1
                  slli         zero, t3, 27
                  sll          gp, s11, gp
                  srl          a6, s2, s9
                  sltiu        t2, sp, 1529
                  sub          t1, a0, a4
                  srl          s5, a7, tp
sub_2_7_1_t:      sltiu        a5, a1, -56
                  andi         zero, s3, 1302
                  sra          s10, s0, s2
                  addi         t0, s4, -1056
                  srli         a6, a5, 13
                  slti         t6, t6, 1432
                  addi         a2, a2, 10 #update loop 1 counter
                  addi         tp, zero, -6 #init loop 0 counter
                  addi         s6, zero, 16 #init loop 0 limit
                  lui          t6, 390321
                  srai         s8, t3, 0
sub_2_7_0_t:      lui          s2, 149452
                  nop
                  addi         tp, tp, 7 #update loop 0 counter
                  and          a1, s8, t0
                  blt          tp, s6, sub_2_7_0_t #branch for loop 0
                  and          gp, t4, s3
                  slti         a1, t1, -1076
                  or           a6, s1, t6
                  bne          a2, s11, sub_2_7_1_t #branch for loop 1
                  nop
                  addi         s11, zero, -5 #init loop 1 counter
                  and          a5, s11, t4
                  ori          t4, t3, -82
                  andi         a5, s0, 327
                  addi         a3, zero, 19 #init loop 1 limit
                  srl          ra, a1, a4
sub_2_4_1_t:      sltiu        s6, s7, -81
                  addi         s11, s11, 7 #update loop 1 counter
                  addi         t0, zero, 7 #init loop 0 counter
                  addi         a0, zero, 7 #init loop 0 limit
                  or           t2, t0, sp
sub_2_4_0_t:      sltiu        s10, s7, -1920
                  addi         t0, t0, -1 #update loop 0 counter
                  bgeu         t0, a0, sub_2_4_0_t #branch for loop 0
                  or           s6, t3, s5
                  or           ra, a4, s3
                  sub          s9, gp, a4
                  sltiu        gp, a1, 2005
                  add          s10, s11, s10
                  srai         t4, a0, 12
                  sra          s1, a0, s1
                  xor          zero, s8, a1
                  blt          s11, a3, sub_2_4_1_t #branch for loop 1
                  xori         t4, t1, -2
                  addi         s0, zero, -7 #init loop 1 counter
                  srl          ra, a6, s4
                  srl          ra, s9, s0
                  srai         t0, a2, 23
                  and          s6, a5, a2
                  or           a5, t6, tp
                  ori          s5, a3, -184
                  slt          t2, s9, gp
                  addi         a6, zero, -3 #init loop 1 limit
                  slli         a1, a5, 27
                  srli         s4, s2, 21
sub_2_5_1_t:      nop
                  sra          a3, t3, sp
                  and          s10, t3, s11
                  addi         s0, s0, 10 #update loop 1 counter
                  andi         t1, a2, -1864
                  srli         s4, s0, 9
                  and          t3, sp, t3
                  addi         a0, zero, -6 #init loop 0 counter
                  or           s9, s2, t2
                  addi         s11, zero, 10 #init loop 0 limit
sub_2_5_0_t:      slti         ra, a3, -539
                  ori          t5, a2, -404
                  nop
                  nop
                  sub          s1, t5, s3
                  addi         a0, a0, 8 #update loop 0 counter
                  slt          t3, s6, t6
                  xor          t1, s11, t1
                  xori         zero, t2, 620
                  beq          a0, s11, sub_2_5_0_t #branch for loop 0
                  slt          t5, s8, s10
                  blt          s0, a6, sub_2_5_1_t #branch for loop 1
                  slli         a1, t3, 13
                  addi         t4, zero, -7 #init loop 0 counter
                  xori         s11, s6, -1082
                  and          a3, t3, t6
                  xor          s4, a2, a0
                  add          a5, a7, s0
                  xori         a6, t3, -129
                  xori         zero, s3, -20
                  sltu         t0, s2, tp
                  slli         t3, s11, 30
                  addi         s6, zero, 1 #init loop 0 limit
                  sub          t6, s5, t5
                  xori         ra, s6, -568
                  addi         a1, s5, 748
                  auipc        a2, 378334
sub_2_0_0_t:      ori          a3, a2, -1157
                  xori         s11, s7, -1058
                  ori          s11, tp, 1049
                  or           a5, gp, t4
                  addi         t4, t4, 8 #update loop 0 counter
                  xor          s2, t5, s9
                  sltiu        s1, sp, 833
                  sub          zero, s1, gp
                  andi         tp, t0, -395
                  auipc        a5, 275102
                  slli         t5, s9, 6
                  auipc        s7, 484255
                  srli         gp, s9, 27
                  and          t3, ra, s5
                  blt          t4, s6, sub_2_0_0_t #branch for loop 0
                  auipc        zero, 184750
                  bne          t5, gp, 8f
                  slli         s10, s9, 29
                  xori         ra, s1, 645
                  slt          t2, s4, s2
                  add          t6, sp, s1
                  sltiu        s3, a6, -974
                  sra          t6, a3, t0
                  blt          s5, zero, 18f
8:                slt          t2, a0, t0
                  sub          a5, t6, t3
                  auipc        s1, 1031450
                  lui          s10, 158390
                  slli         s9, s11, 25
                  addi         t2, t4, -1225
                  slti         s7, s10, -1881
                  slli         s9, t0, 6
                  xor          s3, a6, s0
                  slt          s3, s0, a1
18:               andi         t5, t2, -181
                  xor          t0, a1, a7
                  xori         a0, gp, -2036
                  srli         t2, t0, 13
                  add          t4, ra, a6
                  sra          zero, t6, zero
                  addi         a2, zero, -4 #init loop 1 counter
                  sltiu        s5, s4, -1509
                  addi         a5, zero, -14 #init loop 1 limit
sub_2_3_1_t:      and          tp, a3, s2
                  addi         a2, a2, -5 #update loop 1 counter
                  addi         s0, zero, 10 #init loop 0 counter
                  and          s6, a2, a6
                  addi         s9, zero, 3 #init loop 0 limit
                  srli         t0, a5, 29
                  slt          s7, s10, s5
sub_2_3_0_t:      addi         gp, a5, -1011
                  slt          s10, t3, t1
                  addi         s0, s0, -2 #update loop 0 counter
                  sra          t1, a2, s4
                  xor          ra, s9, s2
                  nop
                  bge          s0, s9, sub_2_3_0_t #branch for loop 0
                  bne          a2, a5, sub_2_3_1_t #branch for loop 1
                  slli         ra, a5, 10
                  sltiu        s1, s3, 534
                  lui          t3, 644136
                  auipc        a5, 853079
                  addi         t0, a5, 827
                  add          s11, t5, t5
                  srai         t6, tp, 18
                  slli         a3, a7, 0
                  or           t5, s9, s0
                  and          s1, s1, t0
                  auipc        s0, 877016
                  auipc        t2, 901219
                  srai         t1, s1, 23
                  bne          gp, s3, 51f
                  lui          s8, 183881
                  sltu         t6, gp, s10
                  slt          a1, t0, a4
                  slt          zero, t6, t2
                  xori         a5, a0, -537
                  blt          s7, a7, 58f
                  bne          a1, s9, 63f
                  and          t6, tp, zero
                  srli         a3, a7, 10
                  bltu         s0, a0, 51f
                  auipc        t0, 417590
                  auipc        t0, 607001
                  sub          s2, s9, s4
                  addi         s9, sp, 255
51:               and          t1, a7, a4
                  and          s5, tp, t6
                  srli         tp, a5, 7
                  slli         s4, a4, 17
                  and          t1, t6, zero
                  bne          ra, tp, 74f
                  srai         a2, sp, 4
58:               addi         ra, s2, -1268
                  add          t1, t4, s6
                  sra          t1, a2, s11
                  auipc        a6, 1003911
                  xor          zero, gp, a0
63:               sll          s6, ra, s4
                  add          t3, t2, s6
                  bgeu         t6, s5, 73f
                  bgeu         s6, s4, 86f
                  addi         s3, a4, -1127
                  sll          s11, tp, tp
                  bne          s1, a6, 71f
                  ori          s8, s4, -605
71:               and          s10, s4, s9
                  bge          s8, t5, 85f
73:               sra          a5, a6, zero
74:               sltu         s8, s7, a4
                  add          s3, a4, a7
                  beq          a5, s2, 94f
                  srli         s7, tp, 13
                  slli         s11, s2, 26
                  nop
                  beq          s7, s11, 93f
                  lui          a6, 963456
                  add          zero, a7, a7
                  sltu         zero, s3, s8
                  slt          a6, a0, a0
85:               bltu         a0, s8, 99f
86:               bne          s6, a5, 89f
                  bge          t6, s0, 100f
                  and          a1, t5, t0
89:               sra          s2, s8, a2
                  bne          s3, sp, 92f
                  xori         a6, a2, 744
92:               srai         gp, s6, 23
93:               srl          t1, s11, t5
94:               sltu         t1, s8, t0
                  sltiu        s2, s5, 528
                  sra          s1, tp, t2
                  srai         s2, s10, 7
                  bne          a6, zero, 101f
99:               nop
100:              srai         s2, tp, 19
101:              lui          ra, 85679
                  bgeu         a6, t1, 115f
                  sra          s10, zero, a2
                  and          t6, t3, s9
                  srli         s4, zero, 18
                  add          t4, s4, a4
                  and          s0, t0, s8
                  slli         s0, t6, 12
                  add          t1, a3, ra
                  sub          t6, s4, s4
                  srl          s2, a3, a5
                  slti         gp, s0, -832
                  slti         s10, zero, -1616
                  slli         t6, a4, 26
115:              blt          a0, s11, 130f
                  bne          t5, a7, 129f
                  slt          s4, s3, s8
                  ori          t1, t4, 270
                  bne          s4, t5, 125f
                  bgeu         s5, ra, 125f
                  srli         ra, s11, 24
                  andi         s5, zero, 1296
                  auipc        t1, 205600
                  addi         a2, s6, 1917
125:              bltu         a4, tp, 133f
                  or           ra, a6, a6
                  beq          s5, a7, 144f
                  bge          a1, a3, 144f
129:              addi         s2, t4, 1653
130:              sra          s5, s7, t0
                  srl          s10, s8, t5
                  sra          a1, tp, t6
133:              slli         s5, s7, 21
                  bltu         a5, t0, 142f
                  bne          s4, a5, 141f
                  add          t6, tp, t6
                  bne          ra, t3, 142f
                  sra          s11, s11, s4
                  and          t4, s7, s3
                  sltu         s2, t2, a4
141:              sub          a6, gp, a3
142:              sll          t5, ra, t4
                  ori          t0, s4, 1704
144:              add          t6, zero, a5
                  sltiu        s7, a7, -1256
                  bge          s9, t3, 161f
                  blt          s1, t4, 160f
                  sll          s0, t2, ra
                  srai         t0, a3, 17
                  bgeu         s0, s8, 168f
                  bltu         s7, s9, 153f
                  add          t0, s3, s2
153:              slli         t3, a0, 6
                  or           t6, a1, gp
                  sltu         tp, t5, t6
                  bltu         t6, t2, 171f
                  nop
                  bltu         a5, t5, 166f
                  add          t1, a6, a7
160:              nop
161:              bgeu         sp, s0, 164f
                  and          s11, s7, t1
                  beq          a2, s3, 168f
164:              slli         a0, a4, 24
                  add          s1, s3, s1
166:              slti         s6, s3, -1762
                  bge          a7, s1, 173f
168:              sll          s6, s0, a6
                  addi         s6, tp, -192
                  andi         s3, t3, -839
171:              sll          s7, s5, a1
                  beq          sp, t2, 190f
173:              auipc        s0, 787299
                  sltu         tp, s0, s6
                  srai         t3, s8, 24
                  blt          s2, a3, 189f
                  srli         a3, t4, 13
                  xori         s1, s2, 215
                  slti         ra, t0, 828
                  sltu         s11, a3, s7
                  lui          s3, 690380
                  bne          a6, s8, 195f
                  sra          t0, s3, sp
                  srai         s5, s5, 15
                  slti         t4, s5, -635
                  add          a1, s5, ra
                  slti         a3, s7, -1570
                  slli         s11, t3, 28
189:              xori         a2, a3, -1227
190:              bge          t0, s7, 210f
                  andi         a3, s4, -408
                  slt          s8, t1, tp
                  srai         s8, t0, 4
                  nop
195:              bgeu         t2, a0, 203f
                  bge          t3, a6, 212f
                  bgeu         a1, a6, 203f
                  slli         s7, sp, 23
                  srli         tp, a3, 22
                  sltu         ra, t3, a1
                  xori         s9, a3, 1407
                  beq          sp, s2, 217f
203:              xor          s10, t0, s3
                  nop
                  srli         s2, t6, 9
                  xor          a5, s11, s8
                  bge          s4, s4, 212f
                  slli         s3, s9, 23
                  andi         zero, s5, -419
210:              bne          t4, a0, 212f
                  srl          t6, ra, tp
212:              ori          a6, s1, -475
                  add          t3, t1, a2
                  srli         gp, s8, 27
                  sra          a2, s6, s10
                  sll          a6, t1, a4
217:              blt          s3, s7, 225f
                  blt          gp, t0, 223f
                  or           s2, t0, gp
                  bltu         s9, s6, 240f
                  srli         t4, a7, 1
                  sra          s8, a1, a7
223:              ori          t0, t0, -12
                  slt          t0, a7, t1
225:              and          s3, t3, s0
                  sltu         a3, s3, a7
                  beq          s11, s2, 240f
                  srli         tp, s10, 27
                  nop
                  or           a3, sp, a1
                  srl          s7, s4, a1
                  srli         a5, t2, 18
                  auipc        t3, 745399
                  beq          t3, ra, 250f
                  sub          s6, gp, s10
                  add          a0, t2, s11
                  bltu         t6, t2, 248f
                  sltiu        a6, s5, 1469
                  ori          a6, t2, -1356
240:              srl          s11, t0, t5
                  or           t1, t3, s2
                  blt          a5, t4, 250f
                  bne          a1, s11, 260f
                  sub          t5, t2, a2
                  slt          zero, tp, ra
                  slli         s8, s8, 29
                  bgeu         tp, t5, 250f
248:              bgeu         s3, t1, 262f
                  slti         s1, t0, -1198
250:              and          s6, t6, s3
                  or           s2, s8, a1
                  ori          t0, a1, -1229
                  sltu         s9, t4, a2
                  bgeu         zero, a6, 267f
                  sra          a1, a4, a2
                  sltu         s11, a7, s4
                  andi         t2, zero, 1216
                  addi         a0, s3, -1971
                  xori         s8, t2, 1815
260:              or           s11, a3, s4
                  andi         a3, a6, 973
                  slt          s2, s7, a7
                  xori         t4, a1, -2034
                  nop
                  slt          s1, t5, t5
                  slt          ra, sp, s4
                  slti         s11, a2, -1582
                  or           t2, zero, a4
                  addi         ra, s0, -246
sub_2_j7:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  and          s10, a1, s8
262:              bgeu         s10, s8, 277f
                  blt          t1, t6, 280f
                  srai         s1, a4, 16
                  sltu         s2, t1, t0
                  lui          a2, 685374
267:              addi         a0, a0, 1991
                  add          a2, s8, tp
                  beq          a7, a3, 289f
                  beq          t2, a2, 278f
                  bne          s10, gp, 284f
                  or           s9, s0, t4
                  andi         s7, a4, -859
                  ori          s3, t1, 1872
                  slti         a6, t0, -1843
                  bne          sp, t5, 284f
277:              or           zero, tp, s0
278:              xor          t3, s4, a3
                  slli         s0, s1, 15
280:              lui          a3, 750786
                  andi         t4, s6, -161
                  andi         t6, a6, -1284
                  slti         s11, t4, -890
284:              sub          a5, s2, s9
                  srai         t2, t2, 2
                  sll          t6, t2, a3
                  blt          t5, t6, 300f
                  bne          t3, t2, 293f
289:              or           s2, s9, a0
                  slli         a2, t5, 27
                  xori         t1, t3, 837
                  beq          a0, t0, 306f
293:              srl          s7, t0, a1
                  beq          t1, tp, 297f
                  bne          s11, a0, 300f
                  bge          t4, a2, 314f
297:              auipc        s0, 980684
                  and          tp, gp, gp
                  bltu         s6, s9, 305f
300:              sltiu        a1, t4, 517
                  bltu         s3, t4, 317f
                  slt          s2, t6, a2
                  bge          a4, sp, 318f
                  andi         t1, t0, -1551
305:              sra          a3, zero, s1
306:              bge          a4, gp, 311f
                  sub          s9, a5, sp
                  xor          s0, t6, t4
                  slti         s2, a4, -609
                  add          zero, a2, a3
311:              srai         a1, a5, 0
                  sra          a1, t4, gp
                  bgeu         a0, gp, 321f
314:              lui          a3, 842535
                  lui          t0, 907953
                  bltu         s7, t1, 329f
317:              slti         a2, a4, -699
318:              nop
                  slli         ra, s8, 16
                  auipc        s4, 563072
321:              nop
                  slt          t2, a5, a3
                  bge          t6, t4, 338f
                  beq          zero, t1, 335f
                  addi         s2, zero, 10 #init loop 0 counter
                  add          s8, a4, t3
                  slli         a1, s4, 15
                  sra          a6, a6, s6
                  lui          t2, 259130
                  slti         a1, s10, -133
                  and          t1, s3, s0
                  add          t2, s0, a5
                  addi         t4, zero, 9 #init loop 0 limit
                  and          t6, zero, s4
                  nop
                  sltu         a6, t1, ra
                  lui          s5, 762545
sub_2_6_0_t:      sub          ra, s11, s2
                  sll          t0, a3, tp
                  srl          s6, a7, sp
                  auipc        s5, 325505
                  slt          s8, s7, tp
                  srli         a2, a4, 8
                  addi         s2, s2, -8 #update loop 0 counter
                  add          zero, s0, t4
                  bgeu         s2, t4, sub_2_6_0_t #branch for loop 0
                  xor          zero, t6, s3
                  blt          a7, t5, 338f
                  blt          t2, gp, 342f
                  sll          s9, s5, tp
                  blt          a6, tp, 341f
329:              bgeu         a0, t3, 337f
                  nop
                  beq          a2, a5, 349f
                  srl          s7, s10, a2
                  slli         a3, tp, 31
                  auipc        t3, 188854
335:              srl          a5, a5, a4
                  lui          s1, 792016
337:              beq          s4, s0, 343f
338:              and          t3, s7, a2
                  srl          a5, s7, a6
                  sltiu        t3, s0, -1770
341:              sltu         ra, s1, s5
342:              bgeu         t4, a2, 357f
343:              beq          gp, gp, 346f
                  sltiu        tp, a5, -1372
                  bgeu         t3, s4, 347f
346:              bltu         s6, a1, 348f
347:              bne          ra, s0, 367f
348:              sra          t4, t3, a1
349:              slli         a0, s2, 24
                  srli         s11, s4, 23
                  sltu         t6, t2, s3
                  sltu         gp, s3, zero
                  slli         s11, ra, 26
                  addi         s10, s9, -40
                  slti         s3, ra, 1715
                  xori         a6, t0, -1052
357:              sltu         ra, ra, tp
                  beq          t6, s3, 369f
                  bge          s8, zero, 372f
                  bge          t0, s4, 375f
                  blt          t2, s11, 381f
                  sub          t1, a5, s8
                  and          s11, s4, t1
                  andi         t2, t5, 1472
                  and          ra, t2, t4
                  andi         s3, t1, 2032
367:              sltiu        s11, a2, 396
                  nop
369:              sll          a2, t4, s5
                  blt          a3, t4, 383f
                  xori         t3, s11, 135
372:              srli         s6, s3, 9
                  beq          zero, gp, 378f
                  sltu         a5, a5, s11
375:              and          s8, s0, s0
                  auipc        t0, 820631
                  auipc        t5, 687079
378:              sub          a6, a6, s9
                  bgeu         t3, s6, 394f
                  sra          a2, s9, s3
381:              auipc        a2, 146184
                  sra          s6, s1, a4
383:              blt          zero, t6, 397f
                  slli         a5, t4, 4
                  sll          s4, a0, a1
                  slt          s10, s5, a2
                  auipc        t3, 666282
                  bge          s1, gp, 390f
                  or           zero, tp, a3
390:              addi         t1, s8, -1118
                  and          s0, s7, s9
                  sra          gp, a2, a6
                  xori         a0, t6, -1301
394:              beq          a3, t0, 414f
                  ori          t0, a0, 90
                  bltu         s0, a3, 404f
397:              srli         t5, tp, 10
                  and          s4, a7, s5
                  andi         tp, s11, 1103
                  addi         s10, t0, -1667
                  or           a6, s1, a7
                  bgeu         tp, a4, 410f
                  sub          s11, a5, tp
404:              xor          a6, t1, s2
                  bgeu         s7, a1, 418f
                  sltu         s6, s11, tp
                  xori         tp, t3, 1303
                  bltu         a5, a4, 411f
                  srai         zero, t2, 0
410:              addi         a1, a6, -1947
411:              xori         s11, s10, 1525
                  ori          t5, s8, -866
                  andi         a3, t0, -163
414:              blt          a2, a7, 426f
                  auipc        s10, 295381
                  addi         zero, s3, 1547
                  beq          t3, s2, 426f
418:              blt          t3, gp, 426f
                  and          s10, s11, t6
                  auipc        s9, 99753
                  lui          s11, 588436
                  bge          a5, a6, 426f
                  andi         s3, a0, 593
                  bne          a4, s8, 426f
                  or           a5, ra, gp
426:              sltu         s9, t0, tp
                  andi         t6, t4, 1777
                  lw           ra, 4(a7)
                  sltiu        s5, t2, 1912
                  addi         a7, a7, 20
                  sll          a3, s9, t0
656:              addi x21, x1, 0
656:              jalr x21, x21, 0
sub_3:            andi         t5, a2, 947
                  beq          gp, t1, sub_3_stack_p
sub_3_stack_p:    addi         a7, a7, -32
                  lui          t6, 841982
                  xori         s6, zero, 39
                  srl          a3, s6, zero
                  sw           ra, 4(a7)
                  slt          zero, s11, s5
                  bgeu         s0, s10, 10f
                  xor          t2, s8, sp
                  sll          a5, s9, s1
                  add          t6, s5, zero
                  addi         a3, s5, -1463
                  add          s10, sp, s9
                  slt          s0, s3, a0
                  addi         s0, s7, 1681
                  sll          s4, s8, s10
                  add          t2, t4, s1
10:               nop
                  srl          t6, s6, s9
                  addi         t0, sp, -827
                  lw           ra, 4(a7)
                  sll          t4, t2, ra
                  sub          t0, t5, sp
                  addi         a7, a7, 32
                  lui          s9, 290357
                  srai         a5, sp, 7
                  sub          t4, t6, gp
28:               addi x27, x1, 1
28:               jalr x27, x27, 0
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
.align           2
mtvec_handler:    
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x2, x17, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x12, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x12, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x12, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x12, x6, ecall_handler
                  li x6, 0x1
                  beq x12, x6, instr_fault_handler
                  li x6, 0x5
                  beq x12, x6, load_fault_handler
                  li x6, 0x7
                  beq x12, x6, store_fault_handler
                  li x6, 0xc
                  beq x12, x6, pt_fault_handler
                  li x6, 0xd
                  beq x12, x6, pt_fault_handler
                  li x6, 0xf
                  beq x12, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x17, x2, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
