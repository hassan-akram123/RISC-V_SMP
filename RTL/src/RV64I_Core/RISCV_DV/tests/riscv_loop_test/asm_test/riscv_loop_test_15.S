.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x19, h0_start
jalr x0, x19, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x168002d7
                  li x2, 0x0
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x6, 0xf5800d8e
                  li x7, 0xe9fd56
                  li x9, 0x6
                  li x10, 0xfc9423f2
                  li x11, 0x0
                  li x12, 0x2
                  li x13, 0x4bc942a0
                  li x14, 0x0
                  li x15, 0x80000000
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x8bd83073
                  li x19, 0xfe72254e
                  li x20, 0x0
                  li x21, 0xf89d9b62
                  li x22, 0x80000000
                  li x23, 0x5
                  li x24, 0x74ceaa2a
                  li x25, 0xd
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0x80000000
                  li x29, 0xa9821ed7
                  li x30, 0x0
                  li x31, 0x80000000
                  la x8, user_stack_end
main:             and          s4, s7, a4
                  slt          a5, s8, tp
                  ori          s6, a6, -1385
                  add          s1, s4, a5
                  la           t6, sub_1
                  andi         a5, s4, 1540
                  nop
                  addi         t6, t6, -216
                  addi         s11, a4, 1636
                  auipc        a0, 686634
                  xori         a5, t6, -1210
                  auipc        s2, 712210
main_j2:          jalr         s8, t6, 217 #jump main -> sub_1
                  addi         a2, zero, -5 #init loop 1 counter
                  xor          s6, s6, s0
                  sltiu        a1, t4, -374
                  slti         tp, t3, -1593
                  srli         a7, t2, 3
                  or           gp, t6, a7
                  sra          t6, a6, s3
                  auipc        a3, 1029126
                  slli         a5, s8, 22
                  addi         a4, t6, -1795
                  addi         s7, zero, 15 #init loop 1 limit
                  slli         a4, a2, 16
                  sll          ra, a0, a6
main_1_1_t:       slt          s4, s0, s1
                  sra          t3, s4, s7
                  addi         a2, a2, 10 #update loop 1 counter
                  addi         t5, zero, 10 #init loop 0 counter
                  slli         gp, zero, 17
                  and          zero, t4, gp
                  xor          s4, s10, t2
                  addi         s10, zero, 10 #init loop 0 limit
main_1_0_t:       sltu         a1, a0, tp
                  xor          t4, a4, s4
                  addi         t5, t5, -7 #update loop 0 counter
                  xori         s2, t1, 86
                  srli         t2, a2, 30
                  bgeu         t5, s10, main_1_0_t #branch for loop 0
                  and          t4, gp, s10
                  andi         a5, a3, -1526
                  slt          a0, s8, ra
                  auipc        zero, 418277
                  bne          a2, s7, main_1_1_t #branch for loop 1
                  sll          s2, gp, a3
                  addi         t5, zero, 8 #init loop 1 counter
                  xor          s11, zero, s9
                  addi         s1, zero, 7 #init loop 1 limit
main_2_1_t:       addi         s11, s8, 1048
                  slti         s2, s10, -465
                  addi         t5, t5, -4 #update loop 1 counter
                  srai         s2, s6, 6
                  addi         a7, zero, 9 #init loop 0 counter
                  addi         s6, zero, 19 #init loop 0 limit
main_2_0_t:       slt          tp, s4, s0
                  addi         a7, a7, 5 #update loop 0 counter
                  bne          a7, s6, main_2_0_t #branch for loop 0
                  or           a2, a2, t6
                  bgeu         t5, s1, main_2_1_t #branch for loop 1
                  and          a3, s8, s11
                  addi         a5, zero, 8 #init loop 0 counter
                  slti         t6, s1, 261
                  xor          a4, a3, s7
                  slti         a0, a0, 898
                  sub          a0, ra, a4
                  srli         s5, a3, 4
                  sub          s7, sp, t5
                  ori          s5, t3, 365
                  slli         a3, sp, 27
                  srli         a4, a7, 24
                  ori          t4, zero, 638
                  nop
                  xor          s11, t6, s9
                  srai         s4, sp, 30
                  slli         a2, a4, 21
                  addi         t2, zero, 17 #init loop 0 limit
                  srai         t6, s8, 2
                  sltu         a7, a6, t0
                  ori          t6, a0, -1407
                  srai         tp, gp, 14
                  sra          gp, a3, t0
                  srai         t1, s0, 10
main_3_0_t:       nop
                  or           s5, a7, t6
                  addi         t4, t4, -69
                  sltu         s7, a3, s6
                  addi         a5, a5, 9 #update loop 0 counter
                  lui          s8, 179006
                  bne          a5, t2, main_3_0_t #branch for loop 0
                  add          s6, a3, t1
                  addi         a3, zero, -5 #init loop 1 counter
                  or           a4, t5, a0
                  and          s10, a7, a7
                  addi         t5, zero, 15 #init loop 1 limit
                  sltu         zero, a7, t5
main_0_1_t:       addi         s1, s11, -452
                  xor          s9, a3, s11
                  addi         a3, a3, 5 #update loop 1 counter
                  addi         sp, zero, -1 #init loop 0 counter
                  srai         ra, s2, 19
                  addi         a2, zero, -13 #init loop 0 limit
main_0_0_t:       ori          s6, sp, -5
                  sltiu        gp, a4, 642
                  auipc        t2, 670274
                  addi         sp, sp, -4 #update loop 0 counter
                  sltu         s10, zero, sp
                  and          a4, s5, s10
                  bne          sp, a2, main_0_0_t #branch for loop 0
                  slt          tp, tp, s2
                  beq          a3, t5, main_0_1_t #branch for loop 1
                  slt          a6, t1, a3
                  beq          s2, t4, 16f
                  blt          s9, sp, 5f
                  srli         a5, s10, 6
                  lui          t6, 1001274
                  srl          a6, s8, a1
5:                srli         s9, a4, 15
                  xori         t5, t6, -1397
                  srl          s8, t3, s3
                  slti         a5, a3, -1396
                  sll          s9, t3, s3
                  bgeu         s5, a4, 25f
                  sra          sp, a7, t5
                  srl          t3, t2, s10
                  blt          t1, s6, 17f
                  or           s10, t4, s0
                  srl          ra, s2, t3
16:               auipc        t5, 399209
17:               sll          t3, s10, s10
                  or           t1, s10, ra
                  addi         s7, ra, -213
                  auipc        t4, 650063
                  xor          t5, a2, t3
                  ori          s4, a4, 1778
                  bne          s4, t2, 28f
                  srai         t5, s7, 8
25:               add          t2, s7, t2
                  xori         s7, a2, 930
                  sltu         t1, s5, t0
28:               and          a4, a2, s9
                  slti         zero, s8, 1581
                  sra          s8, t2, t5
                  sll          t5, s0, s10
                  sra          t1, s9, s0
                  sltiu        a7, s6, 955
                  slt          tp, t2, ra
                  xori         a0, a7, -1559
                  bltu         a1, s5, 48f
                  ori          t5, a1, 1151
                  sra          gp, a5, ra
                  slli         s5, s4, 4
                  bge          s11, a0, 47f
                  addi         a7, s4, -1875
                  sub          t3, s1, t4
                  andi         tp, a2, 1636
                  slti         t6, s11, -1302
                  srai         s10, a1, 6
                  beq          gp, t0, 48f
47:               srai         s11, t1, 20
48:               ori          a7, s8, -1951
                  xori         a3, a5, 1490
                  auipc        s4, 131295
                  auipc        a1, 10806
                  xor          t5, s1, t0
                  srl          t5, t4, tp
                  or           t5, a3, zero
                  blt          a4, t1, 73f
                  auipc        t1, 779174
                  or           a0, ra, s6
                  slli         zero, s3, 31
                  andi         a7, t3, 1551
                  xor          ra, a1, s6
                  auipc        a3, 112378
                  auipc        s9, 856881
                  xor          tp, t5, zero
                  xor          a6, a4, a2
                  sub          ra, a7, ra
                  sltu         s4, sp, s7
                  bltu         a5, t1, 80f
                  add          s2, a2, a4
                  sltu         s8, sp, a1
                  xor          t6, s4, s6
                  lui          t1, 647437
                  bge          a3, a5, 80f
73:               nop
                  nop
                  bne          s2, a6, 86f
                  slli         s1, s0, 14
                  ori          s5, t1, -480
                  xori         s8, s8, 1239
                  ori          s4, a4, -814
80:               add          t5, s11, s10
                  bge          s6, t0, 98f
                  srli         s11, sp, 12
                  slt          s2, s6, t3
                  slli         a0, t6, 11
                  blt          zero, t0, 90f
86:               or           t4, zero, a0
                  sltiu        t2, tp, 2046
                  srli         tp, a0, 22
                  slt          s5, t4, s11
90:               blt          sp, s10, 93f
                  slli         s6, zero, 9
                  bltu         s8, t5, 103f
93:               sub          gp, s4, gp
                  bgeu         t0, s5, 96f
                  slli         gp, zero, 0
96:               srai         a6, s4, 22
                  slti         s4, t0, 904
98:               auipc        gp, 307770
                  sltu         s5, s2, a6
                  auipc        a5, 877372
                  ori          s1, t2, 1190
                  nop
103:              srai         a2, tp, 7
                  slli         s8, a5, 7
                  sltiu        a3, a4, -1010
                  sra          a0, s2, a0
                  srli         sp, s5, 10
                  sub          t1, gp, s11
                  slt          t5, t3, s8
                  and          s10, s9, t4
                  sll          s2, zero, ra
                  beq          a5, a4, 124f
                  ori          ra, gp, 1314
                  bltu         a2, s0, 133f
                  bne          a0, a3, 132f
                  xor          t2, t4, s10
                  sltiu        gp, s11, 1059
                  srl          s1, s4, ra
                  srli         t2, a2, 2
                  add          s6, ra, s1
                  and          s10, t5, s1
                  sll          s10, a1, s11
                  blt          s7, s4, 139f
124:              bgeu         s2, s6, 131f
                  ori          s11, s5, 1916
                  slli         t6, s5, 13
                  and          s2, a0, tp
                  blt          s6, a1, 130f
                  ori          a5, a1, 1771
130:              sltiu        t3, s4, 929
131:              nop
132:              sll          ra, s0, s9
133:              sltu         a5, t4, s8
                  bge          s7, s6, 140f
                  bgeu         s4, t6, 136f
136:              and          s7, s2, zero
                  and          a5, s11, t6
                  nop
139:              bltu         a1, t1, 148f
140:              srli         s5, s3, 5
                  blt          t1, s10, 146f
                  and          a5, tp, s2
                  blt          a7, s5, 147f
                  bge          a5, s4, 152f
                  slt          s8, a0, s1
146:              slti         s8, s8, 1123
147:              sltiu        s1, s9, -1807
148:              srli         a6, a3, 0
                  beq          s3, s2, 167f
                  lui          tp, 232771
                  sra          t4, t2, a6
152:              bltu         a6, a3, 169f
                  slti         gp, a2, 260
                  srl          a4, sp, ra
                  sll          a5, a7, ra
                  andi         s11, a7, -24
                  srai         a1, t5, 24
                  sub          s10, s3, t2
                  ori          a0, t2, -1335
                  addi         s4, s5, 1462
                  bge          t2, ra, 163f
                  lui          t5, 437148
163:              andi         t6, a0, 738
                  lui          a5, 818557
                  slti         a4, a3, -1509
                  slt          s2, zero, s9
167:              nop
                  sub          a4, s8, s3
169:              bge          s8, t0, 173f
                  blt          a4, a5, 181f
                  nop
                  sltu         a2, ra, s8
173:              nop
                  sra          s1, a4, s10
                  auipc        a2, 738719
                  addi         s1, s6, 1469
                  slti         a2, t3, -272
                  and          tp, t2, zero
                  xor          a3, s9, s1
                  nop
181:              sra          s11, ra, t0
                  xori         s2, t0, 304
                  and          a0, s4, s5
                  beq          s3, a4, 196f
                  sra          a6, s0, a3
                  add          a5, a2, s6
                  addi         t4, t3, 461
                  bge          s9, s5, 195f
                  xor          a0, a5, s2
                  bgeu         t3, a4, 206f
                  addi         tp, tp, -402
                  bne          sp, t2, 193f
193:              beq          t5, s0, 198f
                  sub          t1, s5, s1
195:              srl          s8, s2, t6
196:              addi         a3, s1, -1289
                  lui          s9, 602630
                  la           t2, sub_1
                  slti         s7, gp, -267
                  ori          s7, s9, 1959
                  sltu         s11, t0, s6
                  addi         t2, t2, -408
                  sltu         sp, s6, s8
                  slt          t3, s2, a1
                  sub          a3, s0, s9
                  and          s7, s10, s9
main_j1:          jalr         s8, t2, 408 #jump main -> sub_1
198:              sltiu        ra, a1, -82
                  sltu         a6, a1, zero
                  bne          tp, a2, 216f
                  addi         s8, sp, -1711
                  sltiu        t1, s5, 1172
                  blt          ra, tp, 216f
                  sra          s6, t6, ra
                  nop
206:              lui          a4, 534239
                  bgeu         tp, sp, 216f
                  srl          s5, s5, t4
                  sub          t5, t2, zero
                  sra          gp, a2, ra
                  lui          s1, 572335
                  srai         s5, zero, 24
                  srli         gp, s1, 30
                  lui          a0, 970606
                  auipc        t2, 705270
216:              slti         a4, sp, -1158
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slt          sp, t0, a3
                  slti         s9, t2, 1869
                  addi         s1, s6, 1575
                  bltu         s6, sp, sub_2_stack_p
                  sub          a4, s7, t6
