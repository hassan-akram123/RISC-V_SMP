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
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 1
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x9
                  li x5, 0xf1d285bb
                  li x6, 0x6
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0xa
                  li x11, 0xf4a90d3d
                  li x12, 0xfc6e469f
                  li x13, 0x46abea15
                  li x14, 0xf239be03
                  li x15, 0x80000000
                  li x17, 0xf50b227e
                  li x18, 0x80000000
                  li x19, 0x1
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x3
                  li x23, 0x80000000
                  li x24, 0x4
                  li x25, 0xfced9473
                  li x26, 0x80000000
                  li x27, 0x152c6800
                  li x28, 0x8
                  li x29, 0xfff29ef9
                  li x30, 0xfc5ac19e
                  li x31, 0xf9e49ff2
                  la x10, user_stack_end
main:             srli         zero, ra, 1
                  la           s7, sub_2
                  srl          tp, gp, a1
                  addi         s7, s7, 883
                  or           ra, s0, s1
                  bne          t5, s10, main_j3 #branch to jump instr
                  lui          s3, 401561
                  srai         gp, s6, 21
                  andi         t3, s7, -1478
                  xori         tp, a0, -113
main_j3:          jalr         sp, s7, -882 #jump main -> sub_2
                  addi         s7, zero, 10 #init loop 0 counter
                  addi         t4, zero, 10 #init loop 0 limit
                  sltiu        t1, a5, 1796
main_1_0_t:       slt          ra, sp, s3
                  addi         s7, s7, -9 #update loop 0 counter
                  bgeu         s7, t4, main_1_0_t #branch for loop 0
                  sra          s1, s3, zero
                  addi         s1, zero, -5 #init loop 1 counter
                  sltu         s8, a5, a5
                  slli         a3, ra, 19
                  addi         s3, zero, 10 #init loop 1 limit
                  srli         t5, t6, 7
                  or           ra, gp, s5
main_2_1_t:       addi         s2, t4, -66
                  sra          zero, a7, ra
                  or           a1, s2, a4
                  sra          a3, s5, s1
                  srai         s7, tp, 5
                  addi         s1, s1, 8 #update loop 1 counter
                  slti         s5, a2, -1422
                  addi         t3, zero, -1 #init loop 0 counter
                  xori         a1, s6, -490
                  addi         sp, zero, 18 #init loop 0 limit
                  auipc        a1, 272299
main_2_0_t:       xor          a5, a4, sp
                  addi         t3, t3, 4 #update loop 0 counter
                  add          ra, s10, t4
                  blt          t3, sp, main_2_0_t #branch for loop 0
                  slli         zero, a5, 24
                  srai         t1, s11, 9
                  sltu         s7, a2, tp
                  nop
                  blt          s1, s3, main_2_1_t #branch for loop 1
                  sll          t1, s11, s8
                  addi         t5, zero, 10 #init loop 0 counter
                  addi         gp, a6, -254
                  add          sp, tp, s4
                  lui          s1, 456638
                  sra          s4, tp, sp
                  slli         s1, s3, 11
                  srl          s0, t4, a4
                  addi         t2, zero, -4 #init loop 0 limit
                  sub          a5, s2, s10
main_0_0_t:       slti         a7, a2, -360
                  xor          s0, s3, s7
                  addi         t5, t5, -6 #update loop 0 counter
                  nop
                  sltiu        s3, a2, 975
                  sltu         t1, s3, s0
                  auipc        ra, 555061
                  bge          t5, t2, main_0_0_t #branch for loop 0
                  srai         s6, t1, 7
                  sltu         s7, s5, t0
                  xori         ra, s7, 894
                  xor          t0, gp, a2
                  xor          tp, t3, s9
                  sltu         t0, a4, s5
                  sub          s2, a6, gp
                  xori         tp, s6, -1993
                  add          t3, s10, sp
                  xor          s9, gp, s9
                  bge          a0, zero, 17f
                  sub          a5, gp, sp
                  and          t4, a4, t5
                  sltiu        a1, a4, -1576
                  sll          s5, a0, a5
                  srl          s9, a2, s5
                  xori         tp, s5, 118
                  sltu         s3, tp, s11
17:               slt          s6, a4, zero
                  slt          t3, s10, tp
                  ori          a5, sp, -1074
                  xor          zero, s9, zero
                  nop
                  andi         a4, s2, -1611
                  slt          s1, ra, t4
                  srai         a5, s10, 13
                  blt          t3, a4, 37f
                  addi         t4, s10, 1833
                  bgeu         s7, s0, 36f
                  srl          a1, a1, s0
                  lui          gp, 789556
                  auipc        gp, 16823
                  slli         ra, s8, 25
                  sltu         sp, a6, ra
                  bgeu         s0, a6, 41f
                  xori         s7, ra, 1962
                  srl          s3, a6, tp
36:               srai         s5, t2, 30
37:               blt          t6, a4, 38f
38:               ori          s0, a7, -769
                  or           t5, tp, t6
                  slli         t0, gp, 22
41:               bltu         t3, a3, 56f
                  slli         s4, a3, 21
                  add          a7, a1, a5
                  slti         a7, s10, -994
                  slti         a5, ra, 1765
                  sltu         t0, s2, s3
                  or           s0, s6, t3
                  blt          a0, t5, 59f
                  bne          s6, s4, 64f
                  sltiu        a4, t5, 136
                  and          s6, t2, t1
                  srl          a2, t2, t6
                  andi         gp, t1, -715
                  slti         tp, s4, -461
                  sll          s1, t6, s4
56:               blt          ra, ra, 57f
57:               blt          a2, s9, 63f
                  addi         t4, s3, -1596
59:               slli         ra, s5, 19
                  add          t3, t6, s2
                  xor          a7, t4, s9
                  bne          t3, s10, 69f
63:               bgeu         zero, tp, 69f
64:               add          s10, a0, sp
                  xori         s5, a1, 1557
                  srai         s4, sp, 29
                  xori         gp, a6, -677
                  auipc        tp, 9263
69:               sll          tp, a4, tp
                  andi         s10, s6, -1864
                  xor          a5, a5, s0
                  bltu         s3, s2, 82f
                  sub          s6, t5, s9
                  bgeu         a5, t3, 94f
                  srai         s10, t3, 17
                  bltu         s4, s8, 89f
                  beq          t3, t1, 79f
                  auipc        s2, 341938
79:               slli         s11, s2, 12
                  sltiu        a2, t1, -250
                  auipc        s7, 466859
82:               slti         s4, s2, 1074
                  xori         gp, s9, 858
                  srl          a5, a6, s1
                  sll          s6, s9, a6
                  xori         s8, ra, -603
                  bge          a4, a3, 89f
                  sra          s3, ra, s6
89:               sltiu        s9, t2, 428
                  bltu         t3, ra, 96f
                  sltu         gp, t5, t0
                  ori          a1, a7, -2046
                  bgeu         s6, t3, 109f
94:               addi         s5, t5, -1221
                  bltu         t6, s10, 106f
96:               beq          t2, t6, 103f
                  sltu         s7, s6, a6
                  srli         a4, t6, 21
                  slti         s9, s7, 634
                  andi         s11, a4, 662
                  or           s4, a1, s8
                  add          s7, s0, a3
103:              blt          t2, s10, 109f
                  xori         s10, s1, -502
                  bge          s4, t4, 120f
106:              bge          t4, zero, 122f
                  sltiu        s10, t0, -1519
                  auipc        t3, 365359
109:              auipc        s11, 162494
                  blt          t4, s3, 126f
                  sll          gp, a0, a4
                  xori         a3, a6, 949
                  bltu         a1, a4, 128f
                  blt          s1, tp, 118f
                  bgeu         t1, t4, 133f
                  nop
                  slti         a7, s7, -610
118:              sltu         a7, a2, s7
                  andi         s4, t0, 1532
120:              sra          zero, s6, a7
                  srai         s6, s10, 9
122:              sll          s3, t2, s9
                  sltu         t0, a5, t6
                  lui          a4, 69030
                  sub          a1, t5, s9
126:              bne          t2, s0, 135f
                  sra          s3, a7, a3
128:              andi         s7, t5, -158
                  addi         a2, a6, -178
                  andi         a3, t5, -43
                  add          s1, s11, t1
                  lui          s0, 480081
133:              bgeu         t3, a1, 148f
                  bge          a4, t1, 149f
135:              sltu         a5, zero, s10
                  bne          a7, zero, 138f
                  and          s8, a7, s5
138:              auipc        a4, 658963
                  ori          a5, s6, 49
                  and          s8, t0, sp
                  bltu         a7, a3, 148f
                  add          a4, s9, gp
                  sra          a3, a7, a0
                  beq          t0, tp, 159f
                  sra          t5, a1, t5
                  add          t5, s10, a0
                  srli         s0, t0, 29
148:              add          a3, t2, a3
149:              nop
                  xor          sp, t4, s10
                  auipc        t3, 228577
                  xori         t5, a6, 1098
                  beq          a0, zero, 162f
                  or           s0, a3, s3
                  la           s2, sub_2
                  or           t4, s10, a0
                  andi         s4, s11, -1155
                  addi         s2, s2, -926
                  srai         t0, a1, 5
                  srai         s6, sp, 30
                  xor          s10, s3, s3
                  add          t5, a0, s3
                  slli         s11, s5, 3
main_j2:          jalr         sp, s2, 926 #jump main -> sub_2
                  and          a4, a0, s2
                  slt          s3, a2, s4
                  add          t5, zero, s3
                  bgeu         s6, a2, 169f
                  sll          ra, t6, a2
159:              or           s3, gp, a2
                  bltu         t2, s3, 167f
                  nop
                  la           s10, sub_1
                  addi         s10, s10, 714
                  sll          a2, t5, s0
                  bge          a2, s11, main_j1 #branch to jump instr
                  lui          s1, 59156
                  or           tp, s3, a6
                  srl          s9, s8, a2
                  srli         s11, s3, 30
                  auipc        a7, 267606
main_j1:          jalr         sp, s10, -714 #jump main -> sub_1
162:              andi         t1, t0, 762
                  add          s11, t0, s9
                  sltiu        a2, s2, 112
                  ori          zero, s9, -732
                  sub          s10, s4, s0
167:              andi         s10, a5, -656
                  ori          t5, t2, 21
169:              srl          a5, zero, s7
                  slt          ra, t3, s2
                  srli         gp, a7, 6
                  beq          tp, a7, 180f
                  bne          s6, zero, 188f
                  lui          s4, 170478
                  xor          t5, s11, a1
                  and          a5, t3, t4
                  nop
                  nop
                  slt          s2, a5, gp
180:              sll          a4, s6, a6
                  lui          sp, 56979
                  sltiu        t4, a0, -236
                  sll          s10, t3, sp
                  slt          t2, zero, s3
                  bge          s10, s1, 193f
                  sra          s10, s7, s5
                  add          t0, s2, s10
188:              auipc        a7, 183102
                  and          t2, a1, s2
                  or           s4, a1, sp
                  addi         a3, s5, 632
                  bne          tp, a4, 193f
193:              lui          a5, 1016751
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            beq          gp, a7, sub_4_stack_p
                  slti         t1, s3, -408
sub_4_stack_p:    addi         a0, a0, -40
                  srli         s6, a2, 16
                  sw           sp, 4(a0)
                  addi         a7, gp, -182
                  addi         s6, zero, 8 #init loop 0 counter
                  xori         a2, s11, 110
                  sub          s1, s10, a5
                  sll          t3, s4, s1
                  andi         t2, s3, 906
                  sll          a2, s7, s9
                  addi         t1, zero, 10 #init loop 0 limit
                  ori          gp, ra, -1662
                  sltiu        a2, a2, -1062
sub_4_4_0_t:      add          s0, gp, t2
                  xor          a3, s7, a0
                  srai         tp, s6, 24
                  sll          tp, t3, a2
                  addi         s6, s6, 3 #update loop 0 counter
                  sub          sp, s6, a7
                  srli         t4, a7, 30
                  srl          t4, gp, t0
                  srli         zero, a0, 3
                  slti         s0, s1, 1111
                  add          a5, s4, s5
                  andi         s10, s0, -747
                  lui          t4, 422544
                  bltu         s6, t1, sub_4_4_0_t #branch for loop 0
                  and          s11, a4, gp
                  addi         s8, zero, 7 #init loop 1 counter
                  xor          sp, s4, t2
                  addi         a5, zero, -19 #init loop 1 limit
                  auipc        gp, 1034850
                  xor          t3, t2, s1
                  sltu         a3, t1, s2
sub_4_11_1_t:     sltu         gp, s6, t2
                  andi         s1, t6, -1945
                  sra          ra, a2, s10
                  addi         sp, t6, -778
                  sra          s1, a6, s11
                  nop
                  addi         s8, s8, -1 #update loop 1 counter
                  lui          s10, 335818
                  sltiu        t5, a7, -696
                  addi         a4, zero, -3 #init loop 0 counter
                  addi         s5, zero, 2 #init loop 0 limit
                  xori         s10, a3, 79
sub_4_11_0_t:     lui          s4, 140100
                  addi         a4, a4, 10 #update loop 0 counter
                  and          gp, s8, a4
                  bltu         a4, s5, sub_4_11_0_t #branch for loop 0
                  bge          s8, a5, sub_4_11_1_t #branch for loop 1
                  slti         s1, s9, 1923
                  addi         s3, zero, 9 #init loop 0 counter
                  addi         t5, zero, 4 #init loop 0 limit
                  xor          s0, t6, s0
sub_4_2_0_t:      auipc        s0, 224423
                  slti         s1, s3, 1608
                  sub          s10, sp, s0
                  addi         s3, s3, -3 #update loop 0 counter
                  bgeu         s3, t5, sub_4_2_0_t #branch for loop 0
                  slli         s2, s11, 18
                  addi         a7, zero, 4 #init loop 1 counter
                  auipc        sp, 679197
                  nop
                  addi         s6, zero, -3 #init loop 1 limit
                  sltiu        zero, s10, 916
sub_4_3_1_t:      ori          a2, t5, -1449
                  lui          s4, 305874
                  addi         a7, a7, -4 #update loop 1 counter
                  sra          a2, a2, s7
                  addi         s11, zero, 6 #init loop 0 counter
                  addi         s7, zero, 12 #init loop 0 limit
                  xor          s1, tp, a2
sub_4_3_0_t:      xori         s3, t5, -2025
                  addi         s11, s11, 6 #update loop 0 counter
                  bne          s11, s7, sub_4_3_0_t #branch for loop 0
                  lui          zero, 780202
                  auipc        sp, 346594
                  or           s1, s10, a0
                  bge          a7, s6, sub_4_3_1_t #branch for loop 1
                  srai         s5, sp, 1
                  addi         t4, zero, 1 #init loop 1 counter
                  addi         t2, zero, -9 #init loop 1 limit
                  auipc        s0, 601474
sub_4_14_1_t:     addi         s2, a1, -1843
                  sltiu        t5, s3, -1036
                  addi         t4, t4, -10 #update loop 1 counter
                  addi         a2, zero, -3 #init loop 0 counter
                  xor          a5, a0, s2
                  srli         s6, a6, 27
                  addi         tp, a1, 601
                  addi         s10, zero, 9 #init loop 0 limit
                  auipc        s0, 1003270
sub_4_14_0_t:     ori          s7, t1, 1463
                  sub          sp, t3, s7
                  addi         a2, a2, 4 #update loop 0 counter
                  addi         t0, tp, 1965
                  bne          a2, s10, sub_4_14_0_t #branch for loop 0
                  beq          t4, t2, sub_4_14_1_t #branch for loop 1
                  srai         s5, s1, 9
                  addi         s4, zero, 9 #init loop 0 counter
                  nop
                  or           s0, t1, s3
                  sra          t3, s7, a5
                  auipc        a7, 970204
                  addi         a2, zero, 3 #init loop 0 limit
                  xor          s1, t2, s11
                  srai         gp, s10, 16
sub_4_8_0_t:      sub          a5, s0, a3
                  addi         s4, s4, -2 #update loop 0 counter
                  sll          sp, s4, s6
                  sra          a3, a0, a7
                  add          s0, ra, a6
                  bgeu         s4, a2, sub_4_8_0_t #branch for loop 0
                  srai         a4, gp, 16
                  addi         t0, zero, -9 #init loop 0 counter
                  ori          t3, a4, 181
                  slt          t4, s2, s11
                  srai         s9, gp, 12
                  sll          a4, s1, s3
                  addi         gp, zero, -15 #init loop 0 limit
                  sltiu        t1, t4, 199
sub_4_15_0_t:     nop
                  sll          s4, t4, t2
                  srli         ra, s9, 26
                  auipc        a2, 442385
                  addi         t0, t0, -1 #update loop 0 counter
                  add          a4, ra, sp
                  sll          s2, s6, s8
                  lui          a2, 257621
                  sltiu        s8, s11, 583
                  sll          s1, t4, s0
                  slt          a4, s2, gp
                  andi         a5, t6, 767
                  srai         t2, t0, 15
                  nop
                  sub          s6, sp, tp
                  andi         s9, ra, 699
                  srli         s9, a3, 7
                  bne          t0, gp, sub_4_15_0_t #branch for loop 0
                  sltiu        a4, s10, 253
                  addi         sp, zero, 10 #init loop 0 counter
                  addi         tp, zero, 6 #init loop 0 limit
