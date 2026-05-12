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
                  li x28, 0x40000100
                  csrw 0x301, x28
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x28, mtvec_handler
                  ori x28, x28, 0
                  csrw 0x305, x28 # MTVEC

mepc_setup:       
                  la x28, init
                  csrw 0x341, x28

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x28, 0x1800
                  csrw 0x300, x28 # MSTATUS
                  mret
init:             
                  li x0, 0x8
                  li x1, 0x80000000
                  li x2, 0x5
                  li x3, 0x9
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0xfb3c9c1b
                  li x7, 0x8
                  li x8, 0xfa6e2948
                  li x9, 0xe
                  li x10, 0x80000000
                  li x11, 0x4
                  li x12, 0x0
                  li x13, 0xf
                  li x14, 0x0
                  li x15, 0xaca9646b
                  li x16, 0x80af404d
                  li x17, 0x59b784c1
                  li x18, 0xf19f96e6
                  li x19, 0x867c7fec
                  li x20, 0x63a7247
                  li x21, 0x80000000
                  li x22, 0xfd5d4de2
                  li x25, 0x80000000
                  li x26, 0xbbba09c7
                  li x27, 0x33fcc388
                  li x28, 0x8d8ffd71
                  li x29, 0x2
                  li x30, 0x0
                  li x31, 0xfcfe664b
                  la x23, user_stack_end
main:             slt          s6, s6, s4
                  srl          t4, tp, s7
                  la           ra, sub_5
                  slt          t2, zero, sp
                  sltu         t0, s6, a7
                  and          s3, ra, s1
                  slti         t2, s8, -1431
                  addi         ra, ra, 405
                  blt          t1, tp, main_j2 #branch to jump instr
                  lui          t1, 672574
                  slti         gp, a1, 1354
main_j2:          jalr         ra, ra, -405 #jump main -> sub_5
                  srai         ra, t6, 4
                  xori         s1, t3, -1157
                  sra          s10, t3, s1
                  la           s9, sub_1
                  sltiu        t2, s0, -254
                  addi         s9, s9, -658
                  ori          t5, t0, -1137
                  and          a3, a6, s6
                  slt          a2, t5, a5
                  srli         s1, zero, 30
                  sra          a0, a0, s3
main_j4:          jalr         ra, s9, 658 #jump main -> sub_1
                  add          s11, t6, t2
                  and          a2, s7, a1
                  sub          t3, ra, s5
                  la           t6, sub_2
                  or           ra, t3, a4
                  addi         t6, t6, 419
                  slt          s9, s5, a5
                  srli         s4, s4, 30
main_j5:          jalr         ra, t6, -418 #jump main -> sub_2
                  addi         s5, zero, 6 #init loop 0 counter
                  auipc        t6, 963713
                  sltu         s11, s10, a6
                  sltu         a7, s4, sp
                  lui          s0, 152384
                  slt          s4, s4, s11
                  andi         a1, ra, 1805
                  nop
                  xor          t5, a3, s8
                  addi         t3, zero, 6 #init loop 0 limit
main_2_0_t:       slt          t6, a4, tp
                  lui          t6, 412839
                  xori         a2, zero, 2041
                  sltiu        a0, t4, -1671
                  srli         a1, t6, 11
                  addi         s5, s5, -4 #update loop 0 counter
                  andi         a0, a1, -24
                  addi         s10, tp, -1958
                  sra          a6, a4, s3
                  sltu         a2, a3, ra
                  auipc        s4, 935473
                  addi         s6, sp, 1236
                  nop
                  nop
                  auipc        sp, 795620
                  ori          a2, t6, 811
                  bgeu         s5, t3, main_2_0_t #branch for loop 0
                  srl          a1, s1, a2
                  addi         gp, zero, 10 #init loop 0 counter
                  addi         ra, t4, -1096
                  auipc        tp, 514672
                  andi         s10, a6, 172
                  srli         s9, tp, 21
                  sra          t5, s9, a4
                  sra          tp, a3, t4
                  sra          t4, a5, s5
                  nop
                  slti         a2, a6, 1982
                  sra          s10, s0, a2
                  addi         t3, zero, 10 #init loop 0 limit
                  sll          a2, s1, s11
                  add          a1, s3, t2
                  xor          a0, a3, t3
                  xori         s5, s9, -677
                  slt          a0, a6, tp
main_1_0_t:       auipc        s4, 566971
                  addi         gp, gp, -9 #update loop 0 counter
                  xori         a3, s6, -1410
                  xor          a7, s1, t3
                  addi         t0, a3, -851
                  ori          t1, ra, 26
                  srli         s5, a0, 12
                  sltiu        a6, a7, 797
                  slti         a1, a4, -1081
                  srli         sp, s1, 6
                  slt          a6, s5, a3
                  bgeu         gp, t3, main_1_0_t #branch for loop 0
                  auipc        a3, 170849
                  addi         s5, zero, -4 #init loop 0 counter
                  addi         tp, t5, 337
                  and          a7, s7, s2
                  xori         s2, s7, -1096
                  ori          s11, s1, 1004
                  sub          sp, tp, s9
                  andi         s9, gp, 135
                  slti         s1, s4, 361
                  addi         a6, zero, 13 #init loop 0 limit
                  sltu         s3, s9, s0
                  sub          s9, s7, tp
                  nop
                  xor          a5, s6, s7
                  xor          s9, a2, t3
                  sltu         a0, gp, s0
main_0_0_t:       sltu         s2, s0, t0
                  addi         s5, s5, 1 #update loop 0 counter
                  sll          tp, s9, gp
                  slli         a2, a5, 10
                  xori         t4, s1, -1921
                  lui          tp, 188105
                  andi         a0, s0, -673
                  bltu         s5, a6, main_0_0_t #branch for loop 0
                  andi         a0, zero, 1543
                  and          s10, s6, s2
                  or           a7, t2, s9
                  addi         a7, t6, 1557
                  lui          tp, 828068
                  srai         a2, s0, 4
                  add          tp, s8, t1
                  xor          ra, s0, t1
                  lui          t1, 370747
                  sub          s3, gp, a3
                  srl          s10, a3, a2
                  bge          s3, s6, 21f
                  sra          t4, a1, tp
                  sub          ra, a6, t5
                  sll          s4, a4, s5
                  beq          a4, t3, 26f
                  bltu         s11, t1, 28f
                  slt          s11, t2, s1
                  lui          t1, 690663
                  xor          ra, s0, a6
                  slli         a6, a5, 11
                  sll          gp, s7, s4
21:               andi         t3, s2, -664
                  slti         t5, a2, 1103
                  xor          ra, zero, s6
                  bltu         s10, t4, 43f
                  add          s1, a0, s9
26:               xori         t4, s1, 506
                  bne          s6, s9, 35f
28:               blt          s2, t4, 36f
                  beq          s3, zero, 45f
                  bne          s5, t1, 33f
                  blt          s0, tp, 50f
                  add          t5, s9, s6
33:               slti         s6, a5, 1321
                  ori          s0, t4, -744
35:               sll          s9, a2, a5
36:               lui          zero, 748635
                  slli         s9, t6, 20
                  xori         tp, t0, 1468
                  slti         a0, t2, 1450
                  sll          a6, gp, s10
                  srl          s9, s9, s5
                  bltu         a6, s7, 61f
43:               sra          s1, a2, t3
                  xori         s1, t2, 1078
45:               bne          gp, a0, 61f
                  xor          a5, s1, t5
                  bge          ra, s10, 51f
                  blt          a4, a7, 61f
                  srai         t5, a7, 25
50:               ori          t5, s0, -569
51:               sltu         s4, t1, t4
                  sra          t0, s0, tp
                  xor          a5, tp, a3
                  or           a5, s1, zero
                  la           s2, sub_4
                  sltu         s10, s10, zero
                  slt          s4, s2, s3
                  lui          s9, 74194
                  addi         s2, s2, -710
                  andi         s4, zero, -259
                  addi         a5, zero, -928
main_j1:          jalr         ra, s2, 710 #jump main -> sub_4
                  ori          s0, t5, -126
                  andi         sp, s1, -251
                  or           gp, s3, t1
                  srai         a3, s2, 29
                  bge          s0, t2, 79f
                  nop
61:               sub          t5, s8, s6
                  bge          t5, s11, 82f
                  ori          t3, s1, 944
                  slti         s11, a2, -1008
                  bltu         t1, a3, 74f
                  bne          a1, a7, 68f
                  la           s2, sub_3
                  and          t5, a3, s2
                  addi         s2, s2, -65
                  slt          s3, t3, s0
                  srl          s10, zero, a0
                  blt          t6, a6, main_j3 #branch to jump instr
                  auipc        t2, 260110
                  srli         gp, t2, 18
main_j3:          jalr         ra, s2, 65 #jump main -> sub_3
                  or           t3, t3, zero
68:               srai         tp, sp, 5
                  srl          a0, a1, t0
                  blt          a5, s8, 88f
                  sra          a5, t4, s5
                  andi         sp, a1, 1664
                  sltu         t3, s8, s6
74:               srli         sp, ra, 14
                  bge          a4, s5, 76f
76:               srli         sp, a1, 12
                  andi         a1, t5, -1027
                  lui          gp, 600765
79:               slli         t6, a4, 30
                  slt          a7, a7, sp
                  auipc        t1, 937919
82:               slli         t4, t2, 1
                  slti         t0, a0, -1199
                  slli         a5, s11, 31
                  xori         t0, ra, -1307
                  slli         t1, s5, 6
                  sub          a5, t5, a6
88:               beq          s3, a1, 100f
                  and          a1, a7, s9
                  beq          a6, a7, 102f
                  sll          a7, a7, s9
                  srl          s5, t0, s8
                  bge          a2, zero, 105f
                  slli         s4, t5, 21
                  srai         s9, a6, 10
                  ori          t0, gp, 313
                  or           s4, a5, t6
                  slti         t2, a2, 725
                  addi         t6, t0, 1792
100:              sltiu        t3, s2, -928
                  srli         a0, s9, 20
102:              xori         a6, a7, 198
                  blt          ra, zero, 105f
                  sltu         s4, s10, s11
105:              srai         a1, a1, 29
                  or           t4, t3, s8
                  xori         zero, t0, -1192
                  ori          sp, gp, -1689
                  andi         s9, a7, -131
                  blt          s0, a1, 125f
                  srli         gp, a0, 9
                  sub          t0, s4, t5
                  sltu         a1, a3, t3
                  sltiu        a2, t4, 1
                  addi         s10, t1, 309
                  xor          s6, a3, ra
                  xor          t3, s11, gp
                  auipc        a3, 412949
                  ori          s0, s10, -1564
                  add          a3, t6, zero
                  beq          a5, s5, 131f
                  bge          s7, t3, 140f
                  slli         t6, a6, 11
                  xor          t3, t1, s11
125:              sra          s1, s4, s5
                  srl          t4, t5, tp
                  bgeu         t4, a3, 130f
                  slt          s10, t6, s2
                  sltu         s0, s8, zero
130:              auipc        t6, 565444
131:              bne          s4, ra, 147f
                  add          a2, s5, s4
                  or           t5, s4, sp
                  bltu         s11, s4, 146f
                  xor          zero, a3, t0
                  bltu         s1, a6, 153f
                  sltu         s11, a4, a1
                  sll          t5, a5, a4
                  nop
140:              and          t2, a5, s10
                  nop
                  blt          s9, a3, 154f
                  xor          gp, gp, sp
                  sra          t3, gp, t4
                  blt          t3, s0, 160f
146:              bgeu         ra, s9, 148f
147:              srli         s10, gp, 14
148:              slli         s4, a6, 11
                  bge          t1, t1, 169f
                  add          a7, t5, t6
                  sll          s1, a2, s6
                  xor          t3, t0, s11
153:              ori          t3, s7, 1076
154:              bltu         tp, a1, 166f
                  bltu         s7, s9, 163f
                  slli         ra, s7, 8
                  ori          a2, s11, 1400
                  lui          tp, 809280
                  sltiu        s1, s11, 1660
160:              addi         zero, a7, -805
                  bltu         t5, s7, 171f
                  xor          a5, gp, s5
163:              blt          a7, a6, 180f
                  nop
                  srai         t5, a7, 19
166:              bgeu         s6, s4, 177f
                  nop
                  auipc        a6, 217258
169:              andi         t4, gp, 1466
                  sltiu        s0, a2, -167
171:              sll          ra, t2, s1
                  xor          s4, a2, t3
                  lui          sp, 741644
                  sll          t2, t4, t0
                  srli         s9, s8, 28
                  and          a6, s4, a2
177:              bne          s9, t2, 180f
                  bne          t2, s6, 180f
                  lui          sp, 15695
180:              sra          s1, tp, t3
                  la x14, test_done
                  jalr x0, x14, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            bne          s7, s8, sub_4_stack_p
                  sltiu        s6, a1, 1435
sub_4_stack_p:    addi         s7, s7, -60
                  xori         a6, t6, -1719
                  sub          s3, a3, a2
                  sltiu        s6, a3, -1024
                  or           t1, t5, t4
                  and          s10, s1, s9
                  sw           ra, 4(s7)
                  auipc        t3, 317990
                  sra          s3, gp, s2
                  auipc        s2, 259736
                  ori          t4, a4, 1323
                  addi         s3, zero, -6 #init loop 1 counter
                  sltu         tp, t2, a4
                  auipc        ra, 319767
                  sub          gp, a3, tp
                  xori         t1, gp, -1150
                  addi         t0, zero, 20 #init loop 1 limit
sub_4_4_1_t:      sltiu        sp, gp, 633
                  addi         s3, s3, 1 #update loop 1 counter
                  sltiu        ra, sp, -1068
                  addi         a6, zero, 4 #init loop 0 counter
                  srai         t1, a5, 7
                  slti         zero, a4, 15
                  addi         a3, a3, 1803
                  slti         a7, t0, 455
                  andi         s9, a0, -1124
                  slt          t1, s2, ra
                  addi         s0, s8, -1200
                  xor          t1, s4, s5
                  ori          s1, t4, 121
                  xor          zero, a1, sp
                  addi         a0, zero, -11 #init loop 0 limit
                  xori         sp, sp, 585