sub_2_stack_p:    addi         s0, s0, -20
                  ori          t6, a6, 877
                  sw           s8, 4(s0)
                  sub          a3, a7, s5
                  and          s11, s0, s9
                  xori         s10, sp, 1110
                  bltu         s0, a5, sub_2_j7 #branch to jump instr
                  slli         s4, a3, 19
                  sra          s7, t5, a3
                  lui          s6, 321993
                  and          t1, zero, t1
                  slli         a2, t0, 24
                  sub          a6, s11, s8
sub_2_j7:         jal          s8, sub_3 #jump sub_2 -> sub_3
                  addi         t2, zero, 5 #init loop 0 counter
                  slti         a6, a6, 1626
                  and          a6, zero, s11
                  nop
                  srl          t4, s6, a2
                  auipc        s6, 1033447
                  add          t6, a7, a4
                  slti         ra, t2, -677
                  srli         s2, a7, 20
                  srai         s8, s4, 25
                  addi         s10, zero, -18 #init loop 0 limit
                  sltiu        s2, s0, -471
sub_2_4_0_t:      sltu         tp, a6, a4
                  or           s4, a4, s7
                  slli         a3, a2, 12
                  andi         a5, a4, -1669
                  addi         t2, t2, -1 #update loop 0 counter
                  srl          t6, s2, a6
                  xori         ra, ra, 592
                  slti         gp, s11, -247
                  sub          t6, t1, a3
                  xor          s8, t6, s7
                  slli         s5, s9, 21
                  sra          a6, gp, a5
                  slti         ra, s4, 1284
                  bne          t2, s10, sub_2_4_0_t #branch for loop 0
                  or           t4, s1, t1
                  addi         s1, zero, 10 #init loop 0 counter
                  add          tp, s9, a6
                  andi         t4, a7, 1594
                  nop
                  slti         a4, s6, 879
                  addi         t4, t5, 1497
                  xor          s7, a0, t5
                  xori         gp, s2, 177
                  addi         a1, zero, 9 #init loop 0 limit
                  andi         t5, s3, 394
sub_2_2_0_t:      or           a0, t6, a4
                  andi         a4, s10, 1610
                  sll          s10, t4, a4
                  addi         s1, s1, -7 #update loop 0 counter
                  nop
                  xori         s2, a6, 857
                  add          a0, zero, a7
                  sltiu        s8, t0, -654
                  sltiu        t4, t4, 591
                  addi         a2, s10, -791
                  or           sp, s11, ra
                  sltiu        t2, s8, 1233
                  bgeu         s1, a1, sub_2_2_0_t #branch for loop 0
                  srli         t4, s11, 14
                  addi         a7, zero, 3 #init loop 0 counter
                  sltu         tp, gp, s4
                  ori          s5, s5, 1963
                  andi         t1, s3, -1251
                  sltu         ra, a3, s7
                  slli         t4, zero, 6
                  lui          a5, 190723
                  slli         s1, gp, 14
                  srai         s11, s11, 15
                  sub          s4, t0, s4
                  nop
                  addi         s9, zero, 9 #init loop 0 limit
                  lui          s11, 284323
                  srai         t3, t0, 23
                  xor          s8, t1, t1
                  srai         a4, a0, 8
                  sra          sp, a0, zero
sub_2_5_0_t:      ori          a6, s1, 1993
                  slt          s4, ra, t6
                  addi         a7, a7, 2 #update loop 0 counter
                  sra          t6, s6, s6
                  slli         a2, a6, 23
                  slti         s4, t4, -965
                  bne          a7, s9, sub_2_5_0_t #branch for loop 0
                  nop
                  addi         sp, zero, 10 #init loop 1 counter
                  add          t2, sp, t4
                  auipc        zero, 607179
                  slli         s10, ra, 4
                  sltu         t5, t5, zero
                  slli         t3, gp, 17
                  nop
                  addi         s6, zero, -18 #init loop 1 limit
                  andi         a0, t5, -248
                  srli         t1, s7, 4
sub_2_0_1_t:      lui          a2, 343802
                  addi         tp, a0, -442
                  srl          s7, t1, t2
                  addi         sp, sp, -4 #update loop 1 counter
                  srli         t5, a1, 25
                  addi         s5, zero, 6 #init loop 0 counter
                  addi         t6, zero, 7 #init loop 0 limit
sub_2_0_0_t:      nop
                  xori         t2, s5, 438
                  auipc        a0, 742069
                  addi         a5, s1, 4
                  ori          gp, t5, 1399
                  sll          t4, t6, s4
                  addi         s5, s5, 3 #update loop 0 counter
                  bltu         s5, t6, sub_2_0_0_t #branch for loop 0
                  xori         zero, a1, -1973
                  srl          a7, s9, t6
                  bne          sp, s6, sub_2_0_1_t #branch for loop 1
                  slti         a2, t0, 1122
                  addi         t2, zero, -3 #init loop 0 counter
                  nop
                  slt          a5, t1, a1
                  slti         s10, zero, 876
                  srl          t4, s9, s4
                  srl          s1, s2, s3
                  sltu         a0, a2, s4
                  nop
                  nop
                  or           t6, s3, t0
                  slli         s9, s10, 17
                  auipc        t5, 786749
                  slli         gp, a5, 12
                  slt          a0, s5, zero
                  or           s2, t4, t2
                  slt          s5, s0, s1
                  addi         s6, zero, 9 #init loop 0 limit
                  lui          a4, 25466
sub_2_1_0_t:      and          a6, a6, s11
                  slt          t3, gp, a1
                  sltiu        s11, ra, -428
                  sltiu        s5, s9, -201
                  addi         t2, t2, 3 #update loop 0 counter
                  nop
                  slti         sp, s6, -332
                  bne          t2, s6, sub_2_1_0_t #branch for loop 0
                  addi         s8, a1, 584
                  addi         a2, zero, -4 #init loop 1 counter
                  addi         tp, zero, 4 #init loop 1 limit
                  sltu         a0, t4, a6
sub_2_3_1_t:      auipc        a7, 599832
                  sra          ra, zero, s9
                  nop
                  auipc        t5, 683157
                  add          a3, s9, tp
                  addi         a2, a2, 2 #update loop 1 counter
                  sra          a7, t5, a5
                  addi         t3, zero, -1 #init loop 0 counter
                  slti         s2, a2, 1598
                  addi         s8, zero, -7 #init loop 0 limit
                  srai         a7, s6, 1
                  xori         s6, a4, -1441
sub_2_3_0_t:      or           a4, a6, a7
                  addi         t3, t3, -3 #update loop 0 counter
                  sltu         s11, s3, a3
                  or           ra, t4, s3
                  addi         a5, tp, 183
                  srli         a0, s3, 17
                  srai         s4, s11, 29
                  sltiu        a4, s1, 94
                  addi         s7, t5, 1258
                  beq          t3, s8, sub_2_3_0_t #branch for loop 0
                  slt          s5, t3, s7
                  ori          s9, a6, 1197
                  auipc        a7, 80119
                  slt          s2, tp, s5
                  sltu         s5, tp, t6
                  bne          a2, tp, sub_2_3_1_t #branch for loop 1
                  sub          t2, t1, t4
                  addi         s1, zero, 6 #init loop 1 counter
                  add          a6, t2, s7
                  addi         s6, zero, 18 #init loop 1 limit
                  sll          a7, s11, s10
sub_2_6_1_t:      and          a4, s3, s6
                  sltiu        a4, a2, -851
                  addi         s1, s1, 2 #update loop 1 counter
                  sltu         a5, a5, a2
                  addi         gp, zero, -2 #init loop 0 counter
                  xori         sp, s10, -1523
                  sra          a1, a3, s3
                  addi         s8, zero, -10 #init loop 0 limit
sub_2_6_0_t:      add          t4, t5, a3
                  sra          s9, a2, a5
                  addi         gp, gp, -2 #update loop 0 counter
                  sll          s7, a1, s10
                  beq          gp, s8, sub_2_6_0_t #branch for loop 0
                  sll          a6, a1, s5
                  xor          a5, t0, t4
                  beq          s1, s6, sub_2_6_1_t #branch for loop 1
                  srai         t1, s8, 7
                  bne          t3, a6, 10f
                  or           s6, t2, t0
                  sltiu        t1, s4, -585
                  add          t1, t0, a5
                  and          s4, s2, t1
                  xori         a0, t6, 1043
                  slt          s7, s7, s4
                  addi         s9, s8, 1941
                  or           t5, t3, a0
                  xor          a5, s11, s9
10:               and          t2, t5, tp
                  add          sp, s7, a6
                  lui          s2, 937990
                  auipc        t1, 936913
                  slti         a4, t2, -449
                  addi         t5, s10, -1951
                  beq          t0, t2, 22f
                  ori          t1, ra, 1028
                  srl          s1, t6, s5
                  sltiu        a6, s7, -1519
                  xor          t2, a4, t0
                  bne          t5, s7, 37f
                  ori          t1, s10, -1652
                  srl          a1, t5, t4
                  auipc        t4, 851346
                  lui          t4, 1045895
                  and          a5, s2, t4
sub_2_j5:         jal          s8, sub_5 #jump sub_2 -> sub_5
22:               srli         zero, a2, 29
                  srai         s5, s0, 11
                  and          a0, s1, t4
                  xor          sp, s10, t0
                  add          a4, gp, s9
                  sltiu        a0, a1, 532
                  sltiu        ra, s10, 494
                  sll          ra, s5, t6
                  and          t1, t3, a3
                  xor          a0, gp, s7
                  bltu         t5, s9, 34f
                  slt          s5, a3, s4
34:               and          a1, s8, tp
                  addi         s7, s6, -1273
                  addi         t6, gp, -300
37:               bgeu         a4, a7, 54f
                  andi         tp, s6, -790
                  bge          s8, s3, 47f
                  srai         s6, s6, 28
                  andi         s2, s2, -1723
                  xor          t2, a5, s5
                  bgeu         a1, a1, 50f
                  lui          t4, 754249
                  sltiu        t3, s1, 1847
                  sltiu        sp, a5, 902
47:               sll          s7, tp, tp
                  bgeu         a4, a1, 57f
                  slli         s5, ra, 23
50:               slt          s9, tp, s2
                  andi         s8, t5, -1727
                  andi         a2, a2, 1135
                  nop
54:               and          t6, tp, a5
                  bge          t6, a0, 65f
                  ori          t4, s10, 1146
                  sra          a3, tp, s7
                  xori         tp, gp, 639
                  addi         a7, tp, -247
                  ori          a7, s0, 595
                  sub          s11, s2, t4
sub_2_j6:         jal          s8, sub_4 #jump sub_2 -> sub_4
57:               andi         gp, s9, 888
                  add          a2, ra, s10
                  slt          a0, a3, s1
                  auipc        s2, 807479
                  xor          s6, s10, s2
                  slli         s11, a6, 30
                  or           tp, a5, a6
                  bne          s1, a1, 76f
65:               slti         a0, t4, -477
                  andi         t6, tp, 664
                  xor          s6, a0, s2
                  or           a7, t4, t5
                  xori         t4, a0, -1744
                  bltu         a4, s1, 71f
71:               sub          t4, s6, s0
                  ori          a6, a7, -1860
                  xor          s2, a4, tp
                  and          s7, ra, t3
                  bgeu         sp, ra, 91f
76:               slt          t1, s0, a2
                  srl          a7, a2, s7
                  srl          a3, gp, t0
                  srai         a1, t6, 11
                  slli         a2, s3, 25
                  xori         a7, a3, 1991
                  bgeu         a1, tp, 93f
                  sub          s9, s10, s5
                  addi         a5, sp, 448
                  slt          gp, s5, a1
                  sra          a5, ra, a5
                  lui          t3, 266990
                  ori          t1, s10, -362
                  and          a7, s4, tp
                  sltiu        a2, s9, -1225
91:               sub          t5, a4, s0
                  sra          s10, t0, s4
93:               bltu         s8, s11, 109f
                  bgeu         s4, sp, 112f
                  beq          t1, s10, 98f
                  and          ra, s6, a4
                  add          s5, t2, gp
98:               sltiu        s11, a0, 1279
                  ori          t2, t2, 1483
                  ori          s6, a6, 712
                  beq          t4, s11, 105f
                  auipc        s9, 845163
                  beq          s11, a4, 109f
                  andi         t5, s1, 1321
105:              xori         t5, a3, 1387
                  or           a3, s2, a5
                  add          t6, s8, zero
                  sltiu        s5, s6, -285
109:              blt          a2, s4, 128f
                  blt          s6, s5, 118f
                  add          t4, t1, s2
112:              sra          gp, s1, s7
                  sltiu        a6, a5, -1372
                  bgeu         t1, sp, 116f
                  and          s4, zero, zero
116:              blt          s6, a2, 125f
                  sltu         a5, s0, a5
118:              sll          gp, s7, a1
                  beq          gp, a0, 139f
                  auipc        s10, 126586
                  sll          s7, a4, tp
                  nop
                  add          s4, s4, a4
                  sltiu        a5, s4, 58
125:              blt          t1, a3, 130f
                  add          ra, a6, s4
                  sltu         a3, s9, s0
128:              ori          a0, s2, 1413
                  or           zero, s2, t4
130:              srai         s7, s7, 2
                  add          t5, gp, s0
                  beq          a6, zero, 147f
                  slti         t1, a5, -1209
                  srli         s11, s2, 17
                  sra          ra, s9, s1
                  bge          t4, t5, 154f
                  xori         a6, s3, 1016
                  srl          s4, gp, a7
139:              add          a2, a5, s8
                  bltu         s0, s10, 160f
                  blt          t2, tp, 158f
                  and          a1, s7, s10
                  srli         a0, a1, 8
                  srl          t3, ra, t2
                  ori          t5, a5, 1714
                  srl          a6, s10, s8
147:              bne          s9, t3, 154f
                  lui          s7, 470999
                  sub          t6, s1, a5
                  sltu         t1, s4, a4
                  nop
                  bgeu         a7, s10, 154f
                  beq          t4, zero, 159f
154:              beq          t6, a6, 166f
                  add          a3, t6, s4
                  slt          s9, s4, s1
                  srai         t5, s3, 21
