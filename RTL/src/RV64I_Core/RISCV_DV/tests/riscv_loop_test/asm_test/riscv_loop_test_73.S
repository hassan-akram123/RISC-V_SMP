.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0xf47f506d
                  li x1, 0x80000000
                  li x2, 0x3
                  li x3, 0x0
                  li x5, 0x80000000
                  li x6, 0xfae2e654
                  li x7, 0x76d4f673
                  li x8, 0x4ec65f56
                  li x10, 0x5
                  li x11, 0x80000000
                  li x12, 0xf
                  li x13, 0x51205c2d
                  li x14, 0xca3b784a
                  li x15, 0xfaf90ecd
                  li x16, 0x9431e5a3
                  li x17, 0xfdd790e8
                  li x18, 0x0
                  li x19, 0x6
                  li x20, 0x0
                  li x21, 0x6
                  li x22, 0x5
                  li x23, 0x9
                  li x24, 0xa
                  li x25, 0x5dde36b5
                  li x26, 0x80000000
                  li x27, 0x5102b725
                  li x28, 0x83a109af
                  li x29, 0xf
                  li x30, 0x3
                  li x31, 0xe
                  la x4, user_stack_end
main:             addi         s10, zero, 8 #init loop 0 counter
                  nop
                  slt          s2, s1, s4
                  sltiu        zero, s7, -1031
                  nop
                  srl          s2, s5, gp
                  srl          s0, t4, a6
                  slli         s8, a2, 11
                  addi         t5, zero, 18 #init loop 0 limit
                  sra          ra, s3, s6
                  sll          ra, a5, tp
                  nop
main_8_0_t:       nop
                  sub          s7, t3, s8
                  addi         s10, s10, 7 #update loop 0 counter
                  sltiu        s6, t4, 1691
                  or           s2, t6, s10
                  bltu         s10, t5, main_8_0_t #branch for loop 0
                  slt          t6, s5, s10
                  addi         s7, zero, 10 #init loop 0 counter
                  sra          s11, s2, a4
                  and          a6, s8, s4
                  xori         s9, t1, -238
                  slli         s4, s10, 9
                  slti         a5, a6, 111
                  addi         t5, zero, 10 #init loop 0 limit
                  lui          s10, 255432
                  andi         t0, a5, 937
                  srl          t6, s10, a1
main_1_0_t:       slt          s10, t4, s4
                  srli         a1, t6, 25
                  auipc        s9, 125463
                  nop
                  addi         s7, s7, -7 #update loop 0 counter
                  slt          s9, t1, ra
                  bgeu         s7, t5, main_1_0_t #branch for loop 0
                  sltiu        s4, t4, -238
                  addi         s3, zero, -8 #init loop 0 counter
                  ori          a4, s4, 13
                  addi         s10, zero, 19 #init loop 0 limit
                  sra          t0, t0, a0
main_0_0_t:       sub          s11, s1, s7
                  sra          zero, s3, zero
                  addi         s11, a7, -1385
                  addi         s3, s3, 9 #update loop 0 counter
                  ori          t6, a5, 1192
                  sra          ra, s9, sp
                  blt          s3, s10, main_0_0_t #branch for loop 0
                  xori         zero, a1, 627
                  addi         gp, zero, -5 #init loop 1 counter
                  addi         s3, zero, 8 #init loop 1 limit
                  and          s8, s2, a3
main_12_1_t:      sub          t0, t1, s8
                  slli         a6, sp, 10
                  srl          s8, a5, s4
                  and          s2, s6, a7
                  sub          a0, t3, s4
                  addi         gp, gp, 5 #update loop 1 counter
                  addi         a2, zero, 4 #init loop 0 counter
                  sub          a3, t4, s0
                  addi         a4, zero, 4 #init loop 0 limit
                  xor          s9, s2, sp
main_12_0_t:      sltiu        a5, t3, -226
                  addi         a2, a2, -1 #update loop 0 counter
                  or           a6, s10, s5
                  xori         s8, s5, -310
                  bgeu         a2, a4, main_12_0_t #branch for loop 0
                  slli         s2, t3, 27
                  sltu         a7, a7, a6
                  sra          a1, sp, ra
                  bltu         gp, s3, main_12_1_t #branch for loop 1
                  xor          ra, a4, s5
                  addi         a6, zero, -2 #init loop 1 counter
                  slti         s7, s11, 1712
                  addi         t2, zero, 14 #init loop 1 limit
main_6_1_t:       sltu         zero, s0, s4
                  ori          a0, a0, -1259
                  sltiu        a0, tp, 1795
                  addi         a6, a6, 8 #update loop 1 counter
                  sub          s3, a1, s6
                  addi         s2, zero, -5 #init loop 0 counter
                  slt          a1, tp, a2
                  addi         sp, zero, 3 #init loop 0 limit
                  slt          s9, a2, a7
                  xori         t6, s9, 1409
main_6_0_t:       sltu         s11, s2, gp
                  or           t6, s7, a5
                  addi         s2, s2, 3 #update loop 0 counter
                  andi         s5, t0, -1726
                  bltu         s2, sp, main_6_0_t #branch for loop 0
                  sltu         gp, t4, a2
                  nop
                  sll          a4, a1, s6
                  andi         t0, s7, -1561
                  slli         a4, sp, 17
                  beq          a6, t2, main_6_1_t #branch for loop 1
                  lui          ra, 840181
                  addi         s9, zero, 9 #init loop 1 counter
                  addi         a4, zero, -11 #init loop 1 limit
                  xori         t4, s5, -594
                  xori         s2, s3, -735
main_13_1_t:      sltu         t0, t3, s4
                  andi         zero, s6, -1783
                  slt          sp, a6, a4
                  srai         s3, tp, 12
                  addi         ra, zero, 1596
                  addi         s9, s9, -10 #update loop 1 counter
                  srai         a5, sp, 16
                  addi         s0, zero, -6 #init loop 0 counter
                  sra          s11, ra, s1
                  slt          a7, t4, a6
                  xor          s10, s10, s11
                  addi         gp, zero, 19 #init loop 0 limit
                  lui          t1, 290825
                  andi         a0, s3, -110
main_13_0_t:      auipc        s8, 227461
                  sltu         t4, a1, s4
                  addi         s0, s0, 6 #update loop 0 counter
                  sll          a3, a2, a6
                  blt          s0, gp, main_13_0_t #branch for loop 0
                  auipc        a6, 637959
                  xori         s3, a3, 22
                  beq          s9, a4, main_13_1_t #branch for loop 1
                  sll          a7, a4, s1
                  addi         t4, zero, -9 #init loop 1 counter
                  sltiu        a2, t6, 1456
                  sub          s2, s4, s6
                  andi         s3, t0, -1462
                  slti         s0, s8, -135
                  srai         gp, s8, 17
                  addi         a4, zero, 4 #init loop 1 limit
main_11_1_t:      or           t6, t5, zero
                  addi         t4, t4, 3 #update loop 1 counter
                  sra          t1, a4, a3
                  addi         a0, zero, 7 #init loop 0 counter
                  sltiu        sp, a4, -1953
                  ori          a6, a5, -1084
                  addi         t2, zero, 4 #init loop 0 limit
main_11_0_t:      slti         t1, sp, 892
                  sltiu        ra, s11, -1361
                  addi         a0, a0, -3 #update loop 0 counter
                  xori         s7, sp, 1815
                  lui          s10, 389536
                  sltu         a1, t6, a0
                  srl          s0, s3, ra
                  sltiu        s0, s4, 2004
                  sltu         t6, s7, s9
                  sra          ra, a3, s11
                  nop
                  bgeu         a0, t2, main_11_0_t #branch for loop 0
                  sll          s5, s2, t2
                  ori          t6, gp, -1188
                  ori          t5, tp, -456
                  sltiu        sp, sp, 431
                  bltu         t4, a4, main_11_1_t #branch for loop 1
                  and          zero, s7, s0
                  addi         s10, zero, 10 #init loop 1 counter
                  nop
                  sub          a1, s11, a3
                  and          s7, a7, s4
                  addi         gp, zero, 9 #init loop 1 limit
                  sltiu        t6, s2, -93
                  andi         s7, t6, -1617
main_3_1_t:       slti         s2, s10, -1947
                  addi         s10, s10, -8 #update loop 1 counter
                  srl          s9, a2, t2
                  addi         a4, zero, 6 #init loop 0 counter
                  xor          t0, s0, t5
                  auipc        s2, 78575
                  addi         s0, zero, 6 #init loop 0 limit
                  slli         s6, t4, 20
                  xor          s3, s3, tp
main_3_0_t:       addi         s4, a2, -1201
                  sll          zero, s7, gp
                  ori          a0, s11, -1755
                  addi         a4, a4, -5 #update loop 0 counter
                  slti         t2, s0, -433
                  srl          ra, a2, tp
                  bgeu         a4, s0, main_3_0_t #branch for loop 0
                  ori          a6, sp, -195
                  sltu         ra, ra, s3
                  srli         zero, a4, 25
                  sra          t4, s5, s1
                  xori         s2, s4, -1368
                  lui          t2, 297834
                  sra          sp, t5, s9
                  or           a5, tp, s2
                  bgeu         s10, gp, main_3_1_t #branch for loop 1
                  sltu         s4, a7, s5
                  addi         t6, zero, 10 #init loop 0 counter
                  slli         zero, a5, 27
                  sltu         a6, s5, t0
                  sltiu        s3, s2, -1548
                  andi         a7, s6, -1244
                  and          t5, a3, s8
                  sltu         s9, s5, a5
                  xori         a2, s8, 1050
                  addi         sp, zero, 7 #init loop 0 limit
                  auipc        s9, 697675
main_4_0_t:       or           a1, tp, tp
                  sll          a4, t4, a3
                  nop
                  srai         s5, t6, 11
                  xor          a2, s6, s5
                  slli         t5, sp, 16
                  addi         t6, t6, -5 #update loop 0 counter
                  sltu         a0, t2, s8
                  slt          s6, a4, t5
                  bgeu         t6, sp, main_4_0_t #branch for loop 0
                  sub          a0, t6, s10
                  addi         t6, zero, 9 #init loop 0 counter
                  addi         s7, zero, 8 #init loop 0 limit
main_16_0_t:      xori         a6, a2, 1685
                  addi         t6, t6, -6 #update loop 0 counter
                  bgeu         t6, s7, main_16_0_t #branch for loop 0
                  sll          sp, t0, t6
                  addi         a0, zero, -2 #init loop 0 counter
                  srl          a5, tp, s11
                  sltu         ra, s2, a7
                  slt          s6, t2, t2
                  auipc        t4, 634260
                  sltiu        s8, a6, -1756
                  nop
                  sltiu        s3, ra, 1299
                  addi         a7, t1, 1960
                  addi         a4, zero, -9 #init loop 0 limit
                  srl          gp, ra, a4
main_7_0_t:       xor          gp, s10, s1
                  auipc        t4, 286693
                  srli         t2, a2, 7
                  or           gp, s0, s11
                  addi         a0, a0, -3 #update loop 0 counter
                  sll          s10, s10, a2
                  srl          a1, t1, s8
                  nop
                  lui          t5, 384700
                  andi         gp, a6, 869
                  bge          a0, a4, main_7_0_t #branch for loop 0
                  srai         a7, s11, 17
                  addi         s6, zero, 5 #init loop 1 counter
                  addi         t4, zero, -19 #init loop 1 limit
main_15_1_t:      sltu         t0, ra, a3
                  addi         s6, s6, -8 #update loop 1 counter
                  addi         s11, zero, 0 #init loop 0 counter
                  addi         t1, zero, -16 #init loop 0 limit
main_15_0_t:      addi         zero, s7, 460
                  lui          a1, 755678
                  addi         s11, s11, -2 #update loop 0 counter
                  bge          s11, t1, main_15_0_t #branch for loop 0
                  beq          s6, t4, main_15_1_t #branch for loop 1
                  sltu         a6, s2, s4
                  addi         gp, zero, 8 #init loop 1 counter
                  slli         a1, t5, 17
                  xor          a1, a3, a3
                  srai         t2, a7, 18
                  or           s3, a1, a2
                  add          a4, gp, s6
                  addi         t5, zero, -12 #init loop 1 limit
                  sra          ra, a4, a6
                  xor          t0, s8, gp
                  xori         a3, t5, -1265
main_14_1_t:      addi         a5, s1, 1938
                  andi         t4, a7, 174
                  xori         s3, t2, -1815
                  addi         gp, gp, -10 #update loop 1 counter
                  add          s8, s4, ra
                  addi         s10, zero, 10 #init loop 0 counter
                  addi         s4, zero, 18 #init loop 0 limit
                  xori         s8, s8, -154
main_14_0_t:      slti         s9, s0, -771
                  addi         s10, s10, 9 #update loop 0 counter
                  or           s3, a2, a5
                  slti         s11, s2, -1643
                  blt          s10, s4, main_14_0_t #branch for loop 0
                  lui          s7, 613706
                  sll          a3, ra, t4
                  and          t6, a3, sp
                  bge          gp, t5, main_14_1_t #branch for loop 1
                  and          a1, s0, s3
                  addi         t0, zero, 8 #init loop 0 counter
                  addi         s3, zero, 18 #init loop 0 limit
main_5_0_t:       xori         s4, t2, -1000
                  srai         s0, s5, 19
                  addi         t0, t0, 5 #update loop 0 counter
                  blt          t0, s3, main_5_0_t #branch for loop 0
                  slti         t2, a1, -1478
                  addi         a7, zero, 7 #init loop 0 counter
                  slti         t1, t3, -942
                  addi         a5, zero, 17 #init loop 0 limit
                  and          s3, ra, s1
main_2_0_t:       addi         ra, a7, 150
                  addi         a7, a7, 5 #update loop 0 counter
                  sub          s9, tp, a1
                  bne          a7, a5, main_2_0_t #branch for loop 0
                  nop
                  beq          s7, s11, 13f
                  bgeu         s5, s8, 18f
                  bgeu         sp, t3, 14f
                  lui          t6, 934339
                  sra          ra, gp, a2
                  bltu         s7, s11, 20f
                  andi         a3, s0, 499
                  xor          ra, s4, a7
                  slti         s0, a1, -1381
                  xori         t1, a4, 1121
                  blt          t0, s3, 25f
                  bltu         t4, a6, 16f
                  sub          t5, s5, zero
13:               bgeu         t5, s3, 30f
14:               beq          a2, s8, 18f
                  auipc        s9, 883122
16:               sll          zero, gp, s2
                  andi         gp, s2, 2019
18:               beq          t3, zero, 32f
                  sltiu        s5, s3, 1948
20:               sltiu        a4, s7, -1477
                  xor          a0, zero, s2
                  addi         a6, s1, -1709
                  srli         t1, t0, 19
                  sltu         s10, s5, a7
25:               srai         s5, a6, 9
                  srli         s9, s4, 4
                  bgeu         t5, a6, 29f
                  addi         s5, s2, 380
29:               blt          t0, sp, 47f
30:               ori          t0, t2, 1380
                  sra          s2, a1, s4
32:               srli         s5, a1, 12
                  nop
                  nop
                  beq          ra, zero, 55f
                  xori         s7, a4, 2000
                  add          sp, s2, t2
                  or           s11, s11, s4
                  slti         a4, s3, 685
                  bne          t0, s4, 49f
                  sltu         t2, t1, a6
                  auipc        s6, 41239
                  blt          a0, t5, 48f
                  sub          t6, a5, s0
                  bltu         s8, s10, 54f
                  or           t5, zero, s7
47:               nop
48:               lui          s9, 815103
49:               sltiu        a6, t1, -209
                  slti         t0, a7, -1436
                  addi         ra, a2, -1914
                  addi         s11, a0, -154
                  sltu         t2, s6, a3
54:               slti         s7, a6, -380
55:               xori         s2, t0, -11
                  nop
                  sub          a6, s9, a2
                  srli         s7, s6, 31
                  beq          t2, t4, 71f
                  lui          a2, 572530
                  srl          gp, t0, s10
                  bge          gp, ra, 67f
                  sltiu        t0, s1, 1272
                  ori          a7, s2, -34
                  xori         t4, s8, 930
                  srai         t4, gp, 4
67:               srai         a0, s6, 19
                  sll          s5, a3, t0
                  srl          t6, s5, s0
                  sltiu        s10, t2, -1774
71:               or           a0, s11, tp
                  sub          a5, a1, t4
                  slti         a7, t0, 358
                  xor          t4, t1, a2
                  sub          sp, a2, a0
                  slli         a4, t0, 17
                  bltu         tp, s4, 97f
                  add          s10, a0, a2
                  ori          s6, s2, -84
                  blt          a6, t0, 81f
