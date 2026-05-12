.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x6, h0_start
jalr x0, x6, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x28, kernel_stack_end

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
                  li x0, 0xbb853435
                  li x1, 0x8b27fea
                  li x2, 0x0
                  li x3, 0xf9901c36
                  li x4, 0x2
                  li x5, 0x596b790a
                  li x6, 0x9712be6b
                  li x7, 0xfa4e4254
                  li x8, 0xf26f3864
                  li x10, 0xf0ca02f2
                  li x11, 0xc2bb9086
                  li x12, 0x95649f57
                  li x13, 0x80000000
                  li x14, 0x8ccc0478
                  li x15, 0xf9ea61b1
                  li x16, 0x0
                  li x17, 0xbed7b1d1
                  li x18, 0x6
                  li x19, 0x5ca4bd9a
                  li x20, 0x8
                  li x21, 0x6586b5b2
                  li x22, 0xf9bd700b
                  li x23, 0x0
                  li x24, 0xf9c90b72
                  li x25, 0xfdf6fa09
                  li x26, 0xe
                  li x27, 0xf38e0f2b
                  li x29, 0x0
                  li x30, 0xf2991177
                  li x31, 0xb1bb20ca
                  la x9, user_stack_end
main:             addi         s6, zero, -6 #init loop 1 counter
                  xor          s10, s3, a3
                  addi         s5, zero, -18 #init loop 1 limit
                  nop
                  srai         a7, s1, 20
                  or           a1, s9, a3
main_0_1_t:       xori         a4, gp, 1824
                  xori         s10, t1, 1253
                  addi         s6, s6, -1 #update loop 1 counter
                  addi         gp, zero, -7 #init loop 0 counter
                  srl          a3, s8, s10
                  sltiu        s9, s9, -1816
                  addi         sp, zero, -11 #init loop 0 limit
main_0_0_t:       andi         zero, s9, -734
                  addi         gp, gp, -4 #update loop 0 counter
                  bge          gp, sp, main_0_0_t #branch for loop 0
                  sltu         a4, s5, a4
                  sra          s9, s1, s11
                  sra          a3, zero, a3
                  bge          s6, s5, main_0_1_t #branch for loop 1
                  slti         a0, s5, 1156
                  addi         a6, zero, -3 #init loop 0 counter
                  slt          tp, s4, a1
                  sltiu        s2, s10, -293
                  srl          s2, s8, a0
                  nop
                  andi         gp, a0, 1599
                  auipc        t5, 604229
                  nop
                  srl          s4, a2, ra
                  addi         a1, zero, -16 #init loop 0 limit
                  sub          s3, a6, t5
                  sll          gp, t1, s1
                  or           gp, s7, a5
                  auipc        a5, 686726
main_1_0_t:       xori         tp, t2, -2000
                  addi         t5, a3, 1722
                  slti         s9, a0, -727
                  srl          t2, a4, a4
                  srai         s6, s9, 15
                  slli         s3, zero, 6
                  sltiu        t5, s8, -29
                  sltiu        t2, zero, 2041
                  sll          s3, ra, a7
                  xori         s11, s0, 548
                  addi         a6, a6, -9 #update loop 0 counter
                  sub          a4, s5, t6
                  srli         t5, ra, 14
                  sltiu        t6, s9, 12
                  bge          a6, a1, main_1_0_t #branch for loop 0
                  srl          s6, t4, a3
                  or           a5, zero, a6
                  and          s7, s0, s3
                  slli         s5, t2, 1
                  sra          s2, s6, zero
                  bge          s11, s1, 21f
                  ori          a7, a6, 77
                  slli         t6, s4, 18
                  ori          a1, s1, 1070
                  slti         s3, a0, -161
                  slt          s7, s10, a7
                  srl          a1, sp, t2
                  slti         s8, s4, 1366
                  srl          tp, s11, t2
                  auipc        s2, 233876
                  or           tp, s9, ra
                  bge          a7, a5, 21f
                  auipc        ra, 677691
                  ori          t5, a3, 22
                  sra          t4, s6, a6
                  or           gp, a4, s1
                  ori          s6, s11, 514
21:               lui          s0, 455073
                  slli         t2, t0, 20
                  beq          a1, a6, 37f
                  bne          t1, a6, 43f
                  andi         ra, zero, 18
                  auipc        a2, 756490
                  xori         a2, t5, 1892
                  srli         s7, s2, 8
                  sltiu        t0, s4, -392
                  sll          s11, zero, zero
                  nop
                  sra          a0, t1, s1
                  add          s9, s11, t0
                  srai         zero, s2, 18
                  blt          t1, s6, 54f
                  nop
37:               xor          t4, tp, s0
                  bge          s3, t5, 56f
                  ori          a2, s3, 1811
                  beq          t3, tp, 55f
                  lui          t0, 939043
                  slt          a2, a4, s10
43:               lui          s9, 822582
                  andi         t4, s1, 1147
                  and          t0, s9, a4
                  srl          sp, s3, zero
                  ori          a1, zero, -1422
                  auipc        a6, 220300
                  la           s7, sub_3
                  srai         tp, a5, 2
                  addi         s7, s7, -994
                  auipc        t4, 762926
                  andi         t4, s0, 324
main_j1:          jalr         ra, s7, 994 #jump main -> sub_3
                  xor          a3, a2, s0
                  lui          sp, 677707
                  add          s7, s7, a1
                  ori          t0, s8, -547
                  xori         a4, zero, -187
                  addi         s10, t6, -1901
                  srai         a2, a5, 3
                  or           t5, t5, s7
                  srai         a5, t0, 13
54:               sub          a2, a6, t5
55:               sltiu        t4, a3, 1163
56:               lui          ra, 864565
                  or           s0, tp, s1
                  srli         s2, gp, 28
                  auipc        t4, 785748
                  add          a0, a1, a7
                  lui          s5, 668271
                  sll          a6, s11, t0
                  bne          a7, s8, 81f
                  and          a6, s7, tp
                  auipc        a3, 24896
                  and          t0, sp, ra
                  blt          a5, a4, 86f
                  andi         s0, a0, -363
                  addi         s10, a6, -1850
                  srai         zero, a5, 4
                  xor          ra, a7, zero
                  bge          a1, s2, 79f
                  slti         a2, s1, -1953
                  add          t5, t5, s0
                  or           s8, s2, s7
                  sltu         sp, t0, t2
                  addi         t5, a2, 377
                  slt          a6, s8, t6
79:               lui          s10, 172089
                  addi         zero, t6, -657
81:               sll          s4, a3, s7
                  bgeu         a1, a4, 91f
                  sltiu        a4, zero, 1954
                  bgeu         tp, s6, 92f
                  slti         s7, s5, 1352
86:               sra          s9, s6, a0
                  sra          gp, t3, s4
                  srl          t2, t2, t5
                  slli         s4, s9, 29
                  sltu         gp, t4, t4
91:               xor          s8, a5, zero
92:               addi         t0, ra, -1721
                  sra          t5, t3, s11
                  addi         s4, tp, 672
                  srl          a5, a7, s4
                  sll          s8, t6, gp
                  srl          zero, s0, t2
                  blt          a6, t5, 100f
                  or           s6, a4, ra
100:              ori          a1, s11, -332
                  nop
                  srai         t6, zero, 15
                  bltu         t1, tp, 113f
                  srli         t5, s7, 20
                  srai         t5, a6, 12
                  sltiu        t2, a4, 1385
                  srl          s3, s3, zero
                  andi         t4, a1, 876
                  andi         a3, zero, 523
                  slli         a4, s10, 15
                  slti         s4, t3, 1488
                  sll          a7, s8, s10
113:              ori          tp, a4, 1710
                  slli         s10, s11, 20
                  xori         s9, s11, 466
                  sub          s2, s9, tp
                  bne          t0, a4, 122f
                  sltu         s8, s5, s5
                  lui          s8, 787767
                  sub          s2, sp, a0
                  bltu         a6, a0, 141f
122:              bgeu         s1, t3, 126f
                  sltiu        s2, s9, -1656
                  sll          s5, s2, a5
                  and          t6, s8, t5
126:              lui          s7, 383507
                  sra          ra, sp, a5
                  sub          tp, gp, t4
                  slli         tp, sp, 14
                  beq          a1, s3, 137f
                  slti         s7, gp, -1589
                  xor          t0, t3, t2
                  srl          t0, t1, a7
                  slti         a7, t1, -1648
                  sll          s9, t5, s6
                  andi         tp, a2, -33
137:              nop
                  bne          t1, s1, 140f
                  bltu         s7, tp, 148f
140:              ori          s4, a5, -1752
141:              andi         s2, a4, 869
                  bltu         a2, s11, 155f
                  sll          s3, t6, t5
                  addi         s4, s2, -672
                  bge          s5, t3, 156f
                  sltu         a4, a4, a3
                  bne          a7, ra, 165f
148:              slli         s5, s5, 31
                  bne          s6, a7, 153f
                  ori          s2, s3, 1499
                  or           a5, s7, s8
                  xor          gp, t0, a1
153:              srai         gp, s2, 19
                  la           s5, sub_1
                  sll          t4, s11, t6
                  ori          zero, sp, 1765
                  sub          s6, s9, sp
                  addi         s5, s5, -70
                  auipc        s7, 187281
                  slti         tp, sp, 553
                  and          t5, zero, t3
                  xori         gp, t5, 1973
                  nop
                  andi         a7, zero, 1845
                  or           s11, gp, a3
main_j2:          jalr         ra, s5, 70 #jump main -> sub_1
                  add          gp, t5, s1
155:              sltiu        a5, s3, 1556
156:              xor          s8, t6, s11
                  ori          a5, a5, -1007
                  xor          a2, a5, gp
                  beq          s2, s5, 163f
                  and          a1, t5, t5
                  auipc        t6, 604077
                  sra          t4, a5, s4
                  la           a6, sub_2
                  sll          s8, ra, a4
                  nop
                  nop
                  slti         a1, t2, -2041
                  addi         a6, a6, 641
                  auipc        s11, 650624
main_j3:          jalr         ra, a6, -641 #jump main -> sub_2
                  sub          t6, s8, a6
                  xori         sp, t6, -397
                  slt          ra, s10, t2
                  addi         t6, zero, -6 #init loop 1 counter
                  srai         zero, s11, 14
                  slti         a6, a1, 1278
                  add          a3, s1, s5
                  addi         a0, zero, 18 #init loop 1 limit
                  slli         t4, s7, 7
main_2_1_t:       xori         s5, ra, -396
                  auipc        s7, 961657
                  addi         t6, t6, 2 #update loop 1 counter
                  addi         gp, zero, -2 #init loop 0 counter
                  addi         t2, zero, 15 #init loop 0 limit
                  andi         a5, s11, -356
                  xor          a7, a1, t6
main_2_0_t:       and          a4, s1, s6
                  srli         a1, a5, 31
                  addi         gp, gp, 8 #update loop 0 counter
                  andi         s11, a6, 741
                  auipc        t5, 153102
                  blt          gp, t2, main_2_0_t #branch for loop 0
                  or           s7, a0, s1
                  or           a2, zero, s6
                  srl          s7, sp, t4
                  slti         s3, s7, 1181
                  bltu         t6, a0, main_2_1_t #branch for loop 1
                  lui          s6, 872485
163:              ori          s11, s4, -1011
                  srli         t6, s7, 9
165:              slti         a6, t3, -805
                  or           t0, a6, a6
                  slti         t2, s10, -111
                  or           s3, t0, a5
                  beq          t1, a0, 170f
170:              sltu         s9, a2, a7
                  la x6, test_done
                  jalr x0, x6, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            srai         s4, a2, 17
                  sltiu        s8, t2, -539
                  blt          t2, a0, sub_4_stack_p
                  ori          a3, s0, 476
                  slti         s3, t1, -427
sub_4_stack_p:    addi         s1, s1, -40
                  slli         tp, zero, 9
                  sw           ra, 4(s1)
                  auipc        tp, 489407
                  srl          sp, t0, s6
                  nop
                  slt          s5, a3, t4
                  sltu         tp, t4, s0
                  la           a5, sub_5
                  srli         s2, t2, 24
                  addi         a5, a5, -779
                  and          gp, tp, sp
                  srai         s6, sp, 7
                  sltu         a0, s2, s1
sub_4_j6:         jalr         ra, a5, 780 #jump sub_4 -> sub_5
                  addi         a4, zero, 6 #init loop 0 counter
                  addi         gp, zero, -5 #init loop 0 limit
sub_4_0_0_t:      add          s9, s2, t2
                  sltu         a5, a4, s10
                  addi         a4, a4, -10 #update loop 0 counter
                  lui          a6, 259258
                  bge          a4, gp, sub_4_0_0_t #branch for loop 0
                  nop
                  addi         a1, zero, 5 #init loop 1 counter
                  addi         t0, zero, -14 #init loop 1 limit
sub_4_1_1_t:      or           s3, a4, zero
                  addi         a1, a1, -7 #update loop 1 counter
                  addi         a4, zero, 8 #init loop 0 counter
                  addi         t6, zero, 17 #init loop 0 limit
sub_4_1_0_t:      slt          gp, a1, t6
                  addi         a4, a4, 9 #update loop 0 counter
                  beq          a4, t6, sub_4_1_0_t #branch for loop 0
                  bge          a1, t0, sub_4_1_1_t #branch for loop 1
                  slt          t5, s9, tp
                  addi         t0, s5, -106
                  addi         zero, t3, -133
                  xori         t6, t2, 600
                  srli         s4, s9, 11
                  bltu         s4, a4, 23f
                  srai         a5, s8, 9
                  andi         a6, ra, 2036
                  sltiu        t5, gp, 134
                  nop
                  xor          a6, t4, t5
                  or           a5, s3, s3
                  sll          zero, a1, s7
                  sll          s0, t5, t6
                  sub          s9, t5, gp
                  bge          a3, s7, 19f
                  and          s9, s10, a2
                  blt          s10, t6, 30f
                  xor          s2, s11, a7
                  ori          ra, s9, 444
19:               auipc        s2, 617574
                  addi         a5, s10, 1499
                  sltiu        s7, tp, -1647
                  ori          a6, a3, 922
23:               xori         t0, s1, 160
                  ori          t2, t3, -521
                  xor          zero, t0, sp
                  sltu         a7, s9, t2
                  sra          s4, a0, ra
                  addi         s4, s7, -820
                  lui          s8, 297338
30:               bltu         gp, s6, 47f
                  bne          t4, a4, 42f
                  add          sp, a3, s10
                  xor          t5, s9, t0
                  sub          t6, a6, sp
                  srai         tp, s2, 20
                  lui          s2, 763023
                  lui          s9, 698577
                  xor          s6, a1, t4
                  lui          s9, 703887
                  and          a4, a2, s10
                  srai         s0, s9, 24
42:               add          a7, a2, s4
                  and          s8, tp, s6
                  slti         tp, tp, -1274
                  add          s6, s2, tp
                  bltu         s9, t0, 61f
47:               and          s8, a6, s2
                  xori         s3, t1, -1898
                  slti         t6, s6, -1608
                  bgeu         a6, sp, 70f
                  sra          sp, a0, sp
                  srli         ra, a0, 14
                  add          s2, s10, ra
                  bgeu         s0, s6, 58f
                  xor          s9, a2, t3
                  slli         a0, s9, 24
                  xor          a2, a6, a1
58:               sltiu        s6, t0, 1785
                  addi         tp, s6, -354
                  beq          s11, a2, 76f
61:               sltiu        s4, t6, -1554
                  blt          t4, t5, 79f
                  nop
                  srli         t4, t1, 25
                  sub          zero, s8, t1
                  sra          s7, t2, a6
                  sltiu        s10, s3, 766
                  slli         a2, s9, 27
                  sll          gp, t1, t0
70:               sltiu        sp, t6, -1127
                  xori         s11, a4, 441
                  sltu         s9, a0, s3
                  srli         s2, s10, 18
                  sub          a7, s4, s6
                  blt          a2, gp, 77f
76:               slt          a7, s5, t6
77:               sll          t6, tp, s2
                  sltu         tp, a0, t5
79:               sltiu        ra, s11, -505
                  lui          s5, 772657
                  auipc        sp, 9277
                  sra          a4, t1, s7
                  sra          s8, s1, a7
                  slti         s2, s5, -403
                  andi         s5, s7, -724
                  lui          t4, 758354
                  add          a4, a1, tp
                  sra          s4, tp, gp
                  slli         s3, s7, 12
                  slli         ra, t4, 8
                  srli         a2, sp, 14
                  sra          a6, a6, s3
                  xor          zero, t0, a1
                  xori         a5, a4, -747
                  srai         s10, a3, 27
                  blt          gp, s0, 115f
                  auipc        t5, 193810
                  auipc        s0, 485161
                  beq          sp, s1, 107f
                  auipc        t4, 370600
                  sub          t6, ra, s7
                  sltu         t5, t6, a6
                  srli         s0, a5, 19
                  sra          ra, ra, a6
                  nop
                  andi         t0, s4, -1276
107:              sll          ra, s5, ra
                  lui          s4, 317057
                  addi         a2, a3, 1690
                  beq          a2, a4, 112f
                  addi         s10, t6, 1392
112:              bne          s11, s0, 115f
                  xor          a4, a6, t3
                  slti         t4, tp, 1621
115:              bgeu         a2, s7, 119f
                  sltu         a5, s2, t5
                  xor          a0, sp, t2
                  bne          gp, s7, 130f