sub_4_9_0_t:      xori         s5, t6, -486
                  addi         sp, sp, -3 #update loop 0 counter
                  bgeu         sp, tp, sub_4_9_0_t #branch for loop 0
                  slli         t3, s2, 24
                  addi         s1, zero, 3 #init loop 1 counter
                  srl          s9, s0, s5
                  slli         tp, t3, 11
                  addi         a4, zero, -13 #init loop 1 limit
                  or           t2, a6, a4
sub_4_0_1_t:      or           s9, gp, t1
                  slt          ra, a1, s0
                  auipc        tp, 244619
                  addi         s1, s1, -10 #update loop 1 counter
                  sltu         t5, tp, s0
                  addi         s3, zero, -4 #init loop 0 counter
                  addi         a3, s10, -824
                  sub          s6, a6, s9
                  nop
                  slti         t5, t1, -399
                  addi         s5, zero, 5 #init loop 0 limit
                  nop
sub_4_0_0_t:      add          s8, s10, s11
                  or           s11, a4, s7
                  xori         s9, s3, 1985
                  ori          s10, a4, -1806
                  addi         s3, s3, 9 #update loop 0 counter
                  bltu         s3, s5, sub_4_0_0_t #branch for loop 0
                  or           s6, s1, t4
                  srai         s0, ra, 21
                  sub          a3, zero, t6
                  bge          s1, a4, sub_4_0_1_t #branch for loop 1
                  andi         s7, s2, -1761
                  addi         a7, zero, 5 #init loop 1 counter
                  ori          tp, tp, -806
                  sra          s7, s1, a0
                  ori          s3, t4, 720
                  addi         s0, zero, 13 #init loop 1 limit
                  ori          ra, s0, 1104
                  add          t5, gp, t0
sub_4_10_1_t:     slt          tp, t5, s6
                  addi         a7, a7, 10 #update loop 1 counter
                  slti         a3, sp, 1219
                  addi         t1, zero, 9 #init loop 0 counter
                  srl          t5, s9, s10
                  addi         a5, zero, 15 #init loop 0 limit
sub_4_10_0_t:     addi         gp, tp, 393
                  sltu         s4, t2, s4
                  addi         t1, t1, 6 #update loop 0 counter
                  and          s6, zero, s2
                  bne          t1, a5, sub_4_10_0_t #branch for loop 0
                  bltu         a7, s0, sub_4_10_1_t #branch for loop 1
                  or           a1, a6, t2
                  addi         s11, zero, 10 #init loop 1 counter
                  slt          s1, s7, s8
                  addi         s10, zero, -12 #init loop 1 limit
sub_4_16_1_t:     add          s1, s0, a3
                  addi         s11, s11, -5 #update loop 1 counter
                  addi         a7, zero, 4 #init loop 0 counter
                  or           t5, t5, s2
                  addi         t2, zero, 2 #init loop 0 limit
                  sra          sp, t6, t5
sub_4_16_0_t:     sltu         t5, s9, a2
                  addi         a7, a7, -8 #update loop 0 counter
                  bge          a7, t2, sub_4_16_0_t #branch for loop 0
                  srai         s9, t5, 29
                  srl          s1, a6, s10
                  bge          s11, s10, sub_4_16_1_t #branch for loop 1
                  auipc        s7, 586401
                  addi         s4, zero, 10 #init loop 0 counter
                  sltiu        s6, a4, -991
                  and          a7, a3, zero
                  addi         s1, zero, 16 #init loop 0 limit
                  sub          t2, s2, s9
                  nop
sub_4_17_0_t:     slt          a4, t3, t6
                  xor          gp, s8, a4
                  addi         s4, s4, 3 #update loop 0 counter
                  slti         a1, a1, -1884
                  bne          s4, s1, sub_4_17_0_t #branch for loop 0
                  sub          t2, t2, s11
                  addi         sp, zero, 9 #init loop 1 counter
                  lui          s1, 174684
                  addi         a7, zero, 9 #init loop 1 limit
                  slt          s7, t5, a1
sub_4_12_1_t:     xori         s6, a3, -1585
                  addi         sp, sp, -8 #update loop 1 counter
                  ori          a4, a7, 878
                  addi         s10, zero, -10 #init loop 0 counter
                  addi         s4, zero, -19 #init loop 0 limit
sub_4_12_0_t:     slt          a3, a0, s3
                  slt          t1, t4, a4
                  sll          s2, a2, s1
                  addi         s10, s10, -9 #update loop 0 counter
                  bne          s10, s4, sub_4_12_0_t #branch for loop 0
                  and          zero, zero, a2
                  and          s0, a7, t5
                  bgeu         sp, a7, sub_4_12_1_t #branch for loop 1
                  addi         tp, s7, 1577
                  andi         a2, a5, -1714
                  srl          s2, a5, t1
                  slti         s10, gp, 1749
                  lui          a4, 522220
                  add          t2, t5, s11
                  ori          s10, ra, 727
                  auipc        sp, 720816
                  and          s5, s7, t2
                  slti         t4, t5, -455
                  auipc        s4, 437216
                  bne          a7, a2, 26f
                  auipc        a2, 837450
                  blt          gp, a0, 16f
                  bge          t6, s1, 18f
                  bne          a1, s4, 26f
                  srl          s11, tp, a5
16:               and          t3, s8, t2
                  sll          t2, t3, zero
18:               and          a3, ra, t0
                  slt          t3, a4, zero
                  slli         t3, s5, 28
                  auipc        zero, 68081
                  ori          a1, t3, 690
                  and          s2, s11, s8
                  sltiu        zero, s10, -2029
                  srli         s8, tp, 14
26:               slli         s6, a5, 12
                  beq          a5, a2, 40f
                  xor          s3, s3, s0
                  sra          s0, sp, s4
                  sltiu        a5, s9, -1525
                  xori         s11, a4, 632
                  sll          t5, t5, a4
                  addi         t2, s3, 1594
                  srai         s7, a0, 5
                  sltu         t5, a7, a2
                  ori          t1, a0, -1835
                  andi         s0, zero, 1867
                  bgeu         t4, s4, 58f
                  bgeu         a5, s11, 40f
40:               xor          s1, s9, a5
                  ori          t3, a3, -28
                  bltu         a5, s3, 47f
                  sltiu        t2, t2, -1653
                  slli         ra, t4, 4
                  sltiu        s7, ra, 1527
                  slli         ra, s2, 19
                  addi         s10, zero, 4 #init loop 1 counter
                  xori         t5, gp, -1886
                  addi         s5, zero, 14 #init loop 1 limit
sub_4_7_1_t:      xori         a4, gp, 1264
                  or           t0, sp, s5
                  ori          s4, tp, -1960
                  addi         s10, s10, 2 #update loop 1 counter
                  sra          t4, t0, t6
                  nop
                  slli         a4, s2, 8
                  addi         a7, zero, 4 #init loop 0 counter
                  addi         sp, zero, 9 #init loop 0 limit
                  sltiu        s9, sp, -505
sub_4_7_0_t:      addi         a2, a7, -1711
                  sltu         t0, s9, s7
                  slti         s6, t5, 1103
                  sub          t1, s2, a6
                  andi         t2, s9, -1639
                  addi         a7, a7, 5 #update loop 0 counter
                  bltu         a7, sp, sub_4_7_0_t #branch for loop 0
                  add          ra, t6, a1
                  auipc        s4, 631638
                  nop
                  sltu         zero, a4, gp
                  sra          a3, a4, a1
                  srl          s11, s7, s7
                  sltiu        a5, s6, 323
                  blt          s10, s5, sub_4_7_1_t #branch for loop 1
                  andi         s1, s6, 761
47:               bltu         s4, tp, 55f
                  bltu         gp, s5, 68f
                  bge          a5, ra, 65f
                  or           zero, s5, s6
                  sub          s1, s1, s8
                  bltu         s10, t3, 56f
                  sltu         s5, t3, t6
                  sub          t1, a0, s2
55:               and          gp, a7, a1
56:               auipc        sp, 19484
                  ori          t1, t5, 1162
58:               ori          a2, zero, 327
                  xori         t0, s7, -171
                  or           s6, t4, t6
                  slli         zero, s0, 0
                  srai         s9, a1, 3
                  bgeu         t3, a0, 70f
                  srai         a7, s11, 24
65:               bgeu         s2, a2, 72f
                  slli         s5, a1, 27
                  andi         s3, a3, 1161
68:               or           zero, s1, s7
                  beq          s10, s4, 79f
70:               add          sp, a4, a6
                  srli         a7, a1, 26
72:               sra          a1, tp, a3
                  xor          s7, s10, a0
                  xor          a5, a1, a5
                  and          t2, a1, a4
                  blt          s2, s2, 84f
                  add          s2, ra, s3
                  bgeu         s3, s3, 87f
79:               srl          a4, sp, s5
                  srl          a1, s7, t0
                  blt          s9, t6, 97f
                  sltu         s1, a0, a3
                  srli         s1, s9, 6
84:               beq          a1, t4, 92f
                  and          s8, a7, ra
                  srai         s2, t3, 2
87:               slli         zero, zero, 12
                  auipc        t1, 628024
                  xor          t0, s6, s9
                  and          s1, s4, a2
                  or           a1, s2, t5
92:               bltu         t4, t6, 97f
                  or           a7, a7, a4
                  bge          s1, t6, 97f
                  sra          s1, a0, s5
                  lui          s0, 583321
97:               lui          s8, 682332
                  bltu         s5, s5, 114f
                  auipc        t5, 242250
                  bge          s1, ra, 120f
                  xor          a1, a3, s11
                  sltu         s7, a6, ra
                  bgeu         s1, t2, 112f
                  slt          s9, ra, t6
                  and          sp, t1, a0
                  bltu         s2, a2, 125f
                  bgeu         s10, a4, 114f
                  bgeu         s3, tp, 123f
                  addi         t3, zero, 5 #init loop 1 counter
                  and          a7, a1, t2
                  srai         s11, s3, 15
                  addi         a5, zero, 12 #init loop 1 limit
                  sll          ra, s9, gp
                  sra          s10, s9, s5
                  lui          s6, 1019707
                  lui          s0, 889431
                  lui          t2, 756848
sub_4_13_1_t:     auipc        s0, 82513
                  addi         t3, t3, 7 #update loop 1 counter
                  auipc        ra, 462218
                  addi         a3, zero, 6 #init loop 0 counter
                  xori         a7, t0, -1324
                  srli         ra, s7, 13
                  sub          s1, s0, s10
                  sub          a7, zero, s6
                  addi         gp, zero, 4 #init loop 0 limit
                  srl          s1, sp, s1
                  xori         t0, s11, -1756
                  sltiu        s10, a1, 632
sub_4_13_0_t:     or           zero, sp, t4
                  or           a2, s7, s8
                  nop
                  addi         a3, a3, -2 #update loop 0 counter
                  nop
                  bgeu         a3, gp, sub_4_13_0_t #branch for loop 0
                  beq          t3, a5, sub_4_13_1_t #branch for loop 1
                  sltiu        s1, a4, 1766
                  srl          a4, a6, t0
                  slt          zero, a4, t5
                  slt          t1, t2, t1
112:              lui          gp, 454255
                  and          s1, a3, s8
114:              beq          ra, s0, 119f
                  sra          t3, s4, t0
                  xor          s8, t0, s10
                  sra          t2, s1, gp
                  andi         t2, t3, -2025
119:              sub          a7, sp, s5
120:              or           a7, a5, s11
                  addi         ra, s9, -1295
                  add          s0, ra, s3
123:              sub          s10, a5, s1
                  srl          a3, t4, s10
125:              or           tp, s2, s8
                  auipc        t0, 981319
                  auipc        a3, 748270
                  sltiu        t3, t6, 1791
                  bltu         s8, s1, 144f
                  auipc        s11, 318431
                  addi         ra, a7, 207
                  srli         s2, s5, 28
                  sub          tp, a7, s2
                  or           s5, s3, a3
                  slt          s7, s8, s4
                  srai         gp, gp, 24
                  andi         s5, t5, 888
                  slt          s8, a7, s0
                  blt          t6, a4, 151f
                  srli         a7, s0, 23
                  and          s0, a7, s5
                  add          a7, t3, s2
                  sra          a7, tp, t5
144:              sub          gp, s7, t1
                  nop
                  sra          a1, t3, s2
                  sltiu        ra, t0, 827
                  slti         t2, s3, 2045
                  sltu         s2, t0, a2
                  bltu         ra, s6, 158f
151:              bgeu         a3, s6, 159f
                  blt          tp, a3, 156f
                  sra          t5, s3, t2
                  srl          s9, tp, sp
                  slt          s5, s3, a7
156:              lui          s7, 6561
                  bge          t0, gp, 167f
158:              beq          a7, t0, 177f
159:              auipc        t5, 662869
                  auipc        s7, 750856
                  xori         a5, t1, -43
                  ori          s3, t1, -1960
                  slt          sp, a3, s0
                  slt          s2, ra, t3
                  sltu         sp, t4, t1
                  blt          t2, s10, 178f
167:              sll          s11, s7, a0
                  srli         a1, s6, 8
                  andi         s6, s1, -696
                  bltu         ra, s11, 185f
                  srli         a4, s3, 16
                  ori          gp, t2, 1635
                  ori          a2, a2, -2028
                  bne          a7, s10, 187f
                  addi         tp, a3, 14
                  ori          s6, s6, 1385
177:              srl          zero, a3, a4
178:              auipc        t2, 87400
                  bgeu         a6, tp, 195f
                  xor          s0, t3, a5
                  addi         tp, t5, 1499
                  or           a2, s10, s11
                  bltu         s6, s6, 188f
                  bltu         s8, a1, 204f
185:              slt          a5, t6, a1
                  bltu         s11, t2, 191f
187:              blt          a3, s7, 196f
188:              sltiu        a4, a0, -613
                  slli         t5, s9, 5
                  or           a7, ra, a0
191:              xor          s10, t6, t1
                  slli         s3, s6, 14
                  bgeu         s3, s4, 213f
                  slli         t1, t1, 3
195:              sra          tp, tp, a7
196:              lui          s8, 398400
                  xor          a4, t1, s3
                  bltu         a1, s3, 213f
                  lui          s2, 226283
                  sltiu        s1, sp, 1362
                  auipc        s9, 559940
                  sltu         s4, s11, s2
                  slli         s4, a0, 7
204:              xor          s10, a3, tp
                  auipc        a5, 1018203
                  addi         s8, s4, 884
                  andi         s10, a3, 115
                  sub          a1, tp, t1
                  bne          t6, t0, 213f
                  sll          s8, s1, s7
                  sub          s7, t3, a3
                  nop
213:              sll          s7, s9, t1
                  slti         s11, s8, -998
                  lui          tp, 21053
                  bgeu         t2, t3, 221f
                  slt          ra, s8, a1
                  sra          t0, a1, s9
                  blt          s4, t4, 231f
                  and          gp, a5, a0
221:              bne          s9, a5, 237f
                  bge          s0, s5, 229f
                  auipc        a1, 845731
                  bge          gp, a2, 240f
                  add          a2, t4, ra
                  addi         s1, a4, -1686
                  slt          a2, a4, s0
                  addi         t3, s6, 1570
229:              slli         t2, s4, 30
                  xori         s11, a4, -50
231:              lui          t1, 633908
                  sra          s5, a2, s2
                  nop
                  sra          t2, s11, s3
                  xori         s9, s11, -1422
                  srli         s6, tp, 22
237:              sub          a3, s6, t3
                  srli         sp, t1, 10
                  srl          sp, t1, a0
240:              sub          sp, s4, a7
                  bne          s8, t6, 248f
                  sltiu        ra, s11, -1274
                  srli         t4, t6, 0
                  slti         t0, ra, -1964
                  sll          s3, s10, s4
                  blt          t2, s9, 254f
                  or           s10, s4, t6
248:              ori          t1, s2, -1254
                  blt          s3, s0, 269f
                  sra          zero, s3, t1
                  srl          s1, a2, s5
                  slli         a1, s3, 3
                  sltu         s8, a0, ra
254:              bne          s11, s2, 270f
                  beq          a1, a3, 256f
256:              slli         s3, gp, 3
                  bltu         s3, gp, 266f
                  xori         s0, s3, 1571
                  addi         t1, t1, 1960
                  or           t1, t5, s10
                  sltiu        t0, t3, -1024
                  addi         t1, a4, -1581
                  auipc        tp, 167249
                  xori         s7, a0, 217
                  ori          a3, a0, 1404
266:              bge          a5, a6, 269f
                  xor          a2, s4, t6
                  lui          zero, 744284
