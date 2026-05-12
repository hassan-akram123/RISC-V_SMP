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
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x23, kernel_stack_end

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
                  li x0, 0xfedb88fe
                  li x1, 0x5
                  li x2, 0x80000000
                  li x3, 0xf382808f
                  li x4, 0xc35d7210
                  li x5, 0xdee91e07
                  li x6, 0x50551206
                  li x7, 0x3
                  li x8, 0x80000000
                  li x9, 0x563483be
                  li x10, 0x2fd6c67a
                  li x11, 0x80000000
                  li x12, 0xfc42d105
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x39aa350d
                  li x16, 0x0
                  li x17, 0xf03b9bbf
                  li x18, 0xf90f976b
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x0
                  li x22, 0x9fb372e8
                  li x24, 0xd
                  li x25, 0x80000000
                  li x27, 0xe626f1d2
                  li x28, 0xfcff7e38
                  li x29, 0xc
                  li x30, 0x80000000
                  li x31, 0xfa1dc2a6
                  la x26, user_stack_end
main:             la           a2, sub_2
                  nop
                  ori          a1, t3, 161
                  srli         a7, s6, 30
                  lui          s2, 174349
                  addi         a2, a2, 695
                  sltiu        a6, a6, 560
main_j2:          jalr         t1, a2, -694 #jump main -> sub_2
                  addi         s8, t3, 210
                  ori          a2, a4, -1852
                  ori          ra, t1, 367
                  la           a1, sub_1
                  sltiu        a3, s10, 594
                  addi         a1, a1, -399
                  sltu         ra, t2, s6
main_j3:          jalr         t1, a1, 400 #jump main -> sub_1
                  addi         tp, zero, -2 #init loop 0 counter
                  sltu         s0, s7, a3
                  sltu         t2, t5, t3
                  srai         s11, s4, 29
                  sra          t2, s5, a6
                  slti         sp, a5, -1668
                  addi         t3, zero, 12 #init loop 0 limit
                  slli         t1, a6, 24
main_0_0_t:       lui          a3, 96059
                  addi         tp, tp, 5 #update loop 0 counter
                  lui          s8, 422135
                  add          a2, s11, zero
                  sltiu        ra, tp, -448
                  ori          s4, a1, -1714
                  sll          a2, a6, s2
                  andi         s5, t1, 1751
                  sltiu        gp, tp, -323
                  andi         s11, t1, 769
                  bltu         tp, t3, main_0_0_t #branch for loop 0
                  sll          t2, a0, s3
                  xori         a6, s7, 1667
                  add          t1, t0, a1
                  nop
                  xori         a3, a3, -109
                  bltu         t2, a0, 7f
                  bltu         a6, s0, 7f
                  or           sp, a3, s1
7:                srl          s9, s2, s6
                  slt          tp, s0, s4
                  xor          a1, s8, gp
                  sltiu        t6, tp, -845
                  sub          a0, a7, t0
                  add          t4, s10, t2
                  andi         s2, tp, -881
                  and          s8, s6, s1
                  la           s4, sub_1
                  srai         zero, t2, 3
                  sra          a3, gp, ra
                  slt          t4, ra, a2
                  addi         s4, s4, -282
                  bne          s8, t3, main_j1 #branch to jump instr
                  srai         a4, s8, 9
                  or           gp, sp, t2
                  slti         s8, s3, 1871
main_j1:          jalr         t1, s4, 283 #jump main -> sub_1
                  nop
                  add          s9, t3, s6
                  sub          s2, t1, s4
                  xor          s9, t4, s7
                  bne          t5, s1, 29f
                  ori          a7, t6, 638
                  srl          a2, s6, s9
                  slt          s6, s3, sp
                  nop
                  srai         a0, a3, 4
                  beq          s2, a0, 32f
                  beq          a0, s1, 36f
                  sra          a1, a5, a0
                  xor          s5, a6, a6
                  srai         a0, a6, 11
                  auipc        t1, 952041
29:               slli         gp, gp, 20
                  andi         s5, s3, 1863
                  blt          t2, t5, 40f
32:               add          s2, tp, s0
                  bgeu         s7, s5, 46f
                  sltu         a3, zero, s11
                  sra          a2, a2, t4
36:               slli         a5, s5, 14
                  beq          a3, s7, 44f
                  auipc        a7, 470711
                  sub          a0, a2, s1
40:               slli         t5, s11, 25
                  sra          s0, t0, t3
                  add          s4, gp, s9
                  srai         zero, s4, 8
44:               sll          tp, t5, t2
                  bltu         ra, t1, 50f
46:               andi         sp, zero, 2043
                  lui          s1, 138192
                  sra          a5, a2, s9
                  or           s1, t1, s2
50:               srl          s1, gp, a5
                  la x19, test_done
                  jalr x0, x19, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            slli         s8, tp, 29
                  ori          zero, a1, 1529
                  sltiu        s6, ra, 646
                  bltu         t4, t3, sub_5_stack_p
sub_5_stack_p:    addi         s10, s10, -24
                  sub          a1, s10, t5
                  sw           t1, 4(s10)
                  slli         t0, s9, 11
                  addi         a7, zero, -9 #init loop 1 counter
                  sltiu        a4, zero, 1923
                  ori          zero, s5, -1046
                  slli         sp, ra, 5
                  addi         s8, zero, -16 #init loop 1 limit
sub_5_4_1_t:      xor          s6, s11, s3
                  lui          s9, 322041
                  xor          s0, s6, t6
                  addi         a7, a7, -7 #update loop 1 counter
                  or           a4, s5, t3
                  addi         s4, zero, 10 #init loop 0 counter
                  add          ra, t6, a4
                  addi         a2, zero, 14 #init loop 0 limit
                  and          t5, s11, t1
                  add          ra, a4, s7
                  sll          a0, ra, t3
                  sltu         s6, s5, t2
                  lui          a3, 174310
                  srai         ra, s1, 1
sub_5_4_0_t:      sub          a6, t6, ra
                  slli         t1, a2, 3
                  slt          a0, a6, s9
                  xori         zero, s4, -1338
                  addi         s4, s4, 7 #update loop 0 counter
                  blt          s4, a2, sub_5_4_0_t #branch for loop 0
                  auipc        s9, 88476
                  sll          ra, gp, s8
                  slli         ra, a4, 18
                  beq          a7, s8, sub_5_4_1_t #branch for loop 1
                  add          a4, a3, a4
                  addi         t6, zero, 10 #init loop 0 counter
                  andi         s5, a7, 602
                  slt          t5, s3, a4
                  srai         t3, a4, 0
                  slt          s0, t5, gp
                  sltu         s5, a4, tp
                  sll          a5, ra, t6
                  srl          s11, t6, a3
                  sltiu        a2, a3, 25
                  and          a5, a6, a4
                  addi         t1, zero, 5 #init loop 0 limit
                  nop
                  srli         ra, t4, 19
sub_5_5_0_t:      or           t3, gp, t3
                  andi         a3, ra, -249
                  srai         t0, t4, 22
                  srl          s1, s5, s5
                  and          s9, s10, s11
                  sub          a1, s11, gp
                  addi         t6, t6, -2 #update loop 0 counter
                  bgeu         t6, t1, sub_5_5_0_t #branch for loop 0
                  sll          s5, s2, a0
                  addi         s6, zero, 10 #init loop 1 counter
                  xori         s9, t6, 1482
                  lui          a4, 594294
                  xori         s8, s3, 527
                  addi         a0, zero, 10 #init loop 1 limit
                  sra          s11, tp, s7
sub_5_7_1_t:      nop
                  andi         s0, a5, -479
                  slt          s4, tp, s7
                  addi         s6, s6, -9 #update loop 1 counter
                  addi         a1, zero, 7 #init loop 0 counter
                  addi         t1, zero, 19 #init loop 0 limit
                  sll          a4, s7, s11
sub_5_7_0_t:      and          s4, t0, t5
                  andi         s9, s3, -312
                  addi         a1, a1, 4 #update loop 0 counter
                  addi         s8, ra, 1100
                  sltiu        sp, gp, 1052
                  srl          t2, a1, gp
                  nop
                  beq          a1, t1, sub_5_7_0_t #branch for loop 0
                  and          s11, a3, t4
                  sub          s8, t2, a0
                  sra          t4, tp, s8
                  or           s2, s5, ra
                  slt          zero, s3, t4
                  add          a3, s1, s9
                  bgeu         s6, a0, sub_5_7_1_t #branch for loop 1
                  slli         t3, ra, 9
                  addi         s4, zero, 5 #init loop 1 counter
                  addi         t5, zero, -9 #init loop 1 limit
sub_5_6_1_t:      slt          s5, a2, s5
                  addi         s4, s4, -7 #update loop 1 counter
                  srli         s5, tp, 4
                  addi         s0, zero, 5 #init loop 0 counter
                  addi         a7, zero, 4 #init loop 0 limit
sub_5_6_0_t:      ori          a4, t2, -77
                  addi         s0, s0, -2 #update loop 0 counter
                  bgeu         s0, a7, sub_5_6_0_t #branch for loop 0
                  bge          s4, t5, sub_5_6_1_t #branch for loop 1
                  sra          ra, a0, gp
                  addi         s9, zero, -8 #init loop 1 counter
                  addi         s11, zero, 9 #init loop 1 limit
                  srai         s6, t5, 31
sub_5_1_1_t:      sltiu        a7, tp, -74
                  addi         s9, s9, 10 #update loop 1 counter
                  addi         a6, zero, 3 #init loop 0 counter
                  addi         s0, zero, 15 #init loop 0 limit
                  slli         t3, s2, 0
sub_5_1_0_t:      and          s6, gp, s8
                  addi         a6, a6, 10 #update loop 0 counter
                  nop
                  blt          a6, s0, sub_5_1_0_t #branch for loop 0
                  blt          s9, s11, sub_5_1_1_t #branch for loop 1
                  sltiu        t1, sp, 1136
                  addi         a6, zero, -8 #init loop 1 counter
                  sra          tp, a2, ra
                  xori         a2, s5, 1075
                  ori          a3, zero, -1122
                  sltiu        s1, s6, -425
                  addi         a4, s8, -113
                  srai         ra, s3, 4
                  addi         t0, zero, 13 #init loop 1 limit
                  srai         t5, a3, 31
                  xori         s8, a0, 1
sub_5_3_1_t:      xori         a7, a7, 1119
                  addi         a6, a6, 4 #update loop 1 counter
                  srai         s2, a7, 12
                  lui          a1, 385247
                  slt          s1, s0, t0
                  addi         s6, zero, 9 #init loop 0 counter
                  slt          tp, s9, s11
                  ori          a4, s0, -468
                  srli         s11, s8, 29
                  lui          t6, 496653
                  addi         s0, zero, 4 #init loop 0 limit
                  srai         a1, s4, 17
                  auipc        t5, 391698
                  slt          t4, s6, s10
sub_5_3_0_t:      auipc        ra, 985774
                  sll          s4, t6, s0
                  addi         s6, s6, -5 #update loop 0 counter
                  slti         s4, s10, -150
                  bne          s6, s0, sub_5_3_0_t #branch for loop 0
                  bltu         a6, t0, sub_5_3_1_t #branch for loop 1
                  nop
                  addi         t5, zero, -8 #init loop 0 counter
                  slt          s2, tp, t6
                  srai         s2, tp, 26
                  addi         s4, zero, -2 #init loop 0 limit
                  nop
sub_5_2_0_t:      xori         a4, t6, -1670
                  addi         t5, t5, 8 #update loop 0 counter
                  lui          ra, 876118
                  srl          t0, s3, s6
                  xor          a7, s11, s6
                  blt          t5, s4, sub_5_2_0_t #branch for loop 0
                  auipc        ra, 482881
                  sub          zero, s10, zero
                  beq          s6, t4, 8f
                  slti         t0, a5, -263
                  beq          s2, a3, 15f
                  sub          s1, a6, a3
                  sra          s8, t4, gp
                  auipc        s6, 781776
                  sub          t3, s7, sp
8:                sub          tp, t3, s5
                  bgeu         a1, s5, 19f
                  addi         t5, s2, 461
                  bltu         t5, a4, 19f
                  nop
                  slt          sp, t4, a5
                  slt          a0, s6, t6
15:               lui          a0, 468909
                  slt          t6, a2, t6
                  auipc        gp, 359750
                  sra          s5, s7, s7
19:               beq          a1, t5, 39f
                  ori          t1, s3, 86
                  xor          t3, t6, zero
                  sltiu        a7, ra, 29
                  sub          s4, a2, a3
                  andi         a3, t2, -879
                  sltiu        sp, t3, -897
                  andi         t0, s4, -437
                  srli         s6, s8, 16
                  slli         zero, a1, 12
                  nop
                  andi         t4, a7, -1338
                  sub          a1, t5, a7
                  auipc        a7, 149847
                  add          gp, s4, s0
                  lui          t3, 129089
                  lui          a0, 53309
                  or           sp, a4, s7
                  bne          s1, zero, 50f
                  srai         sp, zero, 5
39:               sra          t2, s7, sp
                  lui          a6, 386848
                  lui          s9, 809160
                  xor          s1, s10, s1
                  slt          s2, a5, a0
                  lui          t5, 124280
                  sltiu        a4, s1, -1155
                  sub          t2, a5, t4
                  add          a6, a2, t2
                  xor          s2, s6, a5
                  beq          tp, t3, 63f
50:               slli         a4, a0, 2
                  nop
                  andi         ra, s4, 65
                  nop
                  xori         s5, t0, -1100
                  bge          s1, t2, 58f
                  beq          s11, s7, 60f
                  nop
