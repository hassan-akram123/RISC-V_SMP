.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x18, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 0
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
                  li x0, 0x3
                  li x1, 0x9efcf1c7
                  li x3, 0x33cc5fed
                  li x4, 0x7b4041a5
                  li x5, 0xf26d5bb7
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0xfe439cf9
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x22906670
                  li x12, 0xf94609f1
                  li x13, 0x2
                  li x14, 0xf0e633de
                  li x15, 0x0
                  li x16, 0x2dd18699
                  li x17, 0x0
                  li x19, 0xe6acedd7
                  li x20, 0xba43030f
                  li x21, 0xa
                  li x22, 0x0
                  li x23, 0xf5bfb6bb
                  li x24, 0x0
                  li x25, 0x1
                  li x26, 0x0
                  li x27, 0x2
                  li x28, 0x80000000
                  li x29, 0xf69a9ffa
                  li x30, 0xf203474d
                  li x31, 0xc
                  la x2, user_stack_end
main:             slt          s8, a3, s3
                  and          ra, s11, a1
                  slli         s10, t6, 14
                  srai         tp, a1, 12
                  la           t6, sub_2
                  or           a3, s2, sp
                  sra          s6, s1, a7
                  addi         t6, t6, -211
                  and          a7, s8, t0
                  srli         a4, s8, 7
main_j2:          jalr         ra, t6, 212 #jump main -> sub_2
                  nop
                  lui          a4, 428309
                  andi         t6, a7, -1734
                  or           s6, a3, t0
                  sra          t6, a3, a6
                  la           t4, sub_3
                  addi         t4, t4, 845
                  addi         a2, a7, 1837
                  slt          t1, t1, s8
main_j3:          jalr         ra, t4, -845 #jump main -> sub_3
                  lui          t5, 46336
                  lui          s6, 126204
                  sltiu        s0, sp, -463
                  la           a2, sub_1
                  srai         t5, tp, 21
                  srl          t6, a6, s10
                  addi         a2, a2, -159
                  lui          s7, 694900
                  nop
                  sll          t6, s6, t1
                  blt          ra, t3, main_j4 #branch to jump instr
                  or           s5, t0, a3
                  sltu         s6, t0, t3
main_j4:          jalr         ra, a2, 160 #jump main -> sub_1
                  addi         t6, zero, 1 #init loop 0 counter
                  sltu         t1, s1, s6
                  lui          t2, 559982
                  or           t5, a5, s9
                  addi         tp, zero, 3 #init loop 0 limit
                  srai         s8, tp, 27
main_0_0_t:       add          a2, s3, a5
                  xor          s4, a1, a1
                  sltiu        s4, s10, -898
                  lui          a0, 639947
                  addi         t6, t6, 2 #update loop 0 counter
                  slti         a3, gp, -747
                  andi         s10, a1, 1734
                  add          s1, s7, a3
                  andi         t2, tp, -756
                  sub          a3, a7, t5
                  srai         t4, s11, 22
                  slti         s4, s3, -916
                  xori         s5, gp, 1229
                  or           s3, a5, gp
                  beq          t6, tp, main_0_0_t #branch for loop 0
                  addi         t2, a5, 1761
                  add          s8, s9, a0
                  blt          s3, a0, 10f
                  beq          s1, a3, 10f
                  sub          s10, t6, a3
                  srli         a7, sp, 30
                  srl          a1, t5, s2
                  sub          t3, a2, s6
                  and          a2, tp, a5
                  sra          s4, t6, a7
                  sub          t6, ra, a4
                  srli         a0, tp, 13
                  xor          s10, s5, a2
                  andi         s3, s9, 1886
                  la           ra, sub_3
                  slt          tp, t4, s6
                  addi         ra, ra, -287
                  slti         s0, a2, -304
                  sub          t2, sp, s4
main_j1:          jalr         ra, ra, 288 #jump main -> sub_3
                  and          a4, s0, s11
                  srai         a1, zero, 5
                  beq          a5, tp, 10f
                  srli         t4, s3, 2
10:               srl          a2, sp, s6
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            sll          gp, t3, sp
                  auipc        a4, 264727
                  nop
                  addi         t5, a0, 1623
                  srl          t3, s11, t4
                  slli         a6, s11, 4
                  slti         a1, a5, -1672
                  addi         sp, sp, -8
                  sw           ra, 4(sp)
                  xori         s0, s11, 1
                  and          s6, a5, a0
                  srai         s3, s10, 31
                  srli         s4, s9, 25
                  srli         s4, t6, 4
                  la           s8, sub_4
                  slt          t0, a2, s0
                  srai         t6, s3, 22
                  addi         s8, s8, 726
                  auipc        t1, 327741
                  bne          a1, s0, sub_3_j6 #branch to jump instr
                  auipc        s6, 883106
                  srai         t2, s11, 23
sub_3_j6:         jalr         ra, s8, -725 #jump sub_3 -> sub_4
                  addi         t1, zero, 7 #init loop 1 counter
                  addi         t5, zero, 20 #init loop 1 limit
sub_3_1_1_t:      or           a4, a0, t2
                  sub          a1, s4, a7
                  addi         t1, t1, 1 #update loop 1 counter
                  srl          s10, s4, a3
                  addi         a6, zero, -3 #init loop 0 counter
                  sll          a0, a2, s4
                  addi         gp, zero, 10 #init loop 0 limit
                  slt          ra, tp, gp
sub_3_1_0_t:      addi         t3, a3, 995
                  lui          zero, 204612
                  lui          s4, 1019981
                  sltiu        s8, a4, 746
                  sltiu        a4, zero, -847
                  addi         a6, a6, 2 #update loop 0 counter
                  and          t3, tp, s10
                  blt          a6, gp, sub_3_1_0_t #branch for loop 0
                  xori         s9, a3, -535
                  sra          s7, s1, sp
                  bltu         t1, t5, sub_3_1_1_t #branch for loop 1
                  slti         a4, a4, 890
                  addi         s9, zero, 9 #init loop 0 counter
                  lui          s6, 1018574
                  srli         a7, s4, 5
                  slli         t2, a5, 11
                  or           a4, tp, a4
                  sltiu        a3, s11, -229
                  add          a7, sp, t4
                  addi         s3, s3, -459
                  sll          a0, s8, s9
                  add          t4, s10, t3
                  slt          t3, t5, s3
                  and          s3, s1, s7
                  srli         t0, tp, 10
                  slti         tp, s8, 1217
                  addi         s7, zero, 7 #init loop 0 limit
                  or           s1, s7, s0
                  addi         ra, s3, -245
                  auipc        t1, 91048
                  srl          s10, s0, a1
sub_3_12_0_t:     slti         a2, a6, -730
                  xori         a4, s10, -1170
                  ori          a4, t5, -1852
                  nop
                  addi         s9, s9, -4 #update loop 0 counter
                  or           a5, t2, s5
                  xor          a6, s1, s7
                  ori          t3, t1, 846
                  auipc        ra, 546411
                  bgeu         s9, s7, sub_3_12_0_t #branch for loop 0
                  sltiu        a1, s9, -1312
                  addi         a6, zero, -7 #init loop 1 counter
                  sltu         s6, s5, s11
                  addi         ra, zero, 20 #init loop 1 limit
sub_3_14_1_t:     sltiu        t6, t5, 300
                  srl          a3, t0, s10
                  addi         a6, a6, 1 #update loop 1 counter
                  addi         t2, zero, -9 #init loop 0 counter
                  and          zero, s2, a2
                  addi         a2, zero, -12 #init loop 0 limit
                  xor          a3, s4, s7
sub_3_14_0_t:     xori         s3, s3, -946
                  addi         t2, t2, -3 #update loop 0 counter
                  bne          t2, a2, sub_3_14_0_t #branch for loop 0
                  bltu         a6, ra, sub_3_14_1_t #branch for loop 1
                  srli         t4, t6, 9
                  addi         s4, zero, 10 #init loop 0 counter
                  srl          a5, gp, s0
                  andi         s5, s4, -139
                  srai         a1, t2, 8
                  addi         s10, zero, 3 #init loop 0 limit
                  slti         t5, ra, -1064
sub_3_5_0_t:      sub          tp, a6, s8
                  slti         s5, sp, -1808
                  addi         s4, s4, -7 #update loop 0 counter
                  beq          s4, s10, sub_3_5_0_t #branch for loop 0
                  slti         s8, a6, -1569
                  addi         a4, zero, -8 #init loop 0 counter
                  addi         tp, s3, -1017
                  addi         a7, zero, 16 #init loop 0 limit
                  sltu         t1, a0, tp
sub_3_6_0_t:      slt          zero, a7, s6
                  sltu         s4, t6, s4
                  lui          t4, 398479
                  sub          s10, s10, s11
                  addi         a4, a4, 6 #update loop 0 counter
                  add          t5, a3, s7
                  xor          s3, gp, s8
                  auipc        s7, 731645
                  srli         t1, a2, 16
                  sra          a3, s7, a2
                  slti         t3, t1, 1214
                  auipc        s7, 761219
                  addi         s3, t2, 1343
                  auipc        s7, 364740
                  bne          a4, a7, sub_3_6_0_t #branch for loop 0
                  and          a5, a1, s8
                  addi         a0, zero, -10 #init loop 1 counter
                  addi         a3, zero, 20 #init loop 1 limit
                  slti         s0, t6, 1023
                  srli         t5, s7, 6
                  or           s10, t5, t2
                  and          gp, s9, a5
sub_3_8_1_t:      slt          s8, t5, s7
                  add          gp, gp, s0
                  addi         a0, a0, 5 #update loop 1 counter
                  srl          tp, a1, t3
                  addi         t2, zero, -1 #init loop 0 counter
                  addi         s6, zero, 1 #init loop 0 limit
                  srli         tp, tp, 8
                  slti         a1, a3, -1866
                  andi         ra, s11, -1118
                  xor          s1, gp, s0
sub_3_8_0_t:      addi         gp, s6, -181
                  srli         a4, a3, 2
                  addi         t2, t2, 4 #update loop 0 counter
                  add          t5, s8, a0
                  sll          t0, a0, s7
                  sltiu        gp, a1, -1433
                  sub          s7, s4, s2
                  bltu         t2, s6, sub_3_8_0_t #branch for loop 0
                  auipc        t3, 558441
                  srl          s4, tp, s6
                  andi         a7, t6, 608
                  beq          a0, a3, sub_3_8_1_t #branch for loop 1
                  srli         a2, s4, 8
                  addi         s7, zero, 2 #init loop 1 counter
                  sll          a1, ra, t4
                  sltu         a3, tp, a7
                  andi         ra, a2, 137
                  sltu         s9, s2, a3
                  addi         s0, zero, 9 #init loop 1 limit
                  srli         t2, t6, 30
sub_3_10_1_t:     addi         t6, s1, 937
                  slti         ra, zero, -31
                  srl          zero, t5, a3
                  addi         a5, a3, 348
                  and          t2, t6, s6
                  addi         s7, s7, 7 #update loop 1 counter
                  add          t0, s4, s4
                  and          t6, s3, s6
                  auipc        t4, 1029706
                  add          t1, a4, t1
                  addi         a4, zero, 10 #init loop 0 counter
                  sltiu        t0, t4, -1315
                  addi         s8, zero, 10 #init loop 0 limit
sub_3_10_0_t:     add          s5, s7, s8
                  nop
                  addi         a4, a4, -9 #update loop 0 counter
                  or           a7, s8, a1
                  slli         s10, a6, 1
                  add          zero, a0, a2
                  sra          s5, t1, t2
                  bgeu         a4, s8, sub_3_10_0_t #branch for loop 0
                  nop
                  beq          s7, s0, sub_3_10_1_t #branch for loop 1
                  or           zero, s10, tp
                  addi         s8, zero, -8 #init loop 0 counter
                  sltiu        a3, t0, -282
                  addi         s6, zero, 17 #init loop 0 limit
                  srli         a4, s6, 16
                  srli         s9, sp, 23
                  srai         a4, s11, 9
sub_3_3_0_t:      sltiu        ra, a2, -158
                  addi         s8, s8, 3 #update loop 0 counter
                  slt          t0, s10, t1
                  lui          a6, 312291
                  lui          a4, 947774
                  lui          a3, 424216
                  sub          a7, s7, s11
                  bltu         s8, s6, sub_3_3_0_t #branch for loop 0
                  auipc        t6, 234357
                  addi         s10, zero, 9 #init loop 1 counter
                  addi         tp, zero, 5 #init loop 1 limit
                  add          a4, t0, s4
sub_3_4_1_t:      slti         t4, a5, -878
                  addi         a6, sp, 1705
                  addi         s10, s10, -3 #update loop 1 counter
                  slti         a5, zero, 445
                  addi         t1, zero, -8 #init loop 0 counter
                  auipc        s4, 976606
                  addi         t6, zero, -7 #init loop 0 limit
                  sltiu        t0, s2, 1667
                  sltiu        s5, a5, 256
sub_3_4_0_t:      lui          a1, 447095
                  addi         t1, t1, 7 #update loop 0 counter
                  xori         ra, s1, -385
                  blt          t1, t6, sub_3_4_0_t #branch for loop 0
                  add          s6, s11, a7
                  lui          t0, 763378
                  bgeu         s10, tp, sub_3_4_1_t #branch for loop 1
                  add          s6, a2, t4
                  addi         t6, zero, 10 #init loop 1 counter
                  addi         s7, zero, 18 #init loop 1 limit
sub_3_2_1_t:      sltiu        a3, s10, 1506
                  addi         t6, t6, 8 #update loop 1 counter
                  xori         s9, a1, -350
                  addi         tp, zero, 8 #init loop 0 counter
                  and          a5, a3, tp
                  xori         t3, s5, 953
                  xori         t1, t2, -886
                  srai         t1, s6, 24
                  addi         a6, zero, -9 #init loop 0 limit
                  and          a2, s0, s5
                  xor          s3, t5, s5
                  srl          t1, zero, s5
                  sll          s9, s1, zero
