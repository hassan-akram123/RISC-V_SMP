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
                  li x6, 0x40000100
                  csrw 0x301, x6
kernel_sp:        
                  la x4, kernel_stack_end

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
                  li x1, 0xf0342346
                  li x2, 0x6edd80a5
                  li x3, 0x80000000
                  li x5, 0xf9178fc1
                  li x6, 0x80000000
                  li x7, 0xf865c388
                  li x8, 0x45fe5656
                  li x9, 0x0
                  li x10, 0xf140e403
                  li x11, 0xf5ccc4b2
                  li x12, 0x52ee0d42
                  li x13, 0xc
                  li x14, 0x5d01af30
                  li x15, 0x4dc7419
                  li x16, 0x2
                  li x17, 0x19a3d24d
                  li x18, 0xf
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0x645ddf77
                  li x22, 0x8d91e665
                  li x23, 0xcece6506
                  li x24, 0xfd552ec6
                  li x25, 0xfdf8bf15
                  li x26, 0x80000000
                  li x27, 0x7
                  li x28, 0xf5d1a545
                  li x30, 0x3
                  li x31, 0x0
                  la x29, user_stack_end
main:             sltu         s4, s5, a4
                  la           t0, sub_3
                  lui          a4, 513829
                  ori          s5, s1, -226
                  slt          s6, s4, t6
                  add          gp, t2, a0
                  sll          s5, t2, s9
                  lui          s7, 166677
                  addi         t0, t0, 241
                  sra          a4, a4, t5
                  xori         s11, t1, -160
main_j3:          jalr         sp, t0, -241 #jump main -> sub_3
                  lui          sp, 269365
                  xori         s6, t1, -156
                  or           s6, a7, t4
                  la           s1, sub_2
                  sub          a0, s11, s3
                  addi         s1, s1, 397
                  slli         a3, t5, 26
                  srl          a4, a4, t3
                  xori         a4, a4, -1123
main_j4:          jalr         sp, s1, -396 #jump main -> sub_2
                  addi         a4, zero, 0 #init loop 1 counter
                  lui          s7, 628064
                  xor          a5, t6, a7
                  addi         s3, zero, 19 #init loop 1 limit
main_2_1_t:       xor          t0, s6, t1
                  auipc        a2, 630413
                  addi         a4, a4, 1 #update loop 1 counter
                  sub          a5, s7, gp
                  addi         s10, zero, 4 #init loop 0 counter
                  slli         s4, s10, 6
                  srai         s2, a4, 29
                  addi         s11, zero, 11 #init loop 0 limit
                  sra          ra, ra, t6
                  sltu         s0, gp, t5
main_2_0_t:       addi         s8, s6, 1851
                  addi         t5, ra, -1525
                  addi         s10, s10, 7 #update loop 0 counter
                  addi         a7, s0, -69
                  slt          a3, s10, s1
                  bne          s10, s11, main_2_0_t #branch for loop 0
                  sub          a3, t0, a6
                  xori         ra, t4, 830
                  bltu         a4, s3, main_2_1_t #branch for loop 1
                  xori         s0, a0, -838
                  addi         sp, zero, -7 #init loop 0 counter
                  lui          a4, 914099
                  add          s10, tp, t6
                  srl          s3, t3, s5
                  addi         s4, zero, 17 #init loop 0 limit
                  andi         ra, zero, 642
                  sra          gp, sp, s7
main_0_0_t:       lui          s2, 926663
                  sltiu        s2, t5, 526
                  auipc        a6, 853462
                  addi         sp, sp, 6 #update loop 0 counter
                  bne          sp, s4, main_0_0_t #branch for loop 0
                  sltu         s11, s1, tp
                  addi         gp, zero, 0 #init loop 0 counter
                  auipc        s5, 643710
                  lui          zero, 495058
                  xor          sp, s0, a2
                  nop
                  add          s2, tp, zero
                  addi         a5, zero, 16 #init loop 0 limit
                  slt          t2, gp, s1
                  auipc        s4, 241031
main_3_0_t:       ori          a3, a2, 768
                  slli         t5, s5, 27
                  slt          a0, s9, s4
                  add          s3, s4, s5
                  slt          s11, s8, a3
                  srai         s0, sp, 17
                  addi         gp, gp, 4 #update loop 0 counter
                  sltiu        s1, s4, -1056
                  andi         s11, a2, -1154
                  srli         s10, s0, 30
                  beq          gp, a5, main_3_0_t #branch for loop 0
                  auipc        s5, 291060
                  addi         gp, zero, 4 #init loop 0 counter
                  srl          zero, a4, s5
                  lui          t1, 410877
                  slt          s2, tp, a5
                  slti         s9, gp, -1157
                  and          t5, t1, a6
                  addi         t2, zero, 3 #init loop 0 limit
                  sub          a5, a1, s9
                  addi         a3, t1, 2014
                  add          s5, t4, sp
main_1_0_t:       or           sp, s6, a5
                  ori          a5, a6, 529
                  sub          t1, s3, s8
                  srl          sp, t4, a6
                  addi         gp, gp, -1 #update loop 0 counter
                  andi         s10, sp, 633
                  auipc        sp, 545493
                  sll          ra, t3, s0
                  and          s3, t0, a5
                  srl          a5, s10, a3
                  slti         zero, t5, -1136
                  addi         a4, zero, 64
                  slli         s0, a2, 17
                  slti         s0, s6, -169
                  nop
                  sub          s10, tp, s11
                  bgeu         gp, t2, main_1_0_t #branch for loop 0
                  sltu         s6, s4, a3
                  nop
                  andi         s5, s6, -515
                  sltiu        s2, s6, 999
                  ori          a3, s6, -1633
                  slti         s6, t0, 1088
                  andi         s7, ra, -340
                  beq          s4, s10, 25f
                  sub          a4, a1, t0
                  andi         a6, gp, -1714
                  add          s9, tp, a4
                  sltiu        t5, a3, -656
                  sltu         a0, s6, s6
                  bne          s9, s9, 25f
                  or           a0, t5, s2
                  and          s10, a1, t4
                  nop
                  beq          s0, s0, 21f
                  andi         zero, s2, 174
                  bltu         s4, s3, 22f
                  xori         a0, t4, 658
                  bgeu         s8, sp, 22f
21:               sltu         s2, s1, s9
22:               sll          a3, zero, a2
                  slli         s7, a0, 23
                  beq          s4, t4, 26f
25:               add          a2, ra, t1
26:               slt          s6, s4, s7
                  xor          t1, t5, t0
                  slti         ra, a2, 3
                  xori         s10, a1, -754
                  beq          t1, s7, 48f
                  addi         s4, a1, 1402
                  xori         a3, t4, -1142
                  sra          a1, tp, t1
                  xor          s0, t1, s7
                  slti         s3, s7, 1437
                  auipc        s4, 574697
                  sll          a4, s9, t0
                  auipc        s6, 52211
                  ori          s5, sp, 360
                  auipc        a3, 718503
                  add          t0, gp, s7
                  bge          a4, s2, 62f
                  nop
                  xor          s10, a5, s11
                  sltiu        s3, a7, -1009
                  sltu         s3, s1, s7
                  xori         sp, a0, -80
48:               xori         s2, t1, -360
                  sra          s3, a2, a7
                  add          a6, s6, zero
                  sub          s1, tp, s3
                  sll          s9, t4, s2
                  or           s6, a2, zero
                  srl          s6, a0, gp
                  nop
                  addi         s4, s6, -80
                  bgeu         s2, a3, 74f
                  nop
                  slti         s3, ra, -728
                  bge          a7, a3, 80f
                  bltu         t1, tp, 81f
62:               blt          s2, s0, 75f
                  add          t2, s2, s9
                  xor          s2, s3, t5
                  lui          s2, 192343
                  bge          sp, s5, 83f
                  bltu         s5, gp, 68f
68:               xor          a3, a3, a6
                  sll          a4, t2, t2
                  and          t1, s1, s2
                  bge          t2, s4, 76f
                  and          s10, a1, t0
                  beq          a0, a5, 91f
74:               addi         s3, a1, 1548
75:               sltu         s1, s0, sp
76:               slti         s2, t2, 1740
                  sltu         s5, tp, a4
                  addi         s1, ra, 1642
                  srli         zero, s10, 28
80:               blt          s7, a6, 99f
81:               andi         a4, s4, 746
                  xor          a7, t5, s10
83:               bgeu         s3, t0, 100f
                  nop
                  slli         t1, t3, 28
                  slti         a1, s4, 1003
                  nop
                  and          s3, t0, a0
                  sub          gp, s3, sp
                  sub          zero, a4, s3
91:               slli         a2, a2, 2
                  srli         a4, s8, 15
                  or           s8, zero, s2
                  xor          s8, s0, s8
                  beq          s5, tp, 97f
                  ori          s2, t5, -1494
97:               and          zero, s1, s9
                  sra          s8, s4, t0
99:               add          a3, a0, ra
100:              sub          a0, s9, a7
                  bgeu         s5, s9, 113f
                  srl          a4, sp, a1
                  bne          a4, s5, 108f
                  slli         a2, ra, 13
                  blt          s0, s9, 120f
                  xori         s7, s1, 959
                  slti         a0, a6, -1138
108:              srli         a4, tp, 2
                  bltu         s0, a6, 120f
                  sltiu        a1, s9, -1808
                  addi         sp, s2, 1932
                  addi         s1, s9, -244
113:              lui          a7, 925576
                  slt          sp, a2, s10
                  xori         s9, t3, 1443
                  blt          s11, s0, 125f
                  andi         t5, a2, -1586
                  slt          s0, s10, s8
                  lui          a4, 809623
120:              andi         s2, s0, -544
                  nop
                  bge          a3, zero, 136f
                  auipc        t5, 1013522
                  bgeu         s3, a5, 134f
125:              bgeu         a1, a6, 136f
                  sra          t3, t0, s6
                  addi         t2, a7, 353
                  or           a6, s9, t2
                  sll          s9, s1, a1
                  bltu         s8, a3, 146f
                  andi         t5, s7, -1163
                  sltu         s1, s0, s3
                  andi         t2, ra, 257
134:              auipc        s7, 565504
                  nop
136:              add          s6, a1, a2
                  sub          gp, tp, sp
                  xori         s7, a4, -18
                  bgeu         s3, s9, 153f
                  auipc        a3, 89501
                  bne          tp, t5, 150f
                  sub          zero, sp, t0
                  blt          t5, ra, 145f
                  bge          t2, tp, 146f
145:              blt          a6, s0, 163f
                  or           a6, s0, ra
                  la           t0, sub_3
                  slti         t2, s2, -21
                  addi         t0, t0, -412
                  slt          a7, s5, a4
                  bge          s2, a3, main_j1 #branch to jump instr
                  andi         s2, ra, -1420
                  srli         a7, s2, 2
                  add          a2, sp, s0
                  slli         s3, gp, 18
main_j1:          jalr         sp, t0, 412 #jump main -> sub_3
146:              bge          s4, ra, 159f
                  srl          t0, s9, sp
                  sub          s2, s0, s7
                  auipc        s4, 862525
150:              sub          a3, s5, a3
                  slli         a1, ra, 10
                  la           t3, sub_1
                  andi         zero, ra, 1042
                  addi         t3, t3, -898
                  slt          gp, a3, s11
                  slt          s6, a5, t1
                  sll          s9, s1, s4
                  slt          s7, a1, a4
                  slti         s5, t6, -1538
main_j2:          jalr         sp, t3, 898 #jump main -> sub_1
                  slli         a6, zero, 25
153:              srl          t1, t0, s3
                  bge          a5, a2, 165f
                  sll          s7, s7, t4
                  addi         s4, t3, 338
                  slt          s11, tp, t0
                  slti         s7, s0, 603
159:              andi         s7, s5, 278
                  srl          a5, t5, a4
                  bgeu         t1, s1, 166f
                  xor          t0, s3, s7
163:              bltu         s4, s8, 180f
                  addi         gp, t1, -1662
165:              xori         ra, s10, 1934
166:              add          s5, s6, t2
                  sll          zero, s2, t5
                  and          t0, s2, a6
                  sltu         t1, zero, s8
                  srl          ra, a3, s6
                  addi         t2, s6, 176
                  srli         t3, s10, 2
                  blt          t4, sp, 190f
                  addi         a5, a7, 1669
                  lui          a1, 894888
                  bge          s3, s7, 190f
                  sub          ra, a7, t5
                  slt          s10, sp, s1
                  and          t0, a5, a4
180:              srai         sp, a4, 20
                  or           sp, t0, a2
                  bltu         s5, t3, 200f
                  bgeu         t2, s11, 185f
                  bltu         tp, ra, 188f
185:              add          ra, a0, ra
                  andi         sp, gp, 1918
                  beq          s6, s8, 207f
188:              addi         t2, a7, -572
                  ori          t1, a0, 1607
190:              addi         s10, t5, 1137
                  or           t5, t5, gp
                  and          s9, t2, s8
                  and          s11, gp, a6
                  xor          a5, gp, s8
                  slti         a6, a5, -1955
                  slt          t5, a4, s6
                  sub          s0, t0, s7
                  sll          s4, s4, s4
                  sra          zero, t2, s2
200:              and          s11, s7, s1
                  auipc        ra, 946779
                  sll          t3, s7, ra
                  bltu         s2, t0, 216f
                  sra          s2, t1, a6
                  bltu         s9, s9, 225f
                  or           a7, s9, t6
207:              nop
                  sub          a4, t5, s10
                  auipc        s4, 681847
                  srl          sp, sp, t2
                  andi         ra, t1, -1434
                  bge          s2, a4, 231f
                  add          s7, s0, t0
                  xori         s1, t3, 1007
                  sub          s4, t5, a1
216:              srli         t2, s7, 20
                  slli         s1, zero, 13
                  bge          s4, s0, 233f
                  nop
                  bne          t4, a5, 225f
                  slti         a6, s3, 155
                  andi         gp, s3, -590
                  andi         a6, t5, 921
                  sltu         a1, ra, s2
225:              blt          s3, a7, 233f
                  auipc        t2, 671197
                  sltu         s6, s10, t3
                  bge          s6, s0, 233f
                  andi         t1, tp, -1820
                  andi         ra, sp, 1639
231:              bgeu         s5, s3, 233f
                  andi         s7, t4, 529
233:              and          s0, zero, s8
                  la x31, test_done
                  jalr x0, x31, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            or           s2, s0, gp
                  bge          s10, s0, sub_1_stack_p
sub_1_stack_p:    addi         t4, t4, -8
                  andi         a4, a2, 243
                  ori          a1, a6, -155
                  sw           sp, 4(t4)
                  sll          t2, s10, s1
                  addi         s0, zero, 5 #init loop 1 counter
                  addi         a0, zero, 7 #init loop 1 limit
                  srli         t2, t6, 4
sub_1_8_1_t:      slti         s9, tp, 1734
                  addi         a6, t6, -848
                  addi         s0, s0, 10 #update loop 1 counter
                  auipc        s4, 927257
                  addi         t5, zero, -9 #init loop 0 counter
                  slli         s3, s1, 11
                  addi         s6, t5, -594
                  addi         a3, zero, -16 #init loop 0 limit
                  slti         a6, a0, 1928
                  sra          s11, s8, a0
                  srai         s7, t4, 28
sub_1_8_0_t:      sltu         s10, a0, sp
                  addi         t5, t5, -7 #update loop 0 counter
                  sll          gp, t6, t1
                  bne          t5, a3, sub_1_8_0_t #branch for loop 0
                  slti         s1, s3, -316
                  blt          s0, a0, sub_1_8_1_t #branch for loop 1
                  nop
                  addi         a0, zero, 7 #init loop 1 counter
                  addi         s0, sp, -1773
                  addi         s3, zero, 20 #init loop 1 limit
                  slti         t0, a5, -1064
                  sub          s2, tp, a5
sub_1_9_1_t:      nop
                  or           t2, a1, a3
                  xor          a7, s8, s8
                  sra          s2, t1, s9
                  slti         s2, s1, 16
                  addi         a0, a0, 3 #update loop 1 counter
                  addi         a4, zero, 8 #init loop 0 counter
                  slt          t3, a7, zero
                  addi         s7, zero, 6 #init loop 0 limit
                  sub          s6, s9, s6
sub_1_9_0_t:      or           t5, tp, a3
                  addi         t3, a2, -1443
                  slt          a5, t4, tp
                  addi         a4, a4, -4 #update loop 0 counter
                  auipc        s5, 828132
                  slli         s9, a5, 9
                  bgeu         a4, s7, sub_1_9_0_t #branch for loop 0
                  xori         a3, s2, -1991
                  blt          a0, s3, sub_1_9_1_t #branch for loop 1
                  xori         a5, sp, 1478
                  addi         s2, zero, 3 #init loop 1 counter
                  addi         ra, s2, -831
                  addi         s6, a3, 1040
                  addi         s10, zero, 3 #init loop 1 limit
sub_1_2_1_t:      lui          s0, 445817
                  nop
                  addi         s2, s2, -2 #update loop 1 counter
                  addi         s8, zero, 7 #init loop 0 counter
                  addi         s3, zero, 19 #init loop 0 limit
                  sra          t5, t6, a3
                  srli         t3, t0, 31