sub_4_4_0_t:      sltiu        s5, s0, 638
                  and          a1, s7, s0
                  add          t1, t6, t4
                  srl          s10, a4, ra
                  sltu         a1, s11, s10
                  addi         a6, a6, -5 #update loop 0 counter
                  ori          zero, s6, 799
                  auipc        s4, 943146
                  andi         gp, s6, -1194
                  beq          a6, a0, sub_4_4_0_t #branch for loop 0
                  slli         s11, a2, 30
                  bne          s3, t0, sub_4_4_1_t #branch for loop 1
                  andi         s2, s5, 502
                  addi         t6, zero, -2 #init loop 0 counter
                  xori         sp, t4, -104
                  or           a6, a5, t6
                  and          s10, t6, t2
                  sltiu        s9, t0, -139
                  addi         s0, zero, 15 #init loop 0 limit
                  sra          a2, a1, s9
sub_4_1_0_t:      lui          a3, 196488
                  or           s4, t6, t6
                  andi         t1, tp, -1724
                  nop
                  slti         t5, a7, -282
                  srli         a5, s8, 29
                  sub          s6, s8, s8
                  sub          s4, s0, t6
                  srl          t0, a4, s1
                  sub          s4, s0, s8
                  srai         t4, a1, 29
                  andi         gp, s5, 1887
                  addi         t6, t6, 5 #update loop 0 counter
                  slli         t5, s5, 7
                  srl          s9, s3, t2
                  sll          s1, s10, t5
                  srai         t3, t2, 0
                  sub          a5, gp, t0
                  slli         s5, s10, 0
                  and          a0, s8, t6
                  slt          s1, t4, a0
                  bltu         t6, s0, sub_4_1_0_t #branch for loop 0
                  xor          s3, a2, s2
                  addi         t1, zero, -10 #init loop 1 counter
                  sub          s1, s5, s9
                  xori         s3, a7, 809
                  sra          s11, a7, s11
                  srl          a0, s0, s0
                  addi         s6, zero, 17 #init loop 1 limit
                  auipc        s1, 215550
sub_4_0_1_t:      add          a6, a6, t1
                  auipc        ra, 969523
                  addi         t1, t1, 6 #update loop 1 counter
                  nop
                  slti         tp, s3, -1133
                  addi         a7, zero, 5 #init loop 0 counter
                  and          t4, t2, ra
                  slt          t6, a7, a3
                  lui          s2, 535348
                  addi         a2, zero, 18 #init loop 0 limit
                  andi         t3, a5, 1599
                  slt          s5, s3, s10
                  sra          ra, a6, s6
                  slt          s4, zero, s8
sub_4_0_0_t:      lui          ra, 522280
                  xor          a1, gp, s11
                  and          sp, s2, t0
                  addi         a7, a7, 10 #update loop 0 counter
                  sltu         zero, a7, s10
                  sra          gp, s6, t4
                  blt          a7, a2, sub_4_0_0_t #branch for loop 0
                  or           t5, a1, a0
                  ori          a1, tp, 1296
                  bltu         t1, s6, sub_4_0_1_t #branch for loop 1
                  nop
                  addi         a6, zero, 8 #init loop 0 counter
                  add          a2, t2, a6
                  sra          s9, t6, t1
                  slt          a0, s9, tp
                  and          t5, a3, s7
                  ori          ra, t0, -1620
                  addi         s1, zero, 14 #init loop 0 limit
                  xor          t0, a0, t0
                  sltu         s6, gp, t4
sub_4_7_0_t:      ori          t2, s4, 590
                  slli         s2, s3, 26
                  and          s2, ra, t2
                  add          s0, t5, gp
                  addi         a6, a6, 3 #update loop 0 counter
                  srl          a7, zero, s7
                  andi         s9, s0, 1481
                  slti         zero, s1, 58
                  bne          a6, s1, sub_4_7_0_t #branch for loop 0
                  sub          zero, s6, s6
                  addi         s11, zero, 4 #init loop 1 counter
                  xor          t0, a1, a5
                  srli         t5, tp, 30
                  slti         t0, a5, 413
                  addi         a1, zero, -5 #init loop 1 limit
                  sra          s0, s5, sp
                  lui          zero, 526737
                  or           t4, s1, a6
                  sub          s0, s5, t3
                  addi         sp, gp, -336
                  slti         s1, a7, 1723
                  or           t4, t1, a6
                  sra          gp, ra, t0
sub_4_9_1_t:      or           t0, s5, s1
                  addi         s11, s11, -7 #update loop 1 counter
                  slti         s3, s10, 728
                  slli         t6, s8, 16
                  slti         t2, a4, 834
                  addi         a3, zero, 2 #init loop 0 counter
                  and          s3, s9, s10
                  ori          a5, ra, -916
                  srli         s0, t0, 29
                  addi         tp, zero, -11 #init loop 0 limit
                  or           s6, ra, s1
                  srli         t6, a3, 24
sub_4_9_0_t:      sltiu        s0, t5, -143
                  addi         a3, a3, -1 #update loop 0 counter
                  ori          t5, t2, -1704
                  srl          s1, s4, s5
                  bne          a3, tp, sub_4_9_0_t #branch for loop 0
                  nop
                  nop
                  bge          s11, a1, sub_4_9_1_t #branch for loop 1
                  auipc        t5, 805753
                  addi         t6, zero, 0 #init loop 1 counter
                  sltu         t3, s11, s1
                  addi         a7, zero, -4 #init loop 1 limit
                  sltu         ra, a0, s6
                  addi         a5, t2, 495
                  sll          a3, t6, s10
                  srl          zero, a4, sp
sub_4_5_1_t:      or           s1, tp, s7
                  xori         s5, s9, -1376
                  addi         t6, t6, -4 #update loop 1 counter
                  slt          t2, t2, tp
                  slti         t0, s6, -841
                  lui          a0, 494307
                  addi         a1, zero, 2 #init loop 0 counter
                  sra          a6, a1, a3
                  addi         a2, zero, 2 #init loop 0 limit
sub_4_5_0_t:      sub          s6, tp, a0
                  slli         s0, s11, 22
                  addi         a1, a1, -1 #update loop 0 counter
                  ori          s1, a4, 1363
                  bgeu         a1, a2, sub_4_5_0_t #branch for loop 0
                  sub          gp, zero, t0
                  bne          t6, a7, sub_4_5_1_t #branch for loop 1
                  addi         tp, zero, 187
                  addi         s2, zero, 3 #init loop 1 counter
                  addi         sp, zero, 15 #init loop 1 limit
sub_4_8_1_t:      or           s3, a6, s7
                  addi         s2, s2, 1 #update loop 1 counter
                  addi         a2, zero, 2 #init loop 0 counter
                  slti         s11, zero, 798
                  addi         t3, zero, 20 #init loop 0 limit
                  and          t2, t0, a7
                  andi         tp, s7, -981
sub_4_8_0_t:      lui          ra, 106579
                  addi         a2, a2, 5 #update loop 0 counter
                  lui          t1, 420914
                  bltu         a2, t3, sub_4_8_0_t #branch for loop 0
                  addi         s9, s6, -1184
                  srli         s11, t1, 23
                  blt          s2, sp, sub_4_8_1_t #branch for loop 1
                  and          s1, s4, t4
                  addi         s6, zero, 4 #init loop 0 counter
                  sra          tp, a2, a1
                  ori          s5, s7, 1032
                  addi         a5, zero, 11 #init loop 0 limit
sub_4_3_0_t:      nop
                  sll          t5, s6, s8
                  sltu         sp, a7, t0
                  addi         s6, s6, 7 #update loop 0 counter
                  beq          s6, a5, sub_4_3_0_t #branch for loop 0
                  andi         s9, a6, -1486
                  addi         s4, zero, 9 #init loop 1 counter
                  sub          t2, s11, a7
                  auipc        sp, 18050
                  srli         s6, a3, 10
                  addi         s11, zero, -9 #init loop 1 limit
                  srli         a3, s9, 9
sub_4_2_1_t:      xor          gp, s10, s2
                  addi         s4, s4, -3 #update loop 1 counter
                  ori          a0, a3, 183
                  sub          ra, t6, s1
                  and          ra, s0, t0
                  andi         t0, a5, -1599
                  slli         t5, a5, 11
                  addi         a2, zero, 9 #init loop 0 counter
                  xor          t0, s10, s2
                  addi         a7, zero, 9 #init loop 0 limit
sub_4_2_0_t:      lui          ra, 463070
                  sra          t1, s6, t2
                  addi         t3, t6, 427
                  addi         a2, a2, -8 #update loop 0 counter
                  lui          s6, 710909
                  bgeu         a2, a7, sub_4_2_0_t #branch for loop 0
                  xori         t4, sp, 834
                  slli         s1, a7, 25
                  bge          s4, s11, sub_4_2_1_t #branch for loop 1
                  and          t3, s2, t4
                  addi         s3, zero, -10 #init loop 0 counter
                  sub          s5, a1, s6
                  addi         s11, zero, -11 #init loop 0 limit
                  xor          s9, s7, t3
                  slt          t5, ra, a6
sub_4_6_0_t:      lui          t3, 445456
                  slti         a6, tp, -1864
                  addi         s3, s3, -2 #update loop 0 counter
                  xor          t4, t3, t6
                  slti         s6, s0, 274
                  xor          t2, s1, s1
                  sll          a0, s2, ra
                  or           t5, t4, a4
                  and          s4, a6, sp
                  sra          s4, t3, t5
                  or           a2, t6, a7
                  xor          s5, s1, gp
                  slti         t3, a6, -1548
                  xor          t1, t5, s11
                  srli         s1, s4, 18
                  sll          t6, tp, s1
                  auipc        zero, 812887
                  bge          s3, s11, sub_4_6_0_t #branch for loop 0
                  sltiu        a0, tp, 371
                  and          t5, t5, zero
                  sub          a6, gp, a4
                  sltiu        a3, s7, -1755
                  sub          s11, t6, s6
                  srli         t3, s8, 7
                  sltu         a6, t4, t2
                  xori         a1, s6, -14
                  auipc        a6, 587243
                  bne          t1, ra, 12f
                  auipc        zero, 78519
                  bge          s0, zero, 22f
                  bgeu         gp, s10, 30f
12:               nop
                  xor          s4, t6, s3
                  add          a6, s1, s4
                  sra          s3, s0, a4
                  addi         zero, a0, 146
                  lui          t1, 602877
                  or           a5, s0, s3
                  bgeu         zero, a1, 39f
                  bgeu         t5, t6, 33f
                  bgeu         t1, t5, 38f
22:               srl          s9, t2, s8
                  sltiu        a3, t1, 1073
                  andi         s1, s1, -1986
                  slli         tp, s5, 12
                  srl          zero, s9, t1
                  beq          a5, t6, 36f
                  bgeu         t5, ra, 35f
                  sll          a2, t1, s2
30:               lui          ra, 155962
                  sll          a2, t6, a5
                  srl          ra, s2, t3
33:               andi         a0, t3, 628
                  xor          s5, t6, a0
35:               sll          t6, a4, a5
36:               slt          t2, gp, a6
                  xori         a6, a5, -1390
38:               add          tp, a7, s0
39:               beq          a0, a3, 56f
                  beq          a0, s0, 53f
                  auipc        a7, 663352
                  slti         sp, t2, -1374
                  sra          zero, s2, s7
                  addi         t2, ra, 236
                  sra          t2, s0, a6
                  srli         s6, s1, 28
                  sltiu        tp, a5, -1912
                  srl          gp, s11, a1
                  andi         a1, t6, 1608
                  slli         s1, s9, 16
                  auipc        s3, 474121
                  bgeu         s7, a6, 59f
53:               bgeu         t6, t4, 65f
                  nop
                  xor          s6, a0, a2
56:               sll          t2, a3, a1
                  nop
                  bge          gp, tp, 77f
59:               slt          a7, s7, t0
                  addi         a7, a6, -361
                  lui          s5, 651650
                  auipc        ra, 462596
                  xor          s3, s8, sp
                  lui          t4, 71060
65:               andi         s3, a2, 1742
                  xori         a2, a5, 1792
                  xor          a6, s5, s10
                  addi         a3, s4, 1956
                  andi         s1, a0, 1687
                  sub          t4, a3, s10
                  bge          a2, a7, 73f
                  add          s9, s8, sp
73:               srl          gp, t0, s5
                  ori          s6, s1, -103
                  bltu         a4, sp, 86f
                  andi         t1, t5, -823
77:               xori         s6, gp, -525
                  andi         zero, a3, -699
                  bgeu         s11, sp, 91f
                  blt          a2, t5, 94f
                  xori         a7, s5, -409
                  sra          gp, s7, s7
                  add          s1, t0, a6
                  beq          s6, s0, 98f
                  bgeu         zero, t3, 91f
86:               sub          a0, a7, t0
                  sra          sp, t4, t5
                  slli         t6, a4, 7
                  xor          s11, t4, s5
                  sltu         s4, s9, tp
91:               xori         a0, gp, -432
                  sltu         a5, sp, s5
                  xori         a6, a0, 1975
94:               sltu         s0, s0, a1
                  slli         tp, t5, 21
                  and          s9, a4, s3
                  and          a0, a4, s5
98:               andi         sp, s0, 1964
                  nop
                  nop
                  sltu         tp, t5, t1
                  bgeu         t2, tp, 120f
                  bgeu         s6, s0, 107f
                  bltu         s2, zero, 110f
                  bge          s2, zero, 115f
                  srai         tp, tp, 24
107:              xor          t2, t3, s2
                  sll          t0, a3, a3
                  sltu         a7, s4, a7
110:              bgeu         tp, a0, 124f
                  xori         s6, t1, 1332
                  add          a2, a0, t6
                  bgeu         t4, a1, 121f
                  bgeu         t0, zero, 120f
115:              slt          s9, s2, a7
                  bge          t5, s1, 130f
                  sltiu        a6, s5, 401
                  bltu         a2, t2, 123f
                  sltiu        a1, s3, -603
120:              bge          t1, a1, 125f
121:              slli         gp, s11, 8
                  beq          t2, t4, 125f