58:               or           s0, a1, s1
                  slli         a3, s3, 14
60:               srl          a2, s4, zero
                  ori          t5, a2, -1044
                  add          t2, s7, t6
63:               or           a5, gp, a2
                  ori          s0, t0, 479
                  srl          s11, s11, a7
                  or           sp, s0, s10
                  slti         a0, a6, 1472
                  sltu         t6, s6, s2
                  sltu         s8, s4, t6
                  sltiu        s8, t0, 1281
                  sub          s6, a6, s0
                  lui          a1, 177207
                  srai         a3, ra, 27
                  nop
                  or           s9, s9, a6
                  bltu         t1, t6, 96f
                  beq          t6, t3, 87f
                  blt          a3, a4, 81f
                  nop
                  sll          s2, a0, s10
81:               sub          t6, gp, t5
                  bge          s3, s3, 87f
                  srli         a2, a1, 29
                  nop
                  bge          s8, ra, 95f
                  sll          s0, tp, gp
87:               ori          a3, s2, 1734
                  blt          s3, s7, 90f
                  srl          a4, s9, a0
90:               srai         a4, s0, 15
                  bge          s2, s1, 102f
                  xori         zero, s11, 1134
                  lui          s11, 684229
                  ori          a4, s0, 910
95:               nop
96:               add          t5, s9, s11
                  nop
                  beq          s3, sp, 118f
                  slti         s0, t2, -1397
                  xori         ra, sp, -690
                  ori          tp, s11, -351
102:              and          sp, t1, t6
                  ori          a4, t1, -662
                  srli         a5, t2, 3
                  beq          t6, a2, 110f
                  sra          a4, zero, t3
                  bge          s6, s0, 123f
                  sll          t3, s9, t3
                  and          a6, s5, ra
110:              beq          ra, ra, 117f
                  bne          a4, s8, 124f
                  srli         t0, a1, 0
                  slti         a3, a5, 1641
                  auipc        a3, 463318
                  slli         s2, t5, 23
                  auipc        a5, 633814
117:              sra          zero, s9, a2
118:              srli         s9, s6, 3
                  sltiu        a3, s3, 578
                  bge          s8, zero, 132f
                  srli         a7, a6, 15
                  sltu         t1, s11, s2
123:              srli         a6, a1, 27
124:              sub          a0, a7, s8
                  slti         s4, t4, 1690
                  and          tp, s1, t3
                  sltu         t4, s2, gp
                  bltu         a4, t0, 137f
                  sltu         a6, t4, s4
                  add          t0, s4, t2
                  blt          s2, t6, 150f
132:              srl          sp, s6, s5
                  xori         a3, s2, -1396
                  sll          s4, tp, sp
                  sll          s9, a4, a5
                  blt          s0, s6, 138f
137:              srli         t5, s10, 19
138:              sltiu        s1, s2, -58
                  addi         sp, zero, -5 #init loop 1 counter
                  xor          a6, a7, s8
                  addi         a3, zero, -11 #init loop 1 limit
sub_5_0_1_t:      auipc        s4, 97521
                  addi         sp, sp, -2 #update loop 1 counter
                  addi         t1, zero, 1 #init loop 0 counter
                  ori          s1, t4, -530
                  addi         a1, zero, 9 #init loop 0 limit
                  andi         t4, a1, -130
sub_5_0_0_t:      sltu         gp, t0, a4
                  addi         s11, a6, 1688
                  addi         t1, t1, 4 #update loop 0 counter
                  bne          t1, a1, sub_5_0_0_t #branch for loop 0
                  bge          sp, a3, sub_5_0_1_t #branch for loop 1
                  and          a4, t2, s3
                  bne          a7, a5, 158f
                  andi         a1, a3, -813
                  bgeu         s1, t4, 159f
                  andi         a4, s0, -1434
                  and          sp, s3, t0
                  lui          a7, 369721
                  beq          s6, s1, 152f
                  sltu         s1, a2, tp
                  auipc        sp, 79598
                  lui          s4, 210749
                  srai         tp, a4, 19
150:              slti         a4, tp, 52
                  srl          t0, s4, a0
152:              and          a6, t6, a2
                  bgeu         t5, a0, 169f
                  beq          t6, ra, 163f
                  slli         a1, s10, 19
                  slt          t0, a0, s2
                  slli         t0, s3, 15
158:              blt          ra, s11, 168f
159:              lui          s9, 1030866
                  sltiu        ra, a3, -1697
                  blt          t2, s7, 163f
                  add          ra, s10, ra
163:              beq          s0, a3, 172f
                  andi         a3, t0, 2017
                  slli         a1, sp, 11
                  srai         t3, a5, 20
                  slti         s0, gp, -1149
168:              srl          s0, s3, t4
169:              and          t3, gp, tp
                  lui          zero, 868411
                  bge          a1, s1, 187f
172:              beq          s6, a2, 190f
                  ori          a6, ra, -664
                  and          tp, t5, t3
                  slli         s1, s0, 26
                  bge          t3, a7, 190f
                  nop
                  xori         t1, t1, -392
                  sltu         t3, t2, s6
                  lui          zero, 547944
                  sltu         t1, gp, s8
                  sltu         tp, s5, zero
                  or           s2, a5, s1
                  lui          ra, 143995
                  auipc        s9, 816905
                  bne          t2, t4, 206f
187:              bge          gp, tp, 194f
                  bltu         t3, t1, 190f
                  sltiu        t3, s4, -1619
190:              addi         s2, s7, -690
                  slti         t0, a2, 1762
                  and          a3, s8, a6
                  xor          ra, s6, s11
194:              sll          t6, a4, s8
                  andi         s0, a3, -413
                  sltu         s2, s8, gp
                  bgeu         s7, s7, 207f
                  auipc        t0, 412908
                  auipc        t1, 435929
                  bge          s5, t3, 203f
                  sll          s2, s3, s4
                  beq          t1, t3, 215f
203:              sll          a1, t1, ra
                  nop
                  add          a1, a5, t4
206:              nop
207:              lui          s2, 404683
                  bgeu         a1, sp, 220f
                  sra          a4, zero, t4
                  srli         a6, sp, 21
                  nop
                  xori         ra, t6, 924
                  or           a3, t3, t5
                  nop
215:              bgeu         s0, s2, 225f
                  sra          sp, s11, s2
                  sltiu        s1, gp, 1293
                  srai         a6, t1, 13
                  addi         t6, t1, 1724
220:              sll          s1, s6, t4
                  beq          s11, t1, 234f
                  slti         sp, s0, -821
                  blt          ra, t6, 242f
                  nop
225:              sltiu        a6, gp, 1992
                  nop
                  beq          a4, t1, 234f
                  addi         t3, s2, -1773
                  sltu         a6, s2, s2
                  ori          s2, s8, 1562
                  sltu         t4, s8, t4
                  blt          a5, s10, 235f
                  bgeu         a4, t2, 238f
234:              blt          t0, t0, 243f
235:              sll          a5, t2, a4
                  srai         t6, s4, 15
                  bne          s5, s7, 248f
238:              add          gp, ra, zero
                  srai         a0, sp, 13
                  sll          t5, a4, a6
                  bne          a5, a1, 261f
242:              slti         s1, t0, 1986
243:              xor          a5, a7, s4
                  xori         sp, a2, 161
                  slti         t1, tp, -1286
                  sub          t1, t5, a7
                  addi         a0, a7, 1913
248:              auipc        a4, 759595
                  slti         s11, s6, 663
                  or           s1, a3, a1
                  slli         s9, s9, 30
                  srai         a4, sp, 16
                  bltu         t3, t0, 269f
                  blt          t4, s1, 266f
                  slli         t6, s4, 0
                  xor          a1, a4, s1
                  bltu         s7, s4, 276f
                  srl          a4, s7, sp
                  or           a7, a6, t1
                  bne          a2, s5, 268f
261:              or           s2, s10, s4
                  auipc        t2, 910232
                  srli         a5, t6, 22
                  sra          a6, t1, t5
                  sll          s9, a3, s4
266:              andi         t3, tp, 322
                  bltu         s10, ra, 272f
268:              nop
269:              sub          tp, s6, s6
                  addi         s9, s4, 161
                  sltiu        t0, s10, -508
272:              lui          a5, 114697
                  bgeu         t4, t1, 280f
                  nop
                  add          s6, a7, a5
276:              nop
                  lui          a2, 458467
                  sltiu        gp, s7, -1693
                  slti         t1, t4, 963
280:              sltu         s1, t5, s9
                  srl          gp, zero, a1
                  beq          t6, t1, 286f
                  or           a3, s2, t4
                  sltu         s4, sp, t4
                  auipc        a3, 530884
286:              bgeu         s6, t4, 306f
                  or           zero, t6, ra
                  andi         tp, a2, -1277
                  slt          s8, s11, s0
                  srli         t0, s3, 13
                  beq          t1, s2, 298f
                  nop
                  nop
                  xori         a7, a5, -119
                  bge          ra, s8, 300f
                  add          a5, s3, s2
                  beq          a6, s4, 317f
298:              sub          ra, a1, s0
                  bgeu         t5, a0, 315f
300:              xor          a5, a7, s4
                  sltiu        a7, s6, 1028
                  srl          t1, t3, a1
                  bgeu         t0, s0, 311f
                  bgeu         a2, s10, 323f
                  auipc        a7, 681264
306:              srai         t4, tp, 7
                  sra          t0, a1, s11
                  srai         ra, s0, 22
                  slt          s2, zero, a6
                  blt          a7, a1, 319f
311:              and          gp, a7, zero
                  sub          a0, a6, s11
                  srai         a6, ra, 11
                  bgeu         tp, a1, 332f
315:              bne          a6, zero, 328f
                  sltiu        s0, s0, -1039
317:              xori         sp, s11, -1272
                  bge          t3, t5, 328f
319:              xor          t3, a2, t3
                  srli         s4, s3, 5
                  bgeu         a6, s11, 341f
                  bltu         s6, a0, 334f
323:              auipc        s4, 930568
                  bgeu         s7, s5, 340f
                  bge          s11, a4, 327f
                  srl          t6, tp, t4
327:              nop
328:              sra          a2, s2, a6
                  addi         a7, s0, 1745
                  nop
                  slli         s8, a5, 2
332:              blt          a1, s11, 339f
                  nop
334:              slti         a2, a1, -1840
                  sra          a5, zero, sp
                  xor          t4, s11, a6
                  slt          t3, tp, s5
                  add          s0, s9, gp
339:              srai         s1, sp, 31
340:              xor          a6, s8, s5
341:              sll          gp, s10, tp
                  lui          t4, 153438
                  add          tp, s8, a0
                  lui          t3, 828791
                  or           zero, a1, a4
                  srl          s11, s10, s10
                  or           s6, a6, ra
                  xor          a0, s8, t1
                  bne          s8, a7, 363f
                  slt          s5, s5, t6
                  bgeu         a7, t5, 360f
                  lui          s11, 138285
                  lui          a6, 964094
                  slti         gp, s10, 989
                  bgeu         t2, a6, 375f
                  bge          s5, a2, 375f
                  sltu         sp, a0, t2
                  sll          s4, a5, s2
                  xor          t5, a1, t2
360:              bge          s0, s2, 373f
                  slti         t0, s6, 685
                  auipc        zero, 395661
363:              addi         t4, t0, 150
                  sra          a6, t2, ra
                  xor          t3, s1, t2
                  bgeu         s0, s2, 368f
                  sub          s1, a6, zero
368:              xori         a3, t6, 1296
                  nop
                  slti         gp, a7, 459
                  sub          a4, s10, s8
                  sltiu        sp, a5, -513
373:              srli         gp, a7, 17
                  slti         a1, sp, 651
375:              slt          a3, a2, a5
                  sub          a3, t0, s6
                  sra          tp, s2, s8
                  bltu         s2, zero, 388f
                  beq          sp, s8, 390f
                  lui          s2, 1017580
                  srai         s8, s7, 13
                  addi         a3, a2, -802
                  srai         tp, s1, 27
                  and          a3, s3, gp
                  xori         a3, s9, -1144
                  sll          t3, a5, a1
                  or           gp, s6, s7
388:              bltu         t4, ra, 391f
                  addi         t1, s2, 678
390:              and          t5, s1, s6
391:              slti         a4, s11, 316
                  blt          a0, s10, 404f
                  blt          t5, t3, 397f
                  xori         s0, a4, 6
                  and          t4, a6, a5
                  bgeu         t1, t3, 406f
397:              blt          s11, gp, 402f
                  ori          zero, s1, 1161
                  blt          t3, s9, 402f
                  xor          a4, t3, s9
                  sll          t1, s8, s4
402:              xor          t6, s4, ra
                  beq          s2, a2, 410f
404:              andi         a2, zero, 528
                  lui          a3, 955193
406:              auipc        a5, 570187
                  ori          s5, a7, 1587
                  bge          sp, s3, 422f
                  xori         s6, t1, 725
410:              nop
                  sll          s2, t0, a4
                  srl          t2, a7, a2
                  ori          t6, a4, -671
                  sltiu        a0, t2, 740
                  nop
                  srl          t1, s1, a2
                  bge          t3, t5, 433f
                  andi         zero, s9, 1433
                  lui          t2, 793744
                  andi         s5, s9, 1590
                  sll          s2, a2, s9
422:              sub          t5, t5, s3
                  andi         s9, s5, -1185
                  srl          a6, a3, a1
                  lui          zero, 641381
                  nop
                  blt          a2, t0, 432f
                  sltu         ra, a7, t2
                  srai         t3, a2, 21
                  nop
                  nop