269:              sltiu        t4, s3, 1647
270:              blt          ra, t1, 277f
                  and          a4, s8, sp
                  bltu         t5, a0, 277f
                  sltu         s8, zero, gp
                  xor          a1, a2, t5
                  slt          tp, zero, a7
                  srai         t1, t0, 24
277:              srli         a3, s10, 22
                  sll          s9, s9, t6
                  nop
                  ori          s11, s10, 1782
                  sltu         s11, s11, a4
                  bne          tp, a4, 287f
                  sltu         a4, s10, s6
                  nop
                  blt          a4, zero, 304f
                  srli         s1, t1, 10
287:              sub          s1, t1, s2
                  sltiu        a4, a5, -1762
                  bne          t6, gp, 294f
                  bge          s11, a1, 306f
                  xori         tp, a0, -1971
                  or           a1, a0, a6
                  blt          tp, ra, 302f
294:              auipc        gp, 569252
                  bne          sp, t3, 304f
                  slli         s9, tp, 8
                  lui          a1, 931420
                  or           tp, a2, gp
                  xor          s5, a3, t6
                  sltiu        s0, gp, -1902
                  sltu         sp, s2, t2
302:              sltu         s9, s11, t1
                  sra          s1, s11, t5
304:              beq          s10, a7, 312f
                  bge          s10, s8, 306f
306:              srl          s7, sp, s5
                  addi         s0, s6, -48
                  or           a4, s3, a6
                  sra          t2, s10, s0
                  slli         t0, t1, 21
                  sltiu        tp, t1, 1886
312:              srli         s0, t0, 23
                  srli         zero, s3, 25
                  addi         t1, zero, -2 #init loop 1 counter
                  addi         gp, zero, -6 #init loop 1 limit
sub_4_6_1_t:      sltu         s2, a6, s3
                  srai         t0, ra, 6
                  addi         t1, t1, -4 #update loop 1 counter
                  xor          s7, gp, gp
                  srl          a3, t0, s7
                  slt          a2, s10, a3
                  auipc        t0, 157642
                  sra          zero, a2, ra
                  addi         t3, zero, 5 #init loop 0 counter
                  sltiu        a5, ra, 1231
                  addi         a7, zero, -10 #init loop 0 limit
                  srl          ra, s7, tp
sub_4_6_0_t:      sltiu        a3, gp, -1507
                  addi         t3, t3, -2 #update loop 0 counter
                  auipc        t4, 444957
                  bge          t3, a7, sub_4_6_0_t #branch for loop 0
                  andi         a5, a0, 1257
                  sltu         a2, a0, t4
                  slli         zero, gp, 9
                  bge          t1, gp, sub_4_6_1_t #branch for loop 1
                  xori         sp, t6, 401
                  add          t0, a2, s10
                  ori          a7, gp, 1790
                  or           s7, a0, t4
                  addi         a4, s3, 1231
                  slli         s0, t4, 13
                  nop
                  bne          a5, t6, 328f
                  bne          t5, t4, 337f
                  add          s5, sp, t6
                  sra          s0, zero, a4
                  bge          t0, s5, 344f
                  blt          a2, a3, 332f
                  auipc        a2, 868520
                  sub          s2, ra, t4
328:              srl          a2, t0, a4
                  beq          t4, t6, 337f
                  slli         s3, s2, 12
                  sub          a1, s0, t4
332:              beq          s8, s0, 348f
                  sub          t5, zero, s6
                  auipc        s1, 771293
                  sltiu        t2, t0, 1330
                  sltiu        t1, s9, 1485
337:              sltu         a7, s4, t5
                  srai         s2, s2, 1
                  bltu         s8, gp, 342f
                  sub          s6, s11, s6
                  slti         s5, a3, -1080
342:              blt          a3, a5, 346f
                  xor          a1, t2, s6
344:              xori         s4, a1, 1433
                  bltu         s2, t5, 352f
346:              bgeu         t1, t1, 366f
                  bge          s0, s4, 357f
348:              slti         s8, s8, -1254
                  slli         a2, t5, 5
                  sll          a1, a1, a3
                  bne          tp, gp, 363f
352:              lui          t3, 420415
                  slli         s9, s5, 30
                  nop
                  sub          t5, s8, s9
                  bge          a0, a1, 368f
357:              sltu         t1, s2, a2
                  srl          sp, t6, a5
                  lui          s0, 842243
                  blt          s2, t1, 367f
                  andi         s9, a0, 356
                  srli         s1, sp, 5
363:              sra          t2, s1, a1
                  bge          tp, s9, 377f
                  srli         s5, a2, 26
366:              lui          sp, 269172
367:              addi         s11, t4, 156
368:              sra          ra, t1, t6
                  sra          sp, s10, s8
                  beq          a0, t0, 390f
                  srli         a5, t2, 6
                  bltu         a6, t0, 377f
                  xori         ra, s7, -1012
                  slt          ra, s2, zero
                  srli         t3, t3, 21
                  bltu         a5, gp, 391f
377:              srai         gp, a6, 1
                  sltiu        s7, s11, -1607
                  xori         t0, s10, 427
                  beq          s10, ra, 384f
                  bltu         s0, s6, 396f
                  slt          a7, s6, s9
                  slt          t3, ra, a5
384:              sltu         s4, zero, zero
                  addi         s1, t1, 517
                  bgeu         gp, s4, 402f
                  srli         s10, s1, 21
                  sra          s3, zero, t0
                  sltu         s9, a1, a7
390:              addi         a2, a2, 758
391:              add          s0, s9, s0
                  sll          s2, gp, a4
                  srli         t4, a7, 2
                  slli         a1, a0, 26
                  andi         s8, s8, -496
396:              auipc        s5, 826031
                  lui          zero, 655580
                  slli         s4, sp, 18
                  beq          s6, a4, 404f
                  sub          a2, s0, s10
                  beq          s6, s1, 410f
402:              addi         s9, s6, -1076
                  srai         t2, s10, 31
404:              blt          zero, s3, 419f
                  ori          t5, a5, -127
                  lui          a2, 934632
                  sra          t0, t3, s3
                  addi         s10, zero, -10 #init loop 1 counter
                  xori         s3, s3, 1307
                  lui          s6, 894882
                  sll          a1, tp, s6
                  auipc        a7, 797558
                  lui          ra, 376486
                  andi         s11, s2, 800
                  addi         a3, zero, -9 #init loop 1 limit
sub_4_1_1_t:      auipc        s8, 158344
                  addi         s10, s10, 9 #update loop 1 counter
                  andi         s9, t6, -842
                  addi         sp, zero, 3 #init loop 0 counter
                  addi         t0, zero, 9 #init loop 0 limit
                  sll          a2, a0, t1
sub_4_1_0_t:      and          t4, t6, a5
                  and          a7, s1, s5
                  addi         sp, sp, 6 #update loop 0 counter
                  nop
                  bne          sp, t0, sub_4_1_0_t #branch for loop 0
                  slli         a2, a3, 30
                  xori         s2, a6, 16
                  blt          s10, a3, sub_4_1_1_t #branch for loop 1
                  ori          s7, s6, 923
                  blt          t3, a4, 413f
                  bltu         s4, s3, 416f
410:              bne          t2, s0, 426f
                  blt          t6, t2, 418f
                  srai         t1, a6, 24
413:              lui          s3, 666678
                  xor          s2, s2, a0
                  add          sp, a6, s3
416:              ori          s4, gp, 1859
                  bgeu         t2, t3, 437f
418:              sltu         s3, s11, a5
419:              auipc        a5, 932775
                  bne          a4, s3, 436f
                  slli         s7, a2, 9
                  and          t4, tp, s1
                  sll          s0, a1, zero
                  slli         t0, s5, 29
                  beq          s9, a1, 430f
426:              beq          s8, a5, 429f
                  addi         gp, s3, 841
                  xor          t2, a6, tp
429:              sltiu        s10, a6, -47
430:              lui          a1, 518040
                  sltu         t0, sp, s3
                  and          t1, sp, a1
                  xor          s10, t3, s11
                  addi         sp, t2, -1244
                  sltiu        s2, a5, 1713
436:              ori          a4, s9, -882
437:              addi         t4, s0, -1324
                  sll          sp, a1, s11
                  blt          s2, s10, 447f
                  bge          a5, a2, 447f
                  beq          t1, s11, 461f
                  slli         s9, t6, 31
                  srai         t0, s8, 23
                  ori          a5, a5, 813
                  bltu         s7, a2, 464f
                  bltu         s1, zero, 454f
447:              xor          s3, zero, s6
                  lui          s5, 962924
                  add          s2, t6, s10
                  ori          sp, s10, 1072
                  sub          s8, a4, s2
                  add          s2, s2, t4
                  bne          s11, s11, 458f
454:              ori          s3, gp, 263
                  slli         s9, t6, 15
                  addi         a3, s8, -262
                  lui          a2, 365686
458:              auipc        ra, 342034
                  addi         s9, a4, -1990
                  sltiu        t2, a0, 965
461:              sra          t1, a6, t3
                  xor          t5, ra, ra
                  srai         t0, t0, 16
464:              srli         a7, a1, 21
                  lui          sp, 376754
                  andi         s5, a3, -915
                  or           s10, t1, zero
                  srai         t0, t1, 23
                  slti         a5, s11, 763
                  addi         ra, s4, -943
                  bge          s7, a5, 486f
                  lui          t0, 994460
                  srl          t2, t6, a4
                  srl          s0, a4, s4
                  blt          t1, tp, 491f
                  slli         ra, s6, 22
                  sra          s1, s4, t3
                  xori         t3, tp, 691
                  nop
                  slt          t4, t4, t6
                  bne          a2, t0, 489f
                  sub          a3, s10, a1
                  slt          s0, s3, s1
                  sltu         a1, s4, s4
                  auipc        s11, 422556
486:              and          t2, t2, a7
                  bne          s6, a3, 491f
                  sra          ra, a7, a4
489:              lui          s1, 101843
                  blt          a0, s1, 502f
491:              or           a5, s1, s1
                  sll          zero, a7, a6
                  andi         a2, s6, 282
                  nop
                  bne          gp, s10, 499f
                  xor          a5, s9, ra
                  xori         s8, s7, 176
                  srai         a2, tp, 26
499:              beq          gp, s11, 500f
500:              addi         a7, s5, 656
                  blt          s10, t5, 521f
502:              addi         ra, s5, 30
                  add          s2, t0, s3
                  sltu         s11, a4, t5
                  bne          s0, sp, 518f
                  andi         s5, a1, -258
                  bge          s3, s7, 519f
                  srli         zero, t2, 3
                  beq          t2, s5, 518f
                  lui          gp, 24616
                  bne          a1, t1, 521f
                  addi         a7, t5, 1095
                  beq          a5, t0, 518f
                  xori         a2, a1, -1863
                  slti         s9, s11, -1410
                  or           s1, sp, zero
                  srl          s9, tp, s9
518:              add          s6, a7, a4
519:              or           s5, t6, s4
                  andi         t1, tp, 1527
521:              nop
                  bgeu         s8, a2, 538f
                  and          s6, s4, s8
                  slt          s3, s1, s2
                  sltu         gp, zero, ra
                  ori          zero, s2, -1552
                  srl          s3, sp, a2
                  auipc        s11, 497730
                  add          t2, t0, t4
                  slli         tp, t0, 4
                  sub          sp, zero, t0
                  and          s8, a0, a4
                  sra          gp, s7, sp
                  bge          t3, ra, 550f
                  sltu         t3, t6, t3
                  nop
                  srl          t0, s5, t1
538:              bltu         gp, s3, 550f
                  bge          t6, a6, 544f
                  sra          t0, tp, s3
                  slli         ra, t5, 26
                  slt          sp, s8, t3
                  srl          s5, t2, a0
544:              sub          t1, a4, s4
                  addi         ra, zero, -1850
                  slli         s8, s6, 12
                  add          a3, s3, s1
                  lui          zero, 489098
                  srai         a2, s5, 7
550:              addi         a1, a2, -1381
                  slti         t0, ra, 1500
                  bltu         tp, tp, 567f
                  beq          t0, s10, 573f
                  bgeu         t2, t0, 559f
                  or           s4, s11, t2
                  bgeu         s7, a6, 563f
                  or           s8, t4, s10
                  sub          a5, s7, t3
559:              bgeu         t6, t3, 568f
                  sra          a1, a6, t5
                  or           ra, zero, t6
                  nop
563:              blt          t1, gp, 568f
                  srai         a3, t0, 18
                  xor          a1, s9, s11
                  or           s4, a6, s6
567:              blt          zero, gp, 575f
568:              sra          s3, a4, s5
                  blt          t2, a2, 589f
                  slt          t1, zero, t4
                  srl          t3, zero, s0
                  nop
573:              lui          s6, 542214
                  slt          s8, s7, a4
575:              srli         ra, s10, 4
                  slt          t3, t2, a4
                  or           t1, a3, s7
                  add          s9, zero, s0
                  slt          a2, a0, t2
                  slt          zero, s5, s5
                  sltu         s11, s8, ra
                  and          s7, gp, a6
                  addi         t0, a1, -596
                  sra          t4, s11, t2
                  ori          ra, a4, -917
                  sra          a1, a0, a6
                  srai         s5, s10, 6
                  slli         a7, gp, 0
589:              andi         zero, s10, -259
                  bge          t0, ra, 610f
                  slli         a2, t5, 11
                  auipc        a1, 77131
                  xor          s9, gp, s5
                  add          s1, a1, t4
                  blt          t1, a4, 600f
                  srl          t0, t1, ra
                  bge          s0, a5, 613f
                  auipc        a7, 1005735
                  xori         a1, a3, 1722
600:              srl          t0, zero, a4
                  sltiu        t5, s4, -1832
                  bge          s10, t2, 606f
                  sltiu        s6, t2, 1798
                  bge          gp, a4, 612f
                  blt          s2, t0, 608f
606:              sltiu        s10, s8, -1883
                  sll          s5, t2, a4
608:              auipc        a3, 276672
                  ori          t4, s2, -714
610:              auipc        s0, 769479
                  sltiu        t5, t3, 1393
612:              sll          a2, a7, a7
613:              nop
                  slli         t5, s8, 23
                  bgeu         s6, t0, 634f
                  sltiu        a4, s9, 1519
                  xor          s4, t3, s11
                  and          t4, s7, a7
                  bltu         s6, a4, 620f
620:              sra          zero, s6, a2
                  slti         a1, s5, -396
                  sra          s4, s0, a0
                  beq          s3, t1, 638f
                  slt          a4, t4, t0
                  ori          s9, t4, -1988
                  srli         s9, a1, 13
                  auipc        s5, 1041811
                  bgeu         zero, s6, 638f
                  sltiu        ra, s3, -1179
                  slt          sp, zero, t4
                  xori         s9, a0, -1649
                  sltu         s8, a4, s1
                  nop
634:              nop
                  xor          s6, a4, t5
                  sll          zero, tp, a4
                  sub          ra, s2, sp
638:              andi         a7, tp, 1220
                  slt          s9, a0, a2
                  ori          s5, s7, 874
                  or           sp, a0, a5
                  ori          s2, t3, 413
                  lui          s3, 336985
                  beq          ra, s0, 651f
                  blt          a7, zero, 654f
                  sltu         ra, zero, s11
                  bge          s3, t3, 659f
                  bgeu         tp, s4, 664f
                  bne          s4, t6, 662f
                  srai         s11, a2, 15
651:              sltu         a7, s4, a1
                  andi         tp, s10, 1588
                  sltiu        s4, s0, 1951
654:              sltu         a4, a7, s1
                  sra          a4, s10, a0
                  bltu         s9, s6, 663f
                  blt          ra, s1, 673f
                  addi         s3, s4, -1499
659:              sra          s6, s3, t6
                  sll          zero, s2, gp
                  auipc        t0, 548438
662:              srai         a5, s7, 14
663:              slt          s11, s3, s7
664:              beq          zero, a5, 672f
                  ori          s0, a4, 2034
                  nop
                  bltu         s4, t0, 671f
                  or           t2, s9, t2
                  ori          s7, a3, 1207
                  andi         a2, s2, 760
671:              andi         t2, s4, 1348
672:              sltu         t2, a0, a3
673:              srl          t3, s6, t5
                  bge          a2, t1, 689f
                  sra          gp, a0, s9
                  sll          a1, gp, s5
                  andi         a5, a6, 1460
                  sltu         t5, s6, sp
                  sltu         a7, t4, a6
                  addi         a7, a7, -155
                  blt          a4, sp, 685f
                  slli         s6, a5, 17
                  srli         t2, sp, 20
                  auipc        s8, 1011295
685:              sub          s2, s1, a7
                  slt          t5, t1, t1
                  sltiu        t1, s1, 332
                  add          s2, t2, zero