123:              bgeu         t4, a6, 136f
124:              andi         a0, s1, 187
125:              sub          a2, t6, zero
                  bge          a7, s10, 131f
                  or           s2, ra, a5
                  sub          t1, t4, a0
                  slti         s10, t1, -775
130:              slti         s3, ra, -1183
131:              xor          s5, a2, t1
                  sra          s0, a3, gp
                  lui          zero, 415339
                  ori          a6, s0, -645
                  sll          a7, s8, t6
136:              sltiu        s9, a4, -1385
                  addi         tp, t1, 1232
                  beq          tp, s3, 147f
                  sltiu        a1, a2, 983
                  blt          t6, s10, 154f
                  sub          a5, s7, t2
                  addi         s5, a0, -953
                  ori          s6, t4, 708
                  slt          t6, s11, s6
                  auipc        s11, 16041
                  slti         t4, t6, -691
147:              slli         a5, s0, 4
                  nop
                  ori          a6, s11, 1480
                  addi         t4, s8, 1440
                  slt          a6, s3, ra
                  bltu         sp, a4, 170f
                  slt          a7, a0, a7
154:              bgeu         t4, t1, 174f
                  andi         t6, s10, 1084
                  and          t2, tp, t5
                  nop
                  nop
                  bne          t5, t4, 178f
                  srai         s5, t1, 1
                  xori         s5, gp, -1990
                  addi         s5, s11, 1015
                  and          t4, s4, tp
                  beq          t5, gp, 174f
                  slli         s1, gp, 31
                  andi         a3, t6, -1170
                  blt          s9, a3, 174f
                  srai         ra, s9, 21
                  sltiu        sp, s4, -790
170:              or           ra, t0, s2
                  ori          a5, a0, -1693
                  srai         a7, s4, 19
                  xor          s10, s6, s6
174:              andi         a1, t2, -674
                  xori         t4, a7, 598
                  blt          s10, s7, 190f
                  blt          tp, a0, 181f
178:              bltu         t4, a5, 186f
                  nop
                  srai         s4, a3, 31
181:              sltu         t6, t3, a7
                  xor          a5, s0, ra
                  srli         t5, s9, 4
                  add          s4, a1, a2
                  and          s1, zero, s9
186:              blt          a6, s8, 198f
                  sub          a3, t2, s6
                  bltu         a3, tp, 200f
                  bltu         t3, a2, 196f
190:              addi         s10, s4, -558
                  blt          a6, a3, 208f
                  bge          a7, s11, 209f
                  beq          s8, a3, 212f
                  srai         a5, zero, 28
                  ori          s4, s9, 765
196:              slli         s0, tp, 18
                  srai         t6, a0, 0
198:              and          t5, s3, s9
                  xor          ra, s6, s1
200:              sltu         t1, a3, s6
                  sra          a3, t6, a0
                  bge          s8, t5, 215f
                  srai         a5, s3, 23
                  bne          s3, ra, 207f
                  add          zero, s7, s10
                  sra          a0, t5, a0
207:              bne          t1, s5, 221f
208:              srai         s1, t0, 9
209:              sltu         t0, ra, a3
                  bltu         s1, s9, 215f
                  blt          t1, s5, 222f
212:              srli         t0, s10, 13
                  srl          a7, a7, s7
                  sub          a6, t3, a7
215:              bltu         s11, gp, 229f
                  andi         t3, a4, -1482
                  slti         gp, a3, 64
                  slti         s10, sp, -499
                  beq          s3, a1, 225f
                  sll          gp, s8, t4
221:              bne          t4, a4, 225f
222:              lui          t5, 313947
                  sltu         s4, t2, zero
                  bne          t0, zero, 230f
225:              auipc        s11, 89322
                  xori         s1, a4, 990
                  add          tp, a5, t6
                  xori         tp, ra, -870
229:              srai         a3, s5, 7
230:              slli         s6, gp, 11
                  beq          s2, t6, 237f
                  and          s1, s3, s6
                  srli         ra, s9, 26
                  and          a3, a7, s3
                  nop
                  nop
237:              sltiu        s1, s2, 747
                  blt          s11, a4, 250f
                  slt          t0, a2, s7
                  sltiu        t5, zero, 2040
                  sra          gp, a2, a3
                  beq          a4, t4, 244f
                  xori         t4, a7, 307
244:              auipc        zero, 322364
                  andi         t1, a5, 1241
                  sub          t5, s5, s6
                  sltu         t2, s4, ra
                  bne          ra, t0, 268f
                  nop
250:              blt          t1, t0, 252f
                  srai         s2, t5, 15
252:              sub          s5, t3, tp
                  slti         s11, t1, -217
                  ori          zero, s6, -1332
                  slli         gp, a5, 25
                  addi         t0, a5, -970
                  sltu         sp, t4, zero
                  bltu         s4, gp, 268f
                  sra          s5, a4, s3
                  bge          ra, s11, 279f
                  xori         zero, s4, 1068
                  bgeu         s3, s2, 274f
                  ori          ra, t5, -1484
                  blt          t2, a5, 270f
                  ori          tp, sp, -185
                  bne          t1, s0, 273f
                  xor          tp, s7, a2
268:              andi         gp, t5, -970
                  addi         tp, a1, 1690
270:              bltu         gp, s3, 284f
                  srl          s3, t6, s8
                  srl          a7, tp, gp
273:              srli         a6, a0, 6
274:              xori         s6, tp, 928
                  addi         a6, t5, -623
                  xor          s6, tp, s8
                  add          t6, s4, a6
                  lui          s0, 205500
279:              sll          a7, s3, a1
                  sra          a6, s8, a4
                  nop
                  bge          a7, t2, 289f
                  and          s0, s6, gp
284:              sll          a1, s6, s9
                  srli         t5, a7, 17
                  lui          t0, 816417
                  bge          a4, a1, 291f
                  slti         s6, a7, 343
289:              srli         a6, t6, 23
                  beq          t6, t2, 298f
291:              sll          s0, s3, t6
                  or           gp, ra, zero
                  or           a6, s7, s8
                  blt          s7, s8, 308f
                  or           s0, t1, t1
                  xori         s6, a3, -1169
                  sll          t6, tp, s8
298:              slti         s6, a5, 2036
                  and          ra, t1, ra
                  beq          t2, ra, 305f
                  sltiu        tp, t5, 947
                  slti         ra, s4, 742
                  slli         s11, a4, 26
                  bne          a2, s9, 313f
305:              sra          a1, s11, ra
                  slli         a5, s3, 21
                  beq          gp, s8, 320f
308:              sll          t0, s3, s9
                  srai         s10, a5, 24
                  bne          a2, a1, 315f
                  srai         s11, s2, 13
                  and          a7, s11, a5
313:              srl          sp, sp, a6
                  or           a5, s9, a5
315:              xori         s4, a5, 1348
                  sltu         tp, s5, a1
                  bgeu         t1, s2, 329f
                  bgeu         t2, s6, 336f
                  nop
320:              blt          a7, s6, 331f
                  or           t3, s9, a3
                  xor          s3, s2, a1
                  srli         zero, a3, 9
                  blt          a7, sp, 341f
                  bgeu         a5, t2, 328f
                  auipc        a3, 1023157
                  srli         ra, s0, 31
328:              ori          zero, a1, -779
329:              sra          a6, t1, s5
                  ori          a2, t1, -1720
331:              xori         s4, s11, 1242
                  or           s4, gp, ra
                  ori          t0, a6, -169
                  slli         a6, t0, 7
                  slti         t6, t1, 1369
336:              auipc        zero, 495
                  bge          s0, s0, 341f
                  sltu         t3, a1, s9
                  addi         s4, a7, -1112
                  slti         a3, s4, -1762
341:              add          s0, s9, s7
                  srl          sp, t0, s10
                  sltiu        s4, t3, -181
                  xori         a6, a5, -33
                  blt          t3, a1, 359f
                  bltu         zero, a6, 358f
                  andi         a6, s0, -1560
                  or           s3, s10, s6
                  srl          zero, a6, s5
                  srli         a5, t5, 22
                  nop
                  sub          tp, t3, s2
                  slti         tp, t4, 1256
                  sltiu        t4, a5, -1255
                  bgeu         a3, s0, 361f
                  sub          s4, tp, s4
                  bge          t5, t2, 374f
358:              and          s9, a6, a4
359:              auipc        tp, 778989
                  auipc        a0, 111789
361:              xor          s3, a7, t4
                  bltu         s4, t1, 376f
                  srl          s3, t1, ra
                  slli         a7, a4, 29
                  srl          t0, a4, s9
                  blt          t2, s9, 379f
                  xori         a5, a7, 1846
                  srli         s5, t6, 2
                  lui          a7, 688196
                  and          t2, ra, a3
                  xor          zero, a2, zero
                  sll          a1, s8, s4
                  add          t3, s3, a6
374:              auipc        s11, 20903
                  bge          sp, s8, 381f
376:              bltu         s10, a2, 395f
                  lui          t4, 527873
                  ori          s2, ra, 26
379:              ori          a7, gp, -1355
                  bne          t4, tp, 385f
381:              sub          t1, t6, a1
                  add          s11, s1, a4
                  or           t5, t3, t0
                  slli         t3, s5, 13
385:              srl          t4, s1, t0
                  xori         a1, t2, -656
                  xor          t2, a6, s2
                  bne          t1, s10, 394f
                  bgeu         a4, s8, 395f
                  sltiu        sp, a1, 1919
                  blt          a0, a3, 410f
                  slli         a2, s1, 2
                  sra          a5, ra, sp
394:              sra          s3, s8, t0
395:              andi         t2, a6, 712
                  beq          gp, a3, 413f
                  blt          s3, a0, 417f
                  nop
                  bgeu         t4, a0, 409f
                  srai         s2, t6, 23
                  ori          a1, s7, -643
                  xori         zero, s7, -2047
                  srai         sp, t2, 4
                  xor          a6, s7, s11
                  sll          s4, s0, t2
                  lui          s0, 493620
                  sub          t2, a3, tp
                  slt          s1, s8, a2
409:              add          zero, s9, s5
410:              xor          s2, ra, t2
                  addi         s9, t1, -38
                  sltu         s4, s11, ra
413:              lui          t3, 295797
                  sll          a6, s9, s8
                  sub          tp, s8, sp
                  bgeu         s8, sp, 425f
417:              slli         s5, t6, 30
                  bne          t4, s9, 435f
                  slli         t5, a1, 2
                  srl          s9, a2, zero
                  or           t1, ra, ra
                  or           gp, zero, a6
                  sub          s9, a2, s0
                  sltiu        s6, s9, -1211
425:              sub          a1, s7, zero
                  ori          s6, t4, 355
                  auipc        t2, 985980
                  ori          a6, a3, -1667
                  slti         t4, s0, -1608
                  bne          a7, s5, 444f
                  srli         s2, gp, 25
                  or           a7, a4, a2
                  xori         s3, a7, -364
                  xor          a2, s7, s4
435:              slli         a1, s5, 5
                  srli         a5, s10, 14
                  or           s5, a4, zero
                  bne          a3, s7, 451f
                  blt          a3, t5, 458f
                  sltu         s10, s7, gp
                  sll          t3, a3, zero
                  addi         a6, sp, -1242
                  srl          s0, a4, gp
444:              blt          gp, a2, 446f
                  auipc        a6, 326959
446:              or           s1, a2, s7
                  xor          s0, s8, s2
                  xor          a3, tp, a6
                  ori          t5, sp, 618
                  ori          s11, zero, -1935
451:              auipc        a6, 624373
                  sub          a2, a3, a2
                  blt          a7, ra, 457f
                  slt          s0, t1, t5
                  srai         t3, a1, 31
                  add          s4, s8, a0
457:              nop
458:              sub          a7, gp, t0
                  lui          zero, 148255
                  beq          t3, s11, 471f
                  sra          zero, s9, t0
                  bltu         s1, t5, 470f
                  bge          tp, s3, 477f
                  srli         zero, s1, 4
                  lui          t0, 473049
                  sll          a1, zero, zero
                  slti         sp, s3, 591
                  lui          s5, 35033
                  bltu         a1, a7, 475f
470:              auipc        s10, 728855
471:              bltu         zero, a3, 478f
                  ori          s10, t3, -675
                  slt          s0, a2, a7
                  nop
475:              bne          a1, s8, 478f
                  sra          s10, a6, s1
477:              sub          t5, t4, s0
478:              bge          ra, s0, 483f
                  addi         a6, sp, -1373
                  bge          tp, a1, 487f
                  andi         s2, s11, 1870
                  blt          a0, gp, 494f
483:              slti         t6, s1, -1080
                  srai         s3, s3, 7
                  lui          s1, 77439
                  sra          s9, t4, s2
487:              bge          s5, a6, 499f
                  srli         tp, a3, 27
                  sra          a6, s4, sp
                  bgeu         s5, s11, 504f
                  lui          a0, 535451
                  beq          t3, a2, 505f
                  add          t2, s7, a2
494:              sra          s1, s10, a1
                  xori         a7, s4, 1329
                  sra          t6, a5, a5
                  or           s3, a4, a6
                  bltu         s0, t5, 510f
499:              nop
                  bgeu         s5, s10, 514f
                  sltiu        s9, s1, -1304
                  beq          t4, a6, 506f
                  bgeu         t0, t4, 521f
504:              ori          s2, s8, 1038
505:              lui          t5, 267706
506:              xor          s5, t6, s7
                  xor          a1, s3, s11
                  srai         t4, s3, 22
                  beq          a1, a3, 522f
510:              and          t3, a5, s6
                  bne          a4, s0, 517f
                  add          s0, s8, s3
                  sra          s1, a4, t6
514:              sll          s9, s9, t0
                  or           a2, t3, s0
                  bge          a4, a0, 532f
517:              blt          s6, t2, 532f
                  lui          s11, 368896
                  slt          t2, s7, a1
                  lui          t4, 100510
521:              or           s3, a3, ra
522:              bne          s1, t6, 532f
                  srl          a6, t3, s9
                  lui          tp, 658051
                  and          t4, t0, zero
                  or           s5, tp, t6
                  blt          s7, t5, 531f
                  sltu         a2, t1, s6
                  beq          a2, a2, 532f
                  lui          s9, 651526