119:              srl          s9, t4, s10
                  andi         t2, t2, 1048
                  sra          s6, t2, a4
                  andi         t6, a5, 618
                  srli         s5, s11, 10
                  sra          s3, a0, ra
                  xori         t5, gp, 103
                  slti         s8, t5, -810
                  nop
                  xor          a7, s2, s0
                  srai         s8, a7, 9
130:              xori         s5, a5, 1490
                  slt          s4, s5, s9
                  nop
                  lw           ra, 4(s1)
                  sra          a4, t4, t0
                  addi         s1, s1, 40
                  nop
                  srai         t6, s3, 9
                  andi         a1, s6, -1611
                  auipc        s11, 956275
                  xor          a1, s7, t1
                  lui          sp, 735851
                  slli         gp, t5, 9
182:              addi x20, x1, 0
182:              jalr x20, x20, 0
sub_3:            sra          a3, t5, t1
                  srai         s5, t4, 31
                  sll          gp, a6, a7
                  auipc        zero, 826797
                  xor          t6, s9, s9
                  addi         s1, s1, -56
                  slt          t4, t1, zero
                  sw           ra, 4(s1)
                  addi         s8, t5, -822
                  add          a3, s9, s0
                  and          a7, s9, zero
                  sra          s0, s11, s8
                  sub          s7, a2, s1
                  nop
                  sra          a5, a5, ra
                  beq          s2, s9, 6f
6:                auipc        s6, 546833
                  bltu         t0, t5, 13f
                  or           s3, s10, sp
                  auipc        s0, 1039536
                  nop
                  xor          a2, s5, zero
                  bgeu         s1, t1, 19f
13:               sll          s9, a2, s0
                  or           a5, ra, ra
                  addi         gp, a2, 238
                  bgeu         s1, a5, 19f
                  blt          t4, a5, 19f
                  bge          t0, t2, 19f
19:               andi         t0, sp, -1522
                  slli         tp, s0, 22
                  slti         t6, s3, -1572
                  ori          s3, t1, 743
                  lw           ra, 4(s1)
                  slli         a2, zero, 24
                  addi         s1, s1, 56
                  xor          s3, t4, tp
                  or           a6, a2, s5
                  andi         a5, s11, -121
                  sra          s8, s11, a3
40:               addi x27, x1, 0
40:               jalr x27, x27, 0
sub_1:            nop
                  or           s7, s0, s11
                  addi         s1, s1, -44
                  srl          sp, gp, t6
                  srai         t6, s5, 6
                  addi         s2, s4, 2003
                  sw           ra, 4(s1)
                  slli         s6, ra, 30
                  srai         a4, a2, 7
                  sll          a6, tp, s0
                  nop
                  addi         a6, zero, -9 #init loop 1 counter
                  slti         a0, s6, -2016
                  addi         s8, zero, 7 #init loop 1 limit
sub_1_23_1_t:     sub          ra, tp, gp
                  addi         a6, a6, 8 #update loop 1 counter
                  addi         s3, zero, 10 #init loop 0 counter
                  addi         s10, zero, 10 #init loop 0 limit
                  srai         a1, a2, 13
sub_1_23_0_t:     sub          s9, t5, t2
                  addi         s3, s3, -9 #update loop 0 counter
                  bgeu         s3, s10, sub_1_23_0_t #branch for loop 0
                  beq          a6, s8, sub_1_23_1_t #branch for loop 1
                  sra          a2, a4, a1
                  addi         t0, zero, 9 #init loop 1 counter
                  auipc        t5, 902749
                  addi         s2, zero, 18 #init loop 1 limit
sub_1_17_1_t:     add          a2, gp, s9
                  addi         t0, t0, 5 #update loop 1 counter
                  sra          t5, a2, s10
                  addi         s5, zero, 0 #init loop 0 counter
                  addi         s10, zero, 20 #init loop 0 limit
sub_1_17_0_t:     or           s11, a6, s0
                  addi         s5, s5, 7 #update loop 0 counter
                  srli         t4, a1, 16
                  srli         a7, s2, 21
                  slti         gp, gp, -262
                  auipc        a1, 956892
                  bltu         s5, s10, sub_1_17_0_t #branch for loop 0
                  add          a5, a5, a7
                  blt          t0, s2, sub_1_17_1_t #branch for loop 1
                  andi         t6, zero, 182
                  addi         a5, zero, 6 #init loop 0 counter
                  srai         a0, a6, 28
                  slt          t0, a4, a6
                  ori          gp, s5, 1835
                  ori          s8, t0, -100
                  addi         a6, zero, 14 #init loop 0 limit
                  lui          zero, 587595
                  auipc        s9, 384136
sub_1_30_0_t:     add          s0, a4, t1
                  sltu         a1, a3, s7
                  lui          s6, 985301
                  andi         a7, t2, -1027
                  and          a1, s6, s8
                  and          t0, a5, t2
                  addi         a5, a5, 9 #update loop 0 counter
                  nop
                  sltiu        ra, t0, -509
                  andi         s2, s9, -1897
                  sltiu        a1, gp, -1193
                  sub          t4, t4, gp
                  and          s8, t2, s9
                  blt          a5, a6, sub_1_30_0_t #branch for loop 0
                  add          a1, sp, s11
                  addi         a4, zero, 10 #init loop 1 counter
                  lui          t0, 934266
                  slti         a7, a1, -1847
                  nop
                  slli         a3, s11, 5
                  addi         s8, zero, 16 #init loop 1 limit
                  slt          a1, zero, s4
                  nop
                  or           s4, a5, zero
                  slt          t5, s4, gp
sub_1_21_1_t:     addi         s4, s3, -34
                  addi         a4, a4, 6 #update loop 1 counter
                  xor          gp, s3, gp
                  addi         s7, zero, -7 #init loop 0 counter
                  addi         t2, zero, 11 #init loop 0 limit
sub_1_21_0_t:     and          sp, a0, t5
                  addi         s7, s7, 6 #update loop 0 counter
                  sltu         t0, t2, tp
                  beq          s7, t2, sub_1_21_0_t #branch for loop 0
                  sub          zero, t6, s9
                  beq          a4, s8, sub_1_21_1_t #branch for loop 1
                  addi         s4, s2, 1426
                  addi         a1, zero, -2 #init loop 0 counter
                  sltiu        a6, a2, 1029
                  lui          t6, 61517
                  srli         ra, zero, 1
                  addi         s3, zero, -9 #init loop 0 limit
                  sltu         s7, t0, a6
sub_1_28_0_t:     and          t5, a5, a1
                  and          t6, s1, a5
                  srai         s2, s9, 10
                  srl          t6, a5, t0
                  addi         a1, a1, -7 #update loop 0 counter
                  sltu         t4, s7, s4
                  nop
                  srli         s8, a5, 24
                  bne          a1, s3, sub_1_28_0_t #branch for loop 0
                  slt          a4, t4, s3
                  addi         a1, zero, -4 #init loop 0 counter
                  sra          sp, zero, s5
                  addi         gp, zero, 14 #init loop 0 limit
sub_1_5_0_t:      sltiu        s3, gp, 629
                  addi         a1, a1, 1 #update loop 0 counter
                  bltu         a1, gp, sub_1_5_0_t #branch for loop 0
                  auipc        a5, 324965
                  addi         a7, zero, 8 #init loop 1 counter
                  sub          s4, a3, t3
                  srli         s6, s5, 1
                  addi         a2, zero, 14 #init loop 1 limit
                  slt          s9, a6, a6
                  srai         t5, tp, 2
                  srl          t6, s8, s9
                  sltu         a0, sp, s3
sub_1_22_1_t:     add          s8, s5, s4
                  sra          gp, gp, s8
                  addi         a7, a7, 10 #update loop 1 counter
                  srl          s11, s7, a4
                  addi         s3, zero, -6 #init loop 0 counter
                  or           t0, a3, s9
                  auipc        s4, 321279
                  andi         s6, zero, -1357
                  addi         a6, zero, -17 #init loop 0 limit
                  slti         ra, s7, -938
                  or           s6, t1, a5
sub_1_22_0_t:     or           s7, t2, t0
                  add          gp, t1, zero
                  andi         s5, t2, -1592
                  or           tp, t6, t4
                  srl          t6, s9, t3
                  addi         s3, s3, -5 #update loop 0 counter
                  auipc        s4, 541722
                  bge          s3, a6, sub_1_22_0_t #branch for loop 0
                  xor          s11, ra, a4
                  sra          s7, a6, s5
                  xori         a0, a1, -554
                  add          s8, s4, s6
                  slt          s5, ra, a0
                  blt          a7, a2, sub_1_22_1_t #branch for loop 1
                  sll          ra, s6, t6
                  addi         a2, zero, 3 #init loop 0 counter
                  addi         sp, zero, 7 #init loop 0 limit
                  sll          t6, s10, s9
                  xor          s5, t1, s4
                  slti         tp, s4, -1921
sub_1_8_0_t:      auipc        t6, 411555
                  xor          s7, s7, s5
                  addi         a2, a2, 9 #update loop 0 counter
                  slli         zero, s8, 9
                  srl          t5, s7, s0
                  sub          s3, s5, s3
                  srai         ra, a4, 22
                  auipc        a1, 1046120
                  and          s11, s10, a6
                  bltu         a2, sp, sub_1_8_0_t #branch for loop 0
                  sub          a7, t1, a3
                  addi         tp, zero, 5 #init loop 1 counter
                  srli         s7, s7, 3
                  nop
                  xori         t0, gp, -1596
                  ori          s7, s9, -255
                  addi         s0, zero, -13 #init loop 1 limit
                  sltu         a0, tp, s0
sub_1_29_1_t:     andi         t0, a0, -825
                  nop
                  addi         tp, tp, -9 #update loop 1 counter
                  slli         t4, a2, 17
                  lui          a1, 973234
                  addi         t5, zero, -7 #init loop 0 counter
                  and          s3, a7, a5
                  xor          a3, gp, a5
                  addi         t6, zero, 3 #init loop 0 limit
                  slli         a6, t1, 14
sub_1_29_0_t:     ori          a4, ra, 1545
                  lui          s3, 1045056
                  addi         t5, t5, 2 #update loop 0 counter
                  nop
                  blt          t5, t6, sub_1_29_0_t #branch for loop 0
                  sub          a2, s7, a6
                  sra          s3, a2, s2
                  slt          t0, t3, t1
                  or           gp, s1, s6
                  auipc        t0, 16984
                  sll          s11, zero, a3
                  sltu         ra, t1, a4
                  slli         a5, s0, 14
                  bne          tp, s0, sub_1_29_1_t #branch for loop 1
                  slti         ra, gp, -1823
                  addi         a4, zero, 2 #init loop 0 counter
                  nop
                  srai         s10, t2, 24
                  slt          s7, a7, s1
                  slli         a5, s7, 28
                  sra          s5, a4, s10
                  ori          s10, s7, 500
                  sra          sp, tp, t5
                  nop
                  andi         s8, s9, 1667
                  sltu         gp, s5, a0
                  nop
                  nop
                  or           s3, a5, t4
                  lui          s10, 769032
                  srai         a6, s11, 19
                  addi         t5, zero, -13 #init loop 0 limit
                  addi         s3, s10, 1772
                  addi         s3, s6, 936
                  or           t2, a6, tp
                  sll          s10, s3, t4
                  nop
sub_1_18_0_t:     addi         s6, s6, -737
                  addi         a4, a4, -6 #update loop 0 counter
                  lui          s6, 709913
                  ori          a5, s3, -36
                  bge          a4, t5, sub_1_18_0_t #branch for loop 0
                  slt          sp, a4, s4
                  addi         t0, zero, 9 #init loop 1 counter
                  addi         t2, zero, 15 #init loop 1 limit
                  srli         s0, zero, 20
                  slli         sp, a6, 1
                  or           a5, tp, s4
sub_1_25_1_t:     sltu         s9, a1, t6
                  sra          t4, t3, a6
                  addi         t0, t0, 2 #update loop 1 counter
                  addi         a2, zero, 10 #init loop 0 counter
                  sll          a4, s1, s10
                  addi         a3, zero, -9 #init loop 0 limit
                  slli         t5, sp, 19
                  auipc        tp, 848320
                  andi         a7, s6, 697
                  addi         s2, a5, 60
                  add          s8, t0, t1
sub_1_25_0_t:     auipc        t5, 789617
                  slt          a0, t4, a6
                  addi         a2, a2, -4 #update loop 0 counter
                  xor          t6, a4, a0
                  srl          s6, sp, s2
                  bge          a2, a3, sub_1_25_0_t #branch for loop 0
                  sll          sp, a3, s2
                  bne          t0, t2, sub_1_25_1_t #branch for loop 1
                  srli         sp, a4, 23
                  addi         t6, zero, 4 #init loop 0 counter
                  lui          s6, 583518
                  xori         a1, a5, 1466
                  sltu         a0, s4, a0
                  addi         t0, s5, -1189
                  auipc        s2, 358195
                  auipc        s6, 641112
                  slti         s2, a7, -1747
                  srai         a4, s1, 5
                  add          a4, s1, t2
                  xori         s6, t2, -234
                  addi         s4, zero, -17 #init loop 0 limit
                  or           t5, sp, t5
                  add          sp, s10, tp
                  xori         a7, t1, 182
                  xor          a4, t0, a5
                  sra          ra, tp, s2
                  sltiu        a5, s7, 1929
                  nop
sub_1_1_0_t:      xori         sp, a1, -120
                  addi         t4, t1, -1971
                  addi         t6, t6, -1 #update loop 0 counter
                  slt          sp, a5, s3
                  slli         a4, t5, 20
                  bge          t6, s4, sub_1_1_0_t #branch for loop 0
                  srli         t0, t5, 24
                  addi         t4, zero, 9 #init loop 1 counter
                  ori          s11, a3, 865
                  ori          a1, t5, 1864
                  xor          s7, t2, a0
                  slti         t5, s2, 842
                  addi         a3, zero, 20 #init loop 1 limit
                  slli         s2, t4, 4
                  sltiu        t2, a6, -289
sub_1_6_1_t:      sltiu        s4, sp, 1344
                  sra          zero, s1, a5
                  srl          s5, s1, a4
                  addi         t4, t4, 5 #update loop 1 counter
                  xor          s4, t3, t4
                  addi         a2, zero, -5 #init loop 0 counter
                  and          s2, a0, a3
                  sltiu        s8, s2, -461
                  addi         a4, zero, 1 #init loop 0 limit
                  and          a7, tp, a0
sub_1_6_0_t:      and          a0, t3, t3
                  sub          a5, t2, ra
                  sltu         s9, t1, t5
                  addi         a2, a2, 6 #update loop 0 counter
                  or           s0, t6, a4
                  bne          a2, a4, sub_1_6_0_t #branch for loop 0
                  blt          t4, a3, sub_1_6_1_t #branch for loop 1
                  nop
                  addi         s7, zero, -9 #init loop 1 counter
                  and          a3, t0, s2
                  srli         s6, a3, 13
                  addi         s5, zero, 0 #init loop 1 limit
sub_1_10_1_t:     or           s9, tp, a1
                  xori         a6, t2, 1097
                  addi         s2, a4, 680
                  addi         s7, s7, 3 #update loop 1 counter
                  addi         s0, zero, 10 #init loop 0 counter
                  addi         t5, zero, 9 #init loop 0 limit
                  srai         zero, s7, 31
                  or           a5, s10, t6
                  nop
                  auipc        a6, 810301
                  slli         tp, t1, 27
sub_1_10_0_t:     andi         gp, t5, -522
                  add          a7, s1, s8
                  addi         s0, s0, -7 #update loop 0 counter
                  bgeu         s0, t5, sub_1_10_0_t #branch for loop 0
                  bne          s7, s5, sub_1_10_1_t #branch for loop 1
                  sll          a7, t2, s6
                  addi         sp, zero, -7 #init loop 1 counter
                  sll          s9, t1, t5
                  addi         a0, zero, 4 #init loop 1 limit
                  lui          t5, 450212
sub_1_12_1_t:     auipc        t5, 563142
                  addi         sp, sp, 10 #update loop 1 counter
                  addi         ra, zero, -9 #init loop 0 counter
                  addi         t6, zero, -19 #init loop 0 limit
                  sltiu        a3, t3, -1387
sub_1_12_0_t:     auipc        t5, 496334
                  addi         ra, ra, -10 #update loop 0 counter
                  sra          s7, a7, t5
                  beq          ra, t6, sub_1_12_0_t #branch for loop 0
                  srl          s7, s7, t3
                  srli         s5, t1, 30
                  bltu         sp, a0, sub_1_12_1_t #branch for loop 1
                  sll          s9, tp, t0
                  addi         t6, zero, -5 #init loop 1 counter
                  addi         s6, zero, 16 #init loop 1 limit
sub_1_2_1_t:      addi         s10, t1, 1381
                  xor          a6, s11, a4
                  andi         s10, a2, -842
                  addi         t6, t6, 6 #update loop 1 counter
                  addi         a7, a4, 413
                  addi         t4, zero, 9 #init loop 0 counter
                  slli         t0, a2, 13
                  addi         gp, zero, 6 #init loop 0 limit