689:              slti         t1, t4, 1103
                  slt          s9, t5, a1
                  srl          t0, t2, a0
                  xor          sp, s5, t6
                  lui          sp, 1037573
                  slli         s9, ra, 7
                  sub          a7, s2, s4
                  and          s10, a6, s4
                  srl          a5, s6, t5
                  beq          zero, s0, 706f
                  sub          s6, t4, s1
                  slli         t5, a7, 31
                  auipc        a4, 637351
                  bltu         zero, t6, 710f
                  nop
                  xor          t1, s8, a5
                  sltu         s2, t4, s5
706:              nop
                  add          s10, s4, a0
                  xori         s2, t0, 65
                  bltu         t1, s7, 719f
710:              sra          s2, s2, t2
                  sra          a4, a3, t6
                  sltiu        t0, t1, -1717
                  or           t0, s6, ra
                  lui          t0, 922665
                  lui          s6, 181199
                  xor          s9, s9, a1
                  xor          s10, gp, a6
                  slti         s3, zero, 653
719:              andi         a2, a4, 1197
                  slli         s1, a3, 26
                  slli         t4, gp, 31
                  auipc        s11, 234786
                  blt          s10, gp, 739f
                  nop
                  or           sp, t2, tp
                  and          ra, s9, s1
                  beq          a2, s3, 734f
                  blt          s9, s3, 744f
                  slli         a7, s1, 0
                  slti         a5, t6, -424
                  srl          s5, a1, s2
                  srai         t1, tp, 14
                  xori         s0, a4, 1493
734:              and          s0, s4, sp
                  sll          a7, zero, s5
                  add          s5, s6, sp
                  sll          s3, t1, a0
                  srai         t1, sp, 13
                  sub          s5, a1, s1
                  sltiu        s5, s8, 943
                  beq          a4, a2, sub_4_j7 #branch to jump instr
                  srai         sp, zero, 26
                  slti         a1, t2, 350
                  xori         t3, s4, 87
                  slt          gp, t4, t5
                  ori          a5, s5, -1523
                  srl          a1, t5, t6
                  slti         t1, s6, 1569
                  srai         a3, s10, 11
sub_4_j7:         jal          sp, sub_5 #jump sub_4 -> sub_5
739:              beq          ra, s8, 759f
                  srl          sp, a1, a7
                  ori          s8, s3, 492
                  add          gp, a4, a3
                  sltu         s8, s8, t1
744:              blt          s4, s3, 749f
                  xori         s4, t3, -1351
                  lui          tp, 441443
                  sltiu        t0, a1, -1110
                  slt          a7, tp, t3
749:              sub          t3, a2, t0
                  bgeu         sp, s8, 757f
                  srai         ra, t6, 31
                  bne          a4, t0, 768f
                  nop
                  or           a2, s5, t3
                  addi         s5, tp, -1212
                  sltiu        tp, s1, 1451
757:              andi         s2, s1, 145
                  andi         tp, t1, 302
759:              andi         s9, tp, 1829
                  auipc        s3, 263643
                  and          sp, s11, s10
                  srai         s3, t5, 4
                  bne          t1, s4, 764f
764:              srai         t3, s1, 15
                  slli         s3, zero, 24
                  beq          sp, gp, 773f
                  sltu         s9, t0, t2
768:              sra          s4, s0, a2
                  andi         s0, zero, 13
                  srai         t1, a3, 0
                  srl          t0, zero, s5
                  bltu         s0, s8, 788f
773:              lui          s4, 695758
                  bgeu         t2, s1, 782f
                  slti         tp, t6, 1042
                  andi         a1, s6, 1163
                  sltiu        a4, ra, -429
                  bne          s11, a1, 798f
                  auipc        t0, 117812
                  sltiu        a5, s5, 1779
                  srli         t0, sp, 4
782:              sra          a2, s4, s4
                  or           a7, s11, t6
                  slli         a7, t1, 20
                  lui          sp, 782637
                  slti         a4, s7, 415
                  sra          a7, t3, s10
788:              beq          a4, s6, 793f
                  xor          s5, s11, s3
                  ori          t2, s11, 1274
                  sltu         s0, s9, t5
                  lui          a3, 733393
793:              bge          a2, s6, 808f
                  sra          s8, s0, t6
                  sltu         s4, s5, s4
                  slt          s8, s11, t1
                  sltiu        s3, s8, 12
798:              slt          s2, t4, t1
                  blt          a4, zero, 811f
                  andi         a4, s1, 1709
                  bltu         t1, a0, 806f
                  or           s9, a5, sp
                  blt          s2, s7, 822f
                  blt          sp, t2, 817f
                  nop
806:              slti         a7, a6, 1517
                  xori         ra, s6, 1239
808:              sra          tp, ra, s6
                  andi         a4, a6, 721
                  sub          a1, a3, t0
811:              nop
                  slti         t3, t4, -187
                  andi         tp, a3, 974
                  bne          s3, s8, 823f
                  srai         t3, s1, 12
                  sub          t0, a6, s11
817:              sub          ra, a3, ra
                  blt          a3, tp, 821f
                  xori         s2, s4, 1465
                  bne          t3, t6, 840f
821:              beq          gp, t0, 825f
822:              bgeu         s3, s0, 834f
823:              lui          a3, 284251
                  srli         a7, s2, 25
825:              slt          t3, t1, a0
                  ori          sp, s2, -1949
                  srai         zero, gp, 18
                  auipc        a2, 52148
                  slt          s9, t0, zero
                  auipc        s9, 542838
                  sra          tp, t6, a4
                  slli         s8, a6, 8
                  auipc        t3, 819984
834:              add          t3, a3, t6
                  srli         gp, s10, 27
                  and          t5, t2, t4
                  xori         s6, zero, -1775
                  addi         tp, zero, -6 #init loop 1 counter
                  xor          s6, a3, a0
                  srl          t0, a6, a7
                  nop
                  srl          t1, a3, a4
                  and          s3, a2, t0
                  addi         s2, zero, 12 #init loop 1 limit
                  add          s8, zero, t2
                  slti         t4, zero, 1255
sub_4_5_1_t:      nop
                  addi         tp, tp, 5 #update loop 1 counter
                  or           s6, s0, s11
                  addi         a5, zero, -3 #init loop 0 counter
                  xor          a1, a0, a6
                  srl          s8, t3, t3
                  xor          ra, s1, a0
                  addi         sp, zero, -11 #init loop 0 limit
sub_4_5_0_t:      slt          s5, s10, s2
                  addi         a5, a5, -7 #update loop 0 counter
                  sub          s9, t5, a4
                  ori          s1, t2, -1558
                  xori         a4, s8, -1971
                  bge          a5, sp, sub_4_5_0_t #branch for loop 0
                  xori         a7, s8, -1710
                  slli         t0, t4, 14
                  sra          s9, gp, t0
                  lui          s4, 121388
                  lui          s0, 801529
                  srli         t5, s3, 28
                  blt          tp, s2, sub_4_5_1_t #branch for loop 1
                  sll          t1, s7, s7
                  slt          s7, t3, s2
                  xor          s0, s2, a7
840:              srli         a2, sp, 18
                  lui          t1, 551281
                  blt          s7, s3, 847f
                  bgeu         zero, s3, 852f
                  sltu         ra, a7, s10
                  bltu         s3, s4, 861f
                  sltu         a7, t5, t2
847:              slli         gp, s6, 27
                  addi         t1, s6, -462
                  andi         s6, a1, -849
                  add          s10, s10, s3
                  sltu         t4, s7, a1
852:              srai         zero, s4, 22
                  addi         s10, a0, -322
                  addi         s8, s1, 351
                  auipc        s8, 624717
                  srl          gp, a6, a2
                  slt          a4, s7, s2
                  sub          s9, s10, s3
                  srli         s3, s4, 15
                  sra          t4, t1, t4
861:              srli         s5, tp, 4
                  blt          tp, a2, 878f
                  auipc        zero, 304421
                  add          a5, a5, a1
                  slti         s4, s2, 354
                  xori         t0, s6, 1992
                  srl          a1, a3, t4
                  bgeu         t3, t2, 877f
                  lui          a2, 515843
                  sltu         a5, s10, a2
                  ori          s5, a5, 1625
                  slti         t5, a1, 1421
                  add          sp, s1, s3
                  sltu         s2, a3, s4
                  xori         t5, s11, 1179
                  bge          t2, t6, 883f
877:              blt          t5, t4, 886f
878:              beq          sp, a0, 888f
                  bltu         t3, a4, 894f
                  andi         a3, t6, 368
                  bne          s11, s4, 893f
                  addi         a2, a0, -1442
883:              xori         t0, zero, -113
                  sltu         s5, s4, t0
                  sub          a3, s3, s10
886:              slli         s1, t0, 4
                  or           s3, s7, s1
888:              bge          ra, a2, 889f
889:              andi         s8, t5, -1949
                  sll          s4, s9, s10
                  blt          s5, s8, 898f
                  and          gp, s0, s2
893:              lui          gp, 146516
894:              lui          ra, 581687
                  slti         s7, tp, -1358
                  bgeu         s5, s7, 904f
                  nop
898:              sltu         ra, a3, s10
                  srli         t0, a4, 6
                  sll          s3, a3, a0
                  andi         s1, zero, 899
                  sltiu        t2, a6, -731
                  auipc        s1, 604574
904:              bltu         a0, s6, 908f
                  sltiu        t5, t1, 454
                  srai         s7, s3, 9
                  blt          t4, ra, 912f
908:              slli         s11, t5, 4
                  sll          t3, t1, s4
                  ori          t0, s2, 1590
                  srl          s9, s7, tp
912:              xori         a2, t6, -1238
                  add          s8, a6, s5
                  sltu         s9, a1, a1
                  bne          a2, zero, 919f
                  srai         a2, s7, 3
                  srli         s7, zero, 26
                  addi         t3, s10, 444
919:              nop
                  lw           sp, 4(a0)
                  auipc        a5, 326896
                  or           a4, a1, s0
                  addi         a0, a0, 40
                  xor          s6, a0, s11
                  sra          t5, a7, tp
1316:             addi x1, x2, 0
1316:             jalr x1, x1, 0
sub_3:            sra          s9, a3, s1
                  or           t2, a3, a0
                  bltu         zero, a5, sub_3_stack_p
                  srli         s9, zero, 19
sub_3_stack_p:    addi         a0, a0, -44
                  srli         t3, a3, 17
                  lui          gp, 386901
                  sw           sp, 4(a0)
                  srli         s10, a3, 14
                  srli         a3, s0, 23
                  add          t1, a1, a6
                  addi         s8, zero, 1 #init loop 0 counter
                  or           a1, tp, t4
                  ori          s0, s3, -1842
                  add          s2, t4, sp
                  addi         t1, zero, -19 #init loop 0 limit
                  or           s2, gp, a1
sub_3_1_0_t:      ori          a4, t0, 1425
                  sltiu        t3, a2, -253
                  sll          a4, s2, gp
                  sltu         t0, t6, a6
                  addi         s8, s8, -4 #update loop 0 counter
                  slt          s10, t0, s0
                  sltiu        t4, a6, -1826
                  srai         zero, s7, 2
                  or           s7, a0, ra
                  sub          s9, s5, s8
                  sll          s1, s3, s8
                  srli         s4, a4, 8
                  sll          a3, a2, t0
                  slt          a1, s6, a3
                  lui          tp, 668750
                  slti         s7, a5, 803
                  bne          s8, t1, sub_3_1_0_t #branch for loop 0
                  srli         s1, t1, 3
                  addi         s1, zero, 9 #init loop 0 counter
                  auipc        t3, 732365
                  addi         s6, s2, -388
                  addi         a2, zero, 9 #init loop 0 limit
sub_3_2_0_t:      sltiu        s2, a0, -599
                  srai         t5, tp, 0
                  addi         s1, s1, -1 #update loop 0 counter
                  srli         gp, s11, 2
                  bgeu         s1, a2, sub_3_2_0_t #branch for loop 0
                  or           s7, a4, s9
                  addi         a5, zero, 1 #init loop 0 counter
                  or           s8, tp, s8
                  andi         s1, a6, 118
                  sub          s8, s5, s4
                  or           s5, s9, t5
                  or           tp, t4, sp
                  lui          tp, 201218
                  auipc        ra, 203859
                  addi         gp, zero, 11 #init loop 0 limit
sub_3_4_0_t:      lui          t5, 911978
                  auipc        t1, 686597
                  slt          s8, s1, s3
                  addi         a5, a5, 1 #update loop 0 counter
                  sub          t5, s2, a7
                  sub          t0, s11, s0
                  beq          a5, gp, sub_3_4_0_t #branch for loop 0
                  nop
                  addi         a4, zero, 2 #init loop 0 counter
                  addi         s3, zero, 14 #init loop 0 limit
                  sltiu        s6, s7, 1735
                  sltu         a2, zero, s10
sub_3_3_0_t:      xori         tp, t0, -395
                  addi         a4, a4, 10 #update loop 0 counter
                  or           tp, s0, s8
                  slti         t3, s5, -368
                  blt          a4, s3, sub_3_3_0_t #branch for loop 0
                  sltiu        s11, ra, -859
                  xor          a2, zero, gp
                  bge          s3, t5, 6f
                  andi         tp, t1, -1249
                  slli         gp, a3, 22
                  slli         s10, t1, 23
                  beq          s7, s9, 19f
6:                bgeu         s4, s8, 12f
                  sltiu        zero, gp, 16
                  xor          s0, s5, s6
                  sltu         ra, s9, tp
                  slt          sp, s7, a4
                  andi         s6, s1, 840
12:               srai         zero, s3, 4
                  beq          a1, a1, 33f
                  srai         ra, s8, 5
                  beq          s4, a2, 32f
                  sub          s8, a6, a6
                  lui          s11, 847137
                  beq          zero, a0, 27f
19:               addi         a2, t1, 1341
                  sll          sp, a0, a0
                  blt          t0, s1, 35f
                  xor          zero, s6, t0
                  bltu         s3, ra, 37f
                  sra          a3, t0, t5
                  blt          s8, t6, 29f
                  sltu         s10, s0, a5
27:               beq          s2, s7, 43f
                  sltiu        a4, s2, -2019
29:               add          a2, t2, t0
                  beq          a1, t2, 42f
                  bgeu         a5, s3, 32f
32:               srl          a1, s0, t4
33:               auipc        a7, 798181
                  andi         s3, a3, 696
35:               blt          t1, a0, 46f
                  slti         t4, a0, 1563
37:               sll          s6, a1, t0
                  slti         a5, ra, 681
                  srli         a5, s11, 18
                  ori          s2, t5, -479
                  addi         a2, s9, -613
42:               ori          a3, a2, -522
43:               add          gp, s10, t2
                  addi         t0, ra, 1657
                  andi         gp, t3, 195
46:               add          s2, s3, s2
                  addi         s11, s5, 2031
                  bltu         a3, s6, 51f
                  addi         a5, zero, 6 #init loop 1 counter
                  sra          s9, ra, a7
                  addi         s10, zero, 7 #init loop 1 limit
                  srai         s3, s1, 3
                  sltu         s0, zero, s8
sub_3_5_1_t:      auipc        t3, 273290
                  auipc        t5, 95152
                  addi         a5, a5, 7 #update loop 1 counter
                  addi         s4, zero, -10 #init loop 0 counter
                  addi         a7, zero, -20 #init loop 0 limit
                  sll          s1, a6, s3
                  xori         s8, a3, 731
sub_3_5_0_t:      auipc        sp, 1041180
                  lui          s5, 14674
                  addi         tp, s1, 1088
                  srai         a4, a3, 1
                  and          sp, a2, s2
                  addi         s4, s4, -10 #update loop 0 counter
                  xor          s7, s4, zero
                  bne          s4, a7, sub_3_5_0_t #branch for loop 0
                  sltu         s8, a4, a6
                  sra          t3, a7, gp
                  slti         s2, s7, -328
                  sltiu        s3, s9, -1508
                  slti         s5, sp, -1955
                  blt          a5, s10, sub_3_5_1_t #branch for loop 1
                  sltu         s1, s0, gp
                  addi         s2, s9, -187
                  slli         t4, s11, 9
51:               add          a5, s10, ra
                  nop
                  slli         s2, a0, 6
                  sltu         s10, gp, s6
                  andi         s6, tp, -437
                  sll          a4, t3, gp
                  bge          t1, t1, 72f
                  bgeu         a5, t0, 61f
                  sra          a4, a0, t5
                  bge          s3, s4, 75f
61:               bge          s6, t5, 71f
                  xori         s4, a7, 449
                  sltiu        ra, t1, -260
                  add          a1, t4, s10
                  or           s9, a7, t1
                  sltiu        s1, tp, -1383
                  sub          t5, ra, t2
                  add          s8, s9, s2
                  andi         a7, s2, 620
                  addi         ra, a3, 301
71:               addi         t4, ra, 710
72:               xori         s10, zero, -819
                  bge          t6, t0, 76f
                  srl          s3, a7, s9
75:               bge          s7, s6, 85f
76:               bltu         s9, t3, 96f
                  bge          gp, s6, 95f
                  blt          zero, zero, 83f
                  sltu         s6, a2, tp
                  andi         s3, zero, 412
                  auipc        s7, 421391
                  lui          a5, 417552