sub_1_2_0_t:      sltiu        s7, a0, -1010
                  addi         s6, t1, 1401
                  addi         s8, s8, 4 #update loop 0 counter
                  slti         a1, s10, 1923
                  beq          s8, s3, sub_1_2_0_t #branch for loop 0
                  srai         a3, t1, 17
                  bgeu         s2, s10, sub_1_2_1_t #branch for loop 1
                  sltiu        s7, s6, 1592
                  addi         s4, zero, -5 #init loop 0 counter
                  addi         t5, t0, 1628
                  auipc        t2, 974555
                  lui          s10, 863601
                  slti         s9, s2, -1110
                  sll          s6, a7, t3
                  xori         s3, s5, 880
                  slli         s2, a5, 1
                  xor          a2, zero, s9
                  or           t1, t4, a1
                  srai         s0, t6, 3
                  addi         a2, s7, 220
                  addi         s8, zero, -7 #init loop 0 limit
sub_1_10_0_t:     andi         zero, s11, 70
                  sub          s1, sp, a4
                  addi         s4, s4, -1 #update loop 0 counter
                  add          a7, s9, sp
                  auipc        a1, 1042992
                  srai         s6, a7, 31
                  add          s7, s7, ra
                  sll          t2, a2, a6
                  sub          t0, s0, s8
                  nop
                  andi         a7, s5, -437
                  sltu         t0, s4, t2
                  sltiu        s2, s5, -945
                  bge          s4, s8, sub_1_10_0_t #branch for loop 0
                  xor          s3, gp, tp
                  addi         s1, zero, 7 #init loop 1 counter
                  srli         gp, t2, 16
                  add          s9, s3, t5
                  addi         a7, zero, 7 #init loop 1 limit
                  ori          s0, a2, -285
sub_1_7_1_t:      xori         ra, sp, 1343
                  nop
                  xor          s0, a7, t4
                  sub          s8, sp, s10
                  addi         s1, s1, -5 #update loop 1 counter
                  sll          s11, t0, t1
                  addi         a4, zero, 4 #init loop 0 counter
                  addi         a1, zero, 7 #init loop 0 limit
                  sra          a6, s4, t5
                  andi         s4, s5, -1484
sub_1_7_0_t:      lui          zero, 628941
                  or           s4, s11, a2
                  addi         a4, a4, 9 #update loop 0 counter
                  lui          s4, 1038055
                  addi         zero, ra, -1605
                  srai         s8, s5, 6
                  blt          a4, a1, sub_1_7_0_t #branch for loop 0
                  xori         s0, a3, 687
                  addi         gp, a7, 416
                  andi         s6, s9, -1089
                  bgeu         s1, a7, sub_1_7_1_t #branch for loop 1
                  lui          s7, 39663
                  addi         s4, zero, 5 #init loop 0 counter
                  and          zero, a0, a2
                  slli         s5, s11, 21
                  addi         s7, zero, 4 #init loop 0 limit
sub_1_5_0_t:      slt          zero, t6, s2
                  add          t5, a7, sp
                  addi         s4, s4, -3 #update loop 0 counter
                  xori         s2, s3, 80
                  bgeu         s4, s7, sub_1_5_0_t #branch for loop 0
                  andi         ra, gp, 341
                  addi         s9, zero, 3 #init loop 1 counter
                  addi         s1, zero, 10 #init loop 1 limit
                  sltiu        a5, t4, 580
sub_1_6_1_t:      xori         a1, a5, 6
                  addi         s9, s9, 9 #update loop 1 counter
                  addi         s2, zero, 10 #init loop 0 counter
                  addi         s6, zero, 10 #init loop 0 limit
sub_1_6_0_t:      sltu         a6, t2, a6
                  addi         s2, s2, -9 #update loop 0 counter
                  bgeu         s2, s6, sub_1_6_0_t #branch for loop 0
                  bltu         s9, s1, sub_1_6_1_t #branch for loop 1
                  andi         gp, s6, 1248
                  addi         s7, zero, 4 #init loop 0 counter
                  slti         s6, a5, -385
                  xor          t3, t2, t5
                  slti         zero, t4, 1626
                  slt          s3, a4, s10
                  auipc        t5, 951234
                  or           t5, t4, sp
                  sra          t0, a3, s6
                  ori          a2, s9, -978
                  slti         a2, s3, 1587
                  or           gp, t0, a1
                  or           zero, s8, s3
                  srai         t0, s5, 2
                  addi         s1, zero, 14 #init loop 0 limit
                  xor          s8, a0, sp
sub_1_0_0_t:      or           s10, a3, t2
                  slt          a5, sp, s1
                  slt          sp, t1, s1
                  srli         a6, s0, 5
                  ori          s8, a4, -64
                  addi         s7, s7, 10 #update loop 0 counter
                  sltiu        a4, s6, -1765
                  slti         s3, t5, 1731
                  and          s4, s11, s3
                  slli         s3, a4, 31
                  beq          s7, s1, sub_1_0_0_t #branch for loop 0
                  auipc        a6, 971356
                  addi         a1, zero, -6 #init loop 0 counter
                  sub          gp, ra, a0
                  or           a7, a6, t0
                  addi         s1, zero, -6 #init loop 0 limit
                  sltiu        a5, a6, 28
sub_1_1_0_t:      sltiu        zero, s11, -1802
                  addi         s7, s4, 1291
                  andi         s5, a2, -942
                  add          s0, a2, s11
                  srl          s3, a7, ra
                  auipc        s7, 288447
                  sra          t1, t1, s1
                  slt          a0, a5, a4
                  addi         a1, a1, -7 #update loop 0 counter
                  sltu         s8, t4, a0
                  and          s0, t1, s10
                  sra          s5, t2, s8
                  bge          a1, s1, sub_1_1_0_t #branch for loop 0
                  nop
                  addi         s11, zero, 1 #init loop 0 counter
                  srl          a6, s0, s7
                  addi         s7, zero, -7 #init loop 0 limit
sub_1_3_0_t:      xori         a0, s9, 16
                  addi         s11, s11, -8 #update loop 0 counter
                  beq          s11, s7, sub_1_3_0_t #branch for loop 0
                  andi         t3, s5, 1488
                  sll          a7, a4, s7
                  add          a4, t4, t3
                  slti         t0, ra, 781
                  slli         a6, t2, 27
                  ori          t5, a3, -2028
                  ori          t1, s4, -1218
                  slli         s10, s1, 1
                  srli         t3, s7, 15
                  bltu         s2, t6, 13f
                  sll          s5, sp, sp
                  addi         a7, a6, -1398
                  sltu         a6, t6, s1
                  xori         s7, t3, -1109
13:               blt          sp, gp, 19f
                  xor          a7, a1, a6
                  lui          s11, 40134
                  slli         s1, s11, 7
                  xor          t1, a4, sp
                  slt          s0, gp, t6
19:               srl          s6, tp, s7
                  andi         t5, s7, -1370
                  nop
                  nop
                  bge          s2, s8, 39f
                  xor          a5, s3, s9
                  sra          a2, s8, ra
                  sltu         a2, a6, s10
                  srli         t2, gp, 15
                  bge          tp, s9, 39f
                  bne          t3, a2, 49f
                  andi         sp, s9, -1665
                  andi         gp, t6, -776
                  slli         s0, s5, 4
                  sltiu        a7, s9, -1945
                  sltu         s2, s0, a1
                  srli         gp, a3, 17
                  sub          ra, s2, s11
                  auipc        a4, 342702
                  xor          s0, s2, s4
39:               bltu         s7, s2, 45f
                  bgeu         tp, s3, 45f
                  nop
                  srai         s2, a5, 6
                  sltiu        s10, a0, 1138
                  auipc        s10, 950379
45:               andi         a6, gp, -1878
                  bltu         s10, s4, 54f
                  ori          s1, s7, 1600
                  bgeu         s10, t4, 64f
49:               bne          gp, sp, 64f
                  sub          sp, s10, t1
                  bltu         t4, tp, 68f
                  srl          a5, a4, s7
                  bgeu         t0, s7, 70f
54:               add          s9, s11, a4
                  xori         s10, t6, 51
                  add          ra, s7, a7
                  sltiu        a7, a6, -824
                  auipc        s3, 960250
                  bltu         t4, zero, 61f
                  slli         s4, t4, 27
61:               xori         a6, ra, 1962
                  sra          zero, a2, s1
                  slt          sp, a7, sp
64:               srli         s1, a1, 22
                  sll          s10, s2, s7
                  sltu         s5, t4, t6
                  sltiu        t5, sp, 1202
68:               bge          t6, t3, 83f
                  blt          s9, a6, 76f
70:               and          gp, s3, a5
                  sltiu        s2, s6, 816
                  lui          s4, 991505
                  lui          s9, 28619
                  sub          a5, s10, s10
                  bgeu         s0, gp, 91f
76:               nop
                  bgeu         t2, t4, 96f
                  sub          t3, a2, s1
                  or           s8, s1, s5
                  add          s4, s11, a3
                  slt          a3, t1, s4
                  bge          t5, a2, 101f
83:               slt          s9, s11, a1
                  and          sp, a1, a4
                  auipc        s3, 300725
                  lui          t2, 347297
                  bgeu         s4, a0, 91f
                  slli         s4, t1, 28
                  bge          s6, t6, 91f
                  bge          a2, a3, 91f
91:               or           t3, a0, a0
                  beq          s10, zero, 111f
                  sltu         s6, tp, zero
                  slli         s8, s1, 10
                  beq          s1, t0, 98f
96:               bne          a2, s5, 115f
                  beq          a0, a1, 101f
98:               xori         t1, a6, -218
                  sll          t3, s7, ra
                  nop
101:              xor          s7, ra, a6
                  slt          s11, s4, a1
                  srai         zero, t0, 25
                  andi         s0, s5, -2044
                  slt          s6, s0, s9
                  srai         s6, s3, 26
                  xori         a3, s4, 335
                  xori         t0, a6, 274
                  ori          s6, a7, 922
                  bne          t3, t4, 128f
111:              srl          s0, zero, t0
                  xor          s5, a4, a2
                  srli         a2, t6, 26
                  auipc        s7, 796070
115:              sltiu        a6, a3, -1905
                  andi         sp, a0, -205
                  or           a1, a1, s10
                  andi         s9, a5, -698
                  xori         s2, t3, -1057
                  sub          s5, a1, zero
                  lui          t0, 553347
                  bge          a1, a4, 128f
                  andi         s1, a6, -297
                  sra          gp, a1, t1
                  xori         a1, s11, -666
                  slti         ra, t5, -318
                  xori         t1, t0, -706
128:              srai         ra, s8, 3
                  sub          s2, s5, s3
                  srl          a4, a4, t5
                  slt          s6, s11, a2
                  slli         t3, s4, 21
                  addi         s5, gp, -521
                  sll          a1, a5, a7
                  srli         s0, t5, 0
                  or           s10, t1, a2
                  bgeu         t0, s5, 147f
                  sll          s3, s5, a3
                  sltu         ra, a3, t0
                  slli         t1, tp, 20
                  srli         s10, tp, 14
                  sltu         sp, s5, ra
                  slti         t1, a6, -731
                  ori          s7, a1, 738
                  lui          t3, 206277
                  ori          t1, t6, 1018
147:              srai         s2, s0, 11
                  ori          s6, s11, 785
                  sll          t1, s6, s6
                  sub          s8, zero, sp
                  nop
                  bne          s7, a5, 166f
                  beq          t0, tp, 164f
                  bne          sp, t4, 164f
                  sltu         a1, s11, t2
                  slt          a6, t3, s1
                  sll          a7, ra, a3
                  bltu         t1, s6, 177f
                  ori          a7, a2, -1731
                  bge          tp, s11, 166f
                  srl          s11, gp, t2
                  sll          a1, t2, a3
                  bge          a7, s11, 177f
164:              ori          a1, s6, -640
                  bge          s10, s0, 182f
166:              sra          sp, t1, a4
                  slti         a4, a3, 681
                  beq          a6, sp, 179f
                  addi         t3, zero, 1 #init loop 0 counter
                  slli         a0, a5, 31
                  xori         s11, a4, 317
                  sra          t1, a3, zero
                  slt          s2, t5, a6
                  slt          t2, t0, t0
                  nop
                  addi         a5, a4, 666
                  nop
                  slti         gp, s11, -1481
                  addi         s7, zero, -11 #init loop 0 limit
                  or           s2, t1, s9
                  srl          t1, s10, zero
                  sll          s10, a1, t3
                  auipc        t1, 229887
sub_1_4_0_t:      slti         s5, s9, 365
                  slti         s1, t5, -846
                  sra          a2, s7, sp
                  ori          a3, tp, 321
                  addi         t3, t3, -6 #update loop 0 counter
                  xor          sp, ra, a3
                  auipc        s6, 199189
                  sltu         t5, s3, a6
                  and          s6, s11, t4
                  bne          t3, s7, sub_1_4_0_t #branch for loop 0
                  slt          s8, s10, s5
                  nop
                  lui          s2, 164988
                  slt          a5, s6, s4
                  auipc        a3, 242649
                  add          a0, s2, s1
                  blt          a2, s6, 176f
                  srai         a3, t0, 6
176:              or           a2, zero, s10
177:              beq          s4, gp, 192f
                  addi         s7, s9, -3
179:              bgeu         t4, s3, 195f
                  bltu         t1, a3, 186f
                  sll          s4, s8, a7
182:              sltiu        s7, s7, 497
                  add          a5, t0, a7
                  xor          a7, t2, t5
                  sub          s7, a1, s3
186:              auipc        s11, 89232
                  sra          a2, sp, zero
                  bltu         s0, s9, 207f
                  sub          t1, t0, s0
                  bge          s2, s9, 205f
                  bgeu         a1, s1, 198f
192:              sltiu        a5, s10, 447
                  sra          t1, tp, s11
                  beq          a0, a7, 205f
195:              slt          s6, a6, s7
                  sll          s4, a3, a2
                  srl          s8, ra, a1
198:              blt          t6, ra, 216f
                  slt          s2, s5, a6
                  beq          a4, a3, 203f
                  nop
                  addi         a1, s4, 1108
203:              bge          s0, t2, 219f
                  srli         s4, t2, 31
205:              sra          a1, s9, ra
                  addi         a5, s5, -43
207:              or           a6, s7, a5
                  srli         t2, t5, 31
                  sll          t5, tp, a1
                  xor          s5, sp, t2
                  srli         a5, a1, 23
                  xor          s1, s8, ra
                  nop
                  lui          a2, 682338
                  sll          ra, s0, a4
216:              slt          s0, s0, a1
                  bgeu         s0, s6, 234f
                  bne          t0, s10, 222f
219:              bgeu         a6, s7, 220f
220:              auipc        gp, 550669
                  bge          t5, t5, 240f
222:              srai         a5, sp, 15
                  blt          t6, a5, 227f
                  xori         s10, a7, 493
                  beq          s3, a7, 244f
                  slli         a2, s3, 30
227:              xor          a1, a4, s1
                  add          a5, t4, a1
                  srl          s4, a2, a2
                  addi         s10, a1, 928
                  beq          a0, a4, 239f
                  beq          a1, t6, 238f
                  add          t5, t0, s10
234:              slt          ra, a7, a6
                  xori         s11, s11, 1859
                  srai         s0, a5, 4
                  bge          s4, a0, 239f
238:              auipc        a5, 130920
239:              auipc        s11, 300998
240:              srli         ra, zero, 12
                  and          gp, s1, ra
                  auipc        a3, 352549
                  sltu         s10, sp, a7
244:              sub          s7, s7, s9
                  slli         t2, a2, 8
                  blt          s0, zero, 266f
                  slt          t2, a6, sp
                  add          a0, sp, s9
                  slt          a4, a2, s0
                  andi         s5, a3, -598
                  slti         s6, s2, 2005
                  lui          s0, 799361
                  srl          s3, a5, t2
                  bltu         s3, a2, 270f
                  bne          a5, a5, 260f
                  nop
                  bltu         s6, zero, 262f
                  srai         s10, t2, 8
                  ori          s0, t1, -1092
260:              sra          a4, s4, s8
                  slt          gp, a3, s9
262:              or           t3, s8, tp
                  xor          s9, a1, sp
                  sltu         s7, s6, a0
                  lui          s1, 43229
266:              slli         a0, s2, 16
                  xor          s0, s2, s10
                  add          s8, s7, a4
                  nop
270:              bne          s9, s5, 289f
                  srai         a2, s11, 12
                  or           t2, t6, a5
                  bge          t1, sp, 278f
                  add          s4, s2, a4
                  slt          a4, zero, a0
                  sll          s9, s10, s11
                  bltu         s1, s7, 288f
278:              or           zero, a5, s3
                  xor          t5, gp, zero
                  srl          ra, s7, a4
                  or           ra, s5, s8
                  andi         a5, a7, -2036
                  sltu         a5, a7, s8
                  bge          a2, s8, 301f
                  sltu         a5, zero, s4
                  srli         t0, tp, 22
                  srai         gp, t6, 9
288:              sll          s5, s11, s9
289:              and          a0, a2, s8
                  add          t1, tp, t3
                  ori          s4, s6, -1306
                  ori          a7, s5, 1684
                  sub          t1, a7, s4
                  sltu         a4, a0, t4
                  blt          s6, s9, 298f
                  blt          s5, s3, 300f
                  bltu         t6, t1, 313f