sub_3_2_0_t:      add          s8, s5, tp
                  sra          a4, sp, gp
                  sll          t3, zero, a1
                  addi         tp, tp, -4 #update loop 0 counter
                  lui          t0, 39168
                  bge          tp, a6, sub_3_2_0_t #branch for loop 0
                  beq          t6, s7, sub_3_2_1_t #branch for loop 1
                  addi         t0, zero, -932
                  bne          s1, a1, 11f
                  srl          s3, a7, a1
                  sra          a7, a0, s4
                  auipc        t4, 896968
                  bgeu         s3, t5, 21f
                  ori          s10, zero, -1833
                  slli         t2, s4, 18
                  auipc        s4, 10769
                  xori         s6, t2, -1836
                  bgeu         t3, ra, 16f
                  srl          t1, zero, t2
11:               add          a1, a0, t1
                  add          a0, tp, s1
                  beq          zero, gp, 23f
                  blt          s10, s0, 19f
                  slli         t4, s9, 19
16:               sltiu        t1, a7, 835
                  slti         t0, t6, 14
                  blt          t0, s9, 34f
19:               lui          s10, 80504
                  sltiu        s3, s3, 758
21:               auipc        a7, 723805
                  bltu         s5, t2, 29f
23:               xor          t1, t2, s5
                  sltiu        s8, s3, 974
                  sra          ra, s1, t6
                  addi         s9, zero, 8 #init loop 0 counter
                  addi         a1, zero, 8 #init loop 0 limit
                  or           ra, t6, a2
                  slt          s1, t5, s1
sub_3_7_0_t:      sltiu        a7, s2, 200
                  addi         s9, s9, -7 #update loop 0 counter
                  sltiu        s3, ra, 1339
                  and          s6, s5, a3
                  lui          a4, 1011803
                  slt          t5, s10, s0
                  bgeu         s9, a1, sub_3_7_0_t #branch for loop 0
                  xor          s1, t4, a7
                  xori         s5, zero, -1283
                  auipc        t5, 532756
                  sltu         zero, s10, t4
29:               sltu         a1, tp, t5
                  sra          s5, s0, s4
                  or           a1, s2, t4
                  or           s7, s5, a7
                  xori         s7, s7, 772
34:               bltu         s10, s3, 36f
                  bne          t0, t0, 55f
36:               xori         s8, t5, 801
                  lui          t1, 1024412
                  and          s7, a7, t5
                  slti         s7, t5, -960
                  slli         t4, t0, 8
                  slt          s5, t5, a4
                  nop
                  blt          a4, gp, 55f
                  lui          s9, 594445
                  addi         s1, t5, -1213
                  srl          a5, s5, s9
                  auipc        s3, 422093
                  nop
                  auipc        s0, 598677
                  sltiu        s8, t4, -801
                  bne          sp, s1, 61f
                  addi         s8, sp, 1796
                  nop
                  srli         zero, t0, 19
55:               bne          a2, a7, 59f
                  xori         tp, t4, 1083
                  blt          a5, t4, 70f
                  srai         a1, s9, 7
59:               srai         s10, s11, 9
                  add          s7, t5, t4
61:               srai         s1, gp, 16
                  sll          s10, t3, s7
                  blt          a3, s0, 82f
                  add          s3, ra, a6
                  slt          t0, zero, s4
                  add          a1, t0, a7
                  xori         s3, t5, -156
                  add          s0, a0, s8
                  slt          a1, s4, s4
70:               sub          s3, s4, a3
                  sltiu        t3, a6, -1014
                  beq          s11, tp, 75f
                  ori          a7, zero, 147
                  addi         s4, s1, -253
75:               lui          tp, 362179
                  andi         a2, s11, -1206
                  auipc        s7, 262835
                  sltu         a6, s0, a3
                  sltu         a1, s3, tp
                  beq          a5, s9, 83f
                  and          a2, a2, t4
82:               bne          s8, s3, 93f
83:               ori          t6, t3, -3
                  blt          t1, s2, 100f
                  srl          t3, a0, s8
                  sra          s8, ra, t1
                  bge          s0, s2, 93f
                  bltu         s0, a1, 105f
                  blt          s3, a4, 95f
                  slti         t4, a3, -577
                  nop
                  srl          a1, a1, a0
93:               bgeu         a6, tp, 109f
                  srai         a3, gp, 22
95:               xor          t4, s5, s3
                  addi         t1, s10, -1373
                  or           a5, s6, t6
                  sll          gp, s0, t3
                  ori          s10, s11, -1742
100:              andi         t0, a6, 660
                  addi         t1, zero, 2 #init loop 0 counter
                  auipc        s10, 574135
                  addi         tp, zero, 17 #init loop 0 limit
                  slti         a7, a3, 1794
                  slli         ra, zero, 7
                  add          zero, s10, gp
                  andi         a0, t1, -1944
sub_3_15_0_t:     slt          s0, a3, t1
                  addi         t1, t1, 8 #update loop 0 counter
                  nop
                  and          s7, t0, a7
                  blt          t1, tp, sub_3_15_0_t #branch for loop 0
                  ori          t4, s4, -1438
                  sll          s9, s1, t6
                  and          a7, gp, s5
                  ori          a4, s10, -91
                  beq          s5, s5, 116f
105:              slti         s1, t3, -404
                  beq          t5, zero, 125f
                  bltu         s10, sp, 112f
                  xori         a5, a7, -349
                  addi         s1, zero, -6 #init loop 0 counter
                  auipc        s0, 495691
                  nop
                  ori          ra, t4, -1218
                  and          t4, s4, s6
                  slli         s4, s1, 24
                  xori         tp, tp, -1986
                  sub          a5, s8, a0
                  xor          gp, s0, sp
                  sltiu        s9, a7, 1574
                  add          t3, s2, s5
                  slti         zero, t6, -998
                  addi         s8, zero, 8 #init loop 0 limit
                  sltiu        gp, s2, 993
                  sltiu        t3, t5, -1827
                  or           t2, t0, s1
                  andi         t4, s9, -1485
                  andi         t0, a5, -601
sub_3_9_0_t:      add          t4, zero, s1
                  addi         s1, s1, 3 #update loop 0 counter
                  srl          s9, sp, s6
                  srli         s9, t3, 6
                  blt          s1, s8, sub_3_9_0_t #branch for loop 0
                  and          s7, a3, s7
109:              bne          a6, a4, 127f
                  sra          t1, sp, t5
                  bge          a6, a7, 124f
112:              srli         a5, a0, 12
                  sll          t2, a7, a7
                  srai         a6, sp, 29
                  addi         s0, a5, 371
116:              add          a7, t2, s9
                  sll          a4, gp, sp
                  sub          s5, t3, t6
                  blt          a5, s11, 122f
                  sra          a5, t3, t1
                  add          a5, a3, t1
122:              srai         s0, s9, 10
                  slli         a7, t0, 10
124:              nop
125:              nop
                  beq          t6, zero, 142f
127:              sltiu        s0, s10, 1858
                  ori          s10, t5, -19
                  blt          a0, s2, 149f
                  lui          t6, 314093
                  srl          t3, s9, s9
                  sltiu        s1, t6, 975
                  xor          ra, t1, s4
                  xor          s8, s7, a4
                  ori          s10, a6, -1323
                  lui          s7, 365806
                  bgeu         a7, a2, 142f
                  bltu         s11, gp, 149f
                  srai         s8, s1, 17
                  bgeu         t2, tp, 156f
                  srl          t6, zero, s9
142:              auipc        s9, 437260
                  slt          a5, tp, ra
                  bge          s7, a3, 164f
                  xori         a6, s6, 634
                  xori         t1, s7, -1926
                  bltu         t4, t1, 158f
                  auipc        t1, 802230
149:              xori         t1, s0, -1590
                  sltiu        gp, t1, 1666
                  auipc        a5, 716101
                  andi         gp, zero, 460
                  add          ra, a1, t6
                  bgeu         s10, t1, 167f
                  xori         s1, a2, 2044
156:              slti         a2, s5, -734
                  bgeu         a2, t0, 160f
158:              and          a1, t3, zero
                  sltu         s3, s2, s3
160:              sll          s4, s6, s0
                  ori          zero, ra, 446
                  auipc        tp, 65460
                  bltu         t5, s11, 173f
164:              add          a7, tp, t1
                  or           s10, s7, tp
                  andi         a4, a6, 873
167:              srli         a7, sp, 8
                  andi         t0, a3, -537
                  slti         t1, t2, 197
                  xori         ra, gp, -1620
                  slti         s3, s11, -726
                  bgeu         s10, t4, 179f
173:              auipc        s10, 1014653
                  bgeu         t6, a4, 176f
                  bne          s1, t4, 195f
176:              srl          s6, t4, a3
                  xori         s10, s7, 349
                  srl          s0, a2, a1
179:              sll          ra, a4, s2
                  or           ra, a5, gp
                  xori         gp, a5, 1044
                  sra          t5, t2, s11
                  ori          t3, a4, 1980
                  srli         t1, t1, 25
                  andi         t5, s0, 1377
                  beq          a7, t1, 192f
                  beq          t2, t4, 193f
                  beq          s11, s7, 200f
                  beq          a4, t3, 202f
                  ori          a1, s0, 1732
                  sra          s6, t5, s10
192:              beq          tp, a2, 204f
193:              srl          a1, s5, a6
                  auipc        s3, 436265
195:              srl          s6, sp, s6
                  sltu         a1, a7, a0
                  ori          s4, s7, -259
                  srai         a6, ra, 28
                  beq          s4, s2, 215f
200:              lui          s3, 540827
                  srli         s9, s0, 19
202:              bge          t6, ra, 218f
                  sub          s8, s4, sp
204:              bge          t3, a0, 221f
                  slli         a4, a3, 30
                  slt          s5, a7, a7
                  addi         t3, a6, 1323
                  sltiu        s6, t2, -1028
                  sltu         gp, t1, t6
                  lui          ra, 931173
                  slt          t6, s2, a3
                  bgeu         s6, t6, 229f
                  add          s7, a2, a1
                  slti         t4, t0, 1856
215:              addi         s3, t3, -271
                  and          zero, t4, s11
                  slt          t6, t2, sp
218:              xor          a7, s5, s10
                  sll          s10, tp, a5
                  sll          a0, t1, s0
221:              slt          a0, s10, s2
                  srl          s6, a4, a5
                  andi         t6, a3, -399
                  sll          a6, s4, s9
                  xor          t6, a6, a0
                  bge          ra, a5, 229f
                  bge          s6, a6, 246f
                  xori         a4, s9, -2047
229:              auipc        t2, 996361
                  xor          s4, s8, s1
                  slli         s9, t1, 29
                  sltiu        t0, gp, -733
                  sub          a6, s9, a1
                  sltu         t0, t4, a7
                  slti         t1, a1, 363
                  slti         a5, t1, 125
                  bne          t6, s3, 255f
                  nop
                  sltiu        s9, s1, 860
                  slti         t1, s4, -366
                  and          gp, s1, t6
                  beq          s2, s4, 261f
                  xori         a7, s11, -1192
                  bge          t6, s1, 260f
                  sltiu        zero, s4, 462
246:              bgeu         t4, s4, 251f
                  bgeu         a6, s9, 254f
                  beq          t2, a4, 251f
                  nop
                  sra          a4, s3, a7
251:              srl          s1, s11, s5
                  blt          a6, s11, 262f
                  beq          a1, s3, 257f
254:              sltiu        s7, t4, -1212
255:              slt          tp, a0, a4
                  sra          a3, a6, t5
257:              slti         s6, a7, 620
                  add          s5, s6, s7
                  beq          s4, s10, 266f
260:              blt          s9, a0, 276f
261:              bgeu         s1, t4, 272f
262:              beq          s3, ra, 272f
                  sra          t3, a5, t6
                  slli         t5, t1, 10
                  sub          s3, t2, t0
266:              nop
                  xori         a7, t1, -821
                  xori         t3, t6, 779
                  xor          t4, t5, zero
                  slt          a0, s9, gp
                  beq          a2, a6, 274f
272:              ori          s10, t4, -312
                  nop
274:              addi         gp, a1, -1335
                  xori         s8, s3, -2037
276:              xor          a0, s9, s5
                  auipc        s6, 1004965
                  sub          t2, s1, s8
                  beq          s6, a7, 297f
                  beq          s9, ra, 296f
                  blt          zero, a7, 284f
                  bgeu         t5, t2, 288f
                  slli         a2, s6, 23
284:              beq          t1, s10, 295f
                  srli         a3, s9, 4
                  addi         ra, t4, 685
                  xori         s1, s5, 1096
288:              xori         t1, t1, 68
                  ori          s8, gp, -1158
                  srl          a4, t5, a6
                  sltu         s3, s10, a2
                  sll          a5, t0, s6
                  sltu         a4, t3, tp
                  addi         s6, a2, -188
295:              xori         a7, t3, 1095
296:              slt          a0, t2, t3
297:              sltiu        a3, s0, 235
                  sltu         s3, s4, s10
                  srl          s6, tp, s2
                  nop
                  beq          s2, t1, 306f
                  srai         s3, a3, 10
                  srai         a7, ra, 6
                  add          gp, s1, t4
                  beq          s4, s6, 308f
306:              auipc        s6, 960338
                  slt          t4, t0, t5
308:              srli         a2, a4, 3
                  bgeu         s11, a4, 325f
                  lui          t1, 864704
                  beq          a6, a6, 321f
                  or           a1, s0, s4
                  addi         a2, s9, 1021
                  xor          a2, a7, s8
                  srli         t3, s2, 23
                  lui          t6, 215190
                  blt          t4, t1, 323f
                  sll          tp, s4, t5
                  add          a6, s2, tp
                  sltiu        zero, s11, -134
321:              slt          a4, s4, s10
                  sub          t5, s7, a4
323:              or           t6, s5, t3
                  slli         s9, t6, 2
325:              add          s5, sp, gp
                  sll          s6, a5, t1
                  sra          a5, a6, t5
                  ori          a0, s2, 55
                  addi         a4, t3, -1523
                  bge          t5, t3, 349f
                  sra          t6, s9, a4
                  xor          a6, s0, a3
                  sub          t2, zero, s0
                  sub          s4, a5, zero
                  andi         zero, s3, -1720
                  addi         a2, zero, 1 #init loop 1 counter
                  addi         s10, zero, 2 #init loop 1 limit
                  sra          t0, s3, s6