83:               bltu         a7, t2, 88f
                  add          a1, t2, t5
85:               beq          t0, t5, 102f
                  nop
                  beq          s6, a1, 100f
88:               or           s11, s5, t0
                  or           s1, a2, s1
                  blt          a6, s4, 108f
                  xor          s4, s0, gp
                  bge          tp, a6, 101f
                  srli         a5, a1, 14
                  auipc        tp, 581941
95:               nop
96:               or           t0, a2, zero
                  auipc        t1, 190579
                  auipc        sp, 984356
                  addi         s9, a5, 651
100:              addi         a2, s7, 751
101:              nop
102:              blt          a2, s3, 107f
                  ori          zero, ra, 1562
                  xor          t2, s3, s2
                  addi         s10, t4, -1859
                  slli         t5, s2, 16
                  sra          s11, a0, t2
                  auipc        t4, 318472
                  lui          a2, 311503
                  la           a1, sub_4
                  addi         a1, a1, -540
                  sll          tp, s9, a3
                  and          s4, s8, s3
                  bge          t4, a2, sub_3_j6 #branch to jump instr
                  sltiu        t5, s2, -820
sub_3_j6:         jalr         sp, a1, 540 #jump sub_3 -> sub_4
                  beq          a6, a7, 122f
                  and          s9, a4, a3
                  lui          gp, 90747
107:              blt          t1, s5, 122f
108:              and          t5, gp, t6
                  xor          s11, a2, zero
                  bltu         a5, t0, 120f
                  sltiu        t1, a4, 1363
                  beq          a0, a3, 125f
                  ori          s6, s11, 1772
                  slt          a7, a0, t6
                  blt          s3, s4, 124f
                  srl          s7, t3, s5
                  ori          s9, t1, 823
                  slli         t0, s10, 8
                  slti         ra, t5, -321
120:              slt          s9, s4, s7
                  auipc        t5, 201905
122:              slti         s10, t1, -1012
                  bne          tp, a4, 143f
124:              bgeu         a3, a4, 129f
125:              sub          s6, t0, s11
                  srl          a2, s4, t6
                  and          t4, a0, t3
                  beq          zero, a7, 137f
129:              or           t5, s2, s8
                  srai         t1, a7, 20
                  bgeu         t5, sp, 136f
                  sra          a2, gp, s4
                  sltu         s1, a0, a5
                  srli         s7, a1, 2
                  srli         t4, a5, 28
136:              sra          a7, sp, s11
137:              sra          s2, t0, t2
                  sra          s10, t2, zero
                  srl          s6, s2, tp
                  xori         s11, s0, -941
                  bge          s5, t4, 159f
                  sra          a3, s11, t0
143:              xor          a1, a2, a4
                  sltu         s3, tp, a7
                  bltu         s0, s5, 165f
                  auipc        gp, 778763
                  xor          s5, a2, a0
                  sltu         s3, t1, a1
                  andi         a4, s1, 81
                  sub          t0, a0, a3
                  sub          s5, s0, t4
                  auipc        a4, 634799
                  sltiu        s3, s10, 591
                  srai         a5, t1, 26
                  sub          a3, zero, sp
                  bne          t0, s5, 174f
                  nop
                  srai         s5, a4, 26
159:              sra          s0, sp, s7
                  beq          s7, t1, 172f
                  bne          sp, a1, 178f
                  addi         s3, zero, -1734
                  bltu         s4, s4, 167f
                  andi         s6, t4, -669
165:              sub          a3, s3, t3
                  add          s2, t4, s1
167:              srl          a7, s8, s8
                  or           s0, t3, a2
                  auipc        a5, 155799
                  sltiu        s10, s11, -216
                  andi         gp, ra, 1923
172:              auipc        ra, 1019689
                  slti         a4, s3, 762
174:              srai         s5, t2, 11
                  bltu         tp, t4, 178f
                  auipc        s11, 347919
                  xori         t4, a3, -1124
178:              addi         s10, t2, -1218
                  add          s0, s5, zero
                  srl          s9, s4, s3
                  slti         s6, t0, 826
                  sltiu        t0, s10, 498
                  xori         s3, s3, 1243
                  blt          s1, t2, 187f
                  slti         zero, tp, -1624
                  or           a3, t0, s1
187:              bne          a5, a3, 198f
                  slti         s3, a0, -1670
                  srai         s8, a3, 17
                  bne          s9, s5, 193f
                  ori          s2, s3, 963
                  slt          a2, tp, s0
193:              addi         a4, a1, -641
                  bge          t4, a2, 211f
                  srli         t3, s1, 9
                  xori         a7, a2, 1685
                  sll          s7, a2, s9
198:              bltu         s10, s8, 216f
                  sll          s9, ra, s2
                  bne          s3, s2, 214f
                  lui          tp, 773469
                  or           s2, s6, t3
                  bgeu         s11, s3, 209f
                  blt          s8, t5, 218f
                  xor          s10, sp, t5
                  blt          s7, s1, 222f
                  lui          s2, 282859
                  add          s7, a7, a6
209:              sltiu        t4, a7, 571
                  srl          zero, t1, a4
211:              ori          t4, t0, -1709
                  bltu         tp, zero, 227f
                  xor          s0, s1, s1
214:              srli         t1, sp, 1
                  addi         s3, s5, -1094
216:              auipc        t4, 844786
                  bgeu         a7, s3, 231f
218:              add          s9, s5, s9
                  andi         t3, s10, -1915
                  sltiu        s2, s4, 1270
                  andi         t2, a5, -1322
222:              beq          s7, s3, 232f
                  beq          a3, t1, 224f
224:              ori          a2, a3, 615
                  nop
                  add          s0, a6, a2
227:              sll          s10, t2, s2
                  sltu         s9, a7, s4
                  sub          zero, s11, s5
                  auipc        a7, 496179
231:              sltu         t3, t0, t1
232:              xor          zero, a4, a5
                  nop
                  srai         t1, s4, 17
                  sll          a7, s4, t0
                  blt          s8, s2, 241f
                  lui          t2, 825997
                  or           a7, t1, a1
                  auipc        s0, 814758
                  slli         t1, s11, 28
241:              bltu         s1, ra, 246f
                  bge          tp, t4, 252f
                  andi         t5, t1, -1549
                  slli         s4, sp, 14
                  lui          s4, 404154
246:              sltiu        s3, tp, 1691
                  sll          t3, a6, s7
                  and          t4, t3, s3
                  sltu         t5, s4, zero
                  sra          sp, s8, s5
                  or           t1, s7, a3
252:              lui          s1, 77124
                  auipc        s11, 963797
                  sll          t5, t1, s1
                  bgeu         s11, t6, 265f
                  srl          t0, a2, a0
                  xori         a5, a6, -905
                  addi         s9, s6, 1546
                  nop
                  srai         t4, sp, 25
                  bne          t5, t5, 264f
                  srl          gp, a2, t6
                  sltiu        s1, a5, 386
264:              slli         s1, t5, 24
265:              sra          t0, tp, s9
                  beq          t6, s4, 270f
                  slti         zero, s5, -331
                  andi         s7, s8, 2025
                  bltu         s5, gp, 287f
270:              sltiu        t1, s1, -193
                  xor          s3, t5, s6
                  ori          t2, tp, -1093
                  andi         s10, s11, -1834
                  xori         t0, a7, 1454
                  blt          s8, s6, 280f
                  andi         a1, s0, 164
                  srai         a5, s8, 16
                  or           s10, s11, s11
                  andi         s4, t2, -1362
280:              and          s6, a0, s4
                  and          s3, ra, ra
                  sltiu        sp, s5, -762
                  srli         t1, t5, 31
                  slli         a5, a1, 2
                  beq          s2, s11, 300f
                  addi         a2, zero, 2 #init loop 0 counter
                  slli         s9, t1, 17
                  addi         s6, zero, -14 #init loop 0 limit
                  srl          ra, t0, zero
                  srl          s8, a6, t6
                  srl          t0, s11, t1
                  sll          s9, ra, sp
                  srl          s2, s6, gp
                  and          s3, s6, t1
                  auipc        ra, 952862
                  auipc        t2, 879700
                  sub          t5, t6, s7
                  slli         s5, t1, 13
                  slli         a5, s1, 16
                  sltiu        s11, s7, 1030
sub_3_0_0_t:      xor          a7, a0, s1
                  addi         a2, a2, -8 #update loop 0 counter
                  sll          a3, gp, s10
                  sltu         t5, sp, zero
                  xor          s2, t5, a3
                  sltiu        gp, s5, 1580
                  slti         s8, a4, -517
                  add          s10, t5, t2
                  slti         s2, s8, -1587
                  andi         s11, s4, 1083
                  srai         t5, s0, 30
                  sra          s7, gp, gp
                  and          tp, t6, s0
                  beq          a2, s6, sub_3_0_0_t #branch for loop 0
                  auipc        a7, 1020303
                  bge          a5, s3, 302f
287:              and          t2, gp, s10
                  slti         a5, a2, -1575
                  bgeu         t4, s0, 303f
                  sra          s1, a0, s6
                  xori         zero, a0, -1732
                  slt          tp, a6, s9
                  xor          s9, t4, a7
                  srai         a2, a6, 6
                  srl          a5, ra, a1
                  sltu         a1, a7, s8
                  bne          a6, gp, 303f
                  sll          a4, s11, a7
                  xori         s4, s1, 69
300:              sra          a7, s5, sp
                  blt          s6, a0, 313f
302:              xori         ra, s5, 380
303:              sltiu        t5, s6, 1555
                  sub          s10, s8, a1
                  beq          t4, t6, 310f
                  bgeu         t3, s3, 307f
307:              srl          sp, t2, t1
                  srl          s5, gp, t5
                  ori          a2, s2, -1263
310:              bltu         s4, s7, 315f
                  bltu         s8, a4, 329f
                  lui          s4, 984918
313:              auipc        sp, 175657
                  srai         a7, s11, 23
315:              sub          s8, s0, s3
                  slli         t4, a1, 13
                  or           s5, sp, s1
                  sll          s7, a4, t2
                  sltiu        t1, ra, -974
                  nop
                  xor          s1, a2, s6
                  bgeu         a5, s10, 336f
                  slli         t2, s2, 7
                  or           a7, s11, t2
                  and          s3, s8, a6
                  slli         s9, s2, 5
                  bgeu         a2, s1, 336f
                  ori          ra, t5, 284
329:              and          t0, a0, s1
                  sra          t4, s8, s0
                  beq          tp, tp, 343f
                  slt          s5, t1, s8
                  bltu         t2, t4, 336f
                  srl          t2, s7, s1
                  sub          s1, s0, t3
336:              ori          s7, t4, 1586
                  slli         s7, zero, 17
                  xor          s10, a2, s2
                  nop
                  srli         s10, s11, 18
                  and          a3, a6, t0
                  ori          zero, s2, -813
343:              sltiu        s2, t2, 1193
                  srli         s0, sp, 17
                  lw           sp, 4(a0)
                  sra          s3, a4, s3
                  addi         a0, a0, 44
                  sltiu        s10, t3, 122
491:              addi x25, x2, 1
491:              jalr x25, x25, 0
sub_1:            or           s7, t2, a3
                  addi         a0, a0, -24
                  xor          tp, s3, s8
                  auipc        s0, 313038
                  sw           sp, 4(a0)
                  sltu         ra, a7, a6
                  ori          gp, a6, 1785
                  sub          ra, ra, s7
                  srai         a4, s5, 13
                  bne          s0, ra, sub_1_j4 #branch to jump instr
                  xori         s3, t0, -1885
                  sltu         gp, tp, s4
                  sra          t4, s6, gp
                  ori          s11, t3, -163
                  add          s0, s3, s2
                  xor          s9, a2, a7
sub_1_j4:         jal          sp, sub_3 #jump sub_1 -> sub_3
                  bgeu         a1, a2, 7f
                  nop
                  xori         s9, s5, 1550
                  sltu         t3, zero, s8
                  addi         tp, gp, -1461
                  sltiu        s1, s11, -52
                  addi         a2, s1, -928
7:                add          t0, a6, t5
                  lw           sp, 4(a0)
                  srli         s2, t6, 4
                  and          s0, s10, a4
                  xori         a3, s5, -717
                  slti         t2, s3, 65
                  addi         a0, a0, 24
                  sub          a2, a3, s8
                  add          s11, t4, s4
                  xori         a7, s4, -1705
                  andi         s9, s6, -846
                  and          s4, tp, t0
36:               addi x11, x2, 1
36:               jalr x11, x11, 0
sub_5:            slli         s7, t0, 1
                  srli         a1, gp, 29
                  sub          s7, t2, a4
                  bgeu         a1, s10, sub_5_stack_p
sub_5_stack_p:    addi         a0, a0, -44
                  sub          t1, t4, a1
                  sw           sp, 4(a0)
                  slt          s0, s4, a1
                  or           s3, a1, s7
                  srai         s10, s11, 29
                  addi         tp, zero, -4 #init loop 0 counter
                  sltu         gp, t5, t5
                  sltu         sp, s10, a2
                  addi         a4, zero, -12 #init loop 0 limit
sub_5_3_0_t:      andi         t3, sp, 450
                  andi         t1, t6, -1672
                  sra          a1, t5, s0
                  addi         tp, tp, -8 #update loop 0 counter
                  addi         a1, a2, -224
                  sltu         t0, s4, t3
                  sra          s3, t3, s11
                  slti         s11, s10, 1852
                  andi         a7, tp, 1610
                  bne          tp, a4, sub_5_3_0_t #branch for loop 0
                  and          s6, t2, ra
                  addi         s10, zero, -4 #init loop 1 counter
                  auipc        tp, 327359
                  addi         s0, zero, 20 #init loop 1 limit
                  andi         t5, tp, 775
sub_5_1_1_t:      sltiu        t2, t2, -1776
                  lui          a4, 669810
                  addi         s10, s10, 6 #update loop 1 counter
                  sra          t4, s7, a3
                  and          s11, t5, t1
                  addi         t3, zero, 7 #init loop 0 counter
                  and          t0, a1, s6
                  addi         s3, zero, 4 #init loop 0 limit
sub_5_1_0_t:      add          s9, tp, a1
                  sll          t4, gp, t2
                  sll          a5, a1, a3
                  addi         t3, t3, -1 #update loop 0 counter
                  sra          s8, t6, a6
                  slti         a3, s3, -516
                  auipc        t5, 292433
                  slli         t2, a6, 25
                  srai         s4, zero, 31
                  xori         a3, t3, -727
                  bgeu         t3, s3, sub_5_1_0_t #branch for loop 0
                  nop
                  bne          s10, s0, sub_5_1_1_t #branch for loop 1
                  ori          t4, ra, -322
                  addi         s6, zero, 6 #init loop 0 counter
                  sltu         a3, a7, a0
                  addi         a5, zero, -15 #init loop 0 limit
                  lui          sp, 759473
                  sll          t1, t6, s1
                  sra          gp, s1, s11
                  slti         t1, s8, 1150
                  sltiu        s4, s2, 1551
                  add          sp, s7, s3
                  sll          gp, t3, a4
                  xori         a7, a5, 1873
                  auipc        a1, 234047
                  or           a1, a5, tp
                  sub          zero, a5, t1
sub_5_0_0_t:      slt          a3, s1, t2
                  andi         zero, s7, -667
                  addi         s6, s6, -2 #update loop 0 counter
                  or           t1, s10, s5
                  andi         gp, s9, 361
                  xor          tp, t2, t3
                  andi         s5, a4, -54
                  add          t3, s11, tp
                  bge          s6, a5, sub_5_0_0_t #branch for loop 0
                  sub          ra, a1, s0
                  addi         a1, zero, 10 #init loop 1 counter
                  addi         sp, zero, 14 #init loop 1 limit
sub_5_2_1_t:      sltiu        s0, zero, -1356
                  slti         s1, t6, 533
                  addi         a1, a1, 1 #update loop 1 counter
                  auipc        s0, 544164
                  addi         t2, zero, 1 #init loop 0 counter
                  addi         s5, zero, -1 #init loop 0 limit
                  auipc        t0, 149227
sub_5_2_0_t:      add          t1, t4, a5
                  srai         s8, s0, 29
                  addi         t2, t2, -2 #update loop 0 counter
                  srl          t3, a2, s7
                  beq          t2, s5, sub_5_2_0_t #branch for loop 0
                  bltu         a1, sp, sub_5_2_1_t #branch for loop 1
                  xor          a3, s2, s11
                  addi         s3, zero, -8 #init loop 1 counter
                  addi         t5, zero, -16 #init loop 1 limit
sub_5_4_1_t:      addi         gp, s7, -709
                  auipc        gp, 862733
                  addi         s3, s3, -8 #update loop 1 counter
                  addi         a1, zero, -5 #init loop 0 counter
                  addi         t1, zero, -19 #init loop 0 limit