298:              bge          s11, a1, 308f
                  srli         s4, sp, 3
300:              srl          s2, gp, zero
301:              bge          a5, a6, 320f
                  srai         s3, s8, 12
                  slti         t5, s5, 1810
                  sub          a7, tp, t5
                  bge          a6, a4, 309f
                  beq          a2, a6, 307f
307:              slti         s10, s6, -710
308:              xor          s4, a3, t1
309:              lui          t1, 474030
                  bgeu         s4, gp, 317f
                  auipc        a1, 989917
                  bne          a0, t3, 327f
313:              ori          gp, t1, 1776
                  lui          a2, 3094
                  slt          s5, a2, s3
                  bgeu         zero, ra, 336f
317:              andi         s4, a2, 1034
                  sub          gp, zero, a3
                  sltu         s1, gp, s10
320:              sltiu        a3, a5, -1594
                  add          s5, t5, a1
                  bgeu         s8, s3, 330f
                  slti         s5, s5, 1276
                  sll          s1, s10, zero
                  beq          a3, t2, 330f
                  bgeu         s6, s10, 332f
327:              blt          s2, s2, 345f
                  sll          s3, s4, a3
                  bltu         tp, s6, 331f
330:              sra          s7, t5, s2
331:              srli         a1, gp, 4
332:              nop
                  addi         a3, sp, -627
                  xori         t3, s7, -1699
                  nop
336:              bgeu         t5, a0, 342f
                  slti         a2, a4, -940
                  andi         s0, s9, 115
                  sll          a6, s3, t0
                  sltiu        t0, a3, 1119
                  srli         a3, t2, 11
342:              sub          a3, t5, s6
                  srai         zero, t1, 8
                  blt          t4, sp, 350f
345:              sltu         a4, t5, s8
                  sltu         a0, t5, t2
                  bgeu         zero, ra, 358f
                  sub          t1, sp, t1
                  xori         gp, s11, -1818
350:              beq          s2, sp, 365f
                  bgeu         s11, s9, 353f
                  slti         t2, a4, 1347
353:              ori          a7, s9, 248
                  bge          t1, t1, 371f
                  blt          a2, a2, 374f
                  sltiu        t1, s0, -193
                  srai         s10, ra, 5
358:              bltu         s4, a3, 377f
                  sub          s9, sp, a0
                  srai         s3, a6, 24
                  nop
                  sra          s8, a7, ra
                  srai         s7, s6, 30
                  blt          s8, t5, 380f
365:              xor          t0, a4, t6
                  nop
                  sltu         s6, t4, s9
                  and          s3, s10, t1
                  sra          gp, s6, s1
                  slli         a3, s5, 25
371:              sra          s8, zero, s8
                  slli         s0, a7, 23
                  ori          a5, s8, 1105
374:              beq          s8, s4, 390f
                  slli         t3, a6, 3
                  and          gp, a6, s7
377:              bne          t2, t6, 391f
                  andi         s10, a4, -1856
                  lui          s3, 708280
380:              sra          a0, s6, t3
                  slt          s9, s4, tp
                  or           a4, s3, s1
                  or           s10, s6, t2
                  ori          s11, t6, 1273
                  nop
                  ori          a3, s9, 63
                  srli         t0, s8, 21
                  nop
                  sll          s2, t5, s0
390:              bge          t0, a7, 409f
391:              sltiu        s6, sp, -1676
                  sra          s3, t3, a7
                  add          s7, tp, s4
                  auipc        a2, 306605
                  blt          a5, sp, 402f
                  auipc        s6, 235969
                  bge          s2, s1, 403f
                  add          a4, s10, s10
                  addi         a7, t6, -671
                  sltu         s3, s7, t2
                  srl          gp, s4, s4
402:              xor          a4, a7, s2
403:              addi         a3, s5, 1709
                  slti         t2, s4, -1652
                  xori         t2, gp, 1795
                  slli         a7, a3, 12
                  andi         t5, s5, 680
                  auipc        s7, 499387
409:              bgeu         s2, t4, 420f
                  nop
                  xori         a0, s6, 1284
                  slt          s0, a6, t3
                  sltu         t1, s8, s2
                  srl          s1, t0, sp
                  bgeu         s2, s10, 423f
                  or           s4, a5, s3
                  sub          a4, a1, a0
                  add          t1, s5, a7
                  sub          gp, s4, s4
420:              srai         s5, s11, 7
                  slti         s1, s8, -327
                  bne          s0, s8, 437f
423:              andi         t0, ra, 130
                  bgeu         a5, s7, 440f
                  srl          a4, s10, a1
                  sub          a5, t1, s5
                  add          t3, a1, s7
                  slti         a3, a2, -185
                  sra          s2, s2, tp
                  sll          t3, a7, a1
                  or           s8, s8, s9
                  beq          s5, t4, 446f
                  andi         s9, a2, 434
                  add          s1, tp, t1
                  addi         a4, gp, 2044
                  addi         s6, t6, 282
437:              add          s11, tp, a5
                  bge          a2, sp, 442f
                  srai         a4, t2, 2
440:              or           zero, zero, a5
                  sltu         a6, s3, a7
442:              auipc        s5, 825003
                  sltiu        s6, s2, -1717
                  sltiu        a2, t5, 2034
                  nop
446:              and          t5, a7, s9
                  blt          s11, tp, 457f
                  srl          t5, s1, s4
                  slt          a1, s6, tp
                  bltu         s9, t6, 453f
                  and          sp, s0, s0
                  xor          a2, s8, t2
453:              add          a2, t5, s1
                  slt          s0, a0, zero
                  srli         s2, s4, 12
                  sltu         s7, s7, gp
457:              srl          s10, t2, zero
                  slli         a1, s10, 0
                  slt          t0, s7, tp
                  slti         s6, a3, 883
                  addi         sp, s5, 483
                  add          a6, a7, t0
                  sub          s2, t5, t6
                  srl          s10, t3, s7
                  slti         s7, s4, -450
                  sltiu        t1, s5, 1026
                  slti         t3, a0, -487
                  sltiu        s11, a2, 1306
                  srli         a6, s9, 12
                  add          s3, t2, s9
                  srl          s4, s11, a6
                  slli         a1, tp, 24
                  bne          s7, s5, 475f
                  auipc        gp, 638588
475:              srl          a5, t3, tp
                  slli         s0, a4, 21
                  addi         s8, zero, 1971
                  xor          a5, a6, a6
                  ori          t5, s0, 1611
                  xori         zero, zero, -921
                  auipc        t1, 425728
                  sltiu        a1, t2, -1439
                  nop
                  lui          ra, 891742
                  beq          a0, gp, 486f
486:              sub          s0, sp, s10
                  and          s7, a0, zero
                  or           s8, s1, a2
                  bltu         a2, s11, 491f
                  slli         s10, s11, 9
491:              add          a3, a1, s3
                  sra          sp, a7, t2
                  xor          a1, a5, a6
                  add          a3, s7, s2
                  sltiu        s4, s0, -1707
                  bge          s6, t4, 512f
                  slli         s6, s4, 20
                  srli         s11, s5, 26
                  beq          t4, s0, 504f
                  nop
                  auipc        sp, 593531
                  and          a6, ra, t5
                  srl          s0, s7, t2
504:              xori         t5, s4, 1129
                  ori          s0, t6, -1152
                  bgeu         s5, tp, 522f
                  ori          s9, s5, 960
                  add          a5, s6, t5
                  blt          t1, a7, 528f
                  sll          s3, t4, s6
                  add          ra, s1, s6
512:              bgeu         s0, a2, 532f
                  addi         zero, s7, -614
                  sra          s0, a0, tp
                  and          s6, t0, tp
                  bgeu         a2, s8, 535f
                  add          t1, t0, a5
                  sll          s2, a3, a2
                  slli         s9, ra, 5
                  slti         a7, a0, 1016
                  sltiu        s10, t4, 1888
522:              xori         s8, a3, -21
                  and          s7, s10, a3
                  bgeu         t0, s3, 530f
                  nop
                  xori         sp, a2, 1875
                  auipc        ra, 739077
528:              blt          a7, s9, 539f
                  add          s4, a2, ra
530:              lui          s11, 834282
                  sra          t3, a6, s7
532:              lui          s0, 615170
                  sll          t0, s4, s6
                  slti         t1, t0, 1165
535:              blt          s10, s6, 552f
                  srl          s3, s11, t3
                  sll          t3, ra, a6
                  bgeu         s7, a4, 555f
539:              sltu         t3, a6, s11
                  srl          s8, a6, s7
                  andi         s9, ra, -2033
                  or           s9, s1, s9
                  sltu         t5, a2, s0
                  blt          a2, t1, 562f
                  auipc        s5, 219945
                  srl          t3, gp, s3
                  xor          a7, sp, s7
                  sra          a2, ra, a7
                  and          s9, s5, t6
                  add          ra, s0, s5
                  beq          t2, sp, 555f
552:              sll          ra, tp, t0
                  slti         t2, gp, 256
                  xori         s10, s1, -1848
555:              slti         zero, s2, -1729
                  slti         a0, a7, 1592
                  sra          s3, s4, t5
                  addi         t3, t1, 996
                  slt          s2, s11, s0
                  add          s3, a1, s7
                  srli         s2, a2, 12
562:              sub          s6, s2, t0
                  sll          s11, s5, t4
                  addi         s7, s2, 102
                  nop
                  sltiu        s7, a5, -294
                  srli         t0, a4, 26
                  nop
                  nop
                  bgeu         a6, s7, 585f
                  auipc        s2, 874764
                  nop
                  sub          a1, a0, tp
                  auipc        s2, 996849
                  srli         a2, tp, 28
                  lui          sp, 612266
                  auipc        zero, 374387
                  sltu         s2, gp, a3
                  andi         s8, zero, 298
                  bge          a1, s11, 585f
                  xori         s1, t6, 27
                  slti         a7, s1, -210
                  srl          s9, t0, t5
                  slt          s11, a6, s9
585:              xor          s11, sp, s3
                  bltu         t1, gp, 592f
                  lui          s6, 530647
                  slli         s6, s3, 10
                  slli         s8, t6, 2
                  bltu         a6, s11, 594f
                  sra          t0, a6, s2
592:              sub          sp, s1, zero
                  bge          s9, s4, 594f
594:              addi         s5, a1, -824
                  auipc        s2, 736246
                  sltiu        a2, a6, 850
                  andi         t5, s6, -1063
                  lw           sp, 4(t4)
                  auipc        a0, 785130
                  srli         s9, s3, 7
                  srai         t3, s5, 19
                  sub          t3, a7, s8
                  sll          s9, s11, t4
                  sltiu        a7, s2, 305
                  addi         t4, t4, 8
                  addi         a5, s11, 76
835:              addi x22, x2, 1
835:              jalr x22, x22, 0
sub_3:            slt          zero, gp, s4
                  slti         a7, gp, 1305
                  bgeu         t6, a0, sub_3_stack_p
sub_3_stack_p:    addi         t4, t4, -8
                  sra          s10, t3, tp
                  sw           sp, 4(t4)
                  or           t1, s0, s8
                  slli         s7, t3, 16
                  slli         a1, s0, 0
                  sll          s5, s11, s6
                  and          s1, a0, zero
                  sub          ra, a6, a2
                  addi         t1, zero, 9 #init loop 0 counter
                  andi         s3, s5, -1597
                  or           a7, s4, a0
                  srl          t3, t3, a6
                  sra          a0, s10, s10
                  sll          t5, t1, gp
                  addi         a1, zero, 10 #init loop 0 limit
                  sltiu        s10, s1, -358
sub_3_3_0_t:      andi         gp, t6, 1760
                  or           a3, zero, s11
                  addi         s9, t2, -1643
                  add          s8, s7, a1
                  auipc        a6, 584822
                  srl          s10, a6, t6
                  addi         t1, t1, 7 #update loop 0 counter
                  xor          t0, s8, tp
                  sra          zero, t1, a1
                  ori          s10, a2, -1017
                  and          t2, s2, s8
                  sll          s6, a1, t3
                  auipc        t3, 269248
                  ori          a5, zero, 4
                  srai         a0, s7, 15
                  auipc        zero, 20311
                  addi         a0, a1, 1674
                  bltu         t1, a1, sub_3_3_0_t #branch for loop 0
                  sltu         s6, s0, a0
                  addi         a5, zero, 0 #init loop 0 counter
                  sltiu        s3, s3, -151
                  srli         s8, t3, 17
                  sra          s2, s3, s6
                  addi         s4, zero, -3 #init loop 0 limit
sub_3_4_0_t:      add          gp, s0, t6
                  sub          s0, t5, s2
                  addi         a5, a5, -8 #update loop 0 counter
                  slli         t2, a5, 21
                  add          a7, sp, sp
                  xori         sp, s3, -117
                  or           a2, s8, s2
                  and          s3, s8, s9
                  bge          a5, s4, sub_3_4_0_t #branch for loop 0
                  slli         t3, zero, 4
                  addi         s0, zero, 9 #init loop 1 counter
                  addi         s9, zero, -1 #init loop 1 limit
sub_3_0_1_t:      andi         t0, a4, 200
                  addi         s0, s0, -1 #update loop 1 counter
                  slti         a1, a5, -507
                  addi         s10, zero, 3 #init loop 0 counter
                  addi         s5, zero, -13 #init loop 0 limit
sub_3_0_0_t:      slt          a2, t6, a4
                  addi         s10, s10, -8 #update loop 0 counter
                  bne          s10, s5, sub_3_0_0_t #branch for loop 0
                  sll          s8, a3, t6
                  bge          s0, s9, sub_3_0_1_t #branch for loop 1
                  or           gp, ra, s5
                  addi         gp, zero, 8 #init loop 1 counter
                  auipc        s3, 438320
                  sltiu        a5, t3, 162
                  slti         s10, s10, 1027
                  add          s7, s2, s1
                  lui          s9, 73586
                  add          s6, s8, t2
                  addi         ra, zero, 6 #init loop 1 limit
sub_3_8_1_t:      sub          s5, zero, t4
                  srai         a7, s8, 7
                  xor          a5, s6, s11
                  slti         a6, s0, 563
                  sltu         s0, a3, t4
                  addi         gp, gp, -2 #update loop 1 counter
                  sll          s7, s10, a4
                  addi         a0, zero, -10 #init loop 0 counter
                  slt          a3, s7, s3
                  addi         t5, zero, -18 #init loop 0 limit
                  xor          s2, s2, ra
                  sub          s11, t2, a0
                  sll          s10, a2, s3
sub_3_8_0_t:      and          s4, t6, t2
                  srai         s1, tp, 11
                  sltu         s5, t0, s1
                  sll          a7, a2, a5
                  or           s9, s10, s9
                  sra          a4, a6, s3
                  slli         t1, s5, 15
                  addi         a0, a0, -8 #update loop 0 counter
                  or           a5, zero, zero
                  beq          a0, t5, sub_3_8_0_t #branch for loop 0
                  sll          t2, a0, zero
                  bgeu         gp, ra, sub_3_8_1_t #branch for loop 1
                  sll          t1, t3, gp
                  addi         s2, zero, 9 #init loop 0 counter
                  addi         a0, s11, 1514
                  and          t1, a2, a5
                  sub          a7, s1, zero
                  auipc        s0, 838802
                  addi         gp, zero, 9 #init loop 0 limit
                  lui          t0, 804547
                  add          s8, gp, a3
                  srai         s10, t1, 23
sub_3_5_0_t:      slt          a4, a6, s3
                  or           s3, s10, s1
                  or           s0, s6, s5
                  srai         a0, sp, 8
                  slt          s8, s1, s11
                  slli         s3, sp, 18
                  and          s6, s3, s0
                  srli         s10, s2, 1
                  srli         s0, t4, 8
                  xor          t1, a4, tp
                  addi         s2, s2, -4 #update loop 0 counter
                  auipc        t3, 156451
                  sub          t0, s5, s4
                  bgeu         s2, gp, sub_3_5_0_t #branch for loop 0
                  srli         a3, ra, 10
                  addi         t1, zero, 5 #init loop 0 counter
                  andi         s10, s11, 97
                  sra          a5, gp, sp
                  xori         t3, a7, -1012
                  sltiu        sp, a2, 1482
                  lui          s1, 602929
                  srai         a6, a3, 22
                  sub          a7, s7, a7
                  sra          s3, s8, a6
                  slt          sp, gp, a5
                  or           s5, s4, t3
                  xori         s9, sp, -1160
                  sltu         a4, ra, sp
                  addi         s2, zero, -5 #init loop 0 limit
                  xor          s9, ra, t0
sub_3_7_0_t:      xori         s8, a6, 640
                  nop
                  auipc        a5, 687364
                  addi         t1, t1, -5 #update loop 0 counter
                  bne          t1, s2, sub_3_7_0_t #branch for loop 0
                  srl          a6, a6, tp
                  addi         ra, zero, 2 #init loop 0 counter
                  xori         t2, a6, -1437
                  sltu         s7, t5, zero
                  xor          s4, t6, s11
                  addi         sp, zero, 9 #init loop 0 limit