sub_3_13_1_t:     add          t0, s0, tp
                  andi         tp, a1, 1993
                  addi         a2, a2, 4 #update loop 1 counter
                  addi         s8, zero, 10 #init loop 0 counter
                  srl          s0, a2, a3
                  addi         t6, zero, -11 #init loop 0 limit
                  srai         t4, s11, 18
sub_3_13_0_t:     nop
                  and          s6, a7, t1
                  sltu         a4, tp, s4
                  addi         s8, s8, -7 #update loop 0 counter
                  xor          t3, zero, sp
                  beq          s8, t6, sub_3_13_0_t #branch for loop 0
                  lui          a1, 857822
                  sub          t0, a6, s8
                  and          t0, t3, a0
                  blt          a2, s10, sub_3_13_1_t #branch for loop 1
                  addi         t0, s5, -1414
                  addi         t1, s4, 1741
                  slti         a3, s9, 577
                  andi         a0, a6, 567
                  sra          s7, s4, s5
                  srl          a6, a1, s7
                  bltu         s1, t0, 354f
                  bgeu         a7, ra, 359f
                  add          tp, t3, gp
                  or           zero, a1, a1
                  addi         a6, zero, -1614
                  bltu         a2, s11, 358f
                  srl          t5, s1, a5
                  andi         t3, tp, 1767
349:              beq          t6, s5, 353f
                  andi         t4, s8, -1790
                  slti         t2, s11, 1721
                  and          t2, t4, s2
353:              srai         a6, t3, 6
354:              sltu         t2, s2, a0
                  srl          s10, a1, s0
                  sra          a0, t0, s10
                  bge          s4, s8, 359f
358:              srai         ra, s2, 15
359:              srli         s9, s10, 29
                  slli         s7, s11, 12
                  blt          t3, zero, 377f
                  addi         t2, t1, 386
                  nop
                  beq          t3, s6, 384f
                  xor          ra, a4, s8
                  sll          a2, s7, s10
                  addi         a6, s9, 68
                  sub          s0, s11, a4
                  sra          s6, t5, t2
                  bge          s3, t3, 387f
                  bgeu         t6, s11, 376f
                  sltiu        a1, t1, -337
                  sra          t2, t0, s1
                  sub          a6, a7, sp
                  lui          s6, 758965
376:              xor          a4, s9, a6
377:              sll          s3, a4, s7
                  or           t4, gp, tp
                  sra          s9, t5, tp
                  srai         a5, t5, 1
                  sltiu        a5, s6, -2
                  bgeu         gp, a3, 402f
                  or           t4, gp, s1
384:              slli         t5, s9, 8
                  sltu         s5, t6, t1
                  blt          t2, a3, 398f
387:              srai         a0, s2, 28
                  addi         zero, s0, 368
                  srli         zero, a1, 23
                  srai         s3, gp, 18
                  blt          t3, a7, 410f
                  bgeu         ra, s0, 405f
                  slli         t0, s10, 22
                  sltu         t2, a2, s5
                  bge          t6, s10, 402f
                  addi         t0, s5, -1029
                  ori          zero, t0, 424
398:              srai         s6, a1, 7
                  xori         a0, a7, -857
                  slti         s1, gp, 1209
                  beq          s10, t0, 414f
402:              and          t3, a1, gp
                  xor          a2, t4, ra
                  bge          s5, s6, 408f
405:              slt          s3, t2, s3
                  and          s6, a2, s7
                  andi         s1, s6, -913
408:              ori          s0, a7, -1319
                  nop
410:              xor          tp, a4, s2
                  bge          gp, s11, 417f
                  nop
                  sra          t1, ra, s9
414:              sltu         s1, t4, ra
                  addi         gp, a7, 1050
                  addi         s5, s11, -1911
417:              lui          gp, 492321
                  bgeu         a6, s5, 436f
                  bgeu         a0, t1, 429f
                  blt          a1, s5, 440f
                  andi         a6, s8, -611
                  addi         t6, s8, -1707
                  sra          s9, gp, s3
                  bltu         sp, a2, 427f
                  ori          a6, a7, 136
                  add          t1, a7, s11
427:              and          t6, s4, s10
                  srli         s1, gp, 19
429:              xor          s7, s2, a1
                  and          t5, zero, gp
                  auipc        a7, 206311
                  bgeu         s4, a1, 448f
                  bgeu         zero, s8, 440f
                  srli         s5, s9, 12
                  add          gp, a4, s11
436:              blt          a2, s5, 438f
                  blt          a1, t3, 444f
438:              sub          a2, t3, s4
                  sltiu        a2, a7, 1555
440:              bgeu         a2, a7, 453f
                  beq          a4, s6, 460f
                  blt          ra, s6, 461f
                  srli         s10, s4, 23
444:              srli         t6, t2, 31
                  srli         a7, zero, 18
                  addi         s3, t4, -1634
                  sra          s4, a0, s1
448:              beq          s10, ra, 464f
                  xor          a3, s0, t1
                  sltiu        tp, t3, -492
                  xor          t5, s5, gp
                  andi         a2, s2, 857
453:              sll          a3, a5, s2
                  sra          a1, s3, t5
                  slli         s4, s7, 5
                  ori          a7, t1, -343
                  sra          t1, s8, tp
                  and          a1, zero, s0
                  bltu         a1, t4, 462f
460:              slt          t6, s8, s8
461:              beq          a4, s9, 481f
462:              blt          s4, a7, 474f
                  lui          a5, 327895
464:              blt          a2, s10, 480f
                  add          a0, a5, s3
                  srli         t2, s3, 7
                  srli         s0, a3, 27
                  srli         a4, ra, 3
                  xori         ra, t6, 92
                  blt          s0, s8, 487f
                  nop
                  sra          t0, gp, s3
                  sltiu        a6, a5, 1632
474:              blt          s8, zero, 486f
                  add          ra, a2, a7
                  lui          s3, 384820
                  xori         s9, s0, 1683
                  lui          t5, 552049
                  bltu         ra, t5, 495f
480:              xori         a7, s11, -609
481:              bge          a5, a4, 491f
                  slt          s0, sp, a6
                  sra          s5, t0, s10
                  nop
                  sltu         zero, a7, a6
486:              sub          t3, s9, a3
487:              bltu         s2, zero, 498f
                  ori          t1, t3, -1197
                  sll          t6, s10, s9
                  beq          s1, s6, 496f
491:              sltiu        t0, s0, 1138
                  slli         a7, t3, 22
                  slt          a6, a4, s3
                  beq          a2, t2, 499f
495:              lui          s7, 479475
496:              slti         s1, s0, -1355
                  ori          a5, s7, 1510
498:              lui          s10, 496989
499:              sll          s0, s9, s8
                  blt          a5, t2, 505f
                  srli         s9, a7, 31
                  bne          t6, a6, 513f
                  add          s5, a3, t6
                  slt          t3, s6, s9
505:              beq          s3, s10, 508f
                  sll          s0, s3, s10
                  srai         s3, a5, 17
508:              add          a0, a4, t0
                  srl          ra, a3, tp
                  and          t4, gp, t3
                  srl          t6, s0, t6
                  bge          sp, a7, 529f
513:              and          s5, a3, gp
                  xori         a3, t3, -1044
                  sub          s5, s11, s10
                  slti         s5, t0, -1331
                  sub          a4, s5, t1
                  srli         a7, s7, 30
                  sltiu        ra, t0, -426
                  sra          t1, sp, s0
                  srl          a5, a2, s1
                  slt          a0, t0, s0
                  xori         s0, a5, -858
                  sra          a6, s4, t5
                  slti         s1, a1, -1192
                  srli         s3, s9, 22
                  xori         a2, s3, -731
                  nop
529:              sltiu        a2, t1, -916
                  and          a6, a7, a1
                  ori          s1, s11, -1382
                  bgeu         s4, s9, 538f
                  sltiu        tp, s3, -79
                  bltu         t3, s6, 546f
                  ori          t2, a0, 1927
                  nop
                  add          s7, s8, s2
538:              slti         a1, s5, -1792
                  srai         tp, s9, 19
                  slli         s10, s8, 17
                  add          a3, a4, s2
                  sltiu        a5, t3, 1231
                  lui          s5, 226237
                  srl          s4, a1, s2
                  nop
546:              sltu         tp, sp, a5
                  srl          a5, t1, s5
                  srl          ra, t6, zero
                  or           s3, tp, a7
                  sltu         a2, t0, a4
                  sub          t1, s8, zero
                  bne          zero, a6, 562f
                  andi         t4, sp, -262
                  lui          a6, 168454
                  or           s1, s10, t2
                  srai         a0, gp, 1
                  sra          s0, s11, s8
                  sltu         t6, a0, s11
                  srai         t2, a3, 24
                  andi         s8, s1, 2019
                  sltu         a3, sp, t0
562:              sltu         s1, t5, t5
                  or           a4, s5, ra
                  sltu         a7, t1, s0
                  ori          t0, s10, -1350
                  sra          t6, zero, tp
                  blt          a4, sp, 586f
                  xori         a6, t3, -480
                  sra          a6, a3, s1
                  slti         s10, sp, 1232
                  auipc        s0, 965039
                  beq          t2, s8, 585f
                  sll          s9, a4, a5
                  sll          zero, s10, s8
                  bne          s1, s10, 585f
                  slti         t2, s5, -893
                  blt          t3, s4, 590f
                  sra          a4, t5, tp
                  bge          a3, a7, 599f
                  bne          a5, s1, 583f
                  srl          a4, t3, s8
                  addi         s8, t0, 1752
583:              ori          s6, t1, 1102
                  nop
585:              bge          tp, a5, 592f
586:              sub          s9, t6, s11
                  srl          ra, a4, t0
                  bgeu         s7, a7, 590f
                  beq          s7, s8, 605f
590:              xor          t1, s1, s4
                  sra          t6, s2, t2
592:              and          t0, a3, a5
                  sltu         a0, a5, a7
                  bne          a7, gp, 613f
                  sltiu        a5, s2, 2029
                  sra          a1, s9, t4
                  add          s10, t2, sp
                  or           t6, s9, sp
599:              sll          a3, gp, zero
                  sll          ra, s2, a6
                  bge          t6, t0, 604f
                  slt          a6, a3, s6
                  beq          a1, t5, 608f
604:              slti         s5, s11, -1161
605:              nop
                  and          t0, s3, t5
                  beq          t0, s10, 611f
608:              slt          gp, t6, tp
                  blt          zero, t5, 615f
                  nop
611:              bltu         t4, sp, 628f
                  srl          a2, t1, t5
613:              sub          a4, t5, t5
                  bge          s2, a2, 621f
615:              bltu         s7, s0, 626f
                  slli         s6, s0, 29
                  add          s10, zero, t2
                  bge          s6, s6, 630f
                  beq          tp, a5, 635f
                  slti         a7, s9, 382
621:              srai         s10, a2, 1
                  nop
                  sltiu        t0, tp, 1969
                  xori         ra, s1, -503
                  bgeu         gp, t4, 642f
626:              srli         s7, t1, 6
                  auipc        t0, 11151
628:              sltu         s9, s1, a2
                  srai         s9, t3, 8
630:              sra          s6, s8, zero
                  and          s5, a1, s1
                  slti         t2, a1, -535
                  addi         s6, s3, 1830
                  add          a0, s7, t5
635:              sltiu        t0, s11, -294
                  bne          s10, a5, 652f
                  slli         t6, s9, 24
                  nop
                  xor          t2, t5, s2
                  sra          t4, tp, s2
                  sra          s3, s3, s2
642:              blt          s4, s10, 658f
                  xor          a3, a4, s9
                  add          t0, t0, a6
                  slti         s4, s7, -1998
                  slt          s7, a4, a4
                  bgeu         s6, sp, 650f
                  nop
                  auipc        t4, 754399
650:              xori         s0, a0, 72
                  addi         t6, zero, 10 #init loop 0 counter
                  or           s0, s8, s9
                  slti         a2, s3, 208
                  sll          a2, s7, s4
                  addi         gp, zero, 10 #init loop 0 limit
                  slli         s3, s8, 9
                  srai         a7, a3, 21
                  or           a2, s5, a5
                  or           a5, s9, t0
                  sltiu        a3, s1, 1845
                  slli         a2, t1, 26
                  srai         t5, s5, 1
sub_3_11_0_t:     or           ra, s6, s6
                  sll          s4, a7, a0
                  addi         t6, t6, -9 #update loop 0 counter
                  slli         a6, s5, 6
                  and          t2, t0, a4
                  sltiu        t3, t6, 1777
                  sll          s9, a0, a6
                  bgeu         t6, gp, sub_3_11_0_t #branch for loop 0
                  add          a7, tp, t4
                  srai         a7, zero, 14
652:              andi         t1, a5, -367
                  bgeu         a5, s4, 673f
                  srli         a5, s10, 6
                  beq          t6, s10, 673f
                  add          a5, t3, s6
                  xori         s8, s10, -1045
658:              srli         s6, s4, 27
                  slti         s3, s3, 1204
                  sltu         t2, s10, a6
                  or           a3, t5, a2
                  lui          zero, 141160
                  addi         zero, s3, -1115
                  beq          s3, s2, 675f
                  sltu         a6, t4, gp
                  addi         t6, ra, -803
                  sltiu        s9, a0, 1628
                  sra          s1, s2, t6
                  blt          s0, s7, 674f
                  slti         s3, a1, -1487
                  bne          s9, t3, 674f
                  addi         a7, a7, 194
673:              sltiu        t0, t2, -1395
674:              ori          t0, gp, 340
675:              add          s5, s0, t0
                  or           t2, a6, s0
                  srai         s1, t3, 12
                  xor          a0, tp, s0
                  sltiu        t3, a7, 553
                  sltu         t1, a2, t6
                  add          tp, s10, a3
                  slti         a6, t5, -994
                  add          s8, s5, s6
                  bge          ra, s1, 694f
                  addi         t0, s2, 1693
                  sub          t3, tp, s2
                  slt          s8, t6, t6
                  and          t2, t2, a2
                  blt          s11, s0, 707f
                  slt          tp, s2, t4
                  lui          t1, 246115
                  sll          t5, s11, s11
                  sltiu        ra, s7, -1478
