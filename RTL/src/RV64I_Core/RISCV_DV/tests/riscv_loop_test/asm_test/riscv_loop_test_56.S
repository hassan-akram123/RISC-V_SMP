.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x24, kernel_stack_end

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
                  li x0, 0xfea1498c
                  li x1, 0xf592df0f
                  li x2, 0x5
                  li x3, 0x9
                  li x4, 0x3e37d0b9
                  li x5, 0x8
                  li x6, 0x2
                  li x7, 0xf028cb0e
                  li x8, 0xbd8065de
                  li x9, 0x0
                  li x10, 0xb
                  li x11, 0xd
                  li x12, 0xd
                  li x13, 0x80000000
                  li x14, 0x2941615a
                  li x15, 0x4816c3a4
                  li x16, 0xff22eb8f
                  li x17, 0x0
                  li x18, 0xf68db621
                  li x19, 0x774464c
                  li x20, 0x739a393e
                  li x22, 0x0
                  li x23, 0xfa77cbed
                  li x25, 0x28ec2099
                  li x26, 0xb9d6a7fa
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0x4059aafe
                  la x21, user_stack_end
main:             addi         s0, zero, 6 #init loop 0 counter
                  sltiu        s10, s2, -298
                  addi         sp, t6, -311
                  ori          a0, t6, -409
                  srai         zero, t1, 24
                  addi         a2, zero, 15 #init loop 0 limit
                  srli         t6, t2, 28
main_0_0_t:       lui          gp, 387503
                  nop
                  slt          ra, s4, a5
                  srli         s1, s10, 15
                  add          sp, s3, t6
                  and          s1, s1, s11
                  addi         s0, s0, 5 #update loop 0 counter
                  xor          sp, t3, s10
                  srl          sp, gp, a5
                  bltu         s0, a2, main_0_0_t #branch for loop 0
                  auipc        t2, 197641
                  addi         t4, zero, -8 #init loop 1 counter
                  addi         t1, zero, 13 #init loop 1 limit
                  sltiu        s4, tp, -1792
main_1_1_t:       slt          a6, a2, t6
                  xor          t3, zero, gp
                  addi         t4, t4, 8 #update loop 1 counter
                  addi         a5, zero, -4 #init loop 0 counter
                  addi         a0, zero, 15 #init loop 0 limit
                  srai         a1, a4, 27
                  sll          tp, a7, a3
main_1_0_t:       or           t6, t4, t5
                  nop
                  addi         a5, a5, 2 #update loop 0 counter
                  and          s0, tp, a4
                  bltu         a5, a0, main_1_0_t #branch for loop 0
                  sra          t6, t2, t1
                  slt          ra, s8, a3
                  bltu         t4, t1, main_1_1_t #branch for loop 1
                  sltiu        zero, gp, -981
                  auipc        t6, 96150
                  sll          sp, s3, s10
                  lui          ra, 670432
                  sltiu        ra, s2, 941
                  ori          a5, a5, 1750
                  ori          s11, ra, 359
                  srl          a6, zero, t3
                  srli         s0, s6, 6
                  sltu         a5, s8, a0
                  srl          t5, a4, t0
                  add          a0, ra, gp
                  and          s2, t3, t1
                  bge          a3, t4, 17f
                  sra          s2, sp, a6
                  blt          gp, s4, 29f
                  slti         t5, ra, 785
                  sra          s0, tp, a1
17:               sltiu        s9, s11, 413
                  bltu         s11, sp, 35f
                  slt          s7, a2, s7
                  nop
                  or           a0, a2, t0
                  srl          a3, a5, a0
                  auipc        ra, 684678
                  bgeu         zero, a2, 37f
                  addi         a0, a5, -565
                  slli         s0, ra, 11
                  sub          a3, sp, t3
                  add          a1, s9, s9
29:               blt          ra, a4, 42f
                  slt          t6, s7, s7
                  slt          s6, a4, s10
                  sltu         s9, t6, zero
                  sll          s3, gp, s0
                  or           t4, s8, s0
35:               sra          zero, t2, t6
                  addi         tp, s3, -536
37:               lui          a6, 18722
                  slli         t2, s5, 13
                  lui          gp, 280864
                  beq          s3, s0, 51f
                  addi         zero, t0, 1806
42:               or           s4, s3, a7
                  sra          s3, a2, s3
                  slti         s11, s4, 85
                  bltu         sp, t1, 65f
                  sub          zero, s2, ra
                  srai         t4, t5, 20
                  xori         a6, a3, 355
                  bltu         s3, a4, 60f
                  or           s4, t0, s9
51:               sll          t6, t5, s5
                  beq          a7, a7, 66f
                  nop
                  beq          tp, tp, 62f
                  bge          a4, s10, 69f
                  beq          t6, s10, 58f
                  srli         s2, a3, 14
58:               andi         t5, a6, -1622
                  andi         a1, a6, 1190
60:               beq          s6, a6, 63f
                  srai         t2, a4, 27
62:               sltu         t1, s10, s6
63:               srl          s11, t4, s8
                  bne          a2, s7, 83f
65:               add          s2, s11, t1
66:               xor          t1, t5, zero
                  add          sp, gp, a1
                  lui          s7, 935132
69:               sltu         a3, s4, t1
                  add          s3, a1, s4
                  and          t6, tp, s2
                  bgeu         s1, t4, 82f
                  and          s4, s2, gp
                  nop
                  beq          s0, s1, 91f
                  slli         a3, t2, 30
                  beq          s3, tp, 81f
                  sltu         t2, gp, tp
                  sub          a2, s6, t1
                  srli         t1, gp, 29
                  la           s1, sub_1
                  addi         s1, s1, 932
                  add          t1, sp, t5
                  srli         a0, t6, 5
                  blt          s2, s11, main_j2 #branch to jump instr
                  and          t6, sp, t0
                  or           a0, s6, s5
main_j2:          jalr         t2, s1, -931 #jump main -> sub_1
                  slti         t6, a6, -1315
                  bltu         tp, a4, 92f
81:               ori          t4, s10, 1475
82:               sub          sp, s9, ra
83:               blt          t0, t3, 89f
                  slli         ra, t0, 22
                  and          a0, s9, t3
                  auipc        a5, 133132
                  and          a7, s11, s7
                  ori          tp, s2, -405
89:               lui          a2, 899599
                  sll          t4, t3, a3
91:               blt          t3, zero, 105f
92:               sra          s4, t0, s7
                  sll          s2, s5, a0
                  addi         t5, s4, 1138
                  xor          t1, t6, sp
                  addi         ra, t1, -738
                  bgeu         s0, a7, 112f
                  nop
                  ori          a2, a4, 1722
                  beq          gp, s0, 108f
                  sll          tp, t4, a1
                  srli         s0, s8, 13
                  xori         a6, t4, 468
                  andi         s7, s7, 1990
105:              sub          zero, s10, s9
                  bne          s11, a4, 121f
                  bge          t6, s9, 110f
108:              bltu         s6, a7, 128f
                  xori         t5, t2, 1118
110:              sll          s11, zero, sp
                  blt          s2, t1, 114f
112:              sll          tp, t0, a6
                  auipc        a2, 1019918
114:              srai         a1, a1, 7
                  sub          t4, sp, zero
                  sltu         s6, s5, a6
                  slti         gp, zero, -1978
                  or           a2, ra, a2
                  xor          tp, a2, s2
                  addi         t6, a4, -1068
                  auipc        a2, 651940
                  auipc        s4, 287397
                  lui          a7, 375398
                  and          s9, a6, a5
                  or           s0, s1, a3
                  la           a3, sub_1
                  ori          t1, s2, -459
                  addi         a3, a3, -886
                  srai         s7, t0, 27
main_j1:          jalr         t2, a3, 887 #jump main -> sub_1
                  andi         zero, t0, -1806
                  sltiu        a4, s11, -1550
                  auipc        s2, 1011857
121:              sltiu        zero, s0, 1609
                  blt          t5, t4, 136f
                  bgeu         s6, a1, 136f
                  bgeu         t5, s3, 136f
                  sltu         s4, s6, t0
                  bgeu         t3, t3, 136f
                  addi         s0, t6, 982
128:              and          s1, t3, s9
                  andi         a1, s1, 168
                  sra          a7, t6, s8
                  xor          s6, a6, s0
                  bge          s2, s4, 136f
                  beq          a2, sp, 136f
                  sra          tp, t0, t2
                  sltu         a2, t0, s0
136:              slli         a4, s9, 8
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            andi         tp, a5, 1522
                  sll          a6, t3, a6
                  sub          a2, s8, gp
                  blt          s9, s2, sub_2_stack_p
                  or           a0, s6, zero
sub_2_stack_p:    addi         s5, s5, -36
                  auipc        sp, 958824
                  sw           t2, 4(s5)
                  sltu         a0, a4, s0
                  la           a4, sub_4
                  or           a6, s8, s4
                  addi         a4, a4, -629
                  bgeu         s7, t1, sub_2_j5 #branch to jump instr
                  sltu         t4, a6, a3
                  xor          s3, t3, gp
                  slli         ra, zero, 8
                  andi         t4, s9, -1660
                  lui          s4, 2368
                  xori         s3, ra, -1194
sub_2_j5:         jalr         t2, a4, 629 #jump sub_2 -> sub_4
                  addi         sp, zero, 6 #init loop 0 counter
                  add          t2, gp, gp
                  slti         a7, a0, 1247
                  slli         s2, gp, 6
                  srai         a5, gp, 6
                  srai         a4, s7, 16
                  addi         s3, zero, 15 #init loop 0 limit
                  add          t6, ra, t1
sub_2_6_0_t:      xor          t1, s10, tp
                  addi         sp, sp, 9 #update loop 0 counter
                  and          s11, a4, sp
                  nop
                  addi         s7, s0, 363
                  slli         tp, s8, 18
                  add          gp, a3, a4
                  add          t4, t6, t2
                  or           s2, ra, a2
                  beq          sp, s3, sub_2_6_0_t #branch for loop 0
                  add          ra, s3, t2
                  addi         s3, zero, 10 #init loop 1 counter
                  sltiu        a2, a5, 695
                  sltiu        a5, tp, -1944
                  addi         ra, zero, 10 #init loop 1 limit
                  auipc        t2, 681438
sub_2_0_1_t:      xori         gp, zero, 293
                  andi         a3, a2, 1299
                  slt          s0, s8, ra
                  slli         sp, s6, 30
                  xori         a5, a1, 593
                  addi         s3, s3, -9 #update loop 1 counter
                  add          s10, t4, s6
                  xori         t2, s1, -1567
                  addi         a4, zero, 1 #init loop 0 counter
                  addi         tp, zero, 4 #init loop 0 limit
sub_2_0_0_t:      slt          t5, gp, s7
                  ori          a5, a4, 500
                  addi         a4, a4, 10 #update loop 0 counter
                  slti         s9, zero, -1861
                  slli         t4, s8, 22
                  lui          a0, 540129
                  nop
                  slli         t2, t6, 8
                  ori          s4, a3, 1516
                  srl          s9, s6, s0
                  bltu         a4, tp, sub_2_0_0_t #branch for loop 0
                  sll          a3, t6, t3
                  bgeu         s3, ra, sub_2_0_1_t #branch for loop 1
                  xor          gp, a1, s11
                  addi         s0, zero, -6 #init loop 1 counter
                  add          t4, a0, t3
                  addi         a0, zero, 9 #init loop 1 limit
                  andi         tp, t0, -429
sub_2_7_1_t:      xor          t4, s6, t4
                  xor          tp, t0, sp
                  addi         s0, s0, 4 #update loop 1 counter
                  slli         t4, gp, 5
                  ori          a1, t0, 79
                  addi         ra, zero, 9 #init loop 0 counter
                  addi         a4, zero, 13 #init loop 0 limit
                  lui          t5, 95797
sub_2_7_0_t:      lui          s9, 524395
                  andi         a2, a7, 1890
                  addi         ra, ra, 10 #update loop 0 counter
                  sll          s1, t6, s1
                  xor          s3, a1, a1
                  srai         t2, gp, 11
                  slti         gp, s6, -778
                  or           a3, s2, s7
                  add          s6, ra, s0
                  sll          sp, s11, s6
                  auipc        t2, 572182
                  bltu         ra, a4, sub_2_7_0_t #branch for loop 0
                  andi         tp, t2, -1123
                  blt          s0, a0, sub_2_7_1_t #branch for loop 1
                  slli         s7, s5, 17
                  addi         t4, zero, 0 #init loop 0 counter
                  slt          t2, a2, a2
                  lui          a5, 323315
                  auipc        ra, 932800
                  sltiu        a7, t0, -738
                  addi         a6, zero, 16 #init loop 0 limit
                  or           s4, s2, s11
                  nop
                  addi         s9, s4, -529
sub_2_1_0_t:      auipc        t6, 208621
                  and          tp, tp, a4
                  add          s0, tp, a5
                  addi         t4, t4, 8 #update loop 0 counter
                  srli         a1, a2, 14
                  nop
                  srl          tp, s4, t3
                  bne          t4, a6, sub_2_1_0_t #branch for loop 0
                  add          a4, t6, t3
                  addi         a2, zero, -7 #init loop 1 counter
                  or           s7, t5, t3
                  auipc        a4, 885947
                  xori         s4, t2, -400
                  lui          t5, 957865
                  addi         s10, zero, 20 #init loop 1 limit
                  andi         s0, s2, -546
                  sltiu        s4, sp, 1317
                  auipc        s0, 667494
                  xor          s6, t2, a6
                  lui          s3, 594778
                  and          a0, t6, t3
                  nop
sub_2_3_1_t:      ori          t2, s11, -556
                  xori         s9, s0, 1457
                  slli         s2, tp, 0
                  addi         a2, a2, 6 #update loop 1 counter
                  slli         gp, tp, 2
                  addi         a3, zero, -6 #init loop 0 counter
                  addi         ra, zero, 7 #init loop 0 limit
                  sltu         t1, s2, s1
                  xor          t3, t0, s3
sub_2_3_0_t:      slti         a0, s7, 753
                  lui          t2, 1001870
                  sltu         s2, s10, a3
                  sra          s4, a3, t3
                  addi         a3, a3, 3 #update loop 0 counter
                  lui          a0, 171995
                  sll          a6, t3, s9
                  blt          a3, ra, sub_2_3_0_t #branch for loop 0
                  slti         t5, a7, -1465
                  ori          a7, a2, 354
                  bltu         a2, s10, sub_2_3_1_t #branch for loop 1
                  srli         sp, a7, 4
                  addi         gp, zero, -2 #init loop 0 counter
                  sub          s0, a0, a1
                  slli         sp, a0, 4
                  slli         s2, a5, 6
                  or           a0, s8, s2
                  addi         s4, zero, 10 #init loop 0 limit
                  ori          s2, a6, -1676
