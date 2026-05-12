.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x6, mtvec_handler
                  ori x6, x6, 1
                  csrw 0x305, x6 # MTVEC

mepc_setup:       
                  la x6, init
                  csrw 0x341, x6

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x6, 0x1800
                  csrw 0x300, x6 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x5351c833
                  li x2, 0x80000000
                  li x3, 0x7
                  li x4, 0x80000000
                  li x5, 0x6
                  li x6, 0xc
                  li x7, 0xf4cc176d
                  li x8, 0xb
                  li x10, 0x2
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xac32670f
                  li x16, 0x2f8e2e64
                  li x17, 0xc
                  li x18, 0x1
                  li x19, 0xf4f43a3c
                  li x20, 0xfbdaa91d
                  li x21, 0xc1ef0bad
                  li x22, 0x55fd5a01
                  li x23, 0xe
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0xf8ed6b42
                  li x27, 0x0
                  li x28, 0xfdec0514
                  li x29, 0x80000000
                  li x30, 0x0
                  li x31, 0xf7d48503
                  la x9, user_stack_end
main:             ori          s6, s9, -116
                  slli         t3, ra, 11
                  add          a7, s4, gp
                  sub          ra, t2, a2
                  la           t6, sub_1
                  or           s6, a5, s10
                  addi         t6, t6, -927
                  nop
                  add          t4, s7, s0
                  nop
                  add          a5, t2, a3
                  addi         gp, t4, -654
main_j3:          jalr         t4, t6, 928 #jump main -> sub_1
                  sltiu        t4, s2, 700
                  la           s0, sub_4
                  srl          s2, t4, t6
                  addi         s0, s0, 940
                  xor          tp, a2, s0
                  lui          s3, 537671
                  and          a0, a0, s3
                  bltu         s7, t6, main_j4 #branch to jump instr
                  slli         ra, a1, 17
                  addi         zero, s2, -153
                  xor          s2, t0, s7
main_j4:          jalr         t4, s0, -940 #jump main -> sub_4
                  la           t4, sub_3
                  srli         a0, s3, 16
                  auipc        s4, 276834
                  slli         s4, s3, 0
                  addi         t4, t4, 802
                  sra          t5, a7, s3
                  srli         t3, a0, 12
                  srl          t1, s11, s6
main_j6:          jalr         t4, t4, -801 #jump main -> sub_3
                  addi         s8, zero, 10 #init loop 0 counter
                  add          a6, s11, s7
                  addi         a2, zero, -11 #init loop 0 limit
main_0_0_t:       sub          s6, s0, t5
                  sra          a5, s8, a7
                  addi         s8, s8, -5 #update loop 0 counter
                  slli         s11, t5, 3
                  bge          s8, a2, main_0_0_t #branch for loop 0
                  xori         s2, a3, -1643
                  addi         s10, zero, 1 #init loop 0 counter
                  and          a3, t3, sp
                  slti         a2, t3, -1120
                  srai         s6, sp, 15
                  xori         s5, s6, -1657
                  sltu         s8, t0, a3
                  addi         s3, zero, -14 #init loop 0 limit
                  xori         gp, a2, 1552
                  nop
main_1_0_t:       and          s5, t5, s6
                  auipc        a0, 157729
                  srai         s11, s2, 13
                  sub          a5, a4, s4
                  xor          s2, a5, a2
                  lui          t5, 34299
                  addi         s10, s10, -5 #update loop 0 counter
                  addi         t4, t2, 711
                  xori         t0, s2, -980
                  slti         t0, gp, 1207
                  bge          s10, s3, main_1_0_t #branch for loop 0
                  xori         a5, a4, -338
                  addi         t4, zero, 6 #init loop 1 counter
                  srai         zero, t0, 27
                  addi         a5, zero, -19 #init loop 1 limit
main_2_1_t:       slt          t0, t0, a0
                  slli         a2, t6, 1
                  sltu         s7, s7, s6
                  addi         t4, t4, -5 #update loop 1 counter
                  addi         t5, zero, -6 #init loop 0 counter
                  nop
                  addi         s0, zero, -14 #init loop 0 limit
main_2_0_t:       addi         a2, s8, -904
                  or           s8, a3, t5
                  slti         s2, a3, -197
                  addi         t5, t5, -8 #update loop 0 counter
                  srli         s9, a5, 9
                  beq          t5, s0, main_2_0_t #branch for loop 0
                  add          s3, a2, s11
                  bne          t4, a5, main_2_1_t #branch for loop 1
                  andi         tp, s1, 226
                  sltu         t3, s1, gp
                  sltu         t3, s7, s4
                  bltu         s6, s11, 15f
                  slli         t3, s0, 3
                  sltu         t2, t4, t0
                  bge          s11, a0, 21f
                  blt          s9, a6, 9f
                  bltu         s5, sp, 18f
                  sub          s8, t4, t1
9:                nop
                  ori          s5, tp, -1770
                  srai         s9, a4, 4
                  auipc        s8, 948991
                  bltu         zero, sp, 29f
                  ori          ra, t6, 1576
15:               slti         s8, a1, 1856
                  sra          t5, s8, s10
                  blt          tp, t6, 19f
18:               sll          a3, s9, ra
19:               bge          t0, a7, 27f
                  auipc        a6, 281200
21:               and          a0, t2, a7
                  ori          tp, gp, 1618
                  bge          a3, a0, 37f
                  slt          ra, s8, a3
                  xori         s3, tp, -1891
                  srli         a2, zero, 2
27:               and          a7, s7, t3
                  slt          s2, s6, a1
29:               xori         s6, s9, 592
                  xor          a5, zero, a6
                  bgeu         t2, t1, 42f
                  bgeu         t0, a0, 49f
                  and          s4, sp, s10
                  xori         t4, gp, 1093
                  bgeu         a4, sp, 37f
                  srli         t3, t0, 3
37:               and          s8, a3, a0
                  nop
                  bne          t6, s3, 44f
                  and          s7, gp, s9
                  sltiu        a5, s3, 1404
42:               and          s11, a3, sp
                  srl          gp, s1, s4
44:               beq          t1, s7, 45f
45:               lui          s6, 873582
                  lui          t5, 301405
                  ori          s8, a3, 1485
                  sub          t2, s2, a1
                  la           t1, sub_2
                  srli         a6, s0, 10
                  addi         t1, t1, 788
                  nop
                  blt          s10, a0, main_j5 #branch to jump instr
                  srl          a5, t2, s7
main_j5:          jalr         t4, t1, -787 #jump main -> sub_2
                  srli         t0, s7, 27
                  ori          s3, a3, 212
                  sub          t5, s11, s4
49:               auipc        s3, 206155
                  bgeu         s8, a4, 54f
                  or           a3, a4, s2
                  beq          s1, s5, 61f
                  blt          a1, a7, 58f
54:               sll          t2, a2, a7
                  nop
                  slti         s4, zero, 606
                  slti         s2, a3, 1330
58:               and          a3, a5, sp
                  sltu         a0, s8, s11
                  and          s7, t3, t6
61:               sltiu        tp, tp, 1736
                  or           t3, s10, t1
                  sltiu        t5, a1, 1531
                  slt          t3, s9, gp
                  or           t3, a6, s3
                  sltiu        a6, a7, -932
                  addi         gp, a3, -1172
                  srli         a7, s2, 30
                  andi         t4, s9, 1485
                  or           t1, s9, sp
                  sra          a0, zero, s6
                  sra          s3, t3, t4
                  bge          s10, t3, 88f
                  xor          s5, a4, t3
                  or           zero, a0, s8
                  bltu         a5, ra, 81f
                  srai         a6, s11, 26
                  sll          a4, s1, t0
                  nop
                  sub          s3, t2, t2
                  or           ra, t6, s10
                  la           t6, sub_2
                  xor          ra, a2, a0
                  or           s5, t2, s11
                  addi         t6, t6, -426
                  nop
main_j2:          jalr         t4, t6, 426 #jump main -> sub_2
                  lui          a4, 382463
                  sltu         s11, s4, a6
                  bge          zero, gp, 93f
81:               bltu         a7, a2, 91f
                  xori         s3, a6, 1691
                  andi         t3, s3, 1519
                  sra          tp, s8, t1
                  sltu         t4, t1, a7
                  auipc        s3, 695743
                  sra          a5, s5, s5
88:               addi         s8, zero, -1655
                  srli         a7, s2, 28
                  sll          s8, s8, t4
91:               or           t2, sp, s10
                  sll          tp, s3, a3
93:               bltu         s6, s2, 108f
                  srli         s2, s0, 0
                  lui          s0, 838450
                  srli         t5, t3, 20
                  sra          t5, s0, t6
                  bgeu         t0, zero, 116f
                  add          s9, gp, t3
                  srai         s0, s4, 31
                  or           t6, s8, s2
                  bne          a2, s5, 107f
                  blt          s2, t3, 108f
                  bge          t6, t4, 118f
                  slti         s2, t5, -681
                  sub          t3, zero, s7
107:              beq          t4, a6, 113f
108:              sltu         s3, a7, s3
                  or           s11, t3, a7
                  auipc        s4, 774310
                  bltu         s4, sp, 122f
                  bne          s8, s6, 125f
113:              and          t6, a6, t3
                  ori          s4, s9, -1612
                  xor          a0, s1, s11
116:              slli         s7, s3, 10
                  sltiu        a2, s1, 1362
118:              blt          tp, s0, 130f
                  slt          s0, a6, t2
                  sltiu        a3, tp, -1565
                  sll          s8, s0, a6
122:              xori         a7, a1, -557
                  srai         a7, s1, 11
                  sll          a2, s2, s8
                  xori         s8, t0, 1779
                  la           a5, sub_5
                  srai         a6, s6, 11
                  ori          ra, t2, -1396
                  addi         a5, a5, 107
                  slli         a3, a1, 29
                  nop
                  xor          t1, a3, t0
main_j1:          jalr         t4, a5, -107 #jump main -> sub_5
                  addi         t2, a0, -1181
                  srai         a7, s9, 3
125:              and          a4, s2, t6
                  add          gp, t1, ra
                  slt          t3, a3, t2
                  bge          t2, s7, 133f
                  blt          a3, s5, 144f
130:              sltu         zero, s1, t0
                  ori          t1, s10, -2033
                  srli         s3, s3, 1
                  addi         s7, zero, 6 #init loop 1 counter
                  addi         s4, a2, -715
                  sll          s10, s0, s5
                  addi         s4, a3, 196
                  sll          zero, a2, s11
                  xori         s10, s1, 2017
                  addi         t5, zero, -12 #init loop 1 limit
                  slli         s6, s0, 2
main_3_1_t:       and          a0, s2, tp
                  srli         s4, s9, 11
                  slti         a3, t1, 1211
                  addi         s7, s7, -9 #update loop 1 counter
                  ori          s5, s1, -1292
                  sltiu        t4, s5, -355
                  sll          zero, s10, a1
                  addi         a7, zero, 8 #init loop 0 counter
                  srli         a4, s6, 10
                  addi         gp, zero, -13 #init loop 0 limit
main_3_0_t:       and          s5, t1, ra
                  slti         s11, a6, 1960
                  addi         a7, a7, -3 #update loop 0 counter
                  bge          a7, gp, main_3_0_t #branch for loop 0
                  sub          s3, t0, gp
                  beq          s7, t5, main_3_1_t #branch for loop 1
                  and          tp, t4, a2
133:              bge          s10, ra, 138f
                  andi         t1, s10, 445
                  nop
                  slt          s8, s1, a6
                  slli         t5, a2, 0
138:              andi         s2, s0, -1637
                  slli         a5, a6, 14
                  slt          a3, s3, zero
                  slt          ra, ra, t6
                  slli         s2, a2, 4
                  xori         a4, s9, -779
144:              sltiu        s4, s7, -964
                  add          t6, s5, s6
                  bne          t5, s6, 148f
                  srai         t5, s4, 29
148:              slli         s2, s1, 10
                  slli         zero, s4, 14
                  sltiu        ra, tp, -182
                  andi         s0, a3, 29
                  andi         a5, tp, 1817
                  xor          a5, s7, s6
                  nop
                  sra          a0, t0, a2
                  slli         s8, t5, 31
                  sra          ra, t5, ra
                  sltiu        a6, a1, 1348
                  sltiu        a4, s2, -1147
                  addi         t4, t4, -678
                  sub          a7, s8, t5
                  srl          s6, sp, a3
                  slt          s3, a1, gp
                  slli         t0, s9, 11
                  bgeu         t4, ra, 168f
                  bne          t6, a7, 171f
                  bge          s4, t4, 182f
168:              ori          s2, s0, -834
                  srli         s7, a5, 2
                  bne          t4, s7, 175f
171:              addi         zero, tp, -1059
                  srai         a5, s5, 17
                  xor          t4, t0, a4
                  sll          zero, s3, t0
175:              lui          zero, 218088
                  andi         s11, s5, 1935
                  slti         s7, t1, 35
                  slti         t0, t3, 1433
                  sltiu        t3, t2, 1197
                  sra          t5, s2, s4
                  sub          s0, t2, s7
182:              or           s9, tp, s5
                  nop
                  sub          t4, tp, s2
                  ori          s6, t0, 1956
                  beq          tp, a1, 197f
                  nop
                  srli         s9, a3, 28
                  addi         t2, a2, -1331
                  andi         t1, a3, 146
                  sra          tp, t1, t6
                  slli         ra, a2, 18
                  beq          a5, t5, 209f
                  srai         ra, t1, 31
                  sra          t5, s2, a2
                  srai         t2, t6, 29
197:              xor          a5, a2, t4
                  srli         s0, a2, 5
                  lui          a4, 923881
                  bge          t3, a2, 210f
                  slli         t4, s5, 1
                  andi         s9, s8, 1979
                  bgeu         t1, a7, 211f
                  addi         t4, s3, -924
                  nop
                  bgeu         s8, a5, 215f
                  sub          s4, sp, s11
                  and          s4, tp, t4