531:              sltu         s9, s5, gp
532:              xori         ra, a1, -878
                  addi         s11, sp, 1667
                  sll          t3, s4, t5
                  lw           ra, 4(s7)
                  srli         s6, a4, 9
                  addi         s7, s7, 60
                  srai         s2, t0, 3
                  slti         s6, ra, 358
804:              addi x5, x1, 1
804:              jalr x5, x5, 0
sub_1:            bltu         s1, gp, sub_1_stack_p
                  xor          s4, a6, t3
sub_1_stack_p:    addi         s7, s7, -52
                  slli         gp, s8, 28
                  nop
                  sw           ra, 4(s7)
                  add          s11, s1, a5
                  addi         t5, zero, -9 #init loop 1 counter
                  ori          s11, a6, 901
                  lui          t4, 495706
                  auipc        s9, 132985
                  sltu         a3, gp, a0
                  addi         s2, zero, 1 #init loop 1 limit
sub_1_3_1_t:      or           t3, s11, s6
                  ori          s1, a4, -1981
                  addi         t5, t5, 10 #update loop 1 counter
                  sll          ra, t4, s4
                  addi         a6, zero, -4 #init loop 0 counter
                  lui          a7, 462361
                  sub          s4, ra, a1
                  addi         t1, zero, 10 #init loop 0 limit
                  srai         a3, s2, 13
sub_1_3_0_t:      sltu         t6, t4, t3
                  slli         a0, s0, 27
                  add          a3, t2, s0
                  lui          a0, 695866
                  addi         a6, a6, 5 #update loop 0 counter
                  auipc        a2, 766406
                  sltu         s1, t1, t1
                  add          s3, s6, s6
                  blt          a6, t1, sub_1_3_0_t #branch for loop 0
                  addi         s11, s9, -1560
                  beq          t5, s2, sub_1_3_1_t #branch for loop 1
                  sra          sp, a2, a5
                  addi         s9, zero, -3 #init loop 0 counter
                  sub          s6, t2, a6
                  addi         a0, gp, 1540
                  srli         a6, s2, 27
                  sra          s4, ra, tp
                  xori         sp, s6, -1215
                  slli         s4, t0, 23
                  andi         a1, t3, 701
                  andi         s6, s6, -2042
                  sll          t1, s2, s4
                  addi         a3, zero, 8 #init loop 0 limit
                  lui          a1, 351442
                  sltiu        s6, s0, 1810
sub_1_1_0_t:      ori          s5, s8, 1060
                  srli         a7, zero, 18
                  addi         s9, s9, 3 #update loop 0 counter
                  sub          s4, t0, s4
                  sltu         a2, a5, gp
                  or           a5, a1, t4
                  xor          t4, a6, s11
                  slt          a0, s8, t6
                  auipc        s3, 306882
                  sub          t5, s2, s0
                  blt          s9, a3, sub_1_1_0_t #branch for loop 0
                  sltiu        a2, s8, 1979
                  sltu         t0, s5, t0
                  slli         s6, s9, 24
                  beq          s11, s5, 19f
                  slli         tp, t6, 23
                  bltu         a4, zero, 17f
                  bltu         s4, s1, 18f
                  beq          zero, s10, 20f
                  srl          zero, t6, s0
                  bltu         ra, a3, 18f
                  auipc        s3, 505788
                  ori          s11, s9, -1975
                  bne          t0, a1, 21f
                  blt          s0, a5, 21f
                  srai         gp, t5, 29
                  sltu         s10, s8, t3
                  beq          a4, sp, 27f
                  addi         a1, t0, 501
17:               nop
18:               slti         t5, s11, -702
19:               sll          t2, t5, t0
20:               sll          a7, a7, a3
21:               bge          a0, ra, 25f
                  xor          s6, ra, s6
                  xor          a0, s0, t4
                  bge          s7, s11, 41f
25:               bgeu         a6, s5, 27f
                  blt          gp, tp, 39f
27:               nop
                  bge          t1, t1, 35f
                  add          a5, a3, t5
                  addi         a5, zero, -9 #init loop 0 counter
                  addi         s5, zero, -20 #init loop 0 limit
sub_1_2_0_t:      add          s6, a3, s4
                  sra          s6, gp, a1
                  addi         a5, a5, -2 #update loop 0 counter
                  bge          a5, s5, sub_1_2_0_t #branch for loop 0
                  sltu         sp, a3, s8
                  sltiu        a3, a3, -931
                  bgeu         a4, s3, 47f
                  slt          s1, zero, a6
                  srli         s6, ra, 4
                  xor          t2, ra, a4
35:               sll          t3, a7, a3
                  srl          s9, t6, s2
                  slti         s4, gp, -773
                  bgeu         s0, s4, 46f
39:               nop
                  lui          a0, 310418
41:               auipc        s2, 321121
                  sll          ra, s3, sp
                  srli         s0, sp, 10
                  lui          gp, 55284
                  addi         gp, a2, 1786
46:               srl          zero, a0, a7
47:               bgeu         s8, s6, 57f
                  beq          a0, a5, 59f
                  bgeu         zero, s2, 57f
                  add          t2, s0, s6
                  srl          t1, s8, a5
                  ori          zero, s4, -1682
                  slti         s1, a4, 1832
                  add          t1, ra, t1
                  and          t2, tp, gp
                  add          s4, s11, a1
57:               slli         s1, gp, 3
                  bge          s5, t6, 67f
59:               blt          tp, s1, 68f
                  slli         t5, sp, 14
                  sll          a1, sp, ra
                  addi         t3, s6, -1029
                  slli         s3, tp, 16
                  slt          s1, t1, t4
                  sub          a0, a7, s11
                  and          s4, t6, s9
67:               andi         t6, s10, 747
68:               sltiu        tp, a0, 631
                  ori          s0, a1, 994
                  sltiu        zero, a3, -275
                  nop
                  sltu         s0, s11, t0
                  slti         t6, s2, 729
                  xori         s4, t3, 705
                  beq          gp, t1, 94f
                  sltu         ra, t1, zero
                  ori          gp, t2, 1855
                  sra          s0, a2, sp
                  ori          s1, ra, -1713
                  slti         a3, ra, 883
                  or           s4, s2, s7
                  xori         t5, s11, 1459
                  nop
                  ori          s2, s6, -579
                  bgeu         t5, t5, 104f
                  xor          t2, t3, s9
                  sltiu        t4, ra, -187
                  bne          t1, s5, 94f
                  sra          t2, s10, s3
                  add          a6, s1, s1
                  andi         s3, t4, 1682
                  bgeu         s8, t4, 112f
                  lui          a2, 466760
94:               sltiu        s9, a2, 1685
                  addi         s9, a1, 500
                  sll          s5, a4, s9
                  beq          a6, t5, 114f
                  sll          a0, a5, gp
                  beq          a1, t1, 114f
                  bne          t0, s1, 104f
                  xori         ra, s8, 909
                  xor          s3, a5, s8
                  xori         t1, a0, 2025
104:              ori          s5, t5, 12
                  nop
                  slli         a7, t5, 23
                  srl          s10, a0, t2
                  xor          s10, t3, s4
                  bne          s11, t0, 115f
                  sra          s5, s0, a5
                  beq          t4, s0, 129f
112:              nop
                  xori         s11, gp, -149
114:              sub          s11, a7, t0
115:              sll          s0, s1, t5
                  sltu         t6, t2, a2
                  bgeu         a1, t1, 133f
                  sra          t5, zero, s5
                  sub          t0, a3, a2
                  or           t3, s4, s4
                  beq          a2, t1, 129f
                  srli         s11, s6, 24
                  nop
                  slti         s3, s8, -1934
                  and          s3, t0, a2
                  srai         a6, s1, 28
                  lui          t0, 202199
                  sub          a1, a0, t4
129:              bltu         s4, zero, 138f
                  addi         a2, s8, 1299
                  sll          a7, t3, a3
                  auipc        s0, 566488
133:              ori          s5, s6, 706
                  slt          t2, a0, a3
                  and          s4, s7, s9
                  beq          sp, zero, 149f
                  srai         s4, s0, 12
138:              sub          a5, zero, s3
                  slti         s1, a6, -599
                  sltiu        t5, t0, -340
                  slti         a1, t2, 736
                  slt          a6, a0, zero
                  addi         a3, a7, 414
                  sltu         t3, s4, t5
                  srai         a5, a2, 6
                  andi         t5, t0, 882
                  sra          s5, s3, s8
                  sltiu        ra, s4, 2039
149:              auipc        s4, 763771
                  add          s9, s10, zero
                  slli         a5, s4, 16
                  lui          s11, 494005
                  srl          sp, s10, s9
                  sub          s0, s0, tp
                  srli         a6, tp, 24
                  xori         a6, t2, 1191
                  or           t0, t4, ra
                  and          t4, s9, s7
                  slt          s2, t5, a1
                  slti         a0, s6, 1354
                  blt          s3, gp, 173f
                  sltu         s11, t1, a4
                  srli         t1, a6, 1
                  slli         s3, t2, 30
                  and          tp, s7, zero
                  bge          a4, s3, 176f
                  and          t5, s4, s4
                  bge          t0, a3, 181f
                  auipc        sp, 786858
                  and          s3, s11, a0
                  addi         a7, a1, -604
                  sltiu        a6, t6, 1918
173:              nop
                  bltu         a2, gp, 191f
                  andi         s9, s11, 586
176:              xori         s0, s7, -1077
                  xor          s5, t4, a0
                  and          a2, s2, a4
                  slt          s5, s9, t5
                  slt          sp, s9, t0
181:              sltiu        a7, a3, -705
                  slli         t4, s1, 2
                  or           sp, t2, a3
                  xori         t3, t6, 666
                  addi         s3, s0, -1422
                  srai         s5, s10, 6
                  sra          s5, s7, s0
                  blt          tp, s4, 207f
                  srl          a5, a0, s10
                  xor          tp, s7, s4
191:              sub          a5, a1, t0
                  ori          t5, s11, -1448
                  nop
                  ori          s0, s5, 934
                  auipc        a0, 662234
                  sub          a6, t6, s10
                  bne          s8, sp, 206f
                  addi         t3, zero, 9 #init loop 1 counter
                  xori         a3, t3, -163
                  addi         s11, zero, -18 #init loop 1 limit
sub_1_0_1_t:      slti         s6, s5, 1765
                  add          ra, s0, sp
                  addi         t3, t3, -9 #update loop 1 counter
                  xori         s3, gp, -1132
                  addi         s10, zero, 0 #init loop 0 counter
                  addi         tp, zero, 19 #init loop 0 limit
                  sub          a6, a6, s3
sub_1_0_0_t:      xor          a6, a1, s10
                  addi         s10, s10, 2 #update loop 0 counter
                  sub          s4, s7, s9
                  slti         s4, t0, 1918
                  bltu         s10, tp, sub_1_0_0_t #branch for loop 0
                  bne          t3, s11, sub_1_0_1_t #branch for loop 1
                  nop
                  srl          t0, a3, s4
                  ori          s4, t5, -774
                  xori         a1, s10, 1494
                  lui          s9, 926660
                  sra          a6, a3, t5
                  and          s11, t6, s1
                  sll          t0, a5, a4
                  nop
206:              sltiu        s1, s11, -1612
207:              nop
                  beq          ra, zero, 212f
                  sub          s4, a3, t6
                  bgeu         s11, t4, 230f
                  srli         s6, s3, 10
212:              add          ra, s9, sp
                  srl          s5, t1, a6
                  andi         t6, t4, 949
                  andi         t5, s9, 2044
                  blt          s6, a3, 227f
                  addi         s11, t4, -779
                  andi         s1, s7, 1798
                  add          a3, t3, tp
                  slli         s1, s5, 2
                  ori          s0, tp, -1490
                  auipc        s0, 620307
                  slli         a6, s4, 28
                  sltu         a6, a7, t0
                  or           s0, s0, a7
                  xori         ra, t0, 1703
227:              slli         s2, s0, 17
                  srl          a1, s3, a5
                  slli         t2, a0, 17
230:              bge          gp, a6, 244f
                  sltu         a2, t0, s2
                  slti         a6, s2, 375
                  or           a1, s7, a0
                  sltiu        s0, sp, 1416
                  sub          a5, s1, s10
                  andi         s11, s1, 504
                  xor          s11, t2, s3
                  bge          ra, s9, 244f
                  bgeu         s2, t5, 247f
                  auipc        ra, 180217
                  bgeu         s11, s4, 247f
                  srl          a2, gp, a4
                  sltiu        s10, t1, 773
244:              andi         t1, s1, 517
                  srl          t0, t2, a6
                  or           a6, s8, a0
247:              xor          a2, s8, sp
                  lui          t4, 385093
                  lw           ra, 4(s7)
                  ori          a7, a0, -674
                  xor          t2, s6, a0
                  xori         a1, tp, 1280
                  or           zero, a3, a4
                  addi         s7, s7, 52
                  add          a2, s7, a0
339:              addi x10, x1, 1
339:              jalr x10, x10, 0
sub_5:            sltiu        s1, s3, 1906
                  sll          s2, s10, s4
                  addi         s7, s7, -56
                  sll          t6, s5, a1
                  add          s4, a3, a2
                  sw           ra, 4(s7)
                  srl          a2, s11, ra
                  slli         t3, t4, 10
                  addi         t1, t0, -1452
                  addi         s9, zero, 2 #init loop 0 counter
                  slti         t5, tp, 1557
                  or           zero, a4, tp
                  or           ra, tp, t4
                  srl          t3, t5, gp
                  sltiu        gp, t5, -802
                  srli         s1, s6, 27
                  slt          s11, a6, a2
                  addi         sp, zero, -16 #init loop 0 limit
                  srai         s6, a1, 3
                  andi         a7, a4, -1629
                  and          s4, s7, s10
                  and          s1, gp, s4