sub_2_5_0_t:      addi         s0, t5, -641
                  nop
                  addi         gp, gp, 6 #update loop 0 counter
                  lui          s1, 924990
                  sra          t2, a6, a3
                  or           s2, s5, s4
                  sltu         zero, a5, t2
                  or           t4, a1, gp
                  sra          a6, s9, tp
                  srai         s9, s8, 16
                  srl          a3, s2, a7
                  andi         t2, t0, -604
                  sub          s0, a7, s6
                  and          s1, s0, t1
                  andi         a5, a6, -40
                  bne          gp, s4, sub_2_5_0_t #branch for loop 0
                  sltiu        a7, a7, 1941
                  addi         t6, zero, 6 #init loop 1 counter
                  addi         a1, zero, 13 #init loop 1 limit
                  lui          a6, 603451
sub_2_2_1_t:      lui          a5, 78738
                  addi         t6, t6, 4 #update loop 1 counter
                  addi         a0, zero, 6 #init loop 0 counter
                  addi         s7, zero, 12 #init loop 0 limit
                  srli         gp, s11, 3
sub_2_2_0_t:      sltiu        s0, ra, -1623
                  addi         gp, s7, -1910
                  addi         a0, a0, 6 #update loop 0 counter
                  blt          a0, s7, sub_2_2_0_t #branch for loop 0
                  sll          t5, sp, a4
                  blt          t6, a1, sub_2_2_1_t #branch for loop 1
                  lui          a6, 792167
                  addi         s10, zero, -2 #init loop 1 counter
                  xori         a3, a0, -1121
                  xori         a4, ra, -1767
                  addi         t1, zero, 4 #init loop 1 limit
sub_2_8_1_t:      and          s1, zero, ra
                  srai         t2, a3, 11
                  addi         s10, s10, 9 #update loop 1 counter
                  srli         s11, t3, 23
                  sltiu        t5, s6, -746
                  addi         s9, zero, -7 #init loop 0 counter
                  slt          a6, sp, s0
                  srai         s1, s3, 0
                  addi         gp, zero, -10 #init loop 0 limit
sub_2_8_0_t:      ori          s4, t0, -490
                  addi         ra, s9, -1018
                  addi         s9, s9, -6 #update loop 0 counter
                  slt          t2, ra, t5
                  bge          s9, gp, sub_2_8_0_t #branch for loop 0
                  sltiu        s0, s3, 1593
                  sltiu        s2, t5, -276
                  slti         t3, s0, -1872
                  srai         ra, s10, 8
                  bltu         s10, t1, sub_2_8_1_t #branch for loop 1
                  slt          a7, s1, zero
                  addi         t6, zero, 10 #init loop 0 counter
                  or           s2, a4, t2
                  srli         t1, a0, 28
                  ori          a1, s8, 916
                  addi         s11, zero, 436
                  slli         a1, s1, 18
                  xor          s0, t2, gp
                  sll          zero, s2, zero
                  auipc        s1, 525273
                  sub          a2, t1, s11
                  addi         s4, zero, -20 #init loop 0 limit
                  andi         a6, a4, -1147
                  addi         t3, s6, -546
sub_2_4_0_t:      or           a3, s9, s5
                  xor          tp, t5, a5
                  addi         t6, t6, -6 #update loop 0 counter
                  add          sp, s3, s2
                  andi         s11, s5, -334
                  auipc        s11, 672023
                  ori          s2, a0, 967
                  add          t5, t0, a4
                  slt          s7, ra, a1
                  sltiu        a3, s10, 989
                  bne          t6, s4, sub_2_4_0_t #branch for loop 0
                  andi         zero, a0, -1761
                  bne          s6, s1, 16f
                  and          t2, a4, a2
                  ori          a6, s0, 992
                  sll          a5, s2, t6
                  addi         s9, s2, 396
                  srai         s11, s5, 10
                  or           a6, s7, a0
                  andi         s10, a3, 9
                  sltiu        t3, s4, -1810
                  sub          zero, t6, a1
                  xori         a6, s5, 1947
                  bgeu         a4, s2, 14f
                  srai         t3, tp, 16
                  srli         gp, t5, 6
14:               srai         ra, a6, 29
                  sltu         s9, a0, a7
16:               sltiu        a3, zero, -287
                  auipc        s6, 241668
                  sltiu        a1, t5, 1084
                  nop
                  srl          sp, sp, a5
                  xor          t6, a2, s3
                  beq          s7, t1, 23f
23:               bne          s1, t4, 31f
                  bgeu         s10, a0, 39f
                  bltu         t0, a6, 36f
                  sltu         s1, s0, tp
                  or           ra, a3, t5
                  bltu         tp, a2, 37f
                  andi         t1, s5, 1421
                  slt          s3, s3, a1
31:               sltiu        t1, a4, 1938
                  lui          a4, 192193
                  or           a0, a1, sp
                  slti         s10, s3, 205
                  sll          a7, zero, ra
36:               add          t2, t3, t5
37:               srai         a0, a7, 30
                  auipc        t3, 185539
39:               srai         s1, t1, 7
                  bge          s4, zero, 43f
                  srl          t1, t6, a2
                  sra          s10, s8, a7
43:               auipc        s6, 599944
                  auipc        t3, 492448
                  srl          a7, s1, t2
                  lui          a6, 442609
                  ori          t6, t5, -1606
                  slt          s4, s8, s0
                  xori         t5, s6, 526
                  andi         a0, s11, 1964
                  andi         s3, t6, 1284
                  sra          s7, a2, sp
                  bltu         s8, a6, 69f
                  beq          a7, zero, 58f
                  srl          a3, s1, a4
                  slti         t3, a5, 594
                  bgeu         t6, s11, 62f
58:               xori         a4, a3, 298
                  auipc        t6, 230718
                  srai         a3, a1, 22
                  slti         t1, a7, -1652
62:               srai         a4, a4, 4
                  ori          t1, s4, 1785
                  add          a1, a5, s4
                  add          s10, s11, a0
                  bltu         a6, s1, 73f
                  srai         a6, s8, 11
                  add          s1, s8, tp
69:               bne          s6, s3, 85f
                  blt          sp, s3, 84f
                  sll          tp, a0, a6
                  lui          a4, 517779
73:               nop
                  or           t3, zero, t5
                  sltiu        a6, a3, 361
                  sltu         sp, zero, tp
                  sltiu        s10, a7, -630
                  add          t3, t6, a6
                  slti         sp, a1, -1830
                  slti         s4, sp, -228
                  ori          a7, gp, 404
                  xor          s1, s11, t1
                  blt          sp, a3, 90f
84:               lui          s0, 212213
85:               andi         a1, a4, -1399
                  nop
                  lui          a2, 72956
                  bge          t0, s8, 108f
                  andi         a7, a2, 1108
90:               lui          t5, 600459
                  and          tp, s9, a4
                  and          s10, t6, t0
                  nop
                  bgeu         t0, s4, 110f
                  auipc        s0, 79440
                  xori         t6, a7, 1978
                  slt          s0, a7, a1
                  nop
                  srl          a3, a5, a0
                  slli         t6, t1, 8
                  sub          s0, a4, a2
                  srl          t2, a5, sp
                  slli         ra, s11, 10
                  bgeu         a6, a3, 117f
                  sltiu        gp, a3, 1503
                  auipc        a6, 92894
                  xori         a5, s10, 1495
108:              slli         t3, a5, 5
                  slti         s7, s11, -1156
110:              addi         a7, s6, 1269
                  slti         t2, s1, 1989
                  sub          s10, ra, a3
                  andi         s7, s11, -1000
                  sub          t1, s9, ra
                  sra          tp, t6, t4
                  bne          s11, s3, 121f
117:              bgeu         s0, s0, 122f
                  bgeu         s0, sp, 134f
                  auipc        a7, 601937
                  slti         a4, t3, -182
121:              sltu         t3, a2, s0
122:              slli         a5, s8, 7
                  sub          s3, t2, a6
                  auipc        t1, 899779
                  bltu         a4, a6, 144f
                  slti         a5, a7, 1425
                  and          s11, s2, s1
                  beq          s10, s7, 131f
                  and          t5, a6, a4
                  blt          s5, t3, 142f
131:              blt          tp, t0, 151f
                  sll          t3, s0, s2
                  andi         ra, zero, 936
134:              bltu         s8, s0, 147f
                  or           gp, a3, a7
                  bne          s2, s10, 140f
                  and          s10, a2, sp
                  add          s6, t0, sp
                  slt          gp, s7, a6
                  andi         t3, gp, 1252
                  slti         a3, a0, -464
                  bge          s2, zero, sub_2_j4 #branch to jump instr
                  xori         a3, sp, 342
                  sll          ra, s1, tp
sub_2_j4:         jal          t2, sub_3 #jump sub_2 -> sub_3
                  and          a6, s0, sp
140:              bne          a2, a2, 147f
                  xor          t4, t5, s7
142:              slt          s9, a3, s9
                  add          s10, s0, s2
144:              sll          s11, t0, gp
                  xori         gp, s4, 1110
                  bgeu         a3, zero, 162f
147:              add          a5, s9, s9
                  nop
                  ori          t4, s8, -1943
                  bgeu         t2, a4, 158f
151:              sub          s2, t1, s0
                  ori          a5, t3, 818
                  add          s3, a0, t5
                  bltu         s7, zero, 159f
                  sltiu        t2, s10, -969
                  slt          a7, s5, a0
                  bltu         a5, t1, 161f
                  la           s11, sub_3
                  sll          a1, gp, a5
                  srl          t3, s1, s5
                  addi         s11, s11, 986
                  srl          a2, s11, zero
                  bge          gp, t6, sub_2_j6 #branch to jump instr
                  sll          t5, t0, s8
                  xor          t6, t0, t6
sub_2_j6:         jalr         t2, s11, -985 #jump sub_2 -> sub_3
158:              srli         s9, s8, 8
159:              add          gp, t5, s0
                  nop
161:              srli         ra, a6, 28
162:              sltiu        ra, s6, -1608
                  and          a5, a7, t2
                  srai         s0, s9, 15
                  sub          s11, a3, a2
                  auipc        a5, 26718
                  bne          a0, s1, 170f
                  bge          s2, s1, 175f
                  xor          a7, tp, s3
170:              bge          t3, a0, 183f
                  or           s0, t0, s5
                  add          ra, t5, ra
                  sra          t4, a3, s0
                  sltiu        a6, ra, 264
175:              bgeu         t5, ra, 195f
                  bgeu         s2, a6, 192f
                  and          a2, gp, t0
                  bgeu         s9, s3, 194f
                  srai         a0, s7, 8
                  sltiu        s1, s0, 484
                  sra          t5, s7, ra
                  blt          tp, a5, 191f
183:              xori         a0, s7, -1799
                  nop
                  srl          s0, s1, t6
                  slti         t1, a3, 1250
                  sra          s7, s4, t0
                  addi         zero, t1, -1213
                  blt          a7, t0, 197f
                  sll          t2, s1, t1
191:              beq          a0, s5, 211f
192:              srli         s4, s1, 7
                  xori         a7, tp, 82
194:              add          s2, gp, t3
195:              ori          a4, s6, -298
                  xor          gp, s4, ra
197:              slli         ra, gp, 19
                  sltu         t3, a4, t3
                  add          t4, ra, ra
                  auipc        a6, 765498
                  sra          s3, a5, s7
                  ori          a0, t0, 1954
                  xor          s6, sp, s3
                  andi         a4, t2, -1449
                  and          s7, t2, s9
                  add          s2, t2, s4
                  or           a0, a4, t1
                  bgeu         t5, sp, 211f
                  or           a3, sp, s1
                  add          a6, t1, s0
211:              or           sp, t2, s5
                  andi         a3, a3, -1347
                  slli         a3, s0, 23
                  srli         a0, a6, 13
                  sltiu        t6, a4, -156
                  lui          s1, 1047741
                  andi         a2, s0, -41
                  add          t3, a5, s3
                  addi         a0, zero, 30
                  lui          a6, 526423
                  or           s10, s7, t1
                  srli         t5, s1, 9
                  bltu         s5, t6, 237f
                  slli         s11, s0, 4
                  srai         a6, s2, 0
                  slti         t5, t3, -2036
                  srli         s0, s1, 10
                  auipc        a0, 615557
                  andi         a1, s2, -744
                  bltu         a5, a5, 243f
                  bge          s4, t4, 242f
                  sltiu        ra, zero, 188
                  beq          t4, s1, 245f
                  xori         a5, s2, 1175
                  or           a6, s8, s5
                  bgeu         zero, a7, 243f
237:              ori          s4, gp, 1418
                  bne          t4, ra, 241f
                  bltu         a0, s2, 243f
                  sll          s10, s5, s5
241:              blt          t6, s10, 246f
242:              addi         a1, s7, 740
243:              and          s0, ra, a0
                  xor          t4, t6, a6
245:              addi         zero, a2, 451
246:              blt          a1, a3, 247f
247:              auipc        t1, 956300
                  bne          t4, a3, 256f
                  and          t6, a3, a7
                  srai         sp, a5, 16
                  ori          a5, s0, -841
                  ori          s10, s6, 1589
                  addi         a3, tp, -1773
                  add          tp, t0, s3
                  sltiu        a1, s9, 1468
256:              blt          a5, a4, 272f
                  slt          a1, a7, a1
                  bltu         s8, s5, 263f
                  addi         a5, s0, 1194
                  and          ra, s2, s3
                  srli         s3, a2, 3
                  slt          ra, zero, a3
263:              srl          t4, t6, a7
                  slli         a3, t6, 3
                  bgeu         ra, a4, 281f
                  xor          s10, s0, zero
                  lui          a5, 806777
                  srai         t3, a6, 19
                  srli         tp, a0, 12
                  and          ra, a1, s1
                  ori          t3, a6, -1709
272:              addi         s6, s6, -1588
                  slti         gp, t3, 135
                  slli         sp, s8, 31
                  beq          a5, a4, 282f
                  sltiu        a4, s4, -1607
                  sltu         a2, a4, s10
                  srl          t1, zero, t0
                  xor          t1, a1, a7
                  slli         s3, a4, 20