432:              srli         t5, tp, 4
433:              or           a7, t4, t4
                  slli         sp, s3, 20
                  sltu         a3, s4, t1
                  nop
                  auipc        a0, 981103
                  sra          t4, t2, a0
                  ori          s5, t0, -778
                  srai         t1, s5, 3
                  sltu         a6, s9, sp
                  xori         zero, s4, -1638
                  bltu         t1, s0, 444f
444:              srl          s1, a7, ra
                  and          a7, a3, a5
                  srl          t4, s4, s1
                  xori         s0, sp, 57
                  lw           t1, 4(s10)
                  sub          a5, ra, t6
                  srli         ra, gp, 7
                  and          s11, s4, t2
                  addi         s10, s10, 24
                  sub          a5, s9, t6
                  srai         a5, s9, 9
628:              addi x14, x6, 0
628:              jalr x14, x14, 0
sub_1:            sll          s11, s9, t0
                  auipc        s5, 34309
                  auipc        t0, 834285
                  addi         s9, t5, 11
                  bgeu         t5, a3, sub_1_stack_p
sub_1_stack_p:    addi         s10, s10, -20
                  add          a4, tp, s2
                  slli         sp, a4, 26
                  sw           t1, 4(s10)
                  or           t0, s8, s4
                  slt          s2, a3, s2
                  addi         a3, zero, 4 #init loop 1 counter
                  addi         a1, s11, -481
                  sra          a1, s7, s7
                  xor          s1, s1, s4
                  sltiu        ra, t4, 903
                  slt          a6, a6, gp
                  addi         s5, zero, 4 #init loop 1 limit
                  sub          a0, s2, tp
                  xor          tp, tp, a3
sub_1_18_1_t:     addi         sp, zero, -1513
                  sll          t5, s8, s3
                  addi         a3, a3, -2 #update loop 1 counter
                  sra          s11, a7, a3
                  addi         s4, zero, 10 #init loop 0 counter
                  sltu         t1, ra, s0
                  add          a0, s6, zero
                  xor          tp, s0, s3
                  addi         a4, zero, 16 #init loop 0 limit
                  sltu         gp, s7, s2
                  or           s2, a3, a1
                  andi         s2, s8, -1649
sub_1_18_0_t:     sltiu        s8, t6, 384
                  sltiu        a1, s1, 1879
                  lui          s6, 683871
                  addi         s4, s4, 2 #update loop 0 counter
                  and          a6, a4, t5
                  bne          s4, a4, sub_1_18_0_t #branch for loop 0
                  slti         s9, a3, 1373
                  slli         t1, zero, 1
                  lui          s0, 954011
                  srai         s0, a0, 21
                  slti         gp, t5, -359
                  srai         s6, s1, 15
                  bgeu         a3, s5, sub_1_18_1_t #branch for loop 1
                  nop
                  addi         a3, zero, -4 #init loop 1 counter
                  sra          t0, ra, a1
                  slli         a2, ra, 0
                  addi         s11, zero, -13 #init loop 1 limit
                  sub          s0, t3, s2
                  srai         a1, t0, 5
                  sltiu        s4, ra, 1980
                  andi         s5, s2, 600
                  and          a7, gp, s5
sub_1_14_1_t:     or           ra, s10, s1
                  sltiu        s5, a0, 332
                  addi         a3, a3, -4 #update loop 1 counter
                  sra          s0, s10, t6
                  sra          a2, a7, t3
                  addi         a0, zero, 5 #init loop 0 counter
                  addi         t5, zero, 4 #init loop 0 limit
                  sltu         s1, a5, t1
sub_1_14_0_t:     addi         a5, a7, -1208
                  or           a4, s5, tp
                  sra          t0, t5, s9
                  addi         a0, a0, -3 #update loop 0 counter
                  bgeu         a0, t5, sub_1_14_0_t #branch for loop 0
                  slli         s4, zero, 14
                  or           tp, gp, s7
                  bge          a3, s11, sub_1_14_1_t #branch for loop 1
                  srl          t2, s0, tp
                  addi         t6, zero, 8 #init loop 1 counter
                  slti         s8, t4, -618
                  srai         t2, a1, 5
                  sra          gp, t1, a4
                  addi         s11, zero, 5 #init loop 1 limit
sub_1_1_1_t:      xori         s6, t5, -558
                  addi         sp, s10, 903
                  and          s6, s3, t6
                  srli         a2, t6, 21
                  addi         t6, t6, -4 #update loop 1 counter
                  srai         s4, gp, 26
                  addi         s5, zero, -9 #init loop 0 counter
                  addi         a0, zero, 1 #init loop 0 limit
                  add          s1, a3, tp
sub_1_1_0_t:      nop
                  xori         t4, a0, 228
                  srai         t5, a5, 7
                  addi         s5, s5, 5 #update loop 0 counter
                  bltu         s5, a0, sub_1_1_0_t #branch for loop 0
                  sll          sp, a4, s4
                  sra          t2, a0, a0
                  bgeu         t6, s11, sub_1_1_1_t #branch for loop 1
                  lui          s2, 332620
                  addi         s5, zero, 9 #init loop 0 counter
                  or           s8, s11, a7
                  sll          tp, t6, t5
                  xori         t3, s9, 1620
                  addi         s11, zero, 9 #init loop 0 limit
                  slti         t5, a5, -971
                  sub          t2, a7, t5
sub_1_16_0_t:     lui          a4, 313845
                  slt          s1, s3, t0
                  xor          s4, s11, gp
                  sll          zero, t3, s4
                  addi         s5, s5, -8 #update loop 0 counter
                  slt          gp, a6, t5
                  sra          gp, s2, s6
                  andi         a6, a7, 1817
                  srai         t5, a2, 15
                  sltiu        a6, s10, -111
                  sll          s6, t4, t3
                  srai         sp, a6, 8
                  nop
                  sra          t2, t2, s5
                  sltiu        a6, a7, 1974
                  lui          a0, 259999
                  sub          t3, s5, s6
                  sub          a2, sp, s11
                  slt          s9, s6, t1
                  xori         zero, ra, 645
                  bgeu         s5, s11, sub_1_16_0_t #branch for loop 0
                  addi         a3, t6, -688
                  addi         a4, zero, 1 #init loop 1 counter
                  addi         s2, zero, -14 #init loop 1 limit
                  add          a2, s5, zero
sub_1_4_1_t:      addi         a1, t5, 1923
                  addi         a4, a4, -5 #update loop 1 counter
                  andi         t4, s4, -817
                  addi         t0, zero, -2 #init loop 0 counter
                  sltiu        s5, gp, -365
                  addi         a7, zero, 5 #init loop 0 limit
sub_1_4_0_t:      or           tp, ra, t0
                  slt          t5, a5, t1
                  addi         t0, t0, 1 #update loop 0 counter
                  blt          t0, a7, sub_1_4_0_t #branch for loop 0
                  bne          a4, s2, sub_1_4_1_t #branch for loop 1
                  and          t1, a7, s3
                  addi         t5, zero, 6 #init loop 1 counter
                  addi         a6, zero, 6 #init loop 1 limit
sub_1_12_1_t:     slt          s6, a5, s1
                  addi         t5, t5, -5 #update loop 1 counter
                  addi         gp, zero, 7 #init loop 0 counter
                  addi         s0, zero, 6 #init loop 0 limit
sub_1_12_0_t:     xori         a3, zero, -1783
                  addi         gp, gp, -3 #update loop 0 counter
                  bge          gp, s0, sub_1_12_0_t #branch for loop 0
                  bgeu         t5, a6, sub_1_12_1_t #branch for loop 1
                  ori          s1, t5, -157
                  addi         a7, zero, 2 #init loop 1 counter
                  addi         gp, zero, 8 #init loop 1 limit
                  slli         s8, t6, 7
sub_1_20_1_t:     add          t5, gp, tp
                  andi         s9, a5, -951
                  addi         a7, a7, 4 #update loop 1 counter
                  addi         s1, zero, 10 #init loop 0 counter
                  sll          tp, a2, ra
                  addi         a5, zero, 11 #init loop 0 limit
sub_1_20_0_t:     addi         a6, a2, 1182
                  and          t0, s5, a5
                  addi         s1, s1, 9 #update loop 0 counter
                  bltu         s1, a5, sub_1_20_0_t #branch for loop 0
                  blt          a7, gp, sub_1_20_1_t #branch for loop 1
                  sub          a6, s7, t4
                  addi         s11, zero, -3 #init loop 0 counter
                  lui          a7, 792239
                  srli         a7, s6, 14
                  addi         t2, zero, 17 #init loop 0 limit
sub_1_3_0_t:      slti         t4, ra, 253
                  srli         a4, ra, 13
                  addi         s11, s11, 3 #update loop 0 counter
                  bltu         s11, t2, sub_1_3_0_t #branch for loop 0
                  sll          zero, a5, s0
                  addi         gp, zero, 10 #init loop 1 counter
                  ori          s1, t4, 1952
                  ori          a7, s4, -1885
                  or           s5, t3, a2
                  srl          zero, s4, s9
                  sll          a1, t3, a2
                  xori         t3, s4, 1550
                  nop
                  addi         s11, zero, 19 #init loop 1 limit
sub_1_8_1_t:      slt          zero, s8, zero
                  xor          t2, t4, t2
                  sll          s0, s4, s2
                  addi         gp, gp, 9 #update loop 1 counter
                  addi         a3, zero, -10 #init loop 0 counter
                  addi         s6, zero, 3 #init loop 0 limit
sub_1_8_0_t:      sltiu        t0, s9, -978
                  and          s8, a1, t6
                  addi         a3, a3, 7 #update loop 0 counter
                  xori         ra, s5, 1438
                  slt          t1, a7, s4
                  auipc        s0, 731376
                  bltu         a3, s6, sub_1_8_0_t #branch for loop 0
                  sra          t1, sp, sp
                  addi         a1, s0, 928
                  beq          gp, s11, sub_1_8_1_t #branch for loop 1
                  andi         zero, a7, 901
                  addi         sp, zero, 8 #init loop 1 counter
                  lui          s8, 931683
                  srli         a7, a4, 28
                  andi         s8, s3, 1865
                  sltiu        a7, t1, 804
                  nop
                  addi         s4, zero, 6 #init loop 1 limit
                  ori          t4, zero, -1372
sub_1_13_1_t:     auipc        t6, 392270
                  addi         sp, sp, -1 #update loop 1 counter
                  slli         t6, s11, 1
                  sll          s6, t3, s11
                  sltu         t6, a2, s4
                  addi         a5, zero, -9 #init loop 0 counter
                  slt          s1, t6, a3
                  srl          t1, s4, tp
                  sra          a7, tp, a2
                  andi         t0, zero, 1863
                  addi         s0, zero, -13 #init loop 0 limit
sub_1_13_0_t:     or           s5, a4, s9
                  add          a7, t6, a2
                  addi         a5, a5, -1 #update loop 0 counter
                  srl          a4, s9, a3
                  slt          s8, s11, s8
                  lui          t6, 969511
                  nop
                  beq          a5, s0, sub_1_13_0_t #branch for loop 0
                  slli         zero, sp, 8
                  bgeu         sp, s4, sub_1_13_1_t #branch for loop 1
                  auipc        tp, 139091
                  addi         t3, zero, 5 #init loop 1 counter
                  addi         tp, zero, 5 #init loop 1 limit
                  slt          a5, s3, s6
sub_1_21_1_t:     addi         s4, gp, 1498
                  addi         t3, t3, -4 #update loop 1 counter
                  addi         gp, zero, 9 #init loop 0 counter
                  addi         a7, zero, 9 #init loop 0 limit
                  lui          s1, 708023
sub_1_21_0_t:     xori         t4, zero, -1765
                  andi         a3, s8, -1512
                  addi         gp, gp, -1 #update loop 0 counter
                  bgeu         gp, a7, sub_1_21_0_t #branch for loop 0
                  andi         a5, a0, 1385
                  bgeu         t3, tp, sub_1_21_1_t #branch for loop 1
                  add          a3, zero, t0
                  addi         t3, zero, -2 #init loop 0 counter
                  sub          a6, s5, s1
                  andi         gp, s6, 569
                  addi         a7, zero, -11 #init loop 0 limit
                  sltu         t5, zero, s7
                  xori         a1, a6, -945
                  xor          a6, tp, a3
                  auipc        s8, 836326
                  sll          s8, s0, t1
sub_1_11_0_t:     or           a3, a7, t2
                  addi         t3, t3, -3 #update loop 0 counter
                  srli         t5, t6, 18
                  ori          s11, a2, -2026
                  srli         s9, s5, 24
                  nop
                  addi         a1, a5, 1444
                  xori         a3, a2, 1285
                  slti         s1, sp, -36
                  auipc        zero, 362757
                  xori         s5, s11, -1598
                  sll          a0, s3, zero
                  bne          t3, a7, sub_1_11_0_t #branch for loop 0
                  sub          s11, a5, s8
                  addi         s8, zero, -3 #init loop 0 counter
                  slt          t3, t4, tp
                  srli         s0, t2, 18
                  srli         s4, tp, 19
                  addi         s2, zero, 12 #init loop 0 limit
                  xori         s9, a4, -505
                  srli         sp, tp, 15
                  add          s4, sp, a1