209:              srl          s3, s1, a1
210:              bge          s2, t6, 215f
211:              sll          s8, s8, s3
                  addi         t3, s2, 523
                  bltu         t2, a4, 215f
                  srl          s11, t3, t3
215:              lui          s3, 672958
                  add          gp, tp, gp
                  bne          s0, sp, 220f
                  sub          s9, sp, t5
                  ori          zero, t1, -766
220:              slt          s6, s7, s2
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bgeu         a2, ra, sub_1_stack_p
                  auipc        a7, 700316
                  sub          a2, a7, a7
sub_1_stack_p:    addi         s1, s1, -40
                  srai         t3, t2, 18
                  andi         a5, a4, 1862
                  sw           t4, 4(s1)
                  srli         s3, a0, 22
                  addi         a5, zero, 4 #init loop 0 counter
                  ori          s5, t0, 1318
                  auipc        t0, 110634
                  xori         t5, s7, 38
                  andi         s11, t2, -281
                  sra          tp, sp, t4
                  srai         a3, t1, 20
                  addi         t3, zero, 8 #init loop 0 limit
                  srli         a6, t6, 12
sub_1_0_0_t:      auipc        s11, 485226
                  addi         a5, a5, 2 #update loop 0 counter
                  sltu         ra, t4, s11
                  slli         s7, t5, 8
                  slli         s9, s1, 28
                  srl          a4, s2, s4
                  beq          a5, t3, sub_1_0_0_t #branch for loop 0
                  srai         a6, t2, 7
                  addi         s2, zero, 2 #init loop 1 counter
                  sltu         t3, s7, s4
                  addi         s7, zero, 17 #init loop 1 limit
sub_1_7_1_t:      xor          t2, s5, s2
                  sll          a2, ra, a7
                  addi         s2, s2, 4 #update loop 1 counter
                  addi         a5, zero, 2 #init loop 0 counter
                  addi         t0, zero, 12 #init loop 0 limit
                  xor          a4, a4, s11
sub_1_7_0_t:      add          a4, gp, s10
                  srli         a7, t4, 8
                  addi         a5, a5, 9 #update loop 0 counter
                  blt          a5, t0, sub_1_7_0_t #branch for loop 0
                  slti         s8, a7, -384
                  bltu         s2, s7, sub_1_7_1_t #branch for loop 1
                  sub          zero, a4, t6
                  addi         s10, zero, 8 #init loop 1 counter
                  srai         a7, s0, 4
                  auipc        t0, 628468
                  addi         t1, zero, -16 #init loop 1 limit
                  xor          t2, s8, a6
                  andi         s11, s4, 468
sub_1_4_1_t:      ori          t0, t3, 2004
                  nop
                  sll          s5, a6, a4
                  addi         s10, s10, -5 #update loop 1 counter
                  slti         a3, s1, -1623
                  sltu         t0, s9, ra
                  addi         a2, zero, 8 #init loop 0 counter
                  addi         a6, zero, 17 #init loop 0 limit
                  xori         s7, s11, 1579
sub_1_4_0_t:      slt          a3, t4, t1
                  xor          a4, gp, s0
                  addi         a2, a2, 9 #update loop 0 counter
                  auipc        a7, 878352
                  sltiu        s5, t5, 1950
                  bne          a2, a6, sub_1_4_0_t #branch for loop 0
                  sll          s9, s5, s2
                  bge          s10, t1, sub_1_4_1_t #branch for loop 1
                  sltu         s2, t0, s4
                  addi         a6, zero, 4 #init loop 1 counter
                  sub          t1, zero, tp
                  ori          t5, a1, 643
                  addi         t0, zero, 3 #init loop 1 limit
                  sra          t2, s4, sp
                  xori         s2, t3, 1949
                  sll          s4, a2, t3
                  nop
sub_1_10_1_t:     nop
                  sll          s11, sp, a6
                  andi         s8, t1, 639
                  sra          s9, s3, s1
                  addi         a6, a6, -4 #update loop 1 counter
                  add          s2, a4, a2
                  srli         t2, t2, 21
                  andi         t5, s5, 665
                  addi         s7, zero, -2 #init loop 0 counter
                  slli         a0, s8, 24
                  addi         a4, zero, 14 #init loop 0 limit
                  srl          t2, a6, s10
                  xori         s0, a3, 412
                  sltiu        a0, s1, -2002
sub_1_10_0_t:     xori         a2, a7, -1438
                  slti         s11, t0, -68
                  addi         s7, s7, 4 #update loop 0 counter
                  srai         a3, s0, 12
                  beq          s7, a4, sub_1_10_0_t #branch for loop 0
                  slt          t2, s5, s5
                  auipc        s6, 82778
                  bge          a6, t0, sub_1_10_1_t #branch for loop 1
                  lui          zero, 131069
                  addi         a3, zero, 10 #init loop 1 counter
                  addi         s11, zero, 10 #init loop 1 limit
sub_1_6_1_t:      add          s4, s4, s3
                  addi         a3, a3, -8 #update loop 1 counter
                  addi         t3, zero, 8 #init loop 0 counter
                  addi         a0, zero, 8 #init loop 0 limit
                  srai         s8, s5, 13
sub_1_6_0_t:      sltiu        s5, s6, -1829
                  addi         t3, t3, -7 #update loop 0 counter
                  bgeu         t3, a0, sub_1_6_0_t #branch for loop 0
                  bgeu         a3, s11, sub_1_6_1_t #branch for loop 1
                  sltu         s2, t5, s9
                  addi         a6, zero, -8 #init loop 1 counter
                  srai         tp, a2, 28
                  srli         zero, s2, 23
                  sltu         s3, t2, sp
                  srli         s4, t2, 3
                  sltiu        gp, t1, 463
                  andi         t1, s3, -49
                  addi         s5, zero, 16 #init loop 1 limit
                  srl          s0, tp, a3
                  add          a5, tp, a7
                  ori          t0, s8, -141
sub_1_3_1_t:      xori         a7, gp, 906
                  sll          t4, a7, a2
                  addi         a6, a6, 10 #update loop 1 counter
                  xor          a3, s9, s9
                  addi         a2, zero, -1 #init loop 0 counter
                  andi         a3, s0, -455
                  addi         a0, zero, 17 #init loop 0 limit
                  slt          s3, a7, s5
sub_1_3_0_t:      and          t4, t4, tp
                  srl          s4, s7, a5
                  and          s7, s5, t3
                  addi         a7, a7, -195
                  nop
                  slt          t5, a1, s8
                  addi         a2, a2, 10 #update loop 0 counter
                  sltiu        s8, t3, -14
                  blt          a2, a0, sub_1_3_0_t #branch for loop 0
                  andi         s11, ra, -143
                  slt          a3, t3, ra
                  addi         s4, s7, -1120
                  bltu         a6, s5, sub_1_3_1_t #branch for loop 1
                  sub          s6, t2, s5
                  addi         t4, zero, 7 #init loop 0 counter
                  auipc        t2, 641070
                  or           zero, s4, t2
                  and          t5, a2, s7
                  slti         s6, s5, -1306
                  and          s8, t3, t5
                  andi         t2, a0, -350
                  sltiu        s6, s7, 596
                  sltiu        a4, a6, 1571
                  sub          s7, t3, s5
                  slli         a2, s11, 5
                  sll          a6, t0, a1
                  addi         a0, a0, -1354
                  auipc        a3, 30816
                  slli         a4, a3, 3
                  auipc        t1, 580542
                  addi         t6, zero, 15 #init loop 0 limit
                  sub          a7, ra, ra
sub_1_2_0_t:      lui          s6, 841762
                  addi         t4, t4, 1 #update loop 0 counter
                  addi         s7, t3, 1428
                  auipc        t1, 859651
                  blt          t4, t6, sub_1_2_0_t #branch for loop 0
                  srai         a4, s4, 8
                  addi         gp, zero, -1 #init loop 0 counter
                  add          t1, s8, s5
                  xor          s0, gp, s9
                  xor          a7, s6, t1
                  slli         a7, s3, 7
                  lui          tp, 240798
                  lui          a6, 367266
                  srl          a7, a1, tp
                  addi         s4, zero, 13 #init loop 0 limit
sub_1_12_0_t:     xor          s3, s0, sp
                  auipc        a3, 775645
                  addi         gp, gp, 7 #update loop 0 counter
                  or           t1, s5, s11
                  sub          a5, s5, a0
                  and          a3, s5, s9
                  beq          gp, s4, sub_1_12_0_t #branch for loop 0
                  xori         s0, s4, 586
                  andi         a6, t5, -492
                  xor          t0, a3, t5
                  auipc        s10, 134630
                  sra          s4, t2, ra
                  blt          a6, s5, 15f
                  andi         t5, s1, 725
                  bltu         s10, a2, 20f
                  bgeu         s0, s7, 22f
                  bge          a1, t1, 20f
                  blt          s7, t1, 18f
                  lui          s0, 927315
                  or           s6, t6, s7
                  srl          s7, s10, a3
                  srli         s11, t0, 25
                  sltiu        t5, t6, 1870
15:               sltu         a4, gp, s6
                  sub          t5, t3, a0
                  sub          a6, tp, a0
18:               slti         s4, gp, -959
                  sll          s0, t1, a6
20:               xor          s3, s11, s11
                  andi         t1, sp, -1084
22:               slli         zero, t5, 30
                  sub          gp, s5, s2
                  add          t6, s4, s9
                  sra          zero, t5, s7
                  blt          s3, s7, 42f
                  andi         a3, s0, -1836
                  sub          s6, zero, t0
                  srli         s3, t0, 31
                  or           tp, a3, s9
                  beq          t6, a2, 34f
                  sltu         a0, s6, a5
                  sub          s6, t6, a4
34:               slli         s9, s10, 17
                  sltu         t5, ra, t0
                  beq          s2, a4, 40f
                  addi         s11, s2, -1068
                  slli         a7, s4, 15
                  blt          s3, a4, 54f
40:               add          tp, t6, t5
                  blt          a2, a1, 51f
42:               srai         s3, t5, 2
                  sltu         s9, s4, s8
                  bltu         a5, s3, 52f
                  srai         zero, t2, 19
                  blt          a0, a1, 50f
                  xori         gp, sp, 1547
                  sra          s9, t0, sp
                  sra          gp, a0, s11
50:               slt          t4, a7, s11
51:               blt          gp, s0, 56f
52:               sra          gp, s7, tp
                  and          s3, tp, ra
54:               sub          tp, t1, t3
                  sra          a4, s5, ra
56:               lui          a2, 118948
                  beq          s4, s7, 59f
                  sltiu        t1, a1, -781
59:               and          s4, s8, a4
                  nop
                  slt          a4, t1, a0
                  blt          t4, s2, 66f
                  or           zero, a5, t1
                  lui          t5, 590247
                  addi         tp, s11, -124
66:               add          a0, t2, a6
                  sltu         s2, s11, a5
                  beq          ra, t2, 74f
                  and          s10, s2, s11
                  auipc        t5, 29014
                  or           t3, ra, t4
                  blt          ra, a3, 73f
73:               andi         a0, s10, -1746
74:               blt          a2, ra, 86f
                  sra          s4, t0, s1
                  add          s7, s6, s1
                  srl          a2, zero, gp
                  bgeu         t0, s3, 93f
                  andi         s2, t1, 1300
                  sltu         s6, ra, s10
                  bne          s5, a5, 83f
                  addi         t3, sp, 1081
83:               xor          t5, s2, a0
                  srl          tp, s1, s6
                  sltiu        t0, a2, -1656
86:               srli         t5, a2, 16
                  sltu         t5, t0, s8
                  bltu         s3, a1, 90f
                  ori          a2, a1, -493
90:               andi         s3, sp, 435
                  srli         s3, t0, 6
                  addi         a2, t5, -1563
93:               xori         a3, s10, 438
                  xor          t3, s0, s10
                  blt          a0, s2, 111f
                  sltu         a3, s0, t2
                  sltiu        s5, t6, -117
                  blt          s5, a4, 111f
                  slti         ra, sp, 668
                  nop
                  bge          s5, s0, 120f
                  auipc        a6, 347305
                  auipc        s7, 331311
                  blt          zero, s9, 118f
                  or           a6, s2, s11
                  or           a0, s10, s3
                  sub          tp, a7, s4
                  sltu         t5, t4, sp
                  srli         t5, s4, 0
                  beq          a1, s8, 121f
111:              andi         s5, t5, -1285
                  ori          zero, s5, -1028
                  sra          s4, gp, a0
                  lui          a7, 867554
                  blt          t3, s3, 120f
                  srai         s2, t1, 16
                  and          s9, t1, t5
118:              bgeu         zero, t1, 136f
                  slt          t3, s7, s5
120:              slli         s3, s3, 4
121:              slt          a4, s5, t1
                  add          t6, a2, s5
                  slli         s2, s8, 0
                  blt          tp, a0, 130f
                  sub          s2, s2, s10
                  andi         s2, s10, 1215
                  or           t6, s9, t3
                  srai         t5, a7, 10
                  bgeu         s3, a7, 137f
130:              xori         t5, a7, -325
                  slli         s10, a1, 28
                  add          t0, s3, s4
                  andi         a5, gp, 49
                  nop
                  sltiu        ra, t2, -975
136:              blt          s3, ra, 140f
137:              nop
                  or           s6, sp, a2
                  sub          s0, a4, t2
140:              add          a3, a3, a5
                  sub          t1, t3, t3
                  bgeu         s5, a6, 157f
                  srl          t2, s2, gp
                  blt          t5, t1, 162f
                  xor          a6, s2, s10
                  or           a2, s2, tp
                  sltu         s0, sp, s4
                  sltiu        a6, sp, 1370
                  blt          s10, s11, 160f
                  slt          t5, s11, t6
                  addi         t5, zero, -1 #init loop 1 counter
                  xor          a3, t6, sp
                  addi         s9, zero, 6 #init loop 1 limit
                  srl          s10, s9, s9
                  slti         t0, tp, 90