281:              beq          s0, a5, 296f
282:              xori         s3, a0, 1979
                  blt          t4, s7, 299f
                  srli         s7, t0, 17
                  sll          a1, a3, s6
                  sltiu        sp, s10, -1615
                  or           a6, s1, t1
                  sra          t5, zero, a3
                  xori         s6, t4, 1283
                  auipc        a1, 62345
                  bne          t3, s2, 307f
                  sltu         tp, ra, a1
                  bgeu         a3, tp, 312f
                  nop
                  sltiu        s10, t4, -1104
296:              srl          gp, a4, s0
                  srli         t4, ra, 31
                  beq          a3, a0, 317f
299:              sltu         t1, s9, a4
                  sub          ra, sp, a6
                  andi         t6, a4, 656
                  beq          s4, t5, 315f
                  srl          a6, s8, s3
                  srai         s6, t6, 6
                  auipc        s10, 375441
                  slt          s4, t1, gp
307:              sltiu        s4, s8, -1740
                  auipc        t6, 128658
                  andi         s0, s1, 1024
                  beq          s7, tp, 324f
                  srai         zero, s3, 11
312:              bgeu         a1, s11, 317f
                  slt          t5, s8, s0
                  sra          s2, s1, t1
315:              bne          a0, zero, 319f
                  beq          gp, s8, 332f
317:              ori          s10, s6, 1160
                  and          s7, a4, s6
319:              bge          a7, s11, 332f
                  srl          s6, a0, s7
                  ori          s0, s9, -470
                  lui          a3, 793775
                  addi         a1, s2, 688
324:              or           s1, t0, s4
                  sltiu        a4, s1, -903
                  xor          a7, s7, s5
                  sltiu        s7, t0, -499
                  srl          s9, a6, a1
                  xori         gp, tp, -1856
                  sub          t3, a1, a6
                  lui          sp, 814604
332:              bge          sp, s6, 347f
                  sub          ra, s3, s3
                  sll          t3, s10, s4
                  blt          a7, t2, 351f
                  bge          s10, s9, 339f
                  addi         sp, t5, 530
                  bge          zero, a2, 350f
339:              srli         t6, a4, 11
                  nop
                  and          s3, s8, t5
                  ori          a4, a3, -85
                  beq          tp, a5, 344f
344:              sltiu        a3, s11, 522
                  bge          a1, s7, 361f
                  ori          tp, s8, 1490
347:              addi         a7, s7, -504
                  xor          tp, t6, t2
                  sra          s11, gp, t6
350:              bne          gp, gp, 358f
351:              srai         a2, a3, 26
                  ori          a3, t0, 361
                  or           a7, ra, t3
                  bge          sp, gp, 358f
                  beq          s5, t5, 358f
                  and          s6, a2, tp
                  slli         a4, s0, 0
358:              bgeu         t2, a7, 363f
                  srai         a6, a0, 12
                  sub          s9, s4, sp
361:              slti         s6, a7, -406
                  lui          s1, 123965
363:              srl          a5, a5, a3
                  bne          s7, t6, 375f
                  addi         s9, a2, -503
                  and          zero, s4, t4
                  addi         s11, t2, 626
                  lui          s10, 911432
                  sub          ra, a7, a0
                  bne          s2, s0, 377f
                  sub          s0, sp, a1
                  sub          gp, a2, s8
                  nop
                  or           s11, a2, a6
375:              beq          a6, s11, 391f
                  sra          t5, s1, s1
377:              ori          t2, t6, 1137
                  andi         a4, s9, 1019
                  sll          t2, a0, s9
                  bltu         s3, s7, 388f
                  or           a6, a4, a6
                  and          tp, s6, a4
                  andi         a6, a1, -317
                  add          s4, sp, ra
                  srai         t6, t5, 22
                  xor          ra, a6, t6
                  bltu         t1, a2, 396f
388:              bltu         a5, s9, 395f
                  xori         s10, s10, -985
                  or           t6, s7, s0
391:              sub          t4, a4, s6
                  andi         zero, s11, -1743
                  xori         t5, s4, -1253
                  bge          s3, t2, 414f
395:              slt          a7, a7, t0
396:              srai         s0, a3, 14
                  addi         s7, a4, 1313
                  slt          s6, s8, t3
                  blt          ra, s10, 415f
                  xori         ra, s10, 16
                  sltiu        s9, s10, 540
                  nop
                  sub          s9, gp, gp
                  nop
                  andi         s1, tp, -1667
                  sltu         s9, a7, t6
                  bge          s6, s0, 412f
                  lui          s2, 192591
                  bltu         t3, s0, 412f
                  andi         a2, s3, -1106
                  sltiu        t3, s9, -148
412:              sltu         a7, s7, s2
                  and          s11, s10, s4
414:              and          s11, s10, t2
415:              slt          s2, a5, s4
                  slli         a2, t0, 1
                  xor          s3, gp, a3
                  bltu         s11, t3, 434f
                  xori         ra, t1, 1501
                  andi         a3, a3, -1558
                  bne          a4, sp, 441f
                  srl          t6, sp, s10
                  beq          a4, t1, 430f
                  srai         s6, s8, 17
                  srl          s1, tp, s8
                  xori         s11, s8, -1611
                  sub          s6, s10, a6
                  sltu         a3, sp, a5
                  srl          t1, a7, s4
430:              ori          a1, t4, 1310
                  bltu         s1, a1, 436f
                  and          ra, t5, t4
                  sltu         s3, a3, sp
434:              andi         a3, t2, -1381
                  bge          a3, a6, 455f
436:              nop
                  bge          ra, t1, 450f
                  srai         a3, t1, 12
                  bgeu         tp, s11, 454f
                  slli         s6, t0, 8
441:              srli         t1, t4, 31
                  sll          ra, s2, t5
                  slt          t4, s6, t6
                  sub          gp, s3, s11
                  andi         a4, t3, 1772
                  slli         t4, a4, 18
                  srl          s0, s3, s1
                  bne          tp, s3, 467f
                  sra          t3, gp, gp
450:              sra          s2, t0, s4
                  bne          s10, s10, 454f
                  sra          t6, a1, ra
                  auipc        a1, 754237
454:              sra          a1, a4, s3
455:              andi         a3, ra, 176
                  nop
                  and          a6, s2, s4
                  sltiu        a1, a3, -152
                  lui          tp, 347042
                  andi         s4, a0, -661
                  sub          t4, s9, s11
                  andi         s3, s11, -1238
                  sltu         ra, s1, ra
                  slt          t6, ra, a0
                  andi         sp, t3, 186
                  bgeu         t4, s6, 473f
467:              xori         a4, t3, -1940
                  lui          a5, 726990
                  bgeu         s11, a4, 473f
                  addi         t2, s6, -635
                  slli         t6, s11, 16
                  and          a4, s8, s9
473:              slt          s9, s1, s10
                  andi         t5, sp, 1731
                  srli         s4, s4, 5
                  andi         t3, s3, 585
                  lw           t2, 4(s5)
                  sub          zero, a5, a3
                  nop
                  andi         tp, t4, 975
                  sltu         s1, a1, s2
                  auipc        s9, 113258
                  addi         s5, s5, 36
                  xor          s3, s0, s10
                  srl          s11, a0, tp
737:              addi x13, x7, 0
737:              jalr x13, x13, 0
sub_1:            bne          tp, zero, sub_1_stack_p
                  sub          t5, a2, gp
sub_1_stack_p:    addi         s5, s5, -32
                  sw           t2, 4(s5)
                  or           a0, t3, s5
                  or           a4, ra, s8
                  nop
                  nop
                  addi         a3, t5, 1029
                  and          s3, s8, s4
                  xori         t1, a6, -326
                  and          s2, sp, t5
                  sltiu        a7, s10, -1751
                  and          t4, t4, t4
                  ori          t6, t2, -915
                  andi         a4, t0, 855
                  srai         t5, zero, 7
                  andi         s3, s10, 1669
                  nop
                  sltiu        t5, a3, 1406
sub_1_j3:         jal          t2, sub_2 #jump sub_1 -> sub_2
                  beq          t2, s3, 4f
                  slti         s6, a6, 855
                  sltiu        s9, zero, 1067
                  beq          s4, s4, 11f
4:                bne          s8, gp, 6f
                  slt          a7, s2, a3
6:                ori          ra, s7, 1060
                  sltiu        s2, s5, 1999
                  lui          a5, 149678
                  xor          tp, t6, a7
                  auipc        sp, 414642
11:               sll          s11, s2, a4
                  xori         a7, s11, 1702
                  and          a7, a7, t6
                  or           s10, s11, s3
                  sll          s6, t3, a1
                  bgeu         s6, s1, 20f
                  or           a7, a1, zero
                  sltiu        a0, t2, 1629
                  and          a4, t0, s7
20:               sra          a1, a5, t5
                  slti         s1, gp, -1231
                  auipc        t1, 898299
                  srli         a5, t6, 2
                  sltiu        a4, tp, -338
                  srli         t6, s4, 11
                  slli         t4, a7, 9
                  sltiu        t3, a0, 62
                  add          s11, t1, sp
                  bltu         s11, sp, 41f
                  addi         s1, sp, 1916
                  or           zero, s5, a7
                  slt          t4, a4, t6
                  sra          t3, a6, t5
                  sub          s10, s5, s5
                  ori          s1, a2, 1587
                  addi         t5, zero, 361
                  ori          s3, a6, 1808
                  sltu         t5, t1, t0
                  xor          t6, gp, s11
                  nop
41:               slli         sp, t0, 4
                  nop
                  srl          a1, s1, a7
                  add          s6, a1, s1
                  lui          gp, 281604
                  bltu         a6, s4, 47f
47:               add          s2, s9, gp
                  add          t3, sp, a4
                  andi         gp, s5, -64
                  lw           t2, 4(s5)
                  addi         s5, s5, 32
                  xori         s2, t5, 1087
                  sltiu        ra, a1, 1539
                  lui          s0, 577906
76:               addi x29, x7, 0
76:               jalr x29, x29, 0
sub_3:            bltu         a0, t2, sub_3_stack_p
sub_3_stack_p:    addi         s5, s5, -44
                  sltu         s9, s7, s7
                  slli         tp, s3, 22
                  xori         a2, sp, -667
                  sltu         a1, s5, s9
                  sw           t2, 4(s5)
                  lui          a6, 746361
                  addi         a4, zero, -2 #init loop 0 counter
                  slti         s3, a2, -502
                  srl          t5, t0, s1
                  srli         s11, s0, 2
                  addi         s11, a2, 445
                  xori         gp, a5, 745
                  srai         a7, s7, 29
                  or           a1, s2, t4
                  srli         s3, s7, 19
                  addi         a3, zero, -5 #init loop 0 limit
sub_3_2_0_t:      xori         a1, sp, 1524
                  sltiu        s3, s1, -447
                  addi         a4, a4, -3 #update loop 0 counter
                  slti         t5, a5, -769
                  addi         s0, a6, -210
                  slli         a0, a0, 24
                  andi         gp, t6, 1414
                  or           s7, gp, t1
                  bge          a4, a3, sub_3_2_0_t #branch for loop 0
                  xor          t4, sp, a6
                  addi         s4, zero, -6 #init loop 1 counter
                  addi         s2, zero, -18 #init loop 1 limit
                  sra          t1, a4, a7
sub_3_9_1_t:      lui          a7, 511363
                  add          zero, a6, s3
                  sub          s7, s4, a7
                  addi         s4, s4, -6 #update loop 1 counter
                  or           ra, sp, s7
                  auipc        s1, 819949
                  addi         a2, zero, -8 #init loop 0 counter
                  addi         sp, zero, -20 #init loop 0 limit
                  add          t5, s7, a0
sub_3_9_0_t:      or           a5, a3, s11
                  lui          t4, 167497
                  auipc        t1, 787873
                  sltu         t6, zero, sp
                  addi         a2, a2, -3 #update loop 0 counter
                  bne          a2, sp, sub_3_9_0_t #branch for loop 0
                  srai         s0, s11, 8
                  auipc        a4, 854501
                  beq          s4, s2, sub_3_9_1_t #branch for loop 1
                  slt          s11, t4, t3
                  addi         a5, zero, 8 #init loop 1 counter
                  lui          a1, 526517
                  slt          a2, a3, s7
                  srli         a6, s1, 14
                  xori         t5, s11, -1999
                  nop
                  addi         s0, zero, -11 #init loop 1 limit
                  sltiu        a1, t5, 823
                  sltu         a6, zero, s10
                  srl          s2, s10, t4
sub_3_14_1_t:     sub          s3, a3, s6
                  xori         a4, ra, -1096
                  and          s11, a7, s10
                  addi         a5, a5, -1 #update loop 1 counter
                  addi         s4, zero, -5 #init loop 0 counter
                  andi         a2, a6, -886
                  nop
                  slli         s11, gp, 10
                  addi         t2, zero, -14 #init loop 0 limit
                  andi         s11, gp, -533
                  srl          t3, t6, s3
sub_3_14_0_t:     slti         zero, s0, -1568
                  auipc        sp, 1039575
                  addi         s4, s4, -3 #update loop 0 counter
                  add          s1, s5, s1
                  bge          s4, t2, sub_3_14_0_t #branch for loop 0
                  xori         s9, s11, 114
                  addi         s11, s6, -1400
                  nop
                  srai         s10, a1, 31
                  bne          a5, s0, sub_3_14_1_t #branch for loop 1
                  addi         ra, s5, -256
                  addi         t4, zero, 4 #init loop 1 counter
                  slti         s4, s9, 2013
                  xori         s2, s0, -1514
                  srai         t3, s5, 18
                  sub          a7, ra, a4
                  sltiu        s1, t3, -1344
                  ori          s4, s2, -1500
                  or           a7, t3, t5
                  add          a2, a7, s2
                  addi         a4, zero, 3 #init loop 1 limit
                  srli         a3, sp, 29
                  slti         sp, s0, -1853
                  sub          s9, gp, a7
sub_3_5_1_t:      and          s2, s3, a6
                  addi         t4, t4, -1 #update loop 1 counter
                  ori          s7, t6, 493
                  slti         s3, sp, -2014
                  addi         a6, zero, 4 #init loop 0 counter
                  addi         s6, zero, 4 #init loop 0 limit
                  sltu         ra, t0, zero
                  or           a2, zero, a2