158:              xori         s7, t0, -1576
159:              ori          t4, ra, -1378
160:              and          a0, s0, t5
                  bgeu         s4, t3, 163f
                  xori         sp, s10, 1651
163:              and          a0, s7, t0
                  and          a4, s11, t0
                  bltu         t0, t6, 175f
166:              beq          t0, ra, 168f
                  xor          a4, gp, s7
168:              ori          gp, a7, 1337
                  ori          gp, s10, 1760
                  beq          a0, t3, 190f
                  srli         ra, s7, 0
                  beq          s8, s7, 183f
                  slti         sp, zero, -1069
                  beq          s6, gp, 189f
175:              slt          s4, s0, zero
                  add          t5, gp, t5
                  srai         sp, zero, 12
                  lui          t3, 940306
                  sltiu        t5, s6, 1735
                  addi         a0, s4, 1642
                  auipc        s5, 50403
                  auipc        s5, 658432
183:              bltu         tp, t6, 190f
                  addi         t1, s6, 736
                  addi         s2, s7, -1658
                  sll          s4, s8, t5
                  or           a2, s0, t2
                  bge          gp, s7, 196f
189:              srl          a5, t0, a4
190:              or           t2, a0, s6
                  and          a6, s2, ra
                  bltu         s8, t2, 194f
                  bne          tp, s4, 202f
194:              and          s5, s3, s8
                  bge          s10, a6, 211f
196:              nop
                  xori         a3, a5, 1775
                  slt          s1, zero, t1
                  xori         s10, gp, 911
                  add          a7, a1, s3
                  addi         t1, a7, 56
202:              sra          s9, a2, s2
                  sll          a1, zero, s2
                  lui          a5, 798265
                  xor          tp, zero, s8
                  srl          s5, s3, s7
                  bgeu         sp, t4, 224f
                  blt          s7, a7, 226f
                  xor          s7, a6, t2
                  slti         s8, t3, -1817
211:              add          a7, s0, a1
                  sltu         t3, t6, sp
                  andi         s4, a2, 1582
                  slti         ra, s4, -1673
                  bge          t5, s8, 235f
                  auipc        t6, 115160
                  andi         t4, s1, -724
                  bne          t0, s6, 223f
                  sra          s7, s8, s2
                  add          t3, s8, sp
                  blt          tp, tp, 225f
                  or           a2, s11, a5
223:              srl          a1, a2, sp
224:              addi         tp, s9, -1461
225:              addi         sp, s7, 1968
226:              sll          a0, s9, s8
                  beq          s11, t6, 244f
                  nop
                  addi         sp, s4, 360
                  beq          zero, t2, 249f
                  srai         a7, t4, 18
                  beq          a0, s6, 250f
                  srl          t4, t3, sp
                  nop
235:              srl          tp, s11, t3
                  slli         a1, t0, 22
                  nop
                  slli         a5, t5, 14
                  xori         s4, ra, 159
                  bltu         s10, t1, 250f
                  sub          s10, t4, t0
                  ori          t2, gp, 390
                  srai         s8, s7, 31
244:              sra          t3, t5, t3
                  add          s4, t0, a3
                  sub          t6, t4, sp
                  add          gp, a7, t1
                  srai         t6, s1, 18
249:              ori          t1, t4, 21
250:              slli         s1, s9, 8
                  andi         a4, s9, 1315
                  and          t2, s8, ra
                  nop
                  xori         a3, t3, -198
                  nop
                  xor          a7, a0, s7
                  bgeu         zero, s8, 265f
                  sll          t6, s9, s7
                  srl          a3, s0, a2
                  sra          t4, t1, a7
                  slt          a0, a0, a5
                  bgeu         a6, t0, 265f
                  sra          s7, t4, s11
                  addi         s11, t3, -612
265:              auipc        a2, 761456
                  ori          s9, s1, -1964
                  bge          a6, a4, 273f
                  bgeu         sp, a4, 284f
                  ori          a4, s11, -1071
                  xor          a2, s2, a0
                  srl          t4, a6, ra
                  sltiu        s9, s6, 1961
273:              bne          s4, a4, 282f
                  addi         gp, ra, 766
                  ori          s7, s0, 932
                  srai         a7, t6, 11
                  lui          s6, 796926
                  bne          s3, a0, 294f
                  srl          t5, gp, t0
                  addi         s4, t3, -409
                  srli         ra, sp, 17
282:              ori          s1, t1, -1374
                  ori          t6, s11, 1139
284:              sltiu        t2, zero, 1440
                  srl          gp, a5, sp
                  sra          s8, zero, a7
                  bge          tp, s7, 294f
                  bltu         s3, s11, 289f
289:              xori         s8, t6, -2039
                  sltiu        t2, zero, -926
                  srai         a2, t3, 20
                  nop
                  blt          s6, a1, 296f
294:              addi         a7, t4, -514
                  ori          t6, t4, 1499
296:              beq          sp, t3, 316f
                  sltu         a2, a0, t0
                  bne          t5, zero, 300f
                  sltu         zero, s10, s4
300:              bgeu         a4, a5, 310f
                  ori          s11, s1, 860
                  ori          a7, t3, -358
                  ori          s9, t0, -1258
                  sra          s9, s4, s5
                  blt          s6, zero, 307f
                  and          t1, t5, a5
307:              bge          a4, t4, 316f
                  add          a3, t6, s9
                  slli         t3, s3, 7
310:              slt          s2, s0, s7
                  slti         s11, t1, -16
                  lui          s2, 494865
                  slti         a1, a0, 723
                  slti         s11, s9, 225
                  addi         s11, a2, 782
316:              xor          s4, s11, s0
                  bltu         a0, t6, 323f
                  auipc        a0, 304001
                  srl          s1, zero, s3
                  addi         s9, s7, 1071
                  srl          a1, sp, s6
                  slti         a7, a7, -727
323:              sll          t2, s6, s10
                  slti         a1, a6, 1357
                  bgeu         ra, s4, 333f
                  or           a5, s10, a7
                  xor          s9, a7, gp
                  sub          s6, a0, s6
                  auipc        a1, 74193
                  andi         s5, a3, -425
                  bge          s6, s10, 332f
332:              srl          s4, t1, sp
333:              sltu         t2, s10, gp
                  srai         s1, s11, 13
                  add          s9, a3, sp
                  or           s8, a1, t1
                  andi         a5, a0, -1134
                  andi         a5, s4, -782
                  sltiu        s5, s5, -122
                  blt          a4, a1, 355f
                  and          s9, a6, a7
                  sra          t3, sp, a3
                  slti         t1, a1, -1600
                  xor          t6, tp, t3
                  bge          t5, a2, 352f
                  slli         a4, zero, 15
                  slli         s5, ra, 26
                  bge          t5, zero, 357f
                  sub          a0, gp, s8
                  andi         t2, tp, 239
                  sra          tp, a5, a0
352:              sub          a4, t0, zero
                  xori         zero, t3, -1458
                  and          s2, tp, a6
355:              sub          a0, t2, s5
                  auipc        sp, 422157
357:              xor          s9, ra, s8
                  lui          s4, 692912
                  sltu         a5, s2, t4
                  andi         s7, a5, -1741
                  slli         t2, a2, 1
                  addi         t4, a1, -1580
                  sra          s2, zero, a2
                  andi         s9, s8, -1336
                  add          a3, a1, s11
                  srl          t3, a0, s1
                  xor          s1, a2, t3
                  andi         a4, gp, 446
                  addi         s8, a4, -695
                  slli         t1, s1, 24
                  sub          a2, ra, t2
                  add          a5, t3, a5
                  beq          t6, zero, 385f
                  slti         s7, tp, -1051
                  srl          s7, a3, s0
                  sra          a3, s5, a2
                  auipc        s11, 831432
                  sll          t3, t1, s9
                  sll          t4, t2, sp
                  srai         a1, t2, 19
                  bge          s2, s3, 385f
                  srli         a6, t2, 2
                  lui          ra, 492583
                  and          t1, s4, s5
385:              sra          a0, s9, s9
                  slt          ra, s6, a3
                  lw           s8, 4(s0)
                  addi         s6, a5, 823
                  addi         s0, s0, 20
                  slli         a0, s9, 27
                  srli         a4, t6, 10
                  or           s2, s11, a0
609:              addi x12, x24, 1
609:              jalr x12, x12, 0
sub_1:            slt          a6, t2, a4
                  nop
                  addi         s0, s0, -12
                  sltiu        a1, a1, 300
                  sltiu        t3, s5, 222
                  add          t2, s9, s5
                  sub          ra, s4, a7
                  sw           s8, 4(s0)
                  xori         s2, t2, 1030
                  slti         s4, zero, -1809
                  addi         s5, t6, -215
                  xori         s2, s11, 1218
                  sra          a2, t1, s3
                  slt          a2, a1, a4
                  add          ra, s4, a5
                  sltu         s7, t5, t6
                  add          a5, t3, gp
                  xor          a2, gp, s8
                  slli         s5, s11, 2
                  sltu         a2, t6, t1
                  slt          t1, s4, gp
sub_1_j3:         jal          s8, sub_2 #jump sub_1 -> sub_2
                  andi         a0, a3, 1442
                  srai         s8, a3, 25
                  srai         t2, t1, 10
                  sltu         s6, s4, t5
                  sll          t1, a5, t1
                  addi         t1, t2, 529
                  sra          ra, a6, t0
                  blt          tp, gp, sub_1_j4 #branch to jump instr
                  srli         s10, t6, 24
                  ori          s10, a6, 1027
sub_1_j4:         jal          s8, sub_2 #jump sub_1 -> sub_2
                  addi         a6, zero, 3 #init loop 0 counter
                  add          s2, s5, t2
                  auipc        s7, 212213
                  nop
                  srli         s1, s8, 27
                  slt          sp, s3, sp
                  addi         t5, zero, -12 #init loop 0 limit
sub_1_1_0_t:      slt          a7, ra, t0
                  addi         a6, a6, -5 #update loop 0 counter
                  lui          s11, 238142
                  bne          a6, t5, sub_1_1_0_t #branch for loop 0
                  slti         a5, t3, 793
                  addi         t1, zero, 10 #init loop 0 counter
                  addi         a2, zero, 10 #init loop 0 limit
sub_1_0_0_t:      xor          t3, s3, s3
                  addi         t1, t1, -9 #update loop 0 counter
                  bgeu         t1, a2, sub_1_0_0_t #branch for loop 0
                  sub          s11, a3, t5
                  nop
                  addi         t4, t6, -1298
                  addi         a5, s10, 1811
                  bltu         t2, a6, 11f
                  bne          s3, t1, 7f
                  beq          s0, s7, 24f
                  sll          a6, tp, s10
7:                sll          s7, gp, s2
                  srai         t5, s3, 17
                  bne          ra, t5, 23f
                  andi         a2, a5, -1089
11:               slli         ra, s1, 19
                  lui          a3, 1032566
                  bge          s9, tp, 30f
                  and          s7, tp, ra
                  slt          s5, t5, a2
                  srl          a0, t1, s6
                  or           s10, s7, zero
                  sltiu        sp, gp, 1260
                  ori          tp, a2, -1244
                  add          gp, s3, t6
                  add          s9, s5, ra
                  sub          s5, a0, s6
23:               blt          s11, t2, 36f
24:               andi         s11, s0, 1497
                  srai         a1, a6, 25
                  srl          t1, a3, zero
                  sra          t2, a6, a1
                  or           t4, s4, zero
                  or           a7, t1, a2
30:               bne          s9, a4, 42f
                  bne          t6, t1, 51f
                  srl          s1, s11, zero
                  and          a1, gp, s0
                  lui          s11, 389152
                  slli         t5, a5, 22
36:               sltu         s1, s3, t6
                  lui          s10, 999013
                  sltu         s6, s5, t5
                  srai         a4, s10, 26
                  bne          t1, s7, 51f
                  srai         s7, s10, 3
42:               auipc        s4, 656879
                  and          gp, gp, t5
                  srli         t2, t3, 0
                  srli         s10, s6, 14
                  beq          a4, a3, 58f
                  sltu         t5, a1, a5
                  or           s5, a2, t2
                  sltiu        t4, s9, -73
                  srli         t2, a0, 18
51:               andi         a4, t4, 359
                  andi         t3, a0, -542
                  xor          s9, ra, t4
                  and          a4, ra, s9
                  sltu         t4, t6, s7
                  add          a6, a7, ra
                  srli         t1, a4, 25
58:               xor          a5, s5, s11
                  bltu         s3, s3, 79f
                  sra          s5, a0, a3
                  ori          t2, s9, -841
                  bltu         t4, s4, 75f
                  blt          a7, s5, 75f
                  lui          s8, 170031
                  sub          s9, a5, t1
                  slti         a5, a3, 128
                  ori          s6, s0, -1304
                  bltu         zero, s2, 74f
                  beq          s7, s0, 77f
                  blt          t0, s1, 87f
                  bne          a0, s5, 90f
                  ori          s9, a1, -302
                  sub          gp, s10, s10
74:               bge          gp, a3, 87f
75:               xor          t3, s5, s2
                  lui          t1, 394590
77:               beq          s7, a2, 94f
                  sub          s9, a1, t6
79:               sll          a7, a7, tp
                  lui          ra, 850945
                  bne          s0, t6, 98f
                  xor          s4, s9, s6
                  nop
                  sltiu        sp, t2, 928
                  auipc        sp, 78486
                  sub          s6, t3, t1
87:               addi         tp, t4, -1209
                  bne          t4, t4, 99f
                  add          gp, t1, gp
90:               slli         t6, a5, 13
                  addi         a4, zero, -251
                  srli         a5, s1, 3
                  sub          t6, s6, s11
94:               xor          a0, s9, gp
                  srai         s1, t6, 28
                  blt          s9, a2, 109f
                  xori         t5, t6, 2043