sub_5_4_0_t:      sub          s1, t4, zero
                  lui          t0, 290876
                  srli         tp, a6, 21
                  addi         s9, s9, -3 #update loop 0 counter
                  sub          s11, s11, a5
                  sll          t3, s11, zero
                  auipc        t4, 405501
                  srl          t0, t6, a2
                  sltu         t5, a4, a7
                  auipc        ra, 454278
                  sltu         s10, s11, s0
                  srai         a7, t4, 12
                  slli         s3, s0, 23
                  xori         gp, s7, 1753
                  beq          s9, sp, sub_5_4_0_t #branch for loop 0
                  sra          t6, s10, s7
                  addi         t6, zero, 3 #init loop 1 counter
                  add          s1, s9, tp
                  ori          a6, t2, 1624
                  srai         t2, s6, 25
                  ori          s3, s1, 9
                  addi         a2, zero, 12 #init loop 1 limit
                  andi         t2, t2, -1166
                  srli         s1, ra, 21
sub_5_2_1_t:      auipc        sp, 417093
                  sub          s9, s10, gp
                  addi         t6, t6, 3 #update loop 1 counter
                  srai         s4, zero, 12
                  addi         t0, zero, -10 #init loop 0 counter
                  ori          s6, t0, -786
                  addi         s11, zero, 20 #init loop 0 limit
                  sub          a7, zero, a1
                  sltu         s3, sp, zero
                  xor          s1, a4, s10
sub_5_2_0_t:      xor          zero, t6, a7
                  srl          a6, tp, zero
                  addi         t0, t0, 5 #update loop 0 counter
                  addi         a5, a6, -643
                  sltu         a6, t2, s5
                  andi         tp, s11, 1572
                  beq          t0, s11, sub_5_2_0_t #branch for loop 0
                  lui          a0, 996319
                  and          s2, ra, sp
                  or           a1, s11, s0
                  ori          a1, t0, 5
                  bne          t6, a2, sub_5_2_1_t #branch for loop 1
                  ori          a0, s7, 990
                  addi         s6, zero, -2 #init loop 1 counter
                  srli         s2, t0, 8
                  addi         a5, zero, 16 #init loop 1 limit
                  srli         gp, s3, 2
sub_5_0_1_t:      and          t1, s7, s3
                  lui          s2, 712676
                  addi         s6, s6, 3 #update loop 1 counter
                  addi         a1, zero, -8 #init loop 0 counter
                  addi         t5, zero, 13 #init loop 0 limit
                  sltiu        s3, t3, 1357
sub_5_0_0_t:      lui          s11, 296361
                  addi         a1, a1, 8 #update loop 0 counter
                  srai         s5, s7, 23
                  blt          a1, t5, sub_5_0_0_t #branch for loop 0
                  sll          t0, a5, s4
                  nop
                  bne          s6, a5, sub_5_0_1_t #branch for loop 1
                  add          s9, gp, s6
                  and          a2, s1, s5
                  sltu         s3, t0, s7
                  slli         s6, gp, 14
                  bltu         s6, t0, 5f
                  srl          t0, gp, s4
5:                sltu         s2, s10, a1
                  sltiu        s5, s4, 215
                  slt          a1, a0, s3
                  sub          gp, t0, s10
                  sra          t0, t1, s5
                  auipc        s3, 762501
                  sltu         t6, a4, s8
                  srl          a2, sp, ra
                  bge          tp, t6, 17f
                  sub          a2, t5, t0
                  bgeu         s10, a6, 19f
                  addi         ra, zero, -5 #init loop 1 counter
                  addi         t6, zero, -20 #init loop 1 limit
sub_5_1_1_t:      nop
                  addi         ra, ra, -3 #update loop 1 counter
                  addi         t5, zero, 4 #init loop 0 counter
                  addi         a2, zero, 18 #init loop 0 limit
sub_5_1_0_t:      ori          s11, s11, 460
                  addi         t5, t5, 7 #update loop 0 counter
                  beq          t5, a2, sub_5_1_0_t #branch for loop 0
                  bge          ra, t6, sub_5_1_1_t #branch for loop 1
                  sll          s11, t4, zero
                  sra          ra, t2, a1
17:               addi         s1, t2, -284
                  beq          gp, a3, 25f
19:               and          zero, s8, t3
                  or           ra, t5, s7
                  srl          s3, t6, gp
                  blt          a6, a7, 25f
                  ori          zero, s3, -391
                  bgeu         s10, s10, 39f
25:               bge          a4, a6, 32f
                  bltu         s3, t6, 29f
                  sll          a0, s11, s4
                  sltu         s3, s2, a6
29:               addi         a7, s0, -1603
                  xor          t5, s3, tp
                  auipc        s2, 122691
32:               srai         a1, s5, 2
                  add          a5, a5, a3
                  srli         t2, s7, 28
                  slt          gp, a4, s5
                  slti         s9, a6, 1442
                  ori          a3, a0, 1952
                  srl          s0, a7, s3
39:               bne          t3, zero, 53f
                  sll          t6, t4, s3
                  bltu         s9, a3, 46f
                  bltu         t2, a6, 61f
                  slli         t0, t6, 12
                  sub          t4, a3, sp
                  bltu         a2, s4, 64f
46:               slt          s2, s3, s1
                  srai         s5, s0, 30
                  srai         t3, a0, 25
                  sltiu        gp, gp, -610
                  lui          s3, 135473
                  bltu         ra, t5, 52f
52:               beq          s3, s3, 66f
53:               srai         tp, t3, 20
                  bltu         s8, t2, 64f
                  andi         t4, s0, 1908
                  beq          s11, a1, 75f
                  srl          t0, gp, t6
                  bltu         s9, t1, 73f
                  nop
                  sltu         sp, sp, s9
61:               srli         s2, a1, 28
                  andi         a5, s2, 308
                  xori         a2, s11, -439
64:               sub          s0, a3, s10
                  add          a0, s10, s11
66:               xori         a6, sp, -1821
                  bne          t2, s4, 78f
                  blt          zero, ra, 73f
                  sltiu        t3, gp, -351
                  blt          a1, s10, 85f
                  xori         t1, a6, 974
                  lui          t6, 800157
73:               add          tp, a2, t5
                  srli         a1, t5, 26
75:               srli         a6, t5, 18
                  lui          s3, 1010588
                  sra          s0, a6, t0
78:               bge          t5, a2, 86f
                  and          a0, s8, tp
                  addi         s9, gp, -1857
                  beq          s2, s2, 97f
                  bge          s7, a1, 90f
                  add          s1, t1, s10
                  bltu         a5, s11, 98f
85:               slti         sp, a6, -1184
86:               slt          t4, a1, s2
                  sll          ra, a5, s11
                  blt          s1, t6, 102f
                  sltiu        s10, s9, -643
90:               and          a3, s7, tp
                  bne          a0, t6, 97f
                  slt          a0, t5, sp
                  slti         s9, t3, -1600
                  ori          zero, s7, 1488
                  slt          t1, s11, t1
                  sltiu        a0, s4, -1886
97:               bge          a7, s5, 110f
98:               auipc        s0, 769560
                  sll          t6, tp, t6
                  beq          a6, s10, 120f
                  lui          s3, 145715
102:              nop
                  beq          t1, a6, 115f
                  addi         t3, tp, -486
                  bne          a1, s0, 124f
                  blt          a5, t1, 125f
                  beq          t5, sp, 109f
                  auipc        a3, 957254
109:              slli         t1, t1, 1
110:              bltu         s1, s2, 125f
                  sra          s6, s8, a3
                  nop
                  slt          a0, tp, t3
                  bge          tp, s9, 128f
115:              ori          s0, tp, -152
                  nop
                  sltu         s10, t3, gp
                  xori         s0, s5, 1741
                  and          tp, gp, t1
120:              srai         zero, t2, 20
                  blt          s4, ra, 129f
                  srl          a2, t3, a0
                  xor          s0, zero, t6
124:              lui          t4, 116895
125:              sra          t1, t6, a1
                  and          a3, tp, s11
                  sll          zero, a0, s8
128:              bltu         s5, t0, 133f
129:              srli         t4, sp, 9
                  lui          t2, 908004
                  slli         t5, a7, 13
                  bge          s9, t4, 135f
133:              sub          t1, tp, a6
                  sltiu        s11, sp, -711
135:              bge          s8, zero, 136f
136:              nop
                  auipc        t0, 613527
                  addi         a1, s4, 1125
                  add          s2, tp, a4
                  addi         t5, s9, 760
                  lui          a3, 963656
                  beq          t4, sp, 148f
                  bltu         a7, s1, 159f
                  sra          s4, s8, s2
                  bne          a4, a0, 160f
                  xor          t3, s9, s6
                  and          a1, s3, tp
148:              bltu         tp, a1, 167f
                  slt          t3, s0, t5
                  xori         t6, a0, -1605
                  slti         a2, s9, -331
                  beq          tp, a4, 171f
                  andi         s5, a5, 1803
                  addi         s4, ra, -1889
                  bltu         a3, tp, 170f
                  srl          t2, t6, s3
                  addi         s2, s7, -1027
                  sra          a1, s1, t5
159:              bne          a6, s10, 169f
                  addi         s0, zero, -1 #init loop 1 counter
                  sra          s9, s0, sp
                  auipc        s3, 990827
                  addi         s11, zero, 1 #init loop 1 limit
                  sltiu        zero, zero, 67
sub_5_3_1_t:      slt          tp, s7, gp
                  add          s9, a2, sp
                  addi         s0, s0, 7 #update loop 1 counter
                  addi         s4, a4, -1495
                  and          tp, t1, s2
                  slti         t1, t0, 1898
                  addi         s6, zero, -4 #init loop 0 counter
                  addi         t4, gp, 1840
                  addi         t2, zero, -4 #init loop 0 limit
                  auipc        a5, 714701
                  sltiu        t6, a3, 1964
                  ori          t4, s11, 1184
sub_5_3_0_t:      and          a5, ra, a7
                  lui          a1, 257496
                  sltu         zero, s3, s1
                  sub          t4, s7, t1
                  addi         s6, s6, -1 #update loop 0 counter
                  ori          sp, s7, 38
                  xor          s3, a3, s7
                  bge          s6, t2, sub_5_3_0_t #branch for loop 0
                  sub          t3, s4, a1
                  and          s9, ra, a7
                  blt          s0, s11, sub_5_3_1_t #branch for loop 1
                  and          t3, a1, a7
160:              slt          t1, a0, s6
                  bne          a5, a1, 173f
                  bgeu         ra, t3, 175f
                  sltiu        s1, s10, 1501
                  andi         a0, t4, 629
                  blt          s4, s1, 179f
                  srli         a6, a2, 11
167:              slt          t1, a0, s4
                  bgeu         t5, sp, 182f
169:              srl          s10, a5, t4
170:              xori         t1, a0, 646
171:              blt          s8, a5, 179f
                  srl          a3, t0, a7
173:              sra          s2, a3, s1
                  sltiu        t6, a0, -1377
175:              slti         s3, a0, 305
                  srli         a2, a3, 25
                  ori          t1, t4, -908
                  ori          a0, s9, 1155
179:              xori         s11, s1, -666
                  slti         t2, s1, -389
                  blt          t1, a7, 201f
182:              slt          t0, a0, a6
                  addi         s4, a4, 1277
                  bge          ra, sp, 189f
                  sltu         t0, s4, s10
                  blt          s9, a1, 205f
                  bltu         s10, t5, 194f
                  andi         gp, s4, -962
189:              xor          s1, s9, s1
                  add          s2, a3, ra
                  and          a3, s9, a6
                  lui          s2, 14239
                  sll          tp, a2, sp
194:              srli         a3, t1, 29
                  blt          sp, s9, 206f
                  xori         a2, a1, -1470
                  addi         a6, s8, -252
                  bltu         s1, t1, 201f
                  beq          s0, a4, 203f
                  sll          a0, s7, s10
201:              srl          a7, s11, s0
                  sub          gp, a4, s1
203:              bgeu         s6, t3, 207f
                  sub          tp, a7, a1
205:              sltu         s5, a6, s3
206:              sra          s11, a5, ra
207:              sltu         s4, tp, s7
                  srl          t3, gp, a1
                  beq          s7, s6, 216f
                  sub          s1, s7, ra
                  beq          t6, s5, 225f
                  ori          a5, t2, -366
                  slti         s1, t0, 1875
                  blt          s2, a5, 218f
                  and          t3, t6, t4
216:              lui          s10, 940488
                  andi         t3, s10, -231
218:              xor          a6, s1, t2
                  srai         t0, s7, 31
                  auipc        t4, 794710
                  srli         sp, s1, 7
                  srli         a5, tp, 16
                  nop
                  blt          s10, s4, 227f
225:              blt          a5, a7, 237f
                  auipc        t0, 39366
227:              andi         s6, a7, 525
                  bgeu         t6, s4, 236f
                  nop
                  xor          s10, s3, t5
                  sub          s3, s10, s2
                  ori          t2, s11, -104
                  sra          a2, s11, s4
                  srl          a2, s0, s7
                  and          t4, s11, sp
236:              sll          s4, t1, a3
237:              xor          s0, s4, t5
                  srai         a6, a1, 28
                  or           sp, s2, zero
                  lui          s2, 328654
                  bne          ra, t1, 260f
                  sltu         t5, a0, t3
                  or           s10, t3, t6
                  ori          s6, t4, 1164
                  slt          s1, tp, t6
                  xor          a3, a4, s5
                  xori         s2, s7, -1032
                  sltiu        s10, t0, 1174
                  sub          t0, s1, ra
                  beq          s0, a0, 264f
                  slt          ra, a6, ra
                  xor          s2, s7, t3
                  beq          t6, ra, 261f
                  lui          t4, 18363
                  srl          a0, a0, s2
                  sll          a6, a2, t1
                  srl          a6, t2, a2
                  blt          t6, a5, 263f
                  lui          s5, 468072
260:              addi         s5, a3, -459
261:              auipc        ra, 545180
                  sub          t0, s11, sp
263:              srai         a7, sp, 3
264:              and          a1, s8, s6
                  bltu         a3, s10, 268f
                  blt          s8, gp, 282f
                  srl          s11, t0, a3
268:              nop
                  srl          a6, ra, s1
                  andi         s6, a0, 588
                  sltu         s10, t3, t6
                  ori          tp, t6, -1699
                  sra          sp, zero, a4
                  sra          t3, gp, ra
                  bge          a4, s6, 294f
                  blt          s7, s0, 295f
                  xori         t3, t0, 2005
                  ori          t1, a7, -1870
                  andi         a3, s8, 1216
                  xori         a6, a0, -1506
                  srai         a6, a0, 3