sub_3_5_0_t:      sltu         a3, s3, ra
                  or           s7, s8, s8
                  lui          gp, 691500
                  add          a1, s5, gp
                  addi         s7, t5, -36
                  add          sp, s7, s2
                  addi         a6, a6, -2 #update loop 0 counter
                  and          zero, t1, s9
                  sltiu        a1, t1, -112
                  bgeu         a6, s6, sub_3_5_0_t #branch for loop 0
                  sltiu        s1, a0, 1759
                  xor          a1, a1, t4
                  bgeu         t4, a4, sub_3_5_1_t #branch for loop 1
                  xor          a7, a2, s0
                  addi         a6, zero, -9 #init loop 1 counter
                  srli         s7, a6, 21
                  sltiu        t3, a4, -1199
                  srli         s0, s6, 1
                  addi         s10, zero, 12 #init loop 1 limit
                  slt          a7, s10, t0
                  sltiu        s4, s7, -1654
sub_3_3_1_t:      sub          a2, a4, s10
                  auipc        zero, 321743
                  sub          zero, gp, s5
                  slli         t2, t2, 22
                  slli         s1, s9, 3
                  lui          s7, 551862
                  sra          t6, s8, s8
                  addi         a6, a6, 1 #update loop 1 counter
                  andi         t3, s3, 178
                  addi         a4, zero, 6 #init loop 0 counter
                  xor          t5, a5, t3
                  sub          s3, s3, ra
                  or           s2, s10, s8
                  srai         a5, s8, 5
                  addi         ra, zero, -5 #init loop 0 limit
                  srli         t3, s6, 6
                  slt          s1, s6, t0
                  slt          s0, s2, s2
sub_3_3_0_t:      sltu         t4, tp, tp
                  addi         a4, a4, -10 #update loop 0 counter
                  bge          a4, ra, sub_3_3_0_t #branch for loop 0
                  slti         t6, a7, 451
                  slti         a2, s8, 927
                  bltu         a6, s10, sub_3_3_1_t #branch for loop 1
                  slti         gp, ra, -999
                  addi         s4, zero, -5 #init loop 0 counter
                  xori         s9, t4, 270
                  ori          t5, s3, -1190
                  sra          t2, a7, t4
                  slli         t2, t2, 1
                  or           a4, s5, a6
                  srl          a2, s4, t4
                  srl          gp, s4, t5
                  addi         s1, zero, 7 #init loop 0 limit
                  nop
                  sll          t5, t3, gp
                  and          t4, t4, t5
                  or           s7, a0, t0
                  or           s2, s9, t3
sub_3_0_0_t:      slt          a0, s0, s10
                  srl          t2, s6, s10
                  lui          s11, 7929
                  xori         a6, a2, -1877
                  add          s0, s8, s9
                  ori          a7, s7, -1054
                  srli         s11, a3, 31
                  nop
                  addi         s4, s4, 1 #update loop 0 counter
                  sub          a5, a4, t1
                  bltu         s4, s1, sub_3_0_0_t #branch for loop 0
                  lui          s11, 38158
                  addi         t5, zero, -3 #init loop 0 counter
                  sra          s7, a2, s4
                  sra          t2, t3, a5
                  slli         s9, gp, 29
                  ori          s3, a7, -2007
                  nop
                  and          t6, gp, sp
                  addi         a6, t6, 1641
                  and          t1, t1, s10
                  addi         a2, s7, 1668
                  addi         a1, zero, 16 #init loop 0 limit
                  auipc        a7, 995761
                  sub          tp, t1, tp
                  nop
                  srai         a6, t1, 1
                  sll          t1, s11, t6
sub_3_13_0_t:     sltu         s10, t6, t0
                  add          s0, zero, t1
                  sll          a4, a5, t5
                  sub          sp, t0, s5
                  addi         t5, t5, 4 #update loop 0 counter
                  slti         gp, s5, -1268
                  or           s6, a7, tp
                  bltu         t5, a1, sub_3_13_0_t #branch for loop 0
                  sltiu        s7, s0, 445
                  addi         t6, zero, -4 #init loop 0 counter
                  sll          s9, t2, s2
                  xor          a0, tp, a7
                  ori          s1, s8, -552
                  slt          t1, ra, s9
                  sltiu        s2, t4, 1079
                  addi         s7, zero, 2 #init loop 0 limit
                  xor          s9, t6, tp
sub_3_12_0_t:     auipc        s6, 310990
                  srai         t5, a4, 26
                  addi         t6, t6, 6 #update loop 0 counter
                  bltu         t6, s7, sub_3_12_0_t #branch for loop 0
                  addi         t5, a6, -1186
                  addi         a5, zero, 7 #init loop 1 counter
                  auipc        a3, 405578
                  and          a4, t1, s6
                  andi         a1, s3, 571
                  srli         a7, tp, 3
                  and          t4, t1, t4
                  sub          t2, s1, t1
                  sll          zero, a4, gp
                  slti         s0, s5, -1404
                  srl          zero, t1, s5
                  addi         sp, zero, 6 #init loop 1 limit
                  xori         s9, s11, 1660
sub_3_11_1_t:     xori         s11, tp, 425
                  ori          s2, s1, -617
                  ori          gp, gp, 86
                  add          a7, s3, a3
                  addi         a5, a5, -4 #update loop 1 counter
                  andi         ra, a1, -1999
                  sll          s6, a4, sp
                  addi         a0, zero, 9 #init loop 0 counter
                  addi         t5, zero, 8 #init loop 0 limit
                  ori          a3, a2, 134
sub_3_11_0_t:     slti         s6, t2, 667
                  sltiu        zero, a5, 1607
                  sll          s6, t4, s9
                  nop
                  addi         a0, a0, -3 #update loop 0 counter
                  bgeu         a0, t5, sub_3_11_0_t #branch for loop 0
                  slti         s9, a1, -1953
                  ori          a7, a3, 1736
                  slti         t2, tp, 1368
                  sltiu        s3, s2, -707
                  sub          gp, tp, a3
                  bgeu         a5, sp, sub_3_11_1_t #branch for loop 1
                  sra          s0, sp, s5
                  addi         t3, zero, -5 #init loop 0 counter
                  add          t6, s6, s1
                  ori          a5, a0, -845
                  xor          sp, s7, s5
                  lui          a1, 748983
                  add          t5, t0, s1
                  andi         tp, t6, 1209
                  add          s11, a0, s10
                  or           t1, t1, ra
                  addi         s10, zero, -19 #init loop 0 limit
                  sub          s11, s10, a2
                  srli         a2, a2, 29
sub_3_7_0_t:      auipc        t1, 436274
                  xor          s9, t4, tp
                  addi         t3, t3, -8 #update loop 0 counter
                  srai         t4, s10, 6
                  sltiu        zero, a1, -493
                  add          a1, s4, s7
                  bge          t3, s10, sub_3_7_0_t #branch for loop 0
                  sra          s1, t6, a3
                  addi         s11, zero, -4 #init loop 0 counter
                  slli         a6, t3, 24
                  addi         ra, zero, 6 #init loop 0 limit
                  srl          tp, s6, a1
sub_3_4_0_t:      addi         a3, t4, -541
                  lui          zero, 245678
                  or           zero, t3, tp
                  slli         a3, sp, 21
                  addi         s11, s11, 6 #update loop 0 counter
                  andi         s1, s4, -1511
                  blt          s11, ra, sub_3_4_0_t #branch for loop 0
                  srai         a4, a1, 9
                  addi         sp, zero, 4 #init loop 0 counter
                  slti         s7, ra, -779
                  or           a4, s7, a2
                  addi         t4, zero, -14 #init loop 0 limit
                  andi         a6, t1, 1039
sub_3_16_0_t:     sub          a7, t5, t3
                  addi         sp, sp, -3 #update loop 0 counter
                  sub          s4, s8, s9
                  ori          a2, gp, 852
                  srli         a6, s10, 10
                  slti         a6, s1, -1335
                  bge          sp, t4, sub_3_16_0_t #branch for loop 0
                  nop
                  addi         a2, zero, -3 #init loop 0 counter
                  addi         s2, zero, 0 #init loop 0 limit
                  xor          s3, a5, gp
sub_3_8_0_t:      auipc        t5, 589723
                  addi         a2, a2, 4 #update loop 0 counter
                  sltiu        t6, t1, 35
                  blt          a2, s2, sub_3_8_0_t #branch for loop 0
                  srli         t3, a7, 23
                  auipc        t2, 23097
                  blt          s7, s2, 2f
2:                bltu         t6, s7, 18f
                  slli         tp, s4, 13
                  srli         t2, t2, 9
                  andi         a2, a0, 713
                  add          t1, a7, a0
                  lui          a1, 94815
                  sltiu        a1, a0, 1811
                  blt          s7, s3, 26f
                  slli         ra, a3, 14
                  auipc        t1, 353967
                  xor          t6, s8, a0
                  nop
                  auipc        t1, 234425
                  bne          s7, ra, 26f
                  blt          tp, s7, 30f
                  addi         s4, s11, 1211
18:               bgeu         t4, s10, 36f
                  add          a4, zero, t3
                  andi         t1, sp, 1737
                  or           tp, s11, s6
                  sltiu        tp, t5, -1783
                  ori          a4, a2, 511
                  blt          t3, a6, 40f
                  xori         s10, s7, -1349
26:               xori         a5, s3, -1556
                  slli         t6, s8, 6
                  sll          t1, a2, a7
                  blt          tp, gp, 43f
30:               slli         a2, t0, 10
                  bgeu         s2, a4, 40f
                  sll          t4, s0, a5
                  ori          a3, a3, -1344
                  lui          t5, 209044
                  bltu         s3, s0, 48f
36:               andi         s1, a2, 487
                  srli         s0, t3, 8
                  bge          t2, s10, 49f
                  slli         t3, s5, 19
40:               srli         s3, t3, 7
                  bge          a7, a5, 44f
                  auipc        t6, 632782
43:               sltu         s9, s5, s11
44:               lui          a6, 723038
                  and          s6, s5, t6
                  bge          t5, zero, 49f
                  bltu         s3, a7, 64f
48:               slt          s4, zero, s5
49:               srli         t3, t6, 20
                  xori         t1, s10, 182
                  srl          s1, s7, a4
                  slt          a5, a0, sp
                  andi         t4, a7, 770
                  sra          a2, zero, a4
                  andi         s2, s6, 137
                  and          a5, s2, a7
                  and          gp, sp, s5
                  bltu         t4, s2, 78f
                  addi         t6, s9, -1792
                  add          a4, s7, t2
                  sub          zero, s4, sp
                  sll          s11, a2, gp
                  slli         a0, gp, 27
64:               sra          t4, s9, a2
                  srai         sp, s9, 20
                  or           t3, s8, sp
                  bge          t4, s10, 84f
                  blt          s5, t3, 72f
                  xor          s10, s6, a7
                  srai         a2, s9, 11
                  blt          s1, ra, 72f
72:               auipc        tp, 965855
                  xori         gp, s9, -1341
                  srl          tp, s7, t3
                  sltiu        sp, a0, 1405
                  xori         a4, ra, 1826
                  sll          a3, ra, a7
78:               bgeu         a0, s9, 95f
                  bltu         t4, t2, 84f
                  lui          a3, 391632
                  xor          t4, a2, tp
                  beq          s0, a4, 90f
                  blt          ra, ra, 89f
84:               lui          s7, 714523
                  srli         ra, s9, 14
                  xori         a5, s9, -1968
                  sll          s3, a5, s9
                  bltu         sp, s10, 108f
89:               sra          a5, t5, s7
90:               srai         s6, a6, 6
                  sub          gp, a7, s5
                  sltiu        t1, s1, -629
                  sltiu        s11, a2, -1386
                  sra          s7, s0, s2
95:               addi         a7, s3, 484
                  blt          zero, t6, 113f
                  addi         s4, zero, -10 #init loop 0 counter
                  sra          zero, zero, a0
                  xor          s0, a3, s3
                  auipc        t1, 828824
                  slt          ra, zero, t4
                  sra          s11, a0, a2
                  sub          s11, t6, a1
                  xor          a4, a0, t1
                  addi         s9, zero, 5 #init loop 0 limit
sub_3_1_0_t:      nop
                  xor          a3, t0, t1
                  addi         t1, t5, -29
                  auipc        ra, 962685
                  addi         s4, s4, 8 #update loop 0 counter
                  and          tp, a2, a2
                  sra          a7, s3, s9
                  sra          s6, s5, a2
                  srai         s6, t4, 23
                  blt          s4, s9, sub_3_1_0_t #branch for loop 0
                  sra          a3, a2, t4
                  srai         s6, s11, 2
                  andi         a3, s0, -1177
                  beq          t6, s0, 101f
                  bne          s2, tp, 101f
101:              sltiu        s1, s5, -1774
                  xor          t5, a2, s11
                  andi         s4, s11, -754
                  or           s7, t6, t4
                  slli         gp, s6, 20
                  bgeu         gp, s11, 125f
                  add          sp, a1, t1
108:              slti         t1, sp, -281
                  bgeu         s11, s8, 123f
                  addi         s2, s8, -1737
                  auipc        t5, 653533
                  and          a5, t1, a1
113:              beq          s0, sp, 130f
                  xor          a2, s11, a1
                  bne          a0, a2, 135f
                  sra          zero, gp, a1
                  sltiu        s2, sp, 83
                  nop
                  sub          s11, s6, t4
                  srli         s3, s6, 28
                  add          a5, s7, t5
                  add          a4, s2, t1
123:              slt          a3, s8, gp
                  sra          t4, a4, s1
125:              auipc        sp, 946016
                  nop
                  bne          s8, t6, 130f
                  bgeu         s2, s3, 139f
                  slti         s9, s7, -796
130:              lui          s2, 654726
                  andi         t4, a4, -102
                  ori          a6, tp, 863
                  slt          s3, a6, a6
                  beq          s4, s9, 137f
135:              addi         a5, s0, 1691
                  slli         ra, s0, 21
137:              blt          t5, a6, 157f
                  xor          a2, t0, zero
139:              sltiu        a5, s3, -2019
                  sra          s4, s10, a5
                  srli         s11, t6, 3
                  srli         tp, ra, 10
                  beq          ra, a0, 145f
                  bgeu         sp, gp, 161f
145:              xor          a3, a7, a6
                  slli         a4, s3, 5
                  and          s0, s9, a6
                  andi         a3, s4, 393
                  nop
                  bne          tp, s2, 167f
                  bge          s6, zero, 171f
                  auipc        a2, 881256
                  slt          a6, gp, s2
                  bltu         s11, gp, 171f
                  sub          s3, a1, s6
                  and          s1, sp, a1