81:               bge          ra, t1, 87f
                  nop
                  and          t4, s0, t5
                  srl          t0, s8, s1
                  xor          s4, a2, t5
                  addi         ra, zero, -485
87:               xor          ra, s9, s11
                  and          s7, s8, s0
                  srai         s3, s0, 23
                  bgeu         s6, t4, 107f
                  sll          zero, a0, t5
                  slt          s7, t2, t3
                  add          a5, a3, s8
                  ori          a0, tp, -1263
                  bltu         s4, s6, 104f
                  nop
97:               auipc        a4, 970353
                  auipc        t5, 469384
                  and          s0, s1, tp
                  bltu         s1, s10, 106f
                  bge          a6, s9, 120f
                  nop
                  lui          zero, 652907
104:              sltiu        a0, s10, -619
                  slti         s6, t6, -1165
106:              lui          a1, 516122
107:              addi         a2, a2, 344
                  srl          t1, zero, s11
                  andi         a7, s1, -1697
                  xor          t1, s6, t3
                  and          s0, gp, a1
                  nop
                  slli         t4, gp, 17
                  lui          a3, 380547
                  slti         a5, s0, -237
                  bltu         t3, s6, 120f
                  sll          s9, ra, s3
                  srli         s10, tp, 29
                  andi         s5, s5, 1951
120:              lui          t4, 717429
                  addi         s0, zero, 7 #init loop 1 counter
                  sub          t5, a0, a7
                  lui          a5, 628424
                  slt          s7, t3, s1
                  addi         s6, zero, 15 #init loop 1 limit
main_10_1_t:      or           s7, s5, s8
                  add          ra, t6, t5
                  srl          s8, t1, tp
                  addi         s0, s0, 8 #update loop 1 counter
                  slli         a4, a4, 23
                  ori          t0, s11, -866
                  addi         s3, zero, -2 #init loop 0 counter
                  addi         a1, zero, 6 #init loop 0 limit
                  sll          s7, s5, s8
                  sub          a7, s0, t1
                  sra          a6, ra, sp
                  sltu         zero, a2, a1
                  sll          zero, a5, t4
main_10_0_t:      or           t0, s7, s8
                  sra          a0, a0, a4
                  addi         s3, s3, 3 #update loop 0 counter
                  slti         s2, s9, 257
                  slti         a4, t1, -1323
                  bltu         s3, a1, main_10_0_t #branch for loop 0
                  xor          t4, s2, a2
                  sll          a4, s6, ra
                  sub          s5, a7, t0
                  or           gp, t0, t6
                  slt          zero, t5, s10
                  bne          s0, s6, main_10_1_t #branch for loop 1
                  or           s7, t5, sp
                  andi         s11, t2, 901
                  sub          a5, a1, s1
                  blt          ra, s1, 125f
                  bne          a3, ra, 142f
125:              sltu         s3, tp, s8
                  slli         sp, s7, 4
                  bge          s10, ra, 135f
                  slti         s6, t1, 55
                  addi         s8, s2, 32
                  lui          t5, 427831
                  sltu         t1, gp, tp
                  xori         a0, s3, 944
                  sltiu        a0, a7, 1586
                  beq          sp, t3, 140f
135:              bne          s10, a7, 147f
                  slli         t1, a3, 27
                  sra          s5, s11, tp
                  bne          s8, s1, 153f
                  beq          t6, t5, 141f
140:              srai         sp, t4, 8
141:              bne          s9, sp, 158f
142:              bne          t0, t2, 144f
                  srl          s3, gp, t5
144:              bne          a4, s3, 148f
                  srl          s3, t0, s6
                  xori         a6, s1, 1520
147:              sra          s9, s3, sp
148:              auipc        s0, 313399
                  sltiu        s3, t6, -1407
                  slt          s8, tp, s1
                  slt          a4, a4, a2
                  xor          a6, t3, s10
153:              sll          s11, a4, a6
                  and          a7, s0, s7
                  sub          a1, t6, a4
                  slt          s8, s9, s0
                  blt          tp, s3, 175f
158:              auipc        s7, 54600
                  andi         s6, sp, 1093
                  sra          s0, t4, gp
                  bge          a0, a5, 173f
                  andi         s9, a5, 1796
                  slti         zero, s10, 1275
                  nop
                  sltu         s5, t2, a4
                  bne          t1, ra, 167f
167:              bge          tp, t0, 180f
                  sll          t6, a3, t5
                  andi         sp, t1, -1412
                  and          s5, s0, t3
                  and          ra, t5, ra
                  auipc        s11, 638856
173:              bgeu         t0, s5, 179f
                  sll          a5, s0, s11
175:              lui          sp, 335544
                  lui          s10, 5007
                  srai         a5, s5, 0
                  slti         t0, a1, 962
179:              bge          a7, a0, 196f
180:              add          s7, s0, t5
                  sub          sp, t4, t6
                  and          t6, a7, t4
                  srai         t6, s8, 13
                  slli         t0, s8, 2
                  nop
                  blt          a6, s5, 195f
                  slt          s2, zero, tp
                  addi         a6, a5, 225
                  bgeu         s5, s8, 209f
                  slli         s3, s1, 24
                  addi         gp, a5, -361
                  sra          sp, a3, s11
                  sll          a0, s7, s4
                  srli         t6, t1, 23
195:              ori          s11, s2, -314
196:              blt          a2, s9, 202f
                  bgeu         s8, s8, 209f
                  bne          s7, s6, 218f
                  and          s4, t0, t2
                  slti         zero, sp, -762
                  blt          a7, ra, 206f
202:              blt          s10, s5, 206f
                  auipc        t5, 606102
                  ori          t6, s4, 788
                  blt          s2, s4, 214f
206:              xor          s7, s10, s8
                  bge          s9, gp, 216f
                  beq          s4, gp, 223f
209:              xor          a3, s6, s1
                  slli         s9, t6, 18
                  and          t5, t5, t2
                  bge          s4, s3, 231f
                  xori         s2, s5, -959
214:              xori         t1, a0, 1820
                  ori          s5, t2, 720
216:              srai         s2, s4, 26
                  sub          t1, t3, t0
218:              blt          s3, s2, 223f
                  and          s0, gp, s1
                  andi         t4, t3, -1411
                  beq          a5, a4, 233f
                  bne          ra, a2, 240f
223:              slt          sp, a5, a2
                  srai         a5, sp, 16
                  xor          a5, a4, a5
                  slt          s4, t6, t0
                  lui          gp, 538736
                  add          s7, a1, a2
                  nop
                  sll          a5, t2, a4
231:              xor          a5, t4, a5
                  add          ra, t6, a1
233:              beq          s2, a3, 238f
                  bne          s4, t5, 248f
                  srl          a3, t2, a3
                  sltiu        t2, a4, 127
                  addi         s5, a3, -137
238:              sltu         a1, t6, s6
                  slt          t5, t0, sp
240:              sra          a0, s2, ra
                  sltiu        t5, a5, 187
                  nop
                  bne          a1, s9, 260f
                  bge          a5, t0, 250f
                  bltu         s8, ra, 253f
                  slli         a3, s0, 14
                  andi         s3, t5, -639
248:              andi         a2, a1, 786
                  bne          t0, s10, 266f
250:              sll          a7, a6, sp
                  xor          a0, t6, s11
                  auipc        s7, 365919
253:              or           a0, a0, s4
                  beq          s4, t4, 258f
                  add          t6, s3, s4
                  sra          s2, t3, t6
                  bgeu         s4, tp, 276f
258:              xor          s7, s7, t1
                  or           a1, s1, s3
260:              bltu         t6, s0, 269f
                  and          a1, a7, s7
                  slti         s3, t1, 1445
                  addi         s10, s2, -1906
                  auipc        gp, 297449
                  slt          t6, s4, s8
266:              auipc        s0, 28691
                  bgeu         ra, a0, 275f
                  bgeu         s11, t0, 285f
269:              bge          t3, s1, 289f
                  nop
                  or           t0, s2, a6
                  bne          t2, s0, 289f
                  sub          t2, a0, t2
                  nop
275:              srai         sp, t0, 13
276:              sltiu        zero, a2, -876
                  ori          s0, s1, -312
                  sltu         t0, tp, a0
                  andi         a5, t4, -567
                  lui          s2, 325611
                  sll          s4, t1, gp
                  beq          a2, t4, 294f
                  andi         s8, s5, 1456
                  sub          s3, t5, s11
285:              srli         s8, s8, 26
                  xori         s9, gp, -1527
                  xori         sp, t4, -275
                  addi         a0, ra, -1749
289:              bne          gp, t2, 304f
                  bgeu         s11, a1, 291f
291:              srl          s3, t2, s4
                  blt          t3, s11, 298f
                  andi         s9, s9, 1014
294:              bge          a1, a7, 308f
                  auipc        a4, 702907
                  addi         gp, t1, 919
                  lui          s4, 902311
298:              blt          t4, t3, 303f
                  nop
                  sll          t1, tp, t2
                  slt          ra, s10, t3
                  or           ra, tp, tp
303:              bge          zero, a2, 309f
304:              bge          s7, s5, 316f
                  slti         t2, gp, 853
                  slt          gp, a5, a6
                  beq          s8, a1, 325f
308:              addi         t4, t6, 1080
309:              sra          s6, tp, a0
                  sub          t2, s6, s11
                  slli         s6, s10, 11
                  slli         zero, t1, 29
                  bltu         t6, s5, 319f
                  xori         a6, s2, 757
                  slti         s5, s3, 1523
316:              slli         ra, a4, 27
                  add          a0, t6, s3
                  slt          s6, a2, a3
319:              srli         s4, s5, 20
                  xori         t4, s0, -803
                  sub          s2, s0, t0
                  slt          gp, s10, a4
                  sltu         a5, a1, a1
                  sltiu        a7, a3, -756
325:              sub          a5, t6, t0
                  sltu         s10, t3, s0
                  beq          s2, tp, 331f
                  addi         s10, a1, 1026
                  auipc        s2, 46471
                  add          a0, s7, a6
331:              lui          s5, 555249
                  sll          s9, a0, s3
                  blt          s7, ra, 338f
                  sra          a3, t6, ra
                  blt          t4, sp, 350f
                  bgeu         t3, s8, 345f
                  sra          s7, t5, s3
338:              beq          s10, a6, 340f
                  xor          a4, s6, a2
340:              and          t4, s9, a2
                  addi         zero, a6, -1318
                  srli         s6, t4, 14
                  sll          s2, a7, a6
                  srli         ra, s1, 29
345:              auipc        s11, 512631
                  xor          ra, s7, a4
                  slt          t4, zero, tp
                  add          a0, s10, s2
                  auipc        s7, 986848
350:              lui          s10, 502558
                  srai         t1, t4, 9
                  slti         s4, a2, 1577
                  andi         s6, gp, -2038
                  ori          s11, t6, -203
                  ori          t5, sp, 679
                  sltiu        s3, zero, -1562
                  xor          s5, tp, tp
                  bge          a7, ra, 363f
                  srl          t6, t5, tp
                  sra          sp, t4, tp
                  bgeu         a7, a6, 370f
                  xor          t4, t5, a0
363:              beq          a2, a6, 376f
                  sltiu        s3, s10, -1804
                  sll          a1, a0, s2
                  and          t0, tp, a1
                  slli         a0, t6, 15
                  bgeu         t0, s2, 370f
                  lui          t4, 947185
370:              auipc        a2, 203588
                  la           a1, sub_2
                  addi         a2, a2, -443
                  addi         a1, a1, 373
                  xor          a6, gp, sp
                  auipc        s5, 400251
                  and          s9, s5, s11
                  ori          t1, t1, -930
                  xor          a3, s9, a2
                  sra          t2, s1, gp
                  or           zero, t6, t2
main_j2:          jalr         t0, a1, -372 #jump main -> sub_2
                  srl          zero, s0, t2
                  nop
                  or           a7, a3, gp
                  slt          a3, s9, zero
                  ori          s4, a4, -890
376:              sltiu        s9, s9, 1317
                  bge          s5, t1, 397f
                  srli         s3, s1, 1
                  sll          s5, s5, sp
                  lui          s11, 964182
                  bge          a2, a4, 399f
                  xor          s5, a5, s11
                  slti         s5, t0, -1960
                  bltu         a3, t5, 396f
                  bne          a3, ra, 387f
                  bge          a7, t4, 406f
387:              slli         s6, t4, 27
                  ori          t5, gp, 726
                  srli         zero, zero, 27
                  bltu         s6, t3, 408f
                  bgeu         a3, s2, 396f
                  sra          t5, s11, a1
                  nop
                  and          s9, tp, a1
                  srl          sp, s10, s2
396:              add          s6, zero, s4
397:              beq          s11, a5, 405f
                  sub          a1, s10, s7
399:              srai         s3, a6, 22
                  xori         a6, a0, -1852
                  xor          s10, s1, s6
                  nop
                  bne          s4, a2, 415f
                  add          s9, s9, a5
405:              bne          a5, s5, 420f
406:              bne          s4, a7, 415f
                  slt          ra, s1, zero
408:              slt          s11, a4, a1
                  and          a4, s11, a7
                  lui          a3, 976254
                  addi         s7, s11, -314
                  sll          s0, s6, s2
                  ori          s10, gp, -561
                  add          t1, s2, a1
415:              sub          a6, a5, s6
                  sltu         t4, ra, a1
                  srli         t6, ra, 9
                  or           s5, s7, s7
                  add          t0, sp, a7
420:              add          zero, a1, a2
                  and          a4, s10, s9
                  beq          tp, s1, 439f
                  sra          s7, t3, s11
                  srl          gp, zero, a2
                  nop
                  sra          s7, tp, a2
                  add          t6, a3, a0
                  beq          s2, s0, 448f
                  srli         gp, s6, 26
                  slli         s6, t3, 26
                  sltiu        a6, a7, -653
                  sltiu        s5, s3, 1083
                  or           a0, s6, t4
                  slt          s5, t0, t1
                  slt          t0, t3, sp
                  srli         a5, s0, 12
                  nop
                  bge          s4, s2, 457f
439:              srli         t5, t6, 20
                  bgeu         t4, s3, 457f
                  sltiu        zero, s6, -1228
                  bge          s7, t1, 444f
                  blt          a5, a2, 448f
444:              xori         s8, s3, 1141
                  slli         sp, s6, 4
                  beq          ra, ra, 458f
                  bne          t1, a2, 453f
448:              ori          sp, t0, -739
                  srl          a2, s11, s7
                  srai         s11, a5, 17
                  sub          t6, t1, s1
                  srai         t0, s10, 4
453:              slli         s9, a6, 20
                  bgeu         zero, a4, 458f
                  sltiu        a4, t3, -58
                  srai         t2, s4, 18
457:              bgeu         s3, s11, 470f
458:              xor          t5, zero, t5
                  lui          t0, 421399
                  blt          s8, s7, 464f
                  ori          s4, s7, 1864
                  slti         s2, t2, 1188
                  bge          t5, a4, 475f
464:              slli         a4, s1, 3
                  sltu         zero, s7, t0
                  beq          t0, a4, 472f
                  sltu         s10, t1, ra
                  bltu         a5, s5, 485f
                  or           t6, t4, t5
470:              andi         t6, s3, 79
                  slli         a1, s4, 18
472:              ori          s11, t1, -1765
                  auipc        t4, 150
                  sub          sp, a2, s5
475:              auipc        a5, 844692
                  andi         s8, a1, 998
                  or           s10, a4, t4
                  sra          sp, t6, s0
                  xori         s4, t6, -179
                  lui          s5, 848445
                  nop
                  nop
                  slt          s10, a0, a5
                  andi         zero, a3, 92
485:              add          a5, a4, s4
                  sltiu        gp, a0, 125
                  slti         a4, ra, 936
                  blt          ra, zero, 503f
                  addi         a0, s11, 1218
                  add          s11, t3, a3
                  srai         t5, a6, 11
                  slti         s8, s6, -1157
                  slti         a5, a4, -1688
                  addi         t6, s5, -1167
                  sub          zero, ra, sp
                  lui          gp, 462387
                  slti         sp, a6, -149
                  sll          s0, s8, t1
                  slti         zero, s7, -1586
                  or           gp, s1, t0
                  blt          s5, s4, 510f
                  srli         t1, t5, 27
503:              or           a3, a3, t3
                  bltu         s3, t5, 522f
                  srli         s6, a6, 10
                  srl          t0, s5, a2
                  lui          a3, 620054
                  xori         s6, t2, -1889
                  blt          s11, a4, 515f
510:              or           s7, s2, s0
                  sltiu        s3, a2, -1679
                  sltu         s8, a7, a4
                  sltu         s3, a1, a1
                  addi         t6, s10, 244