sub_1_1_1_t:      sltiu        tp, s3, -1293
                  slli         s7, gp, 16
                  addi         t5, t5, 1 #update loop 1 counter
                  addi         ra, zero, -3 #init loop 0 counter
                  slt          s2, s3, sp
                  slli         s8, a7, 14
                  addi         a2, zero, 11 #init loop 0 limit
sub_1_1_0_t:      addi         s10, s8, 1325
                  sra          a3, t5, t0
                  sltu         s11, s10, s5
                  addi         zero, a0, 331
                  ori          tp, s8, -1051
                  addi         ra, ra, 3 #update loop 0 counter
                  xori         a3, t5, 2044
                  slti         a0, a5, -287
                  ori          a4, a5, 316
                  blt          ra, a2, sub_1_1_0_t #branch for loop 0
                  lui          tp, 567511
                  lui          s3, 825871
                  xor          tp, t0, s0
                  beq          t5, s9, sub_1_1_1_t #branch for loop 1
                  auipc        s7, 444998
                  slt          s4, a5, a1
                  xor          s11, s0, t4
                  addi         t3, s9, 208
                  slti         t3, ra, 710
                  ori          t3, a1, 1352
                  bgeu         gp, s0, 164f
157:              bne          zero, tp, 159f
                  bge          a3, s7, 161f
159:              sll          t5, s11, t6
160:              srl          a5, a2, s1
161:              xori         s11, s5, 963
162:              slli         s6, s10, 30
                  sltu         t1, s8, t6
164:              bne          t6, t1, 166f
                  bne          a7, s9, 178f
166:              and          a6, s9, a4
                  sub          t6, t0, sp
                  sub          a5, s9, s4
                  srli         a6, zero, 24
                  bge          sp, zero, 176f
                  beq          sp, a5, 176f
                  bge          s10, sp, 184f
                  add          t3, a7, a6
                  nop
                  sltu         s0, zero, t0
176:              lui          a3, 190852
                  bge          a1, tp, 181f
178:              sltiu        t5, a0, 1763
                  srl          s8, a7, s8
                  bge          a3, t0, 186f
181:              sub          t5, s10, gp
                  xor          s7, zero, ra
                  blt          a5, t5, 199f
184:              or           a0, s0, tp
                  bge          ra, t2, 200f
186:              bne          zero, a2, 205f
                  and          s0, t5, s0
                  bgeu         a1, s5, 197f
                  auipc        a2, 179339
                  nop
                  sltiu        s6, gp, -771
                  sub          t3, s3, s7
                  blt          a3, ra, 205f
                  beq          s7, tp, 195f
195:              bgeu         s0, s3, 209f
                  bgeu         gp, a0, 211f
197:              srai         s11, s0, 4
                  bltu         a1, s7, 212f
199:              xori         t3, t0, 1354
200:              xor          a7, t1, s6
                  sll          s2, gp, s9
                  xori         gp, s3, 986
                  andi         t1, s11, -376
                  sub          a6, s2, a3
205:              xor          t5, sp, s11
                  srli         zero, a2, 14
                  add          t6, a2, a5
                  slli         s3, s5, 28
209:              sll          s3, s8, s2
                  sltiu        s11, s8, 678
211:              blt          tp, s0, 219f
212:              bne          s11, s9, 223f
                  srai         s8, sp, 15
                  slti         a3, s11, 706
                  and          t3, a1, tp
                  blt          s10, t5, 232f
                  sltu         a3, a4, a4
                  slti         a0, t3, -971
219:              xor          tp, s0, t6
                  auipc        tp, 172466
                  auipc        s6, 304914
                  blt          t6, t1, 227f
223:              sra          tp, a2, a6
                  sub          t5, t5, t4
                  beq          a2, a6, 229f
                  slti         gp, a4, -955
227:              sub          t5, s4, t3
                  ori          t5, s0, -1879
229:              auipc        a6, 90147
                  auipc        t4, 962382
                  blt          a0, a7, 241f
232:              bge          t5, s2, 234f
                  bgeu         a4, a4, 246f
234:              nop
                  bge          t3, s3, 246f
                  bltu         t1, s8, 240f
                  or           s4, t4, ra
                  sltu         ra, s8, s10
                  xori         s3, s4, 926
240:              andi         a2, s10, 87
241:              sra          t2, s11, tp
                  bgeu         zero, tp, 252f
                  or           a3, s6, a4
                  slti         tp, a2, -652
                  slli         t6, a4, 3
246:              slli         t2, a1, 22
                  ori          t0, s9, 1315
                  or           a4, zero, t0
                  bne          t0, sp, 268f
                  nop
                  add          s3, t6, a6
252:              auipc        a4, 246603
                  sra          t4, a7, t5
                  auipc        s3, 653014
                  slli         t3, t0, 25
                  bge          gp, gp, 274f
                  lui          a4, 464782
                  xori         t5, ra, -1028
                  srai         s0, s1, 11
                  xor          tp, s11, sp
                  lui          t4, 327544
                  addi         a3, a4, 718
                  sra          a4, a7, s10
                  xor          gp, t1, s1
                  bltu         ra, t1, 267f
                  beq          s8, s2, 271f
267:              sub          a7, a7, s0
268:              and          s3, a5, t6
                  or           s0, t4, t3
                  slt          t3, t6, a6
271:              sra          a0, t3, a7
                  ori          s9, ra, 145
                  blt          s10, tp, 275f
274:              and          gp, t2, s0
275:              sltiu        s6, s5, -125
                  srli         t2, a7, 2
                  add          s4, s8, t3
                  slti         s2, a5, -572
                  xori         tp, ra, -1716
                  slt          a5, a7, gp
                  auipc        a4, 189379
                  andi         s10, t5, -799
                  nop
                  sltiu        s8, a6, 1655
                  add          t5, t0, a7
                  sub          a4, a7, sp
                  slli         t4, gp, 4
                  or           t3, t0, s2
                  ori          zero, t2, 1086
                  slli         a6, s7, 21
                  sltiu        s0, s3, -119
                  xori         t2, t4, 1201
                  andi         t6, t3, -1873
                  addi         gp, s6, 1347
                  srl          s11, s0, t5
                  sra          zero, ra, s6
                  srl          a6, s5, sp
                  xor          s11, s6, t2
                  addi         a7, ra, -1514
                  sltu         s3, s3, s2
                  sltiu        s6, s0, -1776
                  bgeu         a6, a6, 310f
                  nop
                  xor          a3, a2, s10
                  sltiu        t1, zero, 1470
                  addi         zero, s3, -1741
                  blt          t4, s2, 315f
                  srai         a4, s3, 31
                  auipc        tp, 289871
310:              bne          s4, s10, 316f
                  ori          zero, t2, -297
                  srli         t2, tp, 13
                  slti         t3, t6, -332
                  srli         a3, a1, 8
315:              slli         s6, a6, 16
316:              srai         a2, a7, 9
                  andi         s11, t1, -838
                  bge          gp, a5, 333f
                  srl          t2, s11, a2
                  xor          s5, s5, ra
                  nop
                  sltiu        a0, s3, 459
                  beq          s0, s5, 324f
324:              slli         s0, t6, 6
                  blt          a2, a6, 331f
                  auipc        tp, 69457
                  and          s4, a2, gp
                  sltu         zero, tp, s9
                  bne          zero, a5, 345f
                  slt          a3, s9, t1
331:              lui          s3, 108880
                  addi         s0, zero, -6 #init loop 1 counter
                  addi         a0, zero, 8 #init loop 1 limit
sub_1_5_1_t:      auipc        s6, 307397
                  addi         s0, s0, 2 #update loop 1 counter
                  ori          t1, a0, 773
                  addi         s10, zero, 7 #init loop 0 counter
                  addi         t6, zero, 15 #init loop 0 limit
sub_1_5_0_t:      sltu         s6, t6, gp
                  srl          t5, a7, t0
                  addi         s10, s10, 2 #update loop 0 counter
                  blt          s10, t6, sub_1_5_0_t #branch for loop 0
                  bne          s0, a0, sub_1_5_1_t #branch for loop 1
                  add          zero, s6, zero
                  slti         a4, a3, -798
333:              bne          gp, t5, 337f
                  lui          a2, 537326
                  sll          s6, s2, s8
                  nop
337:              bne          s10, t2, 352f
                  slti         s11, a3, -1060
                  sltu         s8, s6, s10
                  slli         a5, t6, 10
                  slt          a0, t2, t6
                  xor          a3, t4, s6
                  srai         a6, s9, 27
                  addi         t4, a6, 571
345:              lui          a5, 245056
                  slt          t2, s4, zero
                  add          zero, a3, gp
                  srai         zero, t0, 26
                  slti         a3, s0, -111
                  or           s10, s1, a5
                  add          s10, s4, gp
352:              sll          a4, t3, s5
                  sll          a2, s11, tp
                  or           a0, s3, a5
                  and          s5, a2, zero
                  srli         t5, tp, 30
                  lui          t3, 266609
                  or           a3, t0, s0
                  slt          s2, a6, t5
                  bne          a7, tp, 374f
                  xori         t5, sp, 1987
                  andi         t5, t1, -1813
                  and          t3, a1, a2
                  sll          s6, t1, s0
                  sub          a2, s3, a6
                  sll          a5, a0, gp
                  sra          a3, s2, s5
                  nop
                  bgeu         t6, a0, 385f
                  bne          t6, t0, 372f
                  ori          s5, a0, -1993
372:              sll          s7, a2, t4
                  bne          a7, a5, 377f
374:              sra          s2, s3, ra
                  srl          s5, t0, s11
                  srl          t1, t6, a7
377:              bge          s5, s11, 389f
                  bge          s2, a6, 389f
                  bgeu         s9, a3, 384f
                  ori          a5, s2, -1714
                  bltu         sp, t6, 395f
                  sll          s0, a1, s10
                  or           t6, t5, t6
384:              ori          a3, s1, -1939
385:              bge          t3, s9, 388f
                  slt          ra, a2, t4
                  sltu         s3, s6, gp
388:              xor          s9, a0, s2
389:              ori          a4, s2, 570
                  srl          a6, a3, t5
                  slti         ra, a1, -2036
                  xor          a4, ra, a5
                  sltu         gp, t5, t5
                  slti         s7, t0, 1425
395:              srli         a6, ra, 2
                  add          a6, s10, a7
                  add          t3, s2, t1
                  sll          t3, zero, s2
                  srl          a5, a2, a1
                  sub          zero, a7, a1
                  auipc        a0, 511317
                  srl          tp, s3, s8
                  nop
                  addi         s0, zero, 1404
                  blt          s6, a5, 420f
                  slt          s9, s0, a2
                  srli         tp, a7, 27
                  srl          s2, sp, sp
                  bltu         a7, a7, 421f
                  slti         zero, t2, 1630
                  bltu         s4, ra, 420f
                  slti         a0, s7, 1921
                  sra          s2, s6, s2
                  blt          gp, t4, 430f
                  nop
                  addi         s4, t2, -54
                  nop
                  bge          t3, s11, 426f
                  blt          s9, t2, 429f
420:              blt          t1, s9, 424f
421:              sltu         s3, a7, s7
                  slti         a6, s1, -1981
                  sub          a4, s1, s6
424:              bne          a6, a0, 432f
                  xor          s6, a4, a0
426:              sll          t5, ra, s1
                  beq          s3, t2, 443f
                  bgeu         a4, t5, 429f
429:              sub          a6, t5, s4
430:              sub          a3, s3, s9
                  sub          t3, s6, a0
432:              and          t6, s2, tp
                  xori         s8, s11, -514
                  slli         s4, a1, 6
                  auipc        a7, 337422
                  slli         s9, t3, 31
                  bne          s5, a2, 451f
                  sll          a7, s7, t4
                  sra          s4, zero, t2
                  addi         t1, a1, -67
                  slti         a2, s6, 706
                  slli         a0, s8, 10
443:              srl          s8, s1, s11
                  addi         s0, t1, 1196
                  xori         s3, t3, -2030
                  add          s0, t0, t3
                  srl          a2, s10, t3
                  slli         s4, a3, 5
                  add          t4, a6, s3
                  slt          s5, t3, s10
451:              add          a6, ra, a2
                  or           ra, sp, t0
                  addi         s10, a5, -1683
                  addi         s10, a3, 1215
                  bltu         a3, t2, 468f
                  slti         t2, a0, -1859
                  srai         t0, s0, 2
                  or           t0, s11, t0
                  nop
                  addi         zero, s2, -1130
                  lui          a2, 435539
                  auipc        s10, 754714
                  blt          t0, a5, 465f
                  xor          a5, s6, a7
465:              bgeu         s2, a2, 469f
                  addi         s8, zero, -1 #init loop 0 counter
                  addi         s4, zero, 18 #init loop 0 limit
                  sltu         a5, s3, t3
sub_1_8_0_t:      auipc        s10, 698837
                  addi         s8, s8, 4 #update loop 0 counter
                  add          t3, s9, a0
                  xori         a2, s10, -1819
                  sra          t0, t2, a3
                  blt          s8, s4, sub_1_8_0_t #branch for loop 0
                  addi         a3, s11, -948
                  bge          t5, ra, 472f
                  slti         t1, t3, -69
468:              slt          t5, s1, s3
469:              bgeu         t0, t4, 488f
                  xor          s6, tp, s4
                  sltiu        t1, t3, -348
472:              bne          s5, gp, 490f
                  bgeu         s8, s5, 475f
                  srai         a2, t0, 11
475:              srli         ra, t4, 27
                  beq          zero, s1, 491f
                  xor          s3, s7, s7
                  andi         a2, tp, 280
                  bltu         a1, s8, 490f
                  slt          t6, s7, a5
                  xori         s3, sp, 1793
                  bltu         a5, t4, 487f
                  nop
                  xor          s4, t4, s6
                  bne          t1, zero, 496f
                  sltiu        ra, tp, 676