sub_1_2_0_t:      slti         ra, a3, 1885
                  addi         t4, t4, -1 #update loop 0 counter
                  add          a4, zero, s7
                  bgeu         t4, gp, sub_1_2_0_t #branch for loop 0
                  slt          a2, s9, a3
                  xori         ra, s6, 747
                  blt          t6, s6, sub_1_2_1_t #branch for loop 1
                  srai         s8, a4, 26
                  addi         a0, zero, 8 #init loop 1 counter
                  addi         s10, zero, 5 #init loop 1 limit
                  ori          a3, t2, -1469
                  xori         zero, a6, -550
                  andi         s4, s3, -1055
sub_1_26_1_t:     or           s6, a4, t4
                  addi         a0, a0, -3 #update loop 1 counter
                  auipc        s4, 1008661
                  nop
                  addi         ra, zero, 10 #init loop 0 counter
                  addi         t2, zero, 9 #init loop 0 limit
                  nop
                  srli         s9, t3, 5
                  xor          s2, s7, t6
                  xori         t4, s4, -765
                  sub          s3, a5, s10
                  add          a3, s1, s0
                  sll          s11, s5, t2
                  or           t0, s1, s2
                  ori          a6, tp, -1647
                  sltiu        tp, s10, 181
sub_1_26_0_t:     auipc        a6, 173083
                  or           sp, sp, tp
                  slli         t4, a1, 26
                  addi         ra, ra, -5 #update loop 0 counter
                  bgeu         ra, t2, sub_1_26_0_t #branch for loop 0
                  add          a4, a5, t2
                  sub          s6, s8, zero
                  bge          a0, s10, sub_1_26_1_t #branch for loop 1
                  xor          a4, s3, s9
                  addi         a4, zero, 8 #init loop 0 counter
                  sltu         s11, s8, s9
                  sltiu        a7, s0, -924
                  slti         s6, a7, 1271
                  addi         t2, zero, 10 #init loop 0 limit
                  lui          sp, 606461
                  srli         a3, s5, 18
                  sltiu        s4, s3, -637
sub_1_11_0_t:     and          t4, t3, s9
                  addi         a4, a4, 3 #update loop 0 counter
                  xori         ra, t3, -1620
                  auipc        s2, 270606
                  sub          s6, s5, s6
                  xor          s2, t4, s5
                  srl          a1, s0, a0
                  srl          a0, sp, a7
                  bltu         a4, t2, sub_1_11_0_t #branch for loop 0
                  ori          s6, s7, -973
                  addi         s10, zero, 6 #init loop 1 counter
                  sltu         zero, t2, gp
                  sra          a1, t6, a3
                  srai         s8, s0, 4
                  addi         t6, zero, 6 #init loop 1 limit
                  ori          a2, t6, 1906
                  srl          s9, ra, s0
sub_1_14_1_t:     sub          s2, s11, tp
                  addi         s10, s10, -5 #update loop 1 counter
                  sra          a3, a7, s2
                  addi         s0, zero, -10 #init loop 0 counter
                  add          s5, s9, s2
                  addi         tp, zero, -14 #init loop 0 limit
sub_1_14_0_t:     sub          t5, zero, ra
                  andi         a1, a1, -1270
                  addi         s0, s0, -3 #update loop 0 counter
                  bge          s0, tp, sub_1_14_0_t #branch for loop 0
                  or           a6, s0, s9
                  bgeu         s10, t6, sub_1_14_1_t #branch for loop 1
                  sub          t0, a1, t6
                  addi         s11, zero, -6 #init loop 1 counter
                  addi         s7, zero, -13 #init loop 1 limit
                  sltiu        t5, s0, -1556
sub_1_15_1_t:     and          a7, a1, a7
                  addi         s11, s11, -7 #update loop 1 counter
                  addi         a3, zero, 8 #init loop 0 counter
                  addi         a5, zero, 13 #init loop 0 limit
sub_1_15_0_t:     xor          t4, s7, s5
                  slt          a0, s4, s9
                  addi         a3, a3, 4 #update loop 0 counter
                  bltu         a3, a5, sub_1_15_0_t #branch for loop 0
                  beq          s11, s7, sub_1_15_1_t #branch for loop 1
                  xor          s9, sp, a3
                  addi         a1, zero, -9 #init loop 0 counter
                  slt          sp, t5, a4
                  addi         s5, t4, 1472
                  andi         zero, t2, -18
                  and          a0, t2, a1
                  auipc        t5, 179606
                  ori          sp, ra, 182
                  addi         gp, zero, 1 #init loop 0 limit
                  slt          t2, s2, t3
                  slli         t4, s11, 24
                  sltiu        t2, a0, -600
sub_1_0_0_t:      lui          s8, 819234
                  slli         s4, s10, 20
                  addi         a1, a1, 5 #update loop 0 counter
                  and          s11, t5, a7
                  sltiu        a4, t4, 1415
                  or           s0, t0, s11
                  slti         t5, s5, 1632
                  beq          a1, gp, sub_1_0_0_t #branch for loop 0
                  srl          tp, ra, a2
                  addi         a5, zero, 6 #init loop 1 counter
                  and          s4, t6, t6
                  and          s0, a6, a3
                  srl          a7, a1, a0
                  addi         s6, zero, 15 #init loop 1 limit
sub_1_19_1_t:     slti         t2, a7, -1176
                  add          a4, t1, s6
                  slt          ra, sp, ra
                  xori         a0, t5, 1609
                  srai         a0, t5, 15
                  addi         a5, a5, 3 #update loop 1 counter
                  sltu         a0, s6, tp
                  srli         t5, tp, 20
                  ori          s3, gp, -1569
                  addi         a3, zero, 0 #init loop 0 counter
                  sltu         s7, s10, s4
                  addi         s11, zero, -5 #init loop 0 limit
                  and          tp, t2, t6
sub_1_19_0_t:     xori         t0, a7, 1977
                  nop
                  addi         a3, a3, -9 #update loop 0 counter
                  bge          a3, s11, sub_1_19_0_t #branch for loop 0
                  slt          s10, gp, s0
                  beq          a5, s6, sub_1_19_1_t #branch for loop 1
                  or           s3, a5, a1
                  addi         s9, zero, 3 #init loop 0 counter
                  sub          s5, s3, t5
                  srl          s6, s7, s9
                  xor          zero, s7, a7
                  sub          a6, s1, t0
                  xori         t5, s2, -736
                  sll          s4, tp, s0
                  slti         ra, s6, -1515
                  addi         a7, s10, -321
                  addi         s2, zero, 2 #init loop 0 limit
                  add          t4, t2, s3
                  and          a4, s9, s0
                  sub          a6, s5, a4
                  sub          ra, t2, sp
                  auipc        t2, 364133
sub_1_13_0_t:     auipc        t5, 53897
                  xori         t4, s2, -1137
                  sll          a4, s9, s5
                  addi         s9, s9, -1 #update loop 0 counter
                  srl          a6, t3, s5
                  xori         ra, s4, 994
                  auipc        gp, 484305
                  bgeu         s9, s2, sub_1_13_0_t #branch for loop 0
                  srai         s10, a5, 3
                  auipc        a5, 24883
                  slli         s10, s7, 11
                  andi         s8, a2, -452
                  xor          s7, a3, t1
                  andi         t0, s4, -1737
                  sll          s5, s1, s4
                  srl          sp, s3, t6
                  slt          s0, s0, t1
                  srl          s4, s3, a5
                  ori          s6, a0, -1578
                  sra          sp, s4, s8
                  sra          s7, t1, s6
                  add          s7, s6, s6
                  srl          s5, s9, t3
                  slti         a4, a5, -602
                  sll          s6, a7, s5
                  slli         s8, tp, 30
                  slli         t5, zero, 19
                  slti         t4, t5, -170
                  bne          zero, t6, 32f
                  andi         a2, a0, -1365
                  addi         s2, zero, -2 #init loop 0 counter
                  srli         t0, sp, 23
                  addi         t5, zero, 7 #init loop 0 limit
sub_1_3_0_t:      addi         s9, s6, 197
                  addi         s2, s2, 6 #update loop 0 counter
                  bltu         s2, t5, sub_1_3_0_t #branch for loop 0
                  ori          s4, s5, -1758
                  slti         t0, tp, -749
                  beq          s4, a1, 38f
                  or           s2, a4, tp
                  xori         a5, s8, -253
                  beq          s11, s6, 45f
                  ori          t5, t5, -411
                  add          a3, t2, s2
                  blt          s7, a6, 31f
                  add          a5, s4, t3
                  bltu         t2, t6, 48f
31:               srli         a1, s9, 9
32:               bgeu         a3, sp, 48f
                  bne          t1, a7, 43f
                  slt          a6, s5, gp
                  slt          a6, a2, a1
                  andi         sp, gp, -729
                  lui          s10, 529644
38:               sll          t4, s7, s0
                  bgeu         t1, tp, 58f
                  bltu         t5, tp, 47f
                  ori          a4, s4, -1244
                  bge          a3, s8, 49f
43:               sra          gp, s8, t5
                  andi         s0, a2, 1087
45:               srli         t6, t2, 20
                  slli         a2, ra, 21
47:               and          gp, zero, t2
48:               blt          t4, a0, 57f
49:               sub          s9, s1, a6
                  addi         t6, t3, 615
                  srli         a2, a1, 17
                  bge          s4, ra, 55f
                  srl          s2, a1, t0
                  xor          gp, t0, a5
55:               bltu         s0, s5, 62f
                  lui          a5, 996354
57:               add          t2, sp, s11
58:               beq          t4, a6, 70f
                  bgeu         a4, a0, 64f
                  auipc        a3, 159854
                  xor          ra, a1, a4
62:               lui          a5, 389944
                  and          gp, s9, tp
64:               slt          t2, a2, t6
                  slti         a7, s11, 1271
                  nop
                  sll          t4, a1, t6
                  or           s3, s1, a5
                  sll          a0, s9, t2
70:               sra          t5, tp, s3
                  lui          ra, 682703
                  sltu         s8, a2, s4
                  sltu         a6, t6, a7
                  nop
                  and          t5, s8, a3
                  and          a6, a7, s7
                  nop
                  ori          a2, s5, -720
                  lui          a2, 1030507
                  bne          tp, a3, 95f
                  slti         s10, a0, 1467
                  srl          s10, a2, ra
                  bltu         t0, s1, 96f
                  bge          s7, a4, 86f
                  lui          s11, 539991
86:               srl          s11, a2, s1
                  addi         s6, s10, -1725
                  srai         s8, s4, 8
                  slt          a2, s4, sp
                  or           t6, t4, tp
                  xor          a3, t4, a1
                  sra          s3, t3, gp
                  addi         a1, a7, 1274
                  bne          s6, s2, 113f
95:               srli         s8, t6, 24
96:               sltu         t6, s10, s7
                  beq          a5, s6, 113f
                  slt          t2, gp, a6
                  xori         a0, s3, 1785
                  sll          s4, ra, gp
                  and          a4, t2, t5
                  and          t0, s5, t3
                  and          s0, a5, t4
                  sltu         s2, t3, ra
                  xor          t0, t5, s4
                  sltu         a1, a5, a5
                  xor          a1, a1, s2
                  auipc        s9, 210699
                  addi         s11, a3, 875
                  sltiu        gp, sp, 1191
                  andi         t4, a1, -1771
                  lui          s6, 123195
113:              xori         t5, a6, -1571
                  sltu         t0, a2, a1
                  blt          t2, s0, 135f
                  ori          s4, s7, -1614
                  srai         s0, s5, 22
                  add          s3, s10, t5
                  sll          s10, a7, a7
                  sub          a7, tp, t6
                  ori          ra, a3, -673
                  andi         a1, t5, 1154
                  beq          ra, s0, 134f
                  or           a4, a5, a2
                  lui          s8, 28993
                  sra          t6, s9, t1
                  srli         ra, s4, 3
                  and          s5, s11, s3
                  and          t5, t3, t3
                  sltu         a6, s7, t4
                  and          a7, t4, sp
                  sub          s6, a2, a3
                  add          s10, s4, s3
134:              sub          s6, sp, zero
135:              xor          a1, a2, t6
                  sra          tp, s7, t5
                  sltiu        s11, zero, -1669
                  sub          zero, s8, a7
                  bltu         s1, s9, 149f
                  sll          s10, t2, s9
                  bgeu         s0, s2, 160f
                  slti         a3, a1, 1232
                  or           zero, s0, s4
                  xori         tp, s7, 507
                  addi         s4, tp, 935
                  slt          t2, a1, s4
                  addi         s0, ra, 1872
                  sll          tp, t4, s8
149:              blt          t0, s10, 159f
                  bge          a0, ra, 151f
151:              bgeu         s0, a0, 169f
                  sll          s8, a4, tp
                  addi         s8, zero, 6 #init loop 0 counter
                  xor          t2, t2, t1
                  add          a3, s11, tp
                  sra          zero, gp, t4
                  slli         a5, s1, 9
                  addi         s6, zero, -18 #init loop 0 limit
                  nop
sub_1_7_0_t:      xor          sp, a5, t5
                  srl          a5, s10, tp
                  sltu         s2, a4, ra
                  srli         a7, s8, 17
                  sra          a7, t2, a7
                  slt          a5, t2, s1
                  slt          tp, zero, zero
                  slt          t4, s6, a7
                  addi         s8, s8, -8 #update loop 0 counter
                  add          s9, a7, t6
                  srl          sp, s7, s1
                  or           s0, a4, zero
                  sltu         tp, s10, s9
                  andi         gp, a4, -1872
                  nop
                  nop
                  bne          s8, s6, sub_1_7_0_t #branch for loop 0
                  sltu         a3, s2, a1
                  lui          s10, 596781
                  sltiu        zero, t2, -307
                  bne          s3, s8, 174f
                  lui          s11, 402388
                  bltu         a5, a1, 172f
                  sltiu        sp, t2, -369
159:              andi         gp, zero, -1354
160:              or           s8, s8, t0
                  lui          s3, 501949
                  auipc        s9, 761049
                  andi         sp, sp, 2004
                  slt          s5, s5, sp
                  sltu         s11, s4, s1
                  beq          a6, s2, 170f
                  bne          t5, a1, 183f
                  sltu         s6, ra, s8
169:              or           s7, t4, s8
170:              andi         t0, zero, -1113
                  sra          s4, t4, s4
172:              bne          t6, a0, 177f
                  sltu         ra, s8, a2
174:              auipc        ra, 746402
                  sltu         s6, tp, s6
                  sltiu        s0, sp, -320
177:              srl          t0, s1, t6
                  blt          s6, a1, 180f
                  addi         s0, zero, -4 #init loop 0 counter
                  auipc        ra, 334611
                  addi         t2, zero, -12 #init loop 0 limit
                  or           a0, a3, zero
                  srl          t0, gp, s11
                  add          s8, s3, s7
sub_1_24_0_t:     ori          a4, a3, -1552
                  slli         a5, s8, 13
                  xori         a5, s1, -797
                  addi         a1, s4, 790
                  addi         s0, s0, -2 #update loop 0 counter
                  slt          s2, a0, t6
                  addi         s5, zero, -1886
                  slli         s10, t2, 0
                  srai         a4, a0, 20
                  srli         s2, a7, 29
                  sltu         gp, s9, sp
                  slti         t5, a1, 965
                  bne          s0, t2, sub_1_24_0_t #branch for loop 0
                  and          a3, s1, t5
                  sltiu        zero, t5, 1626
180:              sltiu        a2, tp, -1034
                  nop
                  or           t5, s11, t4
183:              srl          a4, s9, sp
                  bltu         s2, t6, 203f
                  auipc        a5, 484552
                  bne          a5, s2, 189f
                  bge          t4, a1, 207f
                  addi         t5, sp, 1054
189:              slli         tp, a0, 18
                  beq          t3, a1, 209f
                  blt          s9, a5, 195f
                  blt          zero, t6, 211f
                  nop
                  slli         a1, a4, 26
195:              blt          a1, ra, 211f
                  srl          sp, s2, zero
                  and          t5, t4, s0
                  beq          a2, s10, 218f
                  nop
                  nop
                  ori          s5, s6, 1913
                  sub          gp, a6, t4
203:              blt          t6, s2, 218f
                  and          a6, zero, s1
                  sltiu        s11, a3, -641
                  or           s0, t6, gp
207:              slt          a0, s1, gp
                  bgeu         sp, t3, 220f
209:              addi         s7, a6, -884
                  nop
211:              add          gp, s0, gp
                  lui          t2, 113563
                  srai         s3, ra, 24
                  lui          a5, 446806
                  andi         s2, s5, -1227
                  srli         gp, a2, 6
                  sll          s2, a3, s6
218:              sll          tp, a6, t6
                  xor          a1, s3, a2
220:              lui          a1, 383231
                  lui          s4, 968840
                  srl          a3, t6, s10
                  add          tp, s2, t0
                  bltu         s9, s7, 231f
                  xori         s7, tp, 328
                  bgeu         a0, a2, 235f
                  bgeu         t0, t4, 228f
228:              srl          t6, a5, t5
                  auipc        s8, 73620
                  bltu         t4, a7, 240f
231:              bne          a3, t6, 249f
                  srli         t6, a1, 8
                  slti         sp, s9, 39
                  xor          t4, a7, a1
235:              bgeu         gp, s7, 238f
                  bge          s9, t4, 254f
                  addi         s7, s3, 1569
238:              beq          a6, s8, 245f
                  srli         s6, s5, 6
240:              sra          a0, t6, s2
                  lui          s9, 365171
                  beq          s7, s3, 255f
                  bge          t4, s8, 259f
                  srai         s8, gp, 17