515:              bge          t3, t4, 524f
                  sub          s7, a5, sp
                  slt          a0, tp, s8
                  bltu         t6, a2, 523f
                  andi         s2, a6, 412
                  sra          t4, s5, s7
                  sub          a2, s9, s0
522:              or           a0, s5, s5
523:              bgeu         s3, a0, 537f
524:              lui          a7, 708620
                  srl          s8, a4, zero
                  auipc        s7, 333258
                  bge          t2, s4, 528f
528:              slli         a1, t4, 2
                  blt          s1, s11, 530f
530:              bge          gp, t1, 550f
                  sub          s2, ra, s0
                  sll          s9, t6, s1
                  blt          s1, a3, 542f
                  auipc        t2, 805662
                  lui          gp, 510630
                  andi         a6, s10, 679
537:              sltiu        sp, t1, -1107
                  slli         s10, s4, 20
                  ori          s0, s10, 1466
                  srl          s4, s6, t5
                  bge          a3, t4, 543f
542:              slt          s5, s0, s7
543:              ori          a5, a6, -1522
                  sltu         a1, s8, t2
                  blt          t1, zero, 562f
                  addi         s2, s7, 858
                  srl          a2, s5, s10
                  sltiu        s0, t4, 1738
                  or           t6, a0, zero
550:              xor          t4, s9, a7
                  sltiu        t0, s0, 650
                  ori          t0, s2, -1405
                  lui          t6, 993600
                  sltiu        a2, a2, -1985
                  beq          s4, a5, 557f
                  bge          s3, s5, 564f
557:              sra          s11, a0, tp
                  srl          a6, a4, a7
                  bge          s10, t4, 573f
                  sll          a5, t1, a1
                  sub          t2, a3, s3
562:              bne          a1, t1, 571f
                  bltu         s0, t3, 578f
564:              srai         s4, s1, 2
                  auipc        t5, 365197
                  bge          a4, s7, 584f
                  or           t1, s4, gp
                  sll          s4, s4, s0
                  sll          a0, t1, t0
                  and          ra, s1, a6
571:              lui          t5, 147923
                  addi         sp, a7, -736
573:              bltu         s6, a3, 579f
                  bltu         s4, s4, 579f
                  and          a6, s2, a2
                  add          t1, s3, s3
                  bge          s5, t0, 594f
578:              beq          a4, s10, 598f
579:              slti         s4, a4, -1785
                  addi         a7, t2, 362
                  bgeu         s6, s4, 598f
                  slt          t0, s11, a5
                  nop
584:              sra          s8, a7, s3
                  auipc        s8, 174407
                  srai         t0, a0, 17
                  sll          s8, t0, t3
                  ori          s6, a1, 152
                  or           s4, a7, zero
                  bge          a6, a0, 602f
                  sltiu        s11, zero, 1823
                  slt          s0, s0, tp
                  xori         s10, a6, -114
594:              sra          a3, t3, a0
                  lui          ra, 734306
                  blt          a0, t1, 609f
                  add          s9, ra, a4
598:              xor          t0, s8, s6
                  bge          s1, s10, 608f
                  sltiu        s3, zero, -108
                  sltiu        gp, s2, 605
602:              addi         s8, s7, 891
                  sub          s5, a4, s10
                  srli         a4, s1, 28
                  bltu         s7, t0, 609f
                  or           a3, s2, s4
                  bgeu         s7, zero, 612f
608:              andi         s3, t0, -163
609:              slli         a3, a7, 16
                  sltu         gp, t2, s1
                  lui          s7, 223912
612:              auipc        t2, 539679
                  blt          s9, s8, 625f
                  andi         t1, a5, -268
                  bltu         t1, a2, 620f
                  sltiu        a5, t6, 1173
                  bge          a1, ra, 623f
                  xor          a3, s11, s3
                  slti         a0, ra, 1970
620:              sub          s6, gp, s5
                  srl          a5, t3, ra
                  sltiu        t0, a2, -1130
623:              lui          s2, 530871
                  ori          s2, a0, -295
625:              bgeu         t1, s11, 629f
                  bltu         a5, s2, 632f
                  ori          s9, a1, -945
                  ori          a5, t5, 562
629:              blt          s2, sp, 647f
                  xor          s9, t2, ra
                  lui          t6, 121748
632:              blt          a3, gp, 647f
                  srli         s9, tp, 14
                  slt          s3, a6, s9
                  sll          a5, s3, a6
                  srli         t1, s1, 21
                  add          a0, s0, s7
                  bltu         s7, zero, 650f
                  sub          t5, t3, ra
                  srai         t2, a1, 17
                  nop
                  lui          s4, 369245
                  andi         t6, s5, 221
                  sltu         a4, zero, a0
                  ori          s2, s6, 1284
                  sltiu        s0, s5, 915
647:              slli         a7, s0, 9
                  xori         a1, s3, -1503
                  sll          t4, t3, s4
650:              andi         s5, a0, 2038
                  or           a5, t6, ra
                  and          s3, a5, t4
                  srli         a7, s11, 18
                  add          a6, s7, sp
                  sra          s11, s0, a2
                  andi         t4, a2, 1256
                  bltu         a7, s10, 676f
                  sra          a7, t0, a7
                  bne          s4, t3, 677f
                  beq          s0, a5, 661f
661:              ori          sp, a4, 887
                  sltiu        s8, a7, 1439
                  and          a4, gp, a6
                  add          t5, s5, tp
                  ori          zero, a2, -207
                  bltu         a3, a4, 670f
                  sub          s2, ra, a0
                  srl          t4, s6, s2
                  and          t2, t0, s5
670:              add          a2, s0, s4
                  or           s6, a6, a0
                  sll          t5, s9, gp
                  srai         t5, t5, 21
                  sll          a2, s5, a0
                  sltiu        t6, tp, -1529
676:              srai         s8, a4, 6
677:              bge          s5, s2, 689f
                  srai         s7, a3, 27
                  sltu         s3, a3, s11
                  beq          a0, t4, 686f
                  sltiu        zero, s9, -444
                  bltu         a5, t0, 691f
                  andi         s11, a2, 2017
                  la           a0, sub_1
                  addi         s5, zero, -180
                  auipc        s5, 37703
                  slli         s0, s2, 6
                  slti         s2, t4, -1231
                  sltiu        t6, s10, 1207
                  lui          s2, 211386
                  slti         s7, s5, 1178
                  xor          s3, a1, s8
                  lui          t2, 1009590
                  addi         a0, a0, -565
                  slli         t2, a1, 6
main_j1:          jalr         t0, a0, 565 #jump main -> sub_1
                  slti         s10, a6, -1371
                  ori          s5, s2, -1031
686:              xor          zero, sp, s9
                  lui          s3, 88219
                  xori         t6, a1, -1219
689:              sra          s8, s11, a7
                  srl          sp, a0, sp
691:              bgeu         s2, s11, 703f
                  xor          a6, t1, s7
                  andi         t1, s7, -1753
                  add          ra, s5, a0
                  bne          zero, s10, 699f
                  sll          t2, t1, t5
                  lui          t1, 473415
                  bge          s7, s11, 718f
699:              ori          t1, s7, 1386
                  sltu         t6, s10, s0
                  lui          ra, 528205
                  xor          a2, s7, s0
703:              bge          a0, s5, 722f
                  srl          s3, tp, a4
                  addi         s7, t0, -1711
                  srli         a7, a6, 18
                  sll          zero, t1, s5
                  bne          t0, s2, 717f
                  xor          a5, tp, s9
                  beq          a2, tp, 727f
                  xor          sp, s9, t6
                  nop
                  or           ra, s9, a1
                  bltu         a0, s2, 732f
                  blt          t5, gp, 729f
                  slti         sp, a3, 1524
717:              bge          a3, s6, 722f
718:              addi         ra, a4, -391
                  sll          a4, t4, gp
                  slti         a0, a2, 1533
                  or           a0, ra, a0
722:              or           sp, s4, t1
                  sltiu        t6, t3, 523
                  sra          a5, a4, a0
                  bgeu         a2, s10, 740f
                  beq          ra, sp, 735f
727:              addi         t5, s6, 557
                  andi         t4, zero, 85
729:              ori          s7, tp, -1514
                  slt          a7, s3, s5
                  xori         s0, t0, -1897
732:              bne          t6, s10, 738f
                  add          t5, t3, a4
                  lui          ra, 838325
735:              sll          ra, s0, s9
                  andi         sp, t3, -1032
                  sltiu        s0, a1, -158
738:              auipc        a4, 673502
                  add          a7, s1, a7
740:              slt          ra, s9, t1
                  srl          t0, s9, t4
                  slli         a1, t1, 6
                  srai         s8, a7, 22
                  add          s4, s8, s6
                  srli         a3, s6, 21
                  bge          s9, s4, 754f
                  beq          s10, a6, 762f
                  bge          s4, a2, 750f
                  xor          s2, s1, s5
750:              blt          a4, t0, 770f
                  auipc        a0, 653343
                  bltu         a4, a7, 769f
                  slti         t0, t1, -1708
754:              and          a2, a7, t3
                  sll          t6, a5, tp
                  sltu         t4, s3, sp
                  bltu         s8, a2, 763f
                  bne          s11, s11, 775f
                  sub          s5, t4, zero
                  sltiu        a7, t4, 103
                  slti         ra, t0, 443
762:              sub          a0, a1, s8
763:              ori          gp, s3, 1784
                  sub          sp, a5, s4
                  srl          s6, a3, s4
                  slt          zero, s3, s6
                  slli         s5, a1, 10
                  sub          s3, s9, s1
769:              srai         s0, s1, 0
770:              beq          sp, s8, 782f
                  sra          gp, s4, t0
                  sll          s0, s11, s6
                  bge          zero, s8, 786f
                  ori          s9, s10, 364
775:              xor          s9, a0, s8
                  bge          a5, t5, 778f
                  ori          s4, s7, -694
778:              bge          ra, ra, 783f
                  add          a2, s11, a2
                  sra          s11, s10, a2
                  andi         s5, s4, 1559
782:              srli         gp, t1, 14
783:              xor          s4, a6, t2
                  nop
                  add          t0, s9, s5
786:              and          s6, ra, a7
                  auipc        s9, 690948
                  sltiu        t4, s7, 1143
                  sll          t2, s8, zero
                  slli         s8, a4, 10
                  sltu         a0, t0, a7
                  sub          a5, s2, s1
                  xor          s0, s6, t4
                  and          s0, s3, s9
                  bgeu         sp, zero, 800f
                  blt          s6, s6, 800f
                  addi         s8, s5, -667
                  slti         t0, a2, 1692
                  beq          a4, a3, 805f
800:              bgeu         t5, t2, 801f
801:              andi         a2, a2, 908
                  nop
                  bgeu         t4, s4, 812f
                  add          t6, t2, a1
805:              addi         sp, s9, -1050
                  auipc        a1, 929269
                  andi         ra, a1, 1209
                  bgeu         s9, s11, 820f
                  addi         ra, s9, 543
                  sltiu        a0, zero, 249
                  sltu         t5, s5, a4
812:              andi         sp, s9, 187
                  add          t5, s0, s11
                  auipc        s6, 861225
                  nop
                  bne          s7, s2, 820f
                  bge          a1, t5, 819f
                  slti         a7, s1, -1079
819:              nop
820:              nop
                  srli         a7, ra, 22
                  slli         t2, a5, 27
                  slli         s0, a1, 8
                  nop
                  sra          s8, a7, s5
                  slti         t2, s7, 1251
                  xor          a2, t3, t1
                  slt          s2, s5, a4
                  and          s2, s6, t0
                  bge          sp, s8, 842f
                  bgeu         s11, t4, 850f
                  xori         s11, gp, 260
                  sll          a7, s9, s2
                  srai         s9, s2, 16
                  slt          a7, s4, t6
                  bgeu         a2, t6, 850f
                  xor          a3, s11, s8
                  bgeu         a0, s3, 843f
                  auipc        s9, 992167
                  srli         a0, t5, 22
                  srai         s11, s4, 7
842:              ori          a6, a7, 177
                  addi         s7, zero, 10 #init loop 0 counter
                  lui          s2, 860379
                  add          t0, s4, a4
                  addi         s8, zero, 17 #init loop 0 limit
                  andi         sp, a1, -368
main_9_0_t:       sltu         s4, a2, s11
                  xori         s3, s4, 1919
                  slli         s11, sp, 17
                  auipc        gp, 965806
                  sltiu        t1, t5, -291
                  lui          a5, 682029
                  addi         a2, s1, 1866
                  auipc        s0, 490945
                  slti         gp, t5, 353
                  ori          gp, a6, 1231
                  addi         s7, s7, 8 #update loop 0 counter
                  and          s5, zero, t4
                  andi         sp, s9, -386
                  ori          t2, a7, 777
                  slti         s0, a3, 708
                  srai         a6, a6, 1
                  slli         a7, gp, 14
                  srai         s9, t2, 18
                  sub          s3, ra, s9
                  sra          t6, a7, a4
                  sra          a0, s2, sp
                  blt          s7, s8, main_9_0_t #branch for loop 0
                  and          s3, a7, s5
843:              slli         s2, s6, 28
                  add          a3, t3, s11
                  or           zero, t5, a7
                  and          gp, s6, s8
                  lui          t1, 571280
                  andi         a6, a4, -113
                  bge          a4, s2, 858f
850:              lui          a5, 762026
                  nop
                  sltu         a5, s8, t2
                  sub          s4, a3, s4
                  sub          a1, sp, t2
                  sub          t4, a5, zero
                  bltu         t1, a4, 859f
                  beq          ra, s10, 859f
858:              addi         t4, s8, -19
859:              add          s7, s4, t1
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            addi         tp, tp, -12
                  auipc        s10, 891128
                  sw           t0, 4(tp)
                  sltu         sp, s0, t5
                  lui          a5, 864810
                  auipc        s2, 476936
                  nop
                  and          a7, t2, a6
                  auipc        s7, 25450
                  sltu         s6, s11, a2
                  sltu         s6, t4, t4
                  add          sp, s0, a5
                  sltu         s11, a2, a2
                  sll          a6, t3, s4
                  srl          sp, a6, s2
sub_3_j5:         jal          t0, sub_5 #jump sub_3 -> sub_5
                  bgeu         s4, a4, 1f
1:                xor          a6, t5, a6
                  blt          t2, a1, 3f
3:                or           t1, sp, s8
                  bgeu         a4, a0, 10f
                  add          gp, a5, s4
                  sra          ra, tp, s5
                  blt          sp, s10, 10f
                  bne          gp, t2, 9f
9:                andi         t5, a4, 1159
10:               nop
                  lw           t0, 4(tp)
                  sub          ra, s6, s8
                  or           s3, sp, a3
                  sub          s6, t0, s9
                  lui          s9, 277558
                  addi         tp, tp, 12
                  srl          t5, t5, s8
                  auipc        a6, 632003
                  xor          t1, a3, a2
                  sltiu        s6, s2, 747
                  slt          a0, s4, s0
                  ori          s7, s1, 905
39:               addi x25, x5, 0
39:               jalr x25, x25, 0
sub_5:            sltiu        gp, ra, -1187
                  slt          a7, t0, sp
                  blt          sp, a7, sub_5_stack_p
                  xori         s3, s6, 1062
                  sltu         zero, t3, s4
sub_5_stack_p:    addi         tp, tp, -16
                  sw           t0, 4(tp)
                  andi         s6, s10, 220
                  and          s10, a4, a2
                  addi         a4, s6, 1735
                  or           t0, sp, a7
                  bge          gp, tp, 4f
                  slti         a6, t5, -1586
                  srli         a0, s10, 8
4:                sub          s0, s5, s4
                  auipc        t1, 367434
                  addi         a3, s0, -1072
                  bge          t4, s4, 23f
                  nop
                  lui          a6, 189910
                  xori         a7, s2, -1863
                  slti         a1, ra, 747
                  sltiu        t0, t4, -325
                  or           t6, s6, s10
                  add          s0, a6, s2
                  beq          s5, tp, 23f
                  beq          a3, s3, 18f
                  bge          s2, tp, 32f
18:               slli         s3, s6, 7
                  or           t0, t2, t4
                  slt          t1, s0, s0
                  blt          a1, s11, 37f
                  bge          s6, s0, 23f
23:               bge          a4, a0, 37f
                  nop
                  or           a4, s4, t6
                  srl          s7, t4, ra
                  nop
                  bne          t5, t6, 39f
                  sll          a7, t4, a6
                  xori         t1, a3, -128
                  andi         a1, s9, -7
32:               slt          a7, t4, a5
                  lui          s6, 99216
                  ori          s9, t2, -352
                  andi         t5, t4, -1868
                  bne          s5, s4, 47f
37:               ori          s8, s8, 6
                  sltu         t2, s3, tp