487:              slti         a7, s4, -901
488:              sll          s4, s6, s9
                  sra          t1, a1, a2
490:              sltu         t2, s3, s11
491:              or           a0, a7, s4
                  and          s3, sp, a4
                  sltiu        a5, t2, 503
                  slti         s10, ra, 1210
                  slt          t4, t2, ra
496:              sltiu        tp, t4, 49
                  srli         s8, a1, 15
                  bgeu         s4, a7, 500f
                  sltu         t1, a3, ra
500:              sra          a4, s6, a6
                  slt          a7, s2, a5
                  add          t0, s1, a1
                  srai         a3, t6, 24
                  slt          t6, t2, s10
                  addi         s6, zero, 5 #init loop 0 counter
                  addi         t1, zero, 14 #init loop 0 limit
sub_1_11_0_t:     add          a2, s0, s10
                  addi         s6, s6, 6 #update loop 0 counter
                  bltu         s6, t1, sub_1_11_0_t #branch for loop 0
                  srai         gp, s1, 0
                  and          gp, s1, a0
                  sra          s4, tp, a3
                  and          s5, a6, a0
                  sltu         a3, zero, s5
                  bge          s10, s9, 524f
                  xori         t0, t4, -449
                  blt          a6, s11, 520f
                  sra          a5, ra, a1
                  bltu         a6, s9, 525f
                  xor          t6, gp, s10
                  sub          s11, a6, s5
                  beq          sp, a2, 528f
                  addi         a4, s7, 162
                  addi         s6, a1, 1110
                  and          t0, t4, s2
520:              slt          a3, ra, s7
                  and          a6, s0, a2
                  sub          ra, a5, s1
                  blt          a0, s3, 528f
524:              lui          s7, 279337
525:              andi         s5, t1, -1763
                  auipc        s7, 471548
                  blt          s0, t2, 541f
528:              srli         t4, s2, 1
                  addi         a3, t2, 744
                  andi         t5, s5, -941
                  sll          s11, s5, s8
                  ori          t5, s3, -422
                  addi         a5, s7, -272
                  sltiu        tp, ra, -1356
                  ori          t5, a2, 786
                  slti         t2, t2, 1650
                  slt          s11, a6, s11
                  or           s11, a4, zero
                  sll          s9, s0, ra
                  nop
541:              sub          t0, a3, s6
                  sltiu        gp, s2, -1035
                  sra          t2, s0, a0
                  blt          a0, s4, 550f
                  srli         a7, s7, 8
                  addi         s6, s0, -1470
                  srai         t1, s2, 5
                  srl          s10, t1, s0
                  sltu         t2, t5, s11
550:              auipc        t2, 425945
                  bltu         s9, a0, 555f
                  sltiu        a5, tp, 52
                  beq          s6, s6, 568f
                  beq          tp, s7, 557f
555:              addi         s10, tp, -1242
                  xor          zero, t6, a6
557:              srai         a6, t5, 4
                  addi         t1, a2, 1323
                  sub          t2, a3, t6
                  add          a0, t3, s2
                  slli         ra, s3, 8
                  sll          ra, t1, a2
                  or           s9, t5, t2
                  slli         gp, t1, 27
                  xor          s4, t0, t2
                  addi         t4, zero, 10 #init loop 0 counter
                  lui          s6, 232245
                  slli         s4, s4, 25
                  addi         s3, zero, 7 #init loop 0 limit
                  add          s11, a7, s2
                  addi         t2, tp, 936
sub_1_9_0_t:      slt          t5, s1, t2
                  srli         t0, gp, 17
                  and          s7, a1, a2
                  sub          a6, a6, a2
                  addi         t4, t4, -1 #update loop 0 counter
                  bgeu         t4, s3, sub_1_9_0_t #branch for loop 0
                  srli         s10, t3, 4
                  sub          s8, t5, a0
                  auipc        s5, 535738
568:              add          s9, t4, s11
                  lui          t6, 940410
                  bgeu         a7, t1, 589f
                  srl          zero, a0, s3
                  sub          s4, s9, tp
                  xori         t1, a4, 254
                  andi         s11, t2, -975
                  sltu         s6, a4, a4
                  blt          a6, t6, 580f
                  sra          s0, a4, a0
                  blt          s1, s9, 594f
                  xori         a2, t1, -1329
580:              and          t2, zero, s6
                  srl          a3, s10, s2
                  nop
                  blt          t1, s10, 601f
                  andi         t5, tp, 1232
                  sltiu        s2, t5, 891
                  slli         a4, a1, 18
                  or           s10, zero, s3
                  slti         t1, sp, -1270
589:              xori         s7, t6, 873
                  slli         t2, a2, 18
                  srai         s5, sp, 0
                  sll          s5, s10, ra
                  auipc        a0, 797656
594:              slli         a5, a1, 28
                  or           s0, a6, s7
                  slt          s8, a4, s4
                  bne          a1, t6, 603f
                  slt          a0, s10, s4
                  slt          t2, t4, a2
                  slti         s4, a2, 1520
601:              bge          t1, t2, 605f
                  sltu         s4, s2, s8
603:              slti         s11, sp, 543
                  or           s5, s4, s5
605:              srl          a5, t5, sp
                  ori          t1, a6, -1014
                  and          a7, a4, s7
                  bltu         s4, t2, 622f
                  or           a4, a5, a4
                  sll          s4, a5, s2
                  srl          s10, a5, sp
                  slli         a0, ra, 5
                  srli         s5, gp, 24
                  sll          t6, a0, s2
                  srai         s6, t2, 0
                  bge          zero, s9, 628f
                  bltu         a1, ra, 631f
                  andi         a4, t3, 1334
                  lui          t6, 162916
                  blt          a4, s8, 635f
                  xori         s5, s5, -1283
622:              sltu         s6, gp, a2
                  lui          t6, 818346
                  srl          s2, t1, s0
                  srai         s0, t0, 27
                  auipc        t4, 667384
                  xori         s3, s0, -128
628:              lui          s3, 561733
                  bne          s10, a2, 631f
                  sra          a3, gp, a4
631:              xor          tp, a0, s10
                  ori          tp, a5, 568
                  or           s9, s6, t1
                  sra          t1, a2, t6
635:              or           s3, a7, t4
                  and          s9, a6, a0
                  bltu         t6, a1, 639f
                  beq          a2, a1, 644f
639:              srai         s7, sp, 15
                  slt          t6, gp, s9
                  bltu         s1, zero, 645f
                  bge          s4, a0, 647f
                  beq          gp, s3, 656f
644:              xor          a2, a4, s5
645:              auipc        t1, 666794
                  or           a0, s6, a7
647:              slli         a7, t2, 0
                  srai         a7, s11, 17
                  bge          s11, s4, 657f
                  slti         a3, s10, 1118
                  slt          s2, tp, s1
                  or           s8, s1, a2
                  nop
                  addi         a5, s0, 1670
                  srli         s6, sp, 12
656:              ori          s8, s10, -1294
657:              slt          gp, t6, t2
                  sltu         a4, ra, s3
                  sll          a3, t1, a5
                  addi         s7, s1, 279
                  lw           t4, 4(s1)
                  addi         s1, s1, 40
                  srai         s10, a4, 31
                  addi         a4, s3, 905
916:              addi x16, x29, 0
916:              jalr x16, x16, 0
sub_3:            sltiu        s7, a7, 1970
                  addi         s1, s1, -64
                  srl          s10, s11, t2
                  sra          tp, s4, ra
                  auipc        s3, 504039
                  sw           t4, 4(s1)
                  srli         t2, t1, 22
                  sltu         a5, t0, tp
                  slt          s4, s9, a7
                  and          s4, s5, a6
                  sltiu        a2, s3, -392
                  sll          s4, t5, s1
                  bne          sp, zero, 12f
                  beq          s3, gp, 11f
                  bge          a5, a3, 11f
                  lui          zero, 796373
                  or           s10, a6, t4
                  bne          ra, t0, 23f
11:               srai         s9, a0, 28
12:               sub          s2, sp, s5
                  srli         s3, s9, 25
                  sltiu        s10, t3, 656
                  and          a3, s3, a3
                  sub          a7, a3, s11
                  slli         s2, t3, 20
                  ori          a6, gp, 1692
                  slt          zero, a3, s7
                  sltu         s2, a0, s7
                  bne          t2, a1, 23f
                  bltu         t0, t1, 23f
23:               sub          ra, zero, a0
                  lw           t4, 4(s1)
                  xor          a2, s3, a2
                  auipc        t2, 162351
                  xori         s10, sp, -711
                  addi         s1, s1, 64
                  srli         tp, t2, 6
37:               addi x27, x29, 0
37:               jalr x27, x27, 0
sub_5:            addi         s1, s1, -60
                  sub          s8, a1, t0
                  andi         s9, t6, 122
                  and          a7, a6, gp
                  sw           t4, 4(s1)
                  sltu         a3, s1, t3
                  slti         a7, a3, -812
                  auipc        s4, 146687
                  xor          a6, s11, a6
                  addi         s5, zero, 10 #init loop 1 counter
                  auipc        s10, 415634
                  lui          tp, 361878
                  slli         gp, s11, 31
                  addi         a2, zero, 8 #init loop 1 limit
                  addi         a3, s1, -1255
                  and          t6, s7, t5
                  sltiu        zero, a5, -1687
sub_5_14_1_t:     ori          s3, zero, 2044
                  sltu         s0, s7, s1
                  addi         s5, s5, -4 #update loop 1 counter
                  lui          s6, 688100
                  addi         ra, zero, 7 #init loop 0 counter
                  slt          t0, s1, s1
                  addi         t4, zero, 7 #init loop 0 limit
sub_5_14_0_t:     andi         a0, a1, -1256
                  sra          a7, s10, a0
                  andi         s8, t6, -1676
                  addi         ra, ra, -4 #update loop 0 counter
                  bgeu         ra, t4, sub_5_14_0_t #branch for loop 0
                  srai         a3, s4, 16
                  add          s6, s2, s4
                  bgeu         s5, a2, sub_5_14_1_t #branch for loop 1
                  nop
                  addi         t0, zero, 8 #init loop 0 counter
                  lui          t5, 673756
                  and          t4, s7, t6
                  add          t4, ra, s8
                  andi         s7, s6, 1988
                  addi         a4, zero, -17 #init loop 0 limit
                  sra          t1, s0, s7
sub_5_6_0_t:      sltu         s4, s10, gp
                  sltu         tp, a4, t1
                  addi         t0, t0, -5 #update loop 0 counter
                  srl          t6, s3, s10
                  andi         s3, s3, -144
                  sll          s7, s5, sp
                  auipc        s7, 291331
                  sub          zero, s3, s6
                  addi         t2, t0, -608
                  srai         gp, a5, 22
                  xori         s10, s11, -639
                  srl          s8, t1, s4
                  and          a2, s10, a3
                  srai         a7, a2, 12
                  srli         t2, t1, 18
                  srl          gp, a7, ra
                  add          s2, t4, tp
                  bne          t0, a4, sub_5_6_0_t #branch for loop 0
                  andi         s8, gp, -222
                  addi         t2, zero, 2 #init loop 1 counter
                  addi         t4, zero, -15 #init loop 1 limit
                  slt          a4, a1, s0
sub_5_7_1_t:      ori          s4, a4, -1370
                  sub          t0, s9, t1
                  addi         t2, t2, -10 #update loop 1 counter
                  addi         a0, zero, 8 #init loop 0 counter
                  xori         a3, s8, -779
                  addi         s9, zero, -12 #init loop 0 limit
sub_5_7_0_t:      or           tp, a7, a5
                  addi         a0, a0, -5 #update loop 0 counter
                  ori          a3, tp, 1628
                  beq          a0, s9, sub_5_7_0_t #branch for loop 0
                  bge          t2, t4, sub_5_7_1_t #branch for loop 1
                  sltu         s4, a5, s1
                  addi         t5, zero, 10 #init loop 0 counter
                  addi         s11, zero, 10 #init loop 0 limit
                  auipc        zero, 189899
                  sltiu        gp, s1, 1583
                  slti         a4, s4, 1226
sub_5_2_0_t:      add          s0, sp, s7
                  ori          s0, tp, -556
                  addi         t5, t5, -5 #update loop 0 counter
                  slti         a3, t3, 2000
                  addi         a0, tp, -891
                  sub          s9, a4, a0
                  or           s9, s1, s0
                  srli         a2, s6, 18
                  srai         s9, s10, 4
                  addi         t6, a5, -237
                  or           a7, t5, t4
                  add          t1, tp, s8
                  sltu         s9, s10, t1
                  sltu         gp, s0, t1
                  xori         t1, a0, -380
                  xori         t2, s6, 1772
                  xori         a3, a5, 1488
                  sub          ra, a3, t1
                  bgeu         t5, s11, sub_5_2_0_t #branch for loop 0
                  srli         a6, s6, 12
                  addi         t1, zero, 10 #init loop 1 counter
                  sub          a7, t0, a7
                  addi         a5, zero, 10 #init loop 1 limit
                  nop
sub_5_11_1_t:     sub          t2, sp, a0
                  or           t5, s9, a6
                  or           s8, a7, a5
                  addi         t1, t1, -7 #update loop 1 counter
                  andi         t2, zero, 725
                  srli         a2, zero, 12
                  addi         t6, zero, 7 #init loop 0 counter
                  addi         gp, zero, -8 #init loop 0 limit
                  sub          a2, s1, a1