694:              slt          t6, s4, tp
                  sltiu        a3, zero, 1488
                  slti         a4, s8, 268
                  auipc        t1, 188711
                  addi         t3, s11, -1277
                  lui          s8, 226275
                  srli         s9, a5, 29
                  slt          t3, s4, a5
                  srl          s6, a4, t3
                  sub          s4, a0, t3
                  bne          t6, a6, 721f
                  srai         t5, a4, 10
                  sub          t5, t0, tp
707:              xor          a1, t2, t4
                  sra          s5, s8, a4
                  slli         a1, a5, 28
                  nop
                  srl          t1, t0, t3
                  xori         t2, t1, 1053
                  xori         t2, t4, 162
                  ori          t6, t2, 1482
                  bltu         s2, s8, 727f
                  bne          a7, s7, 733f
                  srai         t0, t1, 28
                  add          t0, t2, a7
                  srli         s9, s1, 14
                  sra          a6, s10, s0
721:              beq          sp, t3, 731f
                  srl          t5, t3, gp
                  auipc        t2, 434892
                  sltiu        tp, s10, -1826
                  beq          t3, sp, 731f
                  sra          zero, a2, s8
727:              slti         s1, t0, 1238
                  ori          t5, a3, -2006
                  sra          s1, s11, a5
                  slti         ra, s5, 981
731:              xori         s0, t4, -1668
                  addi         s0, zero, -1 #init loop 0 counter
                  addi         t6, zero, -9 #init loop 0 limit
                  sra          s10, tp, tp
                  auipc        s9, 753625
                  sll          t5, s1, a0
                  slt          s3, a4, s5
sub_3_0_0_t:      xori         s1, s9, 1444
                  addi         s0, s0, -1 #update loop 0 counter
                  bge          s0, t6, sub_3_0_0_t #branch for loop 0
                  srl          s9, ra, s3
                  slt          s9, t4, a6
733:              auipc        zero, 544096
                  slli         t2, t4, 18
                  srl          a7, a7, s6
                  auipc        s3, 308025
                  bltu         a0, a4, 740f
                  bltu         a3, a5, 758f
                  blt          s11, s2, 755f
740:              ori          s5, s7, -1206
                  ori          s9, t4, 1111
                  sra          t4, s0, a1
                  srai         s1, s10, 23
                  auipc        s10, 971727
                  add          s8, a7, a1
                  slt          tp, t6, t4
                  andi         t0, s3, -60
                  sub          s5, t0, a7
                  srl          s1, a5, a0
                  blt          ra, a4, 769f
                  srli         s8, t2, 10
                  srli         ra, s2, 17
                  add          gp, s1, ra
                  addi         t4, a3, -822
755:              beq          s2, a3, 766f
                  srl          a0, a3, a7
                  xori         s5, s9, -1407
758:              bge          a1, s0, 764f
                  bge          s2, s1, 775f
                  bltu         sp, t2, 772f
                  sltiu        a2, zero, -1048
                  bgeu         s10, s4, 769f
                  ori          gp, t0, 1568
764:              srli         a4, s4, 22
                  and          a4, t4, ra
766:              slti         s3, a6, 1006
                  srli         s0, s5, 11
                  srli         tp, gp, 10
769:              srai         s9, t6, 12
                  sra          t6, t6, a6
                  sltiu        ra, s10, -542
772:              sll          zero, t2, t2
                  bge          s4, s11, 789f
                  lui          t6, 315489
775:              ori          s1, t3, -1276
                  slti         s6, s10, 250
                  slli         s6, t6, 26
                  sltiu        a3, t1, -566
                  auipc        t3, 896503
                  blt          t0, tp, 793f
                  add          a4, s8, s10
                  sll          t2, t3, gp
                  slli         t0, s9, 7
                  blt          s0, a4, 797f
                  srai         s7, a6, 17
                  sll          s3, t5, ra
                  add          a4, s8, a3
                  sltiu        t5, tp, 260
789:              sltiu        s10, a4, 132
                  sll          a0, a5, s11
                  sra          s5, t5, s10
                  sll          s0, a3, s6
793:              sll          t3, a6, ra
                  beq          s9, a0, 798f
                  srl          ra, s5, a0
                  and          s10, a6, a4
797:              srai         s6, a1, 28
798:              slt          a3, gp, t1
                  nop
                  andi         t5, zero, -2019
                  andi         zero, a4, -857
                  lw           ra, 4(sp)
                  srai         t2, s11, 1
                  addi         sp, sp, 8
                  srli         a2, t0, 13
                  sltiu        zero, a0, -1947
1147:             addi x31, x1, 0
1147:             jalr x31, x31, 0
sub_2:            lui          a3, 246620
                  bge          t3, s0, sub_2_stack_p
sub_2_stack_p:    addi         sp, sp, -48
                  lui          a6, 821100
                  sw           ra, 4(sp)
                  srai         s9, s9, 27
                  addi         a0, zero, 8 #init loop 0 counter
                  or           t1, t1, a3
                  ori          t3, a2, 1437
                  xori         a5, a7, -403
                  srli         s10, sp, 31
                  add          s6, ra, s11
                  addi         ra, zero, 12 #init loop 0 limit
                  addi         s4, t2, -1652
                  xori         zero, t2, -1352
sub_2_1_0_t:      xori         t0, t3, 518
                  addi         a0, a0, 6 #update loop 0 counter
                  srl          s8, s11, s10
                  andi         a2, t4, -702
                  bltu         a0, ra, sub_2_1_0_t #branch for loop 0
                  and          s7, s0, s0
                  addi         s8, zero, 4 #init loop 0 counter
                  addi         a6, zero, -17 #init loop 0 limit
sub_2_0_0_t:      xor          t5, s6, gp
                  addi         s8, s8, -10 #update loop 0 counter
                  bge          s8, a6, sub_2_0_0_t #branch for loop 0
                  srai         t2, a4, 31
                  bgeu         t6, s2, 15f
                  lui          s9, 911916
                  sra          t3, t3, s3
                  bltu         s11, t3, 9f
                  srl          a2, sp, s7
                  srl          a0, t6, s1
                  bgeu         s1, t2, 24f
                  srli         a6, tp, 9
                  bltu         s11, s11, 18f
9:                slti         s0, s1, -1721
                  sra          a1, t3, t4
                  sltu         t1, a3, s5
                  srai         t2, a3, 9
                  xor          t1, s6, a5
                  slt          s4, s2, a6
15:               xori         gp, s6, -652
                  nop
                  bltu         gp, a2, 34f
18:               slt          a4, t4, a4
                  xori         a0, t6, 880
                  add          s5, a1, t2
                  sub          s6, t3, s8
                  bge          a0, a4, 41f
                  sll          s3, s9, t1
24:               sub          s8, s10, a1
                  xor          a4, s10, t2
                  sltu         zero, a0, s5
                  beq          s7, s0, 28f
28:               sra          a4, s3, a5
                  bne          t6, a4, 48f
                  nop
                  ori          t6, t5, -150
                  and          tp, s7, s9
                  bne          s3, tp, 52f
34:               blt          t2, t6, 46f
                  xor          a7, s3, t3
                  sra          tp, s9, a5
                  sra          t1, a4, s0
                  slli         a7, t1, 20
                  lui          s6, 526979
                  bge          s8, s10, 56f
41:               and          t4, s0, t6
                  andi         s10, ra, -1826
                  bge          t4, zero, 46f
                  addi         a5, t4, 1070
                  auipc        s3, 1027630
46:               nop
                  srl          gp, t3, t5
48:               auipc        a0, 4958
                  bne          s2, a4, 54f
                  srli         s10, a4, 1
                  andi         s1, t3, 1949
52:               add          tp, a0, s10
                  srai         t6, t1, 5
54:               ori          gp, zero, 1442
                  xor          tp, t5, a3
56:               srli         zero, t3, 16
                  sra          t4, a1, s9
                  bltu         s0, s9, 78f
                  xori         a7, t5, -862
                  sll          a5, tp, s1
                  nop
                  beq          t3, t0, 75f
                  bltu         s8, t1, 79f
                  and          a7, a4, sp
                  sltiu        s7, t0, 1969
                  xor          a2, t2, a5
                  lui          t0, 949942
                  bltu         t4, a6, 87f
                  sub          s10, a0, t6
                  bgeu         s6, t4, 77f
                  bgeu         s5, s9, 80f
                  sub          tp, t5, s4
                  slt          s4, s8, t0
                  or           t2, s8, t0
75:               slt          t5, s11, s0
                  nop
77:               slli         gp, s2, 24
78:               bne          t4, s8, 84f
79:               or           t3, a1, t0
80:               sll          a3, t1, a6
                  or           s9, s10, s4
                  xor          a3, tp, a5
                  nop
84:               auipc        a3, 59256
                  auipc        t1, 424884
                  xori         s10, s5, -1034
87:               and          s0, t4, a5
                  xor          t3, a4, s4
                  sra          s0, a1, s1
                  addi         t5, s0, -517
                  xori         gp, t4, -1211
                  bgeu         sp, a4, 107f
                  bge          t4, s8, 99f
                  sll          a3, s2, a5
                  la           t5, sub_5
                  or           s0, t6, s7
                  xor          zero, a5, a2
                  slt          s3, ra, t1
                  xor          s8, sp, s11
                  addi         t5, t5, -630
                  or           s3, a0, zero
                  bgeu         t4, sp, sub_2_j5 #branch to jump instr
                  srai         s7, s2, 18
sub_2_j5:         jalr         ra, t5, 631 #jump sub_2 -> sub_5
                  nop
                  beq          zero, t1, 103f
                  ori          s5, a6, -1771
                  sub          a3, t2, s6
                  blt          s11, s4, 99f
99:               lui          t4, 248852
                  lui          t4, 896686
                  bltu         sp, s8, 108f
                  and          a5, s2, s11
103:              srli         s10, sp, 20
                  sra          a7, s9, sp
                  slt          a1, t3, s10
                  srl          t3, s9, a2
107:              beq          zero, s8, 123f
108:              addi         s6, s2, -986
                  bne          s2, s7, 120f
                  sra          s4, a5, t3
                  bne          s5, a4, 116f
                  sltu         s6, s7, a3
                  bltu         zero, a6, 117f
                  srli         s7, s0, 16
                  sub          t4, t5, t1
116:              slli         a2, tp, 31
117:              slli         s9, t0, 30
                  xori         a2, a6, -931
                  sub          t5, s0, ra
120:              ori          zero, ra, -1171
                  or           s10, zero, a6
                  ori          t4, t0, -1883
123:              sub          a2, zero, s1
                  slt          s9, a0, ra
                  sll          a1, a6, a4
                  bltu         s1, s8, 132f
                  or           t1, a7, ra
                  addi         t5, a5, -1743
                  xori         a5, a1, -1531
                  bge          a7, s2, 132f
                  auipc        s1, 771488
132:              add          s1, gp, tp
                  sltu         a1, s11, s7
                  srli         t0, s10, 31
                  lw           ra, 4(sp)
                  sltu         a3, s5, t4
                  xori         a7, s4, 1103
                  slli         t1, a1, 7
                  addi         sp, sp, 48
                  addi         a5, ra, 1281
                  sub          t0, s2, sp
180:              addi x13, x1, 1
180:              jalr x13, x13, 0
sub_5:            auipc        t4, 627916
                  sltu         s8, a0, t3
                  addi         sp, sp, -40
                  slli         t3, t2, 29
                  or           s7, t3, t0
                  sw           ra, 4(sp)
                  srai         t6, s11, 24
                  slli         t5, sp, 27
                  lui          t1, 768650
                  xori         s3, a5, -520
                  addi         a6, zero, -9 #init loop 0 counter
                  sltu         tp, a6, gp
                  addi         t0, zero, 1 #init loop 0 limit
                  xori         s7, a0, -1902
                  srai         a5, a1, 6
                  srli         tp, t4, 19
sub_5_1_0_t:      xor          s8, s0, zero
                  addi         a6, a6, 3 #update loop 0 counter
                  xori         t1, s10, -900
                  ori          s6, t5, -588
                  blt          a6, t0, sub_5_1_0_t #branch for loop 0
                  slti         t1, t1, -323
                  and          s8, a3, t2
                  slti         a1, s5, -970
                  srl          s4, s7, s2
                  sltu         a1, a4, s4
                  slli         a0, t0, 5
                  nop
                  add          a1, s2, s2
                  and          t6, s9, t5
                  srli         s4, s5, 31
                  slti         t0, s4, 622
                  bgeu         s7, s4, 30f
                  bgeu         a4, a5, 27f
                  sra          a4, s9, t3
                  slli         gp, a0, 26
                  sltiu        s8, t2, -1284
                  srl          a5, s4, s7
                  and          ra, zero, t3
                  sra          t3, s11, s5
                  add          s5, t3, s4
                  slt          a7, t3, a4
                  slti         s6, a6, 2026
                  srai         t3, sp, 26
                  ori          tp, s5, -271
                  blt          s1, s5, 39f
                  addi         t2, zero, 7 #init loop 0 counter
                  xor          s4, gp, a3
                  addi         a5, zero, 10 #init loop 0 limit
                  sub          s6, t4, t6
                  sub          a0, t5, a0
                  andi         a0, t4, -1346
sub_5_0_0_t:      addi         t4, a4, 1982
                  slti         t3, s6, 1052
                  or           t6, s5, s10
                  sltiu        a1, s7, 1145
                  srai         s0, gp, 31
                  andi         s5, s11, -281
                  addi         t2, t2, 5 #update loop 0 counter
                  nop
                  add          s0, s11, tp
                  sltiu        s0, a5, -992
                  sub          ra, a6, t5
                  sub          t4, zero, s0
                  and          s6, a0, gp
                  and          a6, s4, s9
                  auipc        a6, 689243
                  sll          t3, a7, a4
                  sll          s7, t3, a3
                  blt          t2, a5, sub_5_0_0_t #branch for loop 0
                  or           a7, a4, t1
                  and          s6, a5, t4
                  srli         s4, s2, 31
                  add          t3, t2, s2
27:               xor          t3, tp, a6
                  andi         t0, t1, 1530
                  and          gp, s5, a6
30:               auipc        ra, 5470
                  sll          s0, s2, t4
                  andi         a7, s9, -700
                  srli         s9, a5, 0
                  srl          a3, a5, s7
                  sub          a6, a2, a1
                  bne          a5, a4, 45f
                  sub          a3, a5, sp
                  bgeu         s8, tp, 57f