39:               slli         s9, s11, 10
                  addi         a3, zero, 10 #init loop 1 counter
                  sltiu        s11, t4, -309
                  addi         sp, zero, 10 #init loop 1 limit
                  andi         a1, tp, 1563
sub_5_0_1_t:      sub          s4, tp, s9
                  addi         a3, a3, -8 #update loop 1 counter
                  addi         t0, zero, 9 #init loop 0 counter
                  lui          t5, 466353
                  addi         s3, zero, -11 #init loop 0 limit
sub_5_0_0_t:      sltiu        s6, a7, -1944
                  add          a5, a2, s9
                  addi         t0, t0, -10 #update loop 0 counter
                  bne          t0, s3, sub_5_0_0_t #branch for loop 0
                  sra          s8, gp, a5
                  bgeu         a3, sp, sub_5_0_1_t #branch for loop 1
                  slli         s9, a1, 3
                  slti         s10, s2, -54
                  add          t0, gp, a6
                  xori         t4, t5, 740
                  sll          s7, s10, sp
                  slli         a7, s2, 30
                  nop
                  bltu         t3, s1, 47f
47:               beq          zero, t6, 49f
                  nop
49:               sub          zero, tp, a6
                  beq          a1, a5, 56f
                  addi         t1, s4, 2039
                  ori          t2, a3, 174
                  andi         t2, a4, -743
                  sltu         a7, s0, s3
                  srli         zero, tp, 19
56:               andi         s11, t2, 47
                  bgeu         s6, gp, 77f
                  bne          s5, zero, 59f
59:               nop
                  bge          gp, ra, 72f
                  xor          t0, sp, a5
                  sltu         a0, zero, t4
                  ori          t6, a4, 796
                  beq          s9, ra, 66f
                  sra          t6, s1, ra
66:               beq          s4, s0, 77f
                  nop
                  bgeu         ra, a6, 77f
                  and          s8, t5, t4
                  andi         s9, a6, -1853
                  blt          s2, s11, 76f
72:               bge          t6, a0, 77f
                  bne          a0, a4, 77f
                  blt          s0, t5, 77f
                  srl          s3, a3, tp
76:               blt          zero, a2, 77f
77:               slt          s10, s0, s10
                  lw           t0, 4(tp)
                  ori          s11, s4, 584
                  or           t6, t0, tp
                  addi         tp, tp, 16
                  sub          ra, a7, a5
109:              addi x26, x5, 0
109:              jalr x26, x26, 0
sub_2:            bge          t2, s0, sub_2_stack_p
                  slt          t4, s1, a4
sub_2_stack_p:    addi         tp, tp, -36
                  ori          s8, s4, -1478
                  ori          t4, s11, -1415
                  addi         t4, a3, -852
                  sw           t0, 4(tp)
                  auipc        s4, 72472
                  or           s4, t3, s9
                  addi         a4, zero, 4 #init loop 1 counter
                  nop
                  addi         s7, t6, 1345
                  sra          s10, s5, s3
                  addi         s11, zero, 18 #init loop 1 limit
                  sltiu        s2, s1, -1575
sub_2_1_1_t:      or           t6, t0, s7
                  addi         a4, a4, 7 #update loop 1 counter
                  srli         s9, a0, 12
                  and          a5, a6, s7
                  addi         sp, zero, 8 #init loop 0 counter
                  lui          t2, 647970
                  addi         a3, zero, 4 #init loop 0 limit
                  nop
                  xori         gp, t4, 343
                  srli         t5, zero, 23
sub_2_1_0_t:      andi         s3, a7, 1893
                  sub          s3, s1, a7
                  ori          a5, tp, 1989
                  addi         a6, a5, 556
                  addi         sp, sp, -3 #update loop 0 counter
                  add          zero, t4, s9
                  bgeu         sp, a3, sub_2_1_0_t #branch for loop 0
                  andi         gp, s9, 374
                  slti         s9, tp, 1201
                  bne          a4, s11, sub_2_1_1_t #branch for loop 1
                  xori         s10, gp, 663
                  addi         s9, zero, 3 #init loop 1 counter
                  addi         gp, zero, -1 #init loop 1 limit
                  slli         a5, a7, 7
sub_2_2_1_t:      ori          zero, a4, 318
                  addi         s9, s9, -2 #update loop 1 counter
                  addi         t6, zero, 2 #init loop 0 counter
                  addi         a4, zero, -7 #init loop 0 limit
sub_2_2_0_t:      sltiu        s11, a5, -1307
                  addi         t6, t6, -9 #update loop 0 counter
                  bne          t6, a4, sub_2_2_0_t #branch for loop 0
                  bne          s9, gp, sub_2_2_1_t #branch for loop 1
                  or           a3, s3, s2
                  auipc        ra, 67833
                  lui          a0, 747943
                  auipc        s2, 557448
                  slt          t2, zero, t5
                  and          t1, t6, s2
                  bgeu         t4, a6, 18f
                  or           sp, s0, s7
                  ori          a7, sp, 113
                  srli         t1, a3, 18
                  slti         s3, t2, 1596
                  or           gp, s10, t6
                  addi         t2, zero, 6 #init loop 0 counter
                  slti         s3, a0, 640
                  and          a1, t0, a7
                  addi         s9, zero, 17 #init loop 0 limit
                  lui          s5, 923447
                  sub          a0, a5, a4
                  slli         zero, s8, 31
                  auipc        s5, 1036525
                  nop
sub_2_0_0_t:      lui          s6, 802563
                  xor          ra, zero, s5
                  addi         t2, t2, 1 #update loop 0 counter
                  xor          a5, s8, s0
                  sll          s5, ra, s9
                  andi         s4, s9, 534
                  nop
                  slt          t4, gp, s7
                  xor          a6, s8, a5
                  sltu         t5, t5, s5
                  sra          a6, s9, t4
                  blt          t2, s9, sub_2_0_0_t #branch for loop 0
                  sltu         a1, s10, a2
                  sll          s5, a6, s2
                  srl          a0, sp, s3
                  beq          s8, ra, 23f
                  sltiu        s5, s1, 1740
                  auipc        a3, 301690
                  srai         sp, t4, 1
                  sra          a1, s2, s7
18:               sub          s0, a4, t4
                  addi         s0, s11, 1940
                  nop
                  slli         a6, s6, 29
                  addi         t0, s0, 894
23:               sra          a3, s5, a3
                  slti         t1, a4, 1987
                  slt          t6, s8, s6
                  or           s2, t5, sp
                  blt          a7, a5, 38f
                  sltiu        t2, a5, -1141
                  addi         t6, a5, -826
                  sltiu        a2, t5, -1033
                  srli         a6, zero, 9
                  slt          a4, t0, a0
                  or           s0, a6, a5
                  slt          a7, s2, a5
                  xor          s0, s9, s0
                  sll          a1, t3, t3
                  xori         s7, s11, 1994
38:               srai         zero, s3, 24
                  sub          t6, tp, a2
                  srli         s0, s1, 22
                  auipc        s8, 728930
                  sub          t6, s8, s4
                  ori          a1, s10, 482
                  sltu         a7, s8, gp
                  slt          a3, s7, a3
                  or           a0, s8, s0
                  sub          s11, t6, gp
                  srai         ra, s0, 17
                  slli         a7, ra, 9
                  slti         s10, t0, -529
                  srai         s6, a5, 15
                  or           s3, a0, t6
                  sltiu        zero, a4, 35
                  slt          s6, t4, a5
                  bne          s10, t2, 71f
                  xor          s2, t4, tp
                  xori         a3, a0, -1472
                  andi         s4, s8, 594
                  bgeu         a3, a2, 68f
                  addi         zero, a5, -701
                  add          s7, sp, s6
                  slli         gp, s7, 3
                  srli         a3, a0, 19
                  sra          s8, a7, a6
                  bltu         a3, tp, 80f
                  bne          a7, s0, 77f
                  beq          t0, s5, 83f
68:               and          a2, t1, a4
                  srl          t2, a1, a1
                  andi         gp, tp, -871
71:               bge          s8, s9, 90f
                  beq          a6, t2, 84f
                  slli         s5, s8, 19
                  slti         t0, a3, -1626
                  slt          a0, sp, t5
                  or           a0, a1, s6
77:               sll          s4, s1, t0
                  add          a4, s4, s0
                  sub          a6, s1, a0
80:               sub          s9, a7, a5
                  slt          s10, a2, s8
                  bltu         t4, s6, 96f
83:               nop
84:               slti         a7, tp, 1929
                  srl          a0, s1, t4
                  sll          s11, a2, a2
                  bge          t5, s11, 98f
                  lui          t1, 718703
                  slt          a0, a1, t0
90:               or           a0, t6, s3
                  addi         a4, a5, -1759
                  slt          a6, tp, s2
                  lui          s6, 874121
                  addi         t5, t0, -1830
                  sltu         s9, s11, t4
96:               bne          t2, s1, 112f
                  lui          sp, 638768
98:               ori          t6, s0, -1827
                  blt          s4, ra, 106f
                  sltu         s10, s3, a7
                  sub          t4, t5, s2
                  or           s0, s8, t3
                  xor          a1, s0, s11
                  nop
                  slt          a3, t5, s8
106:              slti         s5, s7, 1535
                  bge          ra, s4, 121f
                  and          a3, a2, s8
                  srli         s9, s5, 19
                  and          a0, s3, t5
                  and          s4, zero, t1
112:              sltu         t1, zero, a6
                  xor          zero, s10, a0
                  auipc        a4, 213652
                  or           a2, a1, a1
                  or           t4, s11, t2
                  bltu         ra, s11, 123f
                  bge          a2, s7, 130f
                  lui          a5, 276768
                  xori         a5, s10, -1327
121:              slt          ra, t0, a3
                  bgeu         tp, s3, 125f
123:              slt          t0, a6, s9
                  xor          a6, tp, s2
125:              auipc        t6, 236407
                  bltu         a2, a7, 146f
                  and          t1, zero, sp
                  sltu         s5, s4, t5
                  bne          a7, s4, 137f
130:              ori          t0, s5, 82
                  or           a6, tp, t6
                  bne          s5, s5, 142f
                  srl          a3, s10, s0
                  or           s0, s1, s4
                  blt          s4, a7, 144f
                  sll          s7, a7, t0
137:              lui          s10, 755470
                  and          t6, a1, t3
                  slt          s4, a1, t0
                  andi         ra, t1, 1089
                  sub          s7, a7, a3
142:              sltiu        zero, a2, -1471
                  slti         t1, a3, 910
144:              auipc        a0, 563675
                  auipc        s4, 173299
146:              and          a0, a0, a3
                  add          a0, a7, a4
                  nop
                  addi         gp, a0, 21
                  andi         a5, s2, 819
                  auipc        t4, 183555
                  bltu         s5, t2, 158f
                  bgeu         s9, t1, 158f
                  or           t0, s2, sp
                  lui          s3, 510181
                  add          t0, a3, s3
                  beq          tp, t4, 158f
158:              slli         zero, ra, 4
                  lw           t0, 4(tp)
                  addi         tp, tp, 36
                  slti         gp, tp, -30
                  sltu         s2, s10, a0
                  sra          a6, gp, a5
234:              addi x12, x5, 0
234:              jalr x12, x12, 0
sub_4:            add          s9, t1, a2
                  addi         tp, tp, -28
                  ori          sp, zero, 929
                  srai         a2, s8, 14
                  sw           t0, 4(tp)
                  auipc        a2, 539482
                  sll          t4, a7, s10
                  andi         gp, sp, 312
                  andi         t5, s1, -805
                  ori          t4, s0, 1012
                  srl          zero, a0, a7
                  addi         a7, zero, -3 #init loop 0 counter
                  lui          s0, 850048
                  sll          a4, t5, s5
                  and          s8, a4, t5
                  add          s6, t0, s11
                  addi         a2, zero, -4 #init loop 0 limit
                  add          t6, s6, a6
                  sll          a4, s0, s6
                  or           a4, tp, s8
                  addi         s9, a5, 40
                  sltu         zero, s1, s2
                  xor          s7, a2, a3
sub_4_0_0_t:      sltiu        a6, s5, 744
                  nop
                  xor          t1, t1, s0
                  addi         a7, a7, -2 #update loop 0 counter
                  andi         t0, t1, 630
                  sll          s9, a4, a7
                  srl          a6, a6, a7
                  auipc        s4, 733679
                  bge          a7, a2, sub_4_0_0_t #branch for loop 0
                  auipc        s2, 71330
                  addi         sp, zero, 8 #init loop 0 counter
                  srl          gp, a6, t6
                  and          a6, s0, s9
                  addi         a6, s0, 1345
                  slt          s11, sp, t5
                  xor          a2, s6, s1
                  addi         t2, zero, -13 #init loop 0 limit
                  add          s11, a2, t6
                  srli         ra, s1, 6
                  addi         t0, s8, 1546
                  sub          a4, a5, s4
                  slti         t0, s5, 394
                  nop
                  auipc        s5, 105763
                  srai         t1, zero, 26
sub_4_4_0_t:      addi         t6, a3, 104
                  slti         t4, sp, 1284
                  nop
                  slti         s9, s5, -844
                  add          a7, s3, a0
                  sltu         s10, s9, a6
                  addi         gp, t4, -586
                  nop
                  lui          t6, 475851
                  slt          s4, s4, t0
                  addi         sp, sp, -3 #update loop 0 counter
                  sra          s0, a6, s10
                  xori         a6, s7, 932
                  bne          sp, t2, sub_4_4_0_t #branch for loop 0
                  slti         s11, s8, -952
                  addi         a3, zero, -2 #init loop 1 counter
                  sll          t4, a0, t2
                  slti         sp, a4, -1227
                  addi         s2, zero, 12 #init loop 1 limit
                  sltiu        t1, zero, 382
sub_4_3_1_t:      xor          ra, t2, t3
                  ori          a0, s3, 234
                  srl          sp, s3, s2
                  addi         a3, a3, 7 #update loop 1 counter
                  addi         ra, s10, 654
                  addi         s4, zero, -1 #init loop 0 counter
                  add          a5, s9, a2
                  sltu         s7, zero, a6
                  addi         a4, zero, 10 #init loop 0 limit
sub_4_3_0_t:      or           s7, s6, t4
                  xor          a1, s11, t1
                  addi         s4, s4, 4 #update loop 0 counter
                  addi         sp, a5, 737
                  addi         a6, s4, -780
                  xori         a2, a0, 1041
                  bltu         s4, a4, sub_4_3_0_t #branch for loop 0
                  bne          a3, s2, sub_4_3_1_t #branch for loop 1
                  srai         s0, s5, 0
                  addi         s7, zero, -6 #init loop 1 counter
                  lui          t0, 568429
                  addi         a1, zero, 15 #init loop 1 limit
                  sra          s3, s8, t5
                  slti         s6, s10, -1902
sub_4_7_1_t:      sltu         t4, a3, a3
                  andi         a7, sp, -722
                  addi         s7, s7, 9 #update loop 1 counter
                  addi         sp, zero, -3 #init loop 0 counter
                  srai         t2, t1, 25
                  slli         gp, t3, 22
                  xori         t6, sp, 579
                  andi         s6, a7, 258
                  addi         a4, zero, 15 #init loop 0 limit
sub_4_7_0_t:      slt          t6, zero, a4
                  andi         s6, s2, 922
                  ori          a0, s7, -291
                  addi         sp, sp, 4 #update loop 0 counter
                  slli         s4, t6, 1
                  blt          sp, a4, sub_4_7_0_t #branch for loop 0
                  andi         s2, a1, 225
                  blt          s7, a1, sub_4_7_1_t #branch for loop 1
                  slti         a7, a1, 1939
                  addi         s10, zero, 10 #init loop 0 counter
                  xori         ra, a2, -1610
                  lui          s9, 927529
                  addi         a5, s5, 128
                  ori          zero, t0, 1182
                  xori         t2, a0, 388
                  lui          s7, 235093
                  add          a0, s3, s5
                  slt          sp, s10, tp
                  addi         a5, s5, -1746
                  slli         t6, t2, 2
                  and          s5, a3, s3
                  or           a4, t5, a5
                  addi         a7, zero, 11 #init loop 0 limit
                  addi         t5, gp, 519
sub_4_8_0_t:      slti         t5, tp, -810
                  auipc        s7, 717361
                  sll          t6, gp, t1
                  slt          a0, a6, zero
                  addi         s10, s10, 9 #update loop 0 counter
                  auipc        a0, 545717
                  bltu         s10, a7, sub_4_8_0_t #branch for loop 0
                  sra          gp, s10, s9
                  addi         t5, zero, 8 #init loop 1 counter
                  addi         t1, zero, 5 #init loop 1 limit
                  lui          s3, 344897