sub_5_11_0_t:     sub          t2, s9, s5
                  addi         t6, t6, -9 #update loop 0 counter
                  bge          t6, gp, sub_5_11_0_t #branch for loop 0
                  addi         a2, gp, -1130
                  bgeu         t1, a5, sub_5_11_1_t #branch for loop 1
                  ori          a0, s11, 487
                  addi         s2, zero, -6 #init loop 0 counter
                  add          s9, a6, a5
                  slti         a5, s2, 907
                  addi         s3, zero, 15 #init loop 0 limit
                  slli         a4, s2, 3
sub_5_10_0_t:     sltiu        ra, s3, -478
                  addi         s2, s2, 4 #update loop 0 counter
                  blt          s2, s3, sub_5_10_0_t #branch for loop 0
                  srai         t0, s7, 15
                  addi         s3, zero, 4 #init loop 0 counter
                  xori         t3, s3, 360
                  addi         s4, zero, 15 #init loop 0 limit
                  srli         t0, s7, 16
sub_5_3_0_t:      andi         a2, s5, -14
                  addi         s3, s3, 3 #update loop 0 counter
                  blt          s3, s4, sub_5_3_0_t #branch for loop 0
                  sll          a3, t5, a2
                  addi         s2, zero, 10 #init loop 0 counter
                  srli         t6, s6, 18
                  slti         s3, s3, 1939
                  addi         a2, zero, 9 #init loop 0 limit
                  andi         t2, s6, 1843
                  sll          s0, t1, s8
                  nop
sub_5_1_0_t:      xor          t1, s11, a2
                  slli         s11, a4, 14
                  andi         tp, s7, 451
                  addi         s2, s2, -7 #update loop 0 counter
                  lui          gp, 851700
                  bgeu         s2, a2, sub_5_1_0_t #branch for loop 0
                  auipc        s3, 200002
                  addi         t3, zero, 10 #init loop 1 counter
                  addi         a6, zero, 6 #init loop 1 limit
                  sltiu        s6, a5, -1845
                  srai         s9, a7, 14
sub_5_12_1_t:     lui          s10, 572881
                  nop
                  addi         gp, a7, -1072
                  sltu         s3, s7, zero
                  ori          ra, a4, -1947
                  addi         t3, t3, -4 #update loop 1 counter
                  sub          t0, zero, s9
                  addi         s8, zero, -7 #init loop 0 counter
                  sltiu        a0, t0, 169
                  srai         s9, a6, 9
                  add          gp, zero, sp
                  addi         s9, s4, -1913
                  sltu         ra, gp, a2
                  addi         a2, zero, 2 #init loop 0 limit
                  ori          s4, t1, -304
                  and          s10, t6, s7
                  or           s2, s5, s6
sub_5_12_0_t:     lui          s11, 940620
                  sltiu        s7, a4, 1170
                  addi         s8, s8, 4 #update loop 0 counter
                  bltu         s8, a2, sub_5_12_0_t #branch for loop 0
                  srli         s7, t3, 8
                  slli         a4, t6, 20
                  bgeu         t3, a6, sub_5_12_1_t #branch for loop 1
                  auipc        t4, 326806
                  addi         t3, zero, 9 #init loop 1 counter
                  addi         tp, zero, -18 #init loop 1 limit
                  srai         a5, s6, 29
sub_5_15_1_t:     sltu         s6, s6, s7
                  addi         t3, t3, -1 #update loop 1 counter
                  addi         gp, zero, 1 #init loop 0 counter
                  addi         s4, zero, -5 #init loop 0 limit
                  xori         a4, a0, -1083
sub_5_15_0_t:     xori         s11, t5, -449
                  addi         gp, gp, -6 #update loop 0 counter
                  beq          gp, s4, sub_5_15_0_t #branch for loop 0
                  bne          t3, tp, sub_5_15_1_t #branch for loop 1
                  srl          ra, a7, ra
                  slti         t1, t6, -2020
                  sub          s3, tp, s5
                  nop
                  slti         s4, t4, 252
                  nop
                  slt          t0, s1, t1
                  ori          a4, s2, -2013
                  srli         s11, s6, 15
                  addi         s6, a3, 1091
                  or           t5, t5, s11
                  lui          a4, 783302
                  srai         t1, s8, 15
                  srai         s11, t6, 29
                  sltu         s2, t3, t6
                  xor          t1, a7, s4
                  sll          a6, a7, t0
                  ori          a2, a6, 698
                  sltiu        s2, a3, 1763
                  bltu         sp, a0, 20f
                  xori         s2, s4, 1939
20:               blt          t1, s2, 34f
                  or           gp, t1, ra
                  add          s8, s4, zero
                  sll          t5, a7, t0
                  bgeu         t5, t1, 31f
                  slt          t1, s7, gp
                  srli         gp, t2, 30
                  bgeu         gp, s3, 28f
28:               sltu         a3, tp, s6
                  slt          t3, t4, t4
                  addi         t1, t3, 138
31:               bne          tp, t1, 37f
                  bltu         a1, s4, 47f
                  blt          ra, a7, 38f
34:               or           zero, a3, a7
                  xori         s2, t0, -612
                  srai         s10, ra, 22
37:               ori          t4, ra, 108
38:               lui          t0, 831559
                  slt          s5, a3, s9
                  sltiu        t2, s8, 634
                  bgeu         s5, t0, 42f
42:               addi         t1, s1, 1639
                  xori         a7, t4, 1120
                  slli         s11, a5, 0
                  blt          s3, a6, 60f
                  and          s2, zero, t6
47:               blt          zero, zero, 51f
                  srli         t6, s0, 9
                  sltu         s8, s10, a0
                  sra          zero, s1, s8
51:               lui          s9, 747855
                  sltiu        t2, s5, 1551
                  add          s9, sp, t5
                  andi         tp, s7, 1310
                  sll          a7, a4, s8
                  or           a4, t1, t4
                  slt          a3, t2, s9
                  slli         s9, t3, 21
                  bltu         t5, s10, 60f
60:               or           a6, a0, s2
                  ori          s3, t3, 742
                  sltiu        t1, a2, 935
                  sll          s10, gp, t0
                  ori          t5, tp, 1441
                  and          s4, t0, t2
                  ori          s4, s4, -985
                  srli         t5, gp, 18
                  nop
                  sltu         t3, t6, ra
                  sltu         a0, t4, sp
                  bltu         a4, a3, 90f
                  bgeu         ra, t0, 83f
                  beq          zero, s11, 75f
                  sub          a6, t5, t6
75:               sub          s8, s3, a3
                  sltu         t5, gp, t1
                  xor          s7, s0, s10
                  or           t0, a2, a3
                  bgeu         t2, t5, 85f
                  auipc        s9, 844056
                  ori          t3, t6, 77
                  andi         t6, a1, -1846
83:               auipc        s11, 125647
                  blt          s8, t1, 92f
85:               beq          t4, s4, 92f
                  auipc        t5, 152678
                  bne          t1, s5, 105f
                  add          t1, a4, a4
                  or           t5, a6, s8
90:               sub          a3, t1, t5
                  auipc        s2, 709057
92:               bgeu         s2, s3, 100f
                  auipc        s9, 651690
                  or           s6, t4, a2
                  slli         ra, t5, 31
                  xor          s7, a5, t1
                  slt          t1, t6, zero
                  sltu         a0, s10, zero
                  xor          t1, ra, s5
100:              addi         a4, s7, 1760
                  srai         s4, s2, 29
                  sub          s3, s0, t3
                  lui          s5, 302131
                  srl          s0, tp, s5
105:              sltiu        s9, a4, -802
                  ori          s10, s10, 1758
                  slti         s10, a5, -1965
                  bne          a2, tp, 112f
                  sltu         s2, a1, t0
                  add          t2, a5, t4
                  sll          s11, s3, s0
112:              andi         a5, s1, 401
                  sll          t5, ra, s3
                  beq          t1, s6, 120f
                  xori         t0, a6, -1238
                  sltiu        s5, s4, -1555
                  auipc        a6, 52773
                  bltu         a0, t0, 124f
                  xor          t3, t3, s5
120:              sub          s0, s4, t4
                  bge          ra, a2, 136f
                  lui          s0, 207273
                  sltu         tp, t1, t5
124:              lui          s7, 229524
                  sra          t1, t1, t0
                  bltu         a5, s6, 145f
                  bge          s2, t2, 136f
                  bgeu         a2, a2, 138f
                  bne          s5, s4, 141f
                  addi         s4, zero, 7 #init loop 1 counter
                  addi         t0, zero, 7 #init loop 1 limit
                  and          s11, s5, a0
                  slli         t1, a7, 26
                  srli         t2, s7, 10
                  sra          t5, a6, s4
sub_5_13_1_t:     xor          s3, sp, a7
                  addi         s4, s4, -5 #update loop 1 counter
                  add          zero, s1, a1
                  sltu         t5, a3, t6
                  sra          zero, ra, s3
                  and          s11, tp, t3
                  addi         t3, zero, 3 #init loop 0 counter
                  sub          a2, s0, a1
                  or           s10, ra, s4
                  or           a2, a6, ra
                  slli         a7, gp, 8
                  auipc        tp, 941692
                  srli         s7, a6, 7
                  slti         zero, s11, -561
                  addi         s2, zero, 5 #init loop 0 limit
                  xor          a6, a5, t4
sub_5_13_0_t:     addi         t5, s0, -194
                  ori          a2, a7, 198
                  lui          a2, 205481
                  addi         t3, t3, 3 #update loop 0 counter
                  bltu         t3, s2, sub_5_13_0_t #branch for loop 0
                  xori         s8, s5, -998
                  srl          t6, t4, sp
                  slti         s11, s0, 607
                  bgeu         s4, t0, sub_5_13_1_t #branch for loop 1
                  sra          s6, a2, s11
                  bge          a5, a0, 134f
                  bge          gp, s3, 137f
                  slti         t3, a4, 778
                  nop
134:              sltu         t6, s0, t2
                  and          t3, s10, sp
136:              auipc        s4, 887475
137:              bge          a0, gp, 147f
138:              add          t0, gp, s9
                  xor          s9, s3, ra
                  andi         a4, sp, 809
141:              nop
                  srai         zero, zero, 8
                  sra          t1, gp, s10
                  bge          gp, ra, 153f
145:              sltiu        t2, sp, -1939
                  bne          s7, a4, 164f
147:              sll          s0, a3, sp
                  ori          s9, a4, 1021
                  bltu         s7, a1, 164f
                  or           s5, t2, s7
                  beq          ra, s10, 163f
                  sltu         a6, s7, s4
153:              ori          s9, ra, -32
                  bgeu         t3, a4, 156f
                  srli         a2, s11, 16
156:              lui          a2, 821223
                  auipc        s7, 556711
                  ori          t5, a0, -1572
                  srli         t4, a0, 6
                  bge          a7, t4, 161f
161:              or           a0, t5, a7
                  bltu         s0, s8, 163f
163:              bge          s4, s6, 182f
164:              addi         tp, t3, -1761
                  slt          s2, gp, a6
                  slti         s0, s8, 604
                  nop
                  and          s10, s0, s9
                  add          a5, a5, a6
                  sltiu        zero, t2, 1458
                  bgeu         t4, t3, 186f
                  sltiu        s0, s11, -909
                  add          t2, a6, a5
                  blt          s9, s7, 180f
                  lui          s9, 451694
                  slli         s2, ra, 0
                  nop
                  auipc        a4, 787037
                  ori          t1, zero, -962
180:              slti         s7, tp, 145
                  auipc        a0, 24079
182:              srli         s5, s3, 3
                  ori          a5, s10, -1487
                  blt          sp, t5, 185f
185:              bltu         a5, s10, 190f
186:              lui          a0, 297715
                  or           a4, t3, t0
                  slt          zero, a7, t3
                  bgeu         a0, s5, 208f
190:              srli         t3, s2, 0
                  slt          s9, a2, s5
                  bgeu         a3, s6, 206f
                  add          s8, t6, zero
                  xor          s6, a6, t6
                  xor          s0, t1, s6
                  slli         t2, t2, 22
                  xori         t5, s5, 1807
                  nop
                  srai         t6, a6, 21
                  slli         s3, s8, 20
                  blt          s4, t0, 216f
                  lui          s4, 700113
                  slti         gp, s3, 796
                  slli         s9, t0, 2
                  sltiu        tp, s8, -26
206:              srai         t2, a0, 25
                  or           t2, a1, sp
208:              srai         s7, s11, 14
                  auipc        s9, 199209
                  auipc        t0, 628701
                  slli         t1, ra, 15
                  xor          s7, t3, s4
                  slt          t1, s1, a3
                  lui          zero, 196872
                  and          a6, a6, a0
216:              bltu         a4, a3, 222f
                  xor          s9, s8, t0
                  xor          a6, s4, s5
                  bne          t3, a2, 225f
                  addi         a6, sp, 457
                  bge          t2, s3, 232f
222:              bge          s9, gp, 232f
                  xor          ra, t3, a5
                  andi         a0, s10, -2026
225:              sll          s6, t4, a3
                  addi         s8, s9, -1647
                  sll          t3, s1, a6
                  blt          s9, t4, 234f
                  xor          t2, a5, s3
                  auipc        s10, 12210
                  xor          s3, s7, s6
232:              sltu         a6, s11, s3
                  bltu         a6, a5, 237f
234:              and          s10, s8, t4
                  srai         s11, ra, 24
                  beq          t3, t3, 243f
237:              bltu         s5, s9, 247f
                  bgeu         t5, s7, 244f
                  xor          s5, ra, t0
                  sltiu        a0, t3, 1099
                  beq          a4, a4, 248f
                  sltiu        s4, s11, 348
243:              slt          t4, t4, a4
244:              beq          a3, t2, 252f
                  bltu         a6, a0, 247f
                  bgeu         a5, s9, 250f
247:              auipc        s7, 803752
248:              sra          a4, s2, s4
                  srl          s6, a4, a5
250:              sltiu        t6, s8, -1649
                  ori          s2, zero, 253