sub_3_2_0_t:      sltiu        t5, a0, -1974
                  or           s11, ra, s4
                  ori          s1, s4, 749
                  slt          s10, tp, s0
                  addi         ra, ra, 7 #update loop 0 counter
                  andi         a7, a3, 436
                  srl          s7, tp, s1
                  xori         zero, s2, -1051
                  sll          s6, s6, t6
                  or           s0, a6, a1
                  lui          s2, 496750
                  srai         s3, s4, 26
                  beq          ra, sp, sub_3_2_0_t #branch for loop 0
                  slli         t5, s7, 23
                  lui          s3, 999806
                  andi         a1, s0, 1214
                  or           a1, s9, s3
                  andi         a5, s9, 1862
                  sll          s2, a0, a5
                  bgeu         s2, t5, 14f
                  xor          a3, s3, gp
                  ori          s8, s5, -61
                  bltu         t0, a0, 28f
                  bge          a1, t1, 17f
                  slt          sp, zero, a2
                  xori         s2, s3, -1643
                  ori          a1, s7, 950
                  slt          s3, a1, s7
14:               bgeu         t4, t1, 24f
                  or           t5, a4, a3
                  andi         sp, t2, 1332
17:               sltiu        sp, ra, 870
                  bge          s0, gp, 37f
                  and          gp, t0, s10
                  bge          zero, sp, 40f
                  srli         t1, s7, 16
                  sltiu        s6, a3, 1970
                  or           s0, s6, s9
24:               xori         a2, t6, -1267
                  srli         a5, t0, 17
                  auipc        zero, 272424
                  slti         s6, zero, 813
28:               xor          zero, sp, sp
                  bge          tp, s4, 37f
                  sltiu        a2, t2, 1834
                  and          s11, a5, t3
                  sra          ra, a7, t3
                  sll          zero, s3, a2
                  andi         s10, s5, -499
                  lui          a4, 315171
                  bne          t0, s2, 52f
37:               bgeu         s8, s11, 48f
                  sltu         s5, zero, s7
                  bgeu         s8, a3, 56f
40:               sll          s8, a0, t2
                  slt          s5, a1, t2
                  sra          zero, a5, a1
                  or           s2, zero, ra
                  slli         a3, s4, 17
                  bltu         s11, a1, 46f
46:               bge          t1, s7, 66f
                  sub          t0, s6, s8
48:               bgeu         tp, s6, 66f
                  slti         a3, t5, -2043
                  auipc        zero, 585573
                  slti         t5, a4, -1438
52:               bge          gp, t2, 67f
                  bge          t2, s7, 71f
                  xor          t0, gp, s0
                  lui          s6, 677538
56:               auipc        a6, 690052
                  xori         a6, s10, -206
                  sltu         t5, s6, s2
                  slt          t1, s2, a6
                  and          s10, t2, a6
                  ori          s9, a5, 1736
                  bne          gp, a4, 77f
                  nop
                  or           t1, ra, s10
                  slti         ra, s0, 52
66:               slti         s4, s5, 559
67:               bgeu         tp, s6, 81f
                  bgeu         sp, a4, 73f
                  xori         t3, tp, -2036
                  sra          a2, t5, ra
71:               bne          t2, s10, 88f
                  bltu         t5, t1, 84f
73:               sltu         a0, sp, t0
                  addi         s1, s6, 1220
                  srli         a2, s7, 11
                  beq          zero, a3, 81f
77:               xor          s9, s8, s4
                  lui          s3, 782210
                  xori         s8, t0, -216
                  bne          a4, s3, 91f
81:               addi         s2, a1, 1187
                  beq          t5, tp, 83f
83:               blt          s11, s5, 84f
84:               xori         a1, t2, -1786
                  xori         s1, zero, -1665
                  slti         s3, a7, 1181
                  sltiu        s5, s8, 246
88:               andi         s2, gp, -1685
                  blt          t2, s11, 103f
                  addi         s11, s2, -797
91:               sra          t0, a0, a6
                  slti         a6, s7, -1014
                  bltu         s3, t4, 96f
                  addi         gp, t6, 162
                  auipc        sp, 90138
96:               slt          s10, t6, s7
                  slti         t3, s10, 303
                  or           a4, gp, a6
                  beq          t0, tp, 108f
                  sll          t3, sp, a2
                  addi         a3, zero, 10 #init loop 0 counter
                  slt          a6, a6, a2
                  slti         a1, s1, -1304
                  slt          a1, t2, s10
                  srli         gp, s5, 24
                  add          t2, a0, a1
                  or           s7, s11, t6
                  addi         a0, zero, 10 #init loop 0 limit
                  sltiu        t5, s1, 642
sub_3_6_0_t:      nop
                  lui          s5, 696892
                  addi         a3, a3, -9 #update loop 0 counter
                  addi         gp, s9, -1585
                  bgeu         a3, a0, sub_3_6_0_t #branch for loop 0
                  add          s1, ra, a1
                  blt          s10, s0, 111f
                  srli         a6, tp, 13
103:              sra          s10, t3, a7
                  xori         s7, t5, 1506
                  bltu         s5, zero, 115f
                  slli         s0, a5, 16
                  or           t1, s7, t3
108:              or           gp, s7, a4
                  sltiu        a5, s10, 37
                  slti         a5, a6, 1044
111:              slt          s8, t5, t0
                  slti         s0, tp, -1375
                  and          s3, t1, a7
                  xori         a3, t2, -774
115:              beq          s9, t5, 125f
                  xori         s4, a2, 1812
                  nop
                  slli         s11, t6, 7
                  andi         s0, s2, -1581
                  sltiu        a7, zero, -1230
                  sra          t5, s1, t2
                  ori          a0, s0, -1475
                  xori         t3, a2, 1479
                  sltiu        a5, s0, -368
125:              add          a0, a0, t0
                  slti         a3, a1, 1572
                  slli         a2, a6, 4
                  bge          t0, s11, 144f
                  sub          s2, gp, t2
                  beq          t4, a0, 135f
                  bne          s3, a0, 139f
                  slti         t0, s7, -1791
                  beq          s11, t2, 142f
                  bgeu         s1, s3, 151f
135:              slli         s5, a5, 23
                  add          zero, a1, t3
                  srl          t0, s4, s7
                  slli         s2, s10, 9
139:              xor          zero, s8, a5
                  auipc        zero, 650369
                  beq          sp, tp, 156f
142:              bge          a4, ra, 147f
                  sltu         gp, a0, t1
144:              srl          s8, zero, zero
                  ori          gp, a7, 1149
                  auipc        zero, 215507
147:              and          a3, s4, s1
                  sub          a6, s2, sp
                  ori          s2, a5, 1511
                  sub          a1, s9, tp
151:              srl          s5, s8, s0
                  srli         s10, s10, 23
                  ori          t2, s6, -1748
                  sltiu        sp, s9, 1210
                  xor          s4, zero, s0
156:              sub          t0, sp, sp
                  sra          t0, s3, t2
                  andi         t2, a1, 1035
                  slt          zero, t0, gp
                  ori          s0, ra, -1609
                  xori         t3, t5, 1145
                  sltu         gp, s2, s11
                  ori          sp, t4, -1716
                  bltu         ra, s9, 179f
                  sltu         s11, t6, sp
                  or           t3, t6, s6
                  bne          a6, t2, 177f
                  auipc        s11, 424667
                  srai         a5, t3, 11
                  srl          s3, a3, a4
                  srai         a3, tp, 5
                  sll          t2, a0, t0
                  bge          s7, s5, 192f
                  beq          a7, s2, 184f
                  xor          sp, t5, tp
                  sltu         s8, t0, a2
177:              xori         s3, a2, 1541
                  sltu         s5, ra, tp
179:              bgeu         a3, s7, 189f
                  or           a3, a5, s6
                  srli         t3, gp, 24
                  auipc        s3, 275315
                  lui          a0, 575424
184:              srai         t5, gp, 15
                  add          ra, a6, s9
                  andi         a7, a4, 1923
                  and          a4, a0, t3
                  blt          a4, t3, 191f
189:              add          a1, s6, ra
                  sll          s9, t2, s6
191:              ori          t5, t3, 1788
192:              srl          a5, a3, sp
                  slt          a0, a7, a0
                  ori          s6, t6, -184
                  auipc        s3, 331421
                  sra          a3, a2, s3
                  bgeu         t0, s6, 208f
                  sll          t5, a4, t6
                  andi         a2, t4, 1381
                  lui          a6, 652667
                  beq          a4, t4, 221f
                  srai         t3, s10, 10
                  slti         ra, t1, 300
                  sltu         a3, sp, a0
                  srli         a1, t0, 1
                  srai         s2, s7, 2
                  lui          a6, 86466
208:              sltu         s3, zero, tp
                  sll          a1, s0, a6
                  srai         t5, t3, 25
                  sub          s7, s10, s9
                  xori         t5, a2, -456
                  and          a1, a2, a3
                  bne          ra, t0, 215f
215:              sra          s9, ra, a3
                  andi         a5, s2, 1247
                  sltu         s5, gp, t3
                  bgeu         t3, s7, 238f
                  bgeu         s0, zero, 220f
220:              srai         a6, t0, 8
221:              bltu         s1, s7, 230f
                  srai         s7, a5, 23
                  add          t1, s2, tp
                  lui          s3, 434919
                  slti         a3, a3, 1556
                  bne          t5, t0, 240f
                  bge          s3, a5, 244f
                  sra          sp, sp, t4
                  xor          a5, a4, sp
230:              srai         s3, a7, 29
                  xori         s1, sp, -1672
                  auipc        s11, 638268
                  xor          s9, a0, t3
                  srl          a2, t4, s11
                  beq          t0, a2, 249f
                  auipc        s10, 661505
                  bge          s5, t5, 255f
238:              slt          s5, s9, a1
                  bgeu         gp, ra, 251f
240:              bge          a4, zero, 248f
                  nop
                  auipc        s9, 181775
                  auipc        t5, 531679
244:              add          sp, s8, s9
                  andi         s5, ra, -623
                  xor          s8, s10, a4
                  xor          s8, s11, zero
248:              xor          s5, s0, t0
249:              bltu         s5, tp, 267f
                  addi         s7, a6, -1352
251:              srl          s2, tp, s11
                  andi         a1, t4, 602
                  sra          a0, s11, s6
                  add          s3, ra, t2
255:              slli         a5, a1, 5
                  blt          a6, a1, 267f
                  ori          a2, t3, 878
                  sra          s10, s11, t6
                  sra          s9, ra, s9
                  bge          a0, s6, 270f
                  bne          s4, s9, 281f
                  srli         t2, t6, 12
                  or           s10, ra, s6
                  lui          s5, 525470
                  xor          t3, t4, t0
                  sll          a2, s6, t0
267:              xori         s11, a1, -638
                  lui          s3, 561132
                  bne          s7, t4, 270f
270:              bgeu         a2, s0, 284f
                  slti         a4, a3, 582
                  and          s5, zero, a3
                  bne          a6, a7, 293f
                  addi         a4, s9, 696
                  or           s6, s4, s4
                  auipc        t2, 962332
                  slti         s11, gp, 1953
                  srl          t2, gp, sp
                  beq          a2, t6, 288f
                  bne          a4, a1, 288f
281:              slti         s4, t2, 892
                  add          t2, a4, a0
                  lui          t5, 11082
284:              bne          ra, t2, 292f
                  beq          s9, s1, 286f
286:              bne          t3, s1, 296f
                  auipc        s1, 722182
288:              bne          zero, a7, 306f
                  bge          t0, s8, 304f
                  slli         s2, ra, 28
                  srai         s8, s3, 9
292:              nop
293:              sltu         t3, s6, s5
                  bgeu         s4, s7, 308f
                  ori          gp, a5, -1940
296:              slli         s4, s3, 31
                  addi         t1, t0, -1079
                  slti         s6, a5, 472
                  auipc        ra, 769625
                  or           s10, a0, t1
                  sltu         s9, t2, t1
                  xor          a7, s1, a7
                  addi         s8, s5, -498
304:              slti         s0, t2, -1936
                  sll          s5, s7, t5
306:              add          sp, s2, s7
                  add          gp, s10, t0
308:              bgeu         gp, sp, 313f
                  bne          s2, a3, 310f
310:              bgeu         s3, a1, 313f
                  addi         s3, a6, -755
                  sub          s10, a7, a7
313:              sra          t0, s2, t1
                  auipc        s8, 849656
                  xori         a7, zero, -285
                  or           s4, zero, t4
                  andi         a4, s9, 1563
                  srl          s6, t3, s0
                  lui          s1, 834538
                  blt          t3, t5, 321f
321:              sra          s3, s6, s0
                  xori         a3, s7, 1219
                  bgeu         t2, ra, 332f
                  auipc        sp, 50275
                  blt          a5, a2, 343f
                  sub          gp, s3, s4
                  slti         s9, s8, 350
                  sltiu        a4, a7, -1152
                  auipc        s9, 395764
                  srl          sp, gp, t0
                  sub          s0, a0, s7
332:              xor          a6, a1, t4
                  xor          a7, s3, t5
                  slli         gp, t2, 27
                  sltu         s1, s9, zero
                  lui          a1, 752407
                  ori          a3, s7, -1750
                  slti         a5, t5, 911
                  blt          a2, sp, 359f
                  ori          gp, zero, -945
                  addi         a7, a3, 1474
                  add          s4, t0, t3
343:              bltu         s4, t0, 359f
                  bne          ra, t5, 364f
                  slt          a7, t3, t2
                  andi         t5, ra, 672
                  or           s9, t1, tp
                  sub          a0, a7, s3
                  bge          s5, s0, 359f
                  andi         s11, s4, 1466
                  beq          s5, s11, 362f
                  srl          t0, a4, t0
                  slli         s6, t3, 30
                  srl          s6, s0, s3
                  auipc        s9, 665210
                  bltu         s2, t4, 368f
                  sltiu        s10, s7, 1357
                  bltu         ra, s2, 375f
359:              sltu         gp, t6, s10
                  srl          s4, t4, a2
                  sltu         s2, s6, a0
362:              beq          s2, s1, 379f
                  andi         s1, s7, 349
364:              sra          a6, a4, zero
                  sll          zero, s2, s7
                  or           s8, s2, t1
                  bne          s7, a5, 382f
368:              sltu         s8, s1, t2
                  srl          a7, a5, s1
                  srl          a6, s6, sp
                  srl          a7, s8, a7
                  sra          a4, t1, s2
                  add          s3, s9, a7
                  auipc        s0, 52684
375:              srli         t1, a4, 18
                  and          t1, zero, s11
                  sltiu        sp, s3, -1108
                  slli         a7, s6, 7
379:              xor          a7, zero, a5
                  sra          a3, s6, a0
                  srli         a0, t4, 15
382:              and          a4, a2, s1
                  slli         sp, s7, 16
                  sll          a3, s5, t0
                  bgeu         s8, s9, 395f
                  bltu         a4, gp, 391f
                  or           t0, s0, s11
                  xori         t3, s2, 197
                  andi         a5, s6, 1649
                  srli         a7, s8, 31
391:              auipc        a0, 178895
                  sub          zero, a6, s10
                  sub          a2, s7, s1
                  sub          s0, s10, s0
395:              blt          s2, s0, 405f
                  bgeu         s7, s2, 415f
                  beq          zero, a7, 408f
                  sltiu        a4, gp, 1731
                  xori         a2, t5, 43
                  addi         t0, zero, -1 #init loop 1 counter
                  slt          s5, t2, a5
                  sltu         t5, s9, s0
                  sub          ra, sp, a4
                  sll          s5, a4, t4
                  sltu         a2, t0, s3
                  and          s8, t2, sp
                  sra          a1, s7, s7
                  ori          t3, a4, -883
                  addi         s11, zero, 16 #init loop 1 limit
                  slti         s7, t0, -1327
                  xori         s7, t2, -2015
sub_3_1_1_t:      andi         s6, s2, -1300
                  addi         t0, t0, 2 #update loop 1 counter
                  add          s7, zero, tp
                  slli         zero, a5, 1
                  addi         a0, zero, -8 #init loop 0 counter
                  addi         t1, zero, -13 #init loop 0 limit
                  sltiu        a3, s11, -1970
                  and          a3, s2, t4
                  lui          t5, 762038
                  add          a2, a2, t0
                  srai         s5, s5, 17
                  slli         sp, t5, 17
sub_3_1_0_t:      ori          s8, s4, 1376
                  addi         a0, a0, -6 #update loop 0 counter
                  nop
                  xori         zero, s1, -686
                  bge          a0, t1, sub_3_1_0_t #branch for loop 0
                  ori          a2, s5, 1276
                  xor          s3, s4, s9
                  or           s1, a1, t3
                  bltu         t0, s11, sub_3_1_1_t #branch for loop 1
                  slli         s9, ra, 24
                  sll          s7, s10, t2
                  slt          s2, tp, a6
                  srl          s6, s0, t3
                  add          s9, ra, ra
                  slli         s1, s11, 31
405:              addi         a6, s4, 1627
                  srai         s8, s3, 30
                  srai         zero, sp, 28
408:              add          s8, gp, zero
                  and          a4, s6, a0
                  sll          s5, s5, t2
                  srli         s5, t6, 12
                  and          s0, s1, gp
                  bgeu         a4, a2, 423f
                  slli         t0, a4, 22
415:              sltu         s11, a6, s2
                  xor          a1, t1, ra
                  slti         t0, t2, -281
                  ori          t2, a5, 679
                  sltu         s8, zero, s10
                  xori         s9, t4, -1558
                  slt          t1, t4, gp
                  sltiu        a6, t5, 1649