245:              andi         s8, s0, 1334
                  slti         t5, s10, 758
                  ori          a1, t6, 1851
                  add          s2, a3, t3
249:              addi         s0, t1, 64
                  bgeu         s5, s2, 261f
                  ori          a5, a7, 1983
                  slli         s9, s5, 31
                  lui          t2, 977545
254:              slt          t4, a6, t5
255:              or           s2, t4, a3
                  ori          s3, a5, 837
                  andi         s2, a1, -1571
                  blt          gp, s10, 273f
259:              andi         t0, t1, 1417
                  lui          s11, 776046
261:              slti         a4, a4, -1764
                  addi         t4, zero, -6 #init loop 1 counter
                  addi         gp, zero, -18 #init loop 1 limit
                  slli         t0, sp, 17
                  add          s4, a0, s6
sub_1_9_1_t:      add          t0, a5, gp
                  sltu         s6, a0, ra
                  sra          s4, a2, tp
                  slti         a3, a7, -176
                  xor          t6, t1, a5
                  ori          s11, t1, -459
                  sll          a5, a4, s2
                  addi         t4, t4, -4 #update loop 1 counter
                  addi         s10, zero, -2 #init loop 0 counter
                  slti         a5, a1, 611
                  srl          s11, s11, t4
                  ori          t2, t3, -404
                  addi         ra, zero, 5 #init loop 0 limit
sub_1_9_0_t:      nop
                  ori          s6, a0, 237
                  addi         s10, s10, 2 #update loop 0 counter
                  sltiu        s6, a0, 1824
                  blt          s10, ra, sub_1_9_0_t #branch for loop 0
                  andi         t0, t1, 761
                  slti         s7, s4, 1581
                  beq          t4, gp, sub_1_9_1_t #branch for loop 1
                  and          s8, s2, s11
                  srl          sp, t1, s4
                  sub          s11, s4, s1
                  sll          a0, a4, a5
                  and          a6, a1, s1
                  auipc        a5, 809080
                  sltu         s2, s7, sp
                  beq          t2, t4, 278f
                  slti         s7, a5, -1232
                  srli         s3, s2, 18
                  slt          s5, ra, s9
                  and          s2, t0, s8
273:              sltu         s8, zero, s4
                  or           a5, s6, t2
                  addi         ra, s5, -584
                  bge          zero, s4, 283f
                  xor          t4, s4, a6
278:              or           a0, a2, s6
                  blt          t4, s5, 298f
                  srli         s6, s0, 23
                  addi         s5, zero, -361
                  beq          tp, a5, 292f
283:              bgeu         gp, zero, 296f
                  beq          s6, s5, 291f
                  add          zero, a0, a6
                  srai         s4, t2, 1
                  and          sp, s10, s4
                  addi         s3, s8, 1958
                  bgeu         a3, s10, 291f
                  addi         s2, a7, 1200
291:              srai         sp, a3, 25
292:              add          a4, sp, s7
                  add          s6, s0, t0
                  sll          a7, s11, s4
                  bgeu         a2, sp, 298f
296:              ori          t0, a3, 1655
                  andi         a7, t1, -909
298:              add          t5, a7, s3
                  blt          t4, t0, 309f
                  sra          s6, s5, s0
                  slti         s11, zero, -160
                  srai         t5, s10, 10
                  srli         t0, t2, 15
                  sra          s9, t5, t4
                  slt          t0, a1, zero
                  sra          t4, s11, s5
                  sub          sp, s7, ra
                  auipc        a4, 494278
309:              beq          a2, gp, 316f
                  andi         s6, s11, 118
                  slti         tp, s10, 143
                  xori         s6, a3, -329
                  slt          t2, s6, s5
                  bne          t3, t5, 315f
315:              slt          a5, s4, s11
316:              xor          tp, a2, a2
                  blt          a3, sp, 329f
                  add          s2, sp, s9
                  auipc        t0, 374383
                  lui          s4, 375193
                  slli         s4, zero, 27
                  slti         a4, a1, 1926
                  slli         a7, a3, 15
                  slti         s4, s4, 402
                  andi         sp, s9, -1369
                  bltu         s7, t0, 345f
                  xori         a5, t0, -1012
                  xori         s8, a4, -1525
329:              addi         s9, s5, 1308
                  and          a6, s2, s10
                  beq          a6, s2, 334f
                  xor          t6, gp, t0
                  xor          s7, ra, a4
334:              or           s7, s5, a0
                  srai         ra, a2, 6
                  lui          s3, 377685
                  bgeu         t3, a5, 347f
                  srli         s9, a0, 16
                  bltu         s9, t2, 352f
                  auipc        ra, 284962
                  srl          a6, a6, t0
                  andi         t2, a0, 1856
                  bgeu         t5, t4, 363f
                  add          ra, t0, a4
345:              andi         a5, a5, 1979
                  beq          s0, t3, 362f
347:              slt          s9, a5, a0
                  lui          s0, 676309
                  ori          t5, s10, 1262
                  ori          s6, t2, -908
                  xori         a6, zero, -369
352:              bgeu         t2, s10, 368f
                  bgeu         a1, s5, 364f
                  sltiu        s6, s0, 180
                  xor          s11, gp, s8
                  slli         t4, tp, 2
                  bge          s9, zero, 362f
                  bltu         s0, sp, 373f
                  add          a6, ra, a4
                  lui          a2, 190850
                  slti         ra, t5, 715
362:              srl          t5, s2, s4
363:              sub          s11, s2, s5
364:              add          t0, a5, t0
                  xor          s7, a7, t4
                  blt          s3, s9, 379f
                  lui          a6, 298817
368:              addi         t6, zero, 2006
                  ori          t6, a7, -306
                  nop
                  srli         s5, a7, 3
                  or           a7, t3, zero
373:              sra          t5, t6, s1
                  sll          sp, a0, s3
                  sltu         t4, s1, s8
                  beq          s5, t4, 395f
                  blt          s1, a0, 393f
                  blt          s11, s10, 397f
379:              xori         a6, t2, 995
                  add          s4, a1, s10
                  bltu         s6, s1, 399f
                  and          s4, t4, s3
                  srl          a6, ra, a1
                  add          zero, a6, s11
                  sltu         s8, s1, zero
                  bne          s7, t6, 390f
                  beq          sp, a0, 406f
                  sltu         a2, gp, a0
                  lui          t5, 332611
390:              andi         t0, s11, -1309
                  sltiu        s6, t4, 951
                  bgeu         s9, t4, 401f
393:              lui          a7, 222335
                  auipc        a0, 501798
395:              blt          s11, t1, 402f
                  sra          sp, s9, s6
397:              or           sp, tp, s3
                  srl          s3, sp, s5
399:              addi         zero, a2, 2008
                  xor          a7, t0, a4
401:              add          s9, t2, a4
402:              bne          zero, t5, 420f
                  bne          s2, ra, 413f
                  srl          s7, a2, s9
                  srai         t0, s7, 8
406:              xor          s6, gp, t5
                  sltiu        t4, s1, -1009
                  or           s6, s7, tp
                  bltu         s6, s0, 424f
                  sltiu        s4, tp, -806
                  beq          a5, a3, 431f
                  addi         t6, zero, 156
413:              xori         s11, s0, -1729
                  blt          a2, sp, 417f
                  addi         ra, s10, 1097
                  xor          s4, a4, t2
417:              bge          a3, zero, 424f
                  slli         s0, s5, 13
                  sltu         s7, s2, s4
420:              or           s0, t0, tp
                  bge          a7, t1, 440f
                  sra          gp, a5, s8
                  andi         a0, a6, -651
424:              srli         s5, s4, 3
                  slti         s3, t3, -1673
                  ori          gp, s1, 958
                  bne          a0, s7, 437f
                  sltu         s10, t0, sp
                  xori         s0, a5, 1868
                  bge          a0, ra, 445f
431:              beq          sp, t4, 433f
                  srl          t0, s3, s7
433:              nop
                  xor          sp, t5, ra
                  slti         s9, s1, 808
                  sra          gp, s3, s7
437:              sll          s3, ra, ra
                  xori         s6, a7, 1813
                  auipc        s11, 94018
440:              srli         s3, gp, 20
                  blt          tp, t1, 461f
                  bltu         tp, t6, 453f
                  ori          a5, s7, 1029
                  sltiu        s7, tp, -18
445:              ori          s11, a1, -711
                  sll          s8, s1, s2
                  blt          t6, s0, 460f
                  slli         t4, t3, 26
                  ori          t5, a1, -786
                  andi         t2, t6, -287
                  srl          s10, s6, a3
                  bne          tp, s0, 465f
453:              ori          t0, a4, 187
                  sltiu        a5, a0, -1684
                  beq          t3, a5, 471f
                  beq          s1, s5, 475f
                  beq          a5, a2, 460f
                  lui          a7, 975166
                  nop
460:              srli         t5, s1, 29
461:              andi         s9, t6, -1802
                  srai         s0, gp, 30
                  addi         a1, s10, 1863
                  sltu         t6, t1, s9
465:              srl          s9, ra, zero
                  slt          a1, t2, a7
                  sub          a3, a5, a6
                  bltu         a6, s6, 475f
                  sltu         s6, t3, s3
                  slti         t5, t1, -248
471:              srai         s6, t6, 6
                  srl          t6, a2, tp
                  blt          s10, t5, 480f
                  and          zero, a3, a2
475:              addi         s4, a5, -1268
                  srai         a4, a0, 1
                  nop
                  sltiu        s4, s7, -1796
                  ori          a1, t0, 1560
480:              sltu         s10, zero, a5
                  and          ra, s7, s3
                  bge          s5, s1, 500f
                  auipc        s8, 767602
                  srai         s3, t3, 31
                  srli         s0, tp, 6
                  srai         a2, sp, 13
                  slli         s9, zero, 10
                  sub          s6, t4, s1
                  andi         s8, s3, 1242
                  auipc        s8, 799590
                  slli         s0, a2, 8
                  bne          a1, s4, 501f
                  and          a0, s11, s6
                  slt          a5, s10, s11
                  and          gp, zero, a6
                  xori         s9, s2, -222
                  sltiu        t5, s5, 1659
                  nop
                  srli         s10, s11, 13
500:              beq          a0, gp, 501f
501:              addi         a5, sp, 1653
                  slt          s5, zero, zero
                  srai         s0, gp, 6
                  bltu         a2, s10, 520f
                  nop
                  sltiu        a5, s10, 337
                  slti         a2, a4, -38
                  srai         s5, t1, 14
                  slti         t6, a1, 1406
                  beq          gp, a6, 520f
                  srai         gp, s6, 20
                  or           t5, s1, s7
                  and          a4, gp, a3
                  lui          s6, 824679
                  xori         s2, s10, -1914
                  nop
                  srai         gp, s0, 22
                  sll          a0, a4, tp
                  srai         s9, s9, 16
520:              andi         ra, a6, 1537
                  beq          t4, s3, 531f
                  sll          s10, a4, t1
                  andi         s5, ra, -1613
                  bne          a2, t3, 536f
                  sltiu        a0, s9, -658
                  xori         gp, a2, -750
                  bgeu         t0, zero, 547f
                  xori         a1, a6, 1301
                  slti         s11, a3, 1659
                  addi         s0, a4, -2038
531:              bltu         t1, s8, 535f
                  ori          t0, s8, -1342
                  sll          a6, s5, a0
                  beq          t6, s7, 553f
535:              nop
536:              slli         t4, s4, 0
                  sra          s6, s7, t6
                  auipc        s8, 832891
                  auipc        s11, 299320
                  sub          s7, s9, s6
                  xori         gp, t3, 825
                  xori         a3, s10, 1318
                  bltu         s9, t2, 559f
                  addi         tp, s10, 1580
                  bge          zero, a0, 550f
                  or           a6, tp, t6
547:              srl          s3, s2, zero
                  srl          s4, s1, a6
                  lui          a2, 954449
550:              slli         s3, t2, 1
                  srl          s5, t3, s4
                  slti         a5, ra, -1105
553:              srl          sp, a7, gp
                  sub          a3, a2, t4
                  or           sp, s3, t3
                  slt          a1, s0, a4
                  bgeu         s7, s8, 572f
                  slli         gp, a6, 10
559:              auipc        sp, 430343
                  andi         t4, t2, 1169
                  bgeu         a0, gp, 580f
                  addi         s4, zero, -321
                  bge          a3, s8, 581f
                  auipc        t2, 568801
                  auipc        a5, 673876
                  ori          a3, s0, -1818
                  nop
                  or           t2, t0, s7
                  slt          a3, s0, t2
                  xor          a1, t0, s4
                  srai         a3, a1, 22
572:              slli         a1, t2, 17
                  beq          t2, s9, 586f
                  xor          a1, t0, ra
                  slt          tp, a7, zero
                  la           t0, sub_4
                  sltu         a3, gp, a4
                  ori          t6, s6, 1755
                  addi         t0, t0, 618
                  sltiu        ra, t6, 1612
                  auipc        t4, 703467
                  blt          s10, sp, sub_1_j4 #branch to jump instr
                  srli         a2, s3, 29
sub_1_j4:         jalr         ra, t0, -617 #jump sub_1 -> sub_4
                  nop
                  xori         a0, t0, -1960
                  sll          a3, s10, a0
                  add          tp, a0, t6
                  sltu         a2, a7, zero
                  and          a7, sp, s7
580:              sub          t4, s6, t5
581:              slt          a7, s5, t2
                  sll          a2, a0, s4
                  or           a4, s9, a6
                  addi         s11, gp, -82
                  nop
586:              beq          s1, a6, 590f
                  xor          t6, t6, a0
                  andi         s7, tp, -1239
                  srai         s2, a3, 18
590:              srl          t5, a4, s11
                  xor          s4, a3, a4
                  slli         a4, a6, 17
                  add          a0, t3, a1
                  bne          ra, a7, 604f
                  sra          a2, t5, a0
                  beq          t3, t4, 615f
                  xor          gp, s9, s9
                  auipc        ra, 643078
                  lui          zero, 9596
                  sra          s5, a5, t5
                  ori          a5, t2, -1661
                  nop
                  or           tp, a2, s0
604:              srai         gp, s4, 20
                  slti         t4, s3, 276
                  slti         a0, a0, -19
                  sra          gp, s10, a7
                  sltu         s4, t1, s0
                  srai         a3, s5, 20
                  srl          ra, a5, s5
                  srai         a4, a2, 21
                  sra          a1, a6, s11
                  beq          s9, s9, 628f
                  nop
615:              blt          a3, s0, 633f
                  sra          a1, s8, a1
                  sltiu        gp, ra, -538
                  beq          zero, tp, 625f
                  srli         t4, s7, 2
                  slt          s0, s8, s10
                  nop
                  srl          a4, t4, a0
                  xor          sp, tp, a3
                  sltiu        a2, a2, -1304
625:              blt          a1, a0, 634f
                  lui          a4, 416227
                  slt          a4, t0, a5
628:              slt          a3, s3, sp
                  andi         a5, zero, -1463
                  sub          a7, s1, s10
                  slt          zero, s4, s9
                  bge          s9, t5, 648f
633:              xor          a6, zero, ra
634:              srai         sp, gp, 4
                  bge          s2, a3, 651f
                  blt          a3, a3, 655f
                  srai         a5, tp, 9
                  add          a5, t0, s6
                  srai         a3, s5, 5
                  sra          sp, t6, s10
                  sra          a4, tp, t1
                  sll          t4, a1, a2
                  or           t2, a4, a7
                  addi         t2, t1, -1072
                  ori          s10, zero, -238
                  xor          s0, a6, t2
                  sra          a0, s6, tp
648:              ori          t4, a7, -409
                  srl          a1, t2, s1
                  andi         tp, s1, 1867
651:              auipc        a4, 614006
                  xor          t0, t4, a1
                  blt          s7, s7, 666f
                  xor          s8, a6, a3
655:              srai         s6, a0, 4
                  bne          t6, sp, 674f
                  xor          ra, s4, s4
                  ori          a6, tp, -845
                  sll          s6, t4, s9
                  addi         zero, s9, -940
                  sll          t4, a0, t4
                  bge          a5, s7, 681f
                  slti         s7, t4, -56
                  nop
                  addi         s2, t5, 1341
666:              bltu         s10, s8, 686f
                  slti         gp, t5, -480
                  auipc        a1, 1044377
                  and          gp, s8, t4
                  sltiu        s5, s5, 1018
                  sra          s0, t4, tp
                  sll          t2, s7, s2
                  bgeu         t6, a3, 675f
674:              slt          s3, s3, t4
675:              blt          t1, s4, 691f
                  sltu         s7, t5, t5
                  slt          s5, t6, s10
                  bge          a1, s8, 698f
                  bne          s3, tp, 689f
                  sltiu        s0, s2, -1484
681:              slli         s3, s11, 28
                  addi         s6, zero, -3 #init loop 0 counter
                  ori          zero, s6, -1919
                  nop
                  auipc        a1, 511394
                  sltiu        a0, s0, 1411
                  xori         a0, gp, 2001
                  sra          ra, t4, t5
                  srli         s8, s3, 14
                  sub          a6, zero, s0
                  ori          a5, t4, 1410
                  nop
                  addi         s9, zero, 20 #init loop 0 limit
                  auipc        t4, 164242
                  slt          t5, s8, s2
                  srl          s4, s2, gp
                  slli         gp, t5, 5
                  addi         tp, s7, 2008
                  slli         s10, s4, 10
                  slt          zero, s3, s8
                  sra          ra, a2, a1
                  andi         s10, a3, -1068