98:               bltu         s7, s8, 107f
99:               xor          t5, a1, gp
                  auipc        s5, 278271
                  srl          a1, t5, a3
                  sltu         a0, s3, s10
                  sltu         t3, s1, gp
                  slli         a5, s10, 24
                  slli         zero, s6, 18
                  blt          a4, t6, 109f
107:              xori         a4, s4, 1093
                  srli         a0, t2, 28
109:              and          t3, gp, a7
                  xor          s5, t6, t5
                  lw           s8, 4(s0)
                  sub          s7, a5, s10
                  xor          s7, a7, zero
                  srl          s10, a1, t0
                  addi         s0, s0, 12
                  slt          s6, t6, s6
168:              addi x21, x24, 1
168:              jalr x21, x21, 0
sub_4:            slt          s2, s8, a6
                  bgeu         a3, s1, sub_4_stack_p
                  nop
sub_4_stack_p:    addi         s0, s0, -12
                  and          sp, s2, a3
                  auipc        s10, 205182
                  or           t1, s4, s4
                  sw           s8, 4(s0)
                  xor          t2, t5, t4
                  slt          a1, s1, sp
                  addi         tp, zero, 8 #init loop 1 counter
                  ori          ra, s5, -1354
                  slt          t6, s8, s1
                  lui          s10, 466517
                  addi         a3, zero, 8 #init loop 1 limit
                  or           sp, s10, s11
                  lui          t2, 696747
sub_4_0_1_t:      andi         s1, t2, -1430
                  addi         tp, tp, -7 #update loop 1 counter
                  srai         sp, s3, 26
                  andi         t4, s3, -769
                  addi         t3, zero, 3 #init loop 0 counter
                  addi         s11, zero, 8 #init loop 0 limit
                  auipc        t4, 1038832
sub_4_0_0_t:      and          sp, t2, s10
                  slt          sp, s5, s9
                  or           s9, s10, ra
                  addi         t3, t3, 3 #update loop 0 counter
                  sltu         gp, a4, t2
                  bltu         t3, s11, sub_4_0_0_t #branch for loop 0
                  srai         s9, tp, 21
                  bgeu         tp, a3, sub_4_0_1_t #branch for loop 1
                  xori         s7, s9, 764
                  blt          s2, s3, 19f
                  xor          a0, t0, t5
                  ori          s10, s11, -213
                  slt          tp, t0, zero
                  lui          t2, 1046562
                  slt          t4, t3, s6
                  add          s9, s3, a1
                  bge          t5, t1, 10f
                  lui          sp, 90607
                  sltu         a1, zero, s0
10:               slt          t4, t3, s6
                  ori          s7, a1, 1158
                  andi         a7, s2, 1706
                  slt          s9, a1, a6
                  srai         a1, s2, 30
                  auipc        s1, 961233
                  sltu         a4, t2, s4
                  sub          s5, a3, s10
                  srl          s5, a6, a2
19:               sra          tp, ra, a6
                  blt          t1, s4, 22f
                  bgeu         gp, s2, 39f
22:               add          t1, s1, s9
                  sltiu        s1, sp, 347
                  sra          s1, t1, t0
                  srl          t4, a0, s5
                  auipc        a3, 1004930
                  or           s1, sp, s9
                  srli         s7, t4, 29
                  addi         a7, s5, -1164
                  srli         ra, a2, 19
                  nop
                  slli         a4, sp, 26
                  sra          s6, zero, sp
                  slti         tp, s3, -1082
                  bge          s0, t0, 36f
36:               sll          t1, s7, sp
                  ori          s2, s9, -1735
                  and          s2, s5, sp
39:               addi         t6, a5, -589
                  bgeu         t5, t3, 56f
                  or           t4, s8, a4
                  slli         a5, t3, 25
                  sltiu        t6, s2, 1234
                  sltu         a5, s6, a3
                  add          s2, a2, a5
                  addi         t5, ra, -996
                  sub          s6, gp, s5
                  sra          t3, a6, s7
                  slt          s7, a0, ra
                  sltiu        a6, s10, 324
                  xori         s4, tp, 705
                  bne          s10, a5, 55f
                  ori          s11, s10, 415
                  sltiu        a3, a4, -1154
55:               xor          t3, zero, s10
56:               bgeu         s6, t3, 58f
                  bne          a1, t0, 58f
58:               andi         t4, s5, -995
                  or           a6, s8, s4
                  bltu         s5, t3, 76f
                  add          t3, t5, a2
                  auipc        zero, 1036711
                  sltiu        s9, s3, -749
                  bltu         a7, s11, 76f
                  bltu         t5, s0, 67f
                  sra          sp, s4, t6
67:               or           t5, s1, t4
                  add          sp, t1, s10
                  add          a0, s11, s2
                  auipc        a0, 173906
                  sll          s4, t6, s2
                  beq          a0, s4, 76f
                  bgeu         s4, t1, 76f
                  sltu         s4, gp, s7
                  blt          s9, t3, 76f
76:               addi         s9, s5, -224
                  addi         t1, t6, -890
                  lw           s8, 4(s0)
                  lui          t2, 676543
                  addi         s0, s0, 12
                  add          s7, s11, a6
                  sll          ra, s4, t4
116:              addi x13, x24, 0
116:              jalr x13, x13, 0
sub_3:            sll          zero, a3, s2
                  sltu         t5, ra, s7
                  slli         t4, t6, 21
                  addi         sp, s1, -835
                  or           gp, sp, t1
                  ori          s9, t5, 1259
                  slt          t5, s0, t6
                  addi         s0, s0, -36
                  sw           s8, 4(s0)
                  lui          zero, 596377
                  addi         t4, zero, 10 #init loop 0 counter
                  andi         s11, s3, 823
                  addi         s8, zero, 9 #init loop 0 limit
                  or           s5, s1, s3
sub_3_2_0_t:      ori          a7, t6, -163
                  add          s2, s2, t5
                  addi         t4, t4, -7 #update loop 0 counter
                  bgeu         t4, s8, sub_3_2_0_t #branch for loop 0
                  ori          s10, a6, -1419
                  addi         t6, zero, 10 #init loop 0 counter
                  addi         s4, a3, -338
                  sra          a3, s9, t5
                  sub          t5, a7, t3
                  addi         a4, zero, -19 #init loop 0 limit
                  sub          tp, a2, a0
sub_3_0_0_t:      sltiu        s10, s7, -1546
                  ori          t4, s6, 263
                  addi         t6, t6, -6 #update loop 0 counter
                  lui          s9, 757417
                  or           t3, a7, s11
                  sub          t4, sp, sp
                  add          a7, s2, a3
                  andi         t4, s1, 868
                  bge          t6, a4, sub_3_0_0_t #branch for loop 0
                  sltiu        t5, t3, -852
                  addi         a6, zero, 9 #init loop 0 counter
                  xori         s6, t3, 589
                  sltiu        a3, t0, 968
                  andi         s6, a1, -575
                  srai         s8, a2, 21
                  and          s10, t0, t4
                  and          s9, zero, a0
                  addi         gp, zero, 8 #init loop 0 limit
sub_3_1_0_t:      xor          t3, a6, s9
                  auipc        s2, 385275
                  addi         a6, a6, -6 #update loop 0 counter
                  andi         s4, a7, -1364
                  or           a5, s8, a0
                  bgeu         a6, gp, sub_3_1_0_t #branch for loop 0
                  xor          t4, s9, t1
                  bge          t5, tp, 15f
                  sll          ra, s6, a7
                  ori          a6, a3, -639
                  bgeu         t6, a1, 20f
                  slli         ra, sp, 2
                  sll          gp, a6, zero
                  bgeu         a3, a3, 12f
                  slli         s2, t4, 10
                  bgeu         t3, t1, 15f
                  bne          a1, s11, 20f
                  andi         ra, gp, -297
                  slli         t4, t0, 18
12:               bne          s5, s10, 18f
                  and          t5, s10, sp
                  ori          s8, s9, -1853
15:               andi         s10, a6, -754
                  bltu         ra, t6, 33f
                  beq          s11, a4, 21f
18:               auipc        s6, 250954
                  sra          a7, a1, t6
20:               slti         s7, s9, 123
21:               add          a2, t4, s11
                  sltiu        s4, s5, 1820
                  bge          t0, t6, 25f
                  sltu         s5, t3, t1
25:               lui          zero, 580407
                  srli         ra, sp, 14
                  slli         sp, t2, 8
                  bltu         t5, s6, 38f
                  srl          s10, s2, s9
                  lui          a2, 1008123
                  slli         tp, a2, 11
                  bne          s2, a7, 37f
33:               sltu         s4, t5, t3
                  bgeu         t3, s11, 49f
                  sltu         s10, ra, sp
                  bne          s1, t4, 54f
37:               slli         s7, t0, 31
38:               sltiu        ra, a5, -1776
                  srl          a4, s9, s4
                  bne          a0, zero, 45f
                  bgeu         sp, s5, 47f
                  xor          a2, s3, a1
                  srli         a7, s5, 30
                  slti         a1, sp, -1153
45:               bne          t6, t5, 59f
                  nop
47:               sub          t2, a0, s11
                  bge          t0, t5, 64f
49:               slt          s10, tp, t3
                  sra          t2, ra, s11
                  sra          a1, a0, a6
                  lui          zero, 901702
                  auipc        s11, 750728
54:               lui          tp, 497763
                  bgeu         s10, t5, 63f
                  sll          s2, s10, tp
                  ori          s7, s8, -2032
                  bgeu         ra, s7, 76f
59:               bgeu         t2, s7, 69f
                  slti         t5, a5, -889
                  xor          gp, ra, ra
                  and          t1, t3, s11
63:               srai         a7, s11, 20
64:               bge          s9, t1, 68f
                  sra          a3, s0, zero
                  bgeu         s4, s5, 76f
                  bgeu         a7, t5, 85f
68:               slti         s2, a5, -98
69:               lui          t5, 366193
                  sltiu        a6, s6, -263
                  sltu         t3, s4, a2
                  sltu         s4, s7, t3
                  nop
                  slti         t2, a1, 32
                  nop
76:               srl          a3, s11, s2
                  or           t5, s1, s3
                  sltiu        s1, s2, 1744
                  ori          a6, t6, 1696
                  andi         gp, s3, -51
                  xori         tp, a5, -396
                  slt          tp, a7, s1
                  srl          ra, s5, t5
                  bne          a4, s10, 99f
85:               sltiu        s7, t0, -1016
                  bgeu         t0, a3, 90f
                  or           s5, zero, s8
                  bne          s5, t5, 92f
                  sll          s10, s2, s2
90:               bgeu         s10, a2, 94f
                  beq          s10, tp, 104f
92:               sltiu        ra, zero, -175
                  srl          s9, a6, a6
94:               ori          sp, a7, 900
                  xor          t6, s1, t2
                  andi         t4, t0, -1232
                  beq          zero, s4, 117f
                  blt          t6, s5, 101f
99:               sltiu        s6, a6, 1272
                  srli         tp, s3, 25
101:              bne          tp, a1, 107f
                  sub          s8, s2, a1
                  add          sp, s1, a4
104:              sll          t1, s2, s6
                  srl          s10, a6, s6
                  sra          a1, a2, s2
107:              or           a2, t0, sp
                  bge          s7, s9, 126f
                  nop
                  bne          t0, a3, 127f
                  srai         s2, a1, 31
                  beq          tp, s8, 117f
                  sra          s4, a4, ra
                  bne          s7, tp, 124f
                  bne          s4, a7, 133f
                  sll          t2, t0, a3
117:              lui          s11, 607590
                  xori         s4, s8, -834
                  blt          s9, a3, 123f
                  or           ra, sp, s1
                  nop
                  bge          t2, a1, 125f
123:              bge          s0, s0, 134f
124:              bltu         t4, zero, 132f
125:              sra          s6, s11, a5
126:              add          s4, s7, a6
127:              slt          t6, a1, gp
                  nop
                  blt          t5, ra, 136f
                  bne          a2, s2, 136f
                  or           a4, a1, tp
132:              bge          t3, a6, 148f
133:              sll          a0, t2, gp
134:              or           t1, sp, tp
                  and          gp, t2, a0
136:              lui          ra, 238834
                  ori          a3, a7, -1745
                  or           s11, a7, t3
                  auipc        a3, 287489
                  srl          a7, t1, t0
                  ori          s9, t2, -1372
                  sltiu        s1, t4, -607
                  addi         a2, s11, 1211
                  beq          s4, s11, 149f
                  xori         a2, t4, -417
                  beq          t5, t3, 152f
                  slli         s7, t0, 20
148:              srai         a3, s5, 4
149:              andi         t4, s4, 1035
                  srl          s6, ra, t4
                  or           a0, s4, t0
152:              bne          a1, s5, 165f
                  ori          sp, a6, -123
                  sltiu        t3, s3, -622
                  xori         a7, s9, -1008
                  lui          zero, 687855
                  bltu         a0, s5, 167f
                  srli         t3, s4, 13
                  srai         tp, t3, 11
                  slti         t5, gp, 1983
                  lui          t1, 532650
                  lui          t1, 810217
                  bne          a0, s7, 167f
                  lui          s6, 237745
165:              lui          t3, 701793
                  lui          s7, 399361
167:              sltu         s2, t6, s10
                  slti         s5, s6, 222
                  srl          s5, s11, s1
                  sltiu        s6, s3, -1873
                  sra          gp, a0, a2
                  sra          sp, tp, a7
                  sltiu        ra, t4, -271
                  ori          a3, t3, -1220
                  srl          s1, a6, s10
                  and          s8, s9, t0
                  bgeu         a3, s0, 181f
                  sltu         a3, sp, s8
                  srli         t5, a2, 14
                  sltu         a5, s0, t3
181:              lui          a5, 679865
                  sra          s7, s9, s4
                  sub          a3, a7, s7
                  bne          tp, t2, 187f
                  sltu         t3, a3, s5
                  bltu         s11, s7, 187f