423:              andi         s1, a3, 1219
                  ori          s7, a2, 1071
                  srli         ra, t5, 31
                  srli         s3, s6, 7
                  add          s10, a6, a0
                  bltu         s7, zero, 445f
                  sltu         s9, a3, zero
                  bne          t4, t4, 435f
                  and          zero, tp, t4
                  sltiu        s3, s7, -1974
                  bne          s7, a2, 447f
                  sub          a3, s5, s8
435:              sltiu        t5, a6, -1494
                  nop
                  sub          t1, gp, tp
                  beq          zero, gp, 439f
439:              sra          s0, t4, s10
                  sltu         s7, s8, zero
                  andi         a5, a7, -777
                  sra          zero, s6, s11
                  sltu         s10, s11, zero
                  srl          s6, a1, a0
445:              slt          a7, t1, zero
                  auipc        zero, 48423
447:              and          s10, a1, ra
                  sub          s6, s4, t0
                  bne          s7, a7, 459f
                  sltu         ra, a3, t1
                  sltu         a3, t4, s5
                  nop
                  lui          sp, 672686
                  srai         a5, t4, 22
                  auipc        t5, 380570
                  andi         s1, s7, -77
                  slt          t2, s8, s4
                  slti         a5, t2, 75
459:              srai         zero, a7, 31
                  sub          ra, tp, s1
                  sltu         a0, a2, a7
                  lw           sp, 4(t4)
                  addi         t4, t4, 8
                  auipc        s4, 1043451
679:              addi x20, x2, 1
679:              jalr x20, x20, 0
sub_5:            andi         t1, a2, 920
                  addi         t4, t4, -12
                  ori          zero, a2, 1742
                  or           s7, t2, a6
                  srai         s11, s10, 9
                  or           a6, gp, s3
                  sw           sp, 4(t4)
                  addi         s2, s2, 1493
                  auipc        s5, 106093
                  srl          s10, gp, sp
                  bne          a5, t6, 13f
                  slli         s5, t0, 5
                  lui          t1, 389741
                  or           t3, s0, t3
                  bltu         a1, a1, 13f
                  andi         s7, tp, 827
                  beq          s0, s10, 13f
                  sra          gp, tp, t3
                  slti         t1, s7, -1156
                  addi         t0, s4, -1588
                  sra          a2, t5, s7
13:               auipc        s2, 524905
                  addi         s4, s3, 1028
                  sll          a6, sp, s5
                  lw           sp, 4(t4)
                  slti         s4, s10, 1175
                  and          s10, zero, a7
                  addi         t4, t4, 12
                  sra          a0, s2, s10
                  xori         s8, zero, 828
                  slli         a0, a6, 3
                  slli         t0, s3, 23
32:               addi x17, x2, 1
32:               jalr x17, x17, 0
sub_2:            xor          s4, s11, tp
                  srai         a1, a3, 21
                  bne          s9, s11, sub_2_stack_p
                  srai         s6, s2, 28
                  lui          t0, 252546
sub_2_stack_p:    addi         t4, t4, -20
                  andi         a1, a1, 991
                  sll          s1, a2, s5
                  auipc        t0, 545268
                  sw           sp, 4(t4)
                  sub          a2, a1, a0
                  auipc        s11, 122454
                  or           t2, sp, s2
                  sltiu        s6, a1, 1633
                  ori          s0, s6, -584
                  nop
                  srli         t5, a5, 28
                  add          sp, a4, t0
                  sub          t2, t4, t6
                  srl          gp, t2, a4
                  sra          gp, a0, s11
                  sltu         t3, t1, a7
                  sltiu        s3, t0, 369
sub_2_j5:         jal          sp, sub_4 #jump sub_2 -> sub_4
                  addi         s8, zero, 10 #init loop 1 counter
                  addi         sp, zero, 5 #init loop 1 limit
sub_2_1_1_t:      ori          a1, zero, -935
                  addi         s8, s8, -3 #update loop 1 counter
                  addi         ra, zero, 1 #init loop 0 counter
                  addi         s3, zero, 20 #init loop 0 limit
sub_2_1_0_t:      ori          a5, sp, 1505
                  addi         ra, ra, 3 #update loop 0 counter
                  bltu         ra, s3, sub_2_1_0_t #branch for loop 0
                  bgeu         s8, sp, sub_2_1_1_t #branch for loop 1
                  xori         a6, s0, 1938
                  addi         sp, zero, -7 #init loop 0 counter
                  srai         ra, t2, 22
                  addi         a5, zero, -15 #init loop 0 limit
sub_2_0_0_t:      ori          gp, s11, 308
                  lui          a7, 187460
                  addi         sp, sp, -7 #update loop 0 counter
                  bge          sp, a5, sub_2_0_0_t #branch for loop 0
                  slli         t2, t4, 21
                  auipc        s8, 438270
                  srai         zero, t1, 10
                  and          zero, s5, s10
                  nop
                  bltu         a0, s6, 19f
                  slli         s10, t6, 18
                  addi         a5, s10, 55
                  nop
                  srl          s9, a6, s6
                  nop
                  auipc        s3, 258272
                  sll          s8, t3, t2
                  bltu         sp, s9, 18f
                  sll          s0, a0, s6
                  auipc        t1, 312436
                  sub          s0, t1, t1
                  auipc        s0, 952979
                  sltu         t3, s10, a2
18:               bgeu         s3, a7, 28f
19:               sltiu        sp, sp, -632
                  auipc        s3, 880826
                  bge          s9, s2, 40f
                  bne          s3, s11, 42f
                  blt          a7, a4, 42f
                  xori         s2, sp, -1345
                  add          t5, s5, t4
                  lui          s3, 493089
                  bge          ra, s4, 35f
28:               slli         t0, s2, 7
                  xor          t0, tp, a5
                  sltu         t3, s3, s10
                  auipc        t1, 892903
                  srai         s4, t5, 28
                  xori         a1, s9, -1409
                  nop
35:               bge          s9, sp, 55f
                  auipc        a2, 287406
                  srai         s3, t0, 29
                  or           s4, t0, a3
                  ori          sp, s1, 735
40:               add          a4, t5, a6
                  sub          s8, a1, t0
42:               lui          a5, 1027605
                  slli         t2, t3, 19
                  srai         a1, s2, 4
                  bge          s1, a7, 57f
                  sll          a5, t0, s4
                  sub          ra, zero, s2
                  beq          a1, s0, 59f
                  xori         s1, s6, -16
                  bgeu         ra, s9, 64f
                  slt          t3, tp, t3
                  auipc        a0, 455127
                  and          t1, a3, a0
                  sra          a5, s6, s8
55:               sltiu        zero, s1, 23
                  sltu         s7, s9, s0
57:               xori         t2, a4, -1351
                  bge          a4, tp, 67f
59:               bge          a6, s1, 70f
                  xori         a4, t2, -1317
                  sra          t3, s1, t6
                  andi         t3, ra, 1526
                  lui          sp, 699970
64:               add          s10, s4, s7
                  slt          s6, s1, tp
                  xori         ra, t6, 1601
67:               andi         a4, a2, -29
                  slt          zero, s7, a2
                  and          a5, t3, ra
70:               bge          s5, t0, 78f
                  sub          t1, a3, t2
                  xori         s4, t5, -656
                  andi         s3, s2, 10
                  srl          a0, s2, t2
                  bge          a4, gp, 95f
                  or           s9, s5, a6
                  beq          s3, t4, 97f
78:               or           s11, tp, a5
                  sltiu        t1, a6, 1333
                  beq          s7, s1, 96f
                  bne          t4, s9, 92f
                  addi         s6, s0, -558
                  bne          sp, t4, 95f
                  sltu         s6, gp, s2
                  slli         t3, s2, 27
                  addi         t3, a3, -180
                  bgeu         t5, s1, 97f
                  sra          t0, t4, a1
                  bltu         a7, t5, 91f
                  ori          gp, ra, 1553
91:               ori          gp, a2, 1318
92:               ori          s6, s11, 830
                  or           s9, t6, t6
                  and          a0, s4, s10
95:               bltu         s7, s4, 103f
96:               bgeu         t6, s2, 103f
97:               auipc        t2, 120396
                  bltu         s4, s4, 103f
                  sub          gp, t3, s0
                  addi         a3, t5, -358
                  ori          a5, s4, 1972
                  nop
103:              xor          s5, a1, ra
                  lw           sp, 4(t4)
                  slli         s10, t2, 15
                  srai         ra, s7, 20
                  srai         a7, a5, 19
                  sltu         s4, s8, s8
                  slt          a1, s4, t6
                  sub          a1, s7, s1
                  addi         t4, t4, 20
                  slli         t3, tp, 26
                  srl          a1, a3, a2
                  add          zero, t2, s7
                  ori          t1, sp, 419
159:              addi x15, x2, 0
159:              jalr x15, x15, 0
sub_4:            bgeu         sp, t1, sub_4_stack_p
                  sra          ra, s0, s1
                  auipc        s7, 189528
                  and          s8, s6, s0
                  srli         a6, a0, 8
                  add          s6, t5, a6
sub_4_stack_p:    addi         t4, t4, -60
                  sltu         s6, s9, s2
                  sw           sp, 4(t4)
                  or           s5, s4, s6
                  auipc        t2, 504020
                  srli         s6, zero, 22
                  lui          a4, 417123
                  xori         a3, a2, 1095
                  xor          s11, a7, a6
                  add          s11, t1, s0
                  slli         a7, t6, 18
                  or           s10, s1, a6
                  slt          s11, s10, gp
                  auipc        s6, 215785
sub_4_j6:         jal          sp, sub_5 #jump sub_4 -> sub_5
                  addi         ra, zero, 7 #init loop 1 counter
                  sra          t5, a7, s4
                  slli         s0, a0, 3
                  addi         s9, t4, -1761
                  ori          a6, a4, -1365
                  addi         gp, zero, -17 #init loop 1 limit
sub_4_4_1_t:      slti         s8, s2, 1346
                  addi         ra, ra, -4 #update loop 1 counter
                  addi         t0, zero, 8 #init loop 0 counter
                  srli         s8, t5, 5
                  addi         t1, zero, -13 #init loop 0 limit
                  auipc        s6, 723602
                  addi         zero, s0, 46
sub_4_4_0_t:      and          t5, s3, s8
                  slli         s7, s6, 12
                  addi         t0, t0, -2 #update loop 0 counter
                  nop
                  bge          t0, t1, sub_4_4_0_t #branch for loop 0
                  lui          a0, 259050
                  sll          s10, s7, s0
                  add          s3, a4, t1
                  beq          ra, gp, sub_4_4_1_t #branch for loop 1
                  ori          s11, a1, 1295
                  addi         t5, zero, 8 #init loop 0 counter
                  xori         s5, s3, 583
                  addi         s1, zero, 13 #init loop 0 limit
                  andi         s9, a2, 2027
sub_4_9_0_t:      lui          s8, 880285
                  lui          a0, 896940
                  addi         t5, t5, 7 #update loop 0 counter
                  xori         s11, s11, 103
                  andi         t2, s2, -1391
                  sltu         sp, s5, ra
                  sltiu        s11, a6, 1412
                  srli         s7, s8, 1
                  blt          t5, s1, sub_4_9_0_t #branch for loop 0
                  sltiu        t3, a1, 2023
                  addi         s9, zero, 9 #init loop 0 counter
                  slti         a3, s3, -25
                  lui          a2, 160286
                  ori          t1, sp, -390
                  sll          s0, t2, a0
                  ori          s0, s4, 1212
                  addi         t2, a6, -130
                  and          s2, t0, a4
                  sll          a4, s4, t6
                  addi         a6, zero, 8 #init loop 0 limit
sub_4_10_0_t:     ori          s0, s3, -1789
                  slti         s8, tp, 1550
                  slti         s7, t1, 1767
                  add          a0, s1, zero
                  sltiu        t1, a6, 246
                  sub          t5, a1, s4
                  srai         t1, t0, 15
                  xori         s4, s5, 423
                  add          s5, a5, gp
                  and          s8, a0, t1
                  addi         s9, s9, -3 #update loop 0 counter
                  or           s2, t4, s8
                  slti         gp, sp, 871
                  slli         s1, s4, 0
                  or           ra, a3, a0
                  add          a7, a0, s8
                  bgeu         s9, a6, sub_4_10_0_t #branch for loop 0
                  sll          a5, s9, a2
                  addi         t1, zero, 7 #init loop 1 counter
                  sra          s3, a6, a4
                  add          s7, ra, t3
                  addi         s6, zero, 3 #init loop 1 limit
sub_4_1_1_t:      nop
                  or           gp, tp, a7
                  xor          s4, s4, a2
                  sltu         s9, t5, sp
                  addi         t1, t1, -2 #update loop 1 counter
                  addi         s1, zero, -8 #init loop 0 counter
                  xori         a6, s0, 992
                  addi         a0, zero, 0 #init loop 0 limit
sub_4_1_0_t:      auipc        sp, 250819
                  and          a7, gp, a4
                  addi         s1, s1, 7 #update loop 0 counter
                  blt          s1, a0, sub_4_1_0_t #branch for loop 0
                  xori         ra, a3, 85
                  add          s11, s2, a2
                  srl          s10, t1, sp
                  bgeu         t1, s6, sub_4_1_1_t #branch for loop 1
                  sltu         t0, t5, t0
                  addi         ra, zero, 10 #init loop 0 counter
                  lui          a2, 976304
                  lui          t2, 406995
                  slti         a2, t1, -340
                  sra          s6, a2, a7
                  xori         s10, a3, 465
                  srl          a7, sp, sp
                  xori         s9, a4, -1677
                  sra          s9, t1, s3
                  or           a3, t4, s6
                  srli         a4, a2, 0
                  slli         s0, a6, 31
                  sll          a6, s2, t5
                  addi         t0, zero, 10 #init loop 0 limit
sub_4_6_0_t:      xor          s0, a6, s3
                  slli         a5, t1, 16
                  addi         ra, ra, -9 #update loop 0 counter
                  slt          a2, a3, t2
                  nop
                  bgeu         ra, t0, sub_4_6_0_t #branch for loop 0
                  srl          a0, s2, t1
                  addi         s0, zero, 2 #init loop 1 counter
                  xori         a3, s6, -1880
                  or           t1, a6, a2
                  sub          t5, ra, s2
                  addi         s3, zero, 6 #init loop 1 limit
                  slli         s8, s2, 4
sub_4_8_1_t:      or           ra, t3, t1
                  addi         s0, s0, 1 #update loop 1 counter
                  addi         s10, zero, 5 #init loop 0 counter
                  lui          a4, 1967
                  auipc        t3, 163151
                  addi         a1, zero, 5 #init loop 0 limit
sub_4_8_0_t:      sltiu        sp, zero, -1985
                  addi         s10, s10, -4 #update loop 0 counter
                  slt          a4, s1, a6
                  sll          s1, a1, s5
                  bgeu         s10, a1, sub_4_8_0_t #branch for loop 0
                  beq          s0, s3, sub_4_8_1_t #branch for loop 1
                  and          a3, s3, s10
                  addi         a5, zero, 10 #init loop 1 counter
                  lui          t2, 262193
                  addi         zero, zero, -1832
                  or           a7, t5, a5
                  addi         t0, sp, -486
                  addi         t3, zero, 7 #init loop 1 limit
                  srai         zero, t2, 14
sub_4_3_1_t:      sltu         s5, t5, zero
                  addi         a5, a5, -6 #update loop 1 counter
                  addi         a0, zero, 7 #init loop 0 counter
                  sltiu        a6, s8, -1205
                  addi         sp, zero, -9 #init loop 0 limit
                  slli         s3, s3, 13
sub_4_3_0_t:      addi         a6, gp, 121
                  slti         s4, s3, 1605
                  addi         a0, a0, -4 #update loop 0 counter
                  bne          a0, sp, sub_4_3_0_t #branch for loop 0
                  auipc        a1, 119455
                  bgeu         a5, t3, sub_4_3_1_t #branch for loop 1
                  sll          a2, tp, a1
                  addi         t2, zero, 2 #init loop 1 counter
                  srli         ra, a0, 17
                  slti         s7, sp, -42
                  addi         s3, zero, 14 #init loop 1 limit
                  sltiu        s8, s1, 1992
                  srai         a7, t5, 22
                  sub          sp, s11, t0
                  xori         s4, sp, -1187
                  slti         s10, a2, 877
                  sub          a3, s1, a3
                  nop
sub_4_7_1_t:      addi         sp, a2, -24
                  and          s5, tp, ra
                  xori         s11, s8, 325
                  sra          s4, s3, s5
                  addi         t2, t2, 7 #update loop 1 counter
                  ori          ra, t4, 1633
                  xori         a2, s1, -95
                  sra          t3, s6, s5
                  addi         a6, zero, -6 #init loop 0 counter
                  xori         sp, gp, -1861
                  addi         a0, zero, 7 #init loop 0 limit
                  sub          s5, s0, s7
                  srai         a4, tp, 17
                  sra          s11, a5, a4
                  srl          s6, a6, s2