39:               sll          t6, a0, a3
                  nop
                  sltu         ra, a3, a7
                  ori          s1, s6, 1463
                  srli         t1, a6, 4
                  xori         s1, gp, -134
45:               sll          ra, a6, t5
                  slli         a2, t2, 30
                  srl          s6, t0, sp
                  srai         gp, a3, 9
                  srai         t1, t1, 2
                  sra          s10, sp, sp
                  bgeu         s7, s8, 56f
                  bgeu         t5, zero, 54f
                  lui          s3, 781830
54:               bltu         t6, a3, 64f
                  slt          a3, s5, t0
56:               bgeu         s1, s5, 75f
57:               add          s6, s9, t6
                  slt          ra, tp, a3
                  lui          a4, 807644
                  srli         t6, a0, 26
                  ori          a0, t0, -1830
                  beq          zero, t0, 76f
                  lui          zero, 836241
64:               bltu         a5, a3, 75f
                  nop
                  blt          a4, a2, 68f
                  addi         a5, a4, 1334
68:               beq          a0, s2, 81f
                  srai         gp, s11, 7
                  sll          s5, s7, s10
                  nop
                  bne          gp, t5, 89f
                  sll          s1, s6, t2
                  srl          t3, ra, t6
75:               bltu         s5, t3, 84f
76:               srl          s9, a1, t2
                  beq          a1, t0, 79f
                  bge          s0, gp, 96f
79:               bltu         s10, s8, 96f
                  sra          a5, a2, zero
81:               and          s7, s5, t0
                  slt          tp, s9, s4
                  ori          tp, zero, 389
84:               nop
                  sra          a5, s3, zero
                  add          t3, a7, s10
                  sll          t3, s3, s8
                  xor          s10, a0, t3
89:               bgeu         a4, tp, 100f
                  slli         a5, s5, 25
                  slt          a1, t4, t3
                  and          a7, a6, s9
                  sltiu        t6, s4, 2047
                  sra          a2, t6, sp
                  bne          t4, s7, 99f
96:               sub          s10, s7, sp
                  srli         s6, s7, 18
                  nop
99:               sltiu        s1, s7, 1320
100:              or           s4, t5, gp
                  lw           ra, 4(sp)
                  xori         a6, a5, 190
                  addi         sp, sp, 40
                  slt          s7, t2, t6
                  sltu         a0, t6, ra
                  and          s10, a4, t3
                  srai         t3, s0, 14
                  srli         s5, gp, 9
                  slt          zero, tp, s0
                  slti         a2, a6, -120
158:              addi x26, x1, 1
158:              jalr x26, x26, 0
sub_1:            bne          a7, tp, sub_1_stack_p
                  slli         t1, tp, 17
                  ori          a5, tp, 1259
                  auipc        a0, 186303
sub_1_stack_p:    addi         sp, sp, -28
                  auipc        a7, 552695
                  sw           ra, 4(sp)
                  slt          s6, a1, a0
                  addi         a7, zero, -4 #init loop 1 counter
                  sub          t0, a2, zero
                  srai         ra, a2, 2
                  lui          s4, 16872
                  slli         a4, s10, 10
                  srai         s5, t6, 14
                  addi         t2, zero, 0 #init loop 1 limit
sub_1_2_1_t:      ori          gp, s11, 499
                  nop
                  addi         a7, a7, 4 #update loop 1 counter
                  slti         a2, t2, -836
                  addi         t4, zero, 10 #init loop 0 counter
                  addi         t5, zero, 8 #init loop 0 limit
                  andi         a4, s4, -1256
                  lui          zero, 343577
                  slt          s6, a3, a4
sub_1_2_0_t:      sub          t6, zero, t0
                  ori          gp, t2, 1425
                  sub          a0, s7, s6
                  slt          t3, a1, a5
                  or           s10, t4, a0
                  addi         t4, t4, -5 #update loop 0 counter
                  sltiu        s0, s8, -1357
                  nop
                  bgeu         t4, t5, sub_1_2_0_t #branch for loop 0
                  slti         gp, s3, 1956
                  lui          t1, 1002691
                  ori          t3, t1, -160
                  srl          ra, s10, t6
                  sltiu        a4, s7, 1427
                  bne          a7, t2, sub_1_2_1_t #branch for loop 1
                  and          s1, a7, a1
                  addi         s9, zero, 7 #init loop 0 counter
                  add          s8, s1, tp
                  xori         t0, s0, -130
                  sltiu        gp, a6, -1215
                  or           s4, s0, s7
                  sub          tp, t0, a5
                  addi         s7, zero, -11 #init loop 0 limit
                  nop
                  nop
                  xor          t5, a0, ra
sub_1_0_0_t:      addi         t1, sp, 91
                  addi         gp, tp, 628
                  addi         s9, s9, -2 #update loop 0 counter
                  sra          a6, s0, s1
                  sltiu        tp, t2, 1295
                  sra          s0, s2, s11
                  sub          t3, gp, t1
                  slt          a2, a2, s3
                  srli         zero, t5, 31
                  srli         ra, a4, 12
                  add          s4, ra, a3
                  beq          s9, s7, sub_1_0_0_t #branch for loop 0
                  auipc        a2, 816975
                  addi         t3, zero, -9 #init loop 1 counter
                  addi         s5, zero, 12 #init loop 1 limit
sub_1_6_1_t:      and          t0, a5, s1
                  add          t2, a0, t1
                  addi         t3, t3, 6 #update loop 1 counter
                  addi         t6, zero, -10 #init loop 0 counter
                  addi         a3, zero, -16 #init loop 0 limit
                  srai         t4, zero, 11
sub_1_6_0_t:      and          s4, a1, s0
                  addi         t6, t6, -8 #update loop 0 counter
                  or           s6, t0, a6
                  bge          t6, a3, sub_1_6_0_t #branch for loop 0
                  blt          t3, s5, sub_1_6_1_t #branch for loop 1
                  sll          t2, a3, t4
                  addi         t0, zero, -1 #init loop 0 counter
                  nop
                  add          s6, a1, ra
                  sll          a5, a4, s0
                  xori         a7, t6, -1649
                  andi         a6, s10, 981
                  srai         a4, s6, 31
                  slti         t1, t0, -1138
                  slti         s7, a2, 1985
                  sll          gp, s11, t6
                  auipc        s4, 722798
                  slt          s4, ra, s5
                  or           a4, s8, t2
                  sll          t3, a5, t2
                  xor          s1, s7, s4
                  slti         s9, a6, 342
                  addi         tp, zero, 1 #init loop 0 limit
                  slti         ra, ra, -1715
sub_1_9_0_t:      lui          a4, 115401
                  slt          s5, tp, sp
                  addi         t0, t0, 1 #update loop 0 counter
                  sltiu        t6, s5, 649
                  add          gp, a2, s6
                  slt          s5, a6, t6
                  sltu         ra, s6, a0
                  srl          t1, a0, s4
                  bne          t0, tp, sub_1_9_0_t #branch for loop 0
                  addi         s5, ra, 114
                  addi         s1, zero, 7 #init loop 1 counter
                  and          t3, t6, s8
                  xori         s6, s5, 340
                  nop
                  or           a1, t0, zero
                  nop
                  addi         s5, zero, 9 #init loop 1 limit
sub_1_5_1_t:      and          a6, zero, a2
                  slli         a7, a1, 10
                  addi         s1, s1, 5 #update loop 1 counter
                  addi         s9, zero, 5 #init loop 0 counter
                  ori          a7, ra, 1712
                  xor          s3, a2, a2
                  add          s10, a2, sp
                  sltu         a6, tp, a1
                  addi         a0, a6, 2040
                  addi         gp, zero, -3 #init loop 0 limit
                  sra          s7, t3, ra
sub_1_5_0_t:      slt          a5, s5, s10
                  addi         s9, s9, -4 #update loop 0 counter
                  slt          a1, s0, ra
                  lui          t3, 323610
                  beq          s9, gp, sub_1_5_0_t #branch for loop 0
                  sub          s10, a6, t2
                  srai         a1, a3, 5
                  nop
                  bltu         s1, s5, sub_1_5_1_t #branch for loop 1
                  sltu         t4, a0, a2
                  addi         s4, zero, -2 #init loop 0 counter
                  addi         a2, zero, 1303
                  nop
                  xori         t4, zero, 1459
                  slli         s5, t5, 15
                  auipc        t5, 102968
                  addi         a0, zero, 19 #init loop 0 limit
                  andi         a6, gp, 477
                  sltu         s10, a4, a1
                  xor          a7, t4, s4
sub_1_11_0_t:     sltiu        s8, a0, -659
                  nop
                  sltu         a6, t0, a2
                  addi         a7, s4, -174
                  addi         s4, s4, 3 #update loop 0 counter
                  sub          tp, s10, s1
                  sltu         gp, t5, s1
                  sub          s3, s6, t3
                  blt          s4, a0, sub_1_11_0_t #branch for loop 0
                  sll          a1, gp, a2
                  addi         s7, zero, 1 #init loop 1 counter
                  addi         a5, zero, 11 #init loop 1 limit
                  sltiu        t0, a0, -633
sub_1_4_1_t:      lui          s10, 217775
                  andi         zero, a5, 262
                  addi         s8, a2, 532
                  addi         s7, s7, 3 #update loop 1 counter
                  addi         a2, zero, 1 #init loop 0 counter
                  addi         t3, zero, -11 #init loop 0 limit
                  nop
sub_1_4_0_t:      auipc        a1, 131303
                  addi         a2, a2, -6 #update loop 0 counter
                  bne          a2, t3, sub_1_4_0_t #branch for loop 0
                  srai         zero, t6, 0
                  sll          s3, a1, t4
                  bltu         s7, a5, sub_1_4_1_t #branch for loop 1
                  xori         zero, t0, -177
                  addi         s10, zero, -6 #init loop 1 counter
                  and          t4, zero, ra
                  ori          a4, s1, 1721
                  addi         t2, zero, 14 #init loop 1 limit
                  xori         a0, s2, 1899
sub_1_3_1_t:      sltiu        t1, s8, -286
                  lui          a6, 63758
                  addi         s10, s10, 10 #update loop 1 counter
                  srli         s6, s6, 19
                  or           zero, zero, s11
                  addi         s3, s6, 1984
                  addi         a5, zero, 8 #init loop 0 counter
                  xor          t3, tp, t3
                  srai         a4, sp, 24
                  addi         tp, zero, 8 #init loop 0 limit
sub_1_3_0_t:      slt          a1, a1, s10
                  srli         t5, s8, 3
                  addi         a5, a5, -5 #update loop 0 counter
                  sll          s7, s7, zero
                  slt          a0, gp, a3
                  bgeu         a5, tp, sub_1_3_0_t #branch for loop 0
                  slt          s1, t4, s10
                  sra          a1, tp, s0
                  and          s8, gp, sp
                  sub          gp, s4, s2
                  sltu         zero, a1, tp
                  beq          s10, t2, sub_1_3_1_t #branch for loop 1
                  or           a7, t6, t5
                  addi         t2, zero, 4 #init loop 1 counter
                  auipc        a3, 83823
                  ori          a5, t2, -1897
                  addi         tp, zero, -14 #init loop 1 limit
                  srli         s9, a4, 27
sub_1_7_1_t:      nop
                  srai         t5, s1, 6
                  addi         t2, t2, -3 #update loop 1 counter
                  srai         s3, s10, 11
                  addi         gp, zero, 3 #init loop 0 counter
                  slti         t5, s4, 1609
                  addi         a1, zero, -15 #init loop 0 limit
sub_1_7_0_t:      andi         t1, t2, -501
                  andi         a2, s6, 182
                  srli         t6, tp, 23
                  nop
                  addi         gp, gp, -3 #update loop 0 counter
                  bne          gp, a1, sub_1_7_0_t #branch for loop 0
                  sra          s10, t0, sp
                  bne          t2, tp, sub_1_7_1_t #branch for loop 1
                  xor          a5, s2, s5
                  lui          s8, 487256
                  nop
                  slti         t5, s2, 745
                  and          zero, gp, a6
                  auipc        s8, 723427
                  ori          a0, s9, -1992
                  sra          t3, s10, s6
                  andi         a7, a5, 181
                  addi         t4, a4, -447
                  blt          t2, sp, 19f
                  slti         s1, t0, 765
                  andi         s3, a1, 832
                  auipc        t4, 423475
                  slti         s9, s8, -17
                  and          a2, t4, t6
                  sub          a5, t0, t0
                  bgeu         ra, s5, 32f
                  srl          t5, a0, a0
                  beq          a7, t3, 38f
19:               addi         s4, t5, -51
                  srli         gp, a5, 27
                  xori         a4, a0, -1046
                  blt          gp, s8, 37f
                  srl          a1, zero, t0
                  sra          s3, s9, s1
                  beq          a6, s3, 32f
                  lui          a4, 923782
                  sltu         a2, t3, s6
                  slli         s3, a6, 2
                  sltu         t3, sp, t6
                  xori         t6, s4, -34
                  sra          a2, gp, zero
32:               sltiu        t3, t0, 1355
                  ori          s9, s1, 460
                  bne          tp, a5, 41f
                  xor          t3, t4, a3
                  srli         t0, a4, 3
37:               srai         a0, s4, 21
38:               slti         s3, t1, 1273
                  bltu         zero, tp, 46f
                  srl          a1, s4, a4
41:               add          t4, s5, a7
                  lui          s6, 329923
                  slti         s10, zero, -1775
                  sltu         a0, t2, t2
                  beq          a1, s10, 50f
46:               slti         gp, gp, 1654
                  xori         t5, s7, 1189
                  bne          t0, s7, 52f
                  sltu         a3, zero, s1
50:               auipc        a6, 285418
                  bgeu         a5, ra, 57f
52:               sra          a5, gp, a2
                  nop
                  beq          s0, t0, 63f
                  sltiu        zero, a2, -1131
                  srai         a4, a7, 6
57:               blt          s1, tp, 73f
                  slt          a4, gp, a5
                  srl          zero, s2, s1
                  srli         t5, a0, 18
                  sub          t3, a4, t6
                  bgeu         s10, t0, 70f