sub_1_20_0_t:     or           s4, t5, a2
                  andi         t5, s3, -1248
                  sll          a4, a1, gp
                  addi         s6, s6, 1 #update loop 0 counter
                  auipc        ra, 59129
                  sltu         t5, t4, a0
                  blt          s6, s9, sub_1_20_0_t #branch for loop 0
                  ori          tp, t3, -665
                  xor          a7, s4, s10
                  srl          sp, a5, s11
                  bgeu         s7, s8, 689f
                  nop
686:              add          ra, a0, a0
                  or           s7, s5, s11
                  srai         t6, a6, 15
689:              nop
                  bne          a1, a3, 705f
691:              sra          a7, gp, tp
                  slti         s0, ra, 475
                  slt          t0, t5, s8
                  bne          s10, a4, 704f
                  srli         a5, t5, 3
                  bgeu         t3, a2, 699f
                  srli         s3, s3, 16
698:              lui          s6, 179687
699:              bne          tp, t2, 710f
                  slt          zero, a3, a0
                  andi         gp, a2, 1099
                  sltiu        t4, a7, -1165
                  slti         s0, t3, -638
704:              slt          s10, s10, t1
705:              auipc        s7, 740644
                  slli         a3, t1, 2
                  srl          s5, a2, tp
                  slti         a2, gp, 1209
                  lui          s2, 1009575
710:              addi         a5, a4, -758
                  xor          a5, s11, a5
                  xori         s9, a7, 1497
                  bgeu         t1, a3, 732f
                  srai         s8, t0, 24
                  sll          t2, a4, s3
                  sltiu        sp, s3, 1909
                  xori         t5, a4, -1130
                  srli         tp, s10, 19
                  bgeu         s10, zero, 720f
720:              slli         s10, tp, 0
                  bgeu         a3, a4, 733f
                  xori         s3, a5, -1894
                  slt          t6, s1, a1
                  bltu         s2, zero, 727f
                  add          s7, s0, a4
                  bge          s9, s1, 733f
727:              addi         s2, a4, -275
                  sra          s7, a6, s11
                  blt          s8, s3, 736f
                  sll          s3, t5, sp
                  bgeu         t5, zero, 736f
732:              xor          s8, a5, t2
733:              blt          a1, a6, 743f
                  slli         s6, s3, 30
                  slt          s9, a7, t0
736:              andi         a5, s9, 1683
                  and          ra, t0, s4
                  beq          t4, s1, 754f
                  sub          t6, a5, s0
                  auipc        zero, 89428
                  xori         t2, s9, -78
                  sltiu        zero, gp, 1156
743:              srai         s7, a1, 19
                  slt          s0, s10, a1
                  srai         a3, sp, 2
                  sltiu        tp, a0, -341
                  ori          gp, tp, 50
                  addi         a1, s4, 533
                  sll          gp, a5, t3
                  sll          s6, t2, a1
                  sub          tp, a0, s9
                  bne          a0, s6, 770f
                  bgeu         s11, t0, 772f
754:              sll          s8, s0, s11
                  sra          gp, t5, a4
                  andi         sp, tp, 1797
                  sll          ra, s0, s4
                  lui          zero, 689815
                  bltu         sp, zero, 777f
                  blt          t4, tp, 780f
                  sra          s5, gp, s2
                  slti         a6, s1, 1443
                  add          s7, s2, s1
                  sub          gp, a4, s0
                  blt          a1, s4, 774f
                  sra          zero, t1, a5
                  xori         t5, s0, -1715
                  xori         s6, a2, 1116
                  slt          t6, s6, s10
770:              sltu         a6, a5, a3
                  add          a2, ra, zero
772:              auipc        s8, 635182
                  slt          a7, a7, t4
774:              xori         gp, a1, -2009
                  sub          a4, s0, a4
                  beq          a3, a5, 796f
777:              srl          s8, zero, t1
                  addi         s7, t2, -851
                  andi         s7, a0, -1676
780:              beq          t3, s8, 790f
                  bgeu         zero, s9, 796f
                  slli         s5, t0, 18
                  xori         a6, ra, 576
                  sra          tp, tp, a0
                  bgeu         zero, t2, 789f
                  and          a6, sp, sp
                  ori          t4, zero, -71
                  blt          a6, s0, 795f
789:              or           sp, a6, s11
790:              sub          s2, a2, a6
                  addi         s3, a7, 1051
                  sltu         a6, a2, s9
                  addi         s6, a5, -1271
                  srai         s4, a0, 10
795:              blt          s0, s1, 797f
796:              slti         tp, a0, 883
797:              bgeu         a1, t4, 804f
                  ori          a5, s11, -1566
                  bgeu         t5, t2, 800f
800:              slti         a2, s11, -1332
                  ori          tp, zero, 665
                  and          s3, sp, s0
                  sll          t2, tp, s7
804:              auipc        s10, 355805
                  auipc        s10, 164638
                  auipc        s11, 851977
                  addi         s0, t0, 1001
                  auipc        a6, 317570
                  andi         a4, t2, 1787
                  sltiu        s8, s8, 1752
                  lui          s2, 827973
                  srai         tp, t1, 14
                  add          s9, t3, s10
                  slt          a4, s4, s1
                  sltiu        s4, s3, -1510
                  ori          ra, t3, -722
                  sra          s8, zero, sp
                  xor          t2, s10, s2
                  add          a3, a3, a2
                  xor          t6, a7, s11
                  srai         tp, sp, 23
                  sll          s2, s9, a6
                  sra          t5, s8, a3
                  blt          a0, s3, 834f
                  ori          t2, t6, 227
                  bgeu         s5, t2, 829f
                  xor          s9, t4, s7
                  bge          s3, zero, 840f
829:              sll          t6, s5, zero
                  sra          a2, t5, s3
                  sra          s2, t3, tp
                  srl          a1, s8, a1
                  xori         s11, a1, -1812
834:              and          gp, a4, a3
                  xor          t5, s7, s11
                  bge          a5, s7, 855f
                  sltiu        t2, s11, -1030
                  addi         t2, ra, -1776
                  bgeu         a0, a1, 842f
840:              sra          sp, gp, tp
                  bgeu         s8, a2, 857f
842:              sltu         s6, zero, a5
                  lui          a3, 574908
                  xor          a5, t0, a3
                  bgeu         t5, t5, 858f
                  or           s11, s5, s3
                  or           t0, sp, tp
                  srli         s5, s8, 22
                  or           s6, t4, t4
                  add          a3, s1, tp
                  auipc        s0, 897916
                  slt          a1, zero, t0
                  ori          s5, t6, 1939
                  slli         s6, s9, 11
855:              lui          s0, 304193
                  sltiu        a7, t3, 1346
857:              ori          s2, s5, 1333
858:              ori          s5, s0, -1878
                  auipc        s0, 51875
                  srai         a7, t5, 6
                  auipc        s10, 478044
                  bne          tp, zero, 881f
                  addi         s0, a4, -1442
                  bgeu         a3, s11, 883f
                  xor          tp, s2, a3
                  sltu         t6, sp, t5
                  sub          s2, s3, t0
                  bge          ra, t3, 881f
                  slt          t6, sp, s7
                  slt          s5, s6, s5
                  sltiu        a0, a5, -1629
                  blt          s7, ra, 879f
                  blt          t4, t0, 889f
                  xori         gp, s2, 1862
                  andi         a3, a0, 482
                  sra          s2, t1, a6
                  sll          t4, t4, t1
                  lui          s3, 856014
879:              ori          a0, zero, -2032
                  xor          s3, t4, a3
881:              and          sp, a2, a2
                  nop
883:              nop
                  xori         sp, a2, -1679
                  andi         s3, t4, 1005
                  srli         s6, s1, 21
                  sra          t6, t6, t5
                  and          a0, zero, s4
889:              bge          a6, s10, 900f
                  addi         t5, a4, 781
                  sltiu        s9, t0, 54
                  bltu         t4, s7, 907f
                  add          a5, a5, s10
                  ori          s9, a3, 540
                  srl          a4, a5, s5
                  sltu         t0, s4, a7
                  srl          ra, t1, s8
                  nop
                  sll          gp, t5, sp
900:              bgeu         t3, s11, 915f
                  slti         a6, a6, -144
                  nop
                  auipc        s0, 194324
                  addi         s4, a1, -802
                  srai         t0, a2, 31
                  ori          t5, t1, 1049
907:              lui          s0, 186366
                  sltu         a1, s5, s7
                  srl          s7, t2, s5
                  sll          gp, s2, a3
                  srli         a0, s4, 16
                  sub          t4, t4, sp
                  slli         a1, a1, 3
                  sra          t4, s9, s0
915:              andi         s7, s10, -2013
                  xori         s4, t2, -1631
                  lui          sp, 951254
                  xor          a0, t4, a5
                  slli         s4, s7, 15
                  srai         s2, s3, 22
                  bgeu         t1, s7, 937f
                  bgeu         s11, s2, 932f
                  blt          t0, gp, 939f
                  bltu         s2, t0, 943f
                  bne          a0, a7, 932f
                  xor          a3, s5, a3
                  xori         sp, t5, 328
                  and          s11, s8, t1
                  slli         s5, t6, 0
                  nop
                  slt          s10, gp, s4
932:              ori          a6, t0, -298
                  srai         t4, tp, 30
                  srli         sp, a0, 2
                  srl          s6, a2, a5
                  bge          a7, t3, 940f
937:              xor          s2, gp, ra
                  ori          s0, a7, -1489
939:              auipc        t2, 695285
940:              bgeu         a4, t3, 950f
                  and          t2, t0, s0
                  blt          t0, t2, 953f
943:              slti         t5, tp, 165
                  slli         t0, a4, 15
                  bgeu         t3, s3, 948f
                  auipc        a5, 75875
                  sll          s6, a2, gp
948:              nop
                  lui          a1, 824544
950:              srai         a7, t1, 18
                  sll          sp, sp, s2
                  auipc        a6, 522443
953:              sltu         t6, s10, t0
                  sub          t4, sp, s9
                  slt          t5, a4, a1
                  srl          a3, s6, s8
                  and          s7, a6, a2
                  slli         s11, a7, 23
                  srl          t6, s6, t6
                  beq          ra, a3, 979f
                  auipc        s7, 844084
                  slti         tp, a1, 944
                  sll          s5, s4, s5
                  andi         a4, a7, -526
                  bne          sp, s4, 975f
                  and          t5, a0, t0
                  or           a5, s7, t4
                  slli         t5, s7, 8
                  sll          s5, a5, t4
                  srli         a6, t1, 6
                  or           s8, t2, a5
                  bltu         t4, s2, 975f
                  and          zero, s1, s7
                  sll          t4, tp, gp
975:              blt          a3, a4, 994f
                  beq          a3, a1, 989f
                  sra          s0, t6, a7
                  bltu         ra, a1, 990f
979:              blt          sp, t0, 988f
                  or           t6, s10, s10
                  beq          s0, a7, 1001f
                  andi         s11, s9, -493
                  bgeu         s7, a2, 1003f
                  nop
                  slli         s2, gp, 22
                  srli         t6, s3, 30
                  bne          t2, t2, 1006f
988:              slti         s3, t2, 1554
989:              slli         a7, s9, 30
990:              auipc        s6, 893809
                  addi         s10, t1, -489
                  srl          a2, s5, s9
                  sll          a5, s9, s8
994:              xor          gp, s5, s0
                  bge          s2, ra, 1013f
                  bne          s0, s8, 1014f
                  ori          a0, a4, 1294
                  xor          s8, s9, s5
                  sub          s7, zero, s9
                  beq          s11, s4, 1015f
1001:             addi         a7, t3, 762
                  srli         s4, s3, 7
1003:             nop
                  bne          sp, s1, 1017f
                  addi         tp, a2, 1480
1006:             xori         zero, a0, 1391
                  slt          a4, s1, zero
                  sra          s4, t1, t6
                  bltu         zero, s10, 1016f
                  ori          tp, tp, -106
                  slti         s10, gp, 1203
                  bge          s0, t2, 1028f
1013:             xor          t5, s2, zero
1014:             slti         a0, s4, 2006
1015:             bgeu         s10, t1, 1016f
1016:             sra          t4, s2, gp
1017:             ori          ra, s6, 1560
                  or           a6, sp, a1
                  bge          s0, t6, 1024f
                  srli         a7, gp, 28
                  bge          t4, s5, 1028f
                  addi         a1, zero, -4 #init loop 1 counter
                  addi         t4, zero, -16 #init loop 1 limit
                  addi         a0, s5, 512
sub_1_16_1_t:     nop
                  addi         a1, a1, -10 #update loop 1 counter
                  slti         s0, a5, -377
                  addi         ra, zero, -2 #init loop 0 counter
                  lui          tp, 155755
                  srli         a4, s0, 3
                  addi         s6, zero, 17 #init loop 0 limit
                  ori          t6, s2, -1748
                  nop
                  slt          t2, s2, s2
sub_1_16_0_t:     and          a2, a5, ra
                  lui          s5, 429002
                  addi         ra, ra, 6 #update loop 0 counter
                  blt          ra, s6, sub_1_16_0_t #branch for loop 0
                  lui          gp, 779377
                  or           a3, t2, s10
                  xor          s8, s3, s4
                  sltu         s9, s0, t6
                  bge          a1, t4, sub_1_16_1_t #branch for loop 1
                  nop
                  xori         a4, s10, -1747
                  sltu         a4, a3, gp
1024:             srl          t4, a3, s10
                  xori         a0, s10, 1425
                  sltiu        a3, t2, -731
                  and          a6, a3, s8
1028:             xori         a5, a4, 2002
                  sll          t0, a3, t1
                  sra          s6, s5, s11
                  addi         t4, t0, -1250
                  slti         gp, t6, -1188
                  sll          a3, s7, zero
                  add          t0, a6, a6
                  bltu         s7, t3, 1037f
                  slli         s9, s5, 22
1037:             bne          s11, s0, 1044f
                  ori          a6, a4, 1037
                  add          a2, s3, s3
                  bge          t5, s8, 1047f
                  auipc        s5, 280733
                  sll          s2, a6, a7
                  slti         t0, s6, -1426
1044:             bge          s2, s4, 1055f
                  slt          a1, t3, ra
                  blt          a1, a6, 1056f
1047:             sub          a5, t0, s5
                  slli         a1, t1, 5
                  andi         a1, tp, 72
                  srl          t0, s4, a6
                  addi         s4, t3, -1872
                  auipc        a1, 665227
                  srli         s10, s8, 0
                  nop
1055:             bltu         s2, s1, 1070f
1056:             add          s2, a7, s8
                  srl          a3, s11, s7
                  slli         t5, s3, 18
                  blt          t4, s0, 1078f
                  bne          s10, t5, 1080f
                  sra          a3, t4, t6
                  beq          t2, a5, 1081f
                  bne          tp, t3, 1079f
                  bge          s5, a6, 1067f
                  nop
                  or           a0, s6, a2
1067:             srl          t2, t6, a1
                  bge          s0, t2, 1070f
                  bgeu         ra, s7, 1074f
1070:             beq          a1, a2, 1089f
                  bgeu         s2, gp, 1087f
                  srai         a4, tp, 7
                  lui          t6, 504641
1074:             srai         t6, zero, 12
                  bgeu         s10, s0, 1095f
                  andi         zero, ra, 677
                  srai         t6, t6, 0
1078:             bne          a4, a2, 1094f
1079:             addi         s6, s7, -149
1080:             srai         t2, s2, 5
1081:             sra          s10, a0, a1
                  slti         t0, s5, -883
                  lui          s2, 339167
                  bltu         a0, s10, 1102f
                  nop
                  xori         a1, gp, -1050
1087:             lui          a3, 757342
                  srli         t6, t0, 30
1089:             xor          a4, a0, a3
                  xori         a5, a5, -1537
                  srl          a7, s4, s4
                  srl          zero, t0, s2
                  sltiu        a7, t4, 1617
1094:             bne          a1, a1, 1103f
1095:             andi         a4, s8, 1891
                  auipc        ra, 854593
                  bne          a1, a6, 1107f
                  xor          s11, tp, s3
                  and          s8, t6, s3
                  auipc        s7, 1024503
                  sltu         a2, s8, s10
1102:             add          ra, t0, sp
1103:             slli         s3, t0, 8
                  srli         t2, t5, 13
                  slt          a2, tp, a3
                  bne          t5, s5, 1119f
1107:             andi         s0, gp, -781
                  slt          s6, s8, t4
                  slti         ra, t6, 1429
                  add          s8, t4, s5
                  srai         a2, t6, 23
                  sltu         a3, s2, a2
                  ori          a5, s1, -1526
                  sltiu        a2, ra, -88
                  ori          s11, s4, 1852
                  or           zero, a4, t4
                  sltiu        s2, t6, 820
                  bgeu         a0, t2, 1133f
1119:             nop
                  blt          s7, a1, 1123f
                  sll          a5, tp, s9
                  bne          s8, t0, 1132f