sub_4_7_0_t:      xor          a7, s4, a3
                  nop
                  addi         a6, a6, 10 #update loop 0 counter
                  xori         t5, sp, -1052
                  bltu         a6, a0, sub_4_7_0_t #branch for loop 0
                  sub          s0, s6, gp
                  bltu         t2, s3, sub_4_7_1_t #branch for loop 1
                  sltiu        s5, t3, 979
                  auipc        t5, 1021312
                  bge          s6, a5, 7f
                  addi         a6, zero, 720
                  and          s3, a7, t3
                  srl          a5, s4, sp
                  sltu         a2, a4, t6
                  sra          zero, s10, gp
7:                addi         s4, s5, -1634
                  add          s1, s3, s10
                  lui          t3, 610554
                  bltu         t2, t1, 21f
                  addi         s6, a5, -910
                  slti         a0, s8, -401
                  srai         ra, gp, 13
                  lui          s8, 992256
                  bltu         a7, s1, 33f
                  bne          s0, a7, 35f
                  or           t3, t4, a3
                  or           s5, s8, a6
                  blt          a3, a1, 29f
                  srai         s10, a3, 31
21:               xori         gp, a6, -510
                  and          a7, a7, zero
                  ori          s2, a0, 1063
                  ori          s7, t5, 250
                  and          s3, zero, ra
                  bgeu         a0, s7, 46f
                  xor          s10, a6, tp
                  addi         s3, a7, -1785
29:               blt          a2, a5, 34f
                  bgeu         s8, sp, 45f
                  slt          t2, ra, t1
                  bge          s1, a0, 35f
33:               sra          ra, s6, t3
34:               slt          t1, s6, s11
35:               ori          s2, t0, 1564
                  bltu         s3, s3, 50f
                  bne          t1, s1, 51f
                  or           t1, a6, a1
                  sub          a7, t0, s9
                  srl          s9, ra, s5
                  lui          s10, 48065
                  sll          a0, tp, zero
                  bne          s0, t3, 49f
                  bltu         s8, a6, 46f
45:               beq          sp, s3, 61f
46:               slli         t0, s9, 22
                  xori         a0, tp, 1939
                  add          s6, t5, t1
49:               beq          t2, s4, 62f
50:               srl          gp, gp, a1
51:               sub          t5, a1, zero
                  beq          t0, s8, 58f
                  or           s5, s11, a3
                  srai         a2, s3, 21
                  sltiu        t5, s0, 1155
                  bge          s0, a1, 76f
                  beq          ra, a1, 72f
58:               sltu         t1, a1, t1
                  nop
                  srl          s2, a5, a7
61:               beq          a6, t3, 73f
62:               xori         a0, t0, -64
                  sltiu        t3, s4, -1929
                  slt          t5, a5, t2
                  slli         gp, s0, 12
                  sll          t3, t4, t5
                  xor          a2, t1, s3
                  and          a4, a7, a1
                  and          a7, s7, a6
                  or           sp, a5, s0
                  sra          s8, s7, s8
72:               slli         a0, t2, 18
73:               ori          a5, sp, -169
                  slli         s3, a2, 16
                  sub          t5, a6, t3
76:               srl          s7, t0, gp
                  sll          a6, a3, t5
                  nop
                  and          a6, gp, s10
                  slti         s10, s5, 439
                  sll          a6, s10, zero
                  or           s11, a2, t3
                  sra          s7, s3, t1
                  addi         s2, gp, -1687
                  sltiu        a7, t0, 1785
                  slt          t0, t1, s4
                  slti         ra, gp, 1325
                  ori          s11, s0, -34
                  bgeu         s10, s10, 108f
                  auipc        a0, 362540
                  andi         s0, a5, 1142
                  srai         a4, a6, 23
                  srai         s9, s5, 23
                  bgeu         s11, t6, 95f
95:               slti         s5, s10, -833
                  or           ra, s4, t4
                  blt          s7, a4, 105f
                  sll          a4, t5, t3
                  blt          s9, s3, 113f
                  and          s1, s8, a0
                  sra          s1, s6, s7
                  blt          t5, a6, 119f
                  sra          s5, a4, a4
                  bne          a1, s1, 108f
105:              bgeu         t1, s2, 121f
                  sll          a6, gp, a6
                  or           s3, sp, gp
108:              auipc        a6, 56177
                  sra          t2, sp, a7
                  srai         s4, a7, 3
                  sltu         t5, t0, s2
                  beq          t0, t2, 121f
113:              addi         t1, s9, -645
                  srai         t1, zero, 8
                  beq          a5, s9, 118f
                  nop
                  sltu         s4, t2, a2
118:              srai         t2, s6, 24
119:              sll          a6, a6, a4
                  sltiu        a5, a2, 697
121:              bge          t1, a1, 138f
                  slt          a7, s10, sp
                  xori         ra, t1, 1191
                  beq          gp, sp, 138f
                  beq          tp, tp, 145f
                  nop
                  blt          gp, t5, 132f
                  slt          s8, t6, a6
                  slli         s6, s2, 3
                  lui          a3, 521576
                  srl          s2, a5, t2
132:              xor          a2, s1, s4
                  sub          zero, a6, t5
                  sub          s10, s10, a2
                  slli         t5, s5, 23
                  srl          zero, zero, sp
                  bge          s10, a1, 147f
138:              sltiu        t1, a2, 2004
                  lui          s2, 928094
                  and          a0, s2, a0
                  srai         s4, t2, 7
                  beq          ra, a7, 148f
                  bge          s9, t0, 160f
                  lui          s0, 801444
145:              blt          a3, a4, 164f
                  srl          s11, t0, s10
147:              bltu         t5, a0, 167f
148:              auipc        s5, 204809
                  srai         a5, s0, 12
                  slli         t3, t5, 0
                  bge          t4, s4, 157f
                  xor          s2, a7, t4
                  addi         s3, zero, 10 #init loop 0 counter
                  auipc        a0, 467797
                  sub          s6, t0, s10
                  sltiu        t0, s10, -1305
                  srli         t5, sp, 28
                  sub          a3, t3, ra
                  addi         t3, zero, 17 #init loop 0 limit
                  slli         a4, a2, 30
                  sub          t1, s7, a7
                  or           t1, gp, s5
                  sub          s8, s1, gp
                  sltu         s5, t5, s2
                  add          s6, gp, a2
                  sltu         a1, a7, s7
                  sltiu        t5, gp, -949
                  srai         t1, s8, 20
sub_4_5_0_t:      add          s7, a4, t2
                  add          zero, a1, a4
                  addi         s3, s3, 1 #update loop 0 counter
                  blt          s3, t3, sub_4_5_0_t #branch for loop 0
                  srli         s2, s4, 20
                  bne          s2, t1, 167f
                  bne          s11, a4, 166f
                  slti         a0, t2, -1254
                  addi         s9, s0, -383
157:              blt          zero, a0, 160f
                  auipc        a3, 112164
                  srl          s0, t6, s7
160:              bgeu         s3, t6, 174f
                  beq          s10, s9, 170f
                  xor          s0, s3, s8
                  slti         s2, s5, -10
164:              srai         s5, s7, 31
                  add          s3, t0, t5
166:              bge          t6, s1, 185f
167:              bltu         s8, a0, 171f
                  blt          t1, t2, 186f
                  srl          s5, t3, t2
170:              bltu         tp, tp, 173f
171:              slli         a7, s7, 30
                  xor          s8, a3, t6
173:              ori          s11, a2, -1121
174:              ori          s3, s8, 1307
                  beq          ra, t4, 181f
                  addi         ra, a7, 550
                  add          sp, ra, a2
                  andi         a7, s2, -1133
                  bgeu         a6, a5, 194f
                  sltiu        gp, a5, 156
181:              slli         t3, t6, 2
                  and          t0, a1, s8
                  sra          a5, t5, t5
                  slti         s5, s3, 2032
185:              srl          s9, s10, t5
186:              bltu         sp, t0, 199f
                  srli         ra, gp, 31
                  addi         a0, a1, 775
                  addi         t5, a2, 1643
                  and          a6, s2, s10
                  and          s9, a2, s11
                  ori          s4, t4, 1608
                  bgeu         t6, s8, 210f
194:              addi         s2, ra, -658
                  beq          s6, zero, 197f
                  bgeu         a1, t6, 210f
197:              lui          a2, 810576
                  bne          a1, a1, 214f
199:              sltu         s8, ra, s3
                  and          a7, s10, gp
                  sltiu        sp, s9, -588
                  or           t1, a7, zero
                  slt          t0, a0, gp
                  srli         s2, a3, 7
                  bne          a6, t6, 221f
                  bltu         sp, zero, 207f
207:              sub          s3, a0, t3
                  slt          a4, a6, a1
                  xori         s9, s7, 354
210:              addi         a6, s4, 1843
                  bge          s5, sp, 222f
                  add          a5, t6, s6
                  xori         t2, t3, 520
214:              and          s10, a5, a4
                  xor          a3, ra, gp
                  slli         s6, sp, 22
                  bltu         t2, t0, 225f
                  srai         a0, a1, 31
                  and          s5, a3, s10
                  sub          gp, s11, s3
221:              sub          a2, s5, s7
222:              sra          s0, t2, a7
                  srai         s4, ra, 26
                  sltu         gp, tp, s11
225:              blt          a5, ra, 239f
                  xor          s1, s8, s11
                  lui          s10, 73016
                  slli         t1, a6, 10
                  slti         a6, zero, 1388
                  add          a0, s4, a5
                  srl          s1, a4, t3
                  lui          t1, 614500
                  beq          s4, s5, 248f
                  slli         sp, a4, 13
                  xor          s5, a0, s6
                  xor          ra, a0, s11
                  srl          ra, s9, zero
                  bge          s3, s9, 255f
239:              blt          a4, gp, 252f
                  auipc        s1, 49310
                  sll          s10, a2, t3
                  andi         a1, a3, 193
                  srl          a2, gp, s9
                  sra          a3, t6, t4
                  slli         s5, s2, 9
                  bgeu         s0, s10, 252f
                  sltiu        a6, a0, -379
248:              ori          a0, t1, -1411
                  sltu         s2, a0, sp
                  lui          s10, 682324
                  blt          a2, a7, 257f
252:              sll          t0, a7, s4
                  slli         a5, t1, 25
                  slt          a5, a5, ra
255:              blt          s8, t6, 269f
                  xori         s4, s11, -1662
257:              sub          a1, sp, s7
                  lui          s4, 965212
                  slt          a1, a4, s5
                  srai         s5, s7, 1
                  lui          s9, 1010089
                  sll          a5, s5, s10
                  andi         s4, s8, 333
                  addi         a6, a7, 1322
                  nop
                  sra          s3, s4, s0
                  sra          a0, s9, t3
                  srli         zero, s6, 5
269:              add          t0, a4, s5
                  srli         a6, a7, 23
                  and          s1, s2, a6
                  sra          s4, a3, s5
                  srai         a3, a6, 9
                  lui          s0, 624320
                  and          t0, gp, a2
                  or           s2, s8, t1
                  sub          a7, s8, s8
                  ori          s10, s11, -1897
                  srli         s7, zero, 28
                  bge          s0, s6, 296f
                  bgeu         s5, a5, 285f
                  slti         a2, s4, -1264
                  sra          s8, s10, sp
                  nop
285:              blt          ra, s1, 304f
                  srl          a2, ra, s1
                  sltu         a2, a6, s9
                  sltu         t0, t6, s0
                  addi         s6, t5, -1727
                  blt          a1, s5, 292f
                  ori          s4, s5, 222
292:              srli         zero, s7, 30
                  auipc        a5, 542405
                  and          a7, s8, s7
                  bgeu         t6, a1, 309f
296:              auipc        s8, 707897
                  or           ra, s11, s6
                  or           t3, a1, s5
                  sltiu        t5, a3, -710
                  slti         t1, t5, 1131
                  sltiu        a7, sp, -859
                  auipc        s11, 654839
                  auipc        a2, 702045
304:              sltiu        a3, tp, -1250
                  sub          a1, s4, t4
                  sll          s4, s10, gp
                  beq          tp, s3, 315f
                  bne          t5, s6, 325f
309:              auipc        t1, 820579
                  srli         t0, zero, 20
                  andi         s3, zero, -473
                  blt          s0, a4, 315f
                  sll          s1, zero, s7
                  lui          s8, 1006500
315:              or           t3, t6, s3
                  addi         ra, s5, 791
                  sltu         s8, a0, a6
                  blt          zero, a7, 321f
                  and          a2, a5, a1
                  srai         s4, a0, 15
321:              and          zero, a4, a1
                  slti         t1, a7, -1503
                  sltu         s5, s10, gp
                  addi         s6, s10, -1997
325:              sltiu        ra, a3, 1981
                  bltu         s1, s6, 332f
                  xor          a1, s9, s7
                  bne          sp, s0, 346f
                  sll          s11, t0, s4
                  add          s11, t6, zero
                  addi         a1, s7, -1407
332:              srli         a4, a0, 8
                  sll          a0, ra, zero
                  xor          s5, s8, s0
                  andi         s11, t6, -1466
                  srli         s6, s4, 4
                  srl          s6, t0, s0
                  nop
                  beq          t0, tp, 354f
                  beq          s0, s7, 359f
                  beq          t0, t3, 361f
                  srl          gp, a0, a7
                  srl          a3, a3, a4
                  sltu         t2, t0, sp
                  xori         sp, s0, 1134
346:              bge          s9, s8, 355f
                  ori          s4, a3, 607
                  sra          s10, s4, s5
                  bge          s4, a2, 350f
350:              sub          a1, a1, t3
                  srai         t3, a4, 19
                  srai         a2, a0, 9
                  xor          s1, ra, a1
354:              sra          a5, t4, s3
355:              srl          s9, t1, a5
                  ori          t1, t0, 0
                  addi         s10, s6, -1721
                  slt          a6, s11, t3
359:              bltu         a1, a5, 374f
                  srl          s7, t1, t3
361:              sll          a3, a0, a1
                  slti         a7, zero, 1442
                  bltu         s3, a0, 368f
                  sll          t5, t3, ra
                  add          s3, a1, a1
                  bltu         s8, ra, 382f
                  xori         s0, tp, -1099
368:              sltiu        t1, t4, 1599
                  bge          t6, t1, 379f
                  lui          t1, 882526
                  lui          sp, 66392
                  sll          s0, t5, t5
                  xori         s5, s10, 1295
374:              auipc        s4, 407931
                  slt          ra, s1, s1
                  nop
                  blt          sp, a1, 397f
                  slti         t5, gp, -1549
379:              srl          s8, t5, t3
                  srai         s11, s9, 1
                  slti         a7, a1, -377
382:              sll          s0, s9, t2
                  sltiu        s4, s8, -107
                  sll          s10, a7, s1
                  auipc        a1, 245165
                  xor          s1, sp, a6
                  auipc        zero, 114905
                  addi         s9, t1, 1886
                  bge          a5, t3, 403f
                  nop
                  andi         s7, s4, -1648
                  lui          s0, 359236
                  lui          a4, 962219
                  srai         t3, t5, 12
                  bgeu         t3, sp, 407f
                  bne          t0, s5, 407f
397:              blt          a2, ra, 411f
                  sltiu        t0, a0, -1677
                  auipc        ra, 28018
                  auipc        s6, 732125
                  xori         t2, a6, 1559
                  nop
403:              beq          s2, t0, 411f
                  slti         s4, zero, -1280
                  addi         zero, s4, 54
                  sll          a3, t3, s5
407:              sub          a4, zero, s5
                  xor          t5, t1, s2
                  add          a6, t5, s8
                  srl          a2, s7, a5
411:              bne          gp, s5, 425f
                  add          t5, s6, a7
                  srli         a4, s11, 9
                  bge          t1, t6, 419f
                  lui          sp, 585639
                  sll          a5, a0, a4
                  addi         s1, s11, -264
                  sra          gp, s1, ra
419:              nop
                  ori          s6, t5, -883
                  and          s9, s10, t2
                  sub          s4, zero, s3
                  sra          sp, s1, a3
                  slli         ra, t6, 7
425:              srl          s0, t3, t4
                  srli         a0, t2, 4
                  xor          a3, tp, t1
                  slti         a6, s3, -62
                  slti         s4, s7, 794
                  slti         s2, s6, -1408
                  beq          a2, a0, 445f
                  sub          t1, s6, a6
                  bne          gp, t4, 446f
                  blt          s0, gp, 453f
                  slt          a1, t0, a3
                  bne          s5, t2, 450f
                  andi         s8, s4, 1842
                  sltu         s5, s7, s1
                  add          s5, s0, a7
                  bltu         a7, t5, 449f
                  xori         gp, t1, -852
                  xor          s5, s5, s10
                  bge          s11, gp, 446f
                  sltiu        s5, t0, -573
445:              bge          t4, s1, 461f
446:              auipc        zero, 56902
                  slt          s9, s4, s7
                  xori         s4, s10, -15
449:              lui          gp, 769806
450:              or           s1, sp, a3
                  bne          t6, a5, 455f
                  bge          zero, s9, 472f
453:              ori          t3, tp, 464
                  auipc        s6, 573856
455:              srl          s4, a3, t0
                  srai         s7, t0, 7
                  and          t5, a5, zero
                  bgeu         a5, gp, 473f
                  beq          zero, s5, 469f
                  bge          sp, s11, 466f
461:              sltu         a0, a7, a5
                  nop
                  sltiu        t1, t2, 318
                  sll          a1, s11, a4
                  auipc        a2, 110837