sub_1_9_0_t:      sltu         s0, s0, t1
                  xor          a1, a0, a3
                  srli         t3, t2, 13
                  srli         a7, s2, 8
                  srl          s6, s5, a0
                  nop
                  xori         t5, s6, -1501
                  auipc        s6, 505452
                  xor          ra, t6, t6
                  srl          s11, gp, a7
                  ori          a1, gp, -1333
                  slti         t3, a2, -371
                  sltiu        a1, a1, 113
                  srli         a7, t6, 23
                  addi         s8, s8, 4 #update loop 0 counter
                  sub          t1, s0, s9
                  add          gp, s6, zero
                  lui          s1, 242224
                  lui          t4, 543816
                  blt          s8, s2, sub_1_9_0_t #branch for loop 0
                  srl          a4, t6, s5
                  addi         t4, zero, 2 #init loop 1 counter
                  addi         a5, zero, 13 #init loop 1 limit
sub_1_6_1_t:      nop
                  addi         t4, t4, 8 #update loop 1 counter
                  addi         tp, zero, 6 #init loop 0 counter
                  addi         a3, zero, -8 #init loop 0 limit
sub_1_6_0_t:      sltiu        s4, s3, 594
                  addi         tp, tp, -7 #update loop 0 counter
                  beq          tp, a3, sub_1_6_0_t #branch for loop 0
                  blt          t4, a5, sub_1_6_1_t #branch for loop 1
                  sltiu        s8, t6, 250
                  addi         tp, zero, -8 #init loop 0 counter
                  auipc        s9, 615712
                  ori          t5, t5, 1176
                  auipc        s8, 477438
                  slt          s11, zero, tp
                  addi         a7, zero, -19 #init loop 0 limit
sub_1_15_0_t:     xori         t5, t3, -691
                  sub          s6, s10, t4
                  addi         a6, t1, 1701
                  lui          s5, 353219
                  sltiu        t1, s9, -1041
                  addi         s9, t5, 1675
                  addi         tp, tp, -7 #update loop 0 counter
                  andi         s2, a7, 676
                  srl          a0, tp, t3
                  nop
                  bge          tp, a7, sub_1_15_0_t #branch for loop 0
                  ori          a3, t6, -1981
                  addi         t6, zero, 5 #init loop 0 counter
                  sll          a0, t5, s1
                  xor          a6, s2, s4
                  xori         a1, s8, 1981
                  addi         a7, zero, 3 #init loop 0 limit
                  xori         ra, t5, 1419
                  nop
                  nop
sub_1_19_0_t:     or           t0, s6, s11
                  sub          t3, s2, a4
                  srai         t5, s0, 30
                  srl          s9, s11, s6
                  slli         a3, gp, 15
                  sll          a4, s7, a3
                  srai         s2, t0, 1
                  andi         gp, ra, -1148
                  slt          t2, s2, gp
                  ori          s0, a1, -2027
                  addi         t0, t2, 252
                  addi         t6, t6, -2 #update loop 0 counter
                  ori          tp, s1, -1884
                  andi         a2, t2, 1357
                  and          s5, a2, tp
                  nop
                  sub          a1, a3, s9
                  srai         t4, a2, 7
                  bgeu         t6, a7, sub_1_19_0_t #branch for loop 0
                  lui          t1, 191802
                  ori          a0, s2, -68
                  xori         s11, t2, 397
                  bgeu         t0, t6, 21f
                  beq          t2, a2, 7f
                  bge          s3, s3, 6f
                  slli         a1, a5, 19
6:                bne          t6, s10, 13f
7:                sltiu        ra, t1, -734
                  bltu         s9, s3, 26f
                  or           s2, a3, gp
                  sll          sp, a7, s0
                  addi         t2, a5, -82
                  slli         a4, ra, 17
13:               srl          zero, t1, sp
                  bne          s4, zero, 26f
                  srl          gp, a4, s10
                  blt          a1, t3, 26f
                  slt          a6, a7, t5
                  srli         s9, s6, 23
                  sra          a1, s7, t5
                  beq          s11, sp, 33f
21:               sub          t1, t3, s1
                  blt          zero, zero, 28f
                  sltu         a7, s6, t1
                  add          zero, gp, t4
                  auipc        a3, 614348
26:               xor          s5, s11, a1
                  sll          s1, s2, t0
28:               bltu         t2, s11, 33f
                  srai         s5, a0, 3
                  beq          t5, s11, 42f
                  add          s8, a7, s9
                  srli         t5, a3, 21
33:               blt          a0, zero, 49f
                  sll          a5, zero, s8
                  bne          s3, s2, 41f
                  srl          s1, s11, t1
                  nop
                  xor          a7, s0, s3
                  srli         sp, s8, 31
                  and          a4, a1, t3
41:               bgeu         t2, s3, 56f
42:               srai         s2, t1, 16
                  auipc        t4, 161268
                  bne          t1, s11, 60f
                  bgeu         a7, a3, 50f
                  srl          zero, t4, s6
                  auipc        t0, 269801
                  srli         sp, a1, 0
49:               ori          a6, sp, -2021
50:               or           s0, zero, a1
                  srai         a7, ra, 23
                  slti         sp, a2, -794
                  and          s8, s11, s6
                  nop
                  blt          a4, t4, 65f
56:               bge          sp, s9, 60f
                  xori         s6, s3, 1619
                  bgeu         s8, s7, 62f
                  blt          ra, a0, 74f
60:               srai         s1, a3, 19
                  sra          a6, t4, t5
62:               slti         s0, s11, 911
                  bne          a0, t1, 78f
                  slli         a7, s2, 30
65:               sltiu        a3, t2, -1385
                  bne          t0, s0, 70f
                  auipc        a5, 671772
                  addi         t3, s0, -739
                  sll          s11, s1, s9
70:               sltu         s9, s9, s2
                  beq          t4, t3, 75f
                  xori         a0, tp, -1017
                  srli         s4, t5, 24
74:               srli         t6, s5, 23
75:               srli         s5, a1, 23
                  auipc        t6, 884156
                  andi         s1, s5, -787
78:               blt          zero, t4, 97f
                  xor          t0, a1, tp
                  sll          s4, tp, a0
                  and          s4, s1, t1
                  add          a5, s10, s11
                  or           sp, s11, t2
                  sll          s1, s1, s10
                  bge          s10, a0, 104f
                  srl          a7, a5, ra
                  bgeu         a1, a6, 103f
                  srli         s9, a5, 6
                  ori          t6, t0, -1844
                  add          t3, gp, t1
                  sub          s1, s7, s0
                  or           s2, s11, gp
                  or           s11, gp, s6
                  andi         a0, s5, -1366
                  srli         s11, s0, 17
                  srli         s9, s11, 10
97:               srli         a3, s0, 2
                  sltu         s5, zero, t3
                  lui          sp, 68777
                  srli         a4, s11, 16
                  slt          s9, t3, a0
                  sltiu        a5, sp, -1389
103:              sltu         t6, gp, a7
104:              bge          a2, t6, 121f
                  sll          t5, zero, a5
                  srli         a2, s0, 26
                  bltu         a6, s10, 116f
                  auipc        t6, 950268
                  bgeu         t0, a7, 112f
                  ori          a5, zero, -1402
                  bgeu         t3, s5, 119f
112:              and          a4, s11, a2
                  sra          s0, s10, a5
                  xori         sp, sp, 1792
                  xor          s9, gp, t1
116:              auipc        s8, 11085
                  add          t3, s6, gp
                  bgeu         s2, t4, 134f
119:              ori          gp, a4, -1904
                  slti         t3, a4, -1625
121:              add          a0, s1, s6
                  slli         tp, t6, 2
                  srli         t6, t2, 9
                  sltiu        a6, ra, 2003
                  sll          s4, ra, s3
                  sltu         tp, s4, s0
                  slli         a1, ra, 1
                  beq          s6, t2, 138f
                  sltiu        t4, s0, -12
                  sra          s11, gp, sp
                  xori         t0, a5, -1809
                  add          a5, a6, s5
                  srli         t6, s8, 9
134:              blt          s10, s3, 149f
                  xori         t1, a7, 1240
                  bge          s2, sp, 148f
                  bge          a4, s1, 144f
138:              bltu         a3, s4, 146f
                  add          t1, s11, a6
                  beq          a7, a1, 144f
                  sltu         a7, a7, t4
                  slt          s4, t3, s6
                  bne          zero, s9, 153f
144:              or           s5, s4, a1
                  andi         t3, zero, -543
146:              ori          a3, t0, 364
                  sltu         gp, a5, s3
148:              nop
149:              srli         sp, s7, 4
                  srl          a6, gp, s10
                  and          sp, a1, s0
                  slt          t4, a6, s5
153:              sltiu        t5, a7, -643
                  bltu         gp, s11, 172f
                  bltu         a1, s1, 172f
                  bge          a5, s3, 159f
                  sra          a1, s0, a3
                  nop
159:              auipc        s11, 1042282
                  xori         s4, t3, 15
                  xor          gp, s9, a4
                  srai         t5, s3, 23
                  bgeu         tp, s9, 167f
                  beq          a1, t2, 183f
                  xor          gp, gp, s5
                  sltu         s6, sp, a1
167:              add          t2, a4, s3
                  sra          zero, s3, s6
                  lui          a7, 991911
                  auipc        a1, 661295
                  addi         a6, s4, -1565
172:              bne          gp, a6, 188f
                  sltu         s11, t3, a5
                  nop
                  or           ra, t5, s4
                  xor          a4, s7, t1
                  slli         s0, s4, 9
                  sra          s1, sp, s5
                  sll          t6, s3, a2
                  nop
                  sltiu        t5, a4, -1345
                  xor          t1, s5, s6
183:              bne          s11, s10, 187f
                  auipc        sp, 141642
                  slt          tp, a7, a1
                  auipc        a1, 745769
187:              slti         a3, t3, -1963
188:              auipc        s2, 977359
                  xori         s5, s3, 1714
                  slli         s1, t0, 31
                  srai         zero, s8, 26
                  slli         sp, a7, 23
                  sll          sp, a5, zero
                  srl          gp, a4, s3
                  bge          t5, t3, 201f
                  bge          gp, a2, 202f
                  xori         s4, t3, -710
                  lui          t1, 536009
                  andi         t3, s11, -306
                  or           s11, a0, t1
201:              slli         s2, s5, 5
202:              srl          s5, t5, a1
                  bltu         s9, s2, 215f
                  sll          s6, s4, ra
                  srli         a5, s8, 11
                  auipc        a6, 557693
                  sltu         s8, a5, t4
                  srl          a0, t4, a6
                  srai         s1, s10, 28
                  sra          a1, tp, s10
                  blt          a3, s8, 215f
                  bgeu         t6, s10, 216f
                  slti         s5, t6, -1571
                  blt          gp, s1, 230f
215:              sra          s6, s9, a4
216:              bgeu         s9, t6, 225f
                  bltu         a6, a3, 232f
                  lui          a3, 656062
                  bltu         t1, sp, 232f
                  nop
                  lui          s8, 226753
                  srli         s9, s6, 11
                  ori          a0, s2, 1277
                  or           s8, t0, s0
225:              addi         s8, tp, -1160
                  slt          t2, s1, a1
                  lui          zero, 584742
                  and          a2, zero, s5
                  andi         s9, t6, -1758
230:              slli         s1, sp, 28
                  xor          t2, s1, a2
232:              bne          gp, s6, 237f
                  slti         s9, t2, -1092
                  blt          a4, t3, 253f
                  xor          a0, s8, a6
                  srl          t0, s5, a2
237:              xori         a4, s5, -617
                  srl          s4, a3, a1
                  sltiu        s2, t5, 437
                  or           t1, t4, a4
                  auipc        s2, 503731
                  ori          a1, s4, -1590
                  andi         s5, tp, 182
                  xor          a2, a4, a1
                  bge          sp, ra, 260f
                  sll          zero, a7, a0
                  sll          a0, t3, s9
                  srai         gp, s0, 6
                  bge          gp, t5, 251f
                  blt          t5, s4, 269f
251:              xor          a2, s11, s0
                  slt          t5, t6, t1
253:              blt          a5, s2, 258f
                  nop
                  and          t2, t3, s5
                  srai         t5, s7, 1
                  xor          a2, a4, t3
258:              beq          tp, t4, 262f
                  or           s8, a0, a1
260:              and          s0, a1, s10
                  sltiu        s11, s4, -1839
262:              nop
                  slli         t2, t2, 3
                  andi         zero, t5, 597
                  lui          s9, 83521
                  xori         t3, s0, -1168
                  auipc        s9, 1007278
                  srl          t2, s1, t2
269:              nop
                  sltu         s6, s9, a7
                  sra          s11, t2, s3
                  beq          s1, s4, 291f
                  beq          t5, a1, 277f
                  lui          tp, 100886
                  sll          t6, a4, s9
                  srli         s2, s10, 20
277:              bge          gp, s8, 293f
                  and          t0, s10, ra
                  addi         t6, a1, 1440
                  sll          gp, s4, s3
                  lui          a5, 563418
                  lui          s9, 11927
                  sltiu        t1, s9, 648
                  blt          s8, s3, 286f
                  beq          zero, tp, 297f
286:              addi         gp, a5, 622
                  ori          t6, s1, 1520
                  blt          s0, a3, 300f
                  and          a1, s9, a7
                  srl          t0, a6, gp
291:              xori         a7, t3, -1174
                  bgeu         sp, s1, 311f
293:              or           s8, zero, sp
                  sll          ra, a7, s3
                  addi         a3, s3, -1373
                  addi         t1, ra, 661
297:              beq          t5, s7, 303f
                  xori         a1, a3, -1893
                  bltu         s0, a7, 303f
300:              add          s5, a2, s8
                  blt          s10, a7, 319f
                  sltu         t1, s4, s6
303:              lui          zero, 926549
                  slti         a3, ra, 1005
                  beq          t0, tp, 322f
                  xor          s1, s6, t1
                  srai         s1, s3, 2
                  sub          s4, tp, t6
                  slt          t3, s5, s1
                  and          t4, s8, s0