1123:             sltu         s8, gp, s1
                  addi         s11, zero, -8 #init loop 0 counter
                  add          s7, t0, s1
                  slti         t4, gp, -1799
                  and          t0, t2, t6
                  xori         gp, zero, 750
                  andi         s10, s10, -1117
                  sltiu        s4, t0, -1058
                  addi         a0, zero, -4 #init loop 0 limit
                  sltiu        a6, s1, -84
sub_1_4_0_t:      addi         s9, s11, 769
                  and          a5, zero, s10
                  srai         s10, s6, 21
                  xor          a4, s2, s6
                  sub          s7, s4, s9
                  addi         s11, s11, 1 #update loop 0 counter
                  auipc        t2, 281087
                  blt          s11, a0, sub_1_4_0_t #branch for loop 0
                  slli         s5, zero, 13
                  sub          t0, s2, t6
                  slti         a0, sp, -395
                  srl          a2, t6, a1
                  andi         ra, s7, -1834
                  bne          s9, a7, 1135f
                  beq          s5, s1, 1142f
                  bltu         zero, a2, 1148f
                  auipc        a7, 33160
1132:             addi         ra, t6, -1794
1133:             sub          s10, s6, s10
                  bltu         a4, s10, 1138f
1135:             sll          tp, s3, a5
                  and          s4, a0, a1
                  or           t2, a6, t4
1138:             sub          s5, sp, s2
                  beq          s0, a2, 1151f
                  bltu         tp, s6, 1159f
                  add          gp, s11, s9
1142:             nop
                  add          zero, tp, t3
                  andi         s5, t5, -550
                  sltiu        gp, a1, 1317
                  bgeu         t2, s4, 1147f
1147:             beq          t5, s7, 1157f
1148:             sll          a0, s8, s5
                  bltu         t1, s6, 1168f
                  nop
1151:             srai         a5, s7, 28
                  slti         gp, s7, -723
                  xori         sp, sp, -1880
                  auipc        s6, 389412
                  bgeu         t3, a0, 1174f
                  beq          a2, tp, 1172f
1157:             sltu         a6, t1, a2
                  auipc        tp, 178238
1159:             nop
                  bne          a2, tp, 1162f
                  nop
1162:             bgeu         tp, a7, 1165f
                  sltiu        s10, a1, 1238
                  lui          zero, 417207
1165:             srai         t6, t2, 17
                  add          s6, zero, s5
                  slli         a1, s5, 6
                  addi         s3, zero, 10 #init loop 1 counter
                  addi         t5, t6, -1033
                  addi         s8, zero, 8 #init loop 1 limit
                  nop
                  srl          a5, s4, ra
                  andi         a7, s7, -784
                  sub          t0, s1, a1
                  sub          a1, gp, t3
sub_1_27_1_t:     nop
                  addi         sp, sp, -1973
                  addi         s3, s3, -6 #update loop 1 counter
                  srli         tp, zero, 16
                  addi         t6, zero, 3 #init loop 0 counter
                  andi         a6, s9, 1457
                  ori          s6, a7, 176
                  addi         a0, zero, 16 #init loop 0 limit
                  srl          ra, sp, s2
                  addi         a3, s3, 1908
sub_1_27_0_t:     nop
                  nop
                  xor          t0, t4, t1
                  addi         t6, t6, 3 #update loop 0 counter
                  bltu         t6, a0, sub_1_27_0_t #branch for loop 0
                  srli         s7, a7, 20
                  srl          s4, sp, t5
                  and          t4, t4, s8
                  addi         a2, s3, -1837
                  sltu         s7, a4, t5
                  sltiu        a1, a7, 1963
                  addi         ra, a1, -268
                  bgeu         s3, s8, sub_1_27_1_t #branch for loop 1
                  ori          s2, t5, -1348
1168:             srai         t6, t4, 0
                  srli         s8, s4, 26
                  sub          sp, tp, zero
                  slli         s11, s0, 1
1172:             and          a5, s1, zero
                  bgeu         t4, gp, 1192f
1174:             sll          gp, zero, s3
                  bge          t6, t0, 1190f
                  slti         sp, a0, 1563
                  srl          gp, t3, sp
                  nop
                  slti         t6, a6, 269
                  srl          a5, tp, s11
                  sra          a2, a3, t3
                  sra          sp, s8, a2
                  sub          s4, t5, s11
                  srli         t6, s8, 17
                  sra          s9, a6, s1
                  bgeu         ra, s9, 1199f
                  bltu         t2, s9, 1198f
                  ori          t4, sp, -923
                  ori          t2, a6, 1392
1190:             or           s0, s1, t1
                  xori         sp, a7, -1100
1192:             andi         tp, tp, 1802
                  sub          s7, s11, a2
                  sll          s2, s0, t4
                  beq          s6, a2, 1213f
                  sra          s2, t4, s11
                  xor          s10, s8, a3
1198:             srai         s11, a7, 3
1199:             sra          zero, zero, gp
                  bge          t3, a6, 1220f
                  slti         t4, a7, 421
                  xor          s2, s0, t6
                  slli         a7, a5, 17
                  lui          s7, 878477
                  or           zero, t1, s11
                  bltu         t0, t5, 1213f
                  auipc        s6, 701039
                  srl          s7, a2, t6
                  xori         s9, t0, -1913
                  slt          zero, t1, sp
                  add          gp, t1, s3
                  or           s4, s0, s11
1213:             sub          s10, gp, a6
                  add          a2, s3, s0
                  andi         a1, t2, 737
                  slt          a3, sp, t4
                  and          tp, s11, a6
                  auipc        a6, 408688
                  srl          t6, s7, t1
1220:             or           s7, sp, s3
                  xor          a6, s0, s11
                  lui          a1, 285840
                  sltu         a1, s2, s9
                  sra          s11, tp, gp
                  bgeu         s8, ra, 1245f
                  xori         t4, s8, -96
                  sltiu        a1, s5, 1112
                  and          s7, s11, s3
                  sltiu        a5, s1, 2028
                  blt          t0, s11, 1240f
                  blt          s4, ra, 1247f
                  bltu         s1, a5, 1244f
                  sltiu        t2, s7, 1579
                  srl          s4, a4, t4
                  sltiu        s6, t4, -581
                  or           a1, s7, s9
                  sll          t6, zero, s1
                  addi         zero, a0, 1392
                  or           t5, s5, a7
1240:             bge          a7, s2, 1244f
                  auipc        s5, 470712
                  lui          a0, 992717
                  sll          s3, zero, s10
1244:             sra          s9, s9, s0
1245:             srli         t5, s8, 14
                  and          sp, s8, t6
1247:             srl          a4, a1, a7
                  srl          s10, t6, t3
                  and          s0, gp, tp
                  add          a5, t6, t3
                  slti         t5, s6, -1856
                  add          s4, s10, t6
                  srl          a3, s9, sp
                  slti         a6, s2, -333
                  sltiu        a2, t3, -1830
                  bgeu         ra, s11, 1265f
                  auipc        zero, 97757
                  sltu         s5, t3, s6
                  sra          t0, t0, zero
                  xori         sp, a7, 628
                  or           a0, t2, s2
                  bne          sp, s3, 1278f
                  beq          s8, t0, 1276f
                  bge          s10, s7, 1271f
1265:             srli         t6, a7, 27
                  lui          s7, 476683
                  andi         ra, s0, 1710
                  xor          s6, s5, a7
                  srl          t6, gp, s7
                  nop
1271:             sra          s2, a0, t5
                  andi         a2, a3, -562
                  addi         a4, a5, -432
                  bgeu         a4, t3, 1281f
                  andi         gp, s7, -1021
1276:             slt          sp, sp, a4
                  srai         s4, a7, 13
1278:             srl          s6, a0, gp
                  sra          s3, a4, s8
                  bgeu         a4, s6, 1295f
1281:             sltiu        a5, t5, -1338
                  srli         t6, ra, 7
                  sll          a7, a7, s8
                  or           t4, a7, sp
                  srai         s2, a4, 8
                  sra          a0, s10, s9
                  srli         ra, a3, 13
                  slt          s8, s0, s7
                  sra          s5, gp, a6
                  srli         s3, s3, 29
                  auipc        sp, 855658
                  bne          s2, a1, 1311f
                  slti         s3, a5, 1725
                  bgeu         t0, s6, 1312f
1295:             sll          a4, a4, s1
                  bgeu         zero, a5, 1297f
1297:             addi         s10, s4, 1849
                  slli         a2, s0, 5
                  lui          a6, 559670
                  addi         s8, a7, -1844
                  xori         s7, a5, 1771
                  xor          t5, a5, sp
                  ori          tp, s3, -729
                  srl          tp, t4, ra
                  bgeu         ra, t4, 1315f
                  addi         s11, t3, -1888
                  andi         t0, zero, -1841
                  slti         s4, t1, 1145
                  addi         a3, t0, 167
                  bge          a0, a3, 1313f
1311:             xori         ra, t5, 1201
1312:             sll          t6, a0, s7
1313:             srl          a5, s3, a4
                  sra          a7, zero, t2
1315:             bge          s6, s0, 1320f
                  srai         a6, sp, 16
                  add          t2, gp, s3
                  sltiu        gp, t3, -507
                  slli         a3, a7, 25
1320:             sra          s0, a5, a1
                  andi         zero, gp, 1122
                  bgeu         a0, s11, 1334f
                  and          sp, s5, s0
                  and          s7, a1, a2
                  bne          a7, t0, 1338f
                  andi         s8, s10, 1026
                  slli         s9, t2, 2
                  add          s3, s3, t0
                  sltu         s11, t4, s5
                  slti         t6, t6, -160
                  sub          tp, tp, a7
                  sltiu        t4, s7, -1591
                  slti         s11, s6, -15
1334:             xori         a5, a2, -501
                  auipc        a3, 494898
                  or           zero, s10, s7
                  bne          t5, a1, 1347f
1338:             sltiu        t2, t6, -989
                  andi         a5, s11, -1476
                  sub          s10, s4, zero
                  lui          a5, 317811
                  xori         s4, a3, -1955
                  sltiu        t0, tp, 1941
                  andi         a2, a6, 1193
                  bge          s5, gp, 1365f
                  sub          s10, a4, zero
1347:             xor          s7, s11, t6
                  bgeu         t0, s8, 1352f
                  bne          tp, t2, 1352f
                  bgeu         t3, s9, 1359f
                  xor          t6, a2, zero
1352:             xor          s5, t5, s7
                  bgeu         a2, s4, 1355f
                  lui          a4, 246385
1355:             xor          s7, t3, t5
                  xori         tp, s7, 390
                  srli         ra, gp, 12
                  and          gp, a1, s3
1359:             srai         a3, s7, 10
                  srli         s10, t4, 25
                  slli         zero, s8, 25
                  sll          s8, s7, s4
                  auipc        t2, 420935
                  bltu         s4, s5, 1374f
1365:             sub          t4, a2, gp
                  nop
                  slt          a7, t5, ra
                  bne          a1, a0, 1388f
                  sll          a5, t0, a4
                  sll          s5, s7, s9
                  and          a1, tp, s4
                  bgeu         t3, s5, 1382f
                  blt          s5, a6, 1388f
1374:             or           gp, zero, ra
                  auipc        a0, 178586
                  srl          s11, zero, a3
                  auipc        s3, 94991
                  sltiu        gp, s0, -2006
                  sll          a7, ra, t3
                  srai         s8, gp, 6
                  slt          s10, s7, t6
1382:             blt          s6, s10, 1401f
                  srli         s10, s1, 25
                  bne          t1, s1, 1385f
1385:             sra          t2, t1, t0
                  auipc        a2, 602548
                  nop
1388:             sltu         s5, s2, s11
                  xor          a4, tp, t5
                  srai         a2, s10, 30
                  andi         s3, sp, -1731
                  srai         s8, zero, 29
                  auipc        s3, 620073
                  lui          s9, 382472
                  beq          a1, s5, 1410f
                  auipc        t5, 248186
                  sltu         s0, zero, a2
                  xori         s10, a0, -570
                  slt          s3, a7, s7
                  srai         a4, a1, 17
1401:             add          ra, sp, s1
                  bge          t3, sp, 1409f
                  add          s0, s10, t6
                  bge          s5, s3, 1409f
                  slli         s2, s9, 3
                  bgeu         s1, a1, 1417f
                  nop
                  lui          sp, 963831
1409:             srli         t2, s7, 21
1410:             bltu         a7, t2, 1429f
                  sltu         gp, s3, a7
                  bgeu         t2, t0, 1419f
                  sub          s4, zero, s9
                  andi         ra, t6, -1788
                  andi         s6, s0, 574
                  blt          a7, s7, 1435f
1417:             sltu         s6, tp, t0
                  sll          s9, s9, s1
1419:             nop
                  addi         a6, t2, 1851
                  lui          tp, 997290
                  lui          s6, 865430
                  auipc        tp, 871994
                  bgeu         s6, s10, 1443f
                  lui          s9, 906805
                  srl          t2, sp, s9
                  xori         s10, a7, -503
                  slt          t2, s0, t5
1429:             slti         s7, ra, 1574
                  auipc        s5, 690150
                  blt          s10, gp, 1447f
                  slt          s7, t1, a7
                  blt          s6, zero, 1449f
                  addi         a6, s2, -1139
1435:             sltiu        t4, t5, -608
                  and          s8, a4, gp
                  beq          s0, s0, 1455f
                  beq          s0, s8, 1454f
                  srl          s8, a4, s8
                  or           t2, t6, zero
                  xori         s5, a1, -767
                  blt          t3, t0, 1455f
1443:             bgeu         a2, t5, 1446f
                  sll          s8, a7, a4
                  sll          ra, t2, sp
1446:             sub          s5, t3, s5
1447:             bgeu         t3, s11, 1454f
                  lui          a1, 758581
1449:             srli         zero, zero, 27
                  or           t2, s6, t5
                  bne          a7, s11, 1469f
                  ori          t2, s1, 1077
                  slli         zero, s8, 31
1454:             xor          s9, t0, s1
1455:             or           s0, a0, a5
                  bltu         s11, s7, 1471f
                  xori         a7, zero, 694
                  bne          s10, t2, 1468f
                  lui          tp, 487857
                  add          s9, s7, a0
                  nop
                  srl          t6, t2, t0
                  bgeu         s10, a6, 1479f
                  addi         ra, a6, -979
                  sub          s0, s5, s2
                  bgeu         s7, a0, 1486f
                  addi         a2, sp, 802
1468:             srli         s10, s11, 24
1469:             bge          a4, t0, 1472f
                  xor          t0, t5, t5
1471:             nop
1472:             nop
                  xori         a0, zero, -1697
                  bge          ra, sp, 1484f
                  nop
                  slti         s11, t2, 1241
                  bgeu         a6, s9, 1496f
                  or           t6, s5, a2
1479:             ori          s6, t2, -1716
                  sra          t5, s10, t5
                  and          ra, s5, s10
                  xor          s3, s3, a0
                  srai         t5, a7, 22
1484:             srai         zero, s6, 11
                  or           t6, a3, s4
1486:             srli         a6, a5, 13
                  slti         t2, s4, 1969
                  xor          s8, zero, a6
                  sub          t4, a4, s10
                  blt          s3, a1, 1497f
                  slt          sp, a3, t0
                  or           s0, s2, s1
                  blt          sp, t4, 1502f
                  and          ra, t2, a6
                  bne          a2, s4, 1499f
1496:             beq          a1, a1, 1512f
1497:             xor          a5, t6, s5
                  lui          s10, 471283
1499:             sra          sp, zero, a0
                  xor          t0, ra, a3
                  beq          s7, sp, 1519f
1502:             nop
                  andi         t5, tp, -1270
                  slli         t4, s1, 11
                  xor          ra, t0, gp
                  andi         t5, a1, -210
                  bge          t4, s9, 1519f
                  srl          s11, a2, s0
                  bgeu         s1, s9, 1528f
                  slli         a0, s7, 29
                  and          t6, s6, t6
1512:             bltu         s5, t2, 1522f
                  xori         gp, sp, 1951
                  xori         t5, ra, 1079
                  sltiu        s3, a2, -394
                  xor          a5, a3, s5
                  and          s5, a6, tp
                  slt          a2, s5, s0
1519:             andi         t6, sp, -1887
                  bge          s8, gp, 1523f
                  srli         s7, t1, 22
1522:             bne          s3, zero, 1542f
1523:             slli         s5, t4, 11
                  srl          gp, s1, a3
                  bgeu         s11, t1, 1541f
                  xor          a2, tp, s11
                  lui          a7, 79175
1528:             slti         a5, s5, 1084
                  sltu         t5, s2, a7
                  sub          zero, sp, s10
                  bne          s3, t0, 1532f
1532:             sll          a1, t6, a5
                  srl          s7, a1, a4
                  srai         a4, sp, 2
                  sltiu        s11, a1, 1178
                  sub          s7, t5, a4
                  xori         s6, s4, 1754
                  xor          s9, a4, zero
                  bne          tp, s4, 1552f
                  sltu         s6, s2, a3
1541:             bne          t3, t6, 1552f
1542:             slt          s10, zero, s6
                  xor          a7, t4, t3
                  sltiu        a2, t4, 851
                  addi         s7, s7, 1125
                  and          t4, sp, s3
                  ori          s10, t4, -1053
                  bne          s2, s6, 1553f
                  ori          s3, s11, -950
                  sra          a2, s1, s2
                  auipc        a2, 78407
1552:             xor          a3, a0, gp
1553:             slt          t0, s1, t4
                  xori         s2, s7, 309
                  bge          sp, s3, 1556f