157:              bgeu         a5, t4, 175f
                  slli         ra, t0, 10
                  sll          a0, tp, s7
                  sub          s4, s6, zero
161:              sltiu        t2, s8, -214
                  or           ra, s0, a4
                  xori         a1, s3, 810
                  bgeu         s0, s4, 165f
165:              srli         gp, zero, 18
                  sra          sp, ra, gp
167:              slti         ra, a3, 148
                  srli         s6, t2, 0
                  beq          tp, zero, 183f
                  bne          s4, ra, 183f
171:              ori          s10, s7, -339
                  slli         zero, a6, 6
                  blt          t4, s6, 190f
                  or           t1, tp, s11
175:              beq          gp, s4, 176f
176:              nop
                  xor          s3, s9, s11
                  srli         a4, s1, 30
                  bge          t5, t3, 180f
180:              ori          gp, a1, -687
                  andi         s2, a0, 1462
                  nop
183:              blt          a0, a4, 197f
                  addi         s11, a3, -917
                  bne          t6, s11, 205f
                  auipc        a2, 842070
                  addi         s7, a7, 2018
                  and          zero, t3, a7
                  lui          t5, 633699
190:              slli         t4, a5, 13
                  bltu         t3, s1, 199f
                  or           t2, s6, a3
                  andi         s3, zero, -296
                  sra          a4, s6, s2
                  andi         s6, s0, 1940
                  and          sp, s3, a7
197:              bge          t4, s1, 214f
                  and          a0, t4, a5
199:              slti         t4, t6, 1062
                  srai         a1, t0, 9
                  beq          s7, s5, 210f
                  srli         s6, t3, 1
                  addi         s7, s3, -1167
                  sltiu        a3, t1, 1099
205:              addi         a7, s3, 698
                  blt          s7, t5, 220f
                  andi         s1, s6, 1376
                  slli         a7, s3, 11
                  srli         t5, s0, 11
210:              sltu         gp, t4, s10
                  add          s3, a0, s1
                  or           a7, s11, s9
                  slti         sp, t0, 98
214:              slt          s10, a0, zero
                  nop
                  beq          s0, a1, 232f
                  slt          gp, a0, t6
                  add          sp, s0, a3
                  xori         a6, t6, 820
220:              lui          s9, 741396
                  bge          t0, t3, 227f
                  slli         a7, sp, 26
                  bltu         t4, zero, 234f
                  sltiu        s11, t2, -1624
                  srl          a3, s11, a2
                  slt          a0, s5, s3
227:              slli         a2, a6, 2
                  sll          ra, s7, zero
                  nop
                  slti         t5, s0, -1602
                  xori         a4, s1, -802
232:              sub          a3, s3, s3
                  ori          a2, t3, -1910
234:              sub          t4, t2, sp
                  lui          a0, 296607
                  srli         t5, sp, 1
                  sltu         t1, t4, ra
                  ori          a5, a2, 1609
                  bgeu         s3, t0, 243f
                  addi         a6, t0, 1764
                  bne          tp, a2, 257f
                  nop
243:              addi         t6, s0, 362
                  and          a2, a7, s0
                  or           t5, a0, a4
                  xori         t2, s8, -1282
                  sltiu        t3, s0, 978
                  slli         a7, a0, 28
                  ori          ra, s0, -1606
                  sub          t2, t0, s9
                  sll          ra, s6, tp
                  bltu         s8, s0, 271f
                  add          gp, s1, s9
                  nop
                  bge          sp, s1, 272f
                  blt          s10, s7, 261f
257:              bne          a7, s1, 258f
258:              sll          a6, a6, s11
                  xori         a5, t1, 1899
                  xori         s2, s0, -651
261:              beq          s5, tp, 275f
                  addi         s10, zero, -885
                  bgeu         s2, s1, 265f
                  srai         s11, s4, 2
265:              ori          tp, s9, -931
                  sll          t1, t2, a1
                  beq          zero, s11, 280f
                  sltiu        t4, s2, 1233
                  srl          a1, s11, zero
                  bltu         t3, a4, 281f
271:              sub          t4, s2, s10
272:              sltiu        a4, s11, 1307
                  bgeu         s3, s10, 290f
                  bltu         a0, sp, 294f
275:              ori          a2, a1, -1534
                  andi         a4, t1, -1042
                  xor          tp, t2, s3
                  srl          sp, a1, a5
                  sltu         a2, s9, sp
280:              bgeu         a3, t1, 297f
281:              ori          t5, a4, -586
                  or           a1, s6, s2
                  bne          a6, s10, 284f
284:              sltiu        s11, s6, -499
                  beq          a6, t1, 302f
                  beq          s10, a2, 292f
                  ori          s3, t5, 816
                  and          a3, a3, a2
                  xor          s11, sp, t2
290:              and          s0, s6, s10
                  slli         t4, t6, 16
292:              sub          a4, a6, s6
                  xori         a4, t6, 84
294:              bne          t5, t6, 310f
                  bgeu         gp, zero, 298f
                  or           t3, s6, ra
297:              sltiu        t5, s4, 1593
298:              blt          s1, a7, 307f
                  ori          a0, s8, -1977
                  add          t6, s10, a5
                  lui          s3, 30100
302:              slt          a4, zero, s10
                  addi         s10, s9, 2034
                  srai         s6, a1, 31
                  nop
                  bltu         gp, s7, 314f
307:              bltu         t5, s10, 308f
308:              xor          a1, t6, s7
                  bltu         s5, s11, 313f
310:              slli         zero, a4, 17
                  sltiu        s6, a4, -593
                  andi         a1, a4, 1067
313:              srl          a5, s5, a0
314:              sub          a6, t2, a6
                  bltu         a7, s5, 334f
                  xor          t3, ra, ra
                  and          s10, a3, s2
                  slti         s2, s0, -901
                  srai         t2, t0, 13
                  xor          a4, s9, s3
                  lui          s2, 459982
                  bne          s10, s11, 336f
                  srai         a1, s6, 13
                  auipc        a3, 165503
                  ori          t6, gp, -206
                  lui          s0, 655253
                  bge          a0, sp, 338f
                  sltu         a6, a1, a0
                  sra          a2, a5, tp
                  andi         a1, a6, 1724
                  bltu         ra, a0, 348f
                  sll          s2, t0, sp
                  or           t5, a2, s3
334:              slli         tp, s10, 8
                  sll          s4, s4, s1
336:              bne          s5, s5, 354f
                  bge          s8, a6, 340f
338:              slti         t5, zero, 1802
                  auipc        t3, 795654
340:              xori         s0, t6, -417
                  ori          tp, s3, -51
                  lui          gp, 46836
                  srai         s9, s3, 21
                  addi         t2, gp, 1911
                  sub          sp, zero, t2
                  lui          t4, 62751
                  bge          sp, t4, 364f
348:              srl          s9, ra, t1
                  srai         s4, a4, 6
                  add          a1, ra, ra
                  blt          s4, s0, 371f
                  add          t2, s6, sp
                  sltiu        s9, s11, -593
354:              or           a7, s9, ra
                  srai         s10, s9, 0
                  sub          s3, s7, s6
                  sll          s0, a4, s5
                  and          a3, a1, a6
                  bgeu         zero, a0, 364f
                  bgeu         a3, t3, 380f
                  auipc        gp, 599536
                  sltu         s3, a0, s9
                  sub          a6, s3, s0
364:              andi         a6, tp, 105
                  sltu         a6, s3, s1
                  slt          ra, s2, s9
                  slt          ra, a7, s9
                  bne          tp, t6, 384f
                  slli         a5, a4, 25
                  ori          ra, s11, -35
371:              bgeu         t3, s11, 388f
                  addi         t2, zero, 2 #init loop 0 counter
                  addi         s10, a6, -1875
                  slt          gp, s7, t4
                  add          s0, s3, t2
                  addi         s2, zero, 16 #init loop 0 limit
                  auipc        t6, 349355
                  auipc        s3, 841524
                  lui          t6, 142159
                  srai         a0, ra, 26
                  sltiu        s1, t1, 1195
                  or           a5, a1, s8
                  lui          zero, 677894
sub_3_6_0_t:      add          sp, a2, s1
                  or           t5, s9, t5
                  sra          t6, gp, a2
                  addi         t2, t2, 6 #update loop 0 counter
                  andi         s3, t4, 673
                  sll          s11, s4, tp
                  slti         t5, gp, -331
                  blt          t2, s2, sub_3_6_0_t #branch for loop 0
                  slti         t4, gp, -1725
                  srai         a2, s11, 3
                  or           s4, a4, t0
                  lui          s4, 163860
                  sll          s4, s3, t0
                  addi         a2, zero, 4 #init loop 1 counter
                  sltiu        t2, gp, -996
                  andi         a7, s11, -1231
                  ori          a5, s4, -1928
                  add          s3, s1, s9
                  auipc        s9, 787
                  sub          t1, s5, tp
                  addi         s0, zero, 14 #init loop 1 limit
sub_3_15_1_t:     xor          s7, s7, ra
                  sub          t6, zero, a3
                  addi         a2, a2, 10 #update loop 1 counter
                  srai         s2, a3, 16
                  lui          a7, 1021578
                  addi         a0, zero, 0 #init loop 0 counter
                  slti         s9, a0, -1768
                  addi         t5, zero, 18 #init loop 0 limit
                  sltu         s6, s9, a5
sub_3_15_0_t:     sltiu        s3, s11, -1385
                  xor          t4, ra, tp
                  addi         a0, a0, 6 #update loop 0 counter
                  slt          a5, a3, t6
                  ori          s2, tp, 645
                  sll          s3, s11, t2
                  bne          a0, t5, sub_3_15_0_t #branch for loop 0
                  srai         s6, a4, 15
                  and          s11, s10, s6
                  beq          a2, s0, sub_3_15_1_t #branch for loop 1
                  srl          zero, s1, s11
                  beq          a6, a7, 390f
                  bltu         a2, s5, 397f
                  slli         tp, a1, 10
                  or           a2, t2, tp
380:              srai         s0, a4, 3
                  slt          s0, s6, t2
                  sll          s1, a1, a0
                  beq          s1, t0, 401f
384:              bgeu         a5, tp, 404f
                  andi         s2, zero, 1295
                  bge          s2, tp, 403f
                  slt          tp, s7, t2
388:              bltu         a6, s5, 408f
                  and          sp, zero, t3
390:              andi         s3, s0, -515
                  bge          a5, t1, 393f
                  sub          t4, t3, a0
393:              lui          a1, 357491
                  xor          s6, t5, s10
                  slt          s3, a1, t5
                  xor          s3, t4, s0
397:              srl          s0, s6, s3
                  sltu         s6, s6, s3
                  xor          a6, t1, s1
                  sub          s6, a5, s0
401:              or           t2, t5, gp
                  xori         t3, s5, -300
403:              sub          a6, s1, t0
404:              bne          tp, t1, 405f
405:              and          s1, t0, sp
                  bgeu         a3, a0, 420f
                  and          a1, t6, t3
408:              slt          t2, a6, s3
                  xor          ra, s3, sp
                  sltu         a4, a6, s2
                  add          s4, s8, a4
                  srai         ra, t3, 27
                  slli         t5, t4, 1
                  slli         a6, a5, 16
                  addi         t2, zero, 9 #init loop 1 counter
                  sub          zero, tp, a3
                  sltu         a3, t4, a2
                  ori          a1, s10, -1051
                  addi         s0, zero, 9 #init loop 1 limit
                  andi         zero, a5, 1688
                  slt          a5, a5, t2
                  andi         s6, a0, 399
sub_3_10_1_t:     auipc        s3, 467754
                  sll          s10, t0, s5
                  slli         a0, s2, 27
                  andi         s6, a5, -1036
                  addi         t2, t2, -7 #update loop 1 counter
                  addi         s4, zero, -10 #init loop 0 counter
                  andi         t1, a2, -929
                  addi         sp, zero, 20 #init loop 0 limit
                  srl          t1, t5, a5
sub_3_10_0_t:     andi         zero, sp, -342
                  sra          s6, s7, a3
                  auipc        gp, 498349
                  addi         s4, s4, 6 #update loop 0 counter
                  add          a1, a3, a4
                  bne          s4, sp, sub_3_10_0_t #branch for loop 0
                  lui          a5, 179610
                  bgeu         t2, s0, sub_3_10_1_t #branch for loop 1
                  srli         a2, t3, 18
                  sltu         sp, t5, a6
                  auipc        s9, 267490
                  srai         t5, t2, 27
                  lui          a2, 691418
                  sll          s0, t6, a2
420:              slti         s4, s11, -512
                  bne          gp, a0, 426f
                  xori         tp, t3, 1085
                  auipc        s7, 840584
                  srai         gp, sp, 8
                  andi         zero, zero, -940
426:              srl          t3, s10, sp
                  addi         s10, a1, -1613
                  slti         s4, a0, 519
                  sltu         t1, sp, a4
                  sra          a6, ra, t6
                  sltiu        s7, a0, -118
                  bgeu         s10, s4, 438f
                  blt          ra, s9, 434f
434:              addi         a5, s0, -248
                  sltiu        s10, a4, -297
                  nop
                  srli         a1, a5, 22
438:              xori         s9, t4, 265
                  sltiu        a7, zero, -880
                  nop
                  slt          a2, zero, t6
                  srai         t1, s7, 17
                  and          t6, t5, s6
                  sub          t3, t2, t6
                  or           tp, s9, a0
                  xor          a4, s7, a5
                  sll          s10, s9, t4
                  or           a0, t2, a3
                  bne          a6, zero, 457f
                  slti         a3, s3, -1585
                  slt          gp, s6, t5
                  xor          a1, s3, a5
                  addi         a4, sp, 2026
                  ori          a5, t0, -1878
                  addi         s10, a1, -72
                  and          a4, a6, a7
457:              bge          sp, a5, 466f
                  add          s2, ra, a4
                  lui          zero, 954251
                  srli         a4, s8, 20
                  addi         s1, a0, -230
                  xor          ra, t3, s6
                  andi         a2, s7, 1491
                  bgeu         s4, s3, 481f
                  sltu         a1, sp, t4