63:               or           t5, a1, t1
                  addi         s5, zero, 2 #init loop 1 counter
                  addi         t2, s9, -237
                  addi         t6, zero, 10 #init loop 1 limit
sub_1_8_1_t:      slti         a2, zero, -460
                  srli         ra, t0, 29
                  srli         t5, t4, 31
                  addi         s5, s5, 4 #update loop 1 counter
                  addi         s6, zero, -5 #init loop 0 counter
                  addi         a7, zero, 10 #init loop 0 limit
                  sll          s4, t0, a6
sub_1_8_0_t:      or           a5, s0, s9
                  srl          t1, a7, s5
                  slt          zero, s6, t1
                  sub          zero, s11, zero
                  addi         s6, s6, 7 #update loop 0 counter
                  srl          tp, a0, gp
                  bltu         s6, a7, sub_1_8_0_t #branch for loop 0
                  nop
                  beq          s5, t6, sub_1_8_1_t #branch for loop 1
                  or           t3, s0, s8
                  auipc        a0, 96183
                  auipc        t5, 322709
                  sltiu        zero, s3, -635
                  srai         ra, ra, 31
                  andi         t4, t3, 1159
                  bltu         a4, a1, 81f
70:               xori         a6, t0, 493
                  blt          t3, s3, 74f
                  blt          s10, zero, 74f
73:               sub          t4, s8, a2
74:               slt          tp, s7, a0
                  add          t0, sp, t6
                  lui          s6, 690460
                  bge          s11, t2, 90f
                  bne          s4, s8, 88f
                  and          s6, a6, s3
                  ori          t0, a4, -16
81:               xor          t5, a0, s5
                  sltiu        tp, zero, -2044
                  sll          t6, s9, a5
                  slti         s10, a0, -655
                  beq          s0, s5, 97f
                  beq          sp, s9, 99f
                  nop
88:               slti         a6, s11, -1973
                  add          s1, t6, tp
90:               nop
                  blt          ra, gp, 110f
                  sra          s8, a1, t4
                  sltiu        t1, tp, -933
                  sra          t1, s5, s9
                  srli         s1, s1, 14
                  srai         tp, s1, 6
97:               auipc        a1, 837123
                  and          a6, s7, tp
99:               auipc        s1, 673636
                  auipc        gp, 386680
                  xor          zero, s2, a7
                  and          t0, gp, a6
                  slti         a4, s5, -1983
                  auipc        s4, 873070
                  or           t4, s4, gp
                  slti         s4, s2, -1455
                  sub          zero, ra, sp
                  ori          t3, a4, 1468
                  slli         s10, ra, 26
110:              or           s9, s3, s10
                  auipc        gp, 373452
                  srl          a1, s10, t4
                  lui          tp, 1014578
                  srai         t6, s3, 11
                  slt          t6, zero, t3
                  xor          s7, a7, a5
                  add          s1, zero, s9
                  sub          a2, a5, t3
                  addi         s4, zero, 9 #init loop 0 counter
                  srli         a7, s10, 25
                  addi         t5, zero, 8 #init loop 0 limit
                  add          a4, s2, t4
sub_1_1_0_t:      sltiu        s1, a7, -827
                  sltiu        s8, s0, 1525
                  lui          t1, 840547
                  addi         s4, s4, -7 #update loop 0 counter
                  bgeu         s4, t5, sub_1_1_0_t #branch for loop 0
                  sub          t4, t3, a4
                  sra          t3, s10, a1
                  srl          t1, s5, s8
                  slli         t1, s6, 27
                  sub          a7, t1, s3
                  add          s10, s8, s1
                  or           a1, a0, zero
                  sra          t3, s8, gp
                  addi         s5, a3, -1626
                  blt          a5, t1, 139f
                  sltiu        s5, ra, -994
                  srli         gp, s2, 31
                  srai         s4, s8, 5
                  nop
                  andi         s1, s11, 1126
                  slli         s6, a5, 1
                  xori         a6, ra, -65
                  slti         t2, a1, -1724
                  sltu         t5, t2, s6
                  sra          t2, t3, t0
                  srl          a3, s10, a6
139:              sltu         t1, s7, a1
                  xori         t3, zero, -62
                  ori          t1, s2, 1986
                  srli         t1, t4, 28
                  or           s4, zero, a0
                  slt          a0, t1, zero
                  andi         s9, t0, 849
                  andi         s1, s7, -376
                  slt          s1, t3, s6
                  xori         s8, s4, -1834
                  blt          s0, a5, 157f
                  lui          t4, 49218
                  nop
                  and          zero, a1, s6
                  sub          s0, t2, s6
                  bltu         s2, t4, 163f
                  srl          s3, t5, a2
                  slli         a7, s8, 23
157:              lui          ra, 743349
                  slli         s3, sp, 18
                  add          t6, sp, ra
                  sll          s6, a5, ra
                  srai         s5, s4, 23
                  add          t4, ra, s3
163:              nop
                  bne          a1, s8, 168f
                  beq          s11, t6, 172f
                  srli         a7, sp, 5
                  blt          tp, a7, 183f
168:              auipc        a0, 584172
                  srai         tp, t3, 24
                  bltu         t5, a2, 171f
171:              bltu         t1, a3, 181f
172:              slli         t5, t6, 0
                  blt          t2, s3, 189f
                  auipc        gp, 661805
                  addi         ra, s0, -281
                  sltiu        t1, sp, 1293
                  addi         gp, s11, 714
                  srli         a4, s3, 26
                  xori         a6, s1, 1203
                  ori          s1, s4, -1869
181:              bltu         t2, t0, 200f
                  lui          s1, 893271
183:              addi         a3, s1, -2032
                  auipc        s7, 409446
                  or           a2, a5, t3
                  bgeu         t4, s9, 192f
                  ori          s1, s7, 1945
                  bgeu         s9, s3, 195f
189:              or           a4, s6, a0
                  sll          t3, t0, s6
                  and          s1, t4, s6
192:              sll          gp, sp, a7
                  auipc        a4, 938039
                  sub          t4, t6, ra
195:              nop
                  srai         a0, s3, 28
                  beq          t2, s3, 217f
                  sltu         zero, t2, tp
                  beq          sp, ra, 200f
200:              slti         s5, t4, 683
                  nop
                  andi         a7, s0, 613
                  beq          s0, ra, 210f
                  srli         a4, s7, 30
                  add          s10, tp, a6
                  srl          s9, s7, t5
                  xor          gp, s6, s2
                  addi         a0, s0, -1518
                  bge          s5, s2, 222f
210:              xor          s9, s10, t6
                  slli         a0, s2, 20
                  sub          s7, t4, sp
                  and          s9, a0, t5
                  srl          t4, s1, t6
                  xor          a0, t6, a0
                  addi         a4, s4, -743
217:              or           a2, t1, a2
                  add          s8, s4, s11
                  add          t6, a7, t6
                  nop
                  bltu         a0, s5, 237f
222:              srai         s9, sp, 5
                  slli         t2, a3, 1
                  srai         t4, s9, 29
                  bne          gp, t5, 237f
                  sll          s4, s9, s10
                  srli         s5, s4, 20
                  srli         a7, ra, 14
                  slti         s6, s6, -311
                  sub          a4, s8, s4
                  sub          s8, s4, tp
                  slli         t5, s7, 12
                  sra          t1, t2, a3
                  srl          a1, zero, t4
                  slli         a7, a2, 22
                  slli         s5, a3, 20
237:              lui          t0, 35096
                  sltiu        ra, t2, -5
                  slli         t2, a5, 2
                  andi         t3, t0, 484
                  nop
                  srl          a4, a3, s2
                  bge          a7, s1, 251f
                  bge          tp, t4, 252f
                  andi         t2, s8, -1267
                  ori          s1, t2, 873
                  add          s8, sp, a0
                  slt          t5, a4, tp
                  and          t5, a4, a6
                  srli         s9, ra, 3
251:              addi         a2, s7, -1817
252:              slti         ra, t4, 1721
                  beq          s3, t1, 257f
                  bgeu         s6, t1, 270f
                  blt          s5, a2, 264f
                  auipc        a3, 365988
257:              bne          t4, a7, 267f
                  add          t0, ra, a2
                  srl          a7, t4, s11
                  or           s8, t1, a4
                  sltu         s1, t3, t5
                  add          t5, s5, sp
                  bne          a6, s8, 270f
264:              slt          t2, t1, tp
                  sltiu        a1, a2, -1130
                  or           s0, s3, t3
267:              slti         t2, s9, 1573
                  ori          zero, a2, 1269
                  xori         tp, s1, 1505
270:              slt          s0, a0, a3
                  xori         s10, a5, 1676
                  srl          s4, s4, s1
                  bgeu         a3, s8, 282f
                  sra          t2, a6, t1
                  sltu         a4, gp, a5
                  sltu         a2, gp, t3
                  sll          tp, s10, a0
                  nop
                  sll          a7, t4, zero
                  sra          a6, t2, t6
                  slti         t6, t3, -1836
282:              ori          s3, t3, -1680
                  add          t5, t2, sp
                  blt          t6, s5, 288f
                  ori          t2, s3, 29
                  bge          t4, sp, 298f
                  andi         s7, a7, 1416
288:              bne          s10, s6, 300f
                  addi         s7, a2, 1650
                  sll          t2, sp, zero
                  bgeu         s10, sp, 307f
                  sra          t1, a2, s10
                  auipc        s5, 612844
                  lui          a6, 976754
                  bltu         sp, a3, 297f
                  sltiu        s8, tp, -1864
297:              srai         t4, s0, 10
298:              xori         gp, t3, 328
                  slti         s7, t0, 1398
300:              beq          s7, s2, 316f
                  srli         t3, a7, 9
                  sltu         a2, t3, sp
                  srai         a0, s3, 25
                  srai         ra, t3, 16
                  srl          t0, s6, tp
                  and          s0, s0, s7
307:              sll          tp, s1, ra
                  beq          a3, gp, 313f
                  slt          s6, a0, zero
                  andi         a2, a1, 1150
                  add          a2, s8, s3
                  bgeu         t4, a4, 322f
313:              sub          a6, t6, s9
                  and          t4, gp, a1
                  nop
316:              srli         a7, s3, 30
                  sll          gp, a5, gp
                  sll          t4, t1, t6
                  bgeu         t2, a4, 334f
                  ori          t6, a7, -1606
                  andi         zero, s8, -363
322:              xori         t4, a0, 1315
                  xor          a7, s7, s1
                  nop
                  srl          zero, t2, a0
                  add          t3, s6, a6
                  slt          t1, a5, t4
                  bge          s7, s5, 331f
                  nop
                  sub          s3, s11, a2
331:              sltu         s5, ra, tp
                  and          a3, s6, s3
                  or           ra, sp, s1
334:              auipc        s7, 585942
                  srli         s0, s1, 6
                  slt          a4, t5, ra
                  srl          s6, t1, s9
                  bltu         s5, s6, 351f
                  srai         a5, t6, 19
                  bge          gp, t5, 347f
                  bltu         s7, a0, 351f
                  sub          a0, a6, tp
                  xori         s9, t3, -388
                  addi         t5, a0, 1529
                  beq          a5, t3, 361f
                  xori         s1, s6, 629
347:              srl          s6, t2, s8
                  bgeu         s3, a1, 352f
                  bge          s5, a6, 362f
                  sll          a2, s3, zero
351:              slti         t0, a5, 1486
352:              blt          gp, a3, 355f
                  sltiu        s0, s11, -1218
                  xori         s10, ra, 465
355:              bltu         s7, s11, 363f
                  srl          s10, s3, s1
                  srli         a6, s3, 25
                  sltiu        s6, t5, -538
                  slt          s6, s0, a4
                  srl          t4, t3, a1
                  addi         a5, zero, 10 #init loop 1 counter
                  addi         a3, zero, -19 #init loop 1 limit
                  ori          s6, t5, 1546
                  sub          zero, a6, s7
sub_1_10_1_t:     nop
                  slt          a2, s4, s2
                  srli         s6, s1, 10
                  addi         a5, a5, -1 #update loop 1 counter
                  addi         s5, a7, 741
                  xor          s4, s4, s10
                  addi         s9, zero, -4 #init loop 0 counter
                  addi         s3, zero, 20 #init loop 0 limit
                  nop
sub_1_10_0_t:     andi         s6, s10, 1878
                  sll          a1, a3, t4
                  addi         s9, s9, 8 #update loop 0 counter
                  or           s8, t3, t0
                  srai         s4, a0, 19
                  lui          t5, 340588
                  slt          a6, a2, t4
                  and          t4, a3, s11
                  add          t3, s7, s3
                  or           a4, a2, s4
                  sltiu        s1, s0, 608
                  slt          a7, s0, s11
                  srl          t2, t4, a3
                  sll          t5, s1, zero
                  beq          s9, s3, sub_1_10_0_t #branch for loop 0
                  slti         s8, a2, 454
                  bge          a5, a3, sub_1_10_1_t #branch for loop 1
                  xori         s0, t4, -1966
361:              srai         s9, zero, 1
362:              lui          s4, 555658
363:              bgeu         s7, t2, 365f
                  ori          s1, a7, 757
365:              addi         s9, s9, -492
                  xor          a3, ra, t5
                  auipc        s0, 564021
                  slli         s4, t6, 31
                  addi         s5, s4, 1695
                  and          t4, a7, t5
                  slti         a0, t4, 1888
                  sltu         a4, tp, a3
                  srai         a3, t0, 4
                  sltiu        t4, t5, 1543
                  lui          a3, 1027352
                  and          t5, t5, s4
                  slli         t3, s11, 24
                  beq          t2, ra, 379f
379:              bge          t6, t5, 391f
                  lui          a2, 924908
                  xori         s7, s4, -1651
                  sub          s8, a1, s0
                  slt          t1, s6, t0
                  auipc        s5, 1003848
                  sub          a7, t6, ra
                  bge          s11, s4, 392f
                  slli         a4, t0, 16
                  blt          gp, a6, 404f
                  xor          s5, t0, a4
                  bge          zero, s9, 398f
391:              bgeu         s3, a5, 401f
392:              blt          s4, s7, 404f
                  slti         tp, t5, 1828
                  xori         t5, t2, 1235
                  sra          s7, a6, a7
                  slt          a5, s2, s5
                  addi         s9, s8, -529