252:              slli         t0, t0, 18
                  nop
                  bne          a3, gp, 258f
                  srli         s2, t1, 9
                  srli         a7, t4, 23
                  bltu         tp, a6, 265f
258:              xor          s7, a3, t5
                  xori         t0, s11, 1571
                  blt          s1, a5, 265f
                  slt          t0, ra, a3
                  bgeu         s0, a1, 268f
                  or           t2, t1, ra
                  add          a0, s8, s8
265:              or           t4, ra, a1
                  sub          t6, s9, s8
                  xor          s0, t1, s2
268:              bne          a3, a0, 274f
                  sra          s11, s0, s10
                  auipc        s6, 284441
                  slt          t4, ra, a6
                  ori          s9, t3, 572
                  and          s5, s4, tp
274:              bne          s5, zero, 284f
                  blt          a0, s4, 279f
                  lui          t3, 907522
                  auipc        s11, 859144
                  srai         a0, a7, 20
279:              addi         s0, s1, 118
                  bne          s5, a1, 287f
                  sltu         gp, sp, a4
                  bge          t0, t2, 300f
                  sub          a7, a2, s2
284:              slt          a3, a5, s9
                  andi         t0, a6, 814
                  sub          s10, s1, t0
287:              lui          s7, 31277
                  xor          t1, a4, s11
                  andi         a4, sp, 1293
                  andi         a5, a5, 1409
                  add          t5, t4, t2
                  sub          s9, gp, gp
                  srli         a5, a0, 19
                  slli         zero, s5, 4
                  nop
                  bne          ra, zero, 302f
                  bltu         s5, s7, 309f
                  ori          s2, s0, -354
                  blt          t2, tp, 301f
300:              and          t5, gp, s6
301:              add          s3, a2, tp
302:              auipc        s7, 718063
                  bge          s10, tp, 309f
                  beq          t1, s2, 305f
305:              auipc        s5, 938781
                  addi         s10, sp, 1345
                  bgeu         s0, t0, 308f
308:              sra          ra, s9, s6
309:              slti         ra, s4, -1748
                  bgeu         s1, s5, 316f
                  ori          s9, s4, -1930
                  bltu         t3, s9, 323f
                  srai         s0, s11, 21
                  xor          a7, t5, s3
                  sltu         s11, ra, t1
316:              slt          s10, t6, s1
                  xori         zero, t6, 1984
                  xori         s4, t1, 1114
                  addi         a3, gp, -328
                  srai         t0, a4, 16
                  bgeu         sp, s10, 325f
                  slt          s9, s8, a7
323:              sll          s8, s7, s10
                  slt          a6, t0, zero
325:              slli         s3, t3, 20
                  sltiu        s8, a3, -816
                  srai         s2, s6, 1
                  and          t3, s7, tp
                  bge          s2, a6, 339f
                  bge          t5, s7, 337f
                  xor          a3, s6, a5
                  sub          s3, a0, t4
                  add          s11, t0, t3
                  bne          a3, s6, 349f
                  slt          t4, a5, t1
                  sltiu        a0, s9, 240
337:              and          t6, s6, zero
                  bne          t5, s2, 347f
339:              or           a7, t2, t1
                  xori         t0, sp, 709
                  xori         s0, a3, 1932
                  nop
                  beq          tp, s2, 357f
                  srai         a7, s9, 9
                  sltu         t1, sp, t4
                  bltu         t6, ra, 365f
347:              addi         s11, s10, 206
                  add          s11, t1, t1
349:              nop
                  xor          a0, gp, t0
                  srl          a7, a2, a6
                  ori          t0, a6, -441
                  slti         a6, t0, -1515
                  slti         s9, s7, 1384
                  andi         s4, tp, 620
                  srl          t5, a6, s10
357:              xor          tp, sp, s6
                  bltu         tp, s8, 373f
                  blt          t1, s10, 363f
                  sltu         s5, a0, s7
                  slti         a4, s8, -1185
                  slli         a5, t6, 9
363:              ori          t1, a4, 1377
                  blt          a5, a0, 372f
365:              ori          a4, t0, -979
                  blt          t2, s11, 368f
                  andi         s5, s6, 1077
368:              addi         s2, a1, -1624
                  ori          a4, t6, -363
                  srai         a5, s10, 23
                  addi         t5, a6, 418
372:              sltu         t6, t1, a7
373:              srl          a2, gp, t5
                  or           t6, t1, zero
                  bne          s0, s7, 394f
                  andi         t6, a7, 1102
                  nop
                  add          s3, s3, s1
                  xori         s0, a0, 1008
                  or           s9, s8, t6
                  slli         s3, t2, 25
                  sra          t4, s7, a4
                  or           s9, s2, t2
                  beq          a0, a2, 392f
                  slli         zero, t6, 23
                  lui          t6, 735501
                  ori          a7, a2, -961
                  xor          t4, s8, t2
                  add          a5, t6, a3
                  sltu         s0, t0, s5
                  bgeu         s6, s7, 392f
392:              or           tp, s2, tp
                  nop
394:              srl          a5, s2, s11
                  bne          a7, sp, 410f
                  andi         a5, s6, 1830
                  srli         t6, s1, 3
                  xori         t4, a1, -1485
                  nop
                  bge          t1, a4, 404f
                  slt          gp, t3, a0
                  bltu         t3, s11, 409f
                  auipc        s11, 587429
404:              bgeu         a5, t1, 423f
                  xori         gp, ra, 221
                  sra          gp, a5, a7
                  bltu         a5, s3, 422f
                  xori         s0, sp, 1887
409:              auipc        gp, 193643
410:              slli         s7, s7, 14
                  andi         s3, t3, -1312
                  ori          a2, a6, 735
                  blt          t4, s6, 431f
                  beq          t1, a0, 422f
                  add          s6, t4, s3
                  sll          s2, tp, gp
                  sll          s6, s2, t3
                  auipc        s8, 223547
                  bgeu         s6, a2, 429f
                  slt          tp, sp, t4
                  sltiu        a5, t1, 1224
422:              sltiu        s10, a6, 1295
423:              add          s4, t6, s1
                  slti         s8, a0, -202
                  xori         t4, t2, -2042
                  srai         a4, s6, 31
                  sub          s10, s3, t2
                  nop
429:              sltu         a5, s10, ra
                  ori          s11, t2, -972
431:              addi         zero, s11, 1725
                  and          s6, s9, sp
                  xori         zero, a0, -1783
                  srl          s9, a4, a0
                  ori          s11, a1, 350
                  sra          s3, t0, s7
                  or           a2, s10, sp
                  xor          ra, a1, ra
                  xori         s2, s2, -1787
                  and          a0, t1, a0
                  ori          gp, s3, 207
                  bge          a6, a6, 444f
                  srl          a3, tp, t1
444:              xor          tp, t5, a7
                  xor          a7, s0, s1
                  and          ra, s2, s6
                  or           zero, zero, t2
                  xori         t2, gp, -962
                  add          s0, ra, s0
                  slt          a3, s0, t6
                  xor          s0, s9, tp
                  or           a0, s0, ra
                  bgeu         a0, a1, 455f
                  srli         a3, t4, 29
455:              auipc        a2, 411696
                  blt          t0, zero, 465f
                  xor          zero, s0, zero
                  or           t3, a7, gp
                  srai         s8, s4, 10
                  addi         s6, s1, -2000
                  sltiu        s11, s10, 1745
                  bgeu         a4, a7, 467f
                  bge          zero, s10, 464f
464:              srli         t3, s7, 9
465:              slt          s5, s4, s3
                  andi         s10, s3, -1026
467:              bne          a4, a2, 482f
                  nop
                  srl          zero, gp, a6
                  xori         t5, a2, -1945
                  srai         a0, s9, 28
                  srli         t3, tp, 5
                  sra          s6, tp, t2
                  or           s2, t5, s3
                  nop
                  sll          s2, s5, a2
                  blt          s7, s8, 481f
                  auipc        a5, 567127
                  sll          t2, a1, s0
                  ori          t6, a5, -383
481:              bne          gp, t5, 487f
482:              sltiu        a5, t6, -2018
                  xor          s4, t2, s1
                  addi         t6, zero, -10 #init loop 1 counter
                  ori          a6, t6, 1542
                  add          t2, a5, a7
                  sra          s10, zero, a7
                  addi         tp, zero, 12 #init loop 1 limit
sub_5_4_1_t:      sub          s10, s1, gp
                  andi         t0, ra, 1033
                  addi         t6, t6, 2 #update loop 1 counter
                  srai         s7, s0, 0
                  slli         a0, s1, 2
                  sltu         t5, t2, a4
                  addi         gp, zero, 8 #init loop 0 counter
                  nop
                  addi         s2, zero, 8 #init loop 0 limit
sub_5_4_0_t:      xori         s0, t0, -1406
                  addi         gp, gp, -3 #update loop 0 counter
                  sll          a6, t0, a6
                  sltiu        t5, t6, -1772
                  bgeu         gp, s2, sub_5_4_0_t #branch for loop 0
                  andi         a3, s7, -577
                  auipc        t4, 1010507
                  nop
                  beq          t6, tp, sub_5_4_1_t #branch for loop 1
                  add          s4, t2, t2
                  sll          ra, s7, s9
                  slli         s4, sp, 10
                  add          a3, s6, a2
487:              ori          s0, a0, -664
                  sltu         t5, s9, zero
                  bltu         a1, a4, 496f
                  slli         s0, s11, 19
                  slt          s3, s8, s2
                  slli         a5, a7, 8
                  bge          sp, ra, 504f
                  add          s4, s11, s0
                  srai         a5, s5, 1
496:              ori          a2, a5, 405
                  sltiu        zero, s9, 169
                  srli         t5, s7, 7
                  sll          a0, ra, s10
                  sltu         s9, sp, s3
                  bge          t2, a0, 507f
                  xor          a2, a0, t5
                  blt          t5, a6, 507f
504:              lui          a0, 39200
                  sltu         t3, t0, s5
                  nop
507:              bge          a6, sp, 513f
                  slti         s2, s0, 988
                  sra          a2, a3, s7
                  blt          s5, t4, 524f
                  slt          s6, s7, s10
                  slti         s0, a7, 1323
513:              sra          a4, a4, s0
                  addi         a5, zero, 7 #init loop 1 counter
                  srai         ra, t6, 6
                  srli         a0, zero, 31
                  sltiu        s5, t6, -388
                  slli         t2, zero, 30
                  addi         t6, zero, 4 #init loop 1 limit
                  slli         s2, s1, 1
sub_5_8_1_t:      slt          s3, s9, a1
                  srl          a4, a6, t1
                  srli         s7, t4, 15
                  auipc        tp, 342242
                  slt          a2, a6, a5
                  auipc        t0, 100164
                  addi         a5, a5, -6 #update loop 1 counter
                  addi         s9, zero, 6 #init loop 0 counter
                  addi         s0, zero, 8 #init loop 0 limit
                  and          tp, a3, a7
sub_5_8_0_t:      slt          a2, s9, s10
                  addi         s9, s9, 6 #update loop 0 counter
                  ori          t0, s5, 1532
                  and          a4, t4, t3
                  add          a3, t6, s11
                  srli         a7, a7, 20
                  bltu         s9, s0, sub_5_8_0_t #branch for loop 0
                  slt          a0, s4, s10
                  slli         tp, s7, 12
                  slti         a0, a4, -1435
                  and          t5, a7, ra
                  bge          a5, t6, sub_5_8_1_t #branch for loop 1
                  slt          t2, s9, t0
                  srli         tp, sp, 16
                  bge          gp, a0, 525f
                  sub          a0, a0, t1
                  slt          a3, s9, t2
                  srl          t5, s0, a4
                  xori         s2, a1, -1385
                  or           s10, tp, t4
                  srli         t6, t3, 24
                  slt          s2, gp, a6
                  slli         s7, s10, 27
524:              bltu         a5, s2, 525f
525:              add          t5, s8, s3
                  slli         a4, a0, 28
                  xor          a2, a3, s8
                  xori         s7, s3, -2031
                  slt          ra, t3, a2
                  sra          a2, s1, s0
                  xor          s7, s6, a3
                  auipc        a3, 273569
                  blt          gp, t2, 534f
534:              ori          s3, a1, 1257
                  sll          s10, s11, s9
                  sltiu        ra, a1, -1734
                  slti         s5, s6, -1874
                  xori         gp, s4, -504
                  bge          s4, a4, 558f
                  srli         t2, t4, 0
                  lui          s5, 549491
                  nop
                  sltu         t0, s3, s0
                  srli         s4, t0, 5
                  nop
                  sra          s3, zero, a5
                  bgeu         s4, t3, 553f
                  ori          t1, s6, 1853
                  bgeu         s11, ra, 555f
                  auipc        a4, 305178
                  srai         s10, a7, 24
                  xor          s11, s10, s5
553:              sltiu        s7, t1, -919
                  nop
555:              sltiu        gp, s6, -999
                  srl          t6, s1, a7
                  srai         t4, s0, 12
558:              bltu         s2, s5, 570f
                  xor          s10, s9, a1
                  and          ra, a3, a4
                  sra          s11, a3, s9
                  bge          s1, t0, 577f
                  bge          s7, a1, 571f
                  slli         s4, s11, 17
                  srai         a2, a3, 21
                  xori         s10, a5, 740
                  or           t6, a6, s8
                  bne          s8, a6, 572f
                  bge          gp, a3, 588f
570:              slli         s9, s8, 24
571:              slti         gp, sp, -1060
572:              bge          a2, a4, 587f
                  xori         zero, t4, 1667
                  xor          ra, a1, a2
                  bne          t1, s3, 579f
                  xor          a2, t1, t6
577:              or           t3, a1, a0
                  add          t0, t1, s11
579:              slti         t3, s11, 1866
                  add          s2, t0, ra
                  bgeu         gp, t0, 595f
                  xori         a6, t1, 649
                  sltu         s5, t3, s5
                  lui          gp, 200425
                  srli         a5, a5, 21
                  or           a6, t2, s4