187:              sra          t5, tp, tp
                  srai         a6, s11, 22
                  sub          zero, s2, gp
                  xori         a7, s10, 1980
                  lw           s8, 4(s0)
                  addi         s0, s0, 36
                  srai         gp, t2, 23
                  sra          s5, t0, s11
                  srai         a2, a3, 22
                  srl          t5, a7, t2
                  srl          gp, s8, s11
248:              addi x25, x24, 0
248:              jalr x25, x25, 0
sub_5:            ori          gp, s4, -1569
                  bne          s5, sp, sub_5_stack_p
sub_5_stack_p:    addi         s0, s0, -28
                  sra          a5, s7, t2
                  addi         a2, s1, 1264
                  sw           s8, 4(s0)
                  xori         s1, t2, 1027
                  addi         s8, zero, -1 #init loop 1 counter
                  addi         t2, zero, -11 #init loop 1 limit
sub_5_10_1_t:     add          s4, t3, s3
                  addi         s8, s8, -10 #update loop 1 counter
                  andi         a5, s0, 897
                  sltiu        t5, a0, 524
                  addi         tp, zero, 5 #init loop 0 counter
                  addi         a6, zero, 13 #init loop 0 limit
sub_5_10_0_t:     nop
                  srl          sp, a3, a6
                  addi         tp, tp, 8 #update loop 0 counter
                  addi         a4, gp, 487
                  bne          tp, a6, sub_5_10_0_t #branch for loop 0
                  bne          s8, t2, sub_5_10_1_t #branch for loop 1
                  sub          a1, tp, t3
                  addi         s7, zero, -10 #init loop 1 counter
                  addi         a6, zero, 8 #init loop 1 limit
                  slt          s9, s5, a2
sub_5_5_1_t:      or           a3, t3, a0
                  sub          s9, t6, s5
                  addi         s7, s7, 9 #update loop 1 counter
                  addi         a5, zero, 5 #init loop 0 counter
                  auipc        a2, 988248
                  addi         ra, zero, -3 #init loop 0 limit
                  srli         s5, s1, 1
                  slli         s10, a3, 6
                  srl          t3, a3, s2
                  srl          s6, t2, a1
                  sltiu        s4, a0, 1549
sub_5_5_0_t:      nop
                  addi         a5, a5, -6 #update loop 0 counter
                  lui          a4, 687468
                  bge          a5, ra, sub_5_5_0_t #branch for loop 0
                  bne          s7, a6, sub_5_5_1_t #branch for loop 1
                  andi         s6, zero, -1632
                  addi         s7, zero, 5 #init loop 0 counter
                  andi         s10, gp, -1150
                  slli         s2, gp, 28
                  or           a5, t0, tp
                  srli         t6, s6, 29
                  addi         a2, ra, -1148
                  sltiu        t3, t2, -1169
                  or           a2, a1, t0
                  addi         s8, zero, 19 #init loop 0 limit
                  sub          sp, zero, sp
                  andi         gp, t2, 1089
                  ori          a4, t4, 558
                  add          ra, a2, a7
                  sltiu        s6, a4, -384
                  or           zero, a0, t4
                  srl          zero, t6, t3
sub_5_11_0_t:     andi         t5, a2, 689
                  slti         t1, s1, 318
                  sll          gp, s1, t4
                  addi         s7, s7, 1 #update loop 0 counter
                  auipc        a6, 366286
                  nop
                  slti         tp, s8, -1760
                  xor          a7, s6, a5
                  bne          s7, s8, sub_5_11_0_t #branch for loop 0
                  srai         a0, ra, 4
                  addi         gp, zero, 8 #init loop 1 counter
                  addi         s6, zero, -19 #init loop 1 limit
                  srai         t3, a6, 28
                  sub          sp, t2, s0
sub_5_4_1_t:      slti         t5, s11, 1429
                  srli         tp, s1, 10
                  nop
                  sltu         tp, s0, t2
                  addi         gp, gp, -9 #update loop 1 counter
                  addi         s11, zero, -2 #init loop 0 counter
                  lui          t6, 226006
                  addi         a5, zero, -16 #init loop 0 limit
sub_5_4_0_t:      nop
                  sra          s8, t4, t6
                  addi         s11, s11, -2 #update loop 0 counter
                  sltiu        tp, s3, 643
                  bne          s11, a5, sub_5_4_0_t #branch for loop 0
                  addi         s5, a2, 1291
                  bne          gp, s6, sub_5_4_1_t #branch for loop 1
                  slt          t3, s3, t0
                  addi         s4, zero, 8 #init loop 0 counter
                  slti         s5, s4, 56
                  srai         s10, s7, 15
                  addi         t4, s1, -471
                  srl          s10, a0, s9
                  addi         t1, zero, 8 #init loop 0 limit
                  sltiu        s1, s0, 1367
                  auipc        t5, 482731
sub_5_0_0_t:      add          a2, t5, s0
                  xor          a2, a3, s8
                  sll          a2, a6, s3
                  srli         s9, s8, 6
                  ori          t5, a3, 298
                  xor          t4, a6, zero
                  and          s5, t5, a7
                  addi         s4, s4, -3 #update loop 0 counter
                  and          a5, sp, s10
                  srli         ra, a7, 21
                  xori         ra, a7, 1203
                  or           s11, s5, a5
                  lui          a6, 274120
                  bgeu         s4, t1, sub_5_0_0_t #branch for loop 0
                  auipc        t3, 60454
                  addi         a0, zero, 4 #init loop 1 counter
                  addi         t1, zero, 18 #init loop 1 limit
sub_5_3_1_t:      xori         s1, s9, 1711
                  addi         a0, a0, 9 #update loop 1 counter
                  andi         t6, zero, -1075
                  addi         s4, zero, 5 #init loop 0 counter
                  addi         s6, zero, 2 #init loop 0 limit
sub_5_3_0_t:      sltu         s9, s10, zero
                  auipc        t2, 458098
                  addi         s4, s4, -9 #update loop 0 counter
                  bge          s4, s6, sub_5_3_0_t #branch for loop 0
                  blt          a0, t1, sub_5_3_1_t #branch for loop 1
                  addi         s7, a2, -1105
                  addi         s1, zero, -5 #init loop 0 counter
                  xor          s4, t5, a5
                  xori         a0, s2, 1967
                  sra          a0, t5, t2
                  sub          s9, s8, s0
                  addi         t6, zero, 19 #init loop 0 limit
                  addi         a3, s4, 1126
                  slli         s7, a0, 6
                  slli         s4, tp, 2
                  srl          t5, t1, s2
                  auipc        sp, 243886
                  auipc        ra, 784995
                  addi         t1, t3, -377
sub_5_13_0_t:     lui          a6, 1003455
                  slli         s2, gp, 6
                  slt          t5, t6, t5
                  ori          a2, gp, -1064
                  auipc        s5, 933057
                  andi         a4, s1, 1050
                  slt          a7, s3, s11
                  addi         s1, s1, 6 #update loop 0 counter
                  sltu         t4, sp, t1
                  nop
                  srai         s10, s8, 27
                  sra          a4, t4, zero
                  srli         sp, s6, 23
                  bltu         s1, t6, sub_5_13_0_t #branch for loop 0
                  srai         a5, s2, 4
                  addi         s11, zero, -6 #init loop 1 counter
                  sltiu        s7, a6, 1797
                  lui          s9, 735583
                  sll          t4, gp, sp
                  ori          s8, a2, 949
                  sub          zero, s0, a6
                  addi         t2, zero, 2 #init loop 1 limit
                  sltu         t6, t5, gp
sub_5_16_1_t:     andi         t5, t4, 487
                  and          s2, a5, zero
                  addi         s11, s11, 8 #update loop 1 counter
                  srli         a3, zero, 5
                  andi         t6, s0, -364
                  addi         tp, zero, 9 #init loop 0 counter
                  srli         a5, s6, 28
                  ori          s5, a4, -1027
                  slti         gp, s5, 1681
                  addi         a2, zero, 4 #init loop 0 limit
sub_5_16_0_t:     ori          s4, ra, -606
                  addi         tp, tp, -2 #update loop 0 counter
                  andi         s1, t3, 1854
                  bgeu         tp, a2, sub_5_16_0_t #branch for loop 0
                  bne          s11, t2, sub_5_16_1_t #branch for loop 1
                  slli         t5, t0, 24
                  addi         a5, zero, 8 #init loop 1 counter
                  addi         a1, zero, 4 #init loop 1 limit
sub_5_17_1_t:     slt          ra, t6, t0
                  addi         a5, a5, -2 #update loop 1 counter
                  sub          t4, s5, s4
                  addi         t6, zero, -2 #init loop 0 counter
                  addi         s7, zero, 20 #init loop 0 limit
sub_5_17_0_t:     xori         t1, t3, 792
                  addi         t6, t6, 5 #update loop 0 counter
                  bltu         t6, s7, sub_5_17_0_t #branch for loop 0
                  sra          a0, s1, t6
                  bgeu         a5, a1, sub_5_17_1_t #branch for loop 1
                  or           s5, s10, s1
                  addi         t5, zero, -9 #init loop 1 counter
                  addi         a0, zero, 2 #init loop 1 limit
                  xor          a1, tp, t0
sub_5_14_1_t:     sub          s10, s0, s8
                  xori         s9, t4, 83
                  slli         a3, t6, 23
                  sra          s10, a5, a3
                  addi         t5, t5, 2 #update loop 1 counter
                  sra          a1, tp, s4
                  slti         gp, s6, 75
                  srl          s9, s7, a4
                  nop
                  addi         s6, zero, 2 #init loop 0 counter
                  addi         s2, zero, 16 #init loop 0 limit
                  sra          a7, gp, a3
sub_5_14_0_t:     nop
                  ori          s8, a2, -1231
                  nop
                  addi         s6, s6, 2 #update loop 0 counter
                  sll          t3, a3, t6
                  bltu         s6, s2, sub_5_14_0_t #branch for loop 0
                  ori          s11, s4, 419
                  blt          t5, a0, sub_5_14_1_t #branch for loop 1
                  nop
                  addi         s1, zero, -8 #init loop 0 counter
                  sltiu        a3, tp, -1564
                  addi         t1, zero, -14 #init loop 0 limit
sub_5_9_0_t:      addi         s8, s4, -130
                  srl          sp, s6, t0
                  addi         s1, s1, -2 #update loop 0 counter
                  bge          s1, t1, sub_5_9_0_t #branch for loop 0
                  slt          tp, a4, gp
                  addi         t6, zero, 1 #init loop 0 counter
                  xor          a7, t2, a5
                  srai         a6, s1, 27
                  addi         t1, zero, -6 #init loop 0 limit
                  sltu         t5, sp, s8
                  ori          s5, s5, 1796
                  add          s4, s5, s1
                  auipc        sp, 486395
                  xor          s4, s0, a3
                  lui          a2, 173384
sub_5_19_0_t:     andi         t5, s2, 1940
                  sra          a4, s0, s4
                  slti         sp, a7, -1772
                  or           zero, s0, a2
                  srli         s5, a1, 27
                  srli         s5, t3, 3
                  srai         sp, gp, 6
                  slti         s2, sp, 193
                  add          s2, s2, s8
                  addi         t6, t6, -7 #update loop 0 counter
                  nop
                  srl          sp, s0, s7
                  auipc        ra, 257339
                  beq          t6, t1, sub_5_19_0_t #branch for loop 0
                  slti         sp, zero, -1598
                  addi         a6, zero, 9 #init loop 1 counter
                  sra          s8, s11, s8
                  sra          s11, a1, zero
                  srl          s11, t4, s0
                  sra          ra, gp, s6
                  addi         a0, zero, 7 #init loop 1 limit
                  and          s1, s1, s3
sub_5_15_1_t:     slt          s5, s2, a3
                  xori         zero, t1, -1264
                  addi         a6, a6, -6 #update loop 1 counter
                  sub          s8, s3, t4
                  addi         t4, zero, 9 #init loop 0 counter
                  addi         s7, zero, 4 #init loop 0 limit
                  sltiu        ra, t5, -1594
sub_5_15_0_t:     or           tp, a4, ra
                  or           s1, s2, t1
                  auipc        t6, 112355
                  andi         t6, a6, -1623
                  addi         t4, t4, -5 #update loop 0 counter
                  addi         s1, s1, -131
                  bne          t4, s7, sub_5_15_0_t #branch for loop 0
                  slli         s11, a1, 31
                  bgeu         a6, a0, sub_5_15_1_t #branch for loop 1
                  sltu         a1, t1, sp
                  addi         t1, zero, -3 #init loop 1 counter
                  addi         a5, zero, 12 #init loop 1 limit
                  ori          t5, t0, -655
                  sltu         gp, s4, zero
sub_5_7_1_t:      or           s5, t2, s8
                  sub          gp, a7, s1
                  addi         t1, t1, 10 #update loop 1 counter
                  addi         t2, gp, 1040
                  addi         a4, zero, -2 #init loop 0 counter
                  nop
                  sltu         s7, s8, t3
                  xori         sp, s2, -660
                  srli         a0, a1, 3
                  addi         a7, zero, -12 #init loop 0 limit
sub_5_7_0_t:      xor          t4, s6, gp
                  sltu         t6, zero, a1
                  xor          t5, a2, ra
                  auipc        t6, 939213
                  sra          ra, a6, a2
                  auipc        t2, 434763
                  addi         a4, a4, -10 #update loop 0 counter
                  nop
                  slli         a3, a1, 28
                  ori          s5, t5, 1670
                  xor          a1, s3, s5
                  beq          a4, a7, sub_5_7_0_t #branch for loop 0
                  sltu         s11, sp, t1
                  srai         a0, t1, 14
                  ori          a2, t4, 1667
                  slti         t5, gp, -1229
                  add          s11, t4, a1
                  blt          t1, a5, sub_5_7_1_t #branch for loop 1
                  srai         t3, a2, 21
                  addi         s5, zero, 8 #init loop 1 counter
                  addi         t4, zero, 3 #init loop 1 limit