311:              bne          s1, s8, 315f
                  bne          s0, t2, 331f
                  add          s1, s5, sp
                  bge          s1, s10, 330f
315:              bne          a0, t6, 325f
                  add          s8, s3, tp
                  andi         t0, t6, -1872
                  slti         s2, tp, 1296
319:              bltu         t1, sp, 326f
                  ori          ra, a2, -1499
                  addi         t4, t3, 1183
322:              and          s4, s0, s8
                  slli         t6, s2, 5
                  and          s9, a0, t0
325:              nop
326:              srai         a5, a0, 10
                  slt          t0, s0, t2
                  bgeu         s3, t3, 343f
                  xor          t6, a2, t1
330:              nop
331:              bne          s0, s8, 341f
                  sltiu        s11, ra, 1343
                  ori          tp, s1, 980
                  addi         s0, t5, 1613
                  lui          sp, 578949
                  srl          s2, s0, t4
                  bgeu         a2, s2, 353f
                  srli         s1, sp, 20
                  nop
                  sltu         t4, a0, s10
341:              srai         t1, s2, 10
                  sra          t2, a3, a1
343:              andi         gp, a4, -214
                  slt          t0, a7, a5
                  srai         a0, a3, 8
                  and          s9, a4, a4
                  auipc        a4, 721379
                  slli         t2, s7, 5
                  bgeu         s10, s10, 358f
                  addi         t4, s7, 799
                  bne          s8, s11, 357f
                  nop
353:              sub          s0, s10, s2
                  sra          t0, t4, ra
                  addi         t6, s6, -1511
                  and          s2, sp, t2
357:              and          t6, t6, s1
                  addi         s11, zero, 5 #init loop 1 counter
                  addi         t1, zero, -13 #init loop 1 limit
sub_1_7_1_t:      lui          t6, 666486
                  addi         s11, s11, -6 #update loop 1 counter
                  addi         a2, zero, 9 #init loop 0 counter
                  srl          zero, t0, tp
                  addi         s9, zero, 9 #init loop 0 limit
                  slt          gp, t4, t3
sub_1_7_0_t:      slt          t3, s10, s4
                  addi         a2, a2, -8 #update loop 0 counter
                  bgeu         a2, s9, sub_1_7_0_t #branch for loop 0
                  bge          s11, t1, sub_1_7_1_t #branch for loop 1
                  srl          ra, s3, a3
358:              bltu         a0, t6, 363f
                  add          a0, s6, s2
                  slli         sp, s0, 14
                  or           s0, a5, a2
                  bne          s7, sp, 367f
363:              bltu         zero, s6, 376f
                  srli         a2, ra, 27
                  bne          s5, s7, 373f
                  sltu         s5, s4, a4
367:              bltu         ra, t3, 370f
                  bne          s11, s6, 383f
                  sll          ra, a1, s4
370:              blt          s8, s7, 385f
                  and          a1, a1, t6
                  sltu         s4, zero, sp
373:              nop
                  bne          s2, s11, 378f
                  sra          s6, sp, s4
376:              lui          t3, 537519
                  sltu         zero, s10, a5
378:              slt          t4, s11, a0
                  blt          s9, s4, 394f
                  slti         ra, s1, -1825
                  bge          a0, a2, 393f
                  bne          a3, s9, 401f
383:              sub          a5, s6, t0
                  addi         s8, a0, 1223
385:              sll          t5, t1, a4
                  auipc        a0, 242192
                  or           s6, a7, a1
                  bgeu         a5, a1, 390f
                  bltu         a2, t6, 405f
390:              srai         sp, t4, 25
                  sltiu        s11, s1, 428
                  blt          s2, s11, 396f
393:              slti         s8, sp, 1102
394:              srl          sp, s6, t6
                  blt          s8, ra, 405f
396:              lui          s2, 926428
                  beq          t2, t5, 412f
                  bne          s5, a1, 403f
                  ori          t6, s9, 32
                  bltu         a7, s11, 404f
401:              xori         s4, t4, 660
                  sll          s2, t4, t3
403:              slt          a7, s5, s6
404:              slli         t3, a0, 12
405:              sub          a1, t5, s5
                  auipc        tp, 122696
                  blt          ra, a0, 425f
                  blt          s1, s3, 423f
                  srai         ra, zero, 31
                  add          s8, tp, s7
                  slt          a0, zero, a6
412:              ori          s1, t1, -1364
                  blt          s9, s6, 419f
                  lui          s8, 1022301
                  and          s8, s0, a6
                  sra          s0, s2, t1
                  or           s8, s2, t0
                  sll          t4, zero, t4
                  addi         s2, zero, -8 #init loop 1 counter
                  auipc        t1, 924714
                  and          t4, s4, t6
                  lui          a0, 763688
                  slt          a1, sp, t4
                  addi         s11, zero, -17 #init loop 1 limit
                  and          s5, t2, t6
sub_1_10_1_t:     xori         s6, s2, -1285
                  addi         s2, s2, -1 #update loop 1 counter
                  addi         s0, zero, -9 #init loop 0 counter
                  nop
                  sll          a4, a0, t5
                  addi         gp, zero, 9 #init loop 0 limit
sub_1_10_0_t:     slt          zero, s6, t3
                  sra          t4, s6, s6
                  addi         s0, s0, 10 #update loop 0 counter
                  bltu         s0, gp, sub_1_10_0_t #branch for loop 0
                  nop
                  bge          s2, s11, sub_1_10_1_t #branch for loop 1
                  xori         t3, t6, -319
419:              bgeu         ra, s4, 438f
                  bne          s8, a1, 430f
                  beq          s9, s6, 434f
                  srai         t2, s3, 20
423:              and          s1, s0, a0
                  or           s4, s4, s2
425:              auipc        s9, 795220
                  sub          sp, s9, t5
                  sltu         t5, a6, sp
                  bge          t0, s4, 432f
                  addi         s8, t0, -1766
430:              bltu         s9, t0, 435f
                  beq          a7, s4, 438f
432:              bgeu         a0, t2, 448f
                  xor          s4, s11, t4
434:              sltiu        s8, s5, 1103
435:              sub          a0, s8, a6
                  sll          zero, ra, s9
                  sll          s11, s6, s7
438:              xori         a0, a4, 1390
                  addi         t1, zero, 10 #init loop 0 counter
                  sltu         zero, sp, s4
                  srl          gp, t0, a3
                  or           s8, t6, zero
                  sltiu        s9, tp, -887
                  xor          t3, a1, s9
                  addi         s6, zero, 7 #init loop 0 limit
sub_1_2_0_t:      auipc        s0, 359117
                  sub          s5, s11, ra
                  slti         tp, a3, 750
                  addi         t1, t1, -1 #update loop 0 counter
                  ori          t4, a7, 1654
                  ori          a5, s1, -48
                  sub          a5, s9, a5
                  slti         s8, t0, -248
                  xor          s5, sp, a1
                  bgeu         t1, s6, sub_1_2_0_t #branch for loop 0
                  sra          a0, t0, s1
                  andi         a6, gp, -198
                  srl          a2, a6, a7
                  srai         t3, t3, 24
                  lui          t0, 117947
                  xori         a3, s10, 1789
                  sub          t6, a1, a0
                  slt          a1, a3, a6
                  or           s4, a5, s5
                  sll          gp, a7, ra
448:              addi         s2, s0, 1852
                  bne          t1, t5, 453f
                  sltiu        t3, s8, 789
                  slli         a0, a7, 25
                  srai         t5, s11, 10
453:              sltiu        a6, a2, 377
                  nop
                  bltu         a3, s11, 471f
                  lui          s1, 984583
                  nop
                  ori          a7, a0, -1728
                  beq          s9, gp, 468f
                  sra          a3, t6, ra
                  xor          t3, t0, t0
                  or           a6, t1, t3
                  lui          ra, 920625
                  sltu         gp, a5, zero
                  addi         a1, t1, -294
                  nop
                  add          a4, gp, a1
468:              srl          a7, s9, a0
                  nop
                  bgeu         t5, s0, 476f
471:              add          a0, t1, ra
                  blt          a1, a2, 484f
                  srl          s11, tp, t4
                  addi         t2, s9, -2005
                  andi         sp, a6, -1670
476:              slt          s11, gp, t4
                  srai         s9, s2, 25
                  bne          t6, zero, 481f
                  andi         s1, t0, 355
                  srli         s5, t1, 19
481:              nop
                  sll          s2, s3, a4
                  nop
484:              srli         s11, zero, 21
                  addi         tp, s4, -1197
                  sra          a0, t4, a1
                  xori         s8, s6, -1196
                  sll          a2, s8, t2
                  add          s4, s0, a3
                  sra          a3, t3, s5
                  xor          a3, tp, zero
                  and          s6, t1, s11
                  slti         t0, a5, -1102
                  sltu         s1, s4, ra
                  slt          ra, s4, a5
                  bne          s0, gp, 504f
                  slt          s0, sp, zero
                  srli         s2, s8, 18
                  bgeu         s9, zero, 503f
                  ori          s11, a0, 228
                  or           a6, ra, s2
                  bltu         tp, s8, 521f
503:              sll          s5, s1, t2
504:              sra          a0, s2, s3
                  bge          ra, s2, 522f
                  or           t0, s5, s11
                  and          s1, s2, tp
                  sltu         a5, s9, s5
                  xor          gp, s2, t6
                  auipc        a6, 870608
                  auipc        a6, 962975
                  beq          a4, a7, 517f
                  add          a5, s2, ra
                  blt          t2, tp, 523f
                  lui          s0, 326513
                  srl          s2, a6, a4
517:              addi         t3, a0, -1763
                  sra          t2, t0, zero
                  and          tp, s2, a3
                  auipc        s11, 365990
521:              srl          a5, t0, s0
522:              sltiu        s4, s11, -1671
523:              blt          s5, a0, 538f
                  andi         s8, t3, -438
                  nop
                  slt          s9, s10, gp
                  lui          sp, 855604
                  nop
                  sra          s4, s0, s1
                  or           s6, t0, t4
                  beq          s7, a4, 548f
                  ori          s11, s11, 255
                  slt          t3, a1, t1
                  slt          zero, s6, tp
                  blt          s8, a2, 554f
                  auipc        t4, 137999
                  or           tp, s3, s0
538:              sltu         s8, sp, ra
                  add          gp, s5, s10
                  xor          a6, gp, s3
                  ori          ra, t1, -1395
                  andi         ra, t5, -1727
                  auipc        t4, 621762
                  ori          zero, sp, 908
                  andi         gp, gp, -1845
                  slli         s4, a0, 31
                  slli         s1, t4, 21
548:              add          t4, s0, a6
                  nop
                  and          t2, t2, s8
                  sll          t1, t0, ra
                  sltu         zero, tp, s1
                  sll          a5, s10, t5
554:              sltiu        a0, s5, 855
                  sltu         t2, a1, s8
                  slti         a1, a0, 1575
                  srl          t6, s0, s6
                  andi         sp, t6, -1445
                  nop
                  add          t1, t3, a3
                  add          a3, a4, a0
                  bne          t6, sp, 566f
                  ori          a3, ra, 1921
                  and          s2, sp, tp
                  slli         t3, t3, 22
566:              slt          a6, t2, s3
                  beq          a7, a4, 579f
                  or           s1, a7, tp
                  srl          t4, tp, t5
                  slti         gp, t6, -1817
                  and          tp, t0, a6
                  bgeu         zero, tp, 591f
                  sra          a5, gp, s5
                  lui          s4, 38877
                  nop
                  bgeu         a0, s5, 582f
                  addi         a0, zero, 1 #init loop 0 counter
                  slti         t5, tp, -509
                  srli         t2, t3, 4
                  addi         tp, zero, 3 #init loop 0 limit
                  or           t5, a3, sp
                  xor          s1, t4, s4
sub_1_17_0_t:     add          t4, a1, a0
                  and          s11, sp, t0
                  srl          s11, s8, sp
                  xori         a7, a7, -1308
                  slt          t1, s5, s9
                  addi         a0, a0, 8 #update loop 0 counter
                  slt          t5, s5, s7
                  slti         a7, t4, 121
                  slti         t1, s9, 211
                  auipc        s2, 479779
                  srai         t4, t2, 12
                  sltu         s2, a1, t2
                  bltu         a0, tp, sub_1_17_0_t #branch for loop 0
                  or           s9, sp, s1
                  add          s5, t3, t5
                  or           s5, s9, a2
579:              or           s0, t4, a7
                  ori          s5, t6, 1885
                  blt          zero, zero, 588f
582:              and          tp, s6, s6
                  srl          a4, gp, s6
                  bgeu         s2, s3, 589f
                  auipc        zero, 144969
                  bge          s5, t5, 602f
                  sltu         a4, t6, s8
588:              andi         a4, s3, -1989
589:              sll          s9, t4, t4
                  lui          s6, 361454
591:              slli         zero, s2, 16
                  lui          t2, 517088
                  blt          s0, s7, 609f
                  bne          s10, a1, 607f
                  ori          t5, t3, -999
                  sltiu        t3, ra, -289
                  lui          t5, 282104
                  andi         t1, zero, -1494
                  add          s6, s9, s1
                  andi         s4, s2, 1613
                  bgeu         s1, a5, 605f
602:              or           a7, s7, a4
                  slli         a5, t2, 18
                  bgeu         s10, s6, 608f
605:              srl          ra, sp, s10
                  blt          sp, t6, 621f