398:              bltu         t0, s10, 411f
                  nop
                  slt          a6, t3, s3
401:              sltiu        a7, t3, 159
                  and          s8, t5, tp
                  nop
404:              slt          s7, t6, s10
                  addi         s7, a6, 83
                  sra          s4, tp, t2
                  and          tp, t6, a0
                  sra          gp, s6, s7
                  beq          t1, ra, 428f
                  andi         t3, s11, -1184
411:              slli         a3, a1, 14
                  srai         s1, t3, 29
                  auipc        s10, 791134
                  sra          ra, a2, sp
                  xor          s4, s2, a7
                  sra          t1, s5, t1
                  sub          ra, tp, t4
                  sltiu        a6, a0, 1362
                  addi         t6, s10, -1509
                  srli         s1, a3, 21
                  sll          t6, a5, t2
                  bgeu         t0, a5, 442f
                  or           s6, a5, s11
                  bge          a1, a4, 436f
                  ori          a2, t4, -1409
                  slt          a5, a0, t2
                  andi         t5, ra, 722
428:              auipc        s1, 206899
                  srli         ra, sp, 7
                  slli         t6, s11, 12
                  or           a5, s3, t2
                  sltiu        s5, s10, 643
                  sra          s10, t3, a6
                  nop
                  sltiu        s8, a3, 1830
436:              lui          s6, 957081
                  slti         gp, s2, 1619
                  srai         a6, s7, 20
                  sltu         a1, sp, t0
                  addi         ra, s3, -318
                  bge          s4, t3, 448f
442:              xori         tp, a5, -1604
                  slli         gp, s7, 29
                  xor          s1, t5, s1
                  srli         s4, a4, 7
                  add          tp, a2, t3
                  sltiu        t2, s9, -1576
448:              sub          s1, tp, s2
                  srai         a2, t4, 19
                  beq          a2, sp, 457f
                  slli         s7, s10, 29
                  xor          s5, s3, s4
                  slti         t5, a5, 888
                  sll          t3, tp, a7
                  lui          t6, 965951
                  srli         a1, s10, 21
457:              sra          s10, t0, a6
                  xor          gp, t1, zero
                  bltu         sp, sp, 463f
                  bge          s3, s4, 469f
                  blt          a4, t5, 466f
                  addi         s7, t1, 1004
463:              xori         a0, t5, -926
                  or           s5, a7, a4
                  and          s10, s6, s3
466:              sltiu        t0, t1, -1370
                  bne          s2, a2, 477f
                  auipc        s7, 799997
469:              ori          a2, gp, -876
                  bge          a0, s7, 477f
                  or           zero, s8, a1
                  sub          a6, s1, a3
                  xori         a7, s5, -941
                  sll          s8, s4, t3
                  xori         a4, s4, -1709
                  add          gp, t1, a7
477:              addi         s6, a7, -1378
                  xori         s9, a1, 338
                  srai         a6, s5, 22
                  srai         s4, a5, 11
                  slti         a0, a0, 125
                  addi         a4, tp, -1868
                  bgeu         t3, s0, 499f
                  sra          t5, t2, t0
                  srl          t4, s11, a1
                  beq          s9, a2, 495f
                  xori         s3, a6, -967
                  sltu         t1, s7, s9
                  blt          s4, a4, 496f
                  sll          t4, t3, t0
                  ori          a4, t0, 1567
                  bne          a1, s5, 508f
                  srai         s9, t2, 19
                  slli         s8, gp, 26
495:              bge          a7, s2, 510f
496:              sub          t4, a2, s3
                  srai         s4, a0, 12
                  addi         a6, t2, 1373
499:              bge          t4, a3, 509f
                  and          s10, s8, t5
                  bge          s11, zero, 506f
                  sub          a1, s5, a0
                  or           s7, a5, s4
                  slt          a7, a0, s11
                  lui          a4, 739731
506:              beq          zero, a6, 525f
                  or           s0, s5, sp
508:              bge          s6, a5, 516f
509:              bgeu         s7, a3, 516f
510:              xor          gp, sp, s5
                  sltu         s6, t3, zero
                  sub          s5, t6, t2
                  and          a5, t0, tp
                  addi         s4, a1, 491
                  sltiu        t6, s9, 116
516:              srli         s5, s5, 15
                  blt          a6, t0, 525f
                  ori          ra, t3, -1837
                  slt          t2, gp, t1
                  slti         t3, s7, 19
                  slli         s5, t3, 3
                  auipc        ra, 649576
                  slt          t6, t3, t1
                  ori          a3, s5, -2016
525:              bge          s0, t1, 541f
                  srli         s8, a3, 20
                  or           a2, t6, s3
                  xori         a4, s2, -506
                  addi         a7, sp, -757
                  sltu         a6, a2, s8
                  nop
                  sltu         s4, tp, a7
                  xori         a3, t0, -1213
                  bne          sp, a2, 544f
                  bgeu         s0, t5, 537f
                  blt          s2, zero, 551f
537:              xor          tp, a3, t1
                  slt          s8, sp, t6
                  sub          a0, a2, a1
                  srl          a7, t4, t4
541:              nop
                  auipc        t0, 408169
                  sra          s1, t0, s5
544:              bgeu         s6, a2, 548f
                  bltu         tp, s8, 557f
                  sub          s5, a5, a2
                  slli         a4, a5, 16
548:              bgeu         a2, s9, 560f
                  auipc        s6, 177819
                  sltiu        a7, a7, 806
551:              xori         a1, s5, -666
                  srli         a6, sp, 12
                  beq          s8, a5, 566f
                  sll          a4, s10, t4
                  sll          t4, t2, t3
                  xori         a7, s1, 834
557:              addi         s3, a7, -1071
                  auipc        zero, 841256
                  bne          a0, t5, 575f
560:              srli         a2, s9, 22
                  bgeu         s6, t3, 571f
                  srai         tp, s3, 20
                  sub          tp, s4, t0
                  slt          s3, gp, a7
                  sub          t0, s11, ra
566:              bgeu         a6, s4, 573f
                  or           s7, s0, t3
                  sltu         t1, a7, zero
                  slli         zero, a2, 4
                  bne          zero, s4, 576f
571:              srli         t0, gp, 15
                  bge          t1, a5, 584f
573:              lui          s5, 684071
                  xori         t5, a6, 981
575:              sub          t4, s7, s3
576:              lui          s7, 401774
                  addi         t3, sp, 1165
                  sra          t0, s10, a0
                  xori         a6, s11, 495
                  srli         gp, a1, 2
                  bge          t5, a1, 585f
                  and          t1, s11, t2
                  auipc        gp, 43996
584:              beq          s4, ra, 591f
585:              slti         t0, s8, 473
                  slt          t5, gp, s3
                  sltu         s7, tp, s10
                  sltu         s7, t3, s2
                  add          t2, tp, ra
                  sub          ra, tp, t4
591:              srli         s8, s0, 22
                  bgeu         s1, a3, 612f
                  or           ra, s7, a2
                  sub          s6, t5, s7
                  or           tp, s10, t1
                  slti         s0, s3, -1037
                  lui          a0, 798181
                  bne          s2, a0, 614f
                  bne          t0, s8, 608f
                  slt          a6, t5, s1
                  andi         s9, t1, 634
                  ori          a2, a7, 1811
                  ori          t2, s9, 130
                  slti         a6, s8, -1201
                  auipc        t6, 142215
                  sra          a1, s7, s8
                  srai         t0, a1, 18
608:              nop
                  add          s10, s0, t5
                  andi         gp, zero, -1705
                  nop
612:              bne          t3, s0, 625f
                  ori          a7, t0, 407
614:              srl          s3, s0, ra
                  nop
                  slti         a0, sp, 1858
                  slti         ra, t6, 1464
                  sub          t1, s1, a7
                  add          a1, a2, s11
                  and          t6, s10, s6
                  andi         s0, a3, 86
                  bltu         t5, t2, 631f
                  sltiu        tp, a5, 479
                  ori          a7, t2, 1608
625:              sub          s7, s11, a1
                  bgeu         s6, a7, 629f
                  auipc        s10, 695528
                  sltu         a4, a2, s9
629:              sll          a2, s6, s5
                  add          s1, s10, a4
631:              sub          a3, a6, a4
                  nop
                  bltu         zero, a3, 644f
                  srai         t6, s8, 18
                  sra          t5, s7, t1
                  xori         s5, a0, 617
                  xor          a1, a7, a4
                  slt          t5, gp, s0
                  bltu         a7, a5, 644f
                  sub          a5, a0, s4
                  slti         s0, tp, -1704
                  auipc        zero, 44056
                  blt          a7, s1, 644f
644:              slti         s5, s5, 1111
                  addi         gp, a4, 463
                  ori          a3, s0, 1970
                  lw           ra, 4(sp)
                  auipc        t2, 354695
                  and          t1, s1, a4
                  addi         sp, sp, 28
                  slli         zero, s9, 19
                  srli         a7, tp, 7
                  andi         s9, s9, 1505
934:              addi x12, x1, 0
934:              jalr x12, x12, 0
sub_4:            srl          t0, a5, s5
                  bltu         a3, t3, sub_4_stack_p
                  slli         a6, ra, 27
sub_4_stack_p:    addi         sp, sp, -8
                  slt          s7, s5, t6
                  slli         t2, s11, 28
                  addi         s10, tp, -1472
                  sw           ra, 4(sp)
                  sra          t2, t6, s10
                  add          s1, a6, t4
                  lui          s9, 194581
                  addi         a7, zero, -9 #init loop 0 counter
                  and          s9, a7, a6
                  auipc        t4, 649155
                  xori         a0, s0, 503
                  sub          t3, a0, zero
                  addi         a6, zero, 9 #init loop 0 limit
                  or           a0, a4, s11
                  srl          s4, a7, s5
sub_4_1_0_t:      sub          a3, s0, s11
                  andi         a1, t6, -1195
                  sub          s4, tp, a0
                  addi         a7, a7, 8 #update loop 0 counter
                  andi         a5, s1, -1806
                  lui          t0, 553433
                  lui          ra, 926770
                  xori         s8, a6, 1981
                  srl          a4, t4, a5
                  sub          s7, s5, tp
                  or           t1, a6, t2
                  ori          ra, t6, 1806
                  sub          s0, s4, s0
                  sub          a3, s2, t0
                  slti         t4, s8, -855
                  andi         t6, t2, 1374
                  auipc        s9, 317605
                  srli         s10, a1, 21
                  xor          gp, s0, gp
                  blt          a7, a6, sub_4_1_0_t #branch for loop 0
                  lui          s1, 399131
                  addi         a4, zero, -1 #init loop 1 counter
                  andi         a6, tp, -1023
                  addi         gp, zero, 11 #init loop 1 limit
sub_4_0_1_t:      slti         t5, s7, 270
                  addi         a4, a4, 1 #update loop 1 counter
                  andi         s7, t3, 2046
                  addi         t1, zero, 3 #init loop 0 counter
                  addi         a0, zero, -12 #init loop 0 limit
sub_4_0_0_t:      slti         t4, tp, 494
                  addi         t1, t1, -5 #update loop 0 counter
                  lui          a7, 945067
                  beq          t1, a0, sub_4_0_0_t #branch for loop 0
                  bltu         a4, gp, sub_4_0_1_t #branch for loop 1
                  sub          t3, s3, s7
                  addi         gp, zero, -3 #init loop 0 counter
                  lui          t2, 471356
                  slli         s3, a1, 3
                  addi         s8, zero, 17 #init loop 0 limit
                  xori         s5, a1, -1800
                  sub          zero, s2, zero
                  ori          s5, t3, -1719
                  slt          a0, s11, t4
                  lui          a6, 924618
sub_4_3_0_t:      add          s0, tp, a1
                  ori          a3, s9, -826
                  srai         t5, s7, 28
                  auipc        ra, 285124
                  or           tp, s3, t2
                  srai         s10, s4, 4
                  auipc        s4, 905624
                  slti         s4, a6, 1003
                  sll          s1, a6, a6
                  sltiu        ra, s11, -717
                  addi         gp, gp, 2 #update loop 0 counter
                  beq          gp, s8, sub_4_3_0_t #branch for loop 0
                  slli         s5, s6, 8
                  sra          t6, t1, sp
                  blt          a1, s5, 6f
                  ori          t3, s10, 1314
                  sll          s3, a7, s7
                  bltu         s7, sp, 12f
                  nop
6:                srl          a5, s4, t2
                  lui          tp, 357008
                  lui          s9, 92249
                  sll          t3, s8, tp
                  or           gp, s11, s2
                  ori          t0, gp, -255
12:               sll          a6, gp, s1
                  beq          gp, t0, 33f
                  slti         s7, t3, 1367
                  slti         t2, a4, 1030
                  auipc        s4, 910160
                  srl          a1, a7, tp
                  bge          s0, a3, 37f
                  xori         a0, a0, -495
                  srai         t2, sp, 7
                  srai         t2, gp, 28
                  srai         s9, s4, 23
                  bltu         s7, s0, 33f
                  auipc        t6, 1007332
                  bge          s6, tp, 34f
                  slli         tp, a5, 12
                  sra          s7, s1, s6
                  blt          zero, s9, 30f
                  nop
30:               sltiu        t6, a2, -1355
                  nop
                  sub          t1, a4, s5
33:               and          gp, s4, s10
34:               and          t5, s10, a2
                  slti         a5, s7, 2024
                  add          a1, s5, s8
37:               srli         a7, s4, 11
                  srli         a3, s6, 7
                  srai         s8, zero, 14
                  addi         t6, s6, 423
                  sltu         ra, s6, a6
                  xori         zero, s9, 598
                  sltiu        a5, t4, 413
                  slt          s9, sp, s7
                  bne          t6, a7, 62f
                  sub          zero, s0, s9
                  andi         s5, t5, 568
                  srli         t3, a1, 27
                  srl          s1, s4, t2
                  sra          t2, s10, t2
                  sltu         t3, zero, a6
                  slt          s5, s7, gp
                  andi         s10, t0, 494
                  blt          t5, s9, 66f
                  sltu         s4, s3, a6
                  sltu         a3, tp, t6
                  xori         a2, t0, 948
                  slli         t1, a1, 2
                  slt          zero, t4, s3
                  ori          a4, a0, -714
                  add          a1, s2, t2