282:              andi         a2, s8, 335
                  beq          zero, t3, 297f
                  lui          ra, 556237
                  addi         t1, t4, -1344
                  bge          s7, s7, 297f
                  auipc        s4, 56687
                  or           s10, zero, s10
                  and          t0, s1, tp
                  or           a7, s3, s0
                  auipc        t1, 971400
                  andi         s5, a3, 1885
                  sltu         s11, gp, s8
294:              slli         s2, s3, 26
295:              andi         ra, tp, 1640
                  ori          ra, a6, 1381
297:              lui          sp, 735544
                  sll          t0, s11, a5
                  lw           ra, 4(s7)
                  ori          t5, a3, 1265
                  xori         t5, a1, 1155
                  sub          a5, ra, s3
                  ori          zero, s2, -1332
                  or           t2, t1, t0
                  slli         t1, s3, 4
                  addi         s7, s7, 56
                  or           zero, t2, t4
435:              addi x25, x1, 1
435:              jalr x25, x25, 0
sub_3:            sltiu        a7, s7, 637
                  andi         t1, ra, -474
                  addi         s7, s7, -48
                  sra          s3, s0, s2
                  sw           ra, 4(s7)
                  slt          t4, sp, zero
                  slti         s2, s8, 66
                  add          s5, t0, s4
                  addi         t1, zero, -10 #init loop 0 counter
                  lui          sp, 517785
                  srli         t2, zero, 2
                  slli         a6, s7, 31
                  lui          a6, 964990
                  srl          t5, t2, t4
                  srai         t4, tp, 1
                  sra          a1, s0, s8
                  xor          s2, s1, s4
                  srai         tp, a4, 30
                  or           t4, zero, a1
                  lui          tp, 859688
                  addi         a5, zero, 18 #init loop 0 limit
                  addi         s11, ra, 1694
sub_3_0_0_t:      sub          a3, s9, s5
                  addi         t1, t1, 6 #update loop 0 counter
                  add          a1, a3, s11
                  srai         a0, s7, 7
                  add          sp, t3, a6
                  sub          a0, a7, s9
                  slti         s0, t5, 1833
                  xori         t3, s1, 1608
                  srai         sp, t6, 31
                  andi         s11, s9, -1436
                  bltu         t1, a5, sub_3_0_0_t #branch for loop 0
                  slt          s5, s4, s10
                  add          t4, s0, tp
                  xor          sp, ra, s4
                  or           s11, gp, a5
                  ori          a1, tp, -224
                  nop
                  bne          tp, s3, 23f
                  bne          t2, s9, 25f
                  bltu         s7, a7, 13f
                  xor          t5, zero, a3
                  nop
                  bltu         s3, t1, 27f
                  or           a7, sp, sp
                  blt          s5, s9, 17f
13:               sltiu        s1, t1, -915
                  sltiu        s3, s3, -1680
                  and          a7, a0, a0
                  bltu         a5, t0, 20f
17:               auipc        a2, 946848
                  ori          t2, s9, -1656
                  add          a1, a4, a5
20:               slti         t2, gp, 929
                  or           a6, t1, a6
                  sra          s10, a5, zero
23:               sltiu        ra, s4, 921
                  bgeu         s4, s0, 28f
25:               beq          s6, t2, 40f
                  lui          zero, 747882
27:               srai         a3, s8, 7
28:               and          s6, a6, a3
                  sra          t2, t0, t4
                  ori          s5, gp, -971
                  beq          a1, t1, 43f
                  bge          a4, s10, 44f
                  slt          t3, s10, s6
                  ori          zero, s4, 1661
                  xor          s5, t3, ra
                  sltu         s11, a6, s0
                  sltiu        zero, a6, 1946
                  bgeu         a0, s4, 46f
                  slli         s5, s11, 15
40:               xori         gp, gp, 1205
                  beq          s4, s10, 49f
                  xor          a6, a7, s0
43:               sub          s9, t1, a3
44:               sll          s9, s4, a7
                  srai         a7, a4, 26
46:               addi         s5, t5, 481
                  sub          sp, t3, s2
                  sra          a5, t3, t6
49:               auipc        t1, 1005705
                  blt          s10, gp, 55f
                  sltu         sp, a0, s9
                  sltu         t1, s5, t3
                  sltiu        t6, t2, 1752
                  lui          s10, 29063
55:               auipc        tp, 859042
                  slli         a1, s5, 0
                  srli         gp, a1, 2
                  nop
                  auipc        zero, 72309
                  sltiu        s6, tp, -108
                  or           s9, s0, tp
                  nop
                  andi         a1, a1, -207
                  srai         s0, t4, 4
                  sub          ra, a3, t4
                  sltiu        t2, a2, 1442
                  lui          t2, 529572
                  xori         a3, s7, 785
                  sll          ra, t3, s1
                  slt          t0, s8, t0
                  xori         s6, t4, 1000
                  lui          s0, 533080
                  lw           ra, 4(s7)
                  srai         s3, a1, 17
                  slli         s0, s11, 25
                  add          s6, a3, s11
                  or           s3, a2, s8
                  addi         s7, s7, 48
                  xor          t1, t1, a1
114:              addi x7, x1, 1
114:              jalr x7, x7, 0
sub_2:            srl          a6, gp, zero
                  ori          t5, s1, -1881
                  addi         s7, s7, -40
                  auipc        a0, 473354
                  ori          s3, s5, 293
                  xori         gp, t4, -105
                  add          a6, ra, s0
                  addi         s11, t2, 1347
                  sw           ra, 4(s7)
                  or           zero, t3, ra
                  add          a2, a6, ra
                  addi         a5, zero, 2 #init loop 0 counter
                  add          a3, s10, t1
                  sll          s10, sp, a5
                  addi         t2, zero, 14 #init loop 0 limit
                  srli         zero, tp, 16
                  andi         zero, a5, 1658
                  addi         a0, s6, 313
                  nop
sub_2_5_0_t:      sub          s3, s0, t5
                  slli         tp, ra, 6
                  sub          s3, tp, zero
                  addi         a5, a5, 6 #update loop 0 counter
                  sra          t5, t4, s10
                  srli         s4, s5, 29
                  srai         s3, s11, 22
                  slli         t5, a1, 27
                  sll          s2, sp, t0
                  lui          a6, 475431
                  srl          a3, a0, s8
                  andi         s6, s10, 1163
                  sltu         s11, s7, tp
                  sltiu        t3, a5, -1608
                  sll          s3, t1, sp
                  srl          t4, a6, a5
                  and          s6, a4, t0
                  sll          a2, a7, t6
                  xor          s9, s9, t6
                  srai         s10, a4, 26
                  blt          a5, t2, sub_2_5_0_t #branch for loop 0
                  sub          s5, gp, s7
                  addi         s1, zero, 0 #init loop 1 counter
                  nop
                  or           a2, s3, a7
                  slli         t3, s6, 1
                  addi         t1, zero, 15 #init loop 1 limit
sub_2_3_1_t:      xori         zero, zero, -674
                  addi         s1, s1, 10 #update loop 1 counter
                  addi         sp, zero, -8 #init loop 0 counter
                  addi         tp, zero, 20 #init loop 0 limit
                  add          s10, t0, a1
sub_2_3_0_t:      and          s9, a2, s10
                  ori          s11, a0, -73
                  addi         sp, sp, 6 #update loop 0 counter
                  sra          t4, tp, a6
                  sll          t0, s0, s4
                  nop
                  blt          sp, tp, sub_2_3_0_t #branch for loop 0
                  srl          t5, a3, a7
                  srai         ra, s9, 22
                  srai         a2, tp, 7
                  bltu         s1, t1, sub_2_3_1_t #branch for loop 1
                  auipc        ra, 749412
                  addi         s2, zero, -2 #init loop 0 counter
                  sub          s0, t2, s5
                  ori          s5, t5, -1742
                  add          s11, tp, t6
                  or           s5, zero, t3
                  sll          a6, s1, s1
                  sra          s4, s5, s4
                  ori          s11, a1, 33
                  srli         s0, s8, 18
                  xor          s3, s9, a5
                  auipc        a7, 470653
                  srl          a1, a3, t2
                  addi         sp, zero, 13 #init loop 0 limit
                  and          t1, s4, s3
                  srai         t2, t4, 18
sub_2_2_0_t:      nop
                  sra          t2, s8, s9
                  addi         s2, s2, 3 #update loop 0 counter
                  add          a1, s11, s0
                  sltu         t0, s3, s4
                  sra          t2, t6, t2
                  and          a2, a5, a7
                  slt          a5, t1, s8
                  andi         a7, s6, 711
                  lui          zero, 600220
                  addi         gp, t6, 814
                  sll          t1, a4, s11
                  bne          s2, sp, sub_2_2_0_t #branch for loop 0
                  and          t2, s5, s3
                  addi         a3, zero, -2 #init loop 1 counter
                  xori         zero, ra, -1236
                  addi         t3, zero, 20 #init loop 1 limit
sub_2_1_1_t:      xor          tp, t5, s11
                  andi         a7, ra, -345
                  auipc        a2, 487743
                  sltu         t5, t1, a3
                  andi         tp, tp, 1730
                  addi         a3, a3, 7 #update loop 1 counter
                  addi         s5, zero, 9 #init loop 0 counter
                  addi         a0, zero, 11 #init loop 0 limit
sub_2_1_0_t:      slt          gp, a3, t6
                  addi         s5, s5, 10 #update loop 0 counter
                  slti         t1, s11, 667
                  bltu         s5, a0, sub_2_1_0_t #branch for loop 0
                  nop
                  bltu         a3, t3, sub_2_1_1_t #branch for loop 1
                  andi         s2, t2, -1417
                  addi         a1, zero, 6 #init loop 1 counter
                  auipc        sp, 495333
                  add          s10, s7, a5
                  sltu         s11, s6, s0
                  ori          a3, a4, -651
                  auipc        a2, 362544
                  addi         gp, zero, 13 #init loop 1 limit
                  addi         a6, s9, -419
sub_2_9_1_t:      addi         t4, t1, 1238
                  addi         a1, a1, 8 #update loop 1 counter
                  slli         t1, s9, 15
                  addi         a0, zero, -2 #init loop 0 counter
                  or           t0, a1, ra
                  xori         s11, a1, 1644
                  addi         a7, zero, 16 #init loop 0 limit
sub_2_9_0_t:      and          a5, t6, sp
                  sltu         s9, a2, tp
                  srl          t2, t0, s11
                  or           ra, t3, s5
                  addi         a0, a0, 9 #update loop 0 counter
                  blt          a0, a7, sub_2_9_0_t #branch for loop 0
                  andi         ra, s1, -693
                  srl          a6, s4, sp
                  and          t0, t4, zero
                  sltiu        tp, t6, -410
                  srli         t4, a3, 25
                  blt          a1, gp, sub_2_9_1_t #branch for loop 1
                  sub          a2, s7, tp
                  addi         t0, zero, -4 #init loop 1 counter
                  xori         a3, a7, 1906
                  addi         s1, zero, 1 #init loop 1 limit
sub_2_8_1_t:      slti         s6, t3, 1137
                  or           t6, t6, t3
                  addi         t0, t0, 1 #update loop 1 counter
                  addi         s5, zero, -8 #init loop 0 counter
                  ori          s11, a2, -424
                  xori         t4, s6, -1113
                  addi         t5, zero, -11 #init loop 0 limit
sub_2_8_0_t:      or           gp, zero, t1
                  xori         zero, s6, 2023
                  addi         s5, s5, -3 #update loop 0 counter
                  xor          s4, s9, a0
                  srli         a3, t1, 27
                  bne          s5, t5, sub_2_8_0_t #branch for loop 0
                  and          t2, s3, s3
                  auipc        t2, 339747
                  slt          s2, t0, a5
                  beq          t0, s1, sub_2_8_1_t #branch for loop 1
                  andi         t4, s9, -1158
                  addi         s0, zero, 1 #init loop 0 counter
                  srl          t2, s4, gp
                  addi         s9, zero, 7 #init loop 0 limit
sub_2_0_0_t:      nop
                  sltiu        gp, gp, 730
                  addi         a7, a4, 1056
                  lui          t4, 886253
                  addi         s0, s0, 8 #update loop 0 counter
                  blt          s0, s9, sub_2_0_0_t #branch for loop 0
                  addi         t4, s7, -163
                  addi         a5, zero, 6 #init loop 1 counter
                  addi         s2, zero, 12 #init loop 1 limit
sub_2_4_1_t:      addi         sp, ra, 486
                  sub          s1, t4, s6
                  addi         a5, a5, 7 #update loop 1 counter
                  addi         t2, s3, 630
                  addi         t6, zero, 9 #init loop 0 counter
                  lui          a3, 888800
                  srli         s10, s3, 12
                  addi         s5, zero, 17 #init loop 0 limit
                  lui          t4, 341232
sub_2_4_0_t:      andi         sp, s7, -946
                  auipc        t5, 718162
                  addi         t6, t6, 4 #update loop 0 counter
                  bne          t6, s5, sub_2_4_0_t #branch for loop 0
                  sub          ra, t3, t4
                  blt          a5, s2, sub_2_4_1_t #branch for loop 1
                  slt          gp, ra, s0
                  addi         a7, zero, 7 #init loop 0 counter
                  nop
                  slli         t4, s11, 3
                  addi         a3, zero, -17 #init loop 0 limit
                  auipc        t0, 128066
                  nop
                  lui          t3, 296044
                  add          s5, s2, s10
sub_2_12_0_t:     slt          t2, s4, s2
                  addi         a7, a7, -3 #update loop 0 counter
                  srli         a5, a7, 14
                  beq          a7, a3, sub_2_12_0_t #branch for loop 0
                  sltu         a1, t3, sp
                  addi         s1, zero, -9 #init loop 0 counter
                  addi         a7, zero, -18 #init loop 0 limit
sub_2_6_0_t:      add          s10, zero, a2
                  xor          sp, s4, s0
                  addi         s1, s1, -9 #update loop 0 counter
                  bne          s1, a7, sub_2_6_0_t #branch for loop 0
                  lui          t0, 772923
                  addi         s3, zero, 6 #init loop 1 counter
                  lui          a5, 469769
                  addi         t3, zero, 4 #init loop 1 limit
                  sub          s2, s2, s10