sub_4_2_1_t:      add          s8, a2, t5
                  or           zero, s3, s5
                  addi         t5, t5, -3 #update loop 1 counter
                  addi         a0, zero, 0 #init loop 0 counter
                  srli         a1, sp, 1
                  addi         t0, zero, 10 #init loop 0 limit
                  lui          a6, 150729
sub_4_2_0_t:      or           zero, t5, s9
                  add          zero, a0, a0
                  xor          s3, gp, s11
                  addi         a0, a0, 10 #update loop 0 counter
                  sltiu        s7, t0, -1450
                  srli         s3, a7, 5
                  andi         t4, t3, -597
                  beq          a0, t0, sub_4_2_0_t #branch for loop 0
                  bne          t5, t1, sub_4_2_1_t #branch for loop 1
                  nop
                  addi         s10, zero, 5 #init loop 0 counter
                  xor          s7, sp, t2
                  xori         t6, a1, 527
                  xor          s5, s5, s7
                  xori         a3, s3, 1096
                  slti         gp, sp, -1035
                  lui          a3, 477323
                  sltiu        sp, a0, 345
                  sltu         t5, zero, a5
                  sltiu        s2, a0, 474
                  addi         a5, zero, 12 #init loop 0 limit
                  lui          s6, 80378
                  sltiu        a4, s5, 1547
                  slti         a0, t1, 401
                  sltiu        t0, a4, 860
sub_4_10_0_t:     sltu         s7, a1, a1
                  sll          a3, a4, a0
                  addi         s10, s10, 7 #update loop 0 counter
                  slli         t4, a3, 27
                  xor          a4, s3, t1
                  ori          sp, s7, 904
                  auipc        t5, 224504
                  add          t4, a5, a4
                  ori          t4, a6, -728
                  srai         gp, s5, 23
                  or           t0, s5, ra
                  slti         s0, s10, 975
                  nop
                  blt          s10, a5, sub_4_10_0_t #branch for loop 0
                  sra          t0, s11, s4
                  addi         s3, zero, 10 #init loop 1 counter
                  addi         s7, zero, 2 #init loop 1 limit
sub_4_11_1_t:     slt          t2, s11, a7
                  addi         s3, s3, -6 #update loop 1 counter
                  addi         t5, zero, 5 #init loop 0 counter
                  addi         a6, zero, 13 #init loop 0 limit
                  xori         ra, t2, -609
sub_4_11_0_t:     lui          s9, 17240
                  addi         t5, t5, 8 #update loop 0 counter
                  bltu         t5, a6, sub_4_11_0_t #branch for loop 0
                  bge          s3, s7, sub_4_11_1_t #branch for loop 1
                  andi         a2, a0, -1807
                  addi         s2, zero, -4 #init loop 0 counter
                  sub          a3, s10, s9
                  addi         ra, zero, 5 #init loop 0 limit
                  slli         s6, a4, 16
sub_4_9_0_t:      nop
                  auipc        t5, 574289
                  sltiu        s6, s1, -915
                  and          s4, t6, s2
                  addi         s6, t6, -1679
                  addi         s2, s2, 9 #update loop 0 counter
                  bne          s2, ra, sub_4_9_0_t #branch for loop 0
                  srli         a1, a2, 13
                  addi         sp, zero, 0 #init loop 0 counter
                  addi         t2, zero, 13 #init loop 0 limit
sub_4_1_0_t:      add          s3, ra, s5
                  addi         sp, sp, 5 #update loop 0 counter
                  blt          sp, t2, sub_4_1_0_t #branch for loop 0
                  srl          t1, a5, s11
                  auipc        a4, 97984
                  sll          t6, s8, t4
                  addi         s2, a1, -510
                  slli         s6, t6, 23
                  lui          a6, 269230
                  sra          t6, s9, sp
                  bltu         a1, tp, 22f
                  and          s5, s4, t5
                  bgeu         a0, s6, 11f
                  slti         gp, s8, -394
                  srai         t4, t0, 26
11:               ori          a2, s3, -1131
                  blt          a5, a0, 31f
                  or           s8, a0, s8
                  sub          gp, ra, s0
                  auipc        t0, 568937
                  srai         s0, t1, 0
                  slli         s0, a3, 18
                  nop
                  sra          a6, a7, gp
                  bne          s1, s9, 23f
                  beq          s5, s0, 40f
22:               sll          s5, a5, t5
23:               slli         t6, s8, 15
                  beq          s1, s9, 37f
                  bge          t2, a3, 31f
                  xori         gp, a2, 920
                  sltiu        a4, a0, 398
                  sltu         zero, s9, s3
                  srai         t0, a1, 13
                  slli         s0, s9, 26
31:               bge          a6, a6, 35f
                  slti         a0, a3, 1699
                  auipc        a0, 1047052
                  sll          s4, t5, s0
35:               blt          t2, t6, 51f
                  xor          ra, t5, s1
37:               lui          s8, 813131
                  bne          a4, zero, 49f
                  slli         s10, s11, 23
40:               bgeu         a4, ra, 49f
                  sll          a2, a3, s8
                  bne          t1, t5, 47f
                  auipc        t4, 301
                  and          t6, ra, a2
                  and          a2, s9, zero
                  slti         t2, s6, 893
47:               beq          s8, a3, 64f
                  sltiu        a0, ra, 575
49:               slt          t4, a0, a4
                  slli         t2, t2, 9
51:               slt          s6, s3, s6
                  sltiu        s6, s3, -1298
                  xor          s9, s11, t2
                  xori         a2, a3, -130
                  blt          t0, t5, 57f
                  add          s5, sp, s11
57:               and          sp, zero, a2
                  beq          a7, a1, 64f
                  sra          gp, s5, s4
                  andi         t6, a4, -598
                  nop
                  add          t0, gp, a6
                  beq          s4, a3, 64f
64:               bgeu         s1, t6, 78f
                  srai         s4, s0, 29
                  addi         t5, a1, -1313
                  srli         s4, t0, 1
                  sub          s7, tp, a4
                  or           t0, s5, s9
                  or           s0, s10, gp
                  and          t2, a0, t1
                  slti         s8, s5, 1383
                  sll          s11, s5, gp
                  bne          t0, gp, 86f
                  lui          zero, 619824
                  sltiu        a4, s7, 695
                  lui          a3, 806400
78:               slli         a3, a5, 4
                  and          s7, t2, a6
                  sra          s3, t3, a0
                  sltu         t2, zero, zero
                  xori         t5, ra, 126
                  sra          s6, s7, t5
                  slti         t2, s9, -1445
                  sltu         s9, a0, sp
86:               srl          t4, a6, t1
                  nop
                  and          sp, a1, zero
                  lui          zero, 894852
                  slli         a4, s8, 16
                  srl          a7, t0, s9
                  auipc        s2, 349603
                  sll          t0, s10, tp
                  srl          a0, t6, t6
                  or           a1, s6, a7
                  ori          a3, s7, 1729
                  xori         gp, s7, 434
                  and          s8, s9, s11
                  beq          t1, s11, 102f
                  bne          s4, s11, 116f
                  beq          sp, s0, 115f
102:              slli         sp, t5, 6
                  bge          a4, t2, 106f
                  bltu         s3, sp, 105f
105:              bgeu         a1, a7, 116f
106:              sra          s4, sp, a0
                  xor          s4, a5, a7
                  beq          gp, a6, 124f
                  srli         s4, s5, 27
                  slti         t2, a7, 240
                  sltiu        s2, s2, -1729
                  xori         zero, t6, 1375
                  or           s2, a7, a7
                  sll          t0, s4, s8
115:              auipc        t4, 1001541
116:              sub          zero, s3, a6
                  andi         s10, s9, -286
                  nop
                  ori          a3, s10, -1594
                  sra          a3, t0, s5
                  srli         s3, t2, 13
                  auipc        s8, 1034748
                  bgeu         s10, sp, 132f
124:              or           ra, t4, a3
                  addi         s7, s9, -723
                  bgeu         t5, a4, 137f
                  slti         t4, t3, 1952
                  sltu         s4, a1, a3
                  blt          ra, a2, 141f
                  sra          s11, ra, a1
                  srli         a2, a1, 29
132:              xor          s9, s3, s3
                  nop
                  slli         s9, tp, 11
                  srl          a3, s9, sp
                  srli         t6, a1, 4
137:              slt          s3, a7, s11
                  add          s5, sp, ra
                  or           sp, zero, t5
                  sltu         a5, s2, sp
141:              lui          s6, 81391
                  slt          t6, s0, s5
                  andi         a5, t5, 717
                  sltu         zero, t4, s11
                  bgeu         s4, t2, 161f
                  andi         a4, s6, 1054
                  sra          a5, s11, a3
                  sltu         t2, t1, tp
                  ori          t4, t3, 1381
                  auipc        a1, 505953
                  addi         t2, zero, -1687
                  or           a6, sp, a3
                  and          a1, sp, s11
                  sub          s11, s3, s3
                  beq          tp, t3, 171f
                  sltiu        a6, s3, -969
                  auipc        s5, 587284
                  bltu         gp, a7, 174f
                  slli         a6, s6, 27
                  srli         s9, t4, 8
161:              srai         t5, a0, 20
                  slti         sp, s11, 852
                  sra          a0, ra, t6
                  sra          t6, t5, s7
                  andi         t5, s1, -738
                  sll          a4, s11, sp
                  sra          s2, t5, t5
                  or           s11, a7, s1
                  slt          s0, t1, s3
                  xor          a3, t4, a5
171:              srai         s4, a3, 28
                  sra          t0, s11, a3
                  srli         a3, s7, 28
174:              sltu         s9, a6, t6
                  sra          sp, t4, s8
                  ori          s2, tp, 178
                  bgeu         ra, s7, 178f
178:              or           s0, t3, gp
                  sub          t1, zero, t1
                  nop
                  lui          s8, 251086
                  slli         s7, s10, 7
                  sra          t0, zero, tp
                  or           a5, zero, ra
                  bge          s2, a2, 197f
                  xor          t1, s8, ra
                  srai         s11, s8, 27
                  or           a1, t0, t3
                  slt          gp, s6, s9
                  sltiu        s3, s10, -652
                  or           a4, t6, t4
                  or           a2, t2, t6
                  andi         s4, s6, 852
                  xori         ra, s9, 1220
                  srli         s10, sp, 6
                  sra          s10, s7, s1
197:              srai         a7, t5, 1
                  sub          t1, s10, sp
                  sltu         zero, s1, a7
                  xori         t4, s4, -1166
                  bge          a2, s11, 217f
                  lui          a1, 569621
                  bge          a5, a4, 220f
                  sltu         a3, a1, sp
                  bltu         zero, t1, 216f
                  sub          t4, sp, t0
                  blt          a5, t6, 210f
                  slti         s3, s0, -1522
                  sll          t2, t2, a6
210:              andi         s9, a7, 1142
                  slli         a5, gp, 31
                  bgeu         tp, a4, 224f
                  srli         t1, s1, 24
                  add          s6, a7, t6
                  andi         ra, t5, -1394
216:              ori          s5, a7, -1011
217:              or           t0, t2, s1
                  and          t0, t1, s6
                  slti         t0, s2, 1234
220:              blt          a0, s5, 226f
                  auipc        a6, 1001236
                  bne          s5, a2, 223f
223:              blt          t6, ra, 226f
224:              blt          a7, t0, 243f
                  andi         sp, s7, -540
226:              sra          a0, t2, s3
                  bgeu         t1, gp, 240f
                  sltiu        a5, a3, -267
                  bgeu         t6, tp, 243f
                  slli         a3, s8, 15
                  srli         ra, a6, 31
                  nop
                  andi         s3, s4, -65
                  bge          s8, s0, 245f
                  slli         a5, s11, 28
                  bgeu         t3, s9, 239f
                  beq          s2, s11, 253f
                  sra          gp, a4, gp
239:              sra          s3, a1, a5
240:              ori          t5, s3, -1077
                  sll          zero, t4, t2
                  sltu         a0, s11, tp
243:              blt          a4, a0, 252f
                  sub          t6, s3, s9
245:              srl          t1, sp, t5
                  srli         a2, tp, 4
                  xor          a7, gp, s9
                  srli         a1, a1, 2
                  sltu         s3, tp, s1
                  bgeu         zero, s1, 253f
                  ori          t0, tp, 1797
252:              add          ra, a3, s3
253:              bgeu         a5, ra, 259f
                  bge          sp, s1, 270f
                  ori          s4, ra, -447
                  slli         a1, ra, 31
                  slt          a1, t6, s3
                  nop
259:              sll          t6, a5, t3
                  srai         a4, a1, 30
                  sltiu        sp, a6, -14
                  bge          s10, a6, 281f
                  sltiu        t0, tp, 821
                  srl          s10, s10, s11
                  or           s11, gp, a3
                  addi         s11, zero, 10 #init loop 0 counter
                  lui          zero, 777244
                  sll          t4, s2, s4
                  sub          s8, s10, a7
                  srl          t4, t2, t4
                  nop
                  addi         ra, zero, 10 #init loop 0 limit
                  xori         t5, s4, -1402
                  sub          t2, t6, s3
                  xori         a5, t4, -885
                  sub          gp, s1, ra
                  xor          t1, t0, a1
                  add          s4, t2, a3
                  ori          s3, s0, 128
                  slti         a6, a6, 1470
                  auipc        t0, 886506
sub_4_5_0_t:      nop
                  add          sp, a1, a4
                  addi         s11, s11, -8 #update loop 0 counter
                  lui          a1, 989945
                  bgeu         s11, ra, sub_4_5_0_t #branch for loop 0
                  srli         a5, s3, 13
                  slti         s10, a1, -761
                  bge          s11, a5, 269f
                  slt          t5, t6, t5
269:              bgeu         a0, t4, 280f
270:              lui          s9, 615637
                  xori         t5, a0, -864
                  lui          sp, 698860
                  slli         a0, t0, 27
                  xori         t0, a1, 503
                  sra          a0, s2, a2
                  blt          s5, s0, 280f
                  add          a4, s1, t1
                  slti         t0, s9, -1376
                  sltiu        t1, s7, 434
280:              nop
281:              lui          t6, 166268
                  slti         a5, zero, 367
                  bltu         a0, a0, 297f
                  bne          a4, t6, 300f
                  xor          a6, t4, a4
                  slt          s4, sp, tp
                  lui          s3, 843693
                  and          a6, a0, s9
                  lui          a7, 1037975
                  andi         t2, s5, -1530
                  or           s4, a7, a3
                  beq          s10, t2, 297f
                  bltu         s1, t4, 309f
                  srai         ra, t3, 24
                  srli         t6, tp, 18
                  sltu         s9, a3, t5
297:              blt          tp, ra, 306f
                  bgeu         a1, s7, 302f
                  bge          ra, a7, 302f
300:              bgeu         a2, s7, 306f
                  blt          a7, t1, 317f
302:              addi         a5, t4, 1621
                  xori         s3, a4, 925
                  xor          a2, s2, s11
                  sltiu        s0, gp, 969
306:              xori         zero, a4, 1165
                  bgeu         s1, a5, 313f
                  bgeu         t3, s2, 324f
309:              srl          s8, a4, s6
                  ori          gp, sp, 1717
                  slli         s2, s10, 21
                  bgeu         t0, gp, 315f
313:              andi         a5, a3, -42
                  sltu         a7, a5, a4
315:              ori          s9, gp, -1559
                  nop
317:              andi         gp, tp, 671
                  bge          s3, a7, 337f
                  addi         t6, s4, 444
                  bgeu         tp, t3, 336f
                  sra          s7, s0, s7
                  xori         s5, s7, -1288
                  sltiu        a1, s6, 7
324:              bge          s0, s1, 336f
                  slt          gp, tp, s1
                  xori         s7, s0, 1224
                  auipc        s9, 91925
                  slti         t2, a4, -1279
                  bne          tp, t4, 330f
330:              ori          s0, t3, -588
                  and          s5, t2, t2
                  andi         s10, s0, 1112
                  nop
                  auipc        s9, 967098
                  sltiu        s10, a3, -1991
336:              add          a6, t1, a0
337:              ori          s8, ra, -2000
                  ori          a6, gp, 1891
                  andi         a4, a6, 311
                  sub          zero, s11, a2
                  sll          t6, s7, t1
                  bge          ra, ra, 351f
                  slli         sp, t1, 26
                  slt          s8, t3, t4
                  bgeu         s1, t0, 346f
                  addi         a2, zero, -8 #init loop 0 counter
                  andi         s6, s11, 221
                  addi         s11, zero, 19 #init loop 0 limit
sub_4_6_0_t:      ori          s2, t6, 1017
                  or           s4, s8, s9
                  addi         a2, a2, 9 #update loop 0 counter
                  srli         a5, s8, 28
                  ori          t1, s4, -37
                  lui          s6, 313411
                  ori          a0, s1, -184
                  xori         a5, s4, 2015
                  beq          a2, s11, sub_4_6_0_t #branch for loop 0
                  add          s8, s4, t4