1556:             nop
                  lw           ra, 4(s1)
                  and          s3, a3, s0
                  sll          a0, t3, ra
                  addi         s1, s1, 44
                  xori         a6, s9, 405
2256:             addi x26, x1, 0
2256:             jalr x26, x26, 0
sub_5:            srli         a7, t0, 13
                  slt          a1, s1, s9
                  sub          a6, zero, sp
                  andi         a0, a1, 714
                  addi         s1, s1, -40
                  and          a6, s10, s10
                  sw           ra, 4(s1)
                  auipc        s10, 613686
                  ori          s11, t1, -1592
                  and          s0, a0, a0
                  nop
                  addi         s4, zero, 9 #init loop 1 counter
                  sltu         a3, s3, a1
                  slt          a0, a7, a3
                  sra          a5, zero, s5
                  sltiu        ra, s1, 254
                  auipc        s7, 76459
                  addi         s11, zero, 11 #init loop 1 limit
                  nop
                  auipc        a3, 407749
                  add          a6, s1, s10
                  nop
                  addi         sp, gp, 1958
sub_5_0_1_t:      andi         s7, t3, 1394
                  addi         s4, s4, 9 #update loop 1 counter
                  sll          a2, a5, tp
                  sra          gp, s8, a0
                  addi         t4, zero, 10 #init loop 0 counter
                  xori         s10, sp, -1179
                  nop
                  srli         s5, s8, 31
                  addi         s0, zero, 9 #init loop 0 limit
                  sltiu        gp, s1, -507
sub_5_0_0_t:      nop
                  addi         s2, s10, -159
                  ori          tp, tp, 836
                  addi         t4, t4, -7 #update loop 0 counter
                  sub          t0, t1, s8
                  srli         s10, s0, 17
                  bgeu         t4, s0, sub_5_0_0_t #branch for loop 0
                  xori         a4, a2, -1218
                  bltu         s4, s11, sub_5_0_1_t #branch for loop 1
                  srai         s3, ra, 16
                  bne          a6, t2, 20f
                  sll          a2, s7, tp
                  srl          s2, t5, ra
                  or           a7, s6, t2
                  srl          a7, s8, t6
                  sll          s5, a2, s4
                  slt          sp, tp, s2
                  srl          gp, t2, t5
                  srai         s6, s9, 31
                  sub          s2, t5, s4
                  or           zero, t2, t5
                  sra          t6, a6, gp
                  addi         a6, a7, 1864
                  lui          s0, 722974
                  blt          a2, a1, 20f
                  xor          a4, zero, s7
                  sll          s7, s0, a3
                  auipc        s10, 452900
                  sub          a1, a7, a3
                  xori         s4, s6, -1666
20:               nop
                  srl          ra, ra, s1
                  slt          tp, s1, sp
                  srai         gp, a4, 29
                  and          a3, s6, t2
                  sra          s7, a4, t1
                  add          s5, s8, s6
                  add          s2, s6, a0
                  srai         s11, s11, 27
                  and          s10, s7, t3
                  nop
                  sltu         a7, sp, tp
                  nop
                  blt          a0, a0, 51f
                  or           a4, t3, a4
                  add          a5, t6, s10
                  sub          a7, a6, s2
                  add          a0, s8, a0
                  sra          s0, a2, t2
                  xor          s6, s1, s7
                  or           a5, s2, s11
                  sra          s10, t5, t2
                  or           s8, ra, a0
                  andi         ra, a4, -149
                  sra          t4, a6, gp
                  ori          t2, s7, 575
                  bltu         a3, a4, 55f
                  beq          a6, t3, 62f
                  xor          s6, s10, s7
                  xor          a4, a1, a6
                  lui          a5, 195811
51:               sub          a6, s7, t5
                  sra          t4, t3, ra
                  lui          s10, 59936
                  addi         a0, a4, -962
55:               nop
                  slti         s2, t4, -1867
                  xori         s10, s10, -788
                  beq          t1, t4, 60f
                  beq          tp, tp, 79f
60:               addi         s7, a5, -670
                  sltu         a5, a7, s1
62:               xor          a0, s5, s4
                  add          s6, t5, s4
                  sub          a6, s9, s0
                  srai         s5, ra, 16
                  bge          s6, a3, 73f
                  xori         a4, s6, 979
                  bgeu         t1, zero, 69f
69:               srli         tp, s1, 9
                  andi         a2, t0, -1768
                  xori         t4, gp, 261
                  srli         a3, zero, 11
73:               slt          t0, tp, s1
                  beq          t3, zero, 89f
                  bltu         zero, s9, 82f
                  slli         a5, s5, 12
                  auipc        a4, 749607
                  and          sp, s3, t0
79:               lui          zero, 383241
                  add          s5, s8, a5
                  bgeu         s0, a1, 85f
82:               sub          s0, s6, a4
                  slli         s8, sp, 29
                  sltiu        t6, t5, -1215
85:               blt          a2, s11, 91f
                  srli         gp, t5, 2
                  srli         a0, s6, 0
                  sra          tp, ra, gp
89:               and          s6, t2, a5
                  ori          a2, s10, -175
91:               sra          s2, s5, ra
                  lw           ra, 4(s1)
                  srai         a5, s1, 24
                  slli         s10, t6, 13
                  sltu         a0, t0, t1
                  nop
                  srli         a1, s1, 18
                  addi         s1, s1, 40
                  slli         t0, s7, 31
                  or           t5, ra, t4
144:              addi x13, x1, 0
144:              jalr x13, x13, 0
sub_2:            and          a0, s5, s4
                  xori         s6, t3, -132
                  addi         s1, s1, -32
                  srai         s6, t4, 9
                  sw           ra, 4(s1)
                  or           sp, s2, gp
                  srl          s7, a5, a2
                  sub          s2, s4, s8
                  srai         t6, t4, 6
                  srai         a7, s0, 24
                  and          t2, a4, t5
                  add          gp, s4, tp
                  sltu         s6, a5, gp
                  srai         a3, a5, 6
                  ori          s5, s0, 1805
                  sub          a1, t0, a0
                  sltiu        s6, t4, -753
                  auipc        s3, 727698
                  sltu         s4, sp, t2
                  ori          t6, a1, 1971
sub_2_j5:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  sub          s10, a6, t5
                  sra          zero, a3, s0
                  sll          s6, s7, s6
                  ori          s10, t4, -17
                  sltu         a5, a5, a4
                  auipc        s9, 937607
                  sra          s6, s5, sp
                  beq          tp, a0, 24f
                  andi         s11, a4, 1322
                  xori         t5, a7, 244
                  sltiu        s10, s1, 1507
                  slt          s7, t1, t5
                  xor          a4, gp, t1
                  bltu         sp, zero, 15f
                  xori         a5, a0, -974
15:               xori         s8, t2, 1257
                  srai         s6, s3, 27
                  srai         a3, s8, 15
                  bge          t2, t5, 27f
                  or           a5, s9, t6
                  srl          a2, t2, s10
                  sltu         s6, s8, s1
                  sltiu        s9, s11, -1022
                  srli         t2, t5, 23
24:               slt          s3, a4, a2
                  srli         s2, t1, 31
                  bne          a4, t5, 28f
27:               bltu         t3, ra, 28f
28:               and          a1, a2, t5
                  lw           ra, 4(s1)
                  addi         s1, s1, 32
                  srl          s0, t0, s6
                  lui          s3, 904161
                  nop
                  sltiu        s3, s1, -1990
                  srai         s3, s7, 22