62:               slt          a1, s0, s11
                  beq          t5, sp, 76f
                  srli         tp, a6, 17
                  bltu         s11, s11, 80f
66:               add          t6, t5, s0
                  addi         zero, s7, -1972
                  add          s3, t1, s3
                  bgeu         t2, s1, 77f
                  slti         a3, s8, -505
                  sltiu        t4, t1, 1571
                  slt          a7, a3, t0
                  slti         a7, a6, 1123
                  sra          s10, sp, a5
                  auipc        ra, 495162
76:               xori         a3, s5, -1902
77:               auipc        a0, 344476
                  bgeu         s5, sp, 91f
                  blt          t6, a1, 90f
80:               slli         t5, a0, 18
                  bltu         a4, a5, 91f
                  and          zero, t5, t0
                  auipc        a4, 284550
                  srl          a2, s0, s3
                  and          a2, s6, a3
                  xor          a7, gp, s3
                  lui          t6, 129453
                  sltiu        a5, a1, 1541
                  sub          t6, s2, t3
90:               srli         a0, s1, 10
91:               srli         a1, a1, 31
                  sub          t1, s10, a5
                  ori          s8, t0, 1422
                  nop
                  addi         s5, a4, -1521
                  sltu         t4, s1, a1
                  srli         a4, s8, 13
                  sll          a2, a3, t2
                  ori          s5, s8, 216
                  sltu         t0, sp, s8
                  slti         a7, t1, -1098
                  bgeu         s6, s1, 114f
                  xor          zero, a0, t2
                  sltu         a3, s2, s5
                  xori         a3, a7, 1645
                  sra          t0, a2, t2
                  bgeu         s9, s9, 119f
                  addi         s3, zero, 7 #init loop 0 counter
                  and          zero, s9, t4
                  addi         t6, zero, 18 #init loop 0 limit
sub_4_4_0_t:      xor          t5, t1, s0
                  addi         s3, s3, 7 #update loop 0 counter
                  bltu         s3, t6, sub_4_4_0_t #branch for loop 0
                  srl          tp, a1, gp
                  bge          s9, t4, 128f
                  auipc        zero, 478302
                  xori         s4, a7, 1624
                  xori         t4, tp, -1559
                  srai         t5, s8, 18
                  bgeu         s2, s4, 119f
114:              sltu         a0, t3, a4
                  beq          s9, a7, 124f
                  slti         gp, s7, 887
                  bltu         t3, s2, 134f
                  xor          a4, a0, ra
119:              add          a1, gp, s5
                  xor          t1, s10, s1
                  slti         s0, t3, -1889
                  slti         s0, s11, 1363
                  sltiu        a6, s8, 1656
124:              sltiu        s7, s2, 1562
                  lui          ra, 438168
                  srli         t2, t4, 17
                  bgeu         t4, s8, 129f
128:              bne          s0, s8, 129f
129:              or           a5, s9, t4
                  slti         tp, gp, 695
                  beq          s0, s11, 144f
                  andi         s4, t2, 1967
                  sub          gp, s9, s4
                  addi         a7, zero, 2 #init loop 0 counter
                  sltu         a2, zero, a6
                  xor          ra, t3, ra
                  sra          t3, t4, a3
                  addi         s8, zero, 14 #init loop 0 limit
                  lui          s1, 825545
                  and          s9, t1, s6
                  slti         s6, t0, 1449
sub_4_5_0_t:      lui          a2, 237676
                  addi         a7, a7, 7 #update loop 0 counter
                  sll          s0, s8, a4
                  srai         a4, t0, 26
                  or           a1, t5, s11
                  xori         t4, s8, -908
                  bltu         a7, s8, sub_4_5_0_t #branch for loop 0
                  xor          t0, sp, sp
                  addi         a0, zero, -3 #init loop 1 counter
                  addi         s3, zero, -19 #init loop 1 limit
                  slli         s5, s4, 9
sub_4_2_1_t:      sltu         s9, sp, s3
                  xori         a4, t5, 1510
                  nop
                  slti         s9, s1, -667
                  addi         a0, a0, -6 #update loop 1 counter
                  sll          s9, s11, s6
                  addi         t3, zero, -3 #init loop 0 counter
                  addi         s0, zero, 0 #init loop 0 limit
                  add          a2, zero, zero
                  sll          s1, sp, t5
sub_4_2_0_t:      slt          gp, t4, ra
                  addi         t3, t3, 7 #update loop 0 counter
                  blt          t3, s0, sub_4_2_0_t #branch for loop 0
                  xori         s8, s11, 1470
                  sub          zero, a1, s9
                  sub          zero, s1, s6
                  sltiu        s9, a4, -309
                  or           s1, t1, tp
                  bge          a0, s3, sub_4_2_1_t #branch for loop 1
                  sll          t6, tp, s11
134:              sra          t3, a1, t4
                  blt          a4, tp, 139f
                  bltu         a2, sp, 147f
                  add          ra, s3, a4
                  sra          s1, a2, t2
139:              srli         s10, a1, 12
                  bge          a7, s11, 149f
                  sltu         t4, t1, t0
                  lui          s3, 758644
                  blt          s9, s10, 151f
144:              add          t6, t6, s9
                  bne          s8, a0, 158f
                  sltiu        s0, s3, 1672
147:              blt          a7, a3, 163f
                  xori         s10, t5, 819
149:              sltu         s8, t5, a6
                  bne          s1, s2, 159f
151:              ori          gp, s10, -1923
                  sra          zero, s11, s4
                  ori          a3, s5, -1358
                  or           a2, t2, s4
                  srli         t3, t3, 1
                  sll          a7, s4, t3
                  sltiu        s9, a3, -2038
158:              or           t5, t0, a4
159:              add          a1, s11, sp
                  sltu         t2, s3, a2
                  andi         a1, a2, -950
                  slt          t1, s1, s0
163:              or           t2, a0, tp
                  auipc        t2, 218093
                  sltiu        t2, a0, -1795
                  sra          zero, ra, s7
                  slli         s9, ra, 29
                  slti         s4, s10, 1199
                  sra          s0, s9, s5
                  and          t0, t4, s7
                  addi         s3, a5, -1918
                  sll          a4, s0, t1
                  slti         s5, s2, 964
                  addi         s6, s7, 474
                  and          s5, t5, t5
                  ori          s7, s2, -1923
                  sub          gp, zero, t4
                  blt          t2, a2, 186f
                  beq          t6, a7, 190f
                  ori          a1, a1, 974
                  slt          s5, t4, gp
                  ori          zero, ra, 560
                  blt          s8, tp, 196f
                  srl          s0, tp, zero
                  nop
186:              sra          s7, a2, s3
                  bltu         s6, s10, 196f
                  sltiu        s5, s3, -1937
                  bgeu         a6, a4, 208f
190:              xor          t4, s7, a6
                  srli         zero, s1, 29
                  bge          a0, a3, 212f
                  ori          s1, s1, 1974
                  ori          a3, s1, 1711
                  slti         t2, sp, -457
196:              xori         t6, a7, 1761
                  bgeu         s3, gp, 214f
                  xor          s7, t6, sp
                  xori         s8, s1, 1544
                  srl          s10, s6, s0
                  and          s7, s9, gp
                  bne          a4, t5, 215f
                  slt          a3, t6, t1
                  bne          a0, tp, 206f
                  andi         a6, a5, -722
206:              sltiu        t0, s7, -1983
                  srai         a2, a2, 25
208:              sltu         s0, s7, a1
                  blt          t0, t5, 220f
                  srli         zero, s0, 7
                  nop
212:              xori         s1, s2, -1950
                  slti         s8, a1, -1666
214:              blt          sp, tp, 227f
215:              sra          a7, t2, s3
                  ori          t5, a0, -1819
                  beq          t4, t4, 226f
                  and          t2, a0, a2
                  andi         a0, zero, 1750
220:              bgeu         t2, a6, 233f
                  sra          t3, t4, s2
                  bge          a1, t1, 234f
                  ori          s6, s5, -1735
                  or           t2, s11, s7
                  sltiu        s3, zero, -1225
226:              slt          t2, t2, a7
227:              nop
                  blt          s3, zero, 244f
                  beq          tp, s3, 230f
230:              sltu         s7, a5, s4
                  or           s4, s9, a3
                  addi         t3, a2, 1739
233:              auipc        s9, 424920
234:              auipc        a1, 549171
                  slt          s8, a7, a3
                  auipc        a2, 137131
                  addi         tp, a3, -2016
                  srli         s9, gp, 20
                  beq          t1, sp, 256f
                  slt          s8, s7, s5
                  bgeu         s10, s7, 251f
                  lui          tp, 263517
                  lui          t0, 929384
244:              blt          t5, ra, 248f
                  xori         t1, zero, 1783
                  slli         t5, t0, 27
                  bltu         zero, s9, 253f
248:              srl          t5, ra, s4
                  srli         s5, t1, 16
                  sltiu        t1, s3, 547
251:              addi         a0, t0, 28
                  nop
253:              srai         s7, s0, 4
                  bltu         s2, s4, 266f
                  addi         ra, gp, 1582
256:              lui          gp, 600896
                  xori         t6, s4, -943
                  sll          a7, t3, a4
                  bge          a4, s5, 264f
                  bgeu         s2, a4, 270f
                  sltiu        gp, a3, -1395
                  andi         t5, s5, 451
                  sll          s5, ra, a2
264:              srai         s3, a1, 23
                  xor          s7, s3, a5
266:              bne          t1, sp, 281f
                  sltiu        t6, t2, -1269
                  nop
                  slli         t0, t0, 7
270:              auipc        ra, 966488
                  sub          s0, a6, t1
                  bge          s10, s0, 274f
                  bltu         s0, s11, 285f
274:              slti         t1, ra, -1094
                  xori         t6, a3, -2029
                  or           s6, a2, a4
                  and          t4, s2, a3
                  ori          a5, s5, -1775
                  sll          t2, a3, t4
                  bltu         s8, sp, 300f
281:              lui          a6, 781454
                  auipc        a2, 308857
                  blt          a5, a5, 291f
                  slt          t6, t0, s4
285:              sltu         t4, s10, a2
                  lui          a0, 121644
                  xori         t3, a6, 1480
                  bge          s4, gp, 296f
                  sll          a1, ra, ra
                  blt          s4, a6, 292f
291:              sltu         a5, t1, ra
292:              srli         t3, s11, 24
                  srl          s5, s0, t3
                  auipc        s7, 790144
                  srai         a0, a7, 12
296:              add          s7, gp, s4
                  slti         a3, a0, -772
                  srl          t2, a4, zero
                  nop
300:              srai         a7, a0, 18
                  bge          a4, s10, 306f
                  lui          zero, 659713
                  sra          t6, a6, s10
                  addi         s3, zero, -1042
                  slli         s8, a6, 22
306:              srl          a7, s4, t1
                  srai         t4, s3, 26
                  srl          a2, gp, s7
                  andi         gp, s8, 1199
                  xori         tp, a5, 1552
                  or           a6, s11, t5
                  slt          t2, s6, s3
                  lw           ra, 4(sp)
                  add          s4, tp, s3
                  addi         sp, sp, 8
                  srli         gp, a7, 22
439:              addi x15, x1, 1
439:              jalr x15, x15, 0
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
                  addi x2, x2, -128
                  sw  x1, 4(x2)
                  sw  x2, 8(x2)
                  sw  x3, 12(x2)
                  sw  x4, 16(x2)
                  sw  x5, 20(x2)
                  sw  x6, 24(x2)
                  sw  x7, 28(x2)
                  sw  x8, 32(x2)
                  sw  x9, 36(x2)
                  sw  x10, 40(x2)
                  sw  x11, 44(x2)
                  sw  x12, 48(x2)
                  sw  x13, 52(x2)
                  sw  x14, 56(x2)
                  sw  x15, 60(x2)
                  sw  x16, 64(x2)
                  sw  x17, 68(x2)
                  sw  x18, 72(x2)
                  sw  x19, 76(x2)
                  sw  x20, 80(x2)
                  sw  x21, 84(x2)
                  sw  x22, 88(x2)
                  sw  x23, 92(x2)
                  sw  x24, 96(x2)
                  sw  x25, 100(x2)
                  sw  x26, 104(x2)
                  sw  x27, 108(x2)
                  sw  x28, 112(x2)
                  sw  x29, 116(x2)
                  sw  x30, 120(x2)
                  sw  x31, 124(x2)
                  add x18, x2, zero
                  csrr x8, 0x300 # MSTATUS
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 31
                  bne x8, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x8, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x8, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x8, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x8, x24, ecall_handler
                  li x24, 0x1
                  beq x8, x24, instr_fault_handler
                  li x24, 0x5
                  beq x8, x24, load_fault_handler
                  li x24, 0x7
                  beq x8, x24, store_fault_handler
                  li x24, 0xc
                  beq x8, x24, pt_fault_handler
                  li x24, 0xd
                  beq x8, x24, pt_fault_handler
                  li x24, 0xf
                  beq x8, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

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
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

load_fault_handler:
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

store_fault_handler:
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x2, x18, zero
                  lw  x1, 4(x2)
                  lw  x2, 8(x2)
                  lw  x3, 12(x2)
                  lw  x4, 16(x2)
                  lw  x5, 20(x2)
                  lw  x6, 24(x2)
                  lw  x7, 28(x2)
                  lw  x8, 32(x2)
                  lw  x9, 36(x2)
                  lw  x10, 40(x2)
                  lw  x11, 44(x2)
                  lw  x12, 48(x2)
                  lw  x13, 52(x2)
                  lw  x14, 56(x2)
                  lw  x15, 60(x2)
                  lw  x16, 64(x2)
                  lw  x17, 68(x2)
                  lw  x18, 72(x2)
                  lw  x19, 76(x2)
                  lw  x20, 80(x2)
                  lw  x21, 84(x2)
                  lw  x22, 88(x2)
                  lw  x23, 92(x2)
                  lw  x24, 96(x2)
                  lw  x25, 100(x2)
                  lw  x26, 104(x2)
                  lw  x27, 108(x2)
                  lw  x28, 112(x2)
                  lw  x29, 116(x2)
                  lw  x30, 120(x2)
                  lw  x31, 124(x2)
                  addi x2, x2, 128
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