466:              xor          t2, a0, a3
                  slli         a4, t4, 31
                  bltu         t1, sp, 484f
                  srli         t4, a3, 29
                  sll          t6, a1, s4
                  ori          a3, a1, 886
                  sltu         a0, a6, t2
                  beq          s10, t4, 486f
                  srai         t2, s1, 0
                  addi         a7, s5, 898
                  sll          t4, a3, t4
                  or           s11, ra, a0
                  srai         s10, s6, 23
                  add          t2, t2, s2
                  nop
481:              slli         s2, gp, 19
                  andi         s7, a7, -611
                  slli         a4, t6, 11
484:              ori          ra, a1, 1600
                  beq          t6, a2, 502f
486:              add          a7, s0, a3
                  srl          s11, t3, t2
                  bltu         s2, zero, 491f
                  ori          sp, t0, -192
                  beq          zero, s11, 493f
491:              srai         s4, a0, 4
                  bltu         s6, a1, 493f
493:              and          t5, t6, a6
                  ori          s11, a0, 53
                  slti         tp, ra, -1770
                  slli         s3, a6, 15
                  addi         a0, t5, -1727
                  bltu         s3, tp, 515f
                  sra          s0, t0, sp
                  sub          a1, tp, t4
                  andi         tp, a6, 365
502:              sltiu        s1, a4, 1504
                  sltiu        s7, ra, -803
                  xor          tp, s10, s7
                  beq          tp, a6, 519f
                  beq          s4, s9, 523f
                  bgeu         s9, t4, 523f
                  bltu         a7, a3, 519f
                  lui          t3, 85170
                  andi         s1, a7, 479
                  or           a5, a6, t6
                  andi         tp, ra, 1369
                  beq          s10, a4, 517f
                  addi         tp, t1, -764
515:              ori          a7, s9, -2036
                  bne          a3, s1, 535f
517:              bltu         s8, a0, 531f
                  slli         t6, s4, 15
519:              srli         tp, s4, 4
                  xor          s9, ra, s3
                  srl          s3, t3, zero
                  or           s2, a6, gp
523:              srl          a4, t1, gp
                  srai         a7, s10, 10
                  blt          s5, t6, 536f
                  auipc        ra, 646699
                  slli         s11, s1, 13
                  lui          s4, 272443
                  andi         s4, t2, -1174
                  bgeu         t4, s7, 547f
531:              srli         s4, s5, 24
                  sltu         s11, t0, sp
                  sll          a4, t5, s10
                  srai         s7, s10, 1
535:              srai         t4, s8, 31
536:              bne          a7, zero, 540f
                  bne          zero, t5, 540f
                  ori          t2, t1, 2030
                  srl          sp, s6, t0
540:              xor          a2, t2, t1
                  sll          t5, s5, a7
                  bge          a4, a4, 548f
                  srai         t5, a6, 10
                  andi         s3, t1, 389
                  andi         t3, s9, -1020
                  sll          t5, a7, t5
547:              xor          a5, s3, s3
548:              sra          a4, t6, a3
                  andi         s11, t5, 282
                  andi         s3, a7, -1973
                  bltu         tp, s9, 562f
                  slli         a2, t2, 12
                  andi         a4, a6, 1475
                  sltu         s0, t1, s9
                  slli         a0, s8, 30
                  srl          s4, t2, a3
                  sltiu        s6, t3, -1574
                  beq          s8, tp, 572f
                  sub          t2, a2, a7
                  bge          s10, a5, 580f
                  blt          t3, a4, 570f
562:              beq          t2, a6, 570f
                  blt          s0, t2, 580f
                  sltu         s3, sp, s11
                  sltiu        ra, a2, 369
                  beq          s3, a1, 582f
                  sll          a2, s10, t3
                  or           a0, a1, t1
                  xori         a3, t6, -1456
570:              srli         s9, a2, 7
                  sll          a2, a5, a1
572:              auipc        sp, 298336
                  bge          gp, s3, 592f
                  blt          a0, a0, 575f
575:              bne          a2, a3, 588f
                  srl          s1, t4, gp
                  and          tp, s8, t0
                  lui          ra, 35058
                  srai         zero, s7, 1
580:              and          a2, t4, a7
                  lui          s4, 136879
582:              slti         ra, t5, 348
                  slti         s6, s8, -1546
                  sub          t2, a7, tp
                  xor          a1, t3, a2
                  bne          a2, zero, 603f
                  sub          s0, s7, s9
588:              xor          s4, a2, a1
                  beq          s2, a1, 594f
                  add          s1, s4, s6
                  nop
592:              slti         s0, s0, -688
                  bge          gp, s6, 613f
594:              nop
                  srl          a2, t4, t0
                  sub          zero, a0, s0
                  bltu         a6, a1, 614f
                  bltu         t5, s2, 599f
599:              beq          s10, a3, 616f
                  andi         ra, s4, 840
                  xor          a7, t4, s7
                  add          s9, a5, a5
603:              add          zero, ra, a6
                  sltiu        a1, t5, -1490
                  bne          t4, s2, 619f
                  bltu         ra, tp, 624f
                  nop
                  slti         a2, a5, -1166
                  bne          gp, t6, 610f
610:              and          a0, a0, a1
                  addi         gp, tp, 1889
                  srli         t1, t1, 20
613:              srai         s1, a4, 15
614:              slt          s7, s10, a4
                  sub          a6, a6, a1
616:              blt          s10, a6, 618f
                  and          gp, s1, t3
618:              ori          s6, t3, 606
619:              srli         t3, a6, 1
                  sll          a1, s5, a4
                  slli         a5, sp, 21
                  bltu         t6, s5, 633f
                  srli         a3, s8, 28
624:              addi         s2, t6, -1589
                  nop
                  slti         ra, s4, 120
                  slti         t4, ra, 23
                  sltu         a0, a4, a6
                  slti         a2, s3, 615
                  bne          a0, tp, 646f
                  bne          s3, a7, 634f
                  add          t3, s3, s1
633:              or           t6, zero, t1
634:              xor          a0, a2, tp
                  addi         t5, s8, 1967
                  auipc        s11, 475417
                  beq          a0, t3, 657f
                  srli         t2, a5, 2
                  sub          a0, s0, t1
                  nop
                  sltu         a3, s9, s8
                  srl          a4, a4, t4
                  xor          s7, t6, zero
                  ori          a0, t1, -1552
                  nop
646:              xor          s1, a5, s1
                  sltiu        a2, a1, 845
                  slt          s6, t6, s0
                  bltu         t3, s8, 666f
                  sltu         t5, a6, s2
                  sltu         s9, t6, zero
                  ori          a2, s11, 2021
                  nop
                  sltu         s0, a1, s8
                  srai         t6, s8, 28
                  nop
657:              bltu         s10, t5, 671f
                  sltu         s10, t6, s3
                  srli         s7, t1, 30
                  ori          t5, s5, -2005
                  bne          t4, s0, 678f
                  bgeu         a4, a5, 668f
                  srli         t4, tp, 2
                  srai         a5, t0, 12
                  slli         a7, zero, 17
                  la           t5, sub_5
                  addi         t5, t5, -888
                  auipc        a6, 615987
                  andi         s3, t0, -1806
                  addi         a0, s10, -729
                  bltu         zero, a0, sub_3_j7 #branch to jump instr
                  slti         s1, a3, 589
sub_3_j7:         jalr         t2, t5, 889 #jump sub_3 -> sub_5
                  auipc        s4, 755825
                  xori         s6, a1, -1588
666:              lui          a5, 903010
                  sll          t1, t5, s3
668:              sltu         t6, t2, t4
                  bne          s4, s11, 683f
                  andi         s10, t3, 142
671:              srl          a4, a0, s3
                  xor          t4, s6, sp
                  sltu         t4, s6, s6
                  bge          t0, s3, 691f
                  ori          a6, tp, 756
                  bge          a2, s3, 696f
                  bge          a1, s9, 697f
678:              srli         gp, tp, 7
                  andi         s4, t4, 628
                  auipc        ra, 956821
                  sub          a1, s9, t3
                  xori         tp, t6, 1680
683:              slti         a5, t0, 1487
                  auipc        t3, 26879
                  addi         t1, t3, -921
                  bne          t5, a3, 687f
687:              sltiu        a5, a1, -1528
                  andi         gp, t6, -1688
                  srli         sp, a6, 0
                  srl          s10, zero, a5
691:              lui          a5, 387819
                  and          a4, s3, zero
                  or           s3, a1, a3
                  andi         a4, t0, -897
                  blt          s7, s8, 698f
696:              xori         tp, tp, 1274
697:              slti         s7, t4, -1041
698:              bgeu         t3, t5, 715f
                  beq          t1, tp, 716f
                  srli         s2, a2, 7
                  and          a2, s4, a7
                  bne          a6, s1, 705f
                  or           s9, gp, s5
                  auipc        a1, 998099
705:              srl          t1, s1, t2
                  sub          sp, t5, s0
                  xor          s6, t1, ra
                  ori          tp, ra, -691
                  slt          a5, s9, s1
                  lui          a2, 474283
                  and          t6, a4, a2
                  addi         s1, s0, 1417
                  lui          a6, 139298
                  or           s4, s2, a5
715:              xori         s7, s5, 1398
716:              sltu         s11, t5, s2
                  and          s4, t3, s7
                  sltu         s9, a3, a4
                  and          s10, a2, t3
                  bne          a3, a3, 736f
                  sub          t2, t5, t1
                  xori         s0, s0, 1219
                  bltu         a0, tp, 739f
                  or           s0, s9, s7
                  or           a2, t0, zero
                  sll          s9, s5, s8
                  sra          s6, s9, a7
                  srli         s7, s6, 1
                  or           t2, t5, s10
                  xori         a6, s3, 105
                  blt          s2, t1, 742f
                  slli         s1, t4, 5
                  sltiu        a6, s4, 1806
                  sltiu        s7, ra, -1976
                  sll          a7, t2, gp
736:              sll          a0, ra, t6
                  and          t4, a7, t6
                  srai         t1, sp, 6
739:              bgeu         t3, t0, 758f
                  bgeu         a3, t4, 741f
741:              bne          a3, s4, 746f
742:              sra          sp, a4, s2
                  srli         a4, s2, 26
                  sll          s0, s7, s7
                  sltu         t2, a5, s10
746:              sll          s0, a6, a5
                  bne          a1, a6, 748f
748:              and          t3, s2, gp
                  addi         a4, t2, 1994
                  srli         tp, sp, 30
                  srai         s10, t1, 26
                  srl          a6, s10, s6
                  lui          s7, 210593
                  sll          ra, t3, tp
                  andi         s3, t0, 1778
                  slti         t2, s11, 1013
                  and          a2, gp, a4
758:              slt          sp, s6, sp
                  nop
                  slt          s9, a1, s2
                  slli         s7, a3, 14
                  slt          t5, t4, s4
                  sll          s6, s11, tp
                  sltiu        a1, s3, 843
                  slli         s7, zero, 25
                  add          s3, t0, a6
                  or           a2, tp, a3
                  srl          s7, s10, gp
                  lui          s6, 152318
                  sra          sp, s3, s10
                  addi         t4, s6, 53
                  srai         s0, a2, 31
                  ori          s2, s0, 851
                  sub          s7, t4, s0
                  xor          a1, s4, s8
                  slli         a1, a2, 18
                  lui          s9, 191610
                  sra          a3, zero, t1
                  slt          s9, sp, tp
                  sltiu        s4, a6, 2008
                  srl          s3, s8, s6
                  lui          s11, 972305
                  srl          a0, ra, s10
                  bge          t5, tp, 801f
                  srli         sp, s0, 9
                  xor          a1, s0, t4
                  add          s6, a5, ra
                  bne          s5, t4, 796f
                  srai         a4, t3, 19
                  bge          s8, t3, 804f
                  andi         s1, s5, 1573
                  add          a7, ra, s2
                  bne          s7, zero, 813f
                  and          t3, s0, s7
                  srl          sp, t1, s8
796:              bge          s0, s2, 809f
                  addi         a7, t1, -1246
                  sub          tp, t5, s6
                  sltu         s0, a2, s8
                  sra          s10, s9, ra
801:              xori         s9, t2, 1346
                  addi         a2, t1, -201
                  addi         a2, t6, -636
804:              srai         s0, a4, 2
                  and          s11, s10, t6
                  sltiu        s0, s9, 204
                  sll          t6, t2, t6
                  bne          s10, t6, 826f
809:              ori          t4, s7, -2011
                  slli         s11, a2, 8
                  bne          t3, s5, 813f
                  bgeu         s4, t5, 816f
813:              nop
                  sub          s7, t5, t0
                  blt          s11, s1, 826f
816:              slli         s1, t0, 9
                  bltu         t3, t2, 826f
                  add          a6, s2, a4
                  xor          a7, s10, a1
                  xor          t2, s3, t1
                  nop
                  ori          tp, a6, -1801
                  blt          a2, t2, 840f
                  lui          t6, 274807
                  xor          t6, a2, s4
826:              sub          a5, t4, gp
                  andi         sp, gp, 693
                  beq          t5, s10, 842f
                  blt          s5, t3, 846f
                  sll          t2, a3, s0
                  sra          a6, a4, t2
                  or           zero, a0, t5
                  srl          ra, s5, a5
                  add          s11, gp, a1
                  ori          t2, s11, -1448
                  auipc        t2, 971427
                  bgeu         a2, t4, 854f
                  nop
                  bne          s6, t4, 859f
840:              bltu         t4, s10, 848f
                  xori         a5, tp, -1299
842:              ori          t5, a3, 570
                  andi         a1, s10, -1576
                  andi         zero, s10, -95
                  bne          sp, a2, 859f
846:              add          s6, a0, t1
                  srai         s1, t1, 16
848:              bge          t6, s4, 864f
                  ori          ra, t2, -161
                  srli         t6, s5, 12
                  add          a2, a7, a4
                  auipc        s2, 911980
                  addi         t2, a6, -1579
854:              sltiu        t2, a6, -137
                  xor          gp, s10, a5
                  nop
                  srai         ra, s9, 25
                  sltiu        gp, s4, -474
859:              blt          a7, a5, 876f
                  and          tp, sp, t2
                  lui          a5, 1014100
                  blt          s10, t2, 873f
                  or           s10, ra, a2
864:              nop
                  srai         a5, s11, 0
                  xori         s10, t2, 1115
                  lui          a2, 697219
                  andi         t2, s11, 738
                  bge          s7, t1, 879f
                  bgeu         a1, zero, 879f
                  or           a4, s2, s10
                  slt          s9, t1, a6
873:              sltiu        a2, a2, -725
                  or           zero, s10, zero
                  bltu         a4, s0, 879f