sub_5_18_1_t:     auipc        s6, 414905
                  addi         s5, s5, -5 #update loop 1 counter
                  slli         s4, s11, 7
                  sltiu        t1, a7, -1072
                  addi         tp, zero, 7 #init loop 0 counter
                  addi         a2, zero, -20 #init loop 0 limit
                  srli         a4, a3, 27
sub_5_18_0_t:     add          s6, s2, t5
                  sll          a6, a0, a4
                  addi         tp, tp, -6 #update loop 0 counter
                  srai         gp, a4, 23
                  bge          tp, a2, sub_5_18_0_t #branch for loop 0
                  beq          s5, t4, sub_5_18_1_t #branch for loop 1
                  sra          s2, a3, a1
                  addi         t5, zero, -10 #init loop 1 counter
                  addi         a3, zero, -18 #init loop 1 limit
sub_5_1_1_t:      slti         s2, a4, 713
                  srl          a5, a6, s2
                  addi         t5, t5, -2 #update loop 1 counter
                  ori          zero, s6, 1780
                  addi         sp, zero, 6 #init loop 0 counter
                  addi         s9, zero, -12 #init loop 0 limit
                  addi         a6, s9, 1989
sub_5_1_0_t:      xor          ra, s2, a0
                  slti         gp, a2, -607
                  addi         sp, sp, -10 #update loop 0 counter
                  bge          sp, s9, sub_5_1_0_t #branch for loop 0
                  bne          t5, a3, sub_5_1_1_t #branch for loop 1
                  ori          s8, a5, -691
                  srai         a3, a2, 10
                  blt          ra, a7, 13f
                  xor          a0, s5, sp
                  sll          a6, s1, s3
                  auipc        t2, 724616
                  beq          s0, s1, 13f
                  slli         s11, t4, 6
                  slli         a2, s2, 31
                  sub          s9, a0, s10
                  bge          t5, a2, 28f
                  sltu         s10, t2, s2
                  sra          a5, sp, a2
                  bltu         t3, a7, 29f
13:               lui          s7, 445289
                  slt          s5, a1, t5
                  bge          s8, t0, 18f
                  sub          s4, s1, s6
                  auipc        a2, 1038204
18:               srl          t3, t1, s3
                  blt          a7, sp, 33f
                  bgeu         s9, s10, 25f
                  sra          sp, s10, s7
                  sra          s8, t0, gp
                  sll          gp, s9, s0
                  andi         a6, t5, 716
25:               slli         s5, ra, 0
                  auipc        s10, 594182
                  slt          s2, zero, t3
28:               bltu         s11, t6, 34f
29:               add          t5, s3, a7
                  sub          t4, t3, a7
                  srai         ra, s2, 4
                  sltu         s8, s11, t2
33:               srl          t6, a5, s0
34:               or           t6, s6, a7
                  xori         a4, t3, 231
                  slli         t5, s7, 2
                  or           s2, t0, t1
                  sltu         a7, s0, ra
                  andi         tp, s10, 1267
                  andi         s9, a0, -1408
                  blt          s7, a5, 43f
                  andi         t5, t4, 1464
43:               blt          a2, s9, 57f
                  blt          a3, s2, 46f
                  blt          sp, s7, 53f
46:               sltiu        a2, t5, 230
                  sltu         s9, t1, t5
                  srli         a2, s4, 23
                  beq          zero, a1, 69f
                  bge          gp, a3, 68f
                  and          s8, t0, t5
                  srai         ra, s11, 9
53:               ori          zero, s6, 2013
                  srli         s5, t2, 6
                  auipc        s10, 25765
                  and          s8, s8, t2
57:               sltiu        s10, t6, -1169
                  sra          tp, t4, s11
                  beq          gp, s0, 76f
                  sra          a1, t0, s9
                  add          s10, s6, s9
                  slli         ra, gp, 26
                  bge          s10, s4, 68f
                  lui          s11, 405269
                  bne          s1, s6, 85f
                  bge          s10, a5, 72f
                  blt          s7, a2, 81f
68:               bge          a2, t0, 76f
69:               andi         t5, s3, 1856
                  beq          s11, zero, 85f
                  or           tp, t4, s11
72:               add          t5, s2, s10
                  sub          a7, t3, s10
                  ori          a6, t5, -1698
                  sll          s7, a2, t6
76:               lui          s10, 965345
                  sltiu        tp, a1, -1909
                  auipc        t2, 884297
                  srai         s2, a0, 27
                  auipc        s7, 199807
81:               lui          tp, 501641
                  auipc        a0, 1028629
                  srai         s5, s11, 20
                  srli         sp, t2, 31
85:               xori         s8, s6, 1693
                  sll          s8, a5, s11
                  sltiu        t6, t2, -175
                  sltiu        t5, a7, -1238
                  bne          a4, gp, 97f
                  auipc        s1, 570436
                  addi         s9, sp, -28
                  srai         sp, ra, 30
                  bltu         t5, a4, 105f
                  addi         s1, tp, -831
                  slti         a6, s6, 607
                  lui          zero, 805297
97:               addi         gp, ra, 646
                  blt          t4, s4, 118f
                  slti         t2, a2, -1445
                  or           tp, a0, tp
                  beq          s10, s2, 120f
                  xori         a5, sp, -1701
                  andi         s5, s1, 822
                  andi         a5, t3, 1327
105:              srli         s9, s2, 21
                  andi         s2, s9, 783
                  sltu         a6, s4, sp
                  srl          t1, a5, a2
                  and          a3, s0, t3
                  andi         s7, sp, -486
                  sltu         s4, s2, t2
                  sra          a1, s11, zero
                  andi         a4, s4, -1365
                  nop
                  andi         s4, a3, -810
                  srai         sp, s4, 17
                  srl          a0, s11, tp
118:              add          s10, s8, t2
                  nop
120:              sll          s2, a5, a2
                  xori         t6, s4, -1157
                  srli         zero, ra, 13
                  slt          a0, t5, s0
                  lui          ra, 92763
                  andi         t6, t0, 1329
                  nop
                  sra          t6, s4, ra
                  srli         t4, s11, 27
                  blt          a2, s8, 146f
                  andi         a4, s11, 889
                  beq          s9, ra, 149f
                  slt          sp, sp, s0
                  slli         t3, t1, 16
                  bltu         a1, zero, 149f
                  beq          t4, a7, 145f
                  bgeu         a0, s3, 153f
                  bge          t0, t5, 155f
                  addi         t2, a5, 694
                  sltiu        t6, s2, 1919
                  slti         s6, s0, 252
                  lui          t2, 401930
                  xor          s10, s5, zero
                  auipc        s6, 323943
                  add          s2, gp, a0
145:              bgeu         s2, tp, 159f
146:              sll          s10, s9, s1
                  slli         t6, s4, 4
                  addi         t4, zero, -10 #init loop 0 counter
                  sltu         a5, s9, a1
                  or           a0, a1, s2
                  srl          gp, t3, s3
                  addi         s6, zero, 19 #init loop 0 limit
                  srl          s11, s4, a3
                  andi         a2, a0, -1255
                  sll          t5, t6, t4
                  slli         a7, s9, 7
                  xor          s10, a4, s2
                  sll          s4, s1, zero
                  sltiu        t6, t5, -900
sub_5_2_0_t:      ori          a3, t2, 770
                  and          a7, t3, gp
                  slt          s11, t5, sp
                  sra          t5, a4, s4
                  add          s10, sp, s0
                  addi         t4, t4, 6 #update loop 0 counter
                  slti         ra, t6, -991
                  sltiu        s2, s4, 1114
                  add          gp, a7, t4
                  bltu         t4, s6, sub_5_2_0_t #branch for loop 0
                  slt          a1, t2, a4
                  beq          s9, sp, 168f
149:              bgeu         s9, a2, 154f
                  auipc        s10, 325137
                  sll          sp, t0, a4
                  slt          t5, a5, s8
153:              bgeu         s1, s10, 161f
154:              bgeu         a7, gp, 173f
155:              sra          gp, t6, a6
                  blt          a5, tp, 176f
                  srli         s7, t1, 20
                  and          s8, s7, s0
159:              andi         s7, a3, -1372
                  addi         s4, s6, 1134
161:              auipc        a1, 146284
                  beq          t3, s9, 172f
                  srl          s4, s6, a5
                  slti         zero, s3, 104
                  ori          s2, t3, 1656
                  beq          t3, s5, 174f
                  slt          t5, s7, s10
168:              sra          s4, ra, t5
                  blt          t0, zero, 172f
                  srli         a6, s2, 15
                  bgeu         s8, s3, 191f
172:              auipc        t5, 997480
173:              or           t6, s10, a3
174:              slli         t4, s7, 22
                  auipc        s6, 831405
176:              andi         a5, s10, 528
                  bltu         a3, s5, 189f
                  add          a5, s8, a0
                  beq          t6, a2, 185f
                  bge          a3, s4, 186f
                  slli         a6, t3, 31
                  addi         s6, gp, 1150
                  slti         zero, s10, 942
                  sltu         sp, s3, a1
185:              slti         s10, tp, -1251
186:              sll          a1, s4, ra
                  slli         s2, gp, 21
                  slt          t1, s8, gp
189:              bge          t1, s8, 203f
                  lui          t1, 424969
191:              ori          a1, a5, 626
                  bne          t6, t2, 209f
                  blt          t3, t2, 195f
                  auipc        s2, 538412
195:              srl          a0, s10, t3
                  sra          s1, s5, zero
                  beq          tp, ra, 199f
                  nop
199:              slt          s7, sp, s11
                  sra          t2, t2, s6
                  bltu         t4, t1, 209f
                  srai         a7, gp, 3
203:              sub          s11, a7, s4
                  andi         s10, a3, -1297
                  slli         s4, s1, 22
                  bne          tp, a3, 218f
                  srai         s7, a3, 3
                  auipc        s10, 519273
209:              ori          a5, a3, -1210
                  sll          a7, tp, sp
                  or           t1, a6, s0
                  slt          s1, tp, t2
                  sub          a5, ra, s0
                  nop
                  beq          t0, s1, 234f
                  sll          sp, s10, s4
                  or           zero, s9, s0
218:              slt          t6, sp, a7
                  bltu         a4, t3, 236f
                  add          t5, s4, tp
                  slli         s1, t1, 22
                  bgeu         s10, s11, 239f
                  xori         s6, a0, 1549
                  lui          s7, 380675
                  sltu         a1, a3, gp
                  srl          s6, t3, t2
                  slt          s4, s2, t4
                  blt          t4, s2, 246f
                  addi         tp, sp, -811
                  bgeu         a5, a1, 247f
                  beq          t3, a1, 236f
                  xori         s7, s3, -551
                  add          t6, s1, a6
234:              sll          a0, s7, tp
                  ori          s6, t4, -1733
236:              bne          s2, sp, 251f
                  sll          t1, ra, t2
                  bge          gp, t5, 246f
239:              or           sp, a7, a1
                  sll          a1, tp, s5
                  bge          s11, a2, 256f
                  bgeu         s3, sp, 256f
                  add          a2, a2, t0
                  or           a1, s0, s6
                  slti         s6, a7, 1962
246:              bge          t0, a2, 251f
247:              bltu         s3, s6, 253f
                  sll          t1, a2, a3
                  slli         zero, s9, 7
                  sll          t1, sp, ra
251:              slt          t6, s11, s8
                  add          s4, s9, s8
253:              slli         s2, s2, 7
                  sltiu        s8, tp, -914
                  lui          t4, 57764
256:              or           a3, a3, a2
                  xori         ra, t2, 7
                  sub          s9, s8, s6
                  xori         s9, s0, -387
                  xori         t4, gp, 1734
                  add          t5, gp, a4
                  srl          s11, t5, s2
                  sll          t4, t5, a7
                  beq          s4, a6, 269f
                  bgeu         a0, tp, 273f
                  srai         s5, gp, 23
                  and          tp, s8, t3
                  slli         tp, t1, 7
269:              sll          s7, a0, sp
                  srli         s5, s11, 21
                  slt          s10, s2, t3
                  or           ra, a5, t5
273:              sltiu        s7, s9, 434
                  blt          a2, s6, 280f
                  nop
                  and          a3, s1, a6
                  sub          zero, s10, a0
                  xor          s10, t5, s4
                  ori          t4, a1, 1000
280:              beq          tp, t6, 292f
                  sll          s8, t5, t5
                  bltu         tp, a3, 299f
                  lui          a5, 367756
                  sub          t2, s8, a3
                  xor          s5, a6, a2
                  srli         s11, s9, 11
                  srai         s1, a3, 18
                  sub          t4, a1, a0
                  bge          a5, t2, 306f
                  and          s9, s1, a3
                  lui          t3, 157079
292:              beq          s4, s8, 306f
                  sra          ra, a6, a4
                  sll          a6, s3, t6
                  xor          s1, t4, s9
                  or           zero, a2, t4
                  sll          s1, s11, s3
                  add          gp, a3, s4
299:              sltu         a1, a0, s2
                  addi         s2, sp, -887
                  addi         a0, s11, 759
                  or           s9, s11, t0
                  auipc        a0, 856999
                  nop
                  bne          sp, s2, 324f
306:              beq          s0, a3, 321f
                  sub          a2, a3, s0
                  sra          a3, s6, s0
                  nop
                  blt          a2, s2, 327f
                  beq          s11, sp, 321f
                  lui          a1, 1039397
                  or           tp, a2, a0
                  slt          a4, a4, sp
                  srl          ra, s7, s10
                  beq          s6, t4, 330f
                  sub          ra, t4, t0
                  srli         t1, zero, 14
                  blt          zero, t4, 339f
                  blt          a4, a5, 322f
321:              bne          s5, a0, 339f
322:              sub          s2, t1, a5
                  ori          a5, s11, -381
324:              and          a6, a5, a7
                  addi         t3, zero, -7 #init loop 1 counter
                  nop
                  addi         t5, zero, -17 #init loop 1 limit
                  xor          tp, s7, s6
                  xor          t2, zero, tp
                  sltu         zero, a0, t1