346:              auipc        t6, 648322
                  slli         a0, gp, 26
                  slti         t0, t6, 1120
                  sltu         zero, t3, s0
                  sra          s10, t0, s7
351:              bge          s10, t6, 364f
                  or           a7, s11, a1
                  beq          a2, s4, 369f
                  slti         a6, tp, 1174
                  slli         a2, s1, 30
                  sll          a7, a1, s4
                  sltu         a0, a4, s1
                  srli         t0, a5, 28
                  bltu         t3, s7, 375f
                  bne          s5, t6, 363f
                  slti         a3, a6, 1015
                  sltu         a6, t6, ra
363:              ori          a0, a7, -849
364:              bgeu         t3, a7, 381f
                  srli         zero, s3, 24
                  or           t0, a1, t1
                  srai         s4, s7, 1
                  bltu         gp, a3, 380f
369:              slli         t1, t6, 31
                  xori         s6, s8, -1647
                  slt          zero, t5, a1
                  bltu         s3, t5, 374f
                  slli         ra, s2, 9
374:              xor          a1, a6, s0
375:              bne          a1, s6, 391f
                  sltu         t2, a7, gp
                  auipc        t4, 956073
                  slti         a7, t4, -147
                  xor          s6, a5, a6
380:              nop
381:              sub          a0, s1, a5
                  ori          a7, ra, -617
                  auipc        s7, 516930
                  lui          t6, 548115
                  auipc        t2, 963659
                  beq          s2, s11, 395f
                  auipc        s2, 860786
                  sll          gp, t3, t3
                  andi         t5, t3, -786
                  nop
                  addi         s3, zero, 9 #init loop 1 counter
                  ori          t4, t2, 513
                  srai         s9, zero, 17
                  slli         ra, ra, 4
                  xori         s6, s1, 1327
                  addi         s5, zero, 7 #init loop 1 limit
sub_4_12_1_t:     and          sp, t1, a4
                  or           s11, a1, s2
                  sltu         s2, a7, t3
                  addi         s3, s3, -6 #update loop 1 counter
                  srl          s8, t1, s10
                  sltu         s4, a4, s11
                  andi         a7, a4, -2040
                  sltiu        a2, s5, -239
                  sra          a3, t3, s8
                  addi         t5, zero, -8 #init loop 0 counter
                  xori         t2, sp, -1164
                  addi         a1, zero, -15 #init loop 0 limit
                  or           s9, a0, s3
sub_4_12_0_t:     ori          a0, tp, 1772
                  lui          ra, 1031352
                  sra          a4, s8, s6
                  addi         t5, t5, -8 #update loop 0 counter
                  nop
                  bge          t5, a1, sub_4_12_0_t #branch for loop 0
                  and          zero, sp, s9
                  xor          a0, a3, s7
                  xori         a7, gp, -241
                  bgeu         s3, s5, sub_4_12_1_t #branch for loop 1
                  srl          s11, a6, a0
391:              srl          s0, t0, s11
                  bne          s11, zero, 395f
                  beq          gp, sp, 407f
                  sltu         sp, s1, s1
395:              slli         s8, s11, 21
                  and          ra, s5, s10
                  xori         a5, s0, 350
                  or           t0, a3, a7
                  addi         a1, s4, 820
                  addi         s0, t6, -1083
                  slli         s7, a0, 5
                  bge          sp, ra, 416f
                  slti         a5, a7, -379
                  andi         t5, a1, 302
                  slt          t4, t2, t6
                  beq          t5, sp, 425f
407:              auipc        s3, 988307
                  sltu         t0, s5, a7
                  srli         t6, s0, 1
                  xori         s3, a7, 1234
                  xori         t4, a0, -1563
                  addi         s5, a2, -646
                  bne          s7, zero, 424f
                  auipc        a1, 768081
                  bne          tp, t3, 426f
416:              lui          s11, 723428
                  lui          s3, 611625
                  and          a6, s6, s5
                  lui          t6, 725904
                  add          s3, sp, s2
                  addi         t5, s11, -243
                  bne          a0, s6, 427f
                  srai         a2, t3, 30
424:              srli         s6, gp, 21
425:              blt          s11, gp, 436f
426:              srl          s7, s7, t3
427:              ori          t1, s1, -799
                  srl          t1, a1, s6
                  lui          zero, 498502
                  ori          s7, t3, 1313
                  srai         s7, a0, 25
                  nop
                  add          sp, a7, a7
                  bge          sp, zero, 445f
                  xori         t1, a3, 621
436:              lui          s0, 96489
                  xori         s5, s8, 1011
                  slt          a5, t4, gp
                  slti         t5, s2, -1299
                  slt          s6, a1, sp
                  or           t2, s8, a5
                  bge          s0, s0, 445f
                  sltu         t5, s0, t6
                  slti         a3, t2, -1393
445:              slli         t4, a5, 22
                  sltiu        gp, t1, 1173
                  slti         s8, s4, -947
                  srai         gp, t4, 1
                  blt          a1, a4, 465f
                  bge          s5, s6, 455f
                  xori         s6, a4, 21
                  bltu         t3, t2, 455f
                  andi         a0, s8, 1408
                  xori         a4, s5, -969
455:              xor          a0, ra, s3
                  xori         s11, s1, 1218
                  srli         s3, t0, 21
                  xori         a3, s11, -523
                  srl          t4, s5, a7
                  sra          a1, s6, a7
                  ori          s10, s11, 209
                  bgeu         s2, t5, 481f
                  auipc        s10, 300731
                  sltu         a7, a2, s0
465:              bne          s7, s9, 481f
                  srai         t2, t0, 1
                  sra          s2, s9, s5
                  sll          gp, tp, t4
                  nop
                  lui          s8, 631821
                  sub          ra, a1, a0
                  bltu         s3, t5, 488f
                  auipc        s2, 185880
                  and          a7, a1, s1
                  add          zero, t1, gp
                  blt          t0, t0, 488f
                  bltu         a0, s11, 494f
                  sra          a6, s8, t6
                  blt          s5, t0, 481f
                  andi         t4, a0, 2036
481:              slt          t4, s3, t3
                  andi         s11, zero, -919
                  sltiu        a0, tp, -1358
                  blt          s3, s8, 487f
                  sltiu        a3, s8, -14
                  sll          s9, s4, s6
487:              blt          t2, s7, 498f
488:              addi         a3, s2, 974
                  add          t0, t0, tp
                  sub          s7, s1, sp
                  slli         t4, t6, 5
                  sltiu        a4, a3, 1514
                  or           s0, sp, zero
494:              srai         s11, a5, 6
                  slli         s2, a4, 12
                  auipc        s0, 609869
                  bltu         t4, t3, 506f
498:              bge          t5, a1, 504f
                  sltiu        ra, s8, -1017
                  xor          a6, sp, t0
                  addi         s3, a1, -1175
                  sra          s5, tp, s8
                  sltu         ra, s11, t0
504:              bge          sp, s1, 516f
                  xori         a3, ra, -584
506:              blt          a6, a4, 525f
                  slt          s9, t6, gp
                  and          s3, t1, a2
                  bgeu         t5, a6, 512f
                  sltu         s10, a1, s4
                  srli         a5, s7, 30
512:              slli         a3, t1, 10
                  auipc        ra, 307808
                  sub          s6, s8, ra
                  sltiu        t4, t2, -1359
516:              bne          tp, s11, 520f
                  sll          s8, a5, t3
                  xori         s9, a2, 380
                  bgeu         ra, t6, 530f
520:              srl          s6, s8, gp
                  add          t1, s4, s8
                  lui          s8, 913152
                  blt          s11, s6, 532f
                  bge          a1, a1, 540f
525:              and          t4, a0, s9
                  sub          sp, ra, gp
                  bltu         s3, t1, 543f
                  sub          s2, a7, t5
                  bgeu         s5, s1, 535f
530:              ori          gp, zero, -1722
                  sltiu        s11, s8, 1398
532:              srl          t1, s9, tp
                  lui          s6, 1020638
                  sub          a2, tp, s8
535:              slti         t5, t3, -978
                  slt          s2, a2, t3
                  auipc        s5, 242475
                  slli         t2, t2, 24
                  xori         s3, s5, 267
540:              xor          s11, s2, s3
                  bge          t0, a5, 557f
                  blt          a3, a0, 543f
543:              bge          t3, sp, 557f
                  bltu         s8, zero, 545f
545:              bge          tp, a2, 559f
                  and          s6, s3, s2
                  add          a0, t4, s8
                  xori         s0, t5, 2042
                  blt          a7, t0, 562f
                  sltiu        a7, s11, -367
                  xor          t6, a1, s3
                  xori         s4, s10, 1534
                  andi         t0, t5, 1443
                  bgeu         s0, s9, 570f
                  bltu         gp, t2, 558f
                  and          ra, a1, a1
557:              auipc        a6, 237872
558:              sltiu        t1, a6, -1232
559:              sltiu        s11, t2, 1619
                  srl          s2, zero, a7
                  or           t0, s10, s0
562:              nop
                  slli         s5, t4, 10
                  sltiu        t1, t2, 950
                  addi         t1, s10, -657
                  bge          s10, s3, 578f
                  srli         a5, s7, 25
                  beq          s7, t5, 574f
                  xor          gp, sp, a3
570:              slt          s3, a0, ra
                  blt          a7, s5, 587f
                  bge          s0, s7, 588f
                  beq          t4, a6, 590f
574:              srli         a2, a2, 24
                  sltiu        a6, t3, -1244
                  sll          s5, a6, t4
                  sltiu        s9, t6, -1968
578:              blt          a5, a6, 579f
579:              sub          a2, t6, s7
                  blt          a3, a0, 592f
                  bltu         s10, s9, 583f
                  andi         t6, s1, -1503
583:              blt          a6, a5, 599f
                  blt          a6, s6, 598f
                  bge          s3, a3, 586f
586:              srl          s8, a4, t1
587:              lui          a7, 277460
588:              beq          a3, a6, 597f
                  srli         ra, s10, 28
590:              bne          t5, t2, 601f
                  srai         a7, s7, 15
592:              bge          gp, t5, 601f
                  bgeu         s7, t4, 609f
                  bltu         a6, s0, 605f
                  lui          s3, 454714
                  xori         s2, a3, 1858
597:              sra          zero, a2, t5
598:              sll          s8, s7, s7
599:              ori          s3, s9, 447
                  ori          a0, a4, -578
601:              bltu         s3, s0, 617f
                  bge          t1, a4, 608f
                  and          a7, zero, t6
                  xor          s4, a2, gp
605:              slt          s3, s5, a0
                  xori         s9, a7, -907
                  bge          a2, tp, 626f
608:              sltiu        s4, tp, 1464
609:              add          a6, a4, a4
                  xori         a3, a6, 826
                  andi         s3, t2, -1121
                  ori          a2, s10, -812
                  nop
                  or           s11, a4, a3
                  xor          a6, t1, sp
                  slli         s11, t6, 21
617:              bltu         t2, sp, 622f
                  sltiu        t0, a0, 1232
                  addi         s0, a7, 878
                  slli         a7, gp, 6
                  addi         s3, s8, 944
622:              add          a4, a5, s6
                  bgeu         a2, s1, 637f
                  sltiu        s2, a5, 1011
                  xor          a1, s1, s9
626:              sltiu        t4, t1, 766
                  addi         a0, t6, -619
                  nop
                  sub          s11, t0, t5
                  slt          a7, s3, t5
                  sltu         gp, s0, t5
                  srai         a5, a3, 3
                  andi         t2, a0, 1866
                  slli         s4, s8, 10
                  srli         t4, t3, 23
                  sra          t4, gp, s8
637:              bne          s0, t0, 641f
                  sltu         t2, s6, s1
                  add          a7, a1, a2
                  bne          a4, t5, 651f
641:              sra          s5, gp, a5
                  or           a7, sp, zero
                  bne          a3, a3, 646f
                  nop
                  lui          s2, 511815
646:              xor          ra, a1, t0
                  bgeu         a0, t6, 650f
                  slt          ra, s2, a4
                  bne          s1, s2, 651f
650:              xor          t4, a2, s3
651:              slti         s6, s5, -758
                  andi         t5, s9, 1963
                  lui          t6, 454584
                  andi         s3, a7, 1489
                  or           a3, a6, s11
                  lw           t0, 4(tp)
                  addi         tp, tp, 28
                  sub          s11, t4, s0
                  andi         s2, gp, 715
937:              addi x20, x5, 0
937:              jalr x20, x20, 0
sub_1:            ori          s0, a0, -541
                  addi         tp, tp, -28
                  slli         s10, a5, 12
                  sw           t0, 4(tp)
                  or           ra, ra, t2
                  addi         s4, zero, 5 #init loop 1 counter
                  xor          a4, a2, a5
                  and          t2, s6, s9
                  addi         s6, zero, 12 #init loop 1 limit
sub_1_2_1_t:      slti         a3, s10, 932
                  nop
                  addi         s4, s4, 7 #update loop 1 counter
                  add          a7, t4, a0
                  slt          s8, ra, s5
                  addi         t4, zero, 7 #init loop 0 counter
                  addi         gp, zero, 3 #init loop 0 limit
                  sll          s9, a3, t4
sub_1_2_0_t:      xori         s11, s7, -238
                  sltu         s8, a4, s10
                  addi         t4, t4, -8 #update loop 0 counter
                  or           s9, t0, s8
                  nop
                  srl          s3, s9, s1
                  srai         s3, zero, 16
                  slt          s11, s1, sp
                  add          s3, zero, t5
                  sll          a6, s0, a6
                  bge          t4, gp, sub_1_2_0_t #branch for loop 0
                  srli         a4, tp, 6
                  or           s5, s1, s8
                  bltu         s4, s6, sub_1_2_1_t #branch for loop 1
                  andi         t2, s0, 1202
                  addi         a6, zero, -7 #init loop 1 counter
                  addi         t0, zero, -14 #init loop 1 limit
sub_1_1_1_t:      ori          s5, s4, 1023
                  addi         t2, a0, -1106
                  addi         a6, a6, -7 #update loop 1 counter
                  addi         t6, zero, 7 #init loop 0 counter
                  addi         s2, zero, 12 #init loop 0 limit
sub_1_1_0_t:      auipc        s10, 431293
                  addi         t6, t6, 1 #update loop 0 counter
                  bltu         t6, s2, sub_1_1_0_t #branch for loop 0
                  beq          a6, t0, sub_1_1_1_t #branch for loop 1
                  srl          s7, s6, a2
                  addi         t1, zero, 0 #init loop 0 counter
                  srli         s11, s1, 18
                  srai         t0, t1, 29
                  xori         sp, a0, -894
                  srl          a7, t6, ra
                  sub          zero, t0, s0
                  slli         a4, s5, 1
                  srai         a1, t2, 28
                  slt          zero, s7, s1
                  or           t2, a5, a2
                  andi         s7, s11, 1289
                  xor          a7, a6, a0
                  addi         t6, zero, 15 #init loop 0 limit
                  sltu         a5, ra, gp
                  sltu         a5, s0, s2
                  sltiu        s7, s3, -1314
                  xori         s5, a0, 1322
                  add          s5, t5, t4
                  sub          s11, t1, s5
                  or           s3, s5, gp
                  sltu         s10, a5, a1
                  slt          a6, s7, a5
                  sltiu        a0, a2, -731
sub_1_3_0_t:      auipc        a7, 565008
                  sll          a6, s7, a4
                  addi         t1, t1, 3 #update loop 0 counter
                  bne          t1, t6, sub_1_3_0_t #branch for loop 0
                  xor          t2, s10, t5
                  addi         a5, zero, 8 #init loop 0 counter
                  addi         ra, zero, 3 #init loop 0 limit
                  sll          gp, a4, sp
sub_1_0_0_t:      addi         t2, ra, -77
                  addi         a5, a5, -5 #update loop 0 counter
                  bne          a5, ra, sub_1_0_0_t #branch for loop 0
                  slli         s2, sp, 24
                  auipc        t5, 290087
                  addi         a5, a7, 1060
                  sltiu        sp, t5, 1510
                  xor          s5, t0, t0
                  la           s9, sub_4
                  sub          s8, t5, ra
                  auipc        s0, 928627
                  addi         s9, s9, 222
                  nop
                  beq          s2, s11, sub_1_j3 #branch to jump instr
                  ori          s11, a5, -447
                  addi         s6, a6, -473