876:              srai         t6, t1, 14
                  andi         s1, a0, -598
                  ori          s10, s5, 786
879:              ori          a4, a3, -1980
                  slt          a6, a6, s7
                  ori          a1, s1, 886
                  ori          a7, a6, -1467
                  lw           t2, 4(s5)
                  slli         t3, s5, 9
                  addi         s5, s5, 44
                  sll          t1, t0, t1
                  auipc        ra, 485050
                  sltiu        tp, a2, -1495
1295:             addi x7, x7, 0
1295:             jalr x7, x7, 0
sub_4:            or           gp, t3, a0
                  sra          s3, t4, s5
                  addi         s5, s5, -36
                  srai         tp, s6, 20
                  sw           t2, 4(s5)
                  add          zero, t0, s5
                  sltu         t3, s11, t0
                  addi         a1, zero, 4 #init loop 0 counter
                  and          a4, t4, s11
                  sll          gp, s5, s9
                  addi         s11, zero, -17 #init loop 0 limit
                  and          t2, t3, t1
sub_4_1_0_t:      nop
                  andi         s9, a0, 268
                  xor          t3, s9, zero
                  slt          s0, a6, s2
                  addi         a1, a1, -4 #update loop 0 counter
                  sub          t6, s8, a4
                  srli         t2, s1, 13
                  srl          t6, s3, s1
                  auipc        a4, 500022
                  sra          gp, t6, a6
                  bge          a1, s11, sub_4_1_0_t #branch for loop 0
                  ori          s3, t3, 1572
                  addi         a2, zero, 8 #init loop 1 counter
                  and          a6, t6, sp
                  addi         s6, zero, 11 #init loop 1 limit
sub_4_2_1_t:      add          tp, a3, s5
                  lui          s11, 244061
                  addi         a2, a2, 3 #update loop 1 counter
                  slti         zero, a5, -265
                  sub          a7, zero, t4
                  addi         a3, zero, 10 #init loop 0 counter
                  addi         s3, zero, 10 #init loop 0 limit
                  sltiu        a7, s8, 1708
sub_4_2_0_t:      sltiu        a0, t4, -747
                  srl          tp, s0, zero
                  addi         a3, a3, -9 #update loop 0 counter
                  bgeu         a3, s3, sub_4_2_0_t #branch for loop 0
                  bltu         a2, s6, sub_4_2_1_t #branch for loop 1
                  slt          s11, t1, a1
                  addi         a6, zero, 6 #init loop 1 counter
                  andi         t4, t5, -533
                  addi         t2, zero, 6 #init loop 1 limit
sub_4_3_1_t:      and          a5, t0, s10
                  addi         a6, a6, -1 #update loop 1 counter
                  nop
                  addi         s3, zero, 10 #init loop 0 counter
                  sra          zero, a3, s4
                  addi         tp, zero, 7 #init loop 0 limit
                  sltiu        zero, s9, -139
sub_4_3_0_t:      addi         a3, t3, 1291
                  addi         s3, s3, -6 #update loop 0 counter
                  xori         gp, a6, 1229
                  add          t1, t5, a7
                  bgeu         s3, tp, sub_4_3_0_t #branch for loop 0
                  ori          s7, s1, 534
                  sub          s1, a0, t5
                  bgeu         a6, t2, sub_4_3_1_t #branch for loop 1
                  sll          s10, a7, a2
                  addi         a3, zero, -6 #init loop 0 counter
                  sll          t1, t2, t1
                  xor          s7, s0, a0
                  srai         gp, s0, 18
                  srai         gp, s7, 17
                  add          zero, s4, s1
                  auipc        s0, 749685
                  and          s9, a5, a6
                  xor          t3, s10, s11
                  slti         t2, t2, -179
                  add          t3, a2, a2
                  srli         a5, ra, 29
                  addi         a1, zero, -9 #init loop 0 limit
                  add          t3, tp, a0
sub_4_7_0_t:      sltu         s11, a5, t1
                  srli         t6, s1, 21
                  ori          s1, t1, -1228
                  sltiu        tp, t3, -841
                  addi         a3, a3, -5 #update loop 0 counter
                  and          a2, a3, s2
                  slli         s9, t1, 24
                  bge          a3, a1, sub_4_7_0_t #branch for loop 0
                  nop
                  addi         s2, zero, 2 #init loop 1 counter
                  addi         a5, zero, 17 #init loop 1 limit
sub_4_5_1_t:      xor          s9, gp, a2
                  addi         s2, s2, 2 #update loop 1 counter
                  addi         t6, zero, 3 #init loop 0 counter
                  addi         a2, zero, 2 #init loop 0 limit
sub_4_5_0_t:      xori         s11, s5, -525
                  addi         t6, t6, -1 #update loop 0 counter
                  auipc        s3, 342831
                  bgeu         t6, a2, sub_4_5_0_t #branch for loop 0
                  bltu         s2, a5, sub_4_5_1_t #branch for loop 1
                  sll          a0, gp, a3
                  addi         s3, zero, 8 #init loop 1 counter
                  slt          t5, a1, s0
                  add          a2, s2, a1
                  addi         t3, zero, 18 #init loop 1 limit
                  xori         a5, zero, -1505
                  auipc        s9, 389487
sub_4_6_1_t:      slt          a0, s7, t5
                  sub          s0, t4, a2
                  sltu         t5, a1, zero
                  andi         s1, s11, -636
                  sub          s0, t1, s10
                  addi         s3, s3, 10 #update loop 1 counter
                  addi         a4, zero, -10 #init loop 0 counter
                  sltiu        t1, t0, 2007
                  srli         s0, a4, 9
                  sll          a0, s2, s9
                  sltu         t6, s6, ra
                  slti         s9, ra, -1535
                  srl          a2, ra, t0
                  sltu         s2, a2, s10
                  addi         a3, zero, 4 #init loop 0 limit
                  andi         gp, s8, -1105
sub_4_6_0_t:      xori         t5, s8, 816
                  sub          s11, ra, t5
                  slli         t4, tp, 23
                  sltiu        ra, tp, 773
                  addi         a4, a4, 2 #update loop 0 counter
                  sra          a6, s6, a6
                  bltu         a4, a3, sub_4_6_0_t #branch for loop 0
                  sltu         ra, t4, zero
                  addi         s4, a1, -1280
                  slli         s9, a0, 11
                  bltu         s3, t3, sub_4_6_1_t #branch for loop 1
                  srl          t4, a1, t3
                  xor          a5, gp, s1
                  sub          s0, s11, s1
                  sltiu        gp, t6, -656
                  sll          a2, a3, s7
                  lui          s6, 953687
                  slli         s3, s2, 1
                  beq          t4, s11, 10f
                  and          ra, s2, s6
                  auipc        s6, 972017
                  srai         s10, a5, 30
10:               add          a1, a2, s3
                  auipc        sp, 16612
                  slti         a6, s8, -619
                  sra          s4, s3, s7
                  bgeu         sp, ra, 28f
                  blt          a7, s10, 17f
                  xor          a4, t4, ra
17:               bltu         s1, a5, 23f
                  and          s7, a6, a2
                  xori         s11, t5, 412
                  srl          sp, s3, a2
                  srli         t6, a1, 10
                  sub          a5, a3, s4
23:               sll          t5, t4, s9
                  slli         t2, s11, 14
                  blt          s5, t6, 31f
                  blt          sp, s9, 29f
                  bgeu         zero, a1, 43f
28:               bgeu         s9, gp, 29f
29:               sub          t1, sp, t3
                  xor          t3, tp, s9
31:               ori          s2, s5, -311
                  addi         s2, zero, 5 #init loop 0 counter
                  ori          t3, a0, -1609
                  or           a6, zero, t5
                  sltiu        s1, a7, -1607
                  slli         a7, s9, 0
                  slli         t6, a4, 27
                  lui          s9, 313990
                  srl          s6, t2, sp
                  srli         s7, s5, 17
                  srli         s1, s11, 26
                  addi         s0, zero, 13 #init loop 0 limit
sub_4_4_0_t:      slti         a4, t2, 998
                  sltiu        t1, a2, -598
                  sub          s6, a5, a1
                  sltiu        t3, ra, -1210
                  slti         tp, s7, -259
                  srli         t4, zero, 10
                  auipc        t1, 1030671
                  addi         s2, s2, 4 #update loop 0 counter
                  slti         a5, ra, -869
                  and          t4, t5, s3
                  srl          sp, s1, a7
                  srai         s9, a1, 2
                  slt          s1, a7, s3
                  beq          s2, s0, sub_4_4_0_t #branch for loop 0
                  add          t1, s0, sp
                  nop
                  bgeu         s3, s8, 44f
                  and          zero, a6, s11
                  bge          s0, s6, 46f
                  bge          ra, t1, 48f
                  blt          t6, a5, 48f
                  auipc        t3, 711783
                  auipc        t2, 457575
                  addi         sp, s6, -1055
                  bne          a5, s6, 58f
                  or           sp, s1, ra
43:               sltiu        a6, s8, -5
44:               addi         sp, s8, 157
                  and          s6, zero, s4
46:               auipc        t3, 287465
                  bne          t4, a0, 56f
48:               srl          a2, a1, s8
                  add          gp, a4, t0
                  sltiu        s9, s0, 1245
                  bgeu         a1, s5, 60f
                  or           s0, a4, s8
                  xori         s9, s2, -1835
                  blt          a3, a0, 73f
                  bne          s1, s7, 63f
56:               or           s2, s8, t0
                  add          sp, s10, a5
58:               bltu         s4, a0, 68f
                  beq          a5, s3, 79f
60:               srai         a6, s8, 26
                  blt          a2, t5, 79f
                  sll          a7, t2, gp
63:               srli         t2, s6, 8
                  ori          a4, a6, -1400
                  ori          s6, a6, -981
                  lui          gp, 376643
                  beq          s7, ra, 84f
68:               slti         a4, s1, 798
                  addi         gp, zero, -10 #init loop 0 counter
                  addi         a0, zero, 16 #init loop 0 limit
                  ori          s10, t4, 279
                  auipc        s4, 54450
                  lui          s9, 858694
                  slti         s4, t4, -611
                  or           tp, tp, t6
                  ori          s3, sp, -20
                  or           s11, t6, s2
sub_4_0_0_t:      lui          a6, 657671
                  sltiu        tp, s10, 200
                  addi         gp, gp, 9 #update loop 0 counter
                  ori          sp, s10, 1513
                  lui          t5, 484450
                  srli         t3, t3, 9
                  srli         a2, s0, 21
                  sra          s3, t1, s8
                  or           s2, zero, gp
                  srai         a3, a7, 7
                  or           a5, s8, t3
                  slti         sp, a0, 170
                  ori          a5, s6, 1391
                  ori          a2, s11, 1492
                  auipc        s2, 109013
                  auipc        t2, 619544
                  slli         t6, s10, 26
                  xori         s7, s1, 1696
                  addi         s6, zero, -654
                  blt          gp, a0, sub_4_0_0_t #branch for loop 0
                  slti         t4, a7, -454
                  bge          a6, s6, 72f
                  beq          a6, s2, 78f
                  bne          t3, a3, 81f
72:               and          a6, s9, s2
73:               bltu         s11, s3, 86f
                  bltu         a0, t4, 94f
                  add          s10, zero, s5
                  and          a3, s5, sp
                  sll          t1, s1, s9
78:               or           tp, s8, t2
79:               and          a5, s0, t6
                  sltu         a1, t2, s6
81:               xor          sp, s4, gp
                  beq          tp, s6, 84f
                  srai         a2, s6, 26
84:               sltu         t1, a1, t3
                  addi         a6, a1, -1626
86:               xor          s11, t2, tp
                  srl          s6, a4, a6
                  sll          a2, a5, a7
                  beq          a3, s6, 97f
                  add          s11, s3, t6
                  and          a5, gp, t4
                  srl          s2, gp, a0
                  andi         a7, s0, -1819
94:               bgeu         t1, ra, 106f
                  xor          a4, s9, s3
                  xori         t6, s6, 372
97:               slt          sp, s6, ra
                  sra          a0, t4, a4
                  srai         a4, a4, 5
                  or           t6, a3, tp
                  sub          a4, s1, sp
                  srl          s3, s7, s0
                  or           t1, a5, t4
                  srl          s0, a3, a3
                  lui          s0, 973410
106:              andi         s10, a1, -988
                  or           tp, t0, sp
                  bge          sp, sp, 114f
                  srli         a3, s3, 11
                  ori          s0, tp, 736
                  andi         t4, s11, 1563
                  sltu         t2, zero, s8
                  slti         t4, a3, 308
114:              slt          t5, t0, a0
                  bge          sp, t2, 124f
                  addi         a0, a1, 608
                  srai         t5, s8, 5
                  ori          s11, s1, 169
                  or           s9, t6, a7
                  sll          tp, s2, a0
                  slt          t2, s3, a6
                  and          s0, a3, t6
                  or           sp, zero, ra
124:              or           s6, s4, s0
                  sltu         a7, t5, s5
                  andi         tp, t4, 1715
                  bge          s9, t0, 146f
                  srai         a0, s5, 14
                  addi         s11, t2, 399
                  addi         a5, s9, 897
                  bltu         s0, a5, 132f
132:              sub          s1, a5, t4
                  or           s7, zero, t1
                  slti         s1, t0, -91
                  xor          t5, a4, a1
                  sub          sp, s5, tp
                  srai         t5, t4, 30
                  srai         zero, s6, 23
                  or           zero, t2, s6
                  addi         a5, s9, -64
                  bgeu         s9, s7, 152f
                  sll          a2, s4, t6
                  bgeu         s1, a2, 149f
                  addi         s11, s4, 1592
                  xori         s11, a0, -797
146:              sra          tp, a3, s9
                  sltiu        s4, sp, -1685
                  bgeu         s0, sp, 154f
149:              or           s7, a1, t6
                  slt          zero, t5, s8
                  slti         t4, t5, 966
152:              xori         s7, tp, 645
                  or           t6, a4, t5
154:              bltu         s11, s10, 160f
                  slt          t2, a7, a3
                  srli         s7, s9, 27
                  and          a6, a5, a5
                  add          t6, t0, s5
                  bltu         t1, tp, 169f
160:              add          a6, s8, a2
                  srl          a2, t4, s0
                  xor          s1, zero, gp
                  xori         a2, t4, 1351
                  srli         s1, t2, 6
                  nop
                  sltu         a4, t2, s1
                  sra          s6, s0, gp
                  bgeu         s5, s1, 176f