607:              slti         t3, s10, -1577
608:              srai         s2, t2, 7
609:              bltu         t6, s10, 625f
                  bltu         s4, t5, 622f
                  slti         a1, a1, 458
                  or           s5, a2, s1
                  beq          s11, zero, 628f
                  sltiu        ra, s3, -56
                  or           t0, s1, a2
                  bgeu         s6, s6, 619f
                  srl          s2, t4, t0
                  nop
619:              sltu         s0, zero, t5
                  xori         a4, t5, -1535
621:              blt          s8, a7, 640f
622:              bge          a0, a0, 626f
                  slt          zero, a1, s1
                  andi         t1, zero, -1381
625:              srli         t6, t1, 19
626:              sra          a7, s0, t1
                  bltu         a7, s10, 645f
628:              sltiu        a0, s5, 1133
                  bge          tp, a1, 637f
                  slli         s0, a5, 15
                  slti         s2, ra, 1264
                  srai         ra, s6, 26
                  and          s6, t4, a6
                  and          t2, a1, s4
                  sll          t5, s3, s3
                  slli         t0, s10, 30
637:              lui          a4, 655979
                  sub          a0, s6, t0
                  sltu         sp, t5, t5
640:              auipc        s8, 529780
                  or           sp, ra, s11
                  slti         s2, s5, 728
                  add          a0, a1, s2
                  nop
645:              slt          ra, gp, tp
                  lui          s4, 620320
                  sra          t4, t1, s7
                  bne          ra, t0, 652f
                  blt          s6, s7, 651f
                  beq          t4, tp, 656f
651:              sra          s11, s3, a1
652:              xor          t3, t4, a5
                  slli         zero, s1, 18
                  ori          s0, a6, 1028
                  bltu         a3, t1, 665f
656:              bne          s9, a2, 666f
                  bgeu         a7, t3, 660f
                  or           s0, t4, t1
                  and          a2, t1, s4
660:              xor          s0, s1, t1
                  beq          ra, ra, 673f
                  bgeu         s11, s0, 666f
                  srli         a5, a3, 14
                  ori          t4, a0, -784
665:              auipc        t4, 871841
666:              addi         s6, s8, 1485
                  sra          t5, sp, t2
                  sra          s9, sp, s0
                  slt          t0, a4, s9
                  andi         s9, a1, -702
                  addi         a0, s6, -370
                  nop
673:              bne          gp, t6, 677f
                  xor          t0, s9, s5
                  srli         tp, a0, 11
                  addi         a2, zero, 7 #init loop 0 counter
                  sll          s2, sp, t5
                  andi         a7, a6, 1489
                  addi         a6, zero, 7 #init loop 0 limit
                  sra          sp, s11, gp
sub_1_0_0_t:      addi         a5, t1, -1959
                  sra          ra, a6, s9
                  addi         a2, a2, -5 #update loop 0 counter
                  bgeu         a2, a6, sub_1_0_0_t #branch for loop 0
                  auipc        s11, 144747
                  or           s4, s8, s4
677:              add          s0, t2, a4
                  slt          s2, t2, a7
                  bne          s7, s3, 698f
                  xori         t0, s6, -525
                  slti         a3, gp, 861
                  addi         tp, a5, 624
                  andi         t6, zero, 239
                  nop
                  sub          ra, t1, s0
                  bgeu         s1, gp, 698f
                  sra          a7, ra, a5
                  auipc        t1, 740228
                  xor          s1, t0, s6
                  add          t0, s8, s8
                  addi         t4, sp, -814
                  andi         ra, s0, 1253
                  slti         t5, s4, 1567
                  srl          s1, a0, a4
                  slli         zero, sp, 28
                  slt          s11, s7, s8
                  sltu         a2, s3, s10
698:              add          a6, t3, t1
                  xor          s0, tp, s10
                  bgeu         a2, a2, 715f
                  bgeu         a7, s9, 705f
                  bge          t5, gp, 710f
                  lui          gp, 280942
                  sll          s11, t6, s9
705:              xor          a0, s2, s6
                  sltu         t3, t1, s5
                  sltu         a5, zero, s3
                  and          a2, ra, a3
                  ori          tp, s9, 733
710:              lui          s4, 1043229
                  and          s1, s4, sp
                  auipc        zero, 521152
                  nop
                  andi         a7, tp, -1679
715:              add          s9, a4, sp
                  and          t5, s5, t0
                  xori         t0, t0, -791
                  xori         s9, t2, -785
                  sra          gp, a4, a6
                  xori         a2, tp, 1919
                  nop
                  blt          a4, a3, 740f
                  bgeu         gp, a0, 729f
                  slti         s11, s0, 1699
                  sra          tp, s4, a6
                  blt          a7, t5, 731f
                  nop
                  slli         s9, s9, 30
729:              and          t4, s5, a7
                  nop
731:              sltu         t2, t3, s8
                  lui          a2, 597809
                  and          s2, a5, zero
                  bltu         a0, t1, 744f
                  xori         a1, s8, 1936
                  bgeu         a1, a7, 753f
                  sltiu        zero, s11, -295
                  auipc        s8, 782161
                  andi         a0, zero, -1269
740:              srl          sp, a6, gp
                  lui          t3, 636447
                  bge          t4, s7, 751f
                  and          a7, zero, sp
744:              xori         t2, a4, 170
                  nop
                  slti         zero, ra, -1323
                  xori         a1, t4, 1146
                  xor          sp, s0, gp
                  slti         a1, tp, 1341
                  nop
751:              sltiu        t1, gp, -1792
                  srl          ra, a4, a7
753:              srl          ra, a2, s8
                  slti         ra, a6, -389
                  or           t0, s9, s9
                  bge          s4, s0, 762f
                  bne          a3, a2, 776f
                  nop
                  add          s4, t3, s7
                  srli         ra, t4, 24
                  and          t3, s10, s1
762:              xori         s4, s5, 1639
                  addi         t6, ra, -1103
                  nop
                  andi         t3, sp, 1623
                  xor          t2, t5, s7
                  beq          s3, t6, 780f
                  and          s0, gp, s5
                  addi         t4, tp, -439
                  auipc        a4, 453804
                  srai         a3, tp, 17
                  xori         t1, s9, -652
                  ori          a5, s11, 1546
                  srli         s4, t2, 17
                  beq          a4, s9, 791f
776:              or           t1, s2, a1
                  srl          s1, s8, sp
                  slli         s5, gp, 20
                  blt          s2, s3, 794f
780:              or           s0, a7, s9
                  slt          t4, a1, t0
                  bne          a0, t1, 786f
                  blt          tp, zero, 799f
                  or           a7, a6, a0
                  lui          t1, 421925
786:              sra          t2, gp, a1
                  andi         s6, s10, 700
                  srai         a0, t1, 25
                  bge          s3, t3, 791f
                  or           t3, s6, sp
791:              srl          s1, s4, s10
                  sra          a3, a7, a2
                  sltu         a4, s7, t2
794:              slt          a0, t1, s4
                  ori          a4, s6, 68
                  bge          s6, s0, 800f
                  beq          t2, sp, 812f
                  sra          t4, s6, s3
799:              bltu         a0, a7, 804f
800:              beq          s8, gp, 819f
                  bne          t5, a7, 811f
                  blt          sp, a5, 809f
                  or           tp, sp, tp
804:              slt          t5, s5, s2
                  ori          sp, t4, -2027
                  and          s0, ra, t1
                  bgeu         s4, s9, 823f
                  ori          t5, t1, -383
809:              srli         s11, t0, 25
                  slt          sp, zero, a1
811:              xori         a7, a2, -30
812:              beq          s4, s5, 822f
                  bge          t2, s6, 825f
                  slti         s9, sp, -213
                  nop
                  slti         zero, s7, 955
                  sll          gp, t5, s3
                  or           s5, s8, s2
819:              xor          s11, a6, s1
                  bne          a7, s8, 824f
                  addi         ra, zero, 8 #init loop 0 counter
                  slli         s5, s9, 8
                  sll          t3, s6, t3
                  slli         t1, a0, 8
                  addi         t2, zero, 8 #init loop 0 limit
                  slti         sp, s7, 13
                  or           t0, sp, s4
sub_1_5_0_t:      sub          gp, s1, a7
                  sltiu        s8, s6, 1378
                  addi         a4, zero, -1520
                  addi         ra, ra, -6 #update loop 0 counter
                  sltu         s11, a3, s3
                  slt          t0, a5, t3
                  nop
                  sll          s11, a1, a3
                  bgeu         ra, t2, sub_1_5_0_t #branch for loop 0
                  ori          s2, s7, -1847
                  addi         s6, a4, -605
822:              srl          a0, s3, t1
823:              slt          a6, s4, s0
824:              srai         t5, s7, 5
825:              nop
                  bltu         t5, t6, 842f
                  slli         a6, a5, 9
                  addi         sp, a5, -820
                  or           s0, a0, zero
                  sll          zero, a3, t5
                  add          s6, s1, t4
                  or           t1, t3, a6
                  slt          s4, s3, zero
                  bge          a0, s4, 838f
                  slt          t3, s10, tp
                  beq          ra, t3, 840f
                  sltiu        t6, a1, -1846
838:              addi         a4, t3, -1656
                  xor          a1, tp, a3
840:              slti         a1, a6, 1293
                  sub          t2, a0, tp
842:              srl          a1, t3, s7
                  nop
                  xor          t6, zero, s3
                  sltu         s6, s4, s6
                  slti         s2, s10, -173
                  or           t2, s6, sp
                  andi         s0, a0, -1135
                  sltiu        a3, s11, 1849
                  xor          s0, t2, sp
                  sub          a3, sp, t3
                  sra          s6, sp, s1
                  xor          s1, a5, sp
                  bgeu         s5, s7, 856f
                  auipc        s1, 692417
856:              slt          t6, s8, t4
                  srai         a6, a0, 4
                  srai         a5, s4, 0
                  slti         s4, s6, -912
                  beq          s9, tp, 877f
                  sll          t0, s6, a3
                  bge          a1, s4, 871f
                  beq          s8, s0, 876f
                  ori          t6, s8, 1179
                  sltiu        a4, s8, 1748
                  lui          t4, 531012
                  bgeu         t2, a2, 872f
                  lui          s1, 619926
                  or           s8, a0, s10
                  xori         tp, a4, 617
871:              bne          zero, s10, 874f
872:              bge          s9, s1, 879f
                  sltu         a5, t3, s8
874:              lui          ra, 54927
                  xor          s1, gp, ra
876:              nop
877:              lui          t2, 595158
                  bgeu         t4, gp, 896f
879:              slli         sp, a0, 27
                  addi         s5, a3, -1733
                  slli         s0, s11, 26
                  sll          sp, t5, s4
                  beq          s1, t6, 895f
                  addi         a7, t2, 1765
                  srli         a1, s10, 22
                  ori          s9, s2, 1542
                  bne          t2, zero, 906f
                  lui          s11, 141417
                  andi         a7, s0, 1713
                  xori         t3, s2, 1291
                  sltiu        t2, a3, -1390
                  bgeu         t1, s3, 900f
                  srli         a7, t3, 12
                  andi         t2, t3, -124
895:              sub          s9, t2, a6
896:              xori         t2, gp, -1509
                  sll          sp, a5, s2
                  or           a0, a1, t1
                  sub          t3, tp, t5
900:              slt          a2, s2, s0
                  sltiu        a1, t5, 713
                  addi         a6, a5, 1076
                  sub          s5, s11, a4
                  xor          s4, s4, s5
                  srli         a4, s5, 5
906:              srai         a6, s5, 29
                  srai         t1, s4, 4
                  sub          s4, t1, s6
                  lui          a6, 603392
                  slli         t6, t5, 23
                  xori         zero, a3, 1678
                  bne          t4, s1, 928f
                  lui          s9, 735043
                  xori         s6, ra, 1288
                  lui          t2, 364930
                  slli         a4, a1, 26
                  nop
                  srl          a7, s6, a5
                  and          a7, a5, tp
                  ori          a5, t5, 1541
                  sltiu        t6, s1, -916
                  slli         a0, s4, 15
                  sltiu        sp, t4, -1357
                  slti         t3, t4, -666
                  beq          t5, a0, 941f
                  bne          t3, s0, 932f
                  bgeu         sp, t1, 931f
928:              blt          s0, tp, 932f
                  sra          sp, t1, s6
                  slti         s9, a7, 1208
931:              nop
932:              slt          a3, t6, zero
                  addi         a2, t0, -1457
                  auipc        t3, 626218
                  xori         t6, t6, -1097
                  lui          s4, 728298
                  sll          a1, sp, a0
                  bge          ra, s6, 943f
                  addi         s4, s5, 248
                  auipc        zero, 37520
941:              sra          t2, s0, s0
                  bltu         a1, gp, 952f
943:              sltiu        a4, s7, -1415
                  and          s6, t5, s2
                  srli         a0, s3, 11
                  beq          t5, tp, 952f
                  bltu         ra, s5, 962f
                  bgeu         a0, a3, 963f
                  sra          t1, ra, ra
                  xor          s9, s2, s0
                  andi         s0, a2, -1872
952:              slli         a3, t4, 6
                  nop
                  sll          s1, a0, s8
                  beq          t0, s11, 970f
                  xori         s1, a5, -697
                  bne          s9, t3, 976f
                  or           a3, tp, s7
                  srl          a4, sp, s5
                  add          s6, a3, s4
                  bge          a2, t0, 980f
962:              sub          s9, a6, s6
963:              sll          a2, a7, s8
                  slli         a7, sp, 9
                  xor          t4, ra, s3
                  bgeu         tp, a0, 984f
                  sltiu        sp, a2, -938
                  bgeu         a4, s6, 980f
                  srai         s11, s9, 11