sub_1_j3:         jalr         t0, s9, -222 #jump sub_1 -> sub_4
                  slli         s2, tp, 18
                  nop
                  sra          s7, s6, a1
                  sll          s9, a2, s11
                  slti         s3, sp, -431
                  slt          s2, a5, s9
                  srai         a4, ra, 16
                  bgeu         t3, a2, 15f
                  sltu         a6, s8, t4
                  slt          s10, tp, s4
                  slt          s5, t2, sp
                  bgeu         t5, t1, 20f
15:               or           s6, ra, t0
                  and          t6, t0, s5
                  slti         s6, s8, -653
                  slt          sp, s4, a5
                  add          a4, sp, t1
20:               auipc        t1, 10502
                  xori         a6, t2, 1493
                  bne          a4, s8, 35f
                  xor          s6, t3, s10
                  lui          t6, 606092
                  sltu         a2, zero, s4
                  srli         s3, s1, 28
                  slli         t2, s8, 4
                  bgeu         s9, zero, 38f
                  sra          t6, a6, s4
                  ori          s3, a2, -465
                  lui          zero, 755995
                  slt          s4, s0, a3
                  sltiu        s9, s11, -1407
                  auipc        s6, 797631
35:               blt          t4, t6, 37f
                  slt          sp, gp, a6
37:               auipc        s6, 145416
38:               xori         s8, s0, 1256
                  bgeu         s0, a3, 55f
                  andi         a1, s1, 881
                  beq          sp, t3, 55f
                  andi         a3, s7, -708
                  sub          gp, t4, ra
                  add          sp, a7, tp
                  bgeu         s5, s5, 49f
                  nop
                  bgeu         gp, zero, 52f
                  nop
49:               sub          ra, zero, tp
                  sub          a3, t6, s4
                  slli         s4, a1, 18
52:               ori          a4, s7, -828
                  bge          a4, t1, 63f
                  andi         a7, zero, 1426
55:               slt          a5, a1, s1
                  lui          a3, 357407
                  xor          a3, s8, s5
                  bltu         s2, s8, 69f
                  xor          s10, s5, s5
                  srai         s8, s6, 24
                  auipc        t0, 951165
                  srai         t6, t6, 27
63:               andi         a0, a3, 474
                  srl          zero, s3, s1
                  nop
                  addi         zero, tp, -431
                  bgeu         a1, t1, 71f
                  addi         s6, t2, 1035
69:               bne          t6, s7, 77f
                  or           s7, t3, t0
71:               xori         s0, tp, -744
                  sll          a0, t3, s11
                  srai         s11, s10, 20
                  beq          t0, a4, 82f
                  slti         sp, s7, 973
                  addi         s2, s6, -553
77:               bltu         a5, s8, 96f
                  slli         s8, s3, 5
                  sra          s11, a3, a0
                  sltu         s10, t4, a1
                  slti         a0, s4, 682
82:               slti         t1, t5, 409
                  or           ra, a3, a2
                  slt          s7, s11, gp
                  ori          t4, a1, -1604
                  andi         t2, s11, -1547
                  srai         a5, s7, 16
                  slt          t6, s11, a0
                  srl          a1, a7, a3
                  beq          sp, s7, 99f
                  and          t2, s1, s6
                  srai         t4, tp, 24
                  xori         t1, s0, 680
                  bltu         s11, t4, 106f
                  bgeu         ra, a3, 103f
96:               bgeu         a4, zero, 105f
                  auipc        s2, 986633
                  addi         t0, t0, -1810
99:               sltu         a0, s3, s9
                  or           a2, t4, tp
                  xor          sp, s7, s5
                  bltu         t0, ra, 114f
103:              blt          ra, gp, 105f
                  srai         s6, s11, 14
105:              sltiu        s8, s4, -908
106:              blt          t5, t6, 116f
                  slli         zero, s7, 0
                  sll          s0, s4, ra
                  add          a0, t1, t2
                  addi         s9, gp, 1560
                  sra          a5, a4, tp
                  sll          ra, s5, a4
                  addi         a3, a0, 1963
114:              nop
                  xori         t6, t2, -1755
116:              and          t0, s0, s5
                  or           s11, a0, tp
                  srli         s0, s4, 16
                  xor          zero, a2, a6
                  bltu         a4, s7, 132f
                  lui          t0, 138358
                  srai         gp, t1, 8
                  blt          s9, sp, 137f
                  srai         t1, s10, 17
                  beq          s8, s0, 135f
                  xori         sp, tp, -487
                  slt          s11, t4, s3
                  sltiu        s4, a6, 1678
                  auipc        s5, 285979
                  slt          s9, s1, t2
                  sra          a6, a4, t5
132:              bltu         gp, a0, 140f
                  slti         s6, s1, 1563
                  srli         t5, sp, 17
135:              sltu         s5, zero, a7
                  slt          s8, a4, s11
137:              slt          t5, t3, sp
                  lui          s4, 1018207
                  sltiu        s8, a7, 1774
140:              andi         s5, t0, -580
                  and          s7, t1, s2
                  blt          t1, s11, 154f
                  lui          s6, 412768
                  bge          a2, t0, 162f
                  bltu         zero, a3, 156f
                  xori         s8, s1, -1571
                  slt          a0, s5, a4
                  sltu         t6, s7, s6
                  sll          s9, zero, s3
                  srai         t5, t5, 16
                  sltiu        s0, s1, 978
                  srai         s8, tp, 22
                  or           s9, a1, s2
154:              sll          a5, a0, s0
                  beq          s0, s0, 167f
156:              or           s5, t4, s5
                  slli         gp, t0, 23
                  sub          a1, tp, s4
                  nop
                  add          s2, gp, gp
                  xor          zero, a1, s9
162:              andi         s9, a0, -1955
                  bne          sp, a4, 175f
                  blt          a6, a7, 176f
                  ori          s0, a1, -174
                  ori          t1, sp, -361
167:              xori         a6, a1, 2001
                  ori          a0, a4, -2037
                  bne          t3, t4, 177f
                  xori         t5, a4, -887
                  bltu         s5, t4, 177f
                  bge          a5, s10, 186f
                  nop
                  sltiu        a7, gp, -1957
175:              sub          s6, s2, s2
176:              srai         s2, s3, 20
177:              slti         sp, s3, -1058
                  xori         gp, a4, -68
                  blt          gp, s8, 187f
                  bge          s9, t1, 184f
                  xori         s9, t3, -738
                  slt          a2, a6, s6
                  andi         s6, s7, -179
184:              beq          s2, a0, 192f
                  srli         gp, t3, 25
186:              bgeu         t2, t5, 191f
187:              nop
                  srl          s9, s1, s11
                  slli         a4, t0, 1
                  slti         s6, s11, 1061
191:              bltu         gp, t4, 193f
192:              lui          s3, 318885
193:              sra          a5, s8, t2
                  bge          a5, a7, 196f
                  xori         s8, a2, 776
196:              srl          sp, t0, s8
                  sll          t2, a1, s1
                  blt          s2, s5, 207f
                  lui          t5, 512764
                  slti         a7, a0, 438
                  nop
                  bltu         t2, a3, 207f
                  bgeu         t5, s10, 216f
                  add          ra, t5, ra
                  srai         a6, t6, 28
                  sra          zero, a7, s7
                  lui          a1, 468985
                  sltu         a5, s0, s7
                  sltiu        s7, a7, 1219
sub_1_j4:         jal          t0, sub_3 #jump sub_1 -> sub_3
                  auipc        a1, 7309
                  sll          s11, s9, a4
                  nop
207:              nop
                  slli         s3, zero, 20
                  xor          a2, s9, s9
                  sra          t0, s8, a5
                  srai         zero, gp, 17
                  xori         s6, s10, -463
                  bne          s6, t5, 229f
                  add          t4, a7, t5
                  xor          zero, s0, tp
216:              bge          t1, t0, 228f
                  srli         t0, t5, 13
                  auipc        s0, 306092
                  or           s4, a4, s6
                  sltu         a5, t6, t5
                  bne          t3, t1, 233f
                  lui          a6, 345803
                  sltu         a1, tp, a5
                  and          t2, t6, ra
                  auipc        s10, 722507
                  srl          s10, t2, t0
                  slli         s10, t5, 29
228:              slli         s7, s11, 19
229:              srl          s6, t0, sp
                  slt          t4, s9, s0
                  lui          s2, 642353
                  bgeu         a5, s6, 238f
233:              xor          a0, s2, s6
                  add          s8, ra, s2
                  bne          t6, t3, 238f
                  srl          s9, s8, a1
                  sra          a7, a4, ra
238:              srai         a1, s8, 27
                  slt          a5, s7, gp
                  lw           t0, 4(tp)
                  sra          a2, t5, t0
                  addi         ra, a1, 894
                  or           a5, s3, s8
                  or           s3, t4, a6
                  addi         tp, tp, 28
                  slti         t6, s3, 763
                  andi         s5, tp, -180
                  sra          s11, ra, s11