466:              bge          s6, t6, 468f
                  slti         a6, s5, -616
468:              xori         a0, s1, -1762
469:              sltiu        gp, sp, 1525
                  sll          s8, sp, a7
                  addi         t1, zero, -7 #init loop 0 counter
                  srl          s1, a0, s7
                  sra          s10, t0, a0
                  sub          a1, tp, a4
                  auipc        ra, 357390
                  addi         a5, zero, -12 #init loop 0 limit
                  andi         s9, a7, -1968
                  xori         s10, a0, -359
                  addi         t2, zero, 1628
sub_4_2_0_t:      lui          s6, 785373
                  slli         t5, t5, 8
                  xor          sp, t4, s0
                  addi         t1, t1, -4 #update loop 0 counter
                  addi         s1, s4, -927
                  sra          gp, ra, a4
                  srli         s10, s9, 8
                  sltiu        a0, s5, -822
                  add          s5, t0, s9
                  bge          t1, a5, sub_4_2_0_t #branch for loop 0
                  xor          s4, s0, sp
                  andi         a0, zero, -290
472:              beq          gp, gp, 475f
473:              sltiu        gp, a0, -33
                  bne          zero, t5, 475f
475:              bne          t2, a0, 481f
                  and          s7, a6, s10
                  slti         zero, s11, -1950
                  addi         t1, a5, -107
                  srai         a5, a3, 29
                  sltiu        s7, a7, 128
481:              beq          tp, tp, 492f
                  slli         s1, ra, 19
                  slti         t2, t3, -1197
                  sub          a4, a3, s0
                  bltu         sp, zero, 497f
                  or           zero, s0, tp
                  bge          zero, t3, 503f
                  sltu         s3, a6, a2
                  blt          s3, a0, 507f
                  lui          s10, 807865
                  srl          t5, t0, s1
492:              slli         sp, s9, 4
                  ori          t1, sp, 365
                  sltu         sp, a1, a0
                  xor          s4, tp, a4
                  slli         t1, sp, 6
497:              srl          s6, s6, s4
                  sltu         t3, s3, t2
                  bltu         a1, ra, 518f
                  xor          s8, tp, gp
                  xori         s2, s10, -1174
                  xori         s9, a4, -941
503:              srli         a1, gp, 13
                  sltu         t2, t2, t2
                  ori          s5, ra, 1204
                  blt          a7, a5, 523f
507:              sub          s10, s11, a0
                  and          a4, s5, s10
                  auipc        a0, 78629
                  slt          s9, s1, a4
                  xor          s9, s10, s0
                  ori          s4, a6, -1591
                  sub          t1, a3, t4
                  slti         a3, t4, -200
                  and          a3, tp, a0
                  blt          t0, a2, 533f
                  blt          t4, t3, 531f
518:              nop
                  bgeu         s3, s1, 525f
                  sra          gp, s5, s6
                  srli         t0, s9, 20
                  add          a5, a1, a5
523:              bltu         s7, s8, 543f
                  and          a4, s5, s1
525:              srl          s3, a6, s3
                  srl          a7, s11, s4
                  addi         t1, zero, -8 #init loop 1 counter
                  srl          s7, s10, s10
                  addi         a6, zero, -2 #init loop 1 limit
sub_4_0_1_t:      nop
                  sra          s7, s1, a4
                  srli         s2, t5, 30
                  sll          s6, t2, a6
                  addi         t1, t1, 3 #update loop 1 counter
                  xor          t3, sp, s10
                  sll          s8, a2, s3
                  addi         s9, zero, 8 #init loop 0 counter
                  auipc        s11, 878053
                  sltu         a0, s7, a0
                  and          a4, a3, t3
                  sub          s3, s11, a5
                  sll          s4, t0, t6
                  addi         s10, zero, 4 #init loop 0 limit
                  and          a3, a4, t4
                  and          t3, s9, s4
                  and          a1, a0, s6
sub_4_0_0_t:      xori         s4, zero, 1892
                  addi         s9, s9, -4 #update loop 0 counter
                  addi         ra, s5, -591
                  xori         a3, s4, 78
                  sltu         s0, gp, s5
                  srai         s0, a6, 10
                  beq          s9, s10, sub_4_0_0_t #branch for loop 0
                  auipc        ra, 783042
                  and          s11, s1, t0
                  slti         t0, s7, 947
                  ori          s8, s3, -850
                  bne          t1, a6, sub_4_0_1_t #branch for loop 1
                  sub          s8, s1, t1
                  beq          a7, a7, 542f
                  xori         s7, t5, -690
                  sll          s7, a4, a3
                  srl          s8, s7, t4
531:              sub          a3, ra, t5
                  srli         a4, sp, 23
533:              add          s9, s11, t6
                  srli         ra, tp, 6
                  srl          s9, s8, t2
                  srl          s11, s8, s7
                  slt          t1, gp, s3
                  addi         a2, s1, 1515
                  sra          s2, t1, a4
                  slli         ra, a1, 4
                  sltiu        s4, s5, -1954
542:              bgeu         zero, s4, 556f
543:              slli         a4, s1, 9
                  sub          s4, t3, a2
                  andi         s6, a0, -602
                  bgeu         s1, s3, 549f
                  slti         a6, t2, -1642
                  srl          a6, s4, t3
549:              nop
                  sltu         a1, t3, t0
                  auipc        s9, 247071
                  xor          s7, s4, a4
                  ori          s1, a6, -786
                  xori         t5, s6, -68
                  slt          t3, a7, sp
556:              srai         a5, a5, 2
                  nop
                  auipc        sp, 592984
                  slti         zero, s3, -819
                  sltiu        a1, s8, -880
                  auipc        s0, 468159
                  slt          a1, t1, a4
                  bne          t2, zero, 572f
                  sra          s7, a2, s11
                  auipc        t2, 444070
                  srl          a0, a1, a0
                  andi         a4, ra, 133
                  beq          s7, a5, 578f
                  blt          s10, s9, 586f
                  slt          t0, s0, s3
                  bge          s11, s6, 590f
572:              bne          a3, t3, 588f
                  sll          gp, a0, s3
                  andi         s2, s1, -1956
                  srl          t5, a5, t1
                  ori          s3, s10, 93
                  bge          a5, s2, 585f
578:              beq          t2, s0, 582f
                  sltu         t3, ra, a7
                  and          a6, a7, t4
                  bge          s10, a1, 591f
582:              nop
                  sll          sp, a5, s1
                  srli         t5, s1, 5
585:              srai         s5, s0, 1
586:              bne          a6, s9, 587f
587:              sra          s5, t0, s8
588:              xori         s9, a6, 1372
                  sra          s11, a5, s1
590:              bge          t2, a3, 591f
591:              nop
                  sub          a6, a0, s3
                  sll          s2, a5, a4
                  lw           sp, 4(t4)
                  slti         s0, s4, 1724
                  addi         t2, a6, -1391
                  slt          a2, a4, s0
                  addi         t4, t4, 60
                  auipc        zero, 544369
                  auipc        t3, 140597
                  and          t0, ra, a6