sub_5_4_0_t:      addi         s9, a7, -635
                  addi         a1, a1, -7 #update loop 0 counter
                  nop
                  bne          a1, t1, sub_5_4_0_t #branch for loop 0
                  beq          s3, t5, sub_5_4_1_t #branch for loop 1
                  addi         t3, a5, -1660
                  slt          ra, s0, s5
                  slt          t2, a7, t3
                  xor          s11, t5, s6
                  bgeu         t0, s5, 19f
                  bltu         tp, zero, 5f
5:                xori         s11, t6, 525
                  sub          sp, a4, t6
                  sltu         a1, t3, s11
                  nop
                  xori         s1, t6, -256
                  bne          t1, s2, 24f
                  add          a7, s9, t2
                  lui          s9, 279463
                  xori         t4, gp, 1425
                  sltu         a4, s9, a0
                  beq          a2, t4, 28f
                  bge          t3, s1, 29f
                  sra          s7, a5, a6
                  sltiu        a5, s0, 1088
19:               slli         s3, s1, 23
                  xor          s1, zero, s4
                  blt          a3, s7, 33f
                  srai         zero, t2, 7
                  and          t1, gp, t4
24:               addi         s3, t5, 1964
                  sra          sp, t1, a3
                  and          zero, gp, a6
                  xor          s3, s11, s9
28:               slli         s6, sp, 10
29:               lui          zero, 810495
                  slli         s8, a6, 11
                  srli         t1, s8, 5
                  sltiu        a1, t0, 522
33:               addi         a3, t2, 856
                  blt          a3, s3, 50f
                  srl          a1, t2, a5
                  sub          a4, s5, tp
                  bltu         t4, ra, 50f
                  blt          s4, s8, 52f
                  srl          s1, t4, s7
                  sra          sp, zero, sp
                  lui          t1, 549136
                  or           s8, s8, t0
                  lui          s10, 865341
                  sra          ra, t5, a2
                  slt          s8, a4, t6
                  slt          s2, s8, s5
                  auipc        s0, 599616
                  sltu         s7, a2, sp
                  sra          s6, a0, a3
50:               xori         a1, s7, 1920
                  xor          zero, s9, t6
52:               srli         sp, s4, 19
                  srl          sp, t2, t4
                  blt          t2, ra, 56f
                  slt          a5, s4, zero
56:               or           s1, zero, a0
                  nop
                  bltu         gp, s3, 78f
                  xor          s11, t1, s11
                  sra          tp, t1, s9
                  xor          t3, s5, a0
                  bne          s0, s11, 81f
                  slt          sp, a4, t0
                  auipc        t5, 519564
                  slt          t0, t0, s4
                  bge          t0, s3, 85f
                  slt          t3, a4, sp
                  and          s4, gp, s5
                  slt          gp, t1, t1
                  add          s5, ra, t1
                  nop
                  sll          a5, a5, t3
                  xor          a3, a4, s8
                  and          sp, t2, a4
                  sltu         a5, t0, t4
                  blt          t6, a3, 94f
                  sra          t4, zero, a7
78:               andi         s0, sp, 396
                  sll          a4, t0, t3
                  bge          s7, s4, 99f
81:               bgeu         a7, s9, 86f
                  slti         a7, t1, -884
                  slti         a5, t5, -916
                  auipc        s10, 783934
85:               sra          t5, a3, t1
86:               slli         t0, s1, 1
                  lui          t0, 198527
                  srai         s2, s8, 16
                  bne          s6, zero, 108f
                  slli         t3, a6, 19
                  bge          a1, s1, 100f
                  bge          t4, s2, 109f
                  bgeu         a4, s2, 109f
94:               srl          a1, s1, s8
                  sltu         s0, s0, s0
                  bne          s1, s9, 101f
                  blt          s11, a1, 112f
                  bgeu         a5, a0, 113f
99:               bltu         gp, ra, 106f
100:              andi         t0, tp, 861
101:              srai         zero, t5, 24
                  ori          t0, a0, -1550
                  sltiu        tp, s1, 248
                  or           s11, s4, s10
                  slti         a5, t5, -1996
106:              ori          s6, a3, 1302
                  slli         tp, a2, 15
108:              slt          a5, ra, s7
109:              sub          a1, s0, s5
                  slt          s10, s6, s3
                  srai         s3, a0, 18
112:              sltiu        s3, t0, -332
113:              slt          a2, a7, s2
                  addi         a5, t4, 513
                  nop
                  bne          sp, s6, 117f
117:              sltiu        t4, a2, 317
                  addi         ra, t5, -39
                  sub          s0, t4, s11
                  bge          s2, s7, 131f
                  sub          s10, t6, tp
                  slt          s7, s10, s1
                  sltiu        sp, sp, -540
                  bne          s9, a0, 130f
                  blt          a0, s7, 129f
                  bltu         a2, s5, 143f
                  sra          a5, s8, s10
                  andi         s7, sp, 1146
129:              add          sp, s0, ra
130:              addi         t0, tp, -82
131:              srai         ra, t1, 31
                  bne          a0, t4, 135f
                  andi         s9, gp, -1186
                  sra          s2, s3, s7
135:              bge          s0, s5, 154f
                  sra          a1, a1, zero
                  ori          s1, t1, -1545
                  sltu         ra, s2, a5
                  beq          t5, s0, 158f
                  nop
                  sltiu        t1, s6, 1253
                  srl          t4, s3, a0
143:              beq          s7, s6, 159f
                  andi         a1, sp, -1120
                  nop
                  slli         t1, a1, 25
                  xor          s2, s1, a5
                  sra          a7, s10, s10
                  slt          tp, a6, s10
                  xor          t4, a4, a4
                  sra          t2, a7, t3
                  bgeu         t3, s6, 166f
                  bltu         a3, t6, 173f
154:              nop
                  xori         a7, t1, -1743
                  andi         t0, zero, -1194
                  nop
158:              or           t5, a5, t3
159:              xori         s3, tp, -2031
                  slti         t2, s11, 1073
                  sltiu        a5, t1, -1079
                  slli         zero, zero, 14
                  slti         t3, s1, -1327
                  andi         s9, ra, -1643
                  slli         s3, s0, 1
166:              srl          tp, t5, ra
                  srli         s11, t6, 7
                  andi         t3, s2, -1314
                  blt          t0, s8, 188f
                  sra          s0, s10, s11
                  nop
                  bltu         t3, s10, 178f
173:              slt          s2, sp, t1
                  sltiu        s10, t0, -462
                  bne          a7, a2, 186f
                  lui          t1, 711552
                  add          a4, a3, s4
178:              sltiu        t1, t6, -337
                  nop
                  bne          s5, s9, 181f
181:              slli         s2, sp, 4
                  andi         s5, t5, 1727
                  srl          tp, s1, a2
                  and          a2, t2, sp
                  bne          s1, a4, 186f
186:              and          s10, tp, a2
                  xor          a4, s5, tp
188:              slti         a5, a5, 1858
                  bltu         s11, a1, 205f
                  nop
                  add          gp, a4, t5
                  bgeu         s10, s4, 205f
                  srai         t4, ra, 12
                  addi         sp, s11, 1958
                  srai         t2, t6, 30
                  srl          s6, a3, t0
                  xori         s9, s11, 1950
                  sra          s3, t0, s5
                  bltu         a0, t4, 218f
                  blt          s1, t2, 205f
                  slt          a1, t4, s0
                  bgeu         a2, sp, 217f
                  bge          s0, t0, 205f
                  bgeu         s7, a2, 221f
205:              beq          a6, a6, 219f
                  sltu         t1, a4, s6
                  srli         zero, s0, 30
                  and          a2, s3, a4
                  addi         gp, t3, 1244
                  slli         a1, t1, 31
                  sll          s11, a5, s11
                  ori          t5, a1, -1355
                  bge          s2, s3, 226f
                  sltu         s5, s0, a1
                  bltu         t6, a6, 220f
                  bgeu         a0, s7, 232f
217:              slli         t4, a4, 7
218:              andi         a4, t2, -311
219:              lui          a7, 505817
220:              or           t1, s10, a4
221:              sltiu        gp, a4, -400
                  sltiu        ra, gp, -573
                  sltu         s10, s2, zero
                  or           a5, tp, t6
                  xor          a4, a2, s1
226:              sltu         a5, s2, t1
                  and          a3, a4, sp
                  xor          t5, t2, t5
                  or           a4, t5, s10
                  sll          sp, a6, s8
                  and          s4, a7, a7
232:              lui          s11, 218312
                  sub          gp, s5, s8
                  beq          a7, sp, 241f
                  sll          s3, s4, s7
                  sltu         s1, zero, s1
                  slli         a3, s4, 11
                  ori          zero, a0, -1760
                  srai         zero, s10, 0
                  bgeu         s10, s3, 258f
241:              sra          a3, tp, t2
                  addi         s10, s10, -743
                  bge          a6, s3, 255f
                  addi         s0, ra, -1036
                  ori          s2, s5, 757
                  or           s6, s6, a0
                  xor          s3, a1, s4
                  lui          a4, 716796
                  srai         a2, s10, 5
                  and          sp, a6, a0
                  ori          a7, s9, 597
                  srli         s10, t2, 5
                  bne          sp, sp, 257f
                  slli         a4, zero, 20
255:              add          a7, s3, t2
                  bltu         t4, tp, 271f
257:              nop
258:              add          t5, t5, gp
                  nop
                  ori          s3, s5, 393
                  sltu         t5, s5, s8
                  and          t1, s2, s11
                  sll          t1, zero, s1
                  or           s1, zero, t4
                  addi         s3, s1, -647
                  beq          s7, gp, 269f
                  bgeu         a4, a3, 273f
                  bge          tp, s0, 273f
269:              srli         a5, s6, 23
                  sltu         s7, a0, a0
271:              bgeu         a3, s4, 273f
                  beq          s0, a6, 273f
273:              sra          t2, t4, a3
                  srai         a4, a7, 16
                  sll          s7, s10, a6
                  sltu         t3, t0, a4
                  xori         zero, t6, -1870
                  lw           sp, 4(a0)
                  sltiu        s1, s5, -1594
                  auipc        s7, 713034
                  addi         a0, a0, 44
                  nop
387:              addi x26, x2, 1
387:              jalr x26, x26, 0
sub_2:            slli         s7, a6, 13
                  sra          ra, t1, s0
                  nop
                  lui          s0, 120394
                  addi         a0, a0, -60
                  sltu         a7, s9, a4
                  add          t4, a0, s3
                  sw           sp, 4(a0)
                  slti         a5, t4, 645
                  slt          t4, s5, s4
                  addi         t1, zero, -4 #init loop 1 counter
                  lui          tp, 295652
                  addi         t2, zero, 13 #init loop 1 limit
sub_2_3_1_t:      slt          gp, a7, a2
                  auipc        s8, 326208
                  srai         zero, s2, 31
                  addi         t1, t1, 9 #update loop 1 counter
                  sll          s11, t6, sp
                  or           s3, s11, a1
                  addi         a5, zero, 9 #init loop 0 counter
                  sltu         a3, a2, t6
                  addi         ra, zero, 13 #init loop 0 limit
                  slti         s3, t3, -83
sub_2_3_0_t:      lui          gp, 829582
                  addi         a5, a5, 8 #update loop 0 counter
                  sltu         s11, t0, s0
                  bltu         a5, ra, sub_2_3_0_t #branch for loop 0
                  slli         gp, a6, 3
                  slti         s8, s1, -1226
                  bltu         t1, t2, sub_2_3_1_t #branch for loop 1
                  sltiu        a7, a2, -1715
                  addi         t0, zero, 9 #init loop 0 counter
                  srai         s2, s9, 0
                  srai         s1, a6, 15
                  addi         s11, zero, -16 #init loop 0 limit
                  auipc        s9, 992857
sub_2_4_0_t:      nop
                  andi         t1, a6, 2047
                  addi         t0, t0, -5 #update loop 0 counter
                  or           tp, s10, t5
                  add          gp, s9, s2
                  bne          t0, s11, sub_2_4_0_t #branch for loop 0
                  slt          t5, a5, s1
                  addi         t3, zero, -3 #init loop 0 counter
                  srl          s9, t4, s8
                  xor          s2, t0, t3
                  addi         ra, zero, 6 #init loop 0 limit
sub_2_2_0_t:      nop
                  sll          t5, t6, sp
                  addi         t3, t3, 1 #update loop 0 counter
                  slti         s10, s6, 1341
                  sra          s7, a5, t6
                  blt          t3, ra, sub_2_2_0_t #branch for loop 0
                  andi         s2, a6, 1782
                  addi         s3, zero, -5 #init loop 0 counter
                  sra          t0, t3, ra
                  slti         s6, t1, 2015
                  addi         t2, zero, -9 #init loop 0 limit
                  andi         a4, a2, -1632
sub_2_0_0_t:      ori          a2, s10, -1695
                  xori         t0, t1, -1642
                  addi         s3, s3, -2 #update loop 0 counter
                  or           tp, a1, a0
                  sltiu        s8, a0, 1612
                  sub          s2, t3, a3
                  slti         s2, t2, -1790
                  xori         s10, a1, 1679
                  xor          s9, s1, s7
                  and          s5, s3, a1
                  lui          s5, 186864
                  srl          a5, a4, a1
                  bge          s3, t2, sub_2_0_0_t #branch for loop 0
                  andi         a4, s3, -242
                  addi         gp, zero, -1 #init loop 1 counter
                  addi         sp, zero, -2 #init loop 1 limit
sub_2_1_1_t:      sub          tp, t0, zero
                  srl          a5, s10, tp
                  addi         gp, gp, -10 #update loop 1 counter
                  addi         t2, zero, 9 #init loop 0 counter
                  addi         t5, zero, 9 #init loop 0 limit
                  sll          a2, gp, sp
                  sub          a3, a1, t2
sub_2_1_0_t:      and          s6, s11, a1
                  ori          s5, s7, 1469
                  addi         t2, t2, -8 #update loop 0 counter
                  slt          a4, gp, s9
                  andi         t0, a0, 1231
                  sll          s7, gp, s9
                  bgeu         t2, t5, sub_2_1_0_t #branch for loop 0
                  andi         s11, gp, -207
                  slli         t0, a6, 18
                  bge          gp, sp, sub_2_1_1_t #branch for loop 1
                  sltu         s4, s8, s2
                  xor          s2, gp, a2
                  ori          a5, t3, 294
                  srli         t1, s0, 11
                  srl          zero, sp, s2
                  andi         s6, a7, -716
                  sll          t1, t5, sp
                  auipc        s3, 923569
                  and          s1, zero, zero
                  bgeu         a1, t4, 9f
9:                sltiu        s3, s0, -566
                  addi         ra, s9, -1464
                  blt          sp, s3, 29f
                  sub          s11, t3, s4
                  sltiu        a1, s2, 74
                  sll          a2, s10, s9
                  srai         gp, a1, 18
                  srai         a2, s11, 10
                  lui          s3, 667858
                  bne          s11, s1, 34f
                  srl          t5, s1, t5
                  bge          t6, sp, 28f
                  xor          tp, t2, s6
                  and          gp, ra, s5
                  andi         tp, s2, 585
                  or           s1, t2, s3
                  sub          s3, s0, t6
                  lui          s0, 1041621
                  andi         t1, s7, -1982
28:               bgeu         a3, t3, 36f
29:               nop
                  slli         zero, s8, 12
                  and          s6, t5, a3
                  sra          s10, s5, gp
                  auipc        s6, 646028
34:               srai         t2, a4, 5
                  blt          t1, a2, 55f
36:               xori         sp, s9, -1629
                  bge          a6, s6, 38f
38:               bltu         a3, s11, 40f
                  srl          t2, t3, ra
40:               andi         t3, t3, -672
                  nop
                  xori         a2, sp, -1528
                  bltu         a2, ra, 48f
                  add          t5, t5, a4
                  blt          zero, s4, 46f
46:               xori         a1, a7, 1119
                  beq          s2, a4, 64f
48:               nop
                  sll          t2, a4, a2
                  slti         s1, tp, 448
                  blt          t3, s8, 60f
                  and          tp, s5, s1
                  srai         s7, t5, 11
                  auipc        s3, 216693
55:               andi         sp, t2, -1435
                  andi         t3, s10, 618
                  lui          t3, 680981
                  add          t0, s7, t1
                  beq          s10, sp, 67f
                  sltiu        sp, s9, -1271
                  slt          tp, s6, s8
                  bge          s3, t2, sub_2_j5 #branch to jump instr
                  srai         gp, s8, 8
                  or           a7, s9, t0
                  sra          sp, s7, a0
sub_2_j5:         jal          sp, sub_3 #jump sub_2 -> sub_3
60:               auipc        s3, 781705
                  and          t4, ra, s7
                  and          s11, t0, s10
                  bltu         s4, s6, 83f
64:               addi         s2, s1, -1765
                  sll          s5, t0, a6
                  bltu         a4, s3, 83f