970:              sub          a1, s3, s11
                  srai         t3, a3, 29
                  srl          s4, s3, s9
                  xor          a5, s10, gp
                  slt          zero, a5, t1
                  addi         s1, s2, 995
976:              addi         a6, t0, -1156
                  beq          t6, a6, 981f
                  bge          s0, gp, 982f
                  nop
980:              nop
981:              lui          s4, 1042921
982:              lui          s0, 242845
                  blt          s4, a5, 998f
984:              sltu         a2, gp, s7
                  xori         tp, a2, -866
                  or           t3, t5, a2
                  slt          s11, tp, a6
                  addi         a3, s2, 1481
                  add          s0, s9, tp
                  or           t1, s3, a5
                  sltiu        s9, a0, -1836
                  xori         s1, s7, 1055
                  andi         t3, t0, -901
                  srai         sp, sp, 17
                  add          s4, a5, s8
                  bgeu         a1, sp, 998f
                  xor          t5, sp, tp
998:              andi         a6, a4, -1037
                  srli         s2, ra, 16
                  srl          s8, gp, t0
                  sra          s8, a6, s7
                  slt          t4, s7, t3
                  slli         t3, s2, 9
                  and          s1, t0, s4
                  bge          t4, t4, 1017f
                  slti         t3, t4, 1882
                  slti         t0, t0, 826
                  xori         s0, a1, 238
                  blt          t1, tp, 1028f
                  bgeu         t0, t3, 1025f
                  or           s0, s8, a5
                  sltiu        a2, s8, 751
                  ori          a1, sp, -1938
                  blt          zero, s0, 1033f
                  bltu         ra, a5, 1022f
                  ori          a4, a0, -427
1017:             auipc        t4, 726513
                  srli         t2, s10, 12
                  beq          a7, tp, 1025f
                  bne          s0, a4, 1036f
                  and          ra, zero, a7
1022:             slt          s1, s11, s0
                  add          s9, t2, s6
                  xor          ra, a0, t0
1025:             add          s6, a4, t2
                  sra          t6, s8, s5
                  sltiu        s8, t4, -847
1028:             sub          sp, s8, t2
                  sltiu        a2, s5, 153
                  bge          t2, ra, 1038f
                  add          t3, zero, a6
                  sra          s9, gp, sp
1033:             beq          t4, zero, 1037f
                  sub          a5, s4, s1
                  ori          s8, t3, 57
1036:             xori         s5, s9, -591
1037:             xori         a2, ra, 16
1038:             xori         t1, a5, -1057
                  andi         a2, t1, 390
                  lui          a6, 781296
                  slti         s11, t1, -685
                  ori          t0, t0, -1697
                  nop
                  sll          s6, t3, s1
                  bge          a0, s7, 1051f
                  bge          s5, a4, 1062f
                  auipc        gp, 281652
                  bgeu         t5, s10, 1051f
                  sll          s0, s7, s11
                  bne          s0, t6, 1060f
1051:             slli         t5, s0, 21
                  or           t5, ra, t6
                  ori          gp, a4, -1981
                  add          t6, a5, a0
                  slti         s1, a4, -492
                  andi         s4, s11, -884
                  beq          s3, a1, 1061f
                  xor          a2, s5, a5
                  or           t4, t2, a3
1060:             xor          a3, a7, s6
1061:             sltu         tp, a7, t0
1062:             sll          t4, s10, s6
                  addi         ra, s9, 610
                  sra          a2, s10, a6
                  blt          a4, a0, 1070f
                  bne          t2, a3, 1071f
                  sll          a4, t0, gp
                  bgeu         s11, s9, 1084f
                  bge          t1, t4, 1078f
1070:             bltu         sp, a6, 1085f
1071:             sub          t4, t0, a5
                  xor          s1, s2, ra
                  and          zero, t6, a2
                  sll          a4, s3, t0
                  sll          s1, s6, s4
                  sub          a4, a6, a4
                  blt          a1, a7, 1094f
1078:             bne          a6, t0, 1097f
                  nop
                  bltu         s2, s8, 1090f
                  sltu         s5, s5, s0
                  addi         ra, t5, 316
                  and          a6, a4, tp
1084:             srli         tp, a7, 13
1085:             ori          s5, s6, -1953
                  slti         a7, a7, -1967
                  sltu         s2, gp, sp
                  sra          a3, tp, t6
                  slti         a3, tp, 1753
1090:             slt          s8, a4, t6
                  srai         s1, a2, 13
                  nop
                  srl          a5, t4, s8
1094:             blt          a1, a6, 1107f
                  lui          s6, 551320
                  sltiu        a2, a5, -1647
1097:             nop
                  sltiu        t0, s7, 1250
                  slt          tp, t1, a3
                  sra          t1, t3, a5
                  slti         a1, s9, -150
                  sll          a3, a0, s11
                  srl          a1, s8, zero
                  ori          zero, t6, -6
                  nop
                  nop
1107:             bltu         t4, s7, 1111f
                  slli         a0, t5, 30
                  srl          t4, s7, t5
                  srai         t0, t4, 21
1111:             beq          t6, s10, 1123f
                  lui          s11, 784662
                  srai         s5, t5, 8
                  addi         a3, t5, 529
                  or           s5, a1, a0
                  xor          a3, s8, s8
                  andi         s9, s8, 1650
                  nop
                  beq          gp, s4, 1134f
                  xori         a2, sp, 2006
                  auipc        t1, 554956
                  bgeu         t1, t0, 1135f
1123:             addi         a1, t4, 1259
                  or           s2, t1, zero
                  slli         t0, t5, 12
                  xor          s6, s6, s0
                  andi         a7, t1, 1618
                  nop
                  add          a1, gp, s11
                  bgeu         tp, s6, 1135f
                  nop
                  nop
                  auipc        gp, 194842
1134:             slti         t5, zero, 1840
1135:             slt          a3, zero, t0
                  lw           t1, 4(s10)
                  auipc        t4, 773658
                  andi         s1, s3, -1761
                  addi         s10, s10, 20
                  srl          a1, gp, t0
                  srai         s5, s8, 9
                  srai         a0, t4, 6
1595:             addi x1, x6, 1
1595:             jalr x1, x1, 0
sub_2:            sra          s5, ra, s2
                  and          s2, s9, a2
                  xori         ra, a1, -1718
                  sll          a6, s4, t6
                  ori          t6, s9, 1673
                  addi         s10, s10, -24
                  sw           t1, 4(s10)
                  sra          a6, zero, s6
                  lui          a5, 148062
                  sltu         a3, s0, a3
                  nop
                  srl          s1, s2, s8
                  slti         s8, s0, 652
                  lui          a6, 433498
                  sltu         a6, s1, a7
                  srl          t2, tp, a7
                  or           gp, s1, a1
                  ori          a1, s10, -1058
                  sltu         s6, t2, a1
                  bltu         s1, s9, sub_2_j4 #branch to jump instr
                  addi         t2, t2, -187
sub_2_j4:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  auipc        t0, 240352
                  bge          a3, t3, 18f
                  slt          a6, a0, a6
                  beq          s10, t2, 10f
                  xori         s11, s7, -742
                  xor          s11, t0, s2
                  nop
                  andi         a3, t3, -1283
                  and          s4, a1, a4
                  add          a3, t2, s11
10:               lui          ra, 8094
                  nop
                  sra          t0, sp, t0
                  sub          ra, s11, tp
                  slli         t1, t4, 1
                  srai         t6, a2, 28
                  andi         a2, sp, 993
                  sra          s4, t6, a1
18:               srai         zero, t1, 14
                  blt          zero, t6, 34f
                  addi         a4, s5, -1590
                  sltu         tp, t2, s6
                  bge          s7, a7, 30f
                  nop
                  sra          s8, t1, s10
                  srai         t0, a4, 23
                  and          a0, s0, s5
                  auipc        s8, 801933
                  sll          t1, a7, s6
                  sll          gp, t4, t5
30:               and          t3, t4, a2
                  add          a2, a3, s11
                  srai         ra, a0, 12
                  sltu         a3, s11, s7
34:               srl          s9, gp, s10
                  sll          s0, s4, t3
                  sra          zero, s1, s10
                  blt          a4, s10, 41f
                  slli         a6, sp, 1
                  slli         s4, ra, 6
                  beq          gp, zero, 41f
41:               srl          t2, tp, s1
                  sltu         a7, a5, t5
                  nop
                  bge          s2, zero, 46f
                  xor          s6, t4, s10
46:               srli         sp, a6, 25
                  lw           t1, 4(s10)
                  srl          t2, s11, s11
                  sltiu        s9, s2, -1041
                  lui          a0, 813361
                  addi         s10, s10, 24
                  auipc        s11, 575751
                  andi         s4, a5, 668
                  or           a4, s1, a0
                  or           sp, s11, s4
78:               addi x29, x6, 0
78:               jalr x29, x29, 0
sub_4:            sub          a0, s9, t0
                  nop
                  addi         s10, s10, -52
                  slli         t0, a7, 21
                  xor          zero, a2, t2
                  sw           t1, 4(s10)
                  xor          t5, zero, s11
                  addi         s9, s7, 1119
                  ori          t3, a3, 49
                  srli         a4, a5, 11
                  or           t6, t6, s2
                  xori         s1, s2, -449
                  lui          t0, 978384
                  sra          zero, s10, a0
                  slli         tp, t4, 18
                  slli         t1, s7, 1
sub_4_j6:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  addi         s6, zero, -9 #init loop 1 counter
                  addi         s11, zero, 7 #init loop 1 limit
                  lui          s2, 749764
                  nop
sub_4_1_1_t:      sltiu        s0, a1, -2013
                  nop
                  addi         s6, s6, 2 #update loop 1 counter
                  xor          sp, t6, s8
                  addi         a2, zero, 2 #init loop 0 counter
                  addi         a5, zero, -16 #init loop 0 limit
                  srli         t4, s5, 29
sub_4_1_0_t:      addi         a1, s2, 761
                  addi         a2, a2, -2 #update loop 0 counter
                  ori          a6, s0, 1525
                  beq          a2, a5, sub_4_1_0_t #branch for loop 0
                  and          a1, a5, a7
                  sra          a0, t4, a3
                  blt          s6, s11, sub_4_1_1_t #branch for loop 1
                  slt          t6, s11, ra
                  addi         a7, zero, 10 #init loop 1 counter
                  addi         t0, zero, 10 #init loop 1 limit
                  sub          a3, s8, s1
                  srl          s8, sp, a7
                  sub          s11, s0, s9
sub_4_0_1_t:      ori          a6, a0, 739
                  srl          gp, a3, a2
                  addi         a7, a7, -8 #update loop 1 counter
                  addi         a5, zero, 6 #init loop 0 counter
                  addi         t5, zero, 6 #init loop 0 limit
sub_4_0_0_t:      auipc        t4, 802186
                  sub          s11, s3, s11
                  addi         a5, a5, -5 #update loop 0 counter
                  auipc        a3, 941479
                  srai         a0, a4, 24
                  sll          a2, t1, s10
                  sll          a4, s6, a7
                  bgeu         a5, t5, sub_4_0_0_t #branch for loop 0
                  and          ra, s10, s1
                  or           s9, t5, a0
                  nop
                  slt          t6, s4, a0
                  bgeu         a7, t0, sub_4_0_1_t #branch for loop 1
                  srai         a3, sp, 11
                  addi         s11, zero, -10 #init loop 0 counter
                  sltiu        s9, a6, -1660
                  auipc        a4, 751545
                  nop
                  auipc        zero, 351233
                  xor          a3, s1, sp
                  andi         t1, s4, -1295
                  slti         a2, a6, 889
                  addi         s8, zero, 8 #init loop 0 limit
                  sub          t2, s7, t3
                  nop
                  srai         s0, s5, 24
                  nop
sub_4_2_0_t:      auipc        a7, 401794
                  sltiu        s6, s11, 218
                  addi         s11, s11, 7 #update loop 0 counter
                  srl          s1, tp, s4
                  sltiu        sp, a0, -1643
                  andi         a7, a7, 1693
                  blt          s11, s8, sub_4_2_0_t #branch for loop 0
                  xor          ra, s0, s5
                  ori          gp, s10, 299
                  sra          t1, s5, t1
                  srai         t0, t3, 9
                  slti         s2, s11, 143
                  and          a1, a3, s3
                  ori          t5, a1, -134
                  lui          a4, 469647
                  bge          s7, s0, 16f
                  xori         s0, a3, 846
                  blt          s5, t2, 13f
                  ori          s8, a7, -1500
                  sra          s0, a4, a7
                  auipc        a7, 935167
13:               sltiu        a5, a0, -1618
                  srai         s4, tp, 19
                  bgeu         a2, a1, 22f
16:               addi         t0, a2, 1969
                  auipc        a3, 86711
                  bltu         a2, s1, 20f
                  bgeu         s5, s2, 21f
20:               bltu         ra, t2, 35f
21:               auipc        ra, 476681
22:               sltu         a6, ra, t4
                  lui          s6, 438065
                  slli         sp, ra, 25
                  srl          s8, a0, s2
                  slti         a0, gp, -481
                  lui          s4, 246615
                  add          t0, a0, s8
                  xori         s1, t5, -1697
                  beq          ra, t6, 50f
                  srli         a7, a6, 11
                  add          gp, s5, a3
                  andi         s5, t1, 39
                  andi         a1, zero, 593
35:               add          a7, t0, s6
                  or           s5, a4, s5
                  nop
                  and          s9, s11, s2
                  slt          a4, s5, gp
                  sra          t4, s6, s10
                  bge          s11, a4, 47f
                  sll          a3, a1, a2
                  sltu         t0, s3, s9
                  beq          t5, t2, 57f
                  add          s6, s2, a0
                  srl          a3, t4, t2