sub_5_6_1_t:      ori          s6, a6, 1232
                  sra          s7, t3, s5
                  add          s2, zero, a0
                  addi         t3, t3, -4 #update loop 1 counter
                  addi         a4, zero, 9 #init loop 0 counter
                  addi         s10, zero, 15 #init loop 0 limit
                  add          ra, t4, s0
sub_5_6_0_t:      slt          s4, t5, tp
                  sltu         s11, a2, s10
                  addi         a4, a4, 8 #update loop 0 counter
                  and          a6, t5, t0
                  blt          a4, s10, sub_5_6_0_t #branch for loop 0
                  bge          t3, t5, sub_5_6_1_t #branch for loop 1
                  srai         s2, a1, 14
                  beq          t1, s11, 343f
                  xor          a7, a0, t3
327:              and          tp, a0, t2
                  bne          t1, a3, 347f
                  lui          a5, 771982
330:              sra          s5, a3, s7
                  slt          a6, s8, s2
                  sll          a0, a5, s8
                  andi         s7, s5, 526
                  sra          sp, a3, t4
                  srli         t6, a0, 25
                  slli         a2, a0, 25
                  sll          a6, s4, s9
                  srai         s7, tp, 21
339:              sll          t6, a1, s2
                  slt          a1, t0, s4
                  sra          a1, t6, t5
                  bgeu         s8, t1, 359f
343:              lui          a4, 85804
                  sltu         sp, a5, zero
                  bge          t6, s6, 357f
                  srai         t1, a4, 24
347:              bgeu         s9, s4, 355f
                  bgeu         t0, a3, 368f
                  slli         a2, a5, 15
                  sub          s7, s5, s10
                  srl          s9, s7, tp
                  bgeu         s1, s5, 355f
                  bne          t6, s8, 361f
                  andi         t5, a5, -1385
355:              sltu         s5, sp, s1
                  sra          s11, s10, s3
357:              slt          t1, a1, tp
                  srai         a4, zero, 4
359:              sub          a2, t1, t1
                  and          a2, ra, s4
361:              beq          a3, a4, 381f
                  slt          a7, s6, ra
                  add          s6, t6, t1
                  addi         s6, s0, 293
                  or           a6, t5, a1
                  xor          s7, s4, t5
                  bltu         t2, a2, 382f
368:              lui          s5, 560450
                  and          s8, gp, s1
                  beq          s1, t1, 384f
                  bne          s0, s10, 379f
                  srli         a0, s0, 14
                  srai         a2, t5, 12
                  ori          a5, a3, 1426
                  and          t4, a2, zero
                  xor          a7, s2, a1
                  slt          a5, s5, s2
                  sll          s6, s1, gp
379:              bgeu         s1, s0, 381f
                  add          s9, a4, t4
381:              sll          a4, t5, zero
382:              slli         a2, s2, 16
                  or           zero, t6, s10
384:              sltu         s8, t6, s3
                  beq          a0, s5, 403f
                  lui          zero, 465650
                  lui          s1, 236057
                  or           a7, zero, a6
                  srai         a6, a5, 26
                  sra          t5, zero, t2
                  bge          s1, t1, 394f
                  bltu         s1, s11, 397f
                  sltu         s10, s6, tp
394:              nop
                  beq          a6, t0, 409f
                  sltu         a4, s9, a4
397:              sll          a6, s7, a5
                  sll          s7, s2, s3
                  nop
                  sll          t1, a6, a0
                  bge          t1, a6, 415f
                  bltu         tp, zero, 410f
403:              xori         t2, a7, -104
                  sll          t1, t1, t2
                  bgeu         s3, a4, 425f
                  sra          t1, s5, s3
                  sltiu        a6, a7, -1699
                  auipc        a3, 95202
409:              sra          a3, a0, s9
410:              slt          s4, s10, t6
                  bge          t4, a2, 423f
                  srl          a5, t4, s11
                  sra          a0, s8, s1
                  srai         s11, a2, 18
415:              sll          gp, s7, s1
                  srl          s9, s3, s2
                  bltu         a7, a3, 431f
                  sra          s8, s1, s3
                  bltu         t3, s5, 431f
                  bltu         a7, s2, 422f
                  bltu         t1, a3, 436f
422:              andi         t3, s0, -294
423:              beq          s4, s11, 431f
                  slli         tp, t3, 28
425:              auipc        a5, 912621
                  add          ra, s5, a5
                  auipc        t6, 900138
                  xori         a7, s5, 708
                  blt          s0, gp, 446f
                  add          a3, s8, s2
431:              and          s4, zero, s0
                  sra          s6, a4, a2
                  xori         s11, t1, -834
                  bne          a1, a5, 442f
                  sub          s7, a5, s8
436:              sra          zero, a7, a7
                  blt          s1, s5, 454f
                  ori          a6, t1, -287
                  bge          a5, t0, 445f
                  addi         a3, s0, -1494
                  lui          a0, 197089
442:              add          s7, a5, a1
                  sub          s4, s0, s0
                  slli         t5, a1, 28
445:              bltu         a0, t2, 462f
446:              xor          a1, t6, sp
                  nop
                  bge          t2, s3, 467f
                  or           a0, ra, zero
                  bgeu         s7, t1, 455f
                  add          ra, t4, ra
                  srl          s8, sp, s6
                  slti         zero, a7, -1257
454:              andi         a4, t1, -266
455:              srai         s11, s8, 10
                  slt          t4, t0, s4
                  slli         s1, t3, 30
                  bne          s8, s9, 478f
                  sltiu        tp, a7, -694
                  add          s7, s11, s6
                  addi         t1, a1, 463
462:              srl          a5, sp, t1
                  auipc        t1, 1018009
                  andi         zero, s1, 899
                  bgeu         ra, a6, 485f
                  srl          t3, s11, s8
467:              and          s9, a0, s2
                  slti         t4, zero, 595
                  auipc        t5, 861876
                  bge          s9, zero, 485f
                  sub          s10, s8, t5
                  slti         t2, s11, 1579
                  sll          s2, s2, s8
                  and          t4, a7, zero
                  and          a1, sp, tp
                  or           s9, a4, a4
                  nop
478:              srl          a3, s1, a7
                  sra          s7, a1, tp
                  slti         t6, s4, 698
                  add          zero, t3, a7
                  sll          s5, ra, s5
                  bltu         gp, a1, 491f
                  slt          a7, s7, a2
485:              nop
                  andi         a2, t0, -731
                  beq          a1, t5, 489f
                  bltu         a4, s1, 505f
489:              add          s7, a6, sp
                  ori          a3, s9, -396
491:              xori         a4, a4, -1994
                  slti         ra, s2, 397
                  add          s9, s8, gp
                  lui          a3, 567138
                  srai         a5, s0, 12
                  or           t4, a3, s2
                  srai         t1, t4, 21
                  xor          a0, a6, a4
                  beq          a6, s8, 517f
                  ori          a5, a4, 1176
                  xor          t5, t3, s2
                  add          a2, tp, a5
                  sltiu        sp, s7, -1450
                  nop
505:              ori          a1, s11, -1231
                  sub          a7, a4, sp
                  bltu         s8, t5, 517f
                  bge          a3, sp, 527f
                  xor          t6, s11, t1
                  add          s2, sp, s9
                  blt          t4, s10, 517f
                  xori         s7, t4, 949
                  bltu         s8, a7, 521f
                  auipc        zero, 899852
                  bgeu         s10, zero, 521f
                  addi         t4, s5, 1004
517:              and          tp, t5, s7
                  xor          a7, a0, s1
                  beq          t5, a5, 534f
                  sub          t2, s5, t5
521:              andi         s6, ra, 1716
                  ori          s7, s4, -1923
                  bltu         a6, s3, 540f
                  beq          s7, a0, 543f
                  slli         ra, a2, 4
                  sra          a6, s4, t4
527:              beq          s5, s2, 541f
                  sra          s2, s9, t5
                  add          t5, s6, a3
                  nop
                  xor          s10, s9, a4
                  ori          a6, a2, 1524
                  srl          s6, s6, s0
534:              addi         zero, a7, -408
                  sltu         gp, a0, a5
                  srl          a0, t0, s7
                  sll          ra, a7, gp
                  andi         ra, tp, -223
                  srl          s1, t1, a2
540:              andi         a7, a7, 1112
541:              bgeu         t3, s11, 558f
                  ori          t4, sp, -435
543:              sra          t2, t5, t6
                  sltu         a1, s5, a1
                  ori          s4, tp, -386
                  xor          s5, tp, s4
                  srli         t5, s8, 29
                  blt          t6, t2, 556f
                  slli         s5, s3, 26
                  sll          a6, t2, a1
                  sub          gp, a3, s1
                  lui          t6, 888646
                  and          a5, s8, t6
                  sltu         t5, a4, t2
                  srl          s4, zero, s10
556:              bge          s11, t2, 558f
                  or           a7, a6, a1
558:              srl          gp, s6, t2
                  bltu         t6, s11, 567f
                  blt          a2, t5, 574f
                  srl          a7, s3, s5
                  srli         s8, a2, 25
                  sll          s9, s11, s4
                  slt          a1, s9, ra
                  bltu         s9, s11, 568f
                  xori         t3, t4, 1192
567:              auipc        t6, 577159
568:              auipc        tp, 571718
                  srai         t4, a0, 20
                  and          t4, s6, a7
                  xor          s5, s10, s3
                  beq          a1, s11, 586f
                  bgeu         a2, s10, 593f
574:              sltiu        t4, a3, -967
                  srai         a7, s5, 0
                  auipc        a1, 934689
                  slt          s2, t2, a5
                  xori         s7, a3, 387
                  bge          s11, t5, 598f
                  srl          a0, gp, s2
                  bgeu         t6, t5, 587f
                  bltu         tp, a5, 599f
                  ori          s8, ra, -527
                  auipc        a2, 162173
                  sub          t6, s11, a7
586:              xori         s7, t3, 1122
587:              and          tp, t6, sp
                  sll          ra, s9, a2
                  blt          a6, s4, 601f
                  nop
                  slt          tp, a2, a5
                  sra          s8, t4, t6
593:              addi         gp, t4, 456
                  xori         s6, gp, -1754
                  srai         s7, a4, 6
                  lui          a4, 187258
                  sltiu        a3, gp, 747
598:              xori         t3, t3, -196
599:              nop
                  beq          t4, s11, 610f
601:              bltu         t2, a4, 619f
                  bge          t5, s3, 622f
                  sll          zero, a6, ra
                  nop
                  slli         s7, t5, 27
                  slti         s7, s11, 534
                  blt          a1, a0, 624f
                  and          s4, s10, s6
                  srai         t2, a4, 21
610:              ori          s11, s10, -1525
                  beq          s5, s5, 626f
                  nop
                  slti         a5, t1, -1899
                  srl          tp, ra, s2
                  slt          s7, s6, t5
                  addi         t3, s3, -741
                  bltu         s3, a2, 625f
                  sltiu        s5, t4, -1936
619:              lui          t5, 76845
                  bgeu         zero, a3, 638f
                  or           s4, a7, s0
622:              sltu         s5, t1, t6
                  lui          ra, 198556
624:              sll          a7, s9, s3
625:              bne          t3, t6, 627f
626:              lui          a3, 25346
627:              slt          ra, s6, s0
                  beq          s10, a4, 633f
                  and          s9, sp, t3
                  srl          a0, ra, a7
                  beq          t0, t1, 636f
                  sltu         s7, t4, a1
633:              slti         s8, s6, 437
                  bgeu         tp, a3, 654f
                  sub          a0, s11, t6
636:              sltiu        gp, s4, -2034
                  or           s11, t5, a4
638:              sltiu        s11, s3, 291
                  lui          a2, 1047456
                  lui          tp, 489140
                  add          t2, s5, zero
                  bgeu         a1, s10, 654f
                  slti         s10, a0, -340
                  srli         s8, s1, 31
                  add          s8, s5, t6
                  srli         sp, sp, 12
                  bgeu         a3, s7, 653f
                  bge          a7, s1, 667f
                  srl          a7, s11, t2
                  srli         s4, a3, 16
                  sll          sp, s11, a5
                  slti         t3, s6, -1920
653:              sltu         s11, tp, tp
654:              ori          s4, t5, -38
                  sltiu        a0, t4, 574
                  sltiu        sp, s2, -1435
                  slti         sp, s7, 1140
                  sub          s11, zero, s2
                  slti         a3, s11, 841
                  bne          t5, s2, 677f
                  beq          s5, a6, 678f
                  or           t5, s10, a7
                  bne          t4, zero, 678f
                  beq          t2, s8, 681f
                  srl          a5, t6, zero
                  blt          s2, t4, 684f
667:              bge          t3, a1, 669f
                  blt          s2, s0, 682f
669:              srai         s9, a0, 5
                  srl          a6, a3, s6
                  srl          t6, t6, s7
                  sra          zero, s3, t0
                  srl          s4, ra, a6
                  xor          a5, t0, tp
                  auipc        sp, 936836
                  bltu         sp, t6, 678f
677:              sra          s5, s4, s7
678:              nop
                  slt          s11, t6, t4
                  slli         ra, t6, 2
681:              slti         t6, a1, 438
682:              xor          t6, t3, s6
                  slt          ra, s7, s11
684:              add          a0, a7, s7
                  bgeu         s1, t6, 697f
                  lui          a4, 996227
                  sra          t6, t3, s3
                  bne          s11, t2, 693f
                  sltiu        t4, s0, 1232
                  srl          gp, a7, a1
                  xori         a2, t4, -1558
                  nop
693:              sub          zero, s2, s6
                  andi         a2, t4, 1042
                  srl          a7, zero, s4
                  lui          a7, 215408