57:               addi x12, x1, 0
57:               jalr x12, x12, 0
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
.word 0x0a867f21, 0x8f8fff69, 0xcafa9fc3, 0xd69f3dc5, 0x308714f1, 0xc8daf12a, 0x8f290786, 0xf24dc9b7
.word 0x131b57b9, 0x47705cf5, 0xf797d7f9, 0x61326c0d, 0x99868f5c, 0x80fa7e39, 0x142e3711, 0xd16abe9c
.word 0x114be976, 0xd2236161, 0x3300d894, 0x5cadd165, 0x5b31295c, 0x042f5690, 0x7e8e977a, 0x1bf7e0c9
.word 0xfda3e70f, 0x70a97ad0, 0xa6d69c77, 0x5c5290e7, 0xb74c8485, 0x0480a4a4, 0x19092d8b, 0xb63ba1c0
.word 0x29c7ecc9, 0x9fc3f9e4, 0x92bcdca0, 0xb2a563a7, 0xb32e0c9c, 0xd61404cc, 0x15f7fc9f, 0xd9e64c73
.word 0xd2872975, 0x5ae009f6, 0xdb4a879f, 0xe98c0c92, 0x681e1641, 0x70fec465, 0xab22f34e, 0xc221b0fa
.word 0x0565b1aa, 0xd17914a9, 0x54d54e2e, 0xeac7ec98, 0x13e70fd9, 0x78219e7e, 0xc7dbdb13, 0x988856fe
.word 0xa9b94853, 0x7cd59544, 0x1297860a, 0xc69c4279, 0xe7137f48, 0xdc60a80d, 0x29c0c765, 0xc3e16632
.word 0x78193ef3, 0x38b1803a, 0xd59d4987, 0x567bbbb2, 0xd89d4c43, 0x48f50e16, 0x03a1ffa0, 0x33d8c4ce
.word 0xb6fcb953, 0x8d07e64b, 0xaa5ecb51, 0xf1bb3004, 0xdb3414fe, 0x4b603bcf, 0xd202df04, 0xfab7dcfb
.word 0x66720b42, 0x74cbc8ab, 0xf1c30ada, 0xecb61083, 0x1c89f610, 0xd2e9242d, 0x2f30d037, 0xd302d1a5
.word 0xec4bf43a, 0x3da58303, 0x922793d6, 0xc7e9ad3c, 0x6682171e, 0x58fe532c, 0xdeee024d, 0xa173b8a5
.word 0xab0a72c4, 0x24280e7c, 0x5e3314af, 0x5b5d3d19, 0xc5a6b5f7, 0xb0e8f5b5, 0x9736ca93, 0xd69ea2f1
.word 0x177c23f4, 0x4a1f25f5, 0x9fa6ec72, 0x1ff4ccfd, 0x4aa96a70, 0xff583b76, 0xd0b2ffc9, 0xce45e333
.word 0xc649762c, 0x5aa14f9c, 0xc8a80982, 0xeddbf6e5, 0xcba2b70c, 0x295c7edb, 0xe7d91582, 0x206590d8
.word 0xbead30b5, 0x2c06d0af, 0xdceee184, 0x9492cbea, 0xf0b9432c, 0x67b4210e, 0x00c84b1a, 0xef6c30f8
.word 0x0637e057, 0x50760a2f, 0xaea8c434, 0xa4971142, 0x92681168, 0xe39a7369, 0x050748a9, 0x9461f1cb
.word 0x2973b78f, 0xdbe3cc5f, 0xaf14ec57, 0x8c8baa21, 0x5bcb0d56, 0x322660a1, 0x18142b31, 0x476c203d
.word 0xe7da1092, 0x18d79ab5, 0x92d8e3aa, 0x7bea88bb, 0xf0054d4a, 0x447f3f5a, 0x748fa4f4, 0xcd4270db
.word 0xebda675c, 0x60854050, 0xa7140df6, 0xca65fe0a, 0x81203f03, 0xd15b0251, 0xe89038a5, 0xf5e0067d
.word 0x68abd1c9, 0x073ae5ac, 0x3c2624d6, 0xb962f595, 0xadb6e79a, 0xc58dc323, 0x4e071415, 0xf0faad2d
.word 0x1551779e, 0x1355b6c2, 0x8aa1ab38, 0x3c975b4c, 0xbf9a7973, 0xb106fd40, 0xe66a27f0, 0x179772bb
.word 0x885e1eb4, 0x8ac1234b, 0x95919ef6, 0xea5c4e13, 0xa44616fc, 0x6ee1750a, 0x026f9d8a, 0xc3028f3d
.word 0x398413b5, 0xfc999749, 0x9a6c3034, 0x88c6b7e5, 0x7df92c16, 0xcb59880d, 0x6b2b28f0, 0x90ef3842
.word 0x0d8fce01, 0xda8e6f83, 0xa60059d5, 0x9a721b54, 0x630b9654, 0xf023aec0, 0x1e2fe83f, 0xb6151d16
.word 0xd5a687fe, 0x1d34d736, 0x398013e8, 0x74c39db7, 0x65d2fd0d, 0xd45a956d, 0x12a3c89c, 0xe2592f5a
.word 0xddad98cb, 0x074e97c6, 0xdf86360b, 0x33cbb82b, 0xcfbecd15, 0x4bf0bc9c, 0x5873273e, 0xc171af68
.word 0x3cac3a8d, 0x585243bc, 0x32f34a61, 0xa4bb0482, 0xf8ad6571, 0xd4f821df, 0xb07df8df, 0x5e8eefc1
.word 0x268b39c5, 0x0c60f6e6, 0xfc2556f9, 0x143d6bcf, 0x72dd7673, 0x124ee1af, 0xf9c31549, 0xcd6d9ef4
.word 0x8a263820, 0x7ce7bbe3, 0x5ce4dea7, 0xc737956d, 0xb9793e9a, 0xe6008636, 0x7d1378ca, 0xcf54b65c
.word 0x14dacbe3, 0xa7779237, 0x108dbdcc, 0xad3a64f8, 0x397f41f4, 0x15c9a84c, 0x867bb38b, 0xccecb6eb
.word 0x0d9d8030, 0xe4320679, 0x7b11a038, 0x22cef8de, 0xc2a82630, 0x9a857db4, 0x90f677ed, 0x2d29eecc
.word 0xb27cdb3b, 0x7969bc19, 0xe7e49c23, 0x4ade207d, 0x0317627f, 0x079f4bc1, 0xa6269e0e, 0x55b6809d
.word 0xd208c381, 0x8dfc31a9, 0xcd7a2384, 0x3b16e31c, 0xb1835ed0, 0x3e87c9f8, 0x1b9b4497, 0xdb580af6
.word 0xd0b21f07, 0x7821d449, 0x62755b88, 0x9caf34ac, 0x377ad486, 0xf3000735, 0xb076519d, 0x89618bed
.word 0x4bd56e9a, 0xa6c2cc27, 0x198239b7, 0x12451e4e, 0xdac1778d, 0x00f3f8f9, 0xdd37bf73, 0xe2114440
.word 0xa6adce38, 0x3478b4af, 0xde1f595c, 0x4d39ef1a, 0x13aca15d, 0x9737f47d, 0xa377bb6b, 0xcd6b6090
.word 0x5b04fa35, 0xc55942c7, 0x6c1ec79e, 0xfec07fd2, 0x652bea1c, 0x9c7543d7, 0xbe4ac0a0, 0xfaad6f62
.word 0xab657d4c, 0x1d4b6ec8, 0xd4d4b577, 0x59aad22f, 0x7dd3e16a, 0xc7355619, 0x3256d245, 0x16c8fa1e
.word 0x0c94f94b, 0x481ea45a, 0xf8d813ef, 0xa9592537, 0xba58e683, 0xec0be61e, 0xc67d2f34, 0x806f431e
.word 0x4fd0aefd, 0xa5458522, 0xb2f12824, 0x9980c37c, 0x7d72a4cd, 0xaadff21b, 0x9c9f3515, 0xc8e1fd6c
.word 0x5825e45b, 0x095bc669, 0xafb4efa9, 0x5f8318ab, 0xa168be62, 0xaa2ab07a, 0xf65a3239, 0x4e218980
.word 0xb92b1094, 0x4de51929, 0x001b0e45, 0x45accd94, 0x823193ae, 0x86107b48, 0x6dc89b22, 0x96abf374
.word 0x405e1da5, 0x066dff79, 0x350d5f8a, 0x8a15f7b4, 0xe525bcc4, 0xf08242e5, 0xdf5058eb, 0xa12d33ff
.word 0xb1085dde, 0x20e8e873, 0x5fb6ead8, 0xa17d2ea4, 0x2adf31a3, 0x590d7570, 0xeecfe702, 0xc727697d
.word 0xbb709f86, 0x8af5088a, 0xcfa34561, 0xc575f2d8, 0xd06752c8, 0xf9d820fd, 0xff5d1343, 0xba88f938
.word 0xe98305db, 0x6b8c5c94, 0x8506d7b3, 0xa9a8b6c4, 0x45a0b3ef, 0xd837bf04, 0x8019f77d, 0x41b9d376
.word 0x7426f413, 0x6e5c6e80, 0x830f2fba, 0x62e789f9, 0x6a1f84f9, 0xdcc877b0, 0x4c71ce44, 0x3c940752
.word 0x345e2633, 0x4b2e803c, 0xc93973f3, 0x15c29fdb, 0x41fda07f, 0x917ce6ec, 0x6c480c6e, 0x5ae5a71d
.word 0x59bc7f0f, 0x2014e1a1, 0xa5e327da, 0x43a2255f, 0xc828d5aa, 0x3ae2e0f0, 0xb31dc4d2, 0x77700d46
.word 0x9c9a2217, 0xfc5dbc3b, 0x0c9392fa, 0x802a9f86, 0xe9a577fb, 0x0b6ec7ad, 0x4082e3f4, 0xff81d486
.word 0xa62f828c, 0xabe40273, 0x9628fe80, 0x9c7bc617, 0x67174248, 0x07a9fd39, 0xa32d0eb1, 0xdf572d8b
.word 0xc3dbd233, 0x6936450a, 0xb9445e84, 0x9db204e1, 0x42935e83, 0x9d843321, 0xd53a6cfe, 0x0cc5d094
.word 0xede0c164, 0xe0ea58b9, 0x109ea931, 0x7c6eb2a2, 0x56b2ea13, 0x47a2d92e, 0x06729538, 0x646a0119
.word 0x022156d8, 0x360b7b3e, 0x54939f59, 0x4a0fc99b, 0x8bbc776a, 0x395262be, 0x1eb5926e, 0x5cc33918
.word 0x039473a6, 0xb7945603, 0x50891509, 0x5d8deff2, 0x0479405b, 0xc53e97ff, 0x2481d9ba, 0x6aa3f418
.word 0xb77fb9f3, 0xaf9addfa, 0x8844ee06, 0x8e41becd, 0xe1e99519, 0xee792566, 0x1b829bcd, 0x66dc2483
.word 0x62e37788, 0xf0ad36b7, 0xc420c26b, 0x2afd8d33, 0x4b56e4e7, 0x2e3915f0, 0xc96d6642, 0xf8ad9acc
.word 0x2035c617, 0x024d403a, 0x87cce5c2, 0x7cbac3a0, 0x48a18cfe, 0x279d93f4, 0x4808b80e, 0xdc3d528d
.word 0x90dd036a, 0x3c2fea0c, 0x5465f8ea, 0x4fff7dba, 0xb022a0f6, 0xe3545680, 0x6cef9aab, 0x8e2f3064
.word 0xd9367628, 0xc440cede, 0xa7e0beeb, 0x879ad780, 0x98bc8eb3, 0x015083dd, 0x477cea1c, 0x8baaa1e8
.word 0xdc1206df, 0x16dc91fa, 0x23192137, 0x89a5cf5b, 0xe7b24361, 0x46193b6d, 0x16d6314b, 0xf5a59748
.word 0xeb27bf93, 0xc41d314e, 0x9c0a83e8, 0xdb2f8377
.section .region_1,"aw",@progbits;
region_1:
.word 0x1f3faa2f, 0xa6e1c8e7, 0x3d8b2185, 0xd68c147a, 0xcad88da7, 0xc470546d, 0xeb660e23, 0x7b894c9e
.word 0xfafa5b54, 0x3f8b77e1, 0xfda96a89, 0x1c26440f, 0xfd4a22d1, 0xc002886a, 0x2ebd35e0, 0x480bb94f
.word 0xceb1065f, 0xc7fe4d0e, 0xcaf603e7, 0xc5193061, 0x8c2046b6, 0x778fc64b, 0x66cf6015, 0x32dbc021
.word 0xf6962778, 0x5faccb06, 0xfc946a8d, 0x9ff1ccb4, 0xb1a3665b, 0x7e955530, 0x689e4401, 0xa7d913ca
.word 0x3259c50e, 0x787b9a10, 0xca161b90, 0x2df23fb1, 0x965b8dd2, 0x7e0b27c3, 0xc424eabf, 0xc39730e1
.word 0x7de60370, 0x2c77bd24, 0x8c04e5e4, 0x056c2a78, 0x3ccce633, 0xbc89ef6a, 0xe871c740, 0x1603b435
.word 0xb5278633, 0x4610e22d, 0x2a177dd3, 0x2f30d278, 0x17e30460, 0x8b22fa98, 0x5f705d7f, 0xbf63b9e7
.word 0xda0dd157, 0xaa758c78, 0x5aedae54, 0x4a8761b5, 0x406793a7, 0x73124231, 0x3464e93d, 0x6eb47d2a
.word 0x9a95a704, 0x476c59b3, 0x9331fd3a, 0x6489d3a6, 0xceb809b9, 0x2713f3f1, 0x4f3d759b, 0xf86fe33c
.word 0x2c425cc3, 0x88ccd51f, 0xa1ac7556, 0xcc36b716, 0x62904e03, 0x6e32db7d, 0xc53cfd1b, 0x145a75ec
.word 0x181bf090, 0x9c6dd4ef, 0x759ff7f5, 0x6c951798, 0xff70549d, 0xa4e67770, 0x8c2f62dc, 0x03a133b6
.word 0xc56b7759, 0xcfe5ad0d, 0x33bbd809, 0xdd2fa013, 0xccd07adc, 0x29895732, 0x6fa64735, 0xf0b4e719
.word 0xb7d01579, 0xac2a5e00, 0x5cd88dca, 0x06f78c62, 0xa7faedd9, 0xf1bc5ff9, 0xce294e18, 0x2a2a4c87
.word 0xc4009218, 0x612604f1, 0x6b42ef39, 0x55365773, 0xaf1337dc, 0x0e691c92, 0x6519724b, 0x6f38726d
.word 0x2a4dc756, 0xe94df503, 0x8e6b9695, 0xf93635d6, 0x0523856a, 0x29c51398, 0xb2d72f75, 0x9f93b1cc
.word 0xb4e98f80, 0x6fc6b764, 0x8c76b5b9, 0x1e8a7aad, 0x51151238, 0xbc1b3de8, 0x640c3935, 0xde625933
.word 0x0f100e70, 0x6010ba4b, 0xb785fac6, 0x20116023, 0xd1e032a4, 0xf23ea0a9, 0x250d61ff, 0xfc081c52
.word 0xaa3a51dc, 0x2d75549d, 0x93c7f0b6, 0x67a81aad, 0x0235f96e, 0xc980e96d, 0xf69ce1a6, 0xe85709db
.word 0xccd4f1e0, 0x2b413c9d, 0xcfe93e80, 0xf635405a, 0xe8a84b89, 0x814f956b, 0x5490e36c, 0xa056af58
.word 0xa2596645, 0x9eb0cc97, 0x0fcb5a09, 0x254ba4f5, 0xd9364dd0, 0x7ab49c5f, 0x281821f8, 0x53cf3d2c
.word 0xc0e13133, 0x61bac358, 0x0f3baebd, 0x02eefe71, 0xb822c475, 0xeb354f1a, 0xe24018e7, 0xaa3a0226
.word 0x592929fe, 0x180405cf, 0x2a1014c8, 0x037155ca, 0xf11527b7, 0x872cdd9a, 0xdc4ea532, 0x34eccb94
.word 0x25aa4533, 0x55240558, 0xfce8ace1, 0x33a50f71, 0xe7b78420, 0x26537e38, 0x4bfe2137, 0x7929bcee
.word 0x0dc1cc03, 0x60b2a6a3, 0xeb4423a2, 0x1d53d65c, 0x141b2b3b, 0xf8545a7e, 0xa38ac871, 0xd79bc744
.word 0x12463b4a, 0x87876448, 0x4218adc6, 0x2c3790b7, 0x0e55a378, 0x8d7115fd, 0xd0e60807, 0x830da071
.word 0xc8e49917, 0x71fe3cd6, 0xdde62882, 0xfc7d252c, 0xfe3e44a4, 0x611f7a66, 0x2881ca9c, 0x965302e4
.word 0x9fbc453f, 0xee1eccb7, 0xd07a9492, 0x82395b60, 0x498848c8, 0x27941e61, 0x6fc42810, 0x7dfc9105
.word 0xa3a3df2d, 0x6bfb83b0, 0xf685aa24, 0xb0c5e239, 0x3b79ed35, 0xf0243b2b, 0xfdd6c589, 0x8607a7d9
.word 0x030f0ee2, 0xada5bf13, 0xcddff50e, 0x19e74fe2, 0x20ca9244, 0x78ae2797, 0xed409259, 0x063f833b
.word 0x6196a4fb, 0xf7de3c9e, 0x4df061e7, 0xcd1a3c34, 0x4b22ada7, 0xbd0f72b1, 0xfe54cb20, 0x53a56578
.word 0x114e3ab0, 0x76b61d7a, 0x148fd92c, 0xba760e96, 0x8aeb11f9, 0x05099708, 0x8604ea79, 0x08dd9eb6
.word 0xe4e96044, 0xe0cb3104, 0x1764d99d, 0xb969eb39, 0x918a9a47, 0xb6b099d7, 0x23010523, 0xd2a2ba6e
.word 0x323f5036, 0xcae47a78, 0x6977262f, 0x329578a9, 0x62489ab0, 0xe344517d, 0x476ba17a, 0xf09e531f
.word 0x94280c12, 0x444c5d5d, 0x51059128, 0xd4500efa, 0x53bed644, 0x8554f248, 0xf0bbe05a, 0x19c79907
.word 0x5dc2d80a, 0x2a208a43, 0x317b8ff3, 0x766d1ea4, 0xb86dd505, 0xab20d444, 0xa83b915a, 0x26c6f05c
.word 0x18c260ad, 0x85d05b8e, 0x2efe6bc9, 0xb887a968, 0x5d90aee2, 0xec362b3b, 0x988abb47, 0x5bcdf7c2
.word 0x708f3e5f, 0xf11eec12, 0x6a628914, 0x5c96db95, 0x30279068, 0xfa7472d6, 0xfb23dc17, 0x9cbf45d8
.word 0x9eab50c4, 0x3394117a, 0x180ebb37, 0xeeb432b2, 0xbf14e6eb, 0xeb4212f1, 0xe545fd59, 0xfe171f73
.word 0x14c74635, 0x6379484b, 0xe0118708, 0x1a4fa9fb, 0x95b015c7, 0x3d03b62a, 0x378106f5, 0x8fa16ec1
.word 0x0037c33c, 0x5e60119c, 0x8466ca18, 0x4e16bb33, 0x56f84f2d, 0x212fe964, 0xf9147281, 0x15003ffb
.word 0xb06d169e, 0x541cb933, 0xdd43e949, 0xd7df4a30, 0x85ee8e4d, 0x6df9cb45, 0xe05613ad, 0x4ccf0c0c
.word 0x071c619b, 0xc3afaa9d, 0xdfabd71f, 0x0547c76c, 0x95eefe7d, 0xa7c76523, 0x0bcf702d, 0xe3bd6f8d
.word 0x4e7937b9, 0x4caeeb63, 0x9f2e995b, 0x60642d04, 0x111d5a17, 0x37e9437c, 0x5b5ab97e, 0xae33bc93
.word 0x75da9530, 0x376c18a1, 0x4214554a, 0x7a63e252, 0x8f249daa, 0xfd4ed3f3, 0x60ac50a3, 0x19723cf0
.word 0xd4a0d73a, 0x99908d1f, 0xf3b98a3f, 0xd5e2cf97, 0x3d52de35, 0xe2350e43, 0xb811c571, 0xe08bc381
.word 0xe5906473, 0xce6e6719, 0x1635d19a, 0xf40bd521, 0xce9d60e8, 0x7b16b989, 0xbc0f12d1, 0x9fb6ba97
.word 0xc63aa3b0, 0x9a70a323, 0xe355b01e, 0x250a4541, 0xe092e0a5, 0xfb23a8c6, 0x3e5d7627, 0x576f965b
.word 0x5e1409e2, 0x5c31caa0, 0xf0d3d489, 0x178a58c9, 0x1961556e, 0x5db33d15, 0x9ab1f994, 0x76cf4297
.word 0x7fe72590, 0xe2be2976, 0x746ea6ae, 0x14dc43a9, 0x74955c03, 0x0cb8c453, 0x6aaf02c7, 0x44d38a17
.word 0x9b1aff8e, 0xf76d61ba, 0xb0586056, 0xd0e74e86, 0x5c01ba92, 0xb02920ae, 0x397a5865, 0xe6050717
.word 0x031a5835, 0x9e761c18, 0x52f73131, 0x3843ea62, 0x316a90c1, 0x0bc991d8, 0xb4e0f508, 0x8405eda8
.word 0x1c759115, 0x08c0f229, 0x9f7d0f91, 0x694e27a1, 0x77d7c432, 0xe47d3107, 0xa7530897, 0x4e84c856
.word 0x63afbf8f, 0xc6da5b79, 0x66b226e6, 0x84909bff, 0x6a79df5a, 0xca46e2f9, 0x8802d90b, 0x010d485c
.word 0x66ae5e92, 0xcc0200db, 0x50e9e040, 0xb26c3ac0, 0xb75b6fd4, 0x60540b23, 0xddf219fe, 0x3fe914e5
.word 0xde8bd986, 0xc88cc745, 0xafe4f770, 0xf5a706b6, 0x4512b2a6, 0xf31ded56, 0x9551dcee, 0xabea2d58
.word 0x5670c17e, 0xa131d19a, 0x6694b77f, 0x795bf7e1, 0x759455eb, 0xf3ac982b, 0xac3ae55c, 0xc749567d
.word 0xb2d49618, 0x5442568c, 0xefa626b7, 0x1b461b21, 0x79f42784, 0x7227f44a, 0x20c724ca, 0xfeee3bb1
.word 0xd1682286, 0xa7c6a558, 0x185b26cf, 0x919259ff, 0x4d4b9359, 0xe65958b8, 0xafb7572a, 0x15154d71
.word 0x016b6dd1, 0x7f942247, 0xa668ac61, 0xfd5d1c98, 0xbc298967, 0x5113aceb, 0x819a34b4, 0x274109b5
.word 0xde17093c, 0xbaa220d6, 0x04269c07, 0x48d9e113, 0x5967ff62, 0xe0c5383b, 0xfe32771e, 0x78812e96
.word 0x3cf27f8c, 0x572ea9c9, 0xc4dbf16a, 0x92a97901, 0x2e12a670, 0x16538837, 0xa57ce0b1, 0xbe4424b9
.word 0x27a5c5d5, 0x8b6fa154, 0x078ae52c, 0x898f2b96, 0xc5adcb97, 0x46aab32c, 0x909170d9, 0x46f86a9c
.word 0x382aa3dc, 0x89b4ff8a, 0x001a883d, 0x87771026
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
                  addi x9, x9, -128
                  sw  x1, 4(x9)
                  sw  x2, 8(x9)
                  sw  x3, 12(x9)
                  sw  x4, 16(x9)
                  sw  x5, 20(x9)
                  sw  x6, 24(x9)
                  sw  x7, 28(x9)
                  sw  x8, 32(x9)
                  sw  x9, 36(x9)
                  sw  x10, 40(x9)
                  sw  x11, 44(x9)
                  sw  x12, 48(x9)
                  sw  x13, 52(x9)
                  sw  x14, 56(x9)
                  sw  x15, 60(x9)
                  sw  x16, 64(x9)
                  sw  x17, 68(x9)
                  sw  x18, 72(x9)
                  sw  x19, 76(x9)
                  sw  x20, 80(x9)
                  sw  x21, 84(x9)
                  sw  x22, 88(x9)
                  sw  x23, 92(x9)
                  sw  x24, 96(x9)
                  sw  x25, 100(x9)
                  sw  x26, 104(x9)
                  sw  x27, 108(x9)
                  sw  x28, 112(x9)
                  sw  x29, 116(x9)
                  sw  x30, 120(x9)
                  sw  x31, 124(x9)
                  add x28, x9, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x4, 0x3 # BREAKPOINT
                  beq x12, x4, ebreak_handler
                  li x4, 0x8 # ECALL_UMODE
                  beq x12, x4, ecall_handler
                  li x4, 0x9 # ECALL_SMODE
                  beq x12, x4, ecall_handler
                  li x4, 0xb # ECALL_MMODE
                  beq x12, x4, ecall_handler
                  li x4, 0x1
                  beq x12, x4, instr_fault_handler
                  li x4, 0x5
                  beq x12, x4, load_fault_handler
                  li x4, 0x7
                  beq x12, x4, store_fault_handler
                  li x4, 0xc
                  beq x12, x4, pt_fault_handler
                  li x4, 0xd
                  beq x12, x4, pt_fault_handler
                  li x4, 0xf
                  beq x12, x4, pt_fault_handler
                  li x4, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x4, illegal_instr_handler
                  csrr x4, 0x343 # MTVAL
                  1: la x6, test_done
                  jalr x1, x6, 0

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
                  la x6, write_tohost
                  jalr x0, x6, 0

instr_fault_handler:
                  add x9, x28, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

load_fault_handler:
                  add x9, x28, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

store_fault_handler:
                  add x9, x28, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x9, x28, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x9, x28, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x9, x28, zero
                  lw  x1, 4(x9)
                  lw  x2, 8(x9)
                  lw  x3, 12(x9)
                  lw  x4, 16(x9)
                  lw  x5, 20(x9)
                  lw  x6, 24(x9)
                  lw  x7, 28(x9)
                  lw  x8, 32(x9)
                  lw  x9, 36(x9)
                  lw  x10, 40(x9)
                  lw  x11, 44(x9)
                  lw  x12, 48(x9)
                  lw  x13, 52(x9)
                  lw  x14, 56(x9)
                  lw  x15, 60(x9)
                  lw  x16, 64(x9)
                  lw  x17, 68(x9)
                  lw  x18, 72(x9)
                  lw  x19, 76(x9)
                  lw  x20, 80(x9)
                  lw  x21, 84(x9)
                  lw  x22, 88(x9)
                  lw  x23, 92(x9)
                  lw  x24, 96(x9)
                  lw  x25, 100(x9)
                  lw  x26, 104(x9)
                  lw  x27, 108(x9)
                  lw  x28, 112(x9)
                  lw  x29, 116(x9)
                  lw  x30, 120(x9)
                  lw  x31, 124(x9)
                  addi x9, x9, 128
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