587:              srl          ra, t1, s7
588:              auipc        s6, 520195
                  and          s10, t1, a7
                  srai         zero, t5, 20
                  bgeu         s5, s3, 592f
592:              sra          a5, ra, t3
                  bne          s8, s4, 599f
                  addi         a5, t3, 1787
595:              sra          s6, sp, a2
                  slti         ra, s6, -1311
                  sltu         s9, t5, sp
                  xor          t3, a5, t4
599:              bltu         s11, a5, 601f
                  addi         t4, zero, 6 #init loop 1 counter
                  addi         s11, zero, -18 #init loop 1 limit
sub_5_0_1_t:      slt          t0, a5, s7
                  sll          s3, s8, zero
                  slt          a6, a0, s4
                  addi         t4, t4, -4 #update loop 1 counter
                  addi         ra, zero, 5 #init loop 0 counter
                  addi         t5, zero, 16 #init loop 0 limit
                  slt          t6, tp, s1
                  addi         a0, s7, 1732
sub_5_0_0_t:      add          t0, sp, s4
                  add          a2, t5, t1
                  add          s10, t4, t4
                  lui          a5, 394731
                  srli         s4, s11, 14
                  lui          s2, 755601
                  and          s5, s11, t0
                  addi         ra, ra, 10 #update loop 0 counter
                  addi         s4, a4, -1847
                  xori         s0, t0, -1337
                  bltu         ra, t5, sub_5_0_0_t #branch for loop 0
                  nop
                  beq          t4, s11, sub_5_0_1_t #branch for loop 1
                  srl          a2, s8, t6
                  and          s5, s1, t3
601:              and          ra, a7, t1
                  sub          s8, a4, t6
                  blt          s7, s3, 609f
                  bne          ra, a4, 606f
                  sltiu        s9, a7, -400
606:              or           s6, tp, s1
                  lui          s9, 771922
                  sra          tp, zero, a5
609:              sub          t0, sp, tp
                  addi         s9, a6, -1892
                  sra          t0, t5, s1
                  bge          s10, s2, 619f
                  srli         s7, t3, 4
                  lui          s2, 979233
                  add          a6, t6, sp
                  bgeu         t6, s0, 635f
                  sll          a2, a7, a5
                  slt          s11, s9, s10
619:              bge          s8, ra, 620f
620:              lui          s5, 533450
                  srai         a7, s10, 27
                  or           s3, a7, s5
                  blt          a6, a4, 638f
                  srl          a6, a4, s7
                  nop
                  and          s2, a2, s6
                  sra          s4, t5, zero
                  sub          s10, t3, s9
                  slti         s3, t3, 1843
                  sll          s7, t5, a0
                  xori         s10, a7, -2044
                  ori          a3, t6, 1116
                  bne          s1, a5, 642f
                  sll          a4, s2, t1
635:              sltiu        t0, t2, -654
                  auipc        t0, 537864
                  ori          t1, s6, 1254
638:              sll          t6, t0, ra
                  addi         t1, zero, 541
                  sra          t0, t0, a1
                  sll          t1, s10, t3
642:              srai         ra, s1, 11
                  srai         s8, t5, 3
                  nop
                  blt          t5, gp, 653f
                  bge          ra, s3, 656f
                  bge          t3, t3, 655f
                  auipc        tp, 865835
                  xor          s8, s4, t3
                  slli         t0, s9, 6
                  addi         zero, t6, 1995
                  beq          sp, s1, 658f
653:              add          t2, ra, a7
                  slli         t1, a7, 9
655:              sltu         t0, s8, t5
656:              and          s9, ra, s2
                  nop
658:              xori         s2, tp, 481
                  sra          s3, t4, s6
                  slli         s11, zero, 29
                  bgeu         t0, sp, 662f
662:              sll          s9, a1, t1
                  bltu         tp, s0, 681f
                  ori          t4, a0, 1796
                  blt          a6, t6, 676f
                  addi         a6, zero, -2 #init loop 1 counter
                  addi         s2, zero, -12 #init loop 1 limit
sub_5_9_1_t:      ori          t4, t2, -723
                  addi         a6, a6, -6 #update loop 1 counter
                  addi         s7, zero, -3 #init loop 0 counter
                  addi         a2, zero, 12 #init loop 0 limit
sub_5_9_0_t:      nop
                  addi         s7, s7, 3 #update loop 0 counter
                  beq          s7, a2, sub_5_9_0_t #branch for loop 0
                  bge          a6, s2, sub_5_9_1_t #branch for loop 1
                  srli         s0, a2, 27
                  bgeu         t5, ra, 672f
                  slli         a4, a3, 5
                  sub          t6, tp, sp
                  add          s0, tp, a4
                  addi         a7, a0, 301
                  slt          zero, tp, s11
672:              xori         a6, a5, -1845
                  bltu         a7, t5, 685f
                  slli         t6, s1, 17
                  sltu         s6, a6, sp
676:              sltu         a0, s9, t1
                  sltiu        s7, t1, -602
                  bge          t4, t3, 693f
                  blt          tp, zero, 689f
                  sra          a3, zero, s8
681:              or           tp, s1, a2
                  slti         s3, s7, 922
                  andi         s9, sp, -1423
                  sub          s5, a1, a2
685:              andi         a0, s0, 1551
                  and          a6, zero, a3
                  blt          a1, s3, 691f
                  slt          a2, a1, gp
689:              srli         s10, s5, 25
                  add          s7, t4, a6
691:              andi         a5, sp, 140
                  andi         t3, ra, 1321
693:              blt          t6, a0, 699f
                  addi         t6, s5, -563
                  slti         zero, s11, -42
                  xori         s8, s1, -719
                  addi         s6, sp, 1495
                  sll          t2, a5, a4
699:              addi         s11, a0, -284
                  and          s7, t0, t1
                  nop
                  auipc        s2, 442369
                  bgeu         s8, s8, 708f
                  or           s4, t4, sp
                  beq          a7, sp, 712f
                  bge          sp, a6, 717f
                  xori         s4, s6, 812
708:              slti         t5, a4, -734
                  lui          zero, 929841
                  bgeu         gp, ra, 712f
                  slli         s5, tp, 3
712:              blt          a4, s8, 721f
                  xor          a2, t1, ra
                  addi         a4, t4, 754
                  or           t5, a5, a5
                  auipc        tp, 914817
717:              ori          t5, s2, -490
                  bne          s0, s6, 728f
                  sltu         a2, a2, s3
                  slti         t6, s9, -1343
721:              bge          t6, a0, 727f
                  lui          a4, 640694
                  srli         a3, a6, 23
                  bltu         t1, a7, 730f
                  lui          ra, 17156
                  bltu         a7, s9, 730f
727:              sltu         s2, s5, t3
728:              nop
                  nop
730:              xori         s3, tp, -851
                  sltiu        s2, t5, 1345
                  slti         a7, s9, -2033
                  bge          s2, sp, 739f
                  slti         s10, gp, -229
                  lui          s9, 866372
                  bne          a4, tp, 743f
                  slli         s6, a0, 16
                  bgeu         a1, a3, 752f
739:              sltu         a2, t3, s5
                  sltu         s10, sp, a2
                  and          s7, s10, t4
                  sltu         a2, a0, ra
743:              srai         zero, a4, 30
                  slli         a5, s0, 3
                  add          a2, s0, s7
                  slli         t0, ra, 27
                  bge          t2, s4, 755f
                  sltiu        s3, s8, 465
                  sltiu        a6, t2, 314
                  sltiu        s8, a7, 1550
                  bge          s0, tp, 761f
752:              sub          s7, s0, s11
                  sltu         s9, a5, t0
                  and          gp, a4, tp
755:              slli         t4, s6, 16
                  bgeu         s10, s8, 761f
                  sra          s10, a4, a7
                  lui          s9, 429158
                  nop
                  auipc        t6, 331108
761:              sltiu        s4, s4, -1504
                  sra          s5, t5, s7
                  addi         s5, a1, 320
                  beq          a2, a2, 768f
                  bgeu         ra, s11, 771f
                  xor          a4, s7, ra
                  addi         s3, zero, 5 #init loop 1 counter
                  xor          t4, t1, a5
                  xori         s5, zero, -1009
                  slti         ra, t2, -195
                  andi         t3, s1, -1459
                  addi         a4, zero, 5 #init loop 1 limit
                  xor          a0, a4, ra
                  slli         t6, t3, 2
sub_5_5_1_t:      auipc        a7, 656339
                  xori         t5, a4, -910
                  ori          a0, gp, -1723
                  sltu         s4, a5, sp
                  addi         s3, s3, -3 #update loop 1 counter
                  xor          a3, t0, s5
                  addi         gp, zero, -1 #init loop 0 counter
                  addi         a5, zero, 15 #init loop 0 limit
                  nop
sub_5_5_0_t:      lui          a7, 402562
                  lui          s9, 377301
                  ori          a2, s4, 871
                  sltiu        t5, sp, -593
                  addi         gp, gp, 4 #update loop 0 counter
                  nop
                  bltu         gp, a5, sub_5_5_0_t #branch for loop 0
                  bgeu         s3, a4, sub_5_5_1_t #branch for loop 1
                  and          tp, a0, s7
                  blt          a5, a6, 769f
768:              slli         t1, s0, 19
769:              bne          s6, a2, 775f
                  xori         s7, tp, 59
771:              srli         a0, t2, 26
                  addi         t6, s0, -1515
                  slt          s2, t2, a3
                  srli         t0, gp, 25
775:              srli         s8, a7, 24
                  srli         a3, sp, 1
                  blt          t1, tp, 792f
                  slli         gp, a0, 11
                  blt          s5, s9, 794f
                  addi         zero, a7, -1515
                  sll          a4, a1, a2
                  sll          s2, sp, zero
                  or           s2, t2, s11
                  slli         a6, zero, 21
                  sll          a7, a6, ra
                  blt          tp, a2, 787f
787:              addi         s3, sp, 1776
                  beq          a1, s4, 800f
                  bgeu         t5, t5, 790f
790:              addi         s11, s10, 1572
                  sltu         a5, t4, gp
792:              sub          a7, t6, t6
                  slli         s7, s5, 23
794:              slli         s6, t3, 28
                  srai         s10, s6, 9
                  andi         a7, ra, -1949
                  bge          t6, s8, 816f
                  sra          s10, s4, t5
                  sltiu        t4, tp, 1631
800:              sll          s0, s7, t0
                  slli         a5, t3, 5
                  sub          t5, s8, a2
                  xori         tp, t0, 405
                  srai         a2, s8, 21
                  sltu         s7, t6, a1
                  lui          s9, 528532
                  or           t6, s2, t6
                  andi         s5, s6, -1394
                  add          t5, t6, a7
                  auipc        t5, 407225
                  slt          ra, a2, a1
                  bltu         t2, ra, 820f
                  addi         a2, s6, 1675
                  xori         s0, a3, -1274
                  srai         t1, s5, 31
816:              srli         t5, s1, 27
                  bge          t2, s10, 821f
                  sub          s8, t3, s11
                  srai         t0, t0, 31
820:              srli         a3, t6, 9
821:              xori         s3, s8, -1135
                  sltu         a7, s9, t6
                  sra          s10, t1, s10
                  sub          s9, s3, a3
                  sltu         s9, t4, sp
                  ori          t3, a2, 389
                  lui          t1, 604398
                  lw           t4, 4(s1)
                  andi         t3, a4, -821
                  addi         s1, s1, 60
                  sra          s3, a3, t6
                  addi         zero, a0, -1737
                  slti         s6, s3, -162
                  srai         s11, zero, 16
                  sub          s2, t2, a6
                  sra          s2, a7, a7
                  slli         a6, a2, 3
                  srli         s9, s0, 30
1177:             addi x15, x29, 1
1177:             jalr x15, x15, 0
sub_2:            bgeu         t3, t2, sub_2_stack_p
                  sltu         s6, tp, s8
sub_2_stack_p:    addi         s1, s1, -44
                  srli         tp, tp, 4
                  sw           t4, 4(s1)
                  srai         tp, s4, 13
                  addi         t0, zero, -10 #init loop 1 counter
                  slti         s6, sp, -897
                  slt          s5, a3, tp
                  sra          s0, t2, a6
                  sll          a4, a5, s6
                  slt          t6, ra, t0
                  addi         t1, zero, -13 #init loop 1 limit
                  sltu         s10, s8, s8
sub_2_0_1_t:      addi         s7, t0, 1841
                  ori          t4, t1, 599
                  addi         t0, t0, -5 #update loop 1 counter
                  lui          a4, 625783
                  xor          t3, t6, a0
                  addi         s9, zero, -9 #init loop 0 counter
                  sll          ra, t1, s6
                  ori          a0, s6, -404
                  srl          t2, zero, t2
                  srl          t2, a2, s7
                  sra          a6, sp, t5
                  srai         s5, a2, 7
                  slli         s0, s10, 13
                  or           s8, tp, a4
                  addi         a2, zero, -12 #init loop 0 limit
                  sub          t4, a4, s0
                  sra          a5, zero, s11
sub_2_0_0_t:      lui          s5, 127660
                  addi         s9, s9, -2 #update loop 0 counter
                  sltiu        s11, ra, -292
                  slli         gp, s11, 4
                  sll          t2, t3, ra
                  sub          ra, a1, a1
                  nop
                  bge          s9, a2, sub_2_0_0_t #branch for loop 0
                  bge          t0, t1, sub_2_0_1_t #branch for loop 1
                  slli         a6, s7, 22
                  xori         a5, s4, -585
                  lui          s2, 150883
                  blt          t2, t6, 7f
                  sra          s7, a0, t4
                  bge          tp, t3, 18f
                  or           s3, s7, a3
                  slt          t2, s0, s9
7:                blt          t3, zero, 9f
                  auipc        s10, 932030