sub_2_11_1_t:     xor          s9, s6, sp
                  addi         s3, s3, -1 #update loop 1 counter
                  addi         s5, zero, -3 #init loop 0 counter
                  addi         ra, zero, -4 #init loop 0 limit
sub_2_11_0_t:     lui          sp, 545626
                  addi         s5, s5, -10 #update loop 0 counter
                  addi         a0, a5, -1469
                  auipc        s6, 182944
                  bge          s5, ra, sub_2_11_0_t #branch for loop 0
                  bgeu         s3, t3, sub_2_11_1_t #branch for loop 1
                  ori          gp, a2, 1509
                  addi         s3, zero, 9 #init loop 1 counter
                  sltiu        a2, a0, 1141
                  addi         a6, zero, 18 #init loop 1 limit
                  lui          sp, 879561
sub_2_7_1_t:      or           s1, s11, s1
                  sltiu        s6, t6, -494
                  addi         s3, s3, 9 #update loop 1 counter
                  xori         s10, a6, -856
                  addi         a0, zero, -5 #init loop 0 counter
                  addi         s11, zero, 9 #init loop 0 limit
                  auipc        t0, 373511
sub_2_7_0_t:      xori         t1, a0, -701
                  addi         a0, a0, 1 #update loop 0 counter
                  blt          a0, s11, sub_2_7_0_t #branch for loop 0
                  auipc        t3, 490448
                  sra          a7, a0, a7
                  sltu         gp, s11, t1
                  bltu         s3, a6, sub_2_7_1_t #branch for loop 1
                  slt          s2, s1, s8
                  bltu         t2, zero, 7f
                  addi         t5, t2, -1954
                  sub          a5, s4, s1
                  add          a5, t5, s7
                  sub          s11, a6, t5
                  bge          s6, s4, 8f
                  nop
7:                sll          t0, a3, t5
8:                and          a7, ra, a0
                  bltu         gp, s3, 25f
                  or           a7, a5, t4
                  srli         ra, a7, 18
                  slt          t3, a0, a0
                  beq          s11, s9, 22f
                  ori          a5, a4, -1665
                  xori         s2, s8, -204
                  lui          s0, 761818
                  sltu         s9, a5, t5
                  ori          s11, s1, 1788
                  sra          s4, a3, t5
                  bltu         zero, gp, 22f
                  and          s6, t5, t1
22:               srai         zero, s10, 1
                  sub          ra, t1, t2
                  slli         t6, s4, 5
25:               bne          t5, s11, 31f
                  srl          sp, s3, a3
                  lui          s10, 1027177
                  sltu         s6, a0, a4
                  auipc        s5, 680848
                  slt          s11, tp, a1
31:               sra          zero, s6, tp
                  sra          t0, t1, a5
                  bge          t6, a3, 52f
                  or           a1, a5, a7
                  auipc        a6, 1009016
                  slli         t5, s0, 11
                  srli         t0, a7, 26
                  srai         s2, sp, 2
                  bne          s1, a6, 53f
                  sub          t5, a2, s3
                  sub          a6, t4, t4
                  sltiu        s9, s10, -135
                  xor          tp, t6, a3
                  bne          s8, a6, 54f
                  and          s0, t6, tp
                  xor          a1, gp, s1
                  srli         ra, a3, 30
                  bge          t3, a7, 64f
                  beq          s6, a0, 55f
                  srl          s6, a1, ra
                  slti         s3, a0, 1788
52:               bge          a5, t2, 66f
53:               srl          s9, s3, a6
54:               slti         s2, s8, -1375
55:               bge          t1, sp, 67f
                  beq          s10, s1, 76f
                  blt          ra, a0, 72f
                  xori         s0, s3, 812
                  sltiu        s0, t4, -371
                  srai         a1, t6, 5
                  bltu         t2, s4, 71f
                  srli         a3, t5, 14
                  addi         s3, a3, -813
64:               srli         a1, s4, 5
                  srl          t4, gp, a5
66:               slti         a7, s9, 1221
67:               sll          s11, s10, s8
                  lui          t0, 1000093
                  sra          t5, tp, a3
                  bltu         s6, s5, 83f
71:               bge          a4, a0, 90f
72:               sltu         s5, sp, a4
                  sltiu        s11, a4, 1651
                  sll          a2, s0, s5
                  slt          tp, s11, tp
76:               add          t4, s10, t2
                  nop
                  xori         a2, a2, -696
                  nop
                  nop
                  sra          t5, s9, sp
                  nop
83:               andi         tp, s8, -1722
                  lui          s1, 9450
                  srli         a5, a6, 17
                  auipc        sp, 578277
                  addi         s3, t6, 1389
                  sub          a1, s7, t3
                  sub          s3, a2, t5
90:               slli         s1, s4, 17
                  andi         t4, sp, 1013
                  srl          a2, s1, s8
                  blt          a5, ra, 107f
                  srl          t6, ra, s4
                  sltiu        a5, s0, 92
                  auipc        a7, 981971
                  bgeu         s2, s0, 102f
                  xor          t4, s10, t2
                  slti         a3, t5, 238
                  slti         a7, s8, 1625
                  xor          s3, a1, a2
102:              lui          zero, 462238
                  sra          s3, s10, ra
                  srai         t2, a0, 25
                  nop
                  addi         s5, tp, 184
107:              beq          t3, a2, 124f
                  or           ra, s2, s5
                  blt          tp, s7, 123f
                  lui          zero, 44347
                  auipc        s2, 323191
                  sltiu        t2, zero, -158
                  sub          a2, s0, a1
                  add          s11, t3, a7
                  or           a1, t1, s6
                  sltiu        ra, a4, 75
                  sltiu        t3, a7, 1005
                  beq          s6, s4, 136f
                  xor          sp, gp, s5
                  blt          a5, s3, 124f
                  srl          zero, s5, t4
                  andi         t0, sp, -669
123:              ori          a7, s11, -1749
124:              bltu         s4, a2, 141f
                  sll          s4, a6, a3
                  or           a0, t4, t1
                  blt          s9, s5, 133f
                  srli         tp, zero, 2
                  srli         t5, s10, 16
                  bgeu         a3, a0, 145f
                  slli         a3, a1, 17
                  lui          t6, 238807
133:              slt          s5, t2, s2
                  bltu         s1, t2, 136f
                  sltu         s1, s0, s8
136:              slti         t6, a0, 1054
                  blt          t2, sp, 156f
                  bge          s4, t6, 147f
                  bge          s5, a7, 142f
                  xor          t2, t4, a0
141:              addi         gp, t5, 1663
142:              andi         s2, sp, 1076
                  bltu         s1, s7, 148f
                  bgeu         s1, s3, 146f
145:              srai         a1, t6, 17
146:              beq          s11, s4, 155f
147:              ori          a6, a1, -735
148:              bge          s4, t4, 163f
                  auipc        s10, 863009
                  bltu         a6, t4, 152f
                  sub          t6, s0, s3
152:              xori         s6, s2, -461
                  bge          a3, s0, 171f
                  srli         t3, sp, 7
155:              slt          a1, s2, s5
156:              bne          s0, s7, 162f
                  auipc        a1, 363182
                  sra          s5, t1, t6
                  lui          t0, 983370
                  or           t5, a0, s4
                  lui          a6, 186931
162:              bgeu         tp, s2, 179f
163:              slt          t6, s9, t0
                  srli         tp, t5, 30
                  srai         t2, t2, 13
                  addi         s9, a6, 946
                  add          s3, s5, t1
                  blt          t5, tp, 182f
                  bne          a1, t3, 185f
                  sltu         t3, s9, s3
171:              bne          s11, s4, 175f
                  sra          s11, ra, s1
                  bltu         t5, t2, 187f
                  addi         s3, s4, -1551
175:              add          t6, s9, s6
                  bltu         a0, s4, 189f
                  xor          t6, a2, a1
                  srli         sp, a5, 30
179:              slt          a7, t0, t0
                  andi         a0, sp, 1642
                  slt          t0, t0, gp
182:              ori          s11, t1, 548
                  blt          zero, zero, 202f
                  sub          zero, s0, s5
185:              addi         s3, s11, 657
                  srl          ra, s6, a6
187:              srl          t3, tp, t3
                  slli         t6, t0, 23
189:              sra          a6, a1, s8
                  bgeu         gp, s5, 199f
                  srai         t3, sp, 7
                  slt          s6, s10, a1
                  andi         s9, a4, 1676
                  sltiu        t3, s9, 1157
                  lui          t6, 532920
                  bge          s8, t3, 211f
                  beq          s3, t2, 217f
                  add          s6, zero, a3
199:              ori          s2, t0, -583
                  add          t0, tp, t5
                  slt          s10, a1, s11
202:              srai         t6, a5, 31
                  sll          tp, t2, sp
                  srai         t5, s11, 2
                  bne          t3, s0, 219f
                  sltiu        s2, a2, -1464
                  and          s10, a0, s3
                  nop
                  xor          t0, t5, a5
                  xori         t4, a1, 1752
211:              add          a1, s2, a1
                  srai         a2, a2, 18
                  bgeu         s5, s5, 223f
                  blt          s3, t3, 220f
                  sll          a2, sp, gp
                  sltiu        a2, a5, -249
217:              srli         t6, tp, 29
                  sltiu        s11, s8, -1810
219:              slli         t6, s7, 9
220:              srli         t6, ra, 3
                  sll          tp, s6, s2
                  bltu         a5, a3, 229f
223:              srli         tp, s7, 11
                  sll          s11, s11, sp
                  xori         s2, s7, -369
                  or           a0, s1, t5
                  or           tp, s8, a1
                  sltiu        s3, tp, -1641
229:              addi         a7, s7, 409
                  bne          zero, a1, 247f
                  and          ra, s7, tp
                  bltu         a2, a2, 251f
                  lui          s11, 88369
                  srli         s11, s2, 26
                  bne          gp, s4, 247f
                  xori         a6, ra, -386
                  slt          t6, t4, zero
                  xor          a0, t5, a2
                  sltu         s0, s0, t5
                  slt          t4, s6, s5
                  blt          s4, s10, 255f
                  ori          a3, ra, -1015
                  andi         s5, a6, 582
                  slt          tp, a3, sp
                  and          s1, tp, s10
                  lui          s4, 933319
247:              sll          t3, sp, s7
                  beq          t6, a3, 258f
                  blt          s8, s5, 268f
                  bge          t3, s5, 266f
251:              bgeu         t2, a7, 257f
                  add          s2, s7, gp
                  sub          sp, s11, a4
                  nop
255:              sub          t2, t0, s10
                  or           s0, a6, s6
257:              slti         t6, s11, -1516
258:              or           a3, tp, a3
                  sra          t3, s2, t1
                  sra          a0, t6, gp
                  or           t3, a3, a1
                  sub          s6, a7, s8
                  slli         tp, a7, 3
                  srl          s4, s2, a0
                  bne          s11, t6, 284f
266:              sltiu        ra, s9, 922
                  bne          a1, s0, 281f
268:              slt          a6, t5, a2
                  sltiu        a0, sp, -1485
                  xori         s11, s0, -838
                  bgeu         s5, s4, 278f
                  bltu         s11, s5, 285f
                  sll          s11, a0, s7
                  ori          a7, s10, 1953
                  srli         s5, t5, 8
                  sra          t4, a5, gp
                  slli         gp, t2, 17
278:              nop
                  srli         sp, s3, 27
                  sll          a5, sp, a4
281:              addi         s2, t4, -752
                  sll          a2, a6, ra
                  srl          s4, a2, s5
284:              bge          s2, s11, 293f
285:              beq          s1, t2, 295f
                  bltu         a3, t0, 300f
                  add          s5, s2, t1
                  sll          zero, s2, a7
                  bge          t6, t6, 294f
                  bgeu         t0, a3, 300f
                  blt          a7, t3, 308f
                  srl          a0, a0, s1
293:              bgeu         a0, s2, 295f
294:              or           s11, a3, ra
295:              ori          a3, a1, -1021
                  slt          s9, s9, s3
                  addi         a7, s3, 1459
                  sltiu        s6, s11, 491
                  bgeu         s8, a3, 302f
300:              add          s11, ra, s4
                  ori          s6, s5, -1316
302:              auipc        a7, 20534
                  bltu         s9, s5, 317f
                  xor          a3, s2, ra
                  auipc        s1, 874222
                  slt          a6, a7, t3
                  addi         s5, t4, 353
308:              add          t6, s4, a6
                  beq          s5, s1, 328f
                  srai         s0, s6, 13
                  lui          s5, 997508
                  ori          s1, ra, -1221
                  auipc        s10, 282108
                  slti         s4, ra, -370
                  slli         s10, gp, 25
                  lui          s4, 77001
317:              bne          a4, sp, 331f
                  blt          s4, tp, 334f
                  addi         s0, tp, -1723
                  slti         t3, s2, -115
                  nop
                  lui          a0, 393230
                  add          s3, tp, t1
                  sub          t3, s10, a4
                  bge          t1, s5, 340f
                  sltu         s2, tp, s6
                  sra          s0, a7, t4
328:              add          a0, gp, s5
                  and          t1, s8, ra
                  xor          a6, s9, s3
331:              nop
                  blt          t3, gp, 334f
                  slt          s11, s5, zero
334:              beq          tp, tp, 340f
                  slt          t4, tp, t0
                  blt          t4, s4, 352f
                  srli         t0, s8, 26
                  bge          tp, t4, 344f
                  slti         t5, tp, -1709
340:              auipc        s6, 1044704
                  nop
                  add          ra, s4, s8
                  sltiu        s4, s11, -1323
344:              ori          gp, t0, -1159
                  sra          t6, s9, s7
                  sra          t3, s7, s2
                  sll          a1, sp, s10
                  lui          s11, 125184
                  beq          a6, a3, 358f
                  lui          a6, 859175
                  andi         s5, ra, -1882
352:              auipc        a7, 493620
                  slti         s6, s11, 727
                  srl          t2, s11, s6
                  auipc        s1, 610910
                  add          t6, gp, a1
                  and          s5, s3, s11