67:               sltiu        t2, s4, -219
                  or           sp, tp, t2
                  bge          s1, s6, 75f
                  nop
                  xor          t5, a4, s8
                  bgeu         gp, s11, 91f
                  ori          s8, s7, 859
                  slli         s0, s11, 18
75:               or           zero, s6, s1
                  sra          a2, s7, s10
                  blt          a4, s4, 92f
                  slti         t5, t0, 838
                  bltu         s1, s7, 81f
                  addi         a4, t4, 859
81:               slt          a2, s0, zero
                  sll          t3, s6, t4
83:               slt          s4, t6, a1
                  xor          a2, s0, s2
                  slli         s9, a4, 29
                  add          s11, s6, t2
                  add          t1, s10, t5
                  beq          s5, t5, 96f
                  addi         a3, s3, 345
                  slt          a1, s8, s1
91:               sub          s8, s9, s6
92:               blt          a1, s5, 101f
                  lui          s6, 852668
                  or           s11, a6, s6
                  sltiu        a4, t5, -117
96:               slli         t0, a0, 0
                  srl          s0, s9, s6
                  sltu         t1, s8, a1
                  bltu         s8, t5, 109f
                  srl          s6, s10, a6
101:              sltiu        s9, t4, -876
                  ori          zero, s10, -396
                  sub          t3, t2, s5
                  beq          a5, t1, 124f
                  nop
                  sltu         a2, t1, s0
                  slti         a5, t5, 1505
                  sub          s2, a0, t0
109:              sll          s2, gp, a5
                  slt          s4, a4, s1
                  bgeu         t0, a1, 129f
                  or           s1, t3, s1
                  sltu         t0, s10, s5
                  xor          a2, s7, s10
                  sra          s1, t2, t6
                  or           a3, sp, t0
                  auipc        ra, 300213
                  bltu         a5, sp, 128f
                  bne          t5, a4, 134f
                  sub          s10, t3, s1
                  bge          tp, a3, 128f
                  lui          t4, 255028
                  slti         t1, t2, 1910
124:              srl          s11, a4, a6
                  blt          s0, a3, 139f
                  lui          s3, 359878
                  and          s2, s0, ra
128:              add          a4, s2, a6
129:              srli         a4, a4, 18
                  beq          zero, s1, 136f
                  bge          s1, sp, 139f
                  bgeu         sp, t1, 140f
                  bgeu         t2, a1, 140f
134:              lui          s7, 902902
                  addi         t5, s1, -1180
136:              sltu         t3, gp, t3
                  bne          t1, s0, 139f
                  bge          t5, t1, 139f
139:              slti         t4, tp, -1923
140:              sltiu        a7, s10, -1778
                  addi         t4, tp, -86
                  sll          t4, s0, t2
                  auipc        s5, 16796
                  slt          s7, s2, a1
                  slli         s0, a3, 4
                  and          s8, t3, zero
                  bge          s6, sp, 156f
                  sltiu        s1, s7, 145
                  srli         s5, s1, 17
                  auipc        s5, 308813
                  ori          sp, s10, 1531
                  sltiu        t1, s11, -1691
                  sra          a5, s2, tp
                  sub          s3, s9, a4
                  beq          s9, t4, 163f
156:              sll          a5, s2, s10
                  andi         s1, t6, 128
                  xor          s7, s10, ra
                  xor          tp, a2, a5
                  auipc        s9, 82687
                  sltiu        gp, a6, -956
                  sltu         t0, t0, s10
163:              srai         a2, s10, 2
                  sltu         s8, a6, a3
                  slli         s7, t3, 25
                  addi         t4, t0, 502
                  sra          a7, sp, a3
                  sltu         t1, s4, t0
                  bltu         s4, t1, 185f
                  slti         a1, a6, 656
                  lui          s5, 396117
                  blt          t3, t5, 178f
                  nop
                  auipc        s9, 108178
                  xori         s0, s2, 1573
                  and          s7, s9, s11
                  srl          s2, a5, t4
178:              ori          t2, zero, -1732
                  nop
                  nop
                  ori          a4, s2, -1987
                  sll          s6, s5, a3
                  srli         gp, a6, 24
                  bltu         gp, gp, 203f
185:              lui          zero, 990062
                  slti         s5, a7, -1963
                  bgeu         s5, t3, 204f
                  slt          a7, t1, a6
                  bltu         s7, tp, 209f
                  bltu         s7, s3, 200f
                  sra          a5, a4, t6
                  or           tp, a0, a6
                  andi         ra, s4, 436
                  bge          t4, t2, 214f
                  bge          ra, s9, 197f
                  bltu         t0, t3, 211f
197:              or           a7, s8, s2
                  xor          gp, s2, t3
                  bltu         s4, s6, 213f
200:              srli         s1, s3, 4
                  ori          t5, t2, 1119
                  add          t1, s3, s0
203:              sltiu        a7, a4, 1013
204:              bge          a5, s4, 205f
205:              auipc        gp, 490631
                  sltu         s8, s11, a2
                  sub          t2, t1, s9
                  blt          t1, s3, 218f
209:              auipc        a1, 325579
                  slti         t2, a7, -514
211:              slli         t3, a6, 9
                  xori         ra, a6, 1595
213:              add          s9, a6, a3
214:              addi         t0, s5, -1816
                  slti         s4, t5, 240
                  srai         s0, s0, 24
                  andi         a5, gp, 408
218:              lui          t0, 864311
                  or           s4, s2, t5
                  bgeu         s2, s9, 240f
                  addi         s5, s8, -552
                  slti         t3, t6, -664
                  sll          s6, s2, s11
                  nop
                  srl          t4, s10, s4
                  xori         s0, s11, -1075
                  slt          s5, a4, s0
                  sra          a2, ra, a7
                  slt          t5, a2, a6
                  beq          a0, s5, 235f
                  bge          s11, s9, 246f
                  sltiu        tp, t0, -1931
                  addi         sp, s2, -486
                  srli         s2, s10, 10
235:              sltu         t0, a1, t0
                  addi         s4, a3, -1907
                  sll          t1, sp, a7
                  slt          s5, t1, a5
                  bgeu         a1, a2, 256f
240:              srl          s7, s11, sp
                  sltu         t4, s2, zero
                  ori          s6, a4, -201
                  addi         t3, t5, -15
                  srai         s0, t2, 8
                  or           s7, a6, a7
246:              lui          a5, 1034952
                  srl          s4, t5, s7
                  xor          s1, t1, t4
                  bgeu         a3, t0, 250f
250:              sltu         s4, a2, a4
                  bgeu         s1, t4, 256f
                  addi         ra, sp, -454
                  sub          sp, s8, s7
                  slt          t5, s9, a0
                  bgeu         a7, t5, 256f
256:              slti         sp, s6, 1917
                  slti         ra, a2, -1734
                  andi         s1, s2, -992
                  and          t3, gp, a7
                  srl          a2, s10, t1
                  sltu         ra, t0, s5
                  lw           sp, 4(a0)
                  auipc        s1, 362554
                  srai         s11, t4, 18
                  lui          a4, 915614
                  sltiu        tp, tp, -1267
                  addi         a0, a0, 60
                  slt          t0, a6, t3