169:              sra          a4, s6, sp
                  beq          t3, t0, 173f
                  bge          sp, t1, 183f
                  xor          t4, t6, s8
173:              andi         a2, gp, -1720
                  or           s11, a5, a1
                  bltu         s0, s11, 178f
176:              srli         t4, s9, 23
                  or           s7, t0, a0
178:              and          zero, sp, a3
                  sub          ra, a7, s9
                  add          a2, t3, s11
                  auipc        s3, 646187
                  or           a3, s3, ra
183:              xor          a0, a1, a0
                  srai         sp, a1, 19
                  sra          s9, t5, s1
                  srli         s9, a5, 13
                  sra          gp, a7, a1
                  blt          t5, s6, 199f
                  bltu         t6, a7, 206f
                  bgeu         ra, s0, 210f
                  sltu         s2, tp, zero
                  srl          t1, sp, t2
                  add          t4, a6, a5
                  sltu         s10, s6, a7
                  ori          ra, a2, -595
                  auipc        s9, 877806
                  bne          a5, s2, 213f
                  or           t4, a4, s1
199:              ori          t5, a0, -787
                  nop
                  bgeu         a6, a1, 212f
                  srai         s4, t6, 21
                  auipc        a0, 276568
                  ori          s11, s6, -81
                  and          ra, s2, a7
206:              blt          t1, a5, 214f
                  andi         t4, a4, -1488
                  auipc        a3, 686450
                  sll          tp, sp, t2
210:              addi         a5, s5, 1404
                  bgeu         t6, ra, 228f
212:              srli         s6, zero, 25
213:              and          s2, a5, s8
214:              add          s4, t1, s4
                  srai         t5, s8, 21
                  lui          a2, 447820
                  slti         s6, a6, 1782
                  bne          ra, t1, 230f
                  and          a3, a1, ra
                  slti         t3, gp, -277
                  lui          a1, 193578
                  and          a7, t5, s10
                  xori         s0, t3, 547
                  beq          zero, a2, 232f
                  beq          ra, s0, 243f
                  nop
                  xori         gp, t5, 1447
228:              srai         t4, t4, 3
                  blt          s7, t0, 231f
230:              nop
231:              bne          a0, a3, 245f
232:              andi         a0, s0, 61
                  sra          t1, ra, a4
                  srl          zero, s3, s9
                  andi         a6, tp, -1446
                  addi         s3, a7, -721
                  srai         s6, s5, 24
                  beq          s4, s7, 240f
                  srli         t6, t0, 15
240:              ori          tp, tp, -1094
                  addi         s2, s7, -1455
                  bltu         s10, s11, 251f
243:              and          sp, a7, sp
                  srli         s7, s1, 16
245:              ori          a1, ra, 394
                  nop
                  bge          s7, s5, 260f
                  auipc        s4, 643179
                  sll          a3, s9, s7
                  auipc        a7, 265074
251:              lui          s10, 828788
                  addi         s0, t3, -1025
                  add          a1, s5, t3
                  srai         a0, s9, 11
                  auipc        s1, 935900
                  or           zero, s11, a3
                  sub          t6, s6, a1
                  lui          t1, 288368
                  sll          s9, t0, s4
260:              srli         t2, s10, 9
                  sll          t5, t4, a5
                  lui          a4, 628502
                  beq          s9, s8, 267f
                  lui          s10, 672800
                  andi         a5, s5, 859
                  nop
267:              or           t1, zero, a5
                  auipc        s11, 998586
                  sll          t3, t2, a1
                  xori         a2, s7, -1763
                  srl          t5, a7, s2
                  nop
                  bgeu         sp, s6, 283f
                  lui          s1, 913893
                  sltiu        a7, t0, 140
                  blt          t5, s0, 296f
                  srai         tp, s9, 2
                  slti         a1, gp, -670
                  andi         sp, a5, 2002
                  nop
                  auipc        a7, 784950
                  slt          ra, s3, a2
                  blt          a2, s0, sub_4_j8 #branch to jump instr
                  slt          a3, a2, s6
                  srai         a4, t4, 27
sub_4_j8:         jal          t2, sub_5 #jump sub_4 -> sub_5
                  nop
                  beq          t0, s1, 290f
                  bge          zero, tp, 280f
280:              xor          s6, s9, t4
                  ori          tp, s1, 1050
                  lui          a3, 384130
283:              sltu         s3, s6, a3
                  ori          a7, s11, 736
                  lui          a4, 301980
                  lui          s2, 848333
                  bge          s1, a0, 296f
                  xori         zero, s2, -1994
                  sltiu        s2, a5, 129
290:              ori          s10, t4, -1801
                  xor          s7, s9, s4
                  bltu         t5, t4, 300f
                  sltu         s2, s9, s1
                  sltiu        a5, t3, -1529
                  srai         a6, s6, 29
296:              lui          a1, 767419
                  sra          s9, s2, t6
                  slt          a3, t2, t5
                  bne          s7, s6, 318f
300:              andi         a7, s2, 1680
                  sub          s10, a0, s7
                  slt          zero, a7, a3
                  slli         s3, t3, 14
                  addi         a4, s9, 122
                  lui          gp, 309064
                  srl          t4, s1, a1
                  srl          s2, s8, zero
                  ori          s2, s2, -1437
                  bge          tp, t2, 311f
                  srai         tp, t0, 29
311:              add          a7, t2, sp
                  beq          a6, t6, 322f
                  nop
                  or           a7, t3, t0
                  slt          s4, s6, s0
                  blt          t1, a3, 327f
                  srli         t5, t5, 0
318:              sltiu        a4, s2, -641
                  sltiu        t6, s1, 574
                  blt          s6, s2, 331f
                  bge          s2, zero, 327f
322:              sra          s1, gp, t0
                  srli         a2, a1, 13
                  or           a2, t1, s8
                  sll          zero, s3, t1
                  and          a3, a2, s7
327:              sll          a1, s0, a4
                  bltu         s8, s3, 340f
                  nop
                  andi         s10, s0, -363
331:              bgeu         s3, tp, 337f
                  blt          s5, s2, 340f
                  slt          s6, t0, s1
                  xor          a3, s10, t5
                  sltu         t3, ra, s4
                  and          s7, s5, s11
337:              or           s6, t5, s7
                  sll          s4, s8, a4
                  blt          t5, t3, 353f
340:              xor          t2, s1, a5
                  bne          sp, gp, 344f
                  auipc        t6, 199481
                  xor          a4, zero, t3
344:              slt          a2, t3, tp
                  sll          sp, t6, t6
                  srli         a6, a1, 19
                  sub          t2, a3, t3
                  add          sp, a3, s8
                  bgeu         a6, s1, 360f
                  bltu         ra, s2, 356f
                  ori          a5, tp, 1997
                  add          s1, s7, a2
353:              slti         a1, a4, -517
                  srli         a0, s5, 26
                  ori          s3, gp, -1048
356:              xor          s10, s10, t3
                  addi         a2, a7, -1098
                  auipc        s2, 140356
                  or           s6, t3, a1
360:              and          a1, a6, gp
                  or           a6, s0, s8
                  slti         s9, gp, -592
                  bne          sp, gp, 380f
                  slt          a0, t0, s1
                  add          sp, s3, a5
                  xor          s1, t0, t1
                  nop
                  bne          t1, t3, 384f
                  srli         a4, s8, 16
                  xor          s2, t2, s1
                  lui          a5, 665634
                  beq          s0, s2, 381f
                  bne          zero, s10, 383f
                  slti         t2, t3, 1290
                  and          tp, s8, a1
                  xor          a3, a0, t0
                  add          sp, s5, s3
                  srli         zero, t0, 23
                  slt          s2, s8, t2
380:              andi         a0, a0, -1447
381:              andi         a7, a2, 1533
                  sub          t6, s5, a3
383:              sltu         s3, t1, a5
384:              slti         t1, sp, -18
                  srl          s6, s0, t2
                  slli         s11, s0, 0
                  andi         a6, a4, 1214
                  xori         s0, s11, 868
                  sub          t3, tp, s6
                  nop
                  sll          a2, zero, gp
                  xor          s2, s8, s4
                  lui          a1, 201935
                  nop
                  bltu         zero, s11, 412f
                  nop
                  sll          a6, s4, s0
                  sltu         a5, a3, gp
                  srl          a4, s6, t4
                  srai         sp, zero, 26
                  bltu         s3, gp, 405f
                  xor          s7, s5, t0
                  slt          t3, s9, a5
                  addi         ra, s3, 1934
405:              sltu         a5, zero, sp
                  nop
                  xor          t4, zero, s9
                  and          a4, a7, a7
                  and          a0, s3, s3
                  srai         ra, s0, 8
                  xor          sp, t5, s0
412:              add          t1, a6, s0
                  and          s11, ra, gp
                  lui          t3, 1048443
                  lw           t2, 4(s5)
                  srli         s0, s11, 10
                  sltiu        a7, t6, -1875
                  slti         sp, s5, 969
                  addi         s5, s5, 36
                  nop
                  sub          s1, gp, s5
                  nop
                  add          sp, s11, s7
619:              addi x26, x7, 1
619:              jalr x26, x26, 0
sub_5:            srli         a2, s9, 17
                  auipc        a3, 255177
                  srai         s0, t6, 11
                  srai         a4, a2, 22
                  sra          a2, s10, s7
                  auipc        t5, 176987
                  bge          s7, ra, sub_5_stack_p
                  slt          s9, s7, s5
                  lui          a6, 851865
sub_5_stack_p:    addi         s5, s5, -12
                  slt          s2, t6, t0
                  sw           t2, 4(s5)
                  addi         gp, t2, 116
                  add          s0, a7, a0
                  sub          a1, s9, s8
                  nop
                  sra          t1, s6, t0
                  bgeu         a4, t0, 15f
                  slti         zero, s8, -62
                  lui          t4, 431122
                  lui          a2, 867649
                  bltu         s10, a4, 14f
                  add          s7, zero, s11
                  blt          a5, t6, 11f
11:               bgeu         a6, sp, 30f
                  or           s4, a2, t6
                  addi         t4, t5, 1655
14:               xori         s6, s4, 766
15:               blt          gp, s8, 23f
                  bge          a3, a0, 36f
                  sltu         a0, ra, s1
                  xori         s11, s9, 460
                  blt          t4, a5, 36f
                  auipc        t6, 994579
                  sub          ra, t5, zero
                  srai         t6, zero, 26
23:               ori          a4, t2, 1172
                  ori          t4, tp, 1887
                  srai         s11, a2, 26
                  srli         s6, ra, 11
                  blt          a2, a0, 38f
                  sll          a1, t1, s3
                  nop
30:               srl          s7, t3, s1
                  sltiu        s11, s10, -1954
                  bge          s8, ra, 42f
                  beq          s2, tp, 44f
                  xor          sp, t3, s7
                  slti         s11, a3, 679
36:               lui          a7, 827369
                  srai         a3, s3, 15
38:               lui          s11, 629948
                  blt          a7, s7, 44f
                  xor          tp, s4, t1
                  xor          t3, s3, s2
42:               or           s0, zero, a7
                  and          t3, zero, s4
44:               and          t2, ra, s9
                  lw           t2, 4(s5)
                  sltu         ra, s10, s4
                  xor          s4, s2, a2
                  addi         s5, s5, 12
                  srl          s6, s8, s8
                  add          s2, a2, s9
64:               addi x17, x7, 0
64:               jalr x17, x17, 0
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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  addi x21, x21, -128
                  sw  x1, 4(x21)
                  sw  x2, 8(x21)
                  sw  x3, 12(x21)
                  sw  x4, 16(x21)
                  sw  x5, 20(x21)
                  sw  x6, 24(x21)
                  sw  x7, 28(x21)
                  sw  x8, 32(x21)
                  sw  x9, 36(x21)
                  sw  x10, 40(x21)
                  sw  x11, 44(x21)
                  sw  x12, 48(x21)
                  sw  x13, 52(x21)
                  sw  x14, 56(x21)
                  sw  x15, 60(x21)
                  sw  x16, 64(x21)
                  sw  x17, 68(x21)
                  sw  x18, 72(x21)
                  sw  x19, 76(x21)
                  sw  x20, 80(x21)
                  sw  x21, 84(x21)
                  sw  x22, 88(x21)
                  sw  x23, 92(x21)
                  sw  x24, 96(x21)
                  sw  x25, 100(x21)
                  sw  x26, 104(x21)
                  sw  x27, 108(x21)
                  sw  x28, 112(x21)
                  sw  x29, 116(x21)
                  sw  x30, 120(x21)
                  sw  x31, 124(x21)
                  add x24, x21, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x13, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x13, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x13, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x13, x31, ecall_handler
                  li x31, 0x1
                  beq x13, x31, instr_fault_handler
                  li x31, 0x5
                  beq x13, x31, load_fault_handler
                  li x31, 0x7
                  beq x13, x31, store_fault_handler
                  li x31, 0xc
                  beq x13, x31, pt_fault_handler
                  li x31, 0xd
                  beq x13, x31, pt_fault_handler
                  li x31, 0xf
                  beq x13, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

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
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x21, x24, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

load_fault_handler:
                  add x21, x24, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

store_fault_handler:
                  add x21, x24, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x21, x24, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x21, x24, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x21, x24, zero
                  lw  x1, 4(x21)
                  lw  x2, 8(x21)
                  lw  x3, 12(x21)
                  lw  x4, 16(x21)
                  lw  x5, 20(x21)
                  lw  x6, 24(x21)
                  lw  x7, 28(x21)
                  lw  x8, 32(x21)
                  lw  x9, 36(x21)
                  lw  x10, 40(x21)
                  lw  x11, 44(x21)
                  lw  x12, 48(x21)
                  lw  x13, 52(x21)
                  lw  x14, 56(x21)
                  lw  x15, 60(x21)
                  lw  x16, 64(x21)
                  lw  x17, 68(x21)
                  lw  x18, 72(x21)
                  lw  x19, 76(x21)
                  lw  x20, 80(x21)
                  lw  x21, 84(x21)
                  lw  x22, 88(x21)
                  lw  x23, 92(x21)
                  lw  x24, 96(x21)
                  lw  x25, 100(x21)
                  lw  x26, 104(x21)
                  lw  x27, 108(x21)
                  lw  x28, 112(x21)
                  lw  x29, 116(x21)
                  lw  x30, 120(x21)
                  lw  x31, 124(x21)
                  addi x21, x21, 128
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