358:              blt          s10, t3, 373f
                  srai         s9, t4, 31
                  xori         s0, t5, 1165
                  auipc        a2, 548121
                  beq          s6, a1, 382f
                  xor          s4, tp, s0
                  and          t0, tp, t5
                  auipc        a0, 865073
                  srli         gp, s10, 28
                  blt          t6, t4, 379f
                  srl          a1, a0, a5
                  sltiu        t1, s7, 57
                  sll          t4, s7, a5
                  slt          a0, s11, t4
                  bne          s3, s0, 376f
373:              slti         t1, t5, -1240
                  add          a2, s8, a7
                  slt          a1, a0, s8
376:              slt          s1, a4, s6
                  bne          t0, a7, 395f
                  sra          s9, s11, s3
379:              beq          s11, a7, 396f
                  xori         s3, a7, -739
                  srli         t4, s2, 13
382:              nop
                  sll          s3, t1, a1
                  slt          ra, s10, a1
                  sltu         t0, s10, s6
                  srl          zero, a3, a7
                  ori          tp, s7, 1099
                  slt          t4, t0, s8
                  srli         a3, t6, 27
                  nop
                  srl          s2, a5, s7
                  bne          a2, s11, 398f
                  bgeu         a3, t1, 412f
                  or           a2, a6, a1
395:              bne          a3, t4, 411f
396:              xor          a6, t4, a7
                  sra          s2, s7, s6
398:              xori         a7, s2, 623
                  xori         a6, tp, 778
                  or           sp, s4, s5
                  slt          s0, s3, s9
                  xor          s1, s3, ra
                  add          s11, gp, s4
                  bltu         a3, a2, 418f
                  sltiu        t1, s7, -528
                  bne          s10, t2, 412f
                  bne          s10, sp, 425f
                  srli         ra, s5, 25
                  slti         t0, t3, -97
                  sltiu        a6, zero, 1231
411:              or           s9, s4, ra
412:              bgeu         t2, tp, 425f
                  sll          s4, t4, t1
                  addi         a0, a7, -1752
                  srli         s3, s3, 1
                  bltu         a0, a3, 435f
                  srli         sp, t1, 23
418:              bge          t0, sp, 433f
                  and          s6, a2, s1
                  xor          s2, a0, s0
                  srai         t2, s6, 22
                  slli         t1, a5, 28
                  srli         t1, a7, 14
                  addi         gp, zero, -1854
425:              beq          s5, a6, 444f
                  and          a6, t2, s8
                  or           a7, t4, t5
                  nop
                  srai         zero, t0, 23
                  bne          ra, t5, 440f
                  sra          t6, a7, t4
                  slli         a3, s6, 5
433:              ori          a3, s5, -1364
                  sra          s3, s3, t6
435:              slli         t1, s7, 5
                  add          a2, t0, gp
                  or           t0, a0, a3
                  add          t5, s4, a6
                  bltu         s9, a3, 449f
440:              bge          a6, s10, 454f
                  auipc        t2, 243219
                  lui          s10, 844998
                  srli         tp, ra, 29
444:              bne          s5, a7, 453f
                  auipc        s2, 519486
                  xori         t6, s3, 1533
                  bge          a6, a0, 452f
                  slti         s11, s9, 900
449:              slli         t1, a7, 24
                  andi         t0, a4, 682
                  nop
452:              nop
453:              and          sp, t5, s0
454:              sll          s11, s0, tp
                  and          s5, a3, tp
                  andi         t3, t1, 1725
                  auipc        t3, 926595
                  slli         a3, a6, 8
                  ori          t4, t2, 2006
                  lui          a3, 394694
                  addi         a2, zero, -1739
                  sltiu        s11, s10, 1190
                  bne          s9, ra, 480f
                  lui          t2, 91671
                  nop
                  slli         a5, a0, 20
                  slli         s9, ra, 11
                  bne          s11, a1, 487f
                  lui          sp, 713558
                  lui          t2, 459261
                  add          s0, gp, s7
                  andi         a1, t4, -1870
                  srl          s6, sp, t5
                  xor          s2, s4, ra
                  beq          gp, t2, 477f
                  slti         s1, s3, 961
477:              sltu         ra, t0, s6
                  sltu         gp, s0, s8
                  or           a0, tp, a7
480:              and          s2, s7, t3
                  sll          s1, a1, s7
                  xor          zero, sp, t6
                  blt          t4, s9, 487f
                  bgeu         a5, a1, 493f
                  auipc        a2, 480088
                  beq          s9, s0, 493f
487:              bge          a5, t1, 504f
                  bge          gp, s1, 508f
                  sub          a5, a0, t3
                  xori         gp, t4, 1866
                  srli         t2, s11, 6
                  sra          t4, a5, s6
493:              add          s3, s1, s9
                  slti         gp, s8, -1929
                  bne          s0, t2, 498f
                  srli         a2, a7, 18
                  and          s10, s10, a2
498:              sub          t3, tp, s8
                  bgeu         s4, s0, 511f
                  sltiu        t2, a7, 238
                  slli         a6, a6, 3
                  auipc        s9, 370830
                  sltiu        s4, a6, 1695
504:              slti         s3, a7, -1556
                  or           a3, s9, s11
                  sub          s6, s9, a6
                  sltu         s0, s3, s4
508:              xori         t0, tp, 734
                  andi         a5, a3, -1122
                  nop
511:              sltu         t2, t0, a4
                  and          a1, gp, a6
                  sltu         t1, s11, s7
                  add          t3, a2, s3
                  srai         t4, t3, 14
                  add          a5, s6, a7
                  ori          t2, t2, 548
                  andi         a7, t1, 1763
                  ori          t2, s8, 1698
                  bge          a5, s5, 526f
                  xori         zero, gp, -453
                  addi         a6, s2, 998
                  or           s11, s1, gp
                  blt          s4, s10, 540f
                  or           a7, gp, s5
526:              sltiu        s5, s6, 1993
                  bge          a4, s2, 533f
                  slti         t3, a2, 1229
                  addi         a3, zero, -5 #init loop 0 counter
                  auipc        a6, 52581
                  or           a1, s2, t1
                  srl          a0, s0, s9
                  addi         s1, zero, -17 #init loop 0 limit
                  slt          s0, ra, s4
                  srai         s11, a4, 16
                  srli         tp, a5, 17
sub_2_10_0_t:     xor          t5, s5, t4
                  addi         a0, s6, -1418
                  addi         a3, a3, -6 #update loop 0 counter
                  slt          s6, t0, tp
                  xori         t2, a7, -93
                  and          s0, zero, gp
                  add          tp, sp, s7
                  sra          s0, a4, tp
                  auipc        t3, 145857
                  addi         s10, a6, -1685
                  bge          a3, s1, sub_2_10_0_t #branch for loop 0
                  slli         s11, s4, 1
                  sltu         t1, t5, t4
                  slti         s10, t5, -1651
                  srai         ra, t0, 20
                  sll          ra, t1, s4
533:              sra          s4, a6, s6
                  xor          s3, tp, t1
                  sll          a6, s2, a6
                  blt          a7, a4, 550f
                  bltu         t4, t6, 551f
                  blt          s6, zero, 540f
                  andi         s3, ra, -1791
540:              addi         t2, a4, -1869
                  add          s1, s3, ra
                  bgeu         t3, s5, 557f
                  sra          t6, a4, s9
                  slt          s11, t5, tp
                  bne          t0, a6, 552f
                  sltu         t4, a0, a6
                  andi         t4, t1, -471
                  nop
                  auipc        s1, 601149
550:              and          a6, s5, s8
551:              bge          s10, a4, 567f
552:              bne          a5, gp, 571f
                  beq          s2, a6, 563f
                  andi         s2, a3, -1246
                  bltu         a1, s10, 570f
                  nop
557:              xor          a1, s6, s10
                  ori          s4, t6, 1898
                  srai         a0, gp, 8
                  lui          s3, 300953
                  sub          a2, t3, s10
                  beq          zero, a0, 568f
563:              slli         a0, ra, 26
                  sltiu        s4, t0, 233
                  blt          s11, a7, 579f
                  auipc        t2, 797462
567:              slt          a6, t4, s0
568:              bgeu         a6, t3, 583f
                  bgeu         a2, tp, 583f
570:              ori          t3, t3, 423
571:              xor          s11, s8, a6
                  auipc        s6, 1048151
                  bltu         s10, s6, 586f
                  bge          a7, s11, 590f
                  srl          a7, a7, a2
                  and          t0, a2, s6
                  blt          s7, sp, 596f
                  xor          t5, s8, t1
579:              slt          t3, a5, s7
                  srai         s11, s8, 16
                  bne          zero, s3, 600f
                  and          tp, zero, sp
583:              nop
                  or           s11, a7, a4
                  srai         a2, t5, 6
586:              lui          a1, 392908
                  add          t6, s11, t1
                  sra          s11, s8, sp
                  slli         s9, s0, 30
590:              srli         t1, sp, 24
                  slli         s6, s9, 30
                  add          s9, a7, a7
                  addi         ra, s1, 65
                  xor          ra, a5, s4
                  srli         s11, t6, 24
596:              andi         t1, sp, -766
                  xor          a1, s11, tp
                  ori          s5, s9, -1652
                  addi         gp, t2, 33
600:              andi         zero, a5, 1949
                  sub          s2, ra, a4
                  bne          s4, gp, 616f
                  sll          a5, a7, a0
                  ori          t6, s4, 957
                  sltu         a3, t6, s8
                  xori         s2, s6, 1692
                  blt          s5, s9, 611f
                  and          sp, a7, s2
                  sltiu        s3, a0, 160
                  sltiu        t4, s5, 1491
611:              sra          t6, s11, t2
                  sll          t3, s0, s6
                  auipc        t3, 864504
                  sub          s9, t1, a2
                  sra          a2, t2, zero
616:              sll          a5, s11, s2
                  xori         t5, s3, -1568
                  srai         t1, a6, 27
                  sltu         t3, zero, t1
                  sub          a0, s7, a7
                  slt          t0, s3, a6
                  slt          s4, s2, s4
                  sll          s10, a4, t0
                  blt          s5, s5, 630f
                  addi         s4, t1, -1417
                  andi         gp, s8, -1692
                  addi         s3, s2, 210
                  bgeu         s6, a1, 638f
                  nop
630:              addi         s10, s4, -660
                  nop
                  bgeu         s4, s9, 650f
                  or           a0, sp, t2
                  srai         t2, a3, 30
                  sltiu        s4, t5, -556
                  sltu         t1, ra, a0
                  and          tp, t6, t5
638:              andi         s5, s8, -1259
                  ori          a0, a6, 236
                  beq          t3, a1, 652f
                  srai         gp, t4, 19
                  or           t4, s0, s6
                  and          t4, gp, s10
                  or           t6, a2, s8
                  bltu         zero, s8, 665f
                  andi         s1, s11, 1526
                  slt          a3, a4, s8
                  xori         t2, t2, -1642
                  nop
650:              sltiu        s11, s11, 1497
                  addi         s9, s9, 2002
652:              ori          s11, a7, 1089
                  sll          s6, t1, a1
                  slli         s3, s4, 6
                  xori         a1, s0, -1367
                  sll          a6, s4, a2
                  addi         s3, a4, -472
                  add          s9, a6, gp
                  slli         s11, s10, 16
                  bge          a4, t6, 666f
                  sltu         t0, s3, s1
                  bne          ra, s0, 667f
                  bne          s0, s3, 668f
                  beq          a0, t3, 668f
665:              ori          tp, a7, -1944
666:              xor          t5, t1, s6
667:              bltu         t4, a2, 668f
668:              srl          tp, s7, a3
                  sll          t2, a3, s3
                  lw           ra, 4(s7)
                  addi         s7, s7, 40
                  sll          a5, s11, a2
                  sub          s5, s3, tp
935:              addi x22, x1, 1
935:              jalr x22, x22, 0
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x24, x23, zero
                  csrr x28, 0x300 # MSTATUS
                  csrr x28, 0x342 # MCAUSE
                  srli x28, x28, 31
                  bne x28, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x28, 0x341 # MEPC
                  csrr x28, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x28, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x28, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x28, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x28, x16, ecall_handler
                  li x16, 0x1
                  beq x28, x16, instr_fault_handler
                  li x16, 0x5
                  beq x28, x16, load_fault_handler
                  li x16, 0x7
                  beq x28, x16, store_fault_handler
                  li x16, 0xc
                  beq x28, x16, pt_fault_handler
                  li x16, 0xd
                  beq x28, x16, pt_fault_handler
                  li x16, 0xf
                  beq x28, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x28, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x14, test_done
                  jalr x1, x14, 0

ecall_handler:    
                  la x28, _start
                  sw x0, 0(x28)
                  sw x1, 4(x28)
                  sw x2, 8(x28)
                  sw x3, 12(x28)
                  sw x4, 16(x28)
                  sw x5, 20(x28)
                  sw x6, 24(x28)
                  sw x7, 28(x28)
                  sw x8, 32(x28)
                  sw x9, 36(x28)
                  sw x10, 40(x28)
                  sw x11, 44(x28)
                  sw x12, 48(x28)
                  sw x13, 52(x28)
                  sw x14, 56(x28)
                  sw x15, 60(x28)
                  sw x16, 64(x28)
                  sw x17, 68(x28)
                  sw x18, 72(x28)
                  sw x19, 76(x28)
                  sw x20, 80(x28)
                  sw x21, 84(x28)
                  sw x22, 88(x28)
                  sw x23, 92(x28)
                  sw x24, 96(x28)
                  sw x25, 100(x28)
                  sw x26, 104(x28)
                  sw x27, 108(x28)
                  sw x28, 112(x28)
                  sw x29, 116(x28)
                  sw x30, 120(x28)
                  sw x31, 124(x28)
                  la x14, write_tohost
                  jalr x0, x14, 0

instr_fault_handler:
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x28, 0x341
                  addi  x28, x28, 4
                  csrw  0x341, x28
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x28, 0x300 # MSTATUS;
                  csrr  x28, 0x304 # MIE;
                  csrr  x28, 0x344 # MIP;
                  csrrc x28, 0x344, x28 # MIP;
                  add x23, x24, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