369:              addi x25, x2, 0
369:              jalr x25, x25, 0
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
.word 0xaa0a42bd, 0x2744b5bc, 0x40f89aab, 0x37a54ddf, 0x30d21e41, 0x04179fb8, 0x92fd1ac9, 0x13d36114
.word 0x1ec3948e, 0xdcc269f9, 0xc8bb8ff5, 0xa30f6848, 0x30d74487, 0xfc9c16c2, 0xc655d8a1, 0xf3297ee4
.word 0x3beafd40, 0x879be303, 0x984863ae, 0xa616fd5a, 0xb95cc6b4, 0xd652ec62, 0xf2ded035, 0xb884d29c
.word 0x45deaf01, 0x3869b5dd, 0x4ab2150b, 0xd5290c89, 0x93dc4852, 0x19ba1b64, 0xb71d0f34, 0x1b349f87
.word 0x357fc06d, 0x0ecba097, 0x6ee2cf31, 0x470acd02, 0x64facdfc, 0xc77e66f3, 0x7b33e3fe, 0xb9d178d2
.word 0x4074cdda, 0x13f0f2f5, 0x5afc22c5, 0x1361be41, 0x465417b4, 0x60c92ab0, 0x65041600, 0xba5352d1
.word 0x1d5a03cf, 0x03c5fd4a, 0xb24b2ccc, 0x7eee362f, 0x27b73276, 0x24a345cd, 0xc7ece653, 0x6357959d
.word 0x2b6fb1d5, 0x6b1d6478, 0xc68fca75, 0x6f211d74, 0x44c5e578, 0xc7cc474c, 0x9d556a0a, 0x86a8d3c8
.word 0x20d99f82, 0x9c16094e, 0xf715ac96, 0x69cd031a, 0x4df8886c, 0xc383e398, 0x504c1906, 0x29812950
.word 0x282e2703, 0xd7e964a7, 0x8cc88cf9, 0x8dbf3760, 0x0d3f218d, 0x5657850d, 0x757ab23a, 0x4c87c667
.word 0x90e2b5b0, 0xfcb58bab, 0xc162f4c0, 0x487425ef, 0xa31ac301, 0x91276a3d, 0x93621d0b, 0x85ba63f0
.word 0x21f94d13, 0xe610e653, 0x55a6dda5, 0x776bbc43, 0x4c458a10, 0x6bf53796, 0xbbba7655, 0x8eedf400
.word 0x026f946c, 0x169f69c2, 0x648558a5, 0xd7b4cd0f, 0x87d1f676, 0x066d850f, 0xddba63c2, 0x228c5341
.word 0xc7f9922a, 0x4d0789ac, 0x4f411951, 0x0a5b59d2, 0x16c50baa, 0x645c3752, 0x43293e67, 0xccbe2d92
.word 0x866fda02, 0x6fa1c6e2, 0x8d2e8176, 0xacd75347, 0x5c27fc24, 0x3a33d680, 0x3b9e0258, 0x62ce6024
.word 0xc508c460, 0xe5ad496f, 0x106dde26, 0x2a199506, 0x389f1240, 0xee12e285, 0x9fbf65b8, 0xc1a7bf8e
.word 0x6d340594, 0xaba103eb, 0xf882c492, 0xdf68f1b2, 0x26f8dcc0, 0xe4ac0421, 0xc4e3d13c, 0x8498368c
.word 0x98d9e210, 0x6989d935, 0xd85434c0, 0xe553d245, 0x061805b7, 0x076e791f, 0xcf34506f, 0x685e0759
.word 0x92e9378f, 0x17dca7c4, 0x81ad660b, 0x3508b6d6, 0x58e89374, 0xcabf6fff, 0xf0e2514d, 0x2777dc58
.word 0xc99fda6d, 0xcf1ac58e, 0x58be9aee, 0xd9c6d6fe, 0xafb0d46c, 0xe082cd65, 0x299a628a, 0x08f60aad
.word 0xbf5ecf43, 0x67e19eb7, 0xe8cf3f08, 0x7d1058b0, 0xe6829875, 0x88e18d3e, 0xc75ee888, 0x4a79525d
.word 0x60d0c198, 0x40bab955, 0x1f5068c9, 0x4b0ed890, 0xabd1f143, 0xb6a3d834, 0x66aad899, 0xa16414e8
.word 0xc0469ac4, 0x41d32978, 0x7e05637b, 0x5f6fd75b, 0xa1d62e2e, 0xd2f93aa9, 0x45b7071d, 0x8346096e
.word 0x791d480d, 0xc6363afb, 0x01f1c10b, 0x5f42f65f, 0xc5735061, 0xb99cd49f, 0xffb6b0b7, 0x591767b2
.word 0x4e6a44aa, 0x53acddd0, 0xbb99cd20, 0x46884f39, 0x157b4c9d, 0x409c99ba, 0x71bde23d, 0xac7eb714
.word 0xae5a16fa, 0x8cd213d9, 0xe15c345c, 0x2f72ce3e, 0x75d0697f, 0xaa257607, 0xe74bd26e, 0xdd804f27
.word 0x8f64ae5c, 0x9719d977, 0x980c6abc, 0x8bed544d, 0xae90685f, 0xf96589ad, 0xc4901c82, 0xe1407756
.word 0x50a128b5, 0xfbebe6dc, 0x92fd3af7, 0x84de96c5, 0xaae5099b, 0xa5be9dd4, 0x3e2e3737, 0xaeeb00d2
.word 0x91d32146, 0x1339b4d9, 0x10c0d56d, 0x6cf14b88, 0xbe6b858f, 0xd50cd5f0, 0xeafce15f, 0xcc7843f0
.word 0x1b8112ce, 0x24d4a547, 0x4396d591, 0x1b99c659, 0xb7bd979c, 0x8d75994e, 0xe534a918, 0xc59d6e2c
.word 0x1a7e1909, 0x6971295c, 0x96971189, 0x9cd71b90, 0xd7914cde, 0xfc4681a4, 0x51041673, 0x8ac29a73
.word 0x787ae0db, 0xd3cc718e, 0x0aa6bf02, 0x50c75ee9, 0xcdf66cfa, 0x09a547cd, 0xa96f7c1f, 0x7ecdfee7
.word 0x838aaef2, 0x9fdfcf3c, 0x4cae8547, 0x7d7b6837, 0xb83e28b3, 0xc0916b07, 0x5f160976, 0x572c1aa3
.word 0x4579fe89, 0x93e12968, 0xec2e93b9, 0x71bce734, 0x28f389fc, 0x4b50d1b3, 0x63cc43e9, 0x06ccc98c
.word 0xff94ed4f, 0x3b0d1c42, 0xbfadc86a, 0x14d9b0bb, 0x3f48fad6, 0x1cdd6c9f, 0x7f8b6da2, 0xa01c25ee
.word 0xb3eff2f2, 0x826c590b, 0x8bb277db, 0x755f1ef0, 0x97c3f24d, 0x9c419c03, 0xa1c406fb, 0x9ae28ec0
.word 0xd2f96d2b, 0x3d9c9ee8, 0x52e7be06, 0x66563d4f, 0x54678927, 0xb02c0d9e, 0x8d609ba1, 0x768c05c2
.word 0x3f494cef, 0x05bb1bcc, 0x77862e69, 0x03ab3e01, 0x277ee591, 0x38b81a8f, 0xa8a9dd90, 0x545c7d1c
.word 0x80815697, 0xcde87222, 0x7cbf2360, 0xcbb84c8a, 0xcec0b09f, 0x8ea8fc06, 0xe950aff8, 0x67527e5c
.word 0x3ad839f6, 0xbd5a8c5f, 0x9816202c, 0xce527a4c, 0x69fb19b1, 0x4036d792, 0x10c79c80, 0x6b0c23a0
.word 0x7a3dd697, 0x28068d30, 0x1a7d0d2b, 0x9220dfdb, 0xdcfb29b0, 0x900c3e71, 0xcf166961, 0x0865c0b2
.word 0x96520a31, 0x2104c766, 0x448465f0, 0xb16697f1, 0x86b99332, 0x8451de9f, 0x49cdf27b, 0x59737640
.word 0x5e080bcb, 0x1f032fe9, 0x5da82bfc, 0xcd652a4a, 0xd80e5ea7, 0xc1dffd27, 0x8cc44969, 0xd8736917
.word 0x47c88bdf, 0x28039a4b, 0x00e45f63, 0x3c3a384d, 0xf5924243, 0xa242a747, 0x04b9da43, 0x6cf739b3
.word 0x854b387f, 0xb67c705d, 0x7851b636, 0x13039f6a, 0x9abb9736, 0x057bf7c7, 0x14a92fc2, 0x053a5264
.word 0xd60f60bf, 0xc8e0866b, 0xb601f484, 0xea3c44ec, 0x0189d792, 0x8bc37348, 0xfe607e12, 0x769053c9
.word 0x5ec3a0a6, 0x78658dec, 0x64d8e243, 0x1dc73383, 0xc6b7b680, 0x872912a3, 0x22319342, 0x92fe4215
.word 0xcbc5c132, 0x55335094, 0xf0186e39, 0x6d7b92b8, 0xd3f81a79, 0x555428d4, 0xdc024f9b, 0x4507b49c
.word 0x51498093, 0x1ed21800, 0x2f4cd2d1, 0x78f37054, 0x8f67e06e, 0xe83d1d89, 0xb131b825, 0x4671945f
.word 0x5934b814, 0x0466f6a9, 0xc650e2a9, 0x9777e6fd, 0x427e869f, 0x03d17a2d, 0x6e8c23ad, 0xe73067dc
.word 0x27336d1b, 0x2a7e96b8, 0xe84307fd, 0x71b15e32, 0x37934aa7, 0xce9c64bf, 0xe3194309, 0xc46a3dfe
.word 0xc2201129, 0x64124415, 0x9b692264, 0x1e7cb406, 0x439f0188, 0x183b8dc7, 0x50dab810, 0x377cd20e
.word 0xc3af14ed, 0x55f537c7, 0x9b20ef8c, 0x3d301e07, 0xe9a2cc18, 0x8e58c2d1, 0x4cfce0fd, 0x6e5f7d4f
.word 0x43ee469a, 0x591ec1fe, 0x3cf61ee2, 0x090c3815, 0x04e39e3c, 0xd606110f, 0x5681b5e7, 0xdff13ea6
.word 0x1d0e723a, 0xb9235fd7, 0x53248627, 0x21b69b23, 0x98f4e425, 0x1dfe0350, 0xe3908024, 0xee5b7bc9
.word 0x35197ed1, 0x6731657e, 0x91e5b23f, 0xb2d40184, 0x9176e738, 0xcd2d6531, 0xe9f1db34, 0xb42554a5
.word 0xb12aa4ed, 0x9b9a1579, 0x59959a48, 0xc161d002, 0x411feec6, 0x405cdd27, 0x9180fbff, 0x3275d470
.word 0x032a345d, 0xf9665c13, 0xcae5515f, 0x49a46e7b, 0x766067db, 0x58b8b8c0, 0x5021565e, 0x4d3a0701
.word 0x049134a8, 0x8747304f, 0x215b4ca3, 0xa060df97, 0xacaafe74, 0xaf046729, 0xf897eaa2, 0x404c7e2b
.word 0x067787c9, 0x8b5018aa, 0x5596111e, 0x1e3261c3, 0x23526f8d, 0x98a3d105, 0x26c33021, 0x6707af4c
.word 0x3db2a82c, 0xb039b4cd, 0x0e838c48, 0xf25f0e6b, 0x5b702c69, 0x3837a6b4, 0xc15132f6, 0xd7d71dab
.word 0xbbb3602f, 0x40ec46fa, 0xa0497cde, 0x2111d1da, 0x3cd4b53d, 0x3900572e, 0x7a43d5d6, 0xce9dddea
.word 0x098915f6, 0x977331e1, 0xd593a556, 0x701142aa
.section .region_1,"aw",@progbits;
region_1:
.word 0xdcb92926, 0x57fe8c10, 0x01f9d1eb, 0xad93bd47, 0x28a138cc, 0x65787a8b, 0x70554cf3, 0x3f21d446
.word 0xfdeebc22, 0x4e5ca959, 0x0ce1f068, 0xc81ef726, 0x2a1741aa, 0x7474b617, 0x40a1b984, 0x9d51de6b
.word 0x66b59156, 0xdc1e83c8, 0xa50879a7, 0x5e578a58, 0xae2fc843, 0xa9a32ab5, 0xda316591, 0x2ef830b1
.word 0x9fe2c72f, 0x57ef2a00, 0x723aa374, 0x2933ea8f, 0x870bf36c, 0xcf48dce3, 0xdee31d58, 0x6fecc27f
.word 0x08cf8c1b, 0x29e3d6c2, 0x80de0be7, 0xf976f3ac, 0x09ac4c70, 0x34743b64, 0x527c4737, 0xe8f1d030
.word 0x2ed79fa0, 0x72b5f54e, 0x51c0a7d6, 0xd713f7b5, 0x4a2d2cfc, 0x8aa8cf63, 0xfa041c56, 0x39555eee
.word 0x1b765d24, 0x67003a77, 0xcf643433, 0xbd4738f1, 0x23b52bf6, 0xcf4ae605, 0xb4003094, 0x9d08cfed
.word 0x8c2419f0, 0xa719c720, 0xe5c1bfb5, 0x441fe79f, 0x9b4430dc, 0x58e92f88, 0x43dae711, 0x266e215b
.word 0x0dc408d9, 0x1fe69047, 0x4995f56b, 0x29112920, 0xb7c91f76, 0x6146f3b3, 0xa5914de3, 0xd926a20f
.word 0x844f5cbf, 0xb43110bb, 0x75c3aa2f, 0x2bbc3b63, 0xd3b5bb15, 0xdb6b9ecb, 0x6fb5c2ea, 0x13c27a6e
.word 0xb0ec7d1e, 0x676bdf24, 0x33e44a7d, 0x2e7d90e2, 0x1253ef70, 0x6cf5e8cb, 0x20a5069a, 0xcd9afcce
.word 0x2dbdc333, 0xa45def5c, 0xbf5d1a82, 0x991e9d2e, 0x52861368, 0xed5e2680, 0xae370112, 0xec74355f
.word 0x12a6bc7e, 0xcc602d07, 0x5b70c7c7, 0x9d3cbbfb, 0x3d083f15, 0x1269e074, 0xcfee54a3, 0xbc24f414
.word 0xdc9b22d7, 0x263caa50, 0xf0bf451d, 0xdc2cca60, 0x06b2cb0f, 0x743022da, 0x6d90713d, 0x285d5e02
.word 0xf5c23d62, 0x1d783cc0, 0x70f93758, 0xc6316b34, 0x51dff048, 0x1ef2228f, 0xce14f35b, 0xaed1ea88
.word 0x690fe72b, 0x5e086dbd, 0xb904d94a, 0xd4fa3cb8, 0xe6d4003c, 0x038a0289, 0xfdd22dca, 0x68707421
.word 0xc7f5f119, 0xdd398186, 0xa22e2326, 0xba4a42c8, 0x33cfe303, 0x79040036, 0xe41665c0, 0x8baf4cf9
.word 0x28e93f0e, 0x6eb09e09, 0x666afce7, 0x07cf0e47, 0x3b40ab3e, 0x1a4144de, 0x7819b5f6, 0x14b52bdf
.word 0xd674a6b9, 0x9284d63a, 0x2e948f63, 0x65e75a17, 0xab23beaf, 0x940093ce, 0xf2b0c87f, 0x4ff6bba2
.word 0x11a1139f, 0xecb41f77, 0xaf3ea411, 0x90e9be68, 0xd3e19da3, 0x12206cf9, 0xa4b1cd0e, 0x5f9d8ff1
.word 0xcaa6eb1b, 0x4d7a1b27, 0x0334535a, 0x28c6c9f9, 0xbb92daa6, 0x9c66fd5c, 0x6332f66b, 0x6d211b41
.word 0xed50047e, 0x37099349, 0x6acecb69, 0xa09fb61c, 0x1cbaf53a, 0x80046103, 0xe16abe4a, 0x72634ec0
.word 0x01d5945a, 0x0cb452a4, 0x3483da46, 0x9bdb722a, 0x812d7ca8, 0xb3529cd3, 0x598e2b80, 0xb56aa472
.word 0xa042432c, 0x9675557d, 0x450b50af, 0x39de8588, 0x4ff6d85b, 0xa4431d4e, 0xaaa0fb33, 0xcb84a3a8
.word 0xb14749b0, 0x2d078239, 0x69b1b6ea, 0x9009ab67, 0x5c6de540, 0xb704c678, 0xcbb6c70b, 0x9d1d54dc
.word 0xc5019b75, 0x70d4fd9e, 0x4bef706c, 0xe82f2bb6, 0x6d6247bd, 0xe15d644f, 0x74cfdf81, 0xe48a61e3
.word 0xd4a8b790, 0x22baf2f3, 0xc574eb50, 0x65ed78aa, 0x1f75ee31, 0x80877b87, 0x8ac6fee9, 0x0bb20c67
.word 0x2de0bd6c, 0x6bf420f1, 0x74a1f0e3, 0xb2dc8e7a, 0x198580a1, 0x79d2aefb, 0x412e40e5, 0x11dab9ae
.word 0x64050272, 0x9ee537fc, 0x4e85d0a7, 0x1e1895fc, 0xec2f0df7, 0xfe4866c6, 0x6fdc8f1f, 0x24a2400b
.word 0xeb9066c2, 0x3d4672a1, 0xd80a084e, 0x38cca4b8, 0xc14b8ca4, 0xf09d38d9, 0xd0791df1, 0xfc2d0ebb
.word 0x33454bbe, 0x3be6b1c6, 0xae06b963, 0x4a83021a, 0x0573bb90, 0x5fd0fbb7, 0xc1b40d19, 0x440a4806
.word 0xd0d7aac0, 0x9a8e88b9, 0xb371a9d5, 0x167a5b1e, 0xc56d9e83, 0x9d0abe9a, 0x85762a24, 0x7a017c2b
.word 0xade57f19, 0x8654bc9b, 0x684b1dbf, 0x82d77a18, 0xd483d5fb, 0x63e1ecbd, 0x8c1c3dba, 0x5e4edfd5
.word 0x188a564e, 0xca633dd1, 0x129c54f2, 0x43726d00, 0xfb472b51, 0xda4127ac, 0x89ce5674, 0xee6bd1f7
.word 0xc18d6fb4, 0x59748cc5, 0x2ef56b49, 0x8b26ec37, 0x97d13dfa, 0x469ea348, 0xd874714d, 0x424e653c
.word 0x00c0dc29, 0xbeaaa70d, 0x0dfc507e, 0xf58061bc, 0xcd5acae8, 0x77bfc404, 0xb2b8696f, 0x4a4dc5e9
.word 0x86562851, 0x69eb79a7, 0x7a4a001c, 0xa12deb53, 0xf9423d52, 0x07d254e1, 0x85c51cdb, 0x4273465e
.word 0x6dd54a99, 0xc7a63f01, 0xfa583941, 0xfc72f34e, 0x22867f30, 0x028928c3, 0x9dee5817, 0xc4044c11
.word 0xaf8f267e, 0x4a749860, 0x4eb0ff56, 0xf5294074, 0xdc241618, 0x99c41f8a, 0x19d12b3f, 0xde39fa55
.word 0xae7db61f, 0xb9299b06, 0xb0d8a2a5, 0xa96d51c4, 0xc7f028a3, 0xc5291bf8, 0xf792b580, 0x122f247a
.word 0xc04a3e2d, 0x6f5efab6, 0x7d8a35a6, 0x0d4d00fe, 0x173a22b8, 0x76a9109d, 0xb5e68835, 0x61fe3089
.word 0x08f5322c, 0xdab88fcf, 0x511d5fb2, 0x88315623, 0x22cddf60, 0x3f4d9802, 0xc5bc4796, 0x03af7e06
.word 0x25649e4f, 0xe930b0d1, 0x115bea5d, 0x41444e83, 0x61aaa384, 0x8b1bd06c, 0x4cbeafb9, 0xb54f7738
.word 0xfa35589b, 0x642c922a, 0x89e3be81, 0x373a5ad1, 0xee1c8a28, 0xc8ba9bf2, 0x20915b07, 0x8811df9a
.word 0xc372f79e, 0xed2fc027, 0x012a13c5, 0xe3bd3c2f, 0x6502fb4d, 0x184d327d, 0x5ebd1727, 0xb20b5446
.word 0x6a91ee1b, 0xe218fd9a, 0xd6b3353d, 0x7a82fe8c, 0x881c97c5, 0x55b8bfd9, 0x8d69a75b, 0x58f66ffa
.word 0xbe38715d, 0xaf15cb93, 0xec1d4e14, 0x8eae9d54, 0xb31f38d3, 0x4d17af4d, 0x37ca631e, 0xd33bb133
.word 0xadc4022a, 0x46326d1f, 0x613381c0, 0xd13496b6, 0x5af1f170, 0xb9fa34d7, 0x2c7a1736, 0xb51a1111
.word 0x51931916, 0xf17f83be, 0x5c341609, 0xcd237e23, 0xea3287a1, 0xfcbfdc4a, 0x5b226f82, 0xc0326715
.word 0x48517ecf, 0x192ed7da, 0xd1c43a0d, 0xbaecc6c0, 0x2ba15f35, 0xa409bc87, 0x46ae6693, 0x5afc9bf3
.word 0x5a3b179a, 0x2a410714, 0x74ebd37b, 0x84aab1a9, 0x2eae645f, 0xcf9b0a9c, 0xab77a58c, 0x49278b18
.word 0x3c02ac12, 0x625a8943, 0xfd64e196, 0x2da8499c, 0x7243c4b4, 0x620cf1d2, 0xed0b5896, 0x2f0ff294
.word 0x95d117cb, 0xa3a4fc89, 0x1f667711, 0xbc3a1a00, 0x4d4bff61, 0xb5ff330d, 0x8a12c4a3, 0x2d34f523
.word 0xa3f7aad8, 0xe4330647, 0x6d639834, 0x2ed9f0d4, 0x6ca5d997, 0x70c8e0db, 0xc81e8b09, 0xea4bfc88
.word 0x7f77f9ad, 0xd2f1a9c0, 0x6155bc30, 0x6f917a98, 0xafc6a2c4, 0xac95f767, 0x0fbc3295, 0xf979b54c
.word 0xa022b3c5, 0xcd694b6f, 0x27bb84e6, 0xc92c91ff, 0x6cb4dbb0, 0xc8ba4908, 0xe054f2ce, 0x40a627b9
.word 0xf490a4db, 0x42ab4b58, 0xaa90b4c2, 0x3c8612d0, 0x23cbdf1c, 0xd0264a35, 0xf03341d0, 0xc1525b34
.word 0x3cc151e0, 0x71b95adc, 0xe7a679cc, 0x5f2ea8d7, 0x61cc33af, 0x36e42d29, 0xc0bec4ac, 0xe013a7ff
.word 0x970cc4fa, 0xd1d25561, 0xc02ca428, 0xd5219788, 0xf25bc4eb, 0xe8494619, 0x888e4ba0, 0x3ffc63bf
.word 0xc721d4b3, 0x4ec85f17, 0x0903a423, 0x4b0f7f5e, 0x3152036c, 0x6fb07e1f, 0xa3e75a65, 0x62451001
.word 0xb3b7d3ce, 0xe591b4b6, 0x7f1e0087, 0x16be1122, 0x3c88b4b1, 0xe10c789f, 0xe6e0afdf, 0xb7a2946c
.word 0xc4fa3db7, 0xd658562b, 0x2127c42c, 0x3635c6de, 0x82b8c902, 0xd2c3d975, 0x5630801e, 0xce62a596
.word 0x2ead266e, 0xec4598b4, 0x79087e3b, 0xee1664ab
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 0x1f
                  beqz x24, 1f
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
                  addi x10, x10, -128
                  sw  x1, 4(x10)
                  sw  x2, 8(x10)
                  sw  x3, 12(x10)
                  sw  x4, 16(x10)
                  sw  x5, 20(x10)
                  sw  x6, 24(x10)
                  sw  x7, 28(x10)
                  sw  x8, 32(x10)
                  sw  x9, 36(x10)
                  sw  x10, 40(x10)
                  sw  x11, 44(x10)
                  sw  x12, 48(x10)
                  sw  x13, 52(x10)
                  sw  x14, 56(x10)
                  sw  x15, 60(x10)
                  sw  x16, 64(x10)
                  sw  x17, 68(x10)
                  sw  x18, 72(x10)
                  sw  x19, 76(x10)
                  sw  x20, 80(x10)
                  sw  x21, 84(x10)
                  sw  x22, 88(x10)
                  sw  x23, 92(x10)
                  sw  x24, 96(x10)
                  sw  x25, 100(x10)
                  sw  x26, 104(x10)
                  sw  x27, 108(x10)
                  sw  x28, 112(x10)
                  sw  x29, 116(x10)
                  sw  x30, 120(x10)
                  sw  x31, 124(x10)
                  add x16, x10, zero
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x24, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x24, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x24, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x24, x14, ecall_handler
                  li x14, 0x1
                  beq x24, x14, instr_fault_handler
                  li x14, 0x5
                  beq x24, x14, load_fault_handler
                  li x14, 0x7
                  beq x24, x14, store_fault_handler
                  li x14, 0xc
                  beq x24, x14, pt_fault_handler
                  li x14, 0xd
                  beq x24, x14, pt_fault_handler
                  li x14, 0xf
                  beq x24, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

load_fault_handler:
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

store_fault_handler:
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x10, x16, zero
                  lw  x1, 4(x10)
                  lw  x2, 8(x10)
                  lw  x3, 12(x10)
                  lw  x4, 16(x10)
                  lw  x5, 20(x10)
                  lw  x6, 24(x10)
                  lw  x7, 28(x10)
                  lw  x8, 32(x10)
                  lw  x9, 36(x10)
                  lw  x10, 40(x10)
                  lw  x11, 44(x10)
                  lw  x12, 48(x10)
                  lw  x13, 52(x10)
                  lw  x14, 56(x10)
                  lw  x15, 60(x10)
                  lw  x16, 64(x10)
                  lw  x17, 68(x10)
                  lw  x18, 72(x10)
                  lw  x19, 76(x10)
                  lw  x20, 80(x10)
                  lw  x21, 84(x10)
                  lw  x22, 88(x10)
                  lw  x23, 92(x10)
                  lw  x24, 96(x10)
                  lw  x25, 100(x10)
                  lw  x26, 104(x10)
                  lw  x27, 108(x10)
                  lw  x28, 112(x10)
                  lw  x29, 116(x10)
                  lw  x30, 120(x10)
                  lw  x31, 124(x10)
                  addi x10, x10, 128
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