697:              andi         zero, t6, -1324
                  sra          s1, a0, t5
                  and          a6, a7, a7
                  andi         t1, t5, -791
                  bgeu         t4, zero, 716f
                  addi         s2, zero, -6 #init loop 0 counter
                  addi         s7, zero, -16 #init loop 0 limit
sub_5_8_0_t:      auipc        a4, 702499
                  lui          gp, 990500
                  addi         s2, s2, -8 #update loop 0 counter
                  addi         a6, s10, 1251
                  bge          s2, s7, sub_5_8_0_t #branch for loop 0
                  sltiu        tp, t6, 911
                  sltiu        tp, s4, 1620
                  or           s2, s11, s2
                  blt          a5, s4, 716f
                  slt          ra, a0, t4
                  srli         gp, t3, 6
                  sltiu        tp, s1, 306
                  srai         a3, s8, 4
                  sra          t2, s4, a0
                  sltu         s8, t5, t3
                  bltu         t1, t3, 731f
                  srli         a2, a5, 7
                  bge          a4, ra, 721f
                  xori         s1, a7, 589
                  bltu         s8, sp, 721f
                  addi         t3, zero, -8 #init loop 1 counter
                  addi         tp, zero, 7 #init loop 1 limit
sub_5_12_1_t:     slti         zero, a3, 978
                  addi         t3, t3, 8 #update loop 1 counter
                  addi         a3, zero, 5 #init loop 0 counter
                  srai         zero, t0, 13
                  addi         s10, zero, 5 #init loop 0 limit
sub_5_12_0_t:     add          t2, s0, t2
                  addi         a3, a3, -3 #update loop 0 counter
                  bgeu         a3, s10, sub_5_12_0_t #branch for loop 0
                  bltu         t3, tp, sub_5_12_1_t #branch for loop 1
                  srl          a4, a5, s11
716:              xor          s5, s8, s7
                  bgeu         t4, ra, 734f
                  bgeu         a2, s0, 728f
                  or           t5, t1, a2
                  or           t3, a4, t0
721:              xori         gp, a2, -917
                  ori          tp, ra, 901
                  blt          a5, sp, 742f
                  srli         s8, s2, 31
                  bgeu         zero, a2, 745f
                  ori          a2, a4, -677
                  and          s10, t0, s1
728:              slli         t1, s10, 24
                  beq          s10, a0, 732f
                  or           a1, t2, s6
731:              slt          t4, tp, gp
732:              bgeu         s3, s1, 746f
                  and          s5, s10, t3
734:              and          ra, a3, s0
                  sll          t4, a2, a3
                  sltu         t1, a7, s7
                  slti         a1, a5, -1993
                  add          t6, tp, t4
                  srli         gp, a6, 9
                  add          t5, s8, tp
                  ori          s2, a1, -314
742:              bltu         a4, zero, 756f
                  bge          a5, sp, 751f
                  slt          ra, zero, a1
745:              andi         a2, s7, 1732
746:              sub          a4, a1, s1
                  sltu         t4, s11, t2
                  bgeu         a5, s9, 766f
                  beq          s2, s0, 769f
                  xor          t5, t5, s8
751:              srl          a0, s9, t4
                  sub          s6, s4, s10
                  bge          s8, a3, 758f
                  bgeu         s1, a2, 762f
                  xori         zero, s2, -418
756:              bgeu         t5, zero, 764f
                  slt          s7, a0, s2
758:              srli         a1, t3, 2
                  bltu         gp, a7, 776f
                  bltu         s8, t0, 777f
                  sltu         t3, s10, a0
762:              beq          tp, s0, 765f
                  beq          gp, s5, 773f
764:              lui          s5, 860810
765:              nop
766:              and          t1, s10, a5
                  add          t6, t3, t3
                  andi         s6, t0, -1906
769:              blt          s4, t2, 787f
                  nop
                  xori         s11, s6, -385
                  addi         s2, a7, 1805
773:              or           t5, s6, s8
                  sll          a3, s2, s2
                  sra          t5, a3, s6
776:              srli         t1, s8, 22
777:              sltiu        tp, a6, -551
                  sll          zero, tp, a2
                  beq          t0, t2, 787f
                  beq          s11, s11, 788f
                  beq          t4, ra, 800f
                  ori          s9, zero, 1473
                  blt          a3, a0, 798f
                  nop
                  sra          t2, s9, t5
                  slli         gp, a1, 10
787:              addi         a3, t2, -1422
788:              sra          zero, s7, s7
                  ori          s4, gp, -789
                  add          a1, s0, a6
                  blt          t5, t0, 803f
                  beq          t4, a1, 798f
                  lui          s6, 940180
                  blt          t4, a6, 811f
                  sltu         s7, s7, t6
                  bge          a6, a1, 816f
                  sll          s2, s11, s1
798:              addi         a6, s5, -1883
                  bgeu         t2, s7, 805f
800:              beq          a7, t4, 805f
                  sll          s6, s3, a2
                  blt          a4, a4, 816f
803:              bne          gp, s7, 815f
                  srl          s9, a2, t0
805:              bltu         s1, a6, 820f
                  srai         a6, s9, 16
                  sub          s2, s8, s7
                  auipc        s7, 333080
                  lui          a1, 684580
                  xor          zero, s3, zero
811:              ori          a1, t5, 395
                  slt          a2, s5, t4
                  blt          t3, s5, 831f
                  srai         ra, a3, 7
815:              ori          a0, a7, 1890
816:              sra          s5, t1, s7
                  add          zero, a4, s5
                  ori          a7, s9, 1264
                  xori         s7, s4, 1660
820:              add          s4, s3, a7
                  srl          a1, t0, s6
                  bne          s6, ra, 827f
                  bge          tp, t1, 831f
                  sltiu        a0, s9, -574
                  xor          a5, s8, t6
                  andi         ra, sp, -455
827:              xor          a7, a4, zero
                  add          gp, s11, s4
                  srli         a7, s0, 0
                  sub          s6, s9, s4
831:              srai         s1, s0, 10
                  bgeu         s2, tp, 834f
                  bge          s6, t2, 853f
834:              bltu         s1, s5, 853f
                  nop
                  slli         a4, s10, 4
                  or           a1, s3, s11
                  xori         s2, a5, -657
                  bge          s8, a7, 856f
                  sll          tp, s3, t2
                  add          a6, s8, a6
                  auipc        a2, 904307
                  sll          t1, s6, gp
                  xor          t5, t0, gp
                  bne          s7, s0, 847f
                  nop
847:              srl          a0, a3, a2
                  sub          t3, t3, t0
                  sll          gp, ra, t5
                  lui          a3, 450513
                  sra          a4, s9, t1
                  bltu         s11, a3, 860f
853:              lui          a4, 483595
                  bge          gp, s8, 874f
                  and          s6, sp, zero
856:              xor          gp, ra, s2
                  andi         a1, s9, -266
                  nop
                  blt          s4, ra, 873f
860:              add          s5, a7, s10
                  bge          t6, s8, 875f
                  srai         t3, s5, 7
                  beq          t5, s6, 880f
                  beq          t2, s4, 884f
                  bgeu         s6, sp, 877f
                  srli         s2, ra, 7
                  sltiu        a2, a5, 1726
                  and          s9, s4, s4
                  sra          s8, a4, s7
                  sra          t6, t3, t3
                  andi         s1, t3, 818
                  srli         s8, s4, 5
873:              xori         a0, s4, 11
874:              sll          a2, s9, t6
875:              xori         s10, t3, -1404
                  sub          tp, a2, t6
877:              auipc        ra, 482898
                  nop
                  xor          a6, a6, s8
880:              slti         s4, s7, 1047
                  sltiu        a7, s10, -1058
                  blt          a2, s10, 885f
                  sll          a3, a0, s10
884:              lui          t3, 171279
885:              beq          t5, a4, 903f
                  slli         a7, s3, 7
                  sub          s11, t6, gp
                  beq          s8, t3, 908f
                  srai         s11, zero, 9
                  srai         a1, a3, 13
                  slti         t6, a1, 1162
                  sltiu        t4, s10, 1981
                  blt          ra, a2, 903f
                  sub          s9, a4, tp
                  bge          s5, t5, 910f
                  sub          s4, sp, t3
                  auipc        s6, 203884
                  beq          s2, s3, 904f
                  xor          s11, s9, s5
                  or           t1, t3, sp
                  bne          gp, t4, 920f
                  srai         t5, t5, 21
903:              andi         s11, s8, -179
904:              xori         s9, s4, -450
                  bltu         s2, t4, 922f
                  andi         a1, s1, -999
                  srai         s9, a2, 29
908:              slli         a2, s7, 6
                  or           a5, s3, zero
910:              xori         s8, t2, 852
                  and          s6, a5, a7
                  ori          s6, s2, -289
                  sltu         a3, t1, s10
                  bgeu         gp, s3, 933f
                  or           t5, t1, t5
                  ori          s6, s8, -1985
                  blt          s4, gp, 919f
                  slt          ra, t1, zero
919:              sltiu        a4, s1, 161
920:              slt          s2, s8, s4
                  sltu         a4, s2, a6
922:              srl          gp, a5, s3
                  slt          s9, s4, a1
                  xor          tp, t6, a1
                  sra          a1, s11, s8
                  bgeu         tp, a6, 928f
                  sltiu        a1, tp, 614
928:              srl          s7, a0, s7
                  add          s2, s3, s9
                  sltiu        a5, t4, -618
                  bne          s3, zero, 939f
                  sltu         s6, s4, a5
933:              or           s11, a6, t6
                  blt          a4, s2, 940f
                  bne          a1, zero, 943f
                  sub          a6, s11, t4
                  auipc        s4, 934438
                  bltu         t4, ra, 952f
939:              bgeu         s1, a3, 947f
940:              lui          t1, 446065
                  blt          t3, gp, 958f
                  srai         t1, s10, 26
943:              bne          a7, s9, 955f
                  or           s7, t0, t4
                  andi         s1, t2, -452
                  ori          ra, t3, 1265
947:              bge          a1, t1, 962f
                  sub          a1, s3, t2
                  slli         s2, a2, 30
                  beq          a0, s0, 967f
                  lui          a1, 205220
952:              sltiu        s11, s11, 1812
                  beq          s4, t3, 967f
                  sra          tp, s4, t3
955:              xor          a2, t5, s8
                  sll          s8, t0, s8
                  ori          ra, s0, -60
958:              sll          s11, s10, s8
                  sltiu        t4, s6, 1379
                  slli         t1, s1, 4
                  auipc        s1, 211266
962:              ori          tp, a2, 1579
                  and          s2, a3, ra
                  bge          s2, a0, 969f
                  and          gp, t1, s7
                  xori         s6, t4, -51
967:              or           s8, s2, tp
                  sll          s4, s0, ra
969:              sltu         s1, tp, t2
                  addi         ra, t2, -746
                  bltu         s2, t2, 985f
                  auipc        a5, 159200
                  slli         a4, a7, 6
                  sll          tp, gp, s7
                  bge          s8, a7, 980f
                  andi         s9, a6, -1148
                  srl          a1, s0, tp
                  add          s9, zero, tp
                  slti         sp, a4, 205
980:              addi         t1, s7, -263
                  sra          s1, zero, s7
                  addi         s8, a6, 388
                  sub          a3, a5, s7
                  add          s4, a7, s6
985:              add          s7, s2, s2
                  addi         s8, a6, -300
                  bge          s7, a0, 1005f
                  lui          t6, 582763
                  srli         s6, a6, 5
                  addi         tp, zero, -523
                  lui          s10, 494221
                  nop
                  bne          a6, t4, 1013f
                  bltu         s3, s4, 1002f
                  blt          s7, a0, 1014f
                  auipc        t5, 1027195
                  slli         s6, sp, 5
                  slti         a1, s8, -282
                  srai         s7, t5, 1
                  sltu         tp, a4, s11
                  ori          a2, t5, 488
1002:             sltiu        s9, s3, 1670
                  srai         t5, s8, 6
                  blt          s5, a0, 1019f
1005:             slli         sp, s11, 27
                  slt          a7, gp, s11
                  srli         a0, s1, 5
                  sra          t2, a2, a7
                  slli         ra, a6, 30
                  blt          ra, a0, 1019f
                  add          t6, s9, a4
                  or           s9, s9, s6
1013:             xor          sp, t2, t1
1014:             slt          a3, s7, s3
                  add          a3, t1, s8
                  sub          zero, s4, a7
                  xori         s5, s1, 1004
                  auipc        tp, 144756
1019:             addi         t5, s4, -1020
                  xor          a1, a6, s0
                  sltu         t4, t3, a7
                  add          s9, s1, t2
                  ori          s11, s2, 1716
                  lw           s8, 4(s0)
                  add          t5, t3, a3
                  addi         s0, s0, 28
                  nop
1425:             addi x24, x24, 0
1425:             jalr x24, x24, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_2:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_3:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_4:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_5:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_6:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_7:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_8:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_9:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_10:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_11:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_12:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_13:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_14:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

mmode_intr_vector_15:
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x19, test_done
                  jalr x0, x19, 0

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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x5, x8, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x23, 0x3 # BREAKPOINT
                  beq x16, x23, ebreak_handler
                  li x23, 0x8 # ECALL_UMODE
                  beq x16, x23, ecall_handler
                  li x23, 0x9 # ECALL_SMODE
                  beq x16, x23, ecall_handler
                  li x23, 0xb # ECALL_MMODE
                  beq x16, x23, ecall_handler
                  li x23, 0x1
                  beq x16, x23, instr_fault_handler
                  li x23, 0x5
                  beq x16, x23, load_fault_handler
                  li x23, 0x7
                  beq x16, x23, store_fault_handler
                  li x23, 0xc
                  beq x16, x23, pt_fault_handler
                  li x23, 0xd
                  beq x16, x23, pt_fault_handler
                  li x23, 0xf
                  beq x16, x23, pt_fault_handler
                  li x23, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x23, illegal_instr_handler
                  csrr x23, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x8, x5, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x5, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x5, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x8, x5, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x8, x5, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x8, x5, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