877:              addi x11, x2, 1
877:              jalr x11, x11, 0
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
.word 0x658d784e, 0xaf19a19d, 0x954230b8, 0x4ed0e73e, 0xf1c24aa5, 0x25e3732c, 0x7001585c, 0x332c1d32
.word 0x7259fd11, 0x7138c351, 0x4dc9f5f5, 0x1863b863, 0xdc3ed8f5, 0xf8d45621, 0x6be1d984, 0x188f3648
.word 0x54229f68, 0x8f587c1d, 0xe29f04a5, 0x84060f01, 0x0d20361b, 0x3c1194b3, 0xacbcfee5, 0xcd1bb147
.word 0x9712e78c, 0x291e294e, 0x618b4ec0, 0x8932524e, 0xa3b97717, 0xe14917f3, 0xbe59410d, 0x3d851ef7
.word 0x5c429aac, 0x66559d5b, 0xb9bb4075, 0xf018c071, 0x15e33d1b, 0x6555eaac, 0x10ee506a, 0xb23f526e
.word 0x0718014b, 0x167c020c, 0x5e79ebc4, 0x256efa10, 0x29c20177, 0x81fe2eb5, 0x4af995d0, 0x4881f3eb
.word 0x8524bd71, 0x7b86f576, 0x0742aa07, 0xb3508852, 0xcda8decf, 0x83eeeb8b, 0x08d9ca83, 0x2c02e179
.word 0xc572be83, 0xad57d214, 0x980d6344, 0xe2e68c95, 0x38b2bb36, 0x1a31cbd3, 0x5999c2c1, 0x9537a82f
.word 0x0cc6e12b, 0x8daf0c86, 0x5e1fc0eb, 0xbbd4b769, 0xb566fabb, 0xd4bf65b8, 0xcd9c82d2, 0xcaad1ca6
.word 0xec00a286, 0xeed583ef, 0x1aa33b05, 0x4c786aa2, 0xb69e5c8e, 0xb4cb3d30, 0x63f29a6e, 0x0f1f1493
.word 0x7ee267b2, 0x5593dcf0, 0xd0e7264f, 0xb3250176, 0xf428ca05, 0xa9cc45c1, 0x3fa994e1, 0xc415e339
.word 0xa8eaf18d, 0xf01795af, 0x0a23ca43, 0x63c5323d, 0x567eb927, 0x80098418, 0x509ac56a, 0x5de673c5
.word 0xced8fe3e, 0x21143a4a, 0x2093316e, 0x26cdbab5, 0xa68480c7, 0xa8a30171, 0xb96b9d4e, 0x4ad0aadd
.word 0x199b97f8, 0xdd46fded, 0x48968a6b, 0x4bbf4729, 0x0d9bc8dd, 0x2b283f07, 0x11f44d0d, 0xbfa45ac1
.word 0x945801d8, 0x52813337, 0xd63971e2, 0x47bb13eb, 0x201be5b7, 0x4b9d4214, 0x13f40ebc, 0xfb895054
.word 0x012e43a4, 0x5c277da9, 0x6926f586, 0xf9db97da, 0x0b653d84, 0x00f47f95, 0x30a1e36f, 0xb6e0088f
.word 0x4d471ea8, 0x629c54b3, 0xf4bab43e, 0xd5632216, 0x6bf6bca8, 0xe7e1e3a2, 0xaf183f6d, 0x7b93b275
.word 0x58624f1e, 0x5a96f304, 0x49c93a9b, 0x58f447df, 0xd2e77daf, 0x8d6c6386, 0x29551055, 0x55cc58ee
.word 0x859a8f54, 0xfb58703a, 0x53b3d500, 0x1961bac1, 0xd003f6a6, 0x25f7e78a, 0xa64b8b66, 0x132de6f9
.word 0xac9ef7db, 0x0a4e4df2, 0xc4831a28, 0xd356d71a, 0x7b29091e, 0xdcf33ccf, 0x8d9c24e4, 0x88d344f3
.word 0x6ca8626d, 0x46652cf3, 0x129d5b88, 0xf8be0f8f, 0xaf00bc6a, 0xafbcb91b, 0x9892df33, 0xdccd775b
.word 0x8c1d1d5c, 0xa30afc5d, 0x77d96b9d, 0x3ee1768a, 0x346f92d4, 0x54cf9953, 0x27cb96cb, 0xc7730e9d
.word 0xce962101, 0x19a48638, 0x3808dd20, 0x68d778df, 0xd45046b9, 0xf396ca0a, 0xf63f56ff, 0x7fe7a466
.word 0xafe9d94b, 0x1e034fd1, 0xda56dceb, 0x0c6ba31d, 0x8e934933, 0x70960663, 0xe4da90b5, 0xd1b07d93
.word 0x756ec87b, 0x3649126b, 0x9acecc19, 0x524bb736, 0x652e1d8e, 0xf9dbcde7, 0xbfd42418, 0xe3cb3409
.word 0xea9df26d, 0xc5107fbc, 0x700c520f, 0xb0898715, 0x0a90a7ca, 0x1b61b43e, 0x107eee5f, 0xfaa1f922
.word 0x95eb3ab7, 0xf7f8779e, 0xb36fc3d5, 0x11817261, 0x7dca2292, 0x9268bdb0, 0xcc70b9eb, 0x018e11f3
.word 0x17c349b2, 0xcc864248, 0x45e60414, 0x21eae45a, 0x93febdcd, 0xa81d03e4, 0x754046d6, 0xede7e45c
.word 0xd42c8c27, 0xdb345568, 0x95767769, 0xab8890db, 0x9c13f915, 0xcffb45e2, 0x1f35a6e5, 0x62479c84
.word 0x78a6f4ad, 0x153a055a, 0xa7a5dd16, 0x3623a0a5, 0xe733bc48, 0xfc6aef1f, 0x590e2043, 0xc8500ba4
.word 0x34459420, 0xba3e61f0, 0x40e3e634, 0x66897683, 0xd8d5a08a, 0xfa9a1614, 0x97b9c8bb, 0xa5ad9eb9
.word 0x954b855c, 0x4320f9df, 0x5224fd23, 0x6b96babf, 0x88fbf6d6, 0x52ca9e0c, 0xddbf67a5, 0x0fd46912
.word 0xd6cf080f, 0xe53ccdfc, 0x044e20e2, 0xefc0ee49, 0x4b0ffa6c, 0xb34687d1, 0xf9cc81fb, 0xa880d4a2
.word 0xdbf85f62, 0x3740262f, 0x05160b72, 0xcee03acc, 0xb3be69a4, 0xeab81499, 0xac8640ef, 0xa81639d1
.word 0x8cb3a48f, 0x1f7e91c4, 0x7083c3c2, 0x879ed781, 0xdb6df7ab, 0x2e54170f, 0x8385acbb, 0xe3b89867
.word 0xbdd55434, 0x978a6065, 0x6c598993, 0x8ae476ee, 0x3a3a0d90, 0x91f66168, 0xb2e776d4, 0x85e9be30
.word 0x01d5023b, 0x3aac127f, 0x7616ae10, 0xc30aaf05, 0x8675b8af, 0xca039b5c, 0xa41d7b48, 0xc30aba7b
.word 0xd611fd4e, 0x8580b14e, 0x5a0b7fea, 0x541675af, 0x82d417dc, 0x3c163b2d, 0xb18c4d9f, 0x1feb8fc7
.word 0xa0e033cb, 0x6cab43c0, 0xa09e8dc5, 0x14161268, 0x0f7afed1, 0xe27d76c2, 0x666fce2d, 0x5ee10e67
.word 0xc87aaf97, 0x0ca5266d, 0x143d03f8, 0xb0d385d2, 0x8270a643, 0x1072691c, 0xfc5c09a9, 0x545856c9
.word 0x64e306b5, 0x977f78a4, 0x4a10dc12, 0x1a0126d0, 0x0aa05b08, 0x9bca6178, 0x7342d444, 0xaeeaad6c
.word 0xc272dd35, 0x1583c648, 0x26d0b039, 0x92de9464, 0x39292089, 0x6febc74d, 0x973dbbe9, 0x68fe21f1
.word 0xe45de7e1, 0x6ee80746, 0x2be66053, 0xbee9bf9b, 0xde0739d5, 0x6d7a865a, 0x8b049d47, 0x266343a9
.word 0x92f8193f, 0xb7f0062c, 0xcb6b3603, 0x71954236, 0x870562e9, 0x6985e643, 0x1fa5dd74, 0x8f929351
.word 0xda0af031, 0xfa407c70, 0xbf784f66, 0x7b696af4, 0x1d818e7a, 0xb897f834, 0xdd1a748b, 0xc0efeddc
.word 0x7204534b, 0xd0fd52bc, 0x1e1e1fca, 0x7bfb22dd, 0x774683d5, 0x5e9413c4, 0xd765a83a, 0x4f605e4c
.word 0x935142cc, 0x9dd4cdc5, 0x9b19a05e, 0xa8431654, 0x85e5f855, 0x6eaa8bb9, 0xd61029db, 0xe9761517
.word 0x31c5f704, 0xf7cd3453, 0xb40fcabb, 0x448995e6, 0x9b4516d3, 0x8d124e4a, 0x3364605d, 0x1512ac7b
.word 0xe14f3ffe, 0xa1ffd933, 0x48e9b0de, 0x01530551, 0x36e9b17f, 0xcf8f40a9, 0xd08a3740, 0x4596abd8
.word 0x9873683a, 0xf0ce93c3, 0xc85e9a5e, 0x01c1a62d, 0xb5f8f746, 0x7d861019, 0x553fc910, 0xb14144ce
.word 0x0cc190e4, 0xa9628cfb, 0xfe989732, 0xdf7ec851, 0x6126999a, 0x5fe430f8, 0xe10fe5ed, 0x4b5391f8
.word 0x6f6707d7, 0x4a0a7cf6, 0xc87506bd, 0xe5c27bed, 0x6bb561f5, 0x17ac49d7, 0xa8f274eb, 0xc3a88eed
.word 0x420c3a0e, 0x844c7da9, 0xc55ac6ca, 0xf5e94d21, 0x5dcb155f, 0xe3d35bda, 0x5b71ffd9, 0x24b466a3
.word 0xf732f716, 0xae725548, 0xd5220f98, 0x49c62b57, 0xb8d40c8b, 0x7ca59b9f, 0x6a73b329, 0xaa115320
.word 0xb3c405eb, 0xaea18347, 0x8c4de5d5, 0xfe2d0e14, 0x3d709c99, 0x331beb5f, 0x7d8df597, 0xcaf8a3be
.word 0x5a2bd03b, 0x84bc63eb, 0xcf8a5f9c, 0x4ad1b2b7, 0x98b6df1a, 0xb6802960, 0xb6b4c860, 0xa47ce577
.word 0x053dba34, 0x571dee2c, 0x222a72bc, 0xbd2f3377, 0x606090d3, 0x50db2624, 0x0d3ebe70, 0xf2f10fdd
.word 0x486bea6b, 0x2b443198, 0x500535fd, 0xd3798fc3, 0x9b18198c, 0xfe920bb5, 0x11e29044, 0x54a969d0
.word 0x9fc285a4, 0xb5131952, 0xe38363d4, 0x5bfc6d86, 0x6fc04054, 0xc41bc785, 0xb994ec05, 0xba5f681b
.word 0x691f8883, 0x615381ab, 0xb27f3a71, 0x478769f1, 0xd1a0c9b5, 0x6d2cd540, 0x7b2e10d8, 0x35991195
.word 0xd1dc61db, 0xdef22cee, 0xb715b8f4, 0x7916decf, 0x2d338f47, 0x7f983254, 0xd5cc0c1e, 0xa32a4d75
.word 0xd5cb8e8a, 0x7bc85197, 0xdc0be304, 0x35033d57, 0xa1811bec, 0xb7f2c53a, 0x88e2e0b4, 0xdeed83a0
.word 0x81f8a307, 0x1afcf7f2, 0x6d74307a, 0xbb289de2
.section .region_1,"aw",@progbits;
region_1:
.word 0x3e627c95, 0x98e89e2a, 0xafc45e14, 0x232b0fdb, 0x4e3b7ded, 0x77524407, 0x0238a507, 0x668207bd
.word 0xb0551a4e, 0x45f8888f, 0x1e97f9ae, 0xcc34916a, 0x9fc917b8, 0x12b7ff81, 0x00797f0a, 0x36fe384c
.word 0x7ffd64d4, 0x50c156b1, 0x17216373, 0x4c0b9804, 0x5279a514, 0xf5f17204, 0x43741254, 0xa35f7bef
.word 0xc83aecf6, 0x85271813, 0x8c06d1b5, 0x05a68a2d, 0xd1ee72a4, 0x26b1f81c, 0xa4e87789, 0x100a4041
.word 0xf78e4ab4, 0xa76ee720, 0x17ba6097, 0x46960396, 0xafb19ec6, 0xf3f14d71, 0x9760720e, 0xbfcf137d
.word 0x7006b8af, 0xe006605d, 0x9c5c70f5, 0xe2cc99f2, 0xea9f426c, 0x80316a8c, 0xc6c20245, 0xd5d3e334
.word 0x8e6501b0, 0x2090ccc7, 0xfcf0bddb, 0xde71cfcb, 0x638c442f, 0x99835f47, 0x69717431, 0x5ea521c2
.word 0xefe5e4dc, 0xe6c7732e, 0x220cc0cb, 0xbd08394c, 0x53cf6530, 0xbd191694, 0xb08f3a4a, 0xd73b7d96
.word 0x42384d46, 0xe0935e46, 0x227e1550, 0xfcf891e4, 0xcda4c9ed, 0x07b81c11, 0x3b7424cb, 0x26086edd
.word 0x2215b28b, 0xd8fc33fa, 0x0dbe0bcb, 0x091f70ea, 0xf27ea00a, 0x0dc4cea5, 0x804f0924, 0x5433c54e
.word 0x85f113bb, 0xbb87a61b, 0xc1b186af, 0xf0cea290, 0xfa323a88, 0x804b697f, 0x19d880de, 0x3aec8c4b
.word 0x5492cf2f, 0x72ffe102, 0xbabc0011, 0xe5a257fe, 0xa5f498eb, 0x5719680e, 0xd5242a73, 0x7f0cc5ed
.word 0x2ee9e379, 0xf6c21bf1, 0x6727ffd1, 0x54b5847f, 0x67a2356e, 0x20290a9f, 0x0a80ac22, 0xaca93977
.word 0x33f7e868, 0xa279df9a, 0xdf142c12, 0xfe276150, 0x6a347020, 0x2a0ec867, 0x999f8bc1, 0x37d9b35e
.word 0x579d4f5b, 0x350f52af, 0x238f4f8d, 0xddb54b1c, 0x4e5b62ce, 0x099adee8, 0x99b77e41, 0x27cadd45
.word 0xd6f77edc, 0xdf126b2f, 0x4faa8a28, 0x5e565e84, 0x8fb6a2b9, 0x6edb5576, 0x4dc75878, 0x1419bab1
.word 0xe32d3e28, 0xf7e7800b, 0x25f239fb, 0x16ec8fcf, 0x8c49e5fc, 0x76175e73, 0x5ffd5a35, 0x0f5e4eee
.word 0xd7cd1986, 0x2a43c272, 0xcd2cae06, 0xdf419790, 0x0fac2e60, 0xc7da0f14, 0xc8a26810, 0xa5730e05
.word 0xca94f266, 0x856e6b0d, 0x4316d7ec, 0xef4fb36a, 0x0e52fd66, 0x5602b64a, 0x5db5f7a6, 0x36cd3962
.word 0xa030b321, 0x3b5a97fa, 0x63437a7e, 0x6b0c6a17, 0x6c93ae16, 0x44b2cf70, 0xbc631dd2, 0x57012a12
.word 0x02c14abc, 0x50f4c6ae, 0x75355811, 0x830aec7a, 0x9f7ad21b, 0x140cb312, 0xb3302a01, 0x4ee3f3a9
.word 0xb20dbd61, 0xf9dad316, 0x4d34d7a7, 0x8a1a6037, 0x0e0b36f0, 0x7a40b8cf, 0xc539b6be, 0xcc8c05ca
.word 0xb56b490f, 0xd283b4c8, 0x4ef8739a, 0x0b6df182, 0x6c67b0fa, 0xbe6e233d, 0xfbf7cdff, 0xdf7d1603
.word 0x4cd2fee0, 0x26793d72, 0x02f7060e, 0x1da65869, 0x42b0ff8d, 0x4a41251e, 0x576a516a, 0x074749a2
.word 0x8eea8c47, 0x014ad398, 0x1542865b, 0x9ecc1316, 0x0e449d90, 0xafdc1887, 0x1debe250, 0x422f225d
.word 0x55435571, 0x9330e560, 0xe5ac4ef2, 0x18131e60, 0xab301521, 0x6bc707bd, 0x05ac7a24, 0x73b16604
.word 0x16e3dc1a, 0xa72b9a9a, 0xf5e79d9f, 0xacd34566, 0xe3836ea4, 0x75174e57, 0x3014cdc1, 0xbcfd357c
.word 0x0d2ca142, 0x75beb16b, 0x6ba8b0f5, 0x4c2dd22f, 0x03abb9ed, 0x685b948c, 0x7868a1d7, 0xc5e7edc7
.word 0x3901e031, 0xe0e217b2, 0xdb297a83, 0x69e2fca2, 0xef8b197c, 0xf29f91aa, 0x80fa992d, 0xa34d2512
.word 0x49886b92, 0xed98def0, 0x82bedf11, 0x625e99d0, 0xf30a2bea, 0x4364e6fa, 0x99fa2876, 0x263d641f
.word 0x9cb49629, 0x28618bfe, 0xb71871f3, 0x4c35099b, 0xc8fc7bb9, 0xf573b338, 0xade12c72, 0x0e8a5465
.word 0x9cf3ea5d, 0x9c834863, 0x7abbf7c5, 0xae05a3be, 0x091d5e79, 0xf122cf7b, 0xe87a5e39, 0x7bb4fc4a
.word 0x2552d0b3, 0x1963df79, 0x9627aa66, 0x6fe49f7f, 0xbee65e8c, 0xf5378700, 0xaa549856, 0xed6bcecf
.word 0xaab4d81f, 0x6625853d, 0x3c0e3023, 0x64a9f725, 0x47e950ed, 0x7af19a68, 0xdc724354, 0xd2f0cb87
.word 0x4e0f6fb0, 0xa06537aa, 0xa5737c3f, 0x6135e885, 0x77babf14, 0x02d1e81d, 0x09315cde, 0x829428ee
.word 0x928fe36c, 0xed8f55ea, 0x401242bc, 0xfada71cb, 0xa39573da, 0x942df715, 0xbed54129, 0x811bb271
.word 0xe24e7f43, 0xec3d644b, 0xf94ab323, 0x8bea4a1e, 0x52390804, 0x789a8f6e, 0xd15a938f, 0x061da1d2
.word 0xf9320630, 0x2e908d6b, 0x66c5d460, 0x42571a53, 0x74c4027c, 0xb41a1f04, 0x749a8ed6, 0xd8a7e557
.word 0x3fadc3eb, 0x415372e7, 0xd61826a7, 0xe39b7fea, 0xa4e8f1a2, 0xbd08d854, 0x45b04582, 0x1c5fe9a7
.word 0xcff6a1a2, 0xfcfb31c0, 0xb33542f3, 0xfbc22e04, 0x39c866e2, 0xf964c967, 0x4f002192, 0x2614d557
.word 0x1a421c7c, 0xc4c89fa6, 0x33762c6f, 0xf47e2d60, 0x82e5287b, 0x4a9b5f5b, 0x31ff8ea6, 0x6675aa82
.word 0x7d38766c, 0x5eeee29c, 0x4ded1ea7, 0x661d47b9, 0xa9a2fda4, 0xecd0d297, 0x22a6c062, 0xb21e83dd
.word 0xde45eb60, 0xb743496b, 0xad1b2825, 0xe76a83dd, 0x958307c8, 0x962f377f, 0xf189e391, 0x986fedb4
.word 0x904d6213, 0x4185e3d8, 0x0dc5c21b, 0x39137ecf, 0x890e7824, 0x9322f9e6, 0x1a77bfb4, 0x59f3050e
.word 0xd425f776, 0xf90b80ac, 0x8d2e37d5, 0x6be6b810, 0x281eb3e5, 0x5b413415, 0xcef16a98, 0x17dd3387
.word 0x7c424055, 0x69847a34, 0x7b683a24, 0x8cdcf5c5, 0x12a57e28, 0x0a1a2815, 0xbd8cce0e, 0xfad343bc
.word 0x9f613eee, 0x5d5cc9c6, 0x7c807e1c, 0x453257ae, 0xf55cee88, 0x69e2cdf8, 0x5e85406c, 0x489e3e19
.word 0xd26490e1, 0xd3e4703a, 0x796457c4, 0x29866ba7, 0xd198ac83, 0xe5f9e2ff, 0xf983268d, 0x3638b26c
.word 0x76159216, 0x24261f11, 0xd942eb5b, 0xf318fd5f, 0xaf205cf1, 0xf27884eb, 0x7f7395cb, 0xefc42fc8
.word 0xefd12eb1, 0x96d85a97, 0xbd6c2cc0, 0xc6595663, 0x03976536, 0xd476cf50, 0x98b2b0b3, 0xd6909916
.word 0xeb37d3e6, 0xbd053cb8, 0xe80fdaf0, 0x56ced322, 0x368ca2fc, 0xb2f413ca, 0x6e20396f, 0x9b4381cc
.word 0x8aa298bb, 0x822fc0c5, 0xaed1276f, 0x61a7f261, 0xaddb139d, 0x7883bcb2, 0x888d5b0d, 0x972322b2
.word 0xd610c587, 0x4d416bfa, 0x84b378e5, 0xf1cb8bae, 0x58d2bcf0, 0xba59ff35, 0xa8aa0bb0, 0x091418a0
.word 0x8d411cdd, 0x4a322ae4, 0x997667a3, 0xb2cf98d3, 0x64897945, 0x511e86d9, 0xbd37bc04, 0xaceef165
.word 0xfac68803, 0x78060487, 0x396f4b49, 0xb2377e84, 0xb277887a, 0xfb104894, 0xc6dbee8d, 0xfc36d80e
.word 0xc4079901, 0xc47da263, 0xc92c5005, 0xeec0c914, 0xa6d57d6a, 0x09829b17, 0xab201626, 0x2415cc37
.word 0x39b7b721, 0x8ba74d6d, 0x077e0f38, 0xc0eeb575, 0xf3cd2005, 0x27f0ff73, 0x5fb5f0cd, 0x9e1b9beb
.word 0xf6e1ac91, 0x492af175, 0xebf7c4cc, 0xac3bddab, 0x583c832f, 0x55b630a4, 0x548bf27d, 0xe3603afe
.word 0x15ca26f2, 0x7ab24dee, 0x155f95b0, 0x9def7064, 0x9a0e039d, 0x5a809e93, 0xfa80dc50, 0x089f9150
.word 0x70db664d, 0x2653644f, 0x74e05c7d, 0xc9c49674, 0xea01dc8c, 0x8ae3eff5, 0x36264df7, 0x866bf16f
.word 0xb33eb34e, 0xfc962a72, 0x5a89b6ad, 0x579625f1, 0x63989223, 0x3303fe95, 0xfa8fd3ce, 0x699eb9b2
.word 0x738b131f, 0xd2db5891, 0x24b364b1, 0x400b235d, 0x1487fa1a, 0x7de58018, 0x83cb1a6c, 0x2aed87f0
.word 0x1b2da426, 0x75ff3475, 0xb0bd9641, 0xa7d2a57c
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_2:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_3:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_4:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_5:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_6:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_7:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_8:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_9:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_10:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_11:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_12:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_13:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_14:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
                  j mmode_intr_handler
                  1: la x31, test_done
                  jalr x0, x31, 0

mmode_intr_vector_15:
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x342 # MCAUSE
                  srli x6, x6, 0x1f
                  beqz x6, 1f
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
                  addi x29, x29, -128
                  sw  x1, 4(x29)
                  sw  x2, 8(x29)
                  sw  x3, 12(x29)
                  sw  x4, 16(x29)
                  sw  x5, 20(x29)
                  sw  x6, 24(x29)
                  sw  x7, 28(x29)
                  sw  x8, 32(x29)
                  sw  x9, 36(x29)
                  sw  x10, 40(x29)
                  sw  x11, 44(x29)
                  sw  x12, 48(x29)
                  sw  x13, 52(x29)
                  sw  x14, 56(x29)
                  sw  x15, 60(x29)
                  sw  x16, 64(x29)
                  sw  x17, 68(x29)
                  sw  x18, 72(x29)
                  sw  x19, 76(x29)
                  sw  x20, 80(x29)
                  sw  x21, 84(x29)
                  sw  x22, 88(x29)
                  sw  x23, 92(x29)
                  sw  x24, 96(x29)
                  sw  x25, 100(x29)
                  sw  x26, 104(x29)
                  sw  x27, 108(x29)
                  sw  x28, 112(x29)
                  sw  x29, 116(x29)
                  sw  x30, 120(x29)
                  sw  x31, 124(x29)
                  add x4, x29, zero
                  csrr x6, 0x341 # MEPC
                  csrr x6, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x6, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x6, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x6, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x6, x21, ecall_handler
                  li x21, 0x1
                  beq x6, x21, instr_fault_handler
                  li x21, 0x5
                  beq x6, x21, load_fault_handler
                  li x21, 0x7
                  beq x6, x21, store_fault_handler
                  li x21, 0xc
                  beq x6, x21, pt_fault_handler
                  li x21, 0xd
                  beq x6, x21, pt_fault_handler
                  li x21, 0xf
                  beq x6, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x6, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x31, test_done
                  jalr x1, x31, 0

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
                  la x31, write_tohost
                  jalr x0, x31, 0

instr_fault_handler:
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

load_fault_handler:
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

store_fault_handler:
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

ebreak_handler:   
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

illegal_instr_handler:
                  csrr  x6, 0x341
                  addi  x6, x6, 4
                  csrw  0x341, x6
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x6, 0x300 # MSTATUS;
                  csrr  x6, 0x304 # MIE;
                  csrr  x6, 0x344 # MIP;
                  csrrc x6, 0x344, x6 # MIP;
                  add x29, x4, zero
                  lw  x1, 4(x29)
                  lw  x2, 8(x29)
                  lw  x3, 12(x29)
                  lw  x4, 16(x29)
                  lw  x5, 20(x29)
                  lw  x6, 24(x29)
                  lw  x7, 28(x29)
                  lw  x8, 32(x29)
                  lw  x9, 36(x29)
                  lw  x10, 40(x29)
                  lw  x11, 44(x29)
                  lw  x12, 48(x29)
                  lw  x13, 52(x29)
                  lw  x14, 56(x29)
                  lw  x15, 60(x29)
                  lw  x16, 64(x29)
                  lw  x17, 68(x29)
                  lw  x18, 72(x29)
                  lw  x19, 76(x29)
                  lw  x20, 80(x29)
                  lw  x21, 84(x29)
                  lw  x22, 88(x29)
                  lw  x23, 92(x29)
                  lw  x24, 96(x29)
                  lw  x25, 100(x29)
                  lw  x26, 104(x29)
                  lw  x27, 108(x29)
                  lw  x28, 112(x29)
                  lw  x29, 116(x29)
                  lw  x30, 120(x29)
                  lw  x31, 124(x29)
                  addi x29, x29, 128
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