47:               sltu         a1, t1, s7
                  sub          a1, t2, t2
                  andi         a0, s5, 1910
50:               add          s8, a1, a5
                  slti         zero, t1, 1852
                  lui          tp, 439442
                  sltiu        t4, s9, -1459
                  slti         t4, a2, 1026
                  beq          ra, t2, 57f
                  andi         t1, sp, -918
57:               srai         s11, sp, 0
                  slt          s0, s6, s8
                  sub          t0, tp, zero
                  bne          s11, a0, 73f
                  beq          s11, s0, 72f
                  slli         a6, s8, 2
                  bge          s7, tp, 74f
                  slti         a3, gp, -1507
                  and          s4, s2, a0
                  sltiu        t3, a7, -1059
                  srli         t1, s7, 16
                  sltu         gp, a2, a6
                  ori          ra, s6, 422
                  beq          t1, s1, 79f
                  andi         t3, t4, 1751
72:               sra          t3, t5, s7
73:               sll          s11, a5, t5
74:               blt          a3, s0, 89f
                  sub          t6, zero, t1
                  bge          s2, s0, 89f
                  bltu         sp, s7, 95f
                  sll          a3, a3, t3
79:               bne          s7, t5, 93f
                  srai         a1, a0, 13
                  bltu         s2, s3, 87f
                  slli         s5, s7, 13
                  slt          s11, t3, t6
                  sll          s1, ra, sp
                  ori          gp, s2, 1343
                  sub          zero, a4, t0
87:               bge          a6, a4, 89f
                  srai         t4, s8, 0
89:               lui          s5, 503029
                  srli         t3, tp, 30
                  auipc        a7, 471254
                  lui          a0, 961614
93:               srli         s6, t0, 6
                  or           t5, t4, a1
95:               sub          ra, s10, tp
                  bne          t4, t4, 101f
                  addi         sp, a5, 412
                  sll          s6, zero, a2
                  bge          s6, a3, 113f
                  xori         s4, zero, 1548
101:              sltiu        t3, tp, 1312
                  sub          a0, s4, t3
                  and          ra, s10, sp
                  add          gp, a3, ra
                  nop
                  slti         ra, s3, -1046
                  xor          a1, s3, gp
                  lui          a7, 293713
                  ori          a3, s5, -1752
                  slti         sp, a4, 980
                  srai         a0, gp, 2
                  srli         s0, a4, 6
113:              sub          t4, zero, t0
                  slt          t0, zero, s0
                  blt          zero, s8, 116f
116:              slt          t6, sp, s11
                  srai         s8, s0, 22
                  sub          a1, a1, gp
                  bne          s5, t6, 135f
                  xor          t2, t0, t2
                  srl          a4, t1, s0
                  srai         a1, zero, 20
                  auipc        ra, 178718
                  sra          a2, tp, sp
                  beq          s9, tp, 140f
                  srli         a7, s10, 28
                  srai         a0, a3, 18
                  slt          s6, t3, s6
                  xor          t1, a3, s1
                  or           t0, t4, a6
                  sltiu        s9, a5, -605
                  sll          t4, t3, s2
                  beq          t0, s5, 137f
                  or           sp, t2, a4
135:              bgeu         s2, t6, 155f
                  xori         t3, s4, 1373
137:              andi         s5, a2, 244
                  or           tp, s9, a5
                  sra          s1, zero, sp
140:              bgeu         sp, a2, 143f
                  or           a1, zero, sp
                  blt          s2, s6, 144f
143:              bgeu         t1, ra, 147f
144:              sll          tp, s2, ra
                  sll          s8, a5, t0
                  srl          t0, a1, s5
147:              bgeu         s11, s11, 151f
                  srli         s6, a1, 19
                  xor          t4, t4, a4
                  la           a0, sub_5
                  addi         a0, a0, 605
                  lui          s8, 668243
                  ori          a5, t2, 1058
                  srai         a3, s0, 1
                  bgeu         t2, s1, sub_4_j7 #branch to jump instr
                  slt          s11, s6, s0
                  srli         a5, t1, 3
                  slt          s1, a5, s5
                  srai         a3, s6, 0
                  slti         a5, a4, -160
                  nop
sub_4_j7:         jalr         t1, a0, -605 #jump sub_4 -> sub_5
                  addi         t3, t4, 1283
                  blt          a1, t1, 166f
151:              xori         a6, a4, -450
                  srl          a3, s1, s4
                  sltiu        sp, s9, 1812
                  lui          a1, 893677
155:              sub          zero, a3, t2
                  bltu         a0, a6, 170f
                  xor          s9, s9, s7
                  ori          t3, s3, -1295
                  srli         t3, a3, 5
                  srai         a1, a5, 15
                  srai         a0, a0, 27
                  or           s2, s7, a4
                  sra          t4, s2, tp
                  xori         sp, a0, 302
                  or           t3, a7, s11
166:              lui          s4, 460269
                  sltu         gp, s2, t1
                  add          gp, a1, s11
                  slli         t4, s9, 4
170:              sub          s5, s11, s6
                  nop
                  xori         t2, a1, -203
                  slt          t3, s3, s3
                  slti         t6, s3, -16
                  ori          a6, t6, -2006
                  addi         s2, t3, -386
                  sll          t6, s4, a1
                  beq          s8, a0, 180f
                  sltu         s1, s9, sp
180:              auipc        t2, 935726
                  blt          gp, s8, 184f
                  srli         tp, s11, 2
                  bltu         a0, sp, 184f
184:              or           a7, tp, s1
                  lw           t1, 4(s10)
                  srl          a4, s3, tp
                  addi         s10, s10, 52
                  srl          tp, s3, a5
                  sltiu        s0, t5, -14
                  or           s8, s1, t2
286:              addi x18, x6, 1
286:              jalr x18, x18, 0
sub_3:            or           s6, s11, a3
                  nop
                  blt          a6, s3, sub_3_stack_p
sub_3_stack_p:    addi         s10, s10, -48
                  sltu         a0, t6, s9
                  srli         a6, s8, 5
                  xor          t5, gp, tp
                  sw           t1, 4(s10)
                  sub          zero, sp, a0
                  addi         s5, zero, -10 #init loop 0 counter
                  sltu         sp, sp, a4
                  slli         tp, t5, 13
                  addi         t3, zero, -8 #init loop 0 limit
                  and          s0, zero, ra
                  xori         t1, s10, -1277
sub_3_1_0_t:      and          a0, s9, s5
                  addi         s5, s5, 10 #update loop 0 counter
                  sltiu        a3, s6, 927
                  blt          s5, t3, sub_3_1_0_t #branch for loop 0
                  slti         s2, a6, -700
                  addi         t0, zero, 5 #init loop 1 counter
                  slt          s6, a6, t3
                  addi         tp, zero, 12 #init loop 1 limit
sub_3_0_1_t:      sub          zero, zero, t5
                  or           t3, t2, zero
                  addi         t0, t0, 7 #update loop 1 counter
                  lui          t1, 115055
                  addi         a7, zero, -2 #init loop 0 counter
                  addi         a3, zero, -20 #init loop 0 limit
                  xor          gp, s6, a7
                  or           ra, a6, s8
sub_3_0_0_t:      sltiu        t6, gp, 1264
                  addi         a7, a7, -3 #update loop 0 counter
                  bge          a7, a3, sub_3_0_0_t #branch for loop 0
                  srai         t1, s11, 27
                  beq          t0, tp, sub_3_0_1_t #branch for loop 1
                  xori         t5, a5, 1919
                  srl          s11, a2, s0
                  bltu         a1, a3, 13f
                  nop
                  srl          s2, ra, s5
                  lui          a5, 634120
                  bltu         a0, s4, 25f
                  lui          ra, 901220
                  sll          s6, s8, s5
                  sltu         t4, a7, ra
                  slli         a4, s2, 20
                  andi         a2, a0, -1994
                  addi         a2, a3, -1256
                  bge          s7, s6, 32f
13:               xor          t3, a4, s1
                  beq          s6, ra, 29f
                  lui          s5, 992183
                  sra          t4, a3, a6
                  slt          a2, s1, s0
                  bltu         zero, s8, 22f
                  sltu         a6, s0, t4
                  nop
                  sub          a1, t0, s8
22:               sltu         a4, a0, a6
                  bne          a3, t1, 33f
                  sll          t6, t2, a3
25:               slt          t0, s2, tp
                  beq          s5, s10, 36f
                  sra          s4, t5, t0
                  andi         t2, zero, -221
29:               blt          a6, sp, 39f
                  slti         s1, a2, -195
                  sll          sp, a3, s11
32:               or           sp, a0, a4
33:               srli         a4, s3, 0
                  addi         t6, s9, 926
                  sll          s8, s1, a7
                  addi         a4, t5, -119
                  nop
                  slti         zero, s8, 306
                  lui          zero, 288350
                  slt          s1, a2, a4
                  and          a7, a2, ra
                  slti         t4, t0, -1988
                  srai         a4, a0, 21
                  srli         t6, s2, 5
sub_3_j5:         jal          t1, sub_4 #jump sub_3 -> sub_4
36:               xori         ra, a7, 1171
                  xori         a7, a0, -274
                  add          s5, a3, a3
39:               bltu         s5, tp, 45f
                  srai         gp, a6, 10
                  auipc        t2, 954694
                  srai         s8, s3, 9
                  xor          s0, a0, a5
                  slt          s2, s6, gp
45:               slli         a3, a7, 7
                  xori         a5, a4, 973
                  lui          a7, 407893
                  sub          a1, s9, s10
                  srli         s11, s3, 10
                  ori          s0, t1, -1081
                  slti         s5, s1, 1525
                  slt          s2, t5, t1
                  xori         s2, gp, 63
                  auipc        s4, 127777
                  bgeu         s7, a4, 75f
                  or           a7, s10, s2
                  sltiu        zero, sp, -876
                  sltiu        sp, s11, 506
                  bltu         zero, t5, 75f
                  xor          a5, tp, t0
                  xori         ra, sp, -412
                  beq          s9, t4, 69f
                  bgeu         t5, s9, 77f
                  nop
                  sra          t5, s0, s2
                  bne          s4, t6, 67f
67:               srli         t2, s3, 25
                  andi         t5, t5, -684
69:               xori         s0, t2, -690
                  bgeu         a1, t6, 79f
                  add          a1, s11, zero
                  nop
                  lui          t2, 569930
                  or           t6, sp, a0
75:               lui          a7, 533007
                  and          t6, t6, s10
77:               and          tp, s11, a2
                  bltu         t1, s10, 86f
79:               blt          s1, s9, 86f
                  srli         t3, a1, 29
                  xor          a6, t3, s5
                  add          zero, s5, s5
                  andi         ra, t6, 736
                  blt          a3, t2, 86f
                  and          t6, t4, zero
86:               bgeu         s7, a7, 93f
                  bge          zero, a1, 100f
                  slt          t6, s1, a4
                  blt          a6, zero, 97f
                  nop
                  and          s5, t0, sp
                  sra          ra, zero, a2
93:               srl          gp, a7, t1
                  bne          a4, a2, 100f
                  xor          a2, s1, s0
                  bgeu         s3, a3, 106f
97:               sra          s11, s3, zero
                  add          a6, gp, t4
                  beq          a2, s4, 102f
100:              xori         a6, sp, 541
                  sub          a3, a6, t5
102:              sll          s6, t0, a4
                  bltu         s6, a3, 116f
                  and          t1, s6, a7
                  ori          s0, a4, -730
106:              bne          s2, t4, 116f
                  srai         s4, s8, 4
                  bge          s10, a7, 113f
                  or           t2, a2, a4
                  andi         a1, s11, 1931
                  add          s11, t2, s2
                  sltu         a3, a3, a3
113:              bgeu         a1, t2, 128f
                  bne          a2, t0, 129f
                  srl          t3, s10, s8
116:              blt          s1, a3, 131f
                  srl          a7, a1, a4
                  srl          ra, s10, zero
                  nop
                  bltu         t0, s5, 134f
                  nop
                  slt          a3, t6, t6
                  sltu         s2, s4, s6
                  add          sp, s3, s10
                  or           t0, ra, s0
                  beq          sp, a4, 134f
                  bltu         s7, s1, 134f
128:              bne          a4, s5, 134f
129:              sub          a0, a1, a7
                  addi         a5, t6, -1208
131:              andi         a6, a1, -1388
                  blt          s2, sp, 134f
                  sltu         gp, a0, ra
134:              auipc        t3, 409321
                  sra          sp, s4, t5
                  lw           t1, 4(s10)
                  addi         s10, s10, 48
                  sub          zero, s11, t2
                  sll          t0, s9, gp
                  xor          a4, a4, s9
                  xor          t5, t6, a4
                  xori         t6, s11, -1648
190:              addi x5, x6, 1
190:              jalr x5, x5, 0
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
.align           2
mtvec_handler:    
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x23, x26, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x12, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x12, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x12, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x12, x29, ecall_handler
                  li x29, 0x1
                  beq x12, x29, instr_fault_handler
                  li x29, 0x5
                  beq x12, x29, load_fault_handler
                  li x29, 0x7
                  beq x12, x29, store_fault_handler
                  li x29, 0xc
                  beq x12, x29, pt_fault_handler
                  li x29, 0xd
                  beq x12, x29, pt_fault_handler
                  li x29, 0xf
                  beq x12, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x19, test_done
                  jalr x1, x19, 0

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
                  la x19, write_tohost
                  jalr x0, x19, 0

instr_fault_handler:
                  add x26, x23, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x23, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x23, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x26, x23, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x26, x23, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x26, x23, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