345:              addi x24, x5, 1
345:              jalr x24, x24, 0
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
.word 0xb947583b, 0x0a8a211d, 0xb5cb17ee, 0x1ecfc260, 0x29badfa2, 0x33a92ae9, 0x3f7f3591, 0x4b8a6f0a
.word 0xe0b3c7af, 0x13fcbfb7, 0xbfcf947e, 0x458f37d1, 0x2733f0dc, 0x87f906b5, 0x5eb38989, 0x98f04616
.word 0x35c82747, 0xcf530980, 0x0bd371d1, 0x1e379e6a, 0x5e85a4e3, 0x29ba930c, 0xc2672e1c, 0xa4c2d2a3
.word 0x6a208a70, 0x8813b21c, 0xca7905ca, 0xf80be41f, 0xd27b3d7c, 0xd41804f6, 0xcfa0ed94, 0xddf906d7
.word 0x5f9b39ed, 0xa4140f09, 0xc3a08b05, 0x89043048, 0xcc35fbaa, 0xcc304678, 0x7c51c69a, 0x61acf8cf
.word 0x5adaaa78, 0xca65116c, 0x2bce47f3, 0xf0b27731, 0x7e5a0135, 0x44017020, 0xfa128781, 0x57129286
.word 0x66c84cb3, 0x4758b6a6, 0x30a4a538, 0x1432a535, 0xfb29aa40, 0x451acca7, 0xe7406e72, 0xcb9a77c0
.word 0x7755e460, 0x553089fd, 0x4f3d6e86, 0x0e934636, 0x35e69f65, 0xcfa6dc8a, 0x3c094a2e, 0xc56b2869
.word 0xfcbccd1d, 0xdadeb12d, 0xe252ce02, 0x174abf7a, 0x0991aff4, 0x9b272c9e, 0x56c5226f, 0x96e254f7
.word 0x172f3579, 0x480ef753, 0x050808c8, 0x9f457ab4, 0xb6f48a90, 0xc02356c0, 0xb02d21e1, 0xaf35f993
.word 0xecf5785f, 0x51ce75f7, 0x0f4930c4, 0x1631b8ba, 0x140562d0, 0x6f0bc0d8, 0x234fd4e5, 0xfd0c9a15
.word 0xd917288a, 0xecfd7370, 0x6647c5fa, 0x03d752f9, 0x48b70156, 0x2a511e0f, 0x3be45079, 0xa38d170f
.word 0x7d526548, 0x83dd917f, 0xf8ce5181, 0x6dddfd20, 0xbe4d23a0, 0x8ff2087e, 0x393c4503, 0x411d7d3e
.word 0xe25b4274, 0xb8d3e376, 0x61504694, 0xce12e639, 0x9fd68567, 0x25ae779a, 0xf4e92ea4, 0x1b3d5c77
.word 0x76259afb, 0x46ef0010, 0xb2a3ee36, 0x6dcff032, 0x1d3c4fdc, 0xc63f11f5, 0x17cefb36, 0xda89434d
.word 0xd410fc84, 0xc91fdaec, 0xf955fffd, 0x4648f5b0, 0x552541a0, 0xde0a4e64, 0xef477aca, 0xc4d0b0fb
.word 0x0fd09a59, 0x6d7eae0d, 0x2b4df307, 0x8b04e8f6, 0x77fafb44, 0x0d89e23c, 0x329e03a3, 0xa4dfecef
.word 0xef87e1f0, 0x3f1fc94d, 0x361476e5, 0x4adabf28, 0xf7aba1e5, 0x6354272f, 0x7fafa20f, 0x9a5a2e75
.word 0x5d4da8b0, 0x43624e0f, 0x391a8641, 0x0d1d5419, 0xd7d2de53, 0x8b1c32f7, 0x0df38432, 0x0a434dce
.word 0x7e885d74, 0x7c724b39, 0x9e6b8864, 0x7e60d29a, 0x4cc52e7e, 0x53503c5c, 0x91275987, 0xa9b9be41
.word 0x7696a8b1, 0x931e1961, 0x4346458b, 0xe373be2e, 0x5abd3145, 0xb628ac09, 0xe2ce2ded, 0x7bc69274
.word 0xb3d3524b, 0x4d7b010f, 0xbb5e4bea, 0x0f3c0ffd, 0x5e41f976, 0x15c82d1b, 0x10908c80, 0x93f0c7a1
.word 0xf4d1365f, 0xe7775a34, 0x95c46e0d, 0xc6be264b, 0x4a393d36, 0xd4cb8416, 0x74e7387e, 0xcc666a34
.word 0xc86852e4, 0xd53db17b, 0x3891a595, 0xdccd9990, 0x8f70e867, 0x2c434d19, 0x2792fa43, 0x54df531b
.word 0xac45a116, 0xf2aaaa41, 0x7d5e84e1, 0x361a27c4, 0xb10a99de, 0xd29e73c5, 0x4f5bcd8e, 0x3b88773a
.word 0x62461a70, 0x959a6c5d, 0x85aeef6c, 0xf3987038, 0xdfa9971c, 0xf5b1ae93, 0x918c4849, 0x00479c19
.word 0x469aaa30, 0xb9a0e5e9, 0xf3bed21e, 0x908fcb1e, 0x24457128, 0x4accd88e, 0x6bc0f46c, 0x26b7b0a5
.word 0x52f8874f, 0xe133a978, 0x71f1060b, 0x9c3e2ee4, 0xaf896ed7, 0xb020e810, 0x79ebfbab, 0x240b6944
.word 0x6a428c8a, 0x88af556e, 0x480e326b, 0x0e5daa29, 0x13edbf29, 0x2cbd8133, 0x81c18cb9, 0xaa27944f
.word 0x23060562, 0x179305fb, 0x1649b969, 0x3d503a96, 0x58183ca4, 0x7f50d93a, 0x33a64000, 0x801bb002
.word 0xd41e7b0f, 0xa3a9063c, 0x465ac615, 0xccd7e4a9, 0xc3e4df24, 0x437f4b65, 0x02b5acb0, 0xd4c5c9ed
.word 0x0ee7c097, 0xda708b28, 0x8a714f2d, 0xadd7d6dc, 0x332ff86c, 0x92c98211, 0xb34e3513, 0xd8657642
.word 0x793e2ead, 0x0bd8cd71, 0xbbc0cbda, 0xa5f527c8, 0x58e9c517, 0x20e30618, 0x0c974e18, 0xb4d1fd68
.word 0xf1f8866f, 0xb5a790e6, 0xa9510998, 0xa55d8c36, 0x0f5f8afa, 0xbc9f795d, 0x7ff88f7f, 0x056158d1
.word 0x3235a408, 0xa1095a0f, 0x3e291baf, 0x0f9b1845, 0xfda0274d, 0x1a5623dd, 0x40497c99, 0xdd79096b
.word 0xbbe72cdb, 0x0dffd52f, 0x0e14a64c, 0x9672139c, 0xbd3a0c22, 0xdc7e1279, 0xe10babaf, 0x1791d5d6
.word 0x9fdf565b, 0x4ab82535, 0xe87e50f4, 0xc932a716, 0x496b1e49, 0xafabf5fd, 0x667bb1b1, 0x7d80fb83
.word 0x1ac679d4, 0x84476569, 0xaf521a28, 0x776f1ad0, 0x7717130c, 0xbac28124, 0x72db8603, 0x46c3121d
.word 0x48592fb2, 0x0c0dde86, 0xae81c64c, 0x88af330a, 0x9416d11f, 0x3e2a76a0, 0xbbc155f9, 0x4505aaa3
.word 0x2a980506, 0x2fabb25f, 0x93e6e09a, 0x891ec0d9, 0x77b94395, 0x0d0f531e, 0x9818fa26, 0x6ac2ae65
.word 0x281b339f, 0xf6aca4a3, 0x2a98602a, 0x4256bc49, 0xead93117, 0x180851fa, 0x0d83151c, 0xd85908db
.word 0x2ddfe2fc, 0x50de7437, 0x33163856, 0x417c00c7, 0x5a124ba4, 0x667aff0d, 0xd8b2d2e7, 0x7afd78a1
.word 0xf10dd0e1, 0x5b01b444, 0x1ac63fc8, 0x60643501, 0x555b0e9b, 0x5f5dff0e, 0xc2c814a8, 0xde3d9cf1
.word 0x94cd613d, 0xee7b21ff, 0xc6ae1b4c, 0xba6fc757, 0x6a15f570, 0x86353726, 0x7ff9bb37, 0x4b80e26f
.word 0x7a654a76, 0x509ab815, 0x8e138250, 0x7b2c5707, 0xeec527c0, 0xc0d50880, 0xcccc04d7, 0x8117eeed
.word 0xbc211ee5, 0xfdcd59af, 0x43c3b27b, 0x9211d8bf, 0x06bddf6c, 0xa8a73429, 0xea1d67ae, 0x2b109fc4
.word 0x94d18407, 0xf833f635, 0xdefbf403, 0x2c758733, 0xe8f8ea9d, 0x41c2e346, 0x40137a9d, 0xfee05f5a
.word 0x7cfcc085, 0xe601454d, 0xcf1f1b77, 0x9a015242, 0x3d03b954, 0x93d52691, 0x4373ae86, 0x66d4044a
.word 0x3471abf3, 0x9014a6c7, 0x5030ae86, 0x17a0383a, 0xcd6cb0b6, 0x8dd8e023, 0x51072ca7, 0xa33b083d
.word 0x10489e38, 0xa90633f1, 0xcd0f668b, 0xfd8880b7, 0x46b76172, 0x3fe605d6, 0x028f46f2, 0xe4dc72cc
.word 0x7ae754c4, 0x1c02d982, 0xc5e60882, 0x2f93c838, 0xa128d4a7, 0x13ca1b53, 0xe5cca869, 0x4db401bf
.word 0x7c1d165d, 0x8207a2dc, 0x8d999e2d, 0xce77d643, 0x6817d03c, 0x9e97e6f3, 0x785c17e5, 0xebb322b3
.word 0xe84f516b, 0xc16de672, 0x9d9d67f9, 0xd927d190, 0x7e57aae2, 0xb1b6bd83, 0x5c1343cf, 0xa4c4cf42
.word 0xe6f152e6, 0x96425d80, 0xa15f2960, 0x182c0265, 0x9b68c04a, 0x2eb5801d, 0x23259a0f, 0x983c9bc3
.word 0x68c59ee1, 0x991dc566, 0x30819398, 0xb317fbfc, 0xf9f1af67, 0x3ee8bf91, 0x9dee066f, 0xc8f694bd
.word 0xbf64a6ea, 0x507d6f13, 0xf06ca72e, 0xb71ed81e, 0x28bb6547, 0xebe42641, 0xf3de68ce, 0x9248d982
.word 0x690e79b4, 0xdfdd2361, 0xc34ad55b, 0xc63721a8, 0x2fc08072, 0xa5b11cad, 0xcd1e09c3, 0x78cada54
.word 0x22e4d4c8, 0xb0d1ba8a, 0xaca9baf0, 0x63684b2f, 0x1e1cb3d1, 0x1ca27766, 0x7b0c365f, 0x97e0c7e8
.word 0xfbbf1452, 0xd85fed12, 0x78780953, 0x9f12d647, 0x827faf90, 0xbb5cdfc4, 0x2c82e228, 0x2096e2cc
.word 0xda6f4060, 0x1e9893d1, 0x6d8d25f5, 0x1767bac9, 0x649f8409, 0x66be93e4, 0xa1a33caa, 0xb515d29c
.word 0x8e68ef2f, 0x9106c4fc, 0x0a3d7c61, 0x6bddd589, 0x900610fe, 0xfa973e0c, 0x454f9128, 0x61ed408e
.word 0xa3827bfb, 0x9e6cdc29, 0xf54aa5df, 0x2f8fc7b7, 0xfef55f29, 0xa66b6869, 0xae2bf124, 0x59b57260
.word 0x04e80b36, 0xe8e1be46, 0x86987076, 0xe04ffc14
.section .region_1,"aw",@progbits;
region_1:
.word 0x121264f5, 0x9a3093c9, 0xf17188a2, 0xdbf9eac7, 0x0f6855f0, 0xc10b6b4b, 0x310674de, 0x069d5dc9
.word 0xcd266ed1, 0xe0b23359, 0xdaa1c7ed, 0x158a5ba3, 0xcb9e3923, 0xe2f99c78, 0x5e59e9b3, 0x92ad9d8e
.word 0x165f51d3, 0x1a371717, 0x996701bc, 0x99a14665, 0xfd8c7880, 0xdcacd17d, 0xa3f3be29, 0x329e026b
.word 0xeadc15b8, 0x5c7d6712, 0x88ed7316, 0xd16c2c80, 0xd0155405, 0x1627a056, 0x427eb4ca, 0x1fa157cb
.word 0x9d008ed0, 0xebda5ced, 0xf0390bb0, 0xd5cd802c, 0x79a297c9, 0xafe81122, 0x76a08dab, 0x579df592
.word 0x5dc08774, 0x91bfc5e8, 0x4405fd09, 0xe81647e4, 0x400933d8, 0xdfbd34d1, 0x2739c21d, 0x0d917be1
.word 0x9b67c819, 0x0bd49d4b, 0x47547210, 0x44133469, 0xcde2b31b, 0x0aac0d4c, 0xa4f5fa19, 0xd8e32f5d
.word 0xa876f84b, 0x0539a7a3, 0x48f44ab4, 0xee8978ac, 0x8cac285f, 0x20f0c624, 0x7725eebe, 0x8580150c
.word 0x0bf1d311, 0xaba00978, 0xc139361c, 0xa8c691dc, 0xe37d91bb, 0x839c5fc3, 0xe04d127a, 0xf9737bf3
.word 0x3b601d6d, 0xe29e3f61, 0x89bf9b81, 0x8fd1f471, 0xcba5df88, 0xb57b177f, 0x5abb001e, 0x7511b57d
.word 0x37206353, 0xed6fe425, 0xec2c4417, 0x5f137f4a, 0x69905fec, 0x117eb78f, 0x6a6ff43e, 0xee951e24
.word 0xb3b017af, 0xcc4fd279, 0x51c6ce97, 0x5eb0d5de, 0xe048f864, 0x87b7ba05, 0x9516e4e4, 0x034b2145
.word 0xec52bd99, 0xfab0f5f7, 0x3a081639, 0xaad97498, 0xfc44ec76, 0xfffc444a, 0x9d0288eb, 0x45548683
.word 0xd2636930, 0x3348cb71, 0x7ee7d5e5, 0x382f1b0b, 0xa4b35175, 0xcb792f90, 0xad815713, 0x248aa4c6
.word 0x7c07a655, 0xa98c01ad, 0x4e7aba41, 0xf04d0019, 0xab5a7aea, 0xae081ab5, 0x4fd3f31c, 0x7625c9c6
.word 0x479f1699, 0x2cf8a8ff, 0x39056a1c, 0x2a922c29, 0x90119088, 0xd81b5fa3, 0xaa9891f4, 0x4740d6e8
.word 0x09e7830a, 0x6bd7aa2b, 0xb9792516, 0x1ebdbb62, 0xb9afedae, 0xed33f2e0, 0xcc1c4776, 0xbcba923b
.word 0xeb9fed37, 0x7d45bfc9, 0x648c9b93, 0xdba53a0b, 0xdd775742, 0x33c12eb3, 0x2f1859a2, 0xed0e0a5e
.word 0x5d77f3ce, 0x92c806ff, 0xe3cd3b6d, 0xbde4ba96, 0xac26c2f0, 0x269b59a9, 0x2e071244, 0x466b396a
.word 0x626f43db, 0xde1b2425, 0x99855c18, 0xb199b48f, 0xbe8652f0, 0x4244b5ea, 0xa7aabf58, 0xcb1a4c06
.word 0xda824862, 0xeeaeeef8, 0x4bd4b20f, 0x10784965, 0x40b474ff, 0xda417085, 0x6454c24d, 0xe7ba64be
.word 0xd16474e9, 0xed348f18, 0x2c39ee7e, 0x103f357c, 0x7d4c9a1f, 0xad6cc9f1, 0x0be1e8b7, 0xd3eb629b
.word 0x830e3f3d, 0xbdd4ea67, 0xb27f426e, 0xcc119bae, 0x0e3da40c, 0x8d34a91b, 0x43d9ae09, 0xe81522be
.word 0xb4bac520, 0x1b0dabb7, 0x84046aa0, 0xc2a1e9fa, 0x16e7c9b7, 0xf00cb497, 0x70618e08, 0x5156fd08
.word 0x3e1d8abf, 0x0010a52a, 0x3deb8724, 0xc9919b2c, 0x1227ab86, 0xca205e36, 0xc528b4ea, 0x997a0e4e
.word 0xf3261e5c, 0x7fcf24d8, 0x1d516e39, 0xef2e8aaf, 0xa75ee4ed, 0x4f96a9a3, 0x2b087c58, 0x1a93d3be
.word 0xbaa5ec6c, 0xb2dd0a2d, 0x5092e7c1, 0x4f85f3eb, 0xa7001be6, 0xe78051b1, 0x8cf8632f, 0xa4bea8fa
.word 0xd681f394, 0x63ed0446, 0xa62a73e5, 0x2a2af0f2, 0x9ddf686d, 0x9f470a81, 0x62ad77db, 0xc8e4c8bb
.word 0x77f5a4e8, 0x5ae976ac, 0x7f934eb0, 0x4ba158ef, 0x00a56b35, 0x650e2de5, 0x55e6e863, 0x6f7784cb
.word 0x2013fd51, 0xdd0a61d4, 0x75ad3908, 0xc3286ae2, 0xe3aa6bb6, 0x38ef1890, 0x8e81df5e, 0x1afc3cc4
.word 0x327e9cbf, 0x27702f2a, 0xb86518e9, 0x849fce07, 0x6bfefbcc, 0xadd098cb, 0xfe8e5d2d, 0x853c1ffb
.word 0x1e951223, 0x8b30811f, 0x11942589, 0x449183eb, 0x4df0f776, 0x1882d35c, 0xae301762, 0xcdf0d1af
.word 0xbd338ad7, 0xc9f37624, 0x4fc1634b, 0xa26df689, 0x730e63cb, 0xddaa637a, 0x1f10d58c, 0x09faf512
.word 0x470045c0, 0x290fe082, 0x7ebb190e, 0x90cd193b, 0x6405c1d1, 0x605e99d1, 0xc798111e, 0x868ce664
.word 0x7b226aa3, 0x8bba00f8, 0xa3ff5537, 0x6aca2ec6, 0x99838f9f, 0xa7d43398, 0x0265dcb6, 0x235dc49d
.word 0x1a9cad1f, 0xea6491b9, 0x48051532, 0x8b1a25c5, 0x73a7d00c, 0x6c4fbb7e, 0xe4fbd4b3, 0x4275f4b1
.word 0xb797723f, 0x6095af25, 0x1590f75e, 0x8c192ecd, 0x478b3f5a, 0x237d29ec, 0x3729a407, 0x684fdcb6
.word 0x0901e72a, 0x58b66e89, 0x6f119f53, 0x9fa0fde6, 0x6b266f21, 0x42a22a49, 0xc39479c8, 0x99b46194
.word 0x17a269db, 0x3c1e6971, 0x07c7891c, 0x08c11a00, 0x2aaa8462, 0x85d7b5b6, 0x2071adfa, 0x4365b8af
.word 0xbf46e31c, 0x566307ad, 0xe9e73b73, 0x6143f385, 0x0e3da970, 0x005c4a16, 0x34e4568c, 0xe82c1a23
.word 0xbd1ef45d, 0x46f9b64a, 0x637861f0, 0x549dbbd8, 0x3ace3079, 0x053790fd, 0x7c8fec80, 0x3f0dffda
.word 0xff6dc23c, 0x5ec9dc25, 0x89ae9bb5, 0x2e15d4dc, 0x89dcf2f8, 0x869855aa, 0xaf7497ed, 0x9f308fef
.word 0xaa7e9652, 0x3b202b24, 0x459a102f, 0x5fca1776, 0x4b15c5d8, 0x190a8de9, 0x5a9b1939, 0x98650754
.word 0x78bfa8e8, 0x8f9531cc, 0x463fb2bb, 0xc1ea8733, 0x6be43f41, 0x404a90a0, 0xca136cd0, 0x9dd350e1
.word 0x3f4ab96d, 0x13166441, 0x76282fea, 0xfab4db91, 0xf4c1c026, 0x427389dd, 0xdff86e07, 0x8b6b5e20
.word 0x7306e801, 0x20918c88, 0xe8ccec07, 0xce0f2821, 0xec4088ab, 0x21bbc1a6, 0xdae2f485, 0x2a4dcb0d
.word 0x01ae9e75, 0xce59b6bd, 0x93b6d0f7, 0x65ab34d4, 0x9521890f, 0x0316b9b3, 0xe084abae, 0x6de4e11c
.word 0x06e9954f, 0xf8c7be14, 0x082376cf, 0xf550e11c, 0xfacdb73b, 0xb423c4e8, 0x99df8add, 0x31232020
.word 0xa8f1a579, 0x808fcd98, 0x8bd7437d, 0x94223a3c, 0xa3010625, 0xb62e9ca2, 0xc9f92832, 0x79b59feb
.word 0xcbd94831, 0x1a7bc162, 0xd0d7e768, 0xc6b6b68d, 0xa599f91d, 0xcd037ccb, 0xe7f4bae9, 0x03628781
.word 0x1dc66eda, 0xc2b627dd, 0xe3416231, 0x6c730de2, 0xa4e9f204, 0xa41d34de, 0xcb118b72, 0xf2aec209
.word 0x094b4a30, 0xa51bcce7, 0x1a04feb9, 0xf3f5eb1e, 0x142e96ff, 0x0d0e9046, 0x7cc2beb5, 0x44ad8793
.word 0xdc30fd47, 0xd0f0e360, 0xe3753792, 0x8e5fd596, 0x52f8655c, 0xfd6e9cc9, 0x095416c9, 0x9cdf642e
.word 0x8b644963, 0xad8d6c6d, 0xedc72934, 0x2c593e54, 0xeb703f80, 0xb513c916, 0xf2e80324, 0x6b40cf19
.word 0x553823dc, 0x203c8fdb, 0x0ee1aa2f, 0xb96d0e3e, 0x57abcaa5, 0x34955080, 0xadfa8540, 0xec0aca27
.word 0x545223ff, 0x9f85c147, 0x7326d424, 0x366d56df, 0xaecbd0d4, 0x65fae413, 0xdba8bbe1, 0x33931f58
.word 0x2c225d21, 0x040d6425, 0x6a7ae472, 0xdc605ad2, 0x0e7f2b3f, 0x3268b8f2, 0x759c06df, 0x085dc1f7
.word 0xcd3c306a, 0x63c6ffe1, 0xeb3d0e56, 0x6bfb7a4b, 0xd7275f3b, 0x777d0ff8, 0xa77cf373, 0xabab9c93
.word 0x32bbbcf5, 0xd3f46982, 0xcc2c2bee, 0x8248c6a7, 0x796ba98b, 0x1ee3ca15, 0xae8ddde9, 0x5512a61c
.word 0x9745b337, 0xc1021e47, 0x3849db7c, 0x259b0f2e, 0x663c0f76, 0xba4dfbfe, 0x061b458f, 0x691551ef
.word 0xe5678246, 0x6adbee84, 0x6d2f461c, 0xc7de20a4, 0xb47bbbee, 0x7c99eb16, 0x8a53ebb5, 0x868d5862
.word 0x1009bb8c, 0x721649b9, 0x72944b5a, 0x6064dfa6, 0xbdb253fd, 0x4455dc23, 0xc65dd797, 0xf0d3a973
.word 0xcdb7ce4d, 0x9a67bec2, 0x271c4f34, 0x7525c82f
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x9, x4, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x7, 0x3 # BREAKPOINT
                  beq x27, x7, ebreak_handler
                  li x7, 0x8 # ECALL_UMODE
                  beq x27, x7, ecall_handler
                  li x7, 0x9 # ECALL_SMODE
                  beq x27, x7, ecall_handler
                  li x7, 0xb # ECALL_MMODE
                  beq x27, x7, ecall_handler
                  li x7, 0x1
                  beq x27, x7, instr_fault_handler
                  li x7, 0x5
                  beq x27, x7, load_fault_handler
                  li x7, 0x7
                  beq x27, x7, store_fault_handler
                  li x7, 0xc
                  beq x27, x7, pt_fault_handler
                  li x7, 0xd
                  beq x27, x7, pt_fault_handler
                  li x7, 0xf
                  beq x27, x7, pt_fault_handler
                  li x7, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x7, illegal_instr_handler
                  csrr x7, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x4, x9, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