9:                sub          zero, t0, a1
                  beq          s4, sp, 16f
                  sll          s4, a2, t5
                  srli         s9, t3, 17
                  ori          s11, a5, -263
                  slt          t4, t3, tp
                  xori         a0, s11, 938
16:               auipc        a3, 327428
                  bne          s3, s5, 29f
18:               add          s3, s10, s1
                  addi         a6, s5, 527
                  nop
                  and          gp, sp, s1
                  ori          s8, s1, -102
                  bge          s2, s1, 39f
                  srli         a6, s2, 26
                  blt          a0, s9, 37f
                  srai         t5, s6, 8
                  sll          t4, a7, ra
                  bne          a4, a3, 47f
29:               sltu         t2, t3, gp
                  bne          a1, t5, 46f
                  andi         t4, s10, -251
                  sll          s3, t1, gp
                  addi         s0, a7, 1332
                  sll          s2, a6, ra
                  and          a6, t3, s5
                  sra          s10, s7, tp
37:               sltiu        t3, a7, 609
                  ori          t2, s6, 224
39:               srli         a0, a2, 12
                  sltu         s3, sp, a0
                  srl          t1, s4, s8
                  slt          s0, a5, tp
                  sll          t6, t0, t2
                  sra          a2, s9, a2
                  sub          a0, sp, s7
46:               and          s0, t4, s0
47:               auipc        t0, 820572
                  xor          gp, t1, t0
                  sltu         s4, a2, s2
                  beq          s7, sp, 70f
                  slli         t2, t5, 11
                  add          s0, t5, s2
                  andi         s9, s10, -1037
                  sltiu        s4, s4, -1326
                  nop
                  slli         s8, s8, 16
                  addi         s7, s3, -353
                  xori         a0, a5, -252
                  auipc        a5, 326063
                  sub          a0, tp, s8
                  slt          ra, ra, t2
                  sub          s3, s11, t6
                  bne          t1, zero, 70f
                  sub          t1, s6, zero
                  auipc        t3, 316310
                  beq          s1, t1, 81f
                  bge          a3, t4, 74f
                  bge          s6, s10, 80f
                  xori         t4, a3, 296
70:               ori          tp, t0, 1589
                  srli         zero, s9, 17
                  sub          a5, t0, s7
                  add          s8, a4, s5
74:               sltiu        a7, t3, -1572
                  srli         s11, t2, 21
                  addi         a5, a6, 1456
                  bne          sp, s4, 85f
                  add          t1, s4, a0
                  xor          s2, ra, s9
80:               srai         a7, t6, 31
81:               sltu         s0, t5, a1
                  and          t4, a1, a7
                  or           t6, a0, a2
                  srli         t0, s4, 21
85:               or           zero, a3, s9
                  xor          s0, a7, s11
                  and          s0, t2, s10
                  bltu         a4, sp, 89f
89:               sra          t1, t6, s3
                  and          a7, s3, t6
                  lui          s8, 470216
                  nop
                  lw           t4, 4(s1)
                  addi         s1, s1, 44
                  sltiu        a4, a6, 939
                  sltu         t6, t1, s8
                  auipc        gp, 166409
                  add          tp, t3, a2
140:              addi x14, x29, 0
140:              jalr x14, x14, 0
sub_4:            nop
                  srl          a0, s7, zero
                  lui          tp, 233054
                  addi         s1, s1, -44
                  srli         gp, a7, 21
                  sltu         t5, t6, zero
                  slti         s3, ra, 1605
                  sw           t4, 4(s1)
                  or           s0, a3, s5
                  auipc        s5, 113619
                  xor          s3, s1, a1
                  addi         s0, zero, 4 #init loop 0 counter
                  addi         t6, zero, 13 #init loop 0 limit
                  sra          zero, t3, sp
                  sra          a3, a2, t0
                  sll          s2, a3, t0
sub_4_2_0_t:      xor          t2, t5, t0
                  slli         a0, a0, 3
                  sub          s6, s6, gp
                  addi         s0, s0, 9 #update loop 0 counter
                  bne          s0, t6, sub_4_2_0_t #branch for loop 0
                  xori         ra, s4, 1833
                  addi         s2, zero, 8 #init loop 1 counter
                  add          t2, t1, t2
                  addi         s8, zero, 7 #init loop 1 limit
sub_4_1_1_t:      and          a4, t4, ra
                  nop
                  srli         a7, t4, 25
                  addi         s2, s2, -5 #update loop 1 counter
                  slt          a6, s8, ra
                  ori          s10, sp, -259
                  add          s9, a1, a2
                  auipc        a4, 238368
                  addi         a3, zero, 5 #init loop 0 counter
                  addi         s11, zero, -16 #init loop 0 limit
sub_4_1_0_t:      nop
                  addi         a3, a3, -3 #update loop 0 counter
                  andi         a5, a7, -1130
                  auipc        t2, 30447
                  bne          a3, s11, sub_4_1_0_t #branch for loop 0
                  sltiu        a7, s0, -940
                  lui          s7, 701050
                  bgeu         s2, s8, sub_4_1_1_t #branch for loop 1
                  xor          t0, t5, gp
                  bge          tp, a3, 14f
                  bltu         a5, s0, 10f
                  srl          a2, a7, a1
                  ori          ra, s9, -603
                  slti         a4, a3, 1442
                  bltu         a6, sp, 8f
                  sltiu        s9, a4, 707
                  beq          s2, a7, 14f
8:                andi         s7, s9, -1184
                  sltu         a0, s3, a6
10:               slt          s3, s10, a3
                  srli         a2, a2, 3
                  sub          gp, a0, zero
                  sltu         s0, s7, s7
14:               slt          t3, s3, a2
                  bge          t0, t2, 33f
                  srai         ra, s3, 26
                  srai         a2, s10, 31
                  bne          gp, s10, 20f
                  xori         s8, tp, 1766
20:               xori         a5, s7, -1974
                  nop
                  slli         a0, t6, 10
                  slli         a2, s4, 16
                  slli         s10, a6, 23
                  or           a4, s1, zero
                  bltu         t0, s2, 33f
                  bge          a2, a6, 31f
                  srai         s9, s9, 27
                  sll          s6, s9, t3
                  sub          zero, s7, a2
31:               beq          t5, a3, 50f
                  add          a5, ra, a4
33:               sll          s7, t5, s8
                  addi         a5, zero, 9 #init loop 0 counter
                  sll          s0, s11, s7
                  addi         a6, zero, 9 #init loop 0 limit
                  lui          s11, 686115
                  srl          a0, gp, s8
sub_4_0_0_t:      add          t3, t5, s0
                  auipc        t2, 553915
                  addi         a5, a5, -8 #update loop 0 counter
                  xor          zero, ra, sp
                  bgeu         a5, a6, sub_4_0_0_t #branch for loop 0
                  srl          s10, s4, zero
                  and          t5, a7, t6
                  bge          t4, s8, 38f
                  sra          a7, gp, a6
                  srl          a7, sp, s5
38:               bge          a4, s3, 41f
                  addi         t5, a2, 1462
                  sltu         a4, s2, zero
41:               nop
                  srl          t6, t4, s7
                  xori         t1, t0, 1166
                  lui          s8, 716243
                  slt          s10, a1, s1
                  bne          s0, s4, 59f
                  bltu         t0, s6, 62f
                  srai         s3, a4, 25
                  lui          a6, 203002
50:               sll          t4, a5, a2
                  andi         zero, t4, -145
                  sra          ra, a5, t2
                  srai         gp, a0, 25
                  lui          s2, 520687
                  sll          s2, a7, s10
                  beq          ra, t6, 76f
                  nop
                  blt          t4, a1, 76f
59:               add          t5, ra, t4
                  bne          s3, s4, 72f
                  beq          tp, tp, 71f
62:               sltiu        t5, s10, -343
                  srai         t1, s1, 27
                  xor          tp, t3, a2
                  and          a7, s5, ra
                  beq          s1, s2, 78f
                  sll          s3, t5, s3
                  auipc        a0, 390440
                  sll          a6, t1, t3
                  add          t5, a7, t2
71:               slt          s7, s6, t1
72:               srai         tp, t4, 27
                  sltu         s8, t2, s8
                  ori          s9, ra, 1287
                  srli         gp, zero, 5
76:               bne          s7, t5, 79f
                  addi         zero, s4, -264
78:               nop
79:               bgeu         tp, a1, 97f
                  sra          s10, s5, t6
                  srl          a4, a5, s7
                  add          s0, a0, ra
                  ori          a4, s1, 1940
                  sltu         t2, a6, s4
                  blt          s8, s4, 88f
                  blt          s2, s3, 90f
                  srl          s6, s3, t6
88:               sra          t1, t3, t4
                  ori          a7, s7, 40
90:               ori          a3, a7, -644
                  srl          t4, a4, t3
                  bltu         s6, s1, 108f
                  bne          a0, s1, 101f
                  sub          ra, t0, s3
                  sltu         s10, a0, a5
                  and          tp, t6, s0
97:               sltiu        t1, a5, 569
                  bne          s6, zero, 100f
                  blt          a1, t5, 114f
100:              bgeu         a5, s8, 112f
101:              xori         t0, a1, -1921
                  add          gp, a1, a1
                  bgeu         s1, tp, 119f
                  sll          t6, sp, s7
                  srl          s0, s7, s11
                  nop
                  auipc        a7, 646794
108:              auipc        s5, 167538
                  sltiu        a4, a4, -436
                  or           t2, a4, s1
                  andi         a2, s9, -1420
112:              srli         s7, t1, 29
                  sltiu        s4, a4, -2019
114:              addi         s10, s9, -231
                  xor          a6, s11, s4
                  blt          t1, s7, 118f
                  blt          s4, a0, 133f
118:              sub          t2, s9, gp
119:              sra          a5, t0, a5
                  ori          a0, s6, -624
                  srai         t1, s0, 8
                  andi         s4, t4, -1232
                  andi         s8, a4, -1889
                  nop
                  xor          s8, s9, a5
                  lui          t6, 863107
                  and          a6, t3, s3
                  bltu         gp, a1, 131f
                  ori          s9, a0, 32
                  beq          s6, s10, 134f
131:              lui          t2, 866405
                  bgeu         a7, s3, 141f
133:              auipc        t1, 188718
134:              lui          a2, 229292
                  and          s8, t0, t2
                  bltu         t5, t0, 149f
                  srai         ra, t6, 10
                  bltu         tp, s5, 140f
                  srli         t1, t4, 29
140:              andi         tp, s0, 1178
141:              sra          t1, s0, t2
                  slti         a0, a7, -1847
                  srl          s5, t4, ra
                  srai         a5, zero, 30
                  xori         tp, s7, -1149
                  lui          s8, 809162
                  srl          s2, a0, s8
                  sltu         a3, ra, zero
149:              beq          t4, a0, 161f
                  srai         s2, t5, 25
                  auipc        s11, 70485
                  slt          ra, s6, a6
                  bgeu         sp, a3, 171f
                  bgeu         s8, a4, 170f
                  addi         s0, a6, 69
                  slt          a3, s11, a0
                  xor          gp, sp, s3
                  auipc        s3, 76570
                  srai         s10, a2, 2
                  add          s6, s10, s4
161:              sra          a0, a6, t3
                  sltu         t1, a4, sp
                  auipc        a2, 4974
                  slti         gp, tp, 768
                  slti         t5, s2, 1757
                  bne          sp, t0, 173f
                  sltiu        ra, a0, 630
                  and          zero, a3, s9
                  slli         a2, a0, 9
170:              sltiu        s8, s2, 850
171:              bltu         s10, a6, 174f
                  srl          t1, s9, s10
173:              bne          t0, t4, 177f
174:              sub          a0, t4, a6
                  srai         gp, a3, 0
                  add          a2, s5, zero
177:              sub          s6, t6, s10
                  lw           t4, 4(s1)
                  sub          s9, a0, s4
                  lui          s5, 145817
                  sltiu        zero, t6, 957
                  addi         s1, s1, 44
                  slli         t3, s3, 13
239:              addi x6, x29, 0
239:              jalr x6, x6, 0
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
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
                  add x11, x9, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  add x11, x9, zero
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x6, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x6, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x6, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x6, x13, ecall_handler
                  li x13, 0x1
                  beq x6, x13, instr_fault_handler
                  li x13, 0x5
                  beq x6, x13, load_fault_handler
                  li x13, 0x7
                  beq x6, x13, store_fault_handler
                  li x13, 0xc
                  beq x6, x13, pt_fault_handler
                  li x13, 0xd
                  beq x6, x13, pt_fault_handler
                  li x13, 0xf
                  beq x6, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x6, _start
                  sw x0, 0(x6)
                  sw x1, 4(x6)
                  sw x2, 8(x6)
                  sw x3, 12(x6)
                  sw x4, 16(x6)
                  sw x5, 20(x6)
                  sw x6, 24(x6)
                  sw x7, 28(x6)
                  sw x8, 32(x6)
                  sw x9, 36(x6)
                  sw x10, 40(x6)
                  sw x11, 44(x6)
                  sw x12, 48(x6)
                  sw x13, 52(x6)
                  sw x14, 56(x6)
                  sw x15, 60(x6)
                  sw x16, 64(x6)
                  sw x17, 68(x6)
                  sw x18, 72(x6)
                  sw x19, 76(x6)
                  sw x20, 80(x6)
                  sw x21, 84(x6)
                  sw x22, 88(x6)
                  sw x23, 92(x6)
                  sw x24, 96(x6)
                  sw x25, 100(x6)
                  sw x26, 104(x6)
                  sw x27, 108(x6)
                  sw x28, 112(x6)
                  sw x29, 116(x6)
                  sw x30, 120(x6)
                  sw x31, 124(x6)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x9, x11, zero
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
                  add x9, x11, zero
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
                  add x9, x11, zero
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
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x9, x11, zero
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
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x9, x11, zero
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
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x9, x11, zero
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
