.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 1
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xe1235d8
                  li x1, 0x2
                  li x2, 0x80000000
                  li x3, 0xff965eed
                  li x4, 0xfd35df8a
                  li x5, 0x80046f1d
                  li x6, 0x0
                  li x7, 0x736281b4
                  li x8, 0xf82dca78
                  li x9, 0xa
                  li x10, 0x80000000
                  li x11, 0x6
                  li x12, 0x0
                  li x14, 0x80000000
                  li x15, 0xc
                  li x16, 0xfee4cd1d
                  li x17, 0xf2a1b37d
                  li x18, 0x0
                  li x19, 0x4
                  li x20, 0xd
                  li x21, 0x8a6326d6
                  li x22, 0x0
                  li x24, 0x343c3b38
                  li x25, 0x2
                  li x26, 0x0
                  li x27, 0xd
                  li x28, 0xb
                  li x29, 0xfea4f57c
                  li x30, 0xfc043de4
                  li x31, 0x80000000
                  la x23, user_stack_end
main:             la           t2, sub_1
                  srai         t5, tp, 11
                  slt          a6, s10, t5
                  addi         t2, t2, -45
                  slti         gp, s10, -1736
                  xor          a1, s3, s2
                  bgeu         s5, t6, main_j2 #branch to jump instr
                  srl          s6, s2, gp
                  sll          s4, s4, t4
main_j2:          jalr         t1, t2, 45 #jump main -> sub_1
                  addi         a0, zero, -9 #init loop 0 counter
                  sltu         t1, a7, s1
                  slt          a4, s6, s7
                  andi         sp, s1, 1232
                  sub          a5, a5, s5
                  or           a5, t3, t2
                  slti         a2, a5, -663
                  andi         s2, a6, 82
                  addi         s9, zero, 17 #init loop 0 limit
                  slli         zero, t1, 19
                  ori          ra, a2, 2042
                  sltu         s2, a7, s1
                  sll          s2, a3, gp
main_0_0_t:       auipc        gp, 1042447
                  slli         a2, t1, 6
                  lui          s6, 650380
                  srli         a1, a0, 24
                  auipc        a7, 906151
                  srai         zero, t4, 5
                  addi         a0, a0, 5 #update loop 0 counter
                  and          t4, zero, a6
                  bltu         a0, s9, main_0_0_t #branch for loop 0
                  sltiu        s8, a2, -1031
                  blt          zero, sp, 8f
                  andi         t1, a1, -637
                  sltiu        s9, a1, -1461
                  or           s0, s0, t5
                  andi         a5, a3, 1788
                  sltu         s2, s9, t4
                  slti         s3, t6, -614
                  addi         a5, s6, 600
                  la           s3, sub_1
                  and          s1, a5, a3
                  addi         s3, s3, 279
                  slli         s1, s2, 26
                  andi         gp, tp, 486
                  slt          s2, tp, t3
main_j1:          jalr         t1, s3, -278 #jump main -> sub_1
                  bgeu         t0, a6, 8f
8:                xori         s2, s8, -1395
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            slti         a1, a3, -196
                  xori         s4, a2, 118
                  addi         s7, s7, -44
                  slti         t2, s10, -374
                  sw           t1, 4(s7)
                  slli         s11, a1, 10
                  sll          t3, s3, t4
                  sltiu        a7, s5, -167
                  nop
                  or           s4, a7, s6
                  xori         zero, s8, 1175
                  xori         a2, a0, -620
                  xor          s2, sp, sp
sub_1_j3:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  sub          t6, a6, a3
                  srai         s11, tp, 27
                  srli         a0, s8, 16
                  slt          s2, s9, zero
                  lui          s3, 337719
                  srl          t1, s10, s10
                  xori         s9, sp, 584
                  sub          s8, t4, tp
                  lui          ra, 519783
                  sll          t6, a3, s5
sub_1_j4:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  sltu         a7, s6, s10
                  ori          ra, s7, 772
                  or           s2, a4, zero
                  slli         s3, s10, 31
                  bge          t2, a5, sub_1_j5 #branch to jump instr
                  sub          t4, a6, gp
                  sltiu        a6, t3, 1168
                  ori          s5, s8, 776
sub_1_j5:         jal          t1, sub_5 #jump sub_1 -> sub_5
                  bltu         a5, t5, sub_1_j6 #branch to jump instr
                  xor          a0, s3, s7
                  add          t1, s9, s5
                  add          a4, t6, a2
                  xori         a6, s11, -389
                  sll          zero, s5, s6
                  and          a7, s7, s3
sub_1_j6:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  la           s1, sub_3
                  addi         s4, s1, 316
                  nop
                  addi         s1, s1, 634
                  bge          a0, t1, sub_1_j7 #branch to jump instr
                  slt          a5, s6, a1
                  addi         s11, t5, -490
                  ori          a1, a3, 984
                  addi         s8, s10, -28
sub_1_j7:         jalr         t1, s1, -633 #jump sub_1 -> sub_3
                  bge          s7, zero, 7f
                  sltiu        s9, s5, 788
                  slti         sp, tp, 939
                  slt          a6, t0, a6
                  bge          a1, a3, 23f
                  blt          t4, s11, 18f
                  slli         a1, zero, 8
7:                lui          t1, 316153
                  nop
                  and          t6, s3, s8
                  slli         t5, tp, 30
                  sltu         s4, a0, s11
                  nop
                  xor          a6, zero, s2
                  sltiu        a0, s8, 1029
                  srl          t5, s6, a2
                  bgeu         s5, a0, 32f
                  bgeu         a5, s2, 18f
18:               srl          tp, a4, t5
                  or           s3, t5, s6
                  xori         s4, a6, 138
                  blt          s9, a4, 26f
                  sra          t2, s3, t3
23:               slt          a7, zero, gp
                  andi         a6, s11, 764
                  sra          a2, s0, a7
26:               sltu         s8, a2, a4
                  slt          s8, a5, t1
                  bltu         t6, s4, 31f
                  sltiu        a5, s3, -807
                  auipc        t1, 240389
31:               bgeu         t4, s11, 39f
32:               lui          s2, 621080
                  sltu         a5, a5, zero
                  xori         a0, s8, -701
                  bge          a7, s5, 39f
                  slli         t6, s6, 18
                  sra          s8, s6, s6
                  sltu         tp, t5, s11
39:               sub          s2, tp, t4
                  ori          a4, s6, -292
                  srai         a2, s6, 15
                  xor          t5, t4, s3
                  lw           t1, 4(s7)
                  ori          t2, t3, 1588
                  addi         s7, s7, 44
                  slli         t5, s11, 2
                  or           a5, s8, s5
                  xori         s5, s7, 391
101:              addi x18, x6, 0
101:              jalr x18, x18, 0
sub_4:            addi         s7, s7, -24
                  auipc        t2, 168710
                  sw           t1, 4(s7)
                  slli         s0, a6, 28
                  slti         t2, s2, 1962
                  blt          s4, s4, 18f
                  bgeu         s5, a3, 11f
                  beq          s4, a4, 14f
                  slt          a0, s8, a1
                  slli         t1, tp, 30
                  bge          s8, s0, 7f
                  auipc        s0, 387018
7:                bne          s6, t4, 22f
                  sltu         sp, a4, s5
                  add          s11, a1, s5
                  sltu         s9, s9, a4
11:               bne          s4, s10, 25f
                  slti         s4, tp, -1520
                  ori          sp, a6, -385
14:               xori         s11, s0, -1835
                  lui          a7, 735075
                  sltiu        s8, t2, 1421
                  sltu         sp, sp, a2
18:               ori          s11, s0, -237
                  sub          a1, s3, a2
                  nop
                  ori          s8, s3, 885
22:               slt          s3, a0, gp
                  sra          a6, sp, t2
                  sub          t5, a0, t5
25:               or           a7, a4, t0
                  sra          sp, a6, a0
                  auipc        s5, 467277
                  sltiu        s3, s11, 523
                  sub          a6, a6, t2
                  lui          zero, 661426
                  lw           t1, 4(s7)
                  addi         s7, s7, 24
                  sub          t4, s6, s9
                  srli         t5, s1, 7
                  or           a0, s0, a1
41:               addi x21, x6, 0
41:               jalr x21, x21, 0
sub_5:            addi         s7, s7, -48
                  sub          t0, a2, a2
                  sw           t1, 4(s7)
                  slt          s6, zero, t4
                  srli         t3, t1, 18
                  slt          zero, gp, s5
                  add          s2, s7, t1
                  sltu         zero, s1, s7
                  addi         t2, zero, -10 #init loop 1 counter
                  sltu         t4, a3, s4
                  srl          s5, s1, s5
                  sll          s6, s6, s9
                  sra          t5, s10, gp
                  sll          t3, t0, s1
                  addi         t0, zero, 5 #init loop 1 limit
                  add          a7, s5, zero
                  xori         a4, ra, 1525
sub_5_4_1_t:      sltiu        s6, s0, -1433
                  sub          zero, s1, s10
                  srli         t1, s11, 27
                  addi         t2, t2, 6 #update loop 1 counter
                  addi         a5, zero, 2 #init loop 0 counter
                  xor          t5, s0, a3
                  addi         sp, zero, 12 #init loop 0 limit
                  ori          a2, s10, -565
                  sub          s4, s2, t6
                  lui          a2, 220428
sub_5_4_0_t:      addi         a6, t0, 335
                  addi         a5, a5, 8 #update loop 0 counter
                  auipc        s5, 189390
                  srli         t6, s2, 15
                  andi         gp, t0, 1275
                  blt          a5, sp, sub_5_4_0_t #branch for loop 0
                  addi         s0, s9, -1292
                  srli         t1, s10, 24
                  addi         s6, s5, 232
                  slti         a2, s9, 1590
                  xori         a2, t6, -684
                  lui          s3, 397573
                  blt          t2, t0, sub_5_4_1_t #branch for loop 1
                  slti         ra, s11, -1214
                  addi         a2, zero, -6 #init loop 0 counter
                  addi         s11, zero, 6 #init loop 0 limit
sub_5_8_0_t:      and          zero, a3, t6
                  addi         a2, a2, 5 #update loop 0 counter
                  srli         s5, s0, 1
                  bltu         a2, s11, sub_5_8_0_t #branch for loop 0
                  slli         zero, a0, 31
                  addi         sp, zero, 2 #init loop 1 counter
                  slli         t1, s8, 16
                  addi         t6, zero, -5 #init loop 1 limit
                  slt          a7, t0, t3
                  addi         a1, s1, -758
sub_5_3_1_t:      sub          tp, t0, gp
                  srli         a7, s2, 2
                  addi         sp, sp, -5 #update loop 1 counter
                  lui          s6, 648582
                  addi         s11, zero, 1 #init loop 0 counter
                  srai         a5, t4, 8
                  addi         t2, zero, -19 #init loop 0 limit
                  slli         t5, s1, 15
                  andi         a2, a5, 1198
                  or           s4, ra, s1
                  srl          tp, a3, s0
                  andi         a6, a1, -119
                  sub          s6, s2, s1
sub_5_3_0_t:      ori          s2, a4, 1916
                  sll          gp, a7, a4
                  addi         s11, s11, -10 #update loop 0 counter
                  and          s0, s7, sp
                  beq          s11, t2, sub_5_3_0_t #branch for loop 0
                  bge          sp, t6, sub_5_3_1_t #branch for loop 1
                  slti         a0, a1, 1301
                  addi         s5, zero, -1 #init loop 0 counter
                  sub          a6, a2, a1
                  srai         s0, s1, 0
                  sltiu        s6, s1, 1059
                  add          tp, t4, t1
                  addi         t0, zero, -15 #init loop 0 limit
                  sll          s0, a4, t5
                  sltu         sp, s10, a6
                  sltu         s6, a4, s9
                  and          t6, s0, s5
                  xori         zero, s2, -960
                  sltiu        a4, s7, -1752
sub_5_5_0_t:      slt          t4, s8, zero
                  sub          ra, a1, s3
                  sltiu        a2, s9, -570
                  sub          s9, a1, t2
                  lui          tp, 594042
                  ori          t2, s10, -1208
                  sll          sp, s7, sp
                  slti         s11, s0, 1554
                  slti         s0, s0, 1614
                  addi         s5, s5, -7 #update loop 0 counter
                  srai         tp, gp, 28
                  sub          t5, a4, ra
                  slli         s11, a6, 13
                  sll          t6, ra, s7
                  xor          s4, s4, a3
                  bne          s5, t0, sub_5_5_0_t #branch for loop 0
                  auipc        a7, 652591
                  addi         s6, zero, -7 #init loop 0 counter
                  sub          a0, t0, t1
                  and          t0, t0, s5
                  sltu         a5, tp, a6
                  addi         s1, zero, 3 #init loop 0 limit
                  addi         a7, s7, -1120
                  srl          a7, t0, a3
sub_5_6_0_t:      nop
                  xori         zero, tp, -708
                  sltiu        s11, s5, 1260
                  sltiu        s5, t4, -643
                  srl          t1, t6, ra
                  addi         s6, s6, 4 #update loop 0 counter
                  xori         a5, t3, -1822
                  andi         t3, a0, -63
                  slli         a0, s11, 18
                  addi         a6, a0, -383
                  nop
                  auipc        sp, 810173
                  sltiu        s5, ra, 250
                  slti         a6, a3, 1154
                  bltu         s6, s1, sub_5_6_0_t #branch for loop 0
                  nop
                  xor          s2, t5, t4
                  andi         s1, s7, 51
                  xori         s3, s0, -652
                  xori         s4, s5, 2043
                  sltu         a0, t1, a3
                  slti         s8, gp, 633
                  sltiu        s5, t2, -542
                  sra          s0, s11, t2
                  bgeu         s4, t1, 17f
                  and          s2, t4, a1
                  bge          s2, a4, 27f
                  srli         t3, s5, 9
                  or           a2, s6, a7
                  sll          ra, a0, s5
                  bltu         s11, t4, 18f
                  srli         t6, s9, 17
                  nop
17:               bge          t0, t3, 20f
18:               sll          a4, s5, a7
                  sll          s2, a0, sp
20:               srai         a0, s8, 26
                  bltu         sp, t4, 24f
                  srl          sp, a1, s3
                  sll          a5, s8, s0
24:               and          a1, t5, s5
                  slli         s0, a3, 8
                  lui          t6, 567206
                  addi         t4, zero, -4 #init loop 1 counter
                  addi         t3, zero, -20 #init loop 1 limit
sub_5_1_1_t:      add          s1, s3, s5
                  addi         t4, t4, -4 #update loop 1 counter
                  addi         s8, zero, 7 #init loop 0 counter
                  addi         s5, zero, 5 #init loop 0 limit
sub_5_1_0_t:      sltu         t5, t3, a2
                  addi         s8, s8, -4 #update loop 0 counter
                  bgeu         s8, s5, sub_5_1_0_t #branch for loop 0
                  bne          t4, t3, sub_5_1_1_t #branch for loop 1
                  nop
27:               sll          t0, sp, gp
                  bltu         s11, a5, 29f
29:               andi         a2, s9, -1045
                  beq          s3, t6, 48f
                  blt          a5, s8, 46f
                  and          a4, s1, s1
                  slt          tp, a5, t3
                  blt          s0, a3, 45f
                  sub          t1, ra, a1
                  sra          t2, s2, s11
                  slt          sp, s10, t4
                  bltu         ra, s11, 54f
                  slt          a5, s10, t1
                  addi         gp, a2, 1495
                  beq          ra, s6, 52f
                  slti         s4, t3, -374
                  slli         t3, t3, 24
                  sll          s0, s9, s11
45:               beq          gp, s11, 63f
46:               lui          gp, 852678
                  srl          s9, s8, s7
48:               srai         t1, s5, 26
                  slt          s6, s11, a2
                  srl          s8, a7, a6
                  slt          ra, tp, t1
52:               sltiu        t2, a5, -887
                  xor          s4, a0, a7
54:               sra          gp, s10, t5
                  bltu         a7, s6, 63f
                  addi         s3, a6, -1897
                  andi         s9, t3, -1205
                  andi         s5, s8, -1652
                  beq          s1, s8, 67f
                  nop
                  bltu         a5, a5, 77f
                  srli         t0, t5, 11
63:               srai         t3, s10, 30
                  sra          gp, s4, zero
                  sub          t6, a7, s2
                  sra          sp, s2, t4
67:               add          s4, s0, a6
                  bgeu         a2, s10, 84f
                  sra          a7, gp, s3
                  sltu         s3, s0, s10
                  beq          a7, a7, 87f
                  sra          a6, zero, t3
                  bltu         s3, t0, 80f
                  slli         s2, t4, 2
                  sub          a1, t1, t2
                  nop
77:               srli         t4, t6, 4
                  slti         gp, zero, 158
                  ori          tp, t4, 1986
80:               srai         t1, s2, 3
                  sra          sp, a3, s4
                  sltu         t3, a0, sp
                  sll          sp, s1, s4
84:               lui          a4, 305413
                  addi         a2, s11, 71
                  sll          s9, a4, a2
87:               sltu         s2, tp, tp
                  slt          sp, s2, zero
                  sub          a5, sp, t4
                  sltu         t6, a3, a3
                  add          t3, t4, s7
                  slti         zero, a7, 1023
                  slli         s2, t6, 31
                  xori         s2, a1, -742
                  sltiu        gp, t6, -93
                  slt          t6, s0, a3
                  sltiu        s3, t1, 1621
                  bltu         tp, s4, 109f
                  or           zero, t4, a5
                  slli         s8, t0, 31
                  bne          tp, s9, 109f
                  sra          a2, s3, t1
                  addi         t1, sp, 657
                  blt          gp, a0, 121f
                  srl          s4, s9, s0
                  srl          a5, s8, s3
                  sra          t4, t2, s9
                  srli         tp, s0, 22
109:              bne          s0, a7, 115f
                  slli         a2, t0, 6
                  sub          t5, ra, a3
                  sltiu        t4, a1, 505
                  nop
                  srai         t3, s8, 6
115:              srai         gp, t3, 9
                  slt          a4, s3, t0
                  andi         s0, s9, -2045
                  xori         s0, a5, 1643
                  bltu         a4, s6, 121f
                  srli         t1, t0, 26
121:              bltu         t6, sp, 134f
                  bltu         t3, s0, 131f
                  srli         s0, a5, 14
                  auipc        a4, 709483
                  auipc        zero, 689916
                  auipc        s6, 430180
                  sll          a6, s2, a6
                  and          a4, s7, s0
                  sub          s11, tp, s3
                  xori         a5, zero, 170
131:              srl          a4, s0, tp
                  xor          sp, tp, s1
                  blt          tp, t1, 136f
134:              lui          s11, 131581
                  sub          s3, s2, a4
136:              srli         s3, s4, 5
                  bge          s4, s2, 139f
                  srl          sp, s10, sp
139:              bne          s0, s3, 146f
                  slti         a7, s5, -1984
                  xori         s5, ra, -799
                  nop
                  andi         t6, s1, 1877
                  blt          t1, s0, 150f
                  beq          s0, s10, 165f
146:              bltu         s4, a4, 149f
                  ori          s0, sp, 539
                  slt          s8, t4, t0
149:              slt          s11, s1, s7
150:              srl          a2, t0, s6
                  slli         a4, t2, 23
                  slti         s0, t6, -329
                  ori          s2, a7, -1787
                  addi         zero, s7, -241
                  and          zero, s8, a5
                  slli         a7, a7, 26
                  nop
                  bne          s8, tp, 166f
                  blt          t5, s10, 176f
                  srli         s1, zero, 6
                  slt          s0, t6, a4
                  beq          s10, s5, 165f
                  andi         s4, s1, -1497
                  ori          a1, zero, 63
165:              blt          s1, tp, 167f
166:              auipc        t0, 900516
167:              or           s11, s2, s0
                  or           sp, tp, t2
                  srai         t4, s11, 0
                  slt          t1, s6, s3
                  auipc        zero, 201742
                  lui          zero, 612904
                  sra          s6, t3, s4
                  srli         ra, s5, 19
                  sll          s6, t0, s3
176:              andi         t0, a0, -1131
                  sra          ra, a4, a6
                  blt          s5, t4, 191f
                  auipc        s0, 54795
                  blt          s10, s6, 198f
                  slt          sp, a7, a3
                  sltu         s3, sp, s4
                  auipc        s11, 557866
                  bltu         sp, t2, 202f
                  bne          t4, a2, 196f
                  beq          s1, a3, 194f
                  and          t5, s2, t1
                  bge          s2, t3, 199f
                  add          tp, zero, s3
                  bge          s10, s11, 199f
191:              bgeu         t6, t0, 206f
                  bltu         gp, t3, 194f
                  slli         s11, s8, 14
194:              sub          s3, a1, tp
                  sltiu        t0, a2, 920
196:              bgeu         s9, s11, 200f
                  or           sp, s3, ra
198:              blt          t1, t2, 207f
199:              sltiu        s11, zero, 1592
200:              slt          zero, s0, s6
                  slli         sp, s7, 22
202:              blt          s7, a5, 218f
                  xori         sp, t5, -1176
                  xori         gp, a1, -1974
                  sub          s2, s3, s5
206:              addi         s3, s5, -53
207:              sltiu        s3, s3, 1269
                  sub          s4, a7, s11
                  bne          s5, s6, 226f
                  and          t0, t5, s3
                  bgeu         a2, zero, 217f
                  srl          gp, s1, t2
                  sltiu        sp, s6, 782
                  blt          a0, s8, 230f
                  sub          t2, t0, s0
                  bltu         tp, s0, 232f
217:              sltu         t5, a3, t4
218:              slli         a4, tp, 11
                  bltu         a3, zero, 226f
                  addi         tp, a1, 1098
                  or           gp, t6, t1
                  and          a4, t2, s5
                  xori         t1, tp, 1311
                  beq          a5, a7, 232f
                  andi         s2, a1, 73
226:              srli         t0, s1, 7
                  ori          s9, ra, 510
                  bgeu         a3, ra, 229f
229:              blt          a4, t5, 249f
230:              slt          t5, a6, s10
                  bltu         s11, s4, 238f
232:              bgeu         zero, s11, 235f
                  or           s0, s2, a1
                  bgeu         s0, t6, 245f
235:              beq          s6, t0, 251f
                  andi         a0, s2, -1833
                  or           s11, a1, s8
238:              bltu         tp, t4, 244f
                  beq          s0, gp, 256f
                  ori          s6, a3, -476
                  slt          s8, s8, s4
                  addi         t0, s0, -616
                  ori          s3, s1, -465
244:              bge          a4, a6, 253f
245:              bltu         s9, t1, 254f
                  bge          a1, s1, 257f
                  addi         s4, s2, -1698
                  andi         a1, t3, -303
249:              sub          t6, a7, t1
                  ori          s0, ra, 1431
251:              srl          ra, s0, gp
                  bge          tp, t0, 269f
253:              sub          zero, s10, s2
254:              blt          t4, s11, 272f
                  xor          gp, t2, s5
256:              nop
257:              and          a0, s10, a3
                  bge          s7, s4, 276f
                  ori          t5, a6, 13
                  nop
                  srli         gp, s7, 6
                  sub          zero, s3, t2
                  srl          s5, a2, t4
                  beq          s0, tp, 267f
                  andi         t2, a5, 916
                  bgeu         tp, s3, 282f
267:              andi         t4, a0, 46
                  srli         sp, s6, 9
269:              bge          t5, s7, 285f
                  auipc        t0, 826600
                  srl          a2, t3, t5
272:              slt          t0, s1, s1
                  sub          a4, ra, a6
                  xor          a6, s8, s5
                  bgeu         a5, t5, 295f
276:              lui          t5, 238346
                  slli         s5, a1, 14
                  sltu         a6, s2, t4
                  andi         s6, a0, -339
                  bge          a3, a2, 282f
                  bne          s11, t2, 284f
282:              bne          s3, s9, 290f
                  addi         a4, tp, 1667
284:              auipc        t5, 93055
285:              bgeu         s2, gp, 296f
                  sll          t1, s7, s8
                  add          a7, zero, zero
                  blt          a1, t0, 303f
                  sub          a1, a0, a5
290:              add          s4, s9, ra
                  or           zero, s9, a0
                  bne          s8, s6, 305f
                  slli         s11, a1, 5
                  add          a6, t6, s1
295:              and          a4, s10, s11
296:              bgeu         zero, s1, 297f
297:              beq          tp, a1, 303f
                  xori         s5, t0, -1648
                  addi         zero, s3, -188
                  srai         a6, a0, 30
                  slt          s2, s0, a5
                  ori          sp, s10, 947
303:              auipc        tp, 691151
                  nop
305:              bge          tp, t2, 308f
                  bltu         a0, a6, 322f
                  sltiu        s8, s1, 850
308:              ori          a6, s7, -1903
                  and          t5, s8, ra
                  bne          zero, s10, 326f
                  slli         s9, s7, 30
                  slti         sp, a6, 1557
                  and          a7, s10, s10
                  blt          gp, s4, 321f
                  or           s6, s11, t3
                  sltiu        t4, a3, 395
                  srl          t6, a2, t5
                  sltu         gp, s1, s8
                  bge          gp, s9, 330f
                  bltu         a3, s7, 326f
321:              xor          a1, a4, s0
322:              andi         s9, a2, 104
                  bltu         s0, s0, 331f
                  slli         s3, s0, 11
                  sltu         a4, s1, t2
326:              bgeu         a7, a4, 328f
                  sltu         t0, s9, a6
328:              sra          s6, s11, a4
                  bge          a6, t3, 336f
330:              ori          t6, tp, -1090
331:              lui          a5, 480638
                  srl          sp, s0, zero
                  srli         t6, s2, 16
                  bgeu         a4, a5, 342f
                  lui          s5, 382267
336:              srai         gp, a0, 29
                  add          sp, a7, tp
                  bltu         s9, t0, 342f
                  and          s6, s5, t3
                  sll          tp, s4, a6
                  slt          t3, a7, s3
342:              andi         s0, a1, 853
                  lui          a5, 1003688
                  slli         s5, t5, 5
                  or           a6, sp, t5
                  sub          t3, a1, tp
                  addi         ra, t6, 1643
                  slt          s6, s4, s7
                  add          a0, s0, a7
                  and          s8, tp, a2
                  beq          a1, s11, 360f
                  sltu         s3, s9, t5
                  srli         s9, t3, 6
                  slli         t3, ra, 30
                  addi         s2, a6, -271
                  sltiu        a2, a5, 889
                  blt          s2, t1, 370f
                  srli         t2, s5, 18
                  srai         t3, a5, 16
360:              andi         s9, a6, 159
                  slt          t4, t0, s10
                  and          s6, a3, s11
                  andi         a5, t4, 1890
                  addi         s0, a6, 1463
                  slti         ra, a0, -565
                  sll          a4, t3, a1
                  bltu         a5, t4, 383f
                  lui          t2, 724060
                  addi         s9, s8, -1243
370:              and          a4, s11, s4
                  auipc        t5, 589851
                  sltu         s8, a1, s1
                  srli         gp, a4, 16
                  addi         t3, zero, 3 #init loop 0 counter
                  sltiu        s6, s10, 2025
                  sltiu        ra, a2, 1386
                  slli         s0, s10, 21
                  slt          t5, a1, a6
                  sltiu        a2, s1, -561
                  auipc        gp, 890655
                  addi         a4, zero, 9 #init loop 0 limit
                  sll          s4, s0, a4
sub_5_2_0_t:      sub          s11, s10, zero
                  addi         t3, t3, 3 #update loop 0 counter
                  lui          s4, 301225
                  lui          gp, 92278
                  blt          t3, a4, sub_5_2_0_t #branch for loop 0
                  srli         s5, s4, 20
                  sltiu        ra, a6, 1346
                  beq          s1, t2, 378f
                  xor          t1, t0, s3
                  beq          t6, s6, 379f
378:              srai         tp, s4, 0
379:              ori          t5, gp, -1502
                  addi         t4, zero, 7 #init loop 1 counter
                  sltiu        s6, a6, 1316
                  addi         s3, zero, 20 #init loop 1 limit
sub_5_0_1_t:      nop
                  addi         t4, t4, 7 #update loop 1 counter
                  srl          s2, t2, s11
                  addi         a4, zero, -1 #init loop 0 counter
                  addi         s11, zero, 8 #init loop 0 limit
sub_5_0_0_t:      nop
                  addi         a4, a4, 3 #update loop 0 counter
                  lui          a7, 684492
                  beq          a4, s11, sub_5_0_0_t #branch for loop 0
                  auipc        a7, 989785
                  add          t6, s4, gp
                  bltu         t4, s3, sub_5_0_1_t #branch for loop 1
                  sub          t0, a0, s10
                  bge          a4, s9, 388f
                  bltu         a7, sp, 398f
                  lui          a0, 853229
383:              xor          a7, s5, s11
                  sub          s11, s4, s10
                  srai         a0, s8, 29
                  xori         s4, s9, 364
                  xori         s1, s7, 1261
388:              sll          s6, s5, sp
                  slt          sp, zero, t4
                  slti         a7, s11, -1174
                  sltu         a5, a5, s10
                  sltu         a2, t0, s5
                  add          t5, t4, a7
                  and          s6, a6, s1
                  or           t5, gp, s2
                  addi         a5, s2, 1446
                  srli         tp, t2, 18
398:              sll          t4, gp, a7
                  srl          gp, s3, s2
                  srli         a2, gp, 13
                  srai         a0, s10, 26
                  xori         a0, t1, -1404
                  srl          a2, t0, a1
                  auipc        t4, 238009
                  sub          s8, s1, a5
                  bgeu         zero, gp, 410f
                  sub          t5, t6, t3
                  sra          sp, a1, s6
                  auipc        a5, 748550
410:              ori          a0, s0, -387
                  xori         t1, a2, 1159
                  sltu         s5, s1, a4
                  slli         gp, t6, 22
                  slt          s4, t3, tp
                  xor          zero, zero, tp
                  sra          a0, s10, t3
                  bltu         a6, s2, 426f
                  andi         ra, tp, -1166
                  ori          s0, s5, -1266
                  addi         a2, a0, 1298
                  sll          ra, s6, a1
                  ori          s8, t5, -1309
                  bne          s6, a3, 438f
                  auipc        s11, 873687
                  ori          t2, zero, -455
426:              srai         a2, s5, 15
                  bne          s8, t2, 438f
                  bge          a6, s7, 444f
                  or           a1, ra, a1
                  auipc        t6, 718517
                  srai         s2, a5, 11
                  srl          s8, a5, s10
                  sll          ra, s2, s11
                  nop
                  slt          s4, s10, s9
                  add          t6, a3, t5
                  bge          a0, s6, 457f
438:              xori         a2, s9, -1101
                  auipc        t4, 214945
                  ori          s3, s3, -1032
                  auipc        s3, 977603
                  or           s0, zero, s4
                  sltu         s9, a0, s2
444:              auipc        ra, 51319
                  xori         zero, a6, -1685
                  sub          a7, t6, a3
                  xori         s0, t5, -140
                  sra          tp, s4, ra
                  or           a5, a3, a3
                  srai         s0, t4, 20
                  andi         t1, s1, 59
                  xor          s8, a7, ra
                  xor          s9, a0, s3
                  sll          s4, s10, zero
                  and          a6, t6, s5
                  addi         t3, a3, -1188
457:              bne          t2, a5, 463f
                  sltu         t4, s10, s6
                  auipc        t3, 895030
                  lui          s5, 957839
                  bgeu         t2, s2, 469f
                  ori          t3, t6, 1794
                  addi         s2, zero, 10 #init loop 1 counter
                  addi         s0, zero, 10 #init loop 1 limit
sub_5_7_1_t:      nop
                  addi         s2, s2, -9 #update loop 1 counter
                  add          tp, s4, a0
                  addi         a1, zero, 9 #init loop 0 counter
                  sll          s8, t3, sp
                  addi         ra, zero, 9 #init loop 0 limit
sub_5_7_0_t:      ori          s6, s2, 1596
                  addi         a1, a1, -8 #update loop 0 counter
                  bgeu         a1, ra, sub_5_7_0_t #branch for loop 0
                  sltiu        t2, t4, -1612
                  bgeu         s2, s0, sub_5_7_1_t #branch for loop 1
                  xor          s6, sp, s8
463:              beq          a4, s11, 469f
                  sub          s11, s8, t2
                  auipc        t0, 552959
                  beq          t3, t1, 469f
                  srli         t0, s1, 0
                  ori          a0, s9, 1861
469:              sltiu        a4, s0, 743
                  and          s11, a6, t3
                  nop
                  xor          t0, s10, zero
                  lw           t1, 4(s7)
                  ori          t6, s11, 1552
                  and          a5, t6, t0
                  addi         s7, s7, 48
                  sll          s5, s1, s8
                  slt          s3, s9, t2
                  slli         s8, s9, 3
661:              addi x27, x6, 1
661:              jalr x27, x27, 0
sub_3:            beq          t4, a6, sub_3_stack_p
                  and          s8, s2, a7
                  sub          s2, s4, tp
                  auipc        s9, 594473
                  lui          t4, 91322
                  sll          a7, a2, s1
sub_3_stack_p:    addi         s7, s7, -24
                  sw           t1, 4(s7)
                  ori          sp, s4, -33
                  slt          a1, a5, t4
                  addi         s1, zero, -5 #init loop 1 counter
                  addi         a1, zero, 18 #init loop 1 limit
                  slti         s0, a0, -1143
sub_3_11_1_t:     ori          t5, sp, 1000
                  addi         s1, s1, 9 #update loop 1 counter
                  addi         tp, zero, 5 #init loop 0 counter
                  addi         sp, zero, 5 #init loop 0 limit
sub_3_11_0_t:     sltu         a0, t4, sp
                  addi         a5, a1, -1846
                  addi         tp, tp, -4 #update loop 0 counter
                  bgeu         tp, sp, sub_3_11_0_t #branch for loop 0
                  sll          t5, t0, s10
                  bltu         s1, a1, sub_3_11_1_t #branch for loop 1
                  srli         a7, zero, 6
                  addi         a2, zero, 4 #init loop 0 counter
                  slli         s11, s10, 22
                  lui          t6, 415439
                  add          s3, s10, s6
                  slti         tp, sp, -1930
                  nop
                  slt          tp, s8, a6
                  addi         t3, zero, 13 #init loop 0 limit
                  srl          s0, s4, zero
                  sra          a6, s7, ra
sub_3_8_0_t:      sub          t1, s8, t2
                  srl          a6, a7, sp
                  xori         t5, a6, 570
                  addi         a2, a2, 3 #update loop 0 counter
                  lui          s3, 499075
                  or           t5, a2, a7
                  lui          s4, 835817
                  add          t6, t0, zero
                  and          ra, a6, s2
                  lui          s3, 425824
                  auipc        ra, 289038
                  beq          a2, t3, sub_3_8_0_t #branch for loop 0
                  xor          tp, zero, t0
                  addi         a4, zero, -7 #init loop 0 counter
                  auipc        s5, 774612
                  addi         t5, a0, 2005
                  addi         ra, zero, -17 #init loop 0 limit
sub_3_4_0_t:      slt          s6, a0, s4
                  xori         s0, a5, -244
                  addi         a4, a4, -10 #update loop 0 counter
                  bge          a4, ra, sub_3_4_0_t #branch for loop 0
                  sltiu        s6, t4, 1249
                  addi         a4, zero, 6 #init loop 1 counter
                  xori         a1, s6, 698
                  sub          zero, a5, sp
                  sub          a2, a1, ra
                  sra          zero, t6, s9
                  addi         t0, s9, -1166
                  add          t1, s3, tp
                  sll          s6, t2, tp
                  addi         s2, zero, 15 #init loop 1 limit
                  sltiu        a7, s3, 1974
sub_3_12_1_t:     lui          t0, 356509
                  auipc        t4, 92180
                  addi         a4, a4, 1 #update loop 1 counter
                  addi         a5, zero, 6 #init loop 0 counter
                  slt          s6, t0, t5
                  sub          zero, t3, a3
                  addi         s3, zero, 2 #init loop 0 limit
                  sra          s0, s1, s10
sub_3_12_0_t:     slti         t3, a7, -1747
                  addi         a5, a5, -1 #update loop 0 counter
                  bgeu         a5, s3, sub_3_12_0_t #branch for loop 0
                  sltiu        t4, s5, -1776
                  sltiu        a2, s1, -1989
                  beq          a4, s2, sub_3_12_1_t #branch for loop 1
                  srl          s8, t2, s8
                  addi         a7, zero, 5 #init loop 1 counter
                  slli         a4, s7, 3
                  xor          a0, a1, a0
                  addi         s6, zero, 20 #init loop 1 limit
                  slli         a2, s8, 23
sub_3_9_1_t:      sub          s8, gp, t6
                  sra          t0, s8, t5
                  addi         t6, t1, -1334
                  lui          ra, 908670
                  slli         s3, zero, 11
                  srai         t6, a2, 23
                  sra          s3, s5, gp
                  andi         a2, a0, 486
                  add          t0, tp, s10
                  andi         zero, zero, -1378
                  addi         a7, a7, 5 #update loop 1 counter
                  addi         a6, zero, 2 #init loop 0 counter
                  sltu         s0, a6, sp
                  addi         sp, zero, -16 #init loop 0 limit
                  ori          tp, t1, -28
                  ori          a0, a1, 587
                  sub          t4, t5, s3
                  lui          s0, 1046072
sub_3_9_0_t:      sub          a0, sp, t4
                  addi         a6, a6, -6 #update loop 0 counter
                  xori         t5, a3, -913
                  bne          a6, sp, sub_3_9_0_t #branch for loop 0
                  or           t0, s10, s8
                  slli         s5, a5, 6
                  slti         zero, s5, 82
                  xori         a1, tp, 1076
                  srl          t6, s2, s9
                  sltu         s8, gp, a3
                  beq          a7, s6, sub_3_9_1_t #branch for loop 1
                  slli         t2, s7, 21
                  addi         a7, zero, 7 #init loop 0 counter
                  andi         s5, a5, 785
                  or           s9, sp, a5
                  addi         a5, zero, 16 #init loop 0 limit
sub_3_6_0_t:      sltu         s2, t3, a3
                  add          gp, a1, s6
                  sll          a1, a6, t2
                  addi         a7, a7, 2 #update loop 0 counter
                  xor          t2, a4, t3
                  xor          tp, s2, s10
                  srai         gp, t1, 10
                  blt          a7, a5, sub_3_6_0_t #branch for loop 0
                  andi         sp, s7, 1841
                  addi         s3, zero, -7 #init loop 1 counter
                  and          t1, zero, gp
                  sll          s6, a0, t5
                  addi         t6, zero, 19 #init loop 1 limit
                  sltu         a0, s5, a2
sub_3_5_1_t:      addi         t1, a1, 1204
                  auipc        sp, 560592
                  addi         s3, s3, 1 #update loop 1 counter
                  addi         s0, zero, -1 #init loop 0 counter
                  slt          a0, s4, a7
                  addi         s9, zero, 13 #init loop 0 limit
                  and          zero, s8, a5
                  sll          s6, s2, tp
sub_3_5_0_t:      xor          a6, t5, s7
                  addi         s0, s0, 1 #update loop 0 counter
                  andi         t0, s0, -888
                  blt          s0, s9, sub_3_5_0_t #branch for loop 0
                  bltu         s3, t6, sub_3_5_1_t #branch for loop 1
                  or           a7, s6, a4
                  addi         a6, zero, 9 #init loop 1 counter
                  xori         s4, s10, -270
                  xor          t5, t2, s3
                  addi         s9, zero, 20 #init loop 1 limit
                  and          t1, s8, a7
sub_3_1_1_t:      sltu         a2, t1, s11
                  addi         a6, a6, 1 #update loop 1 counter
                  sub          t6, t0, t4
                  srai         s6, t2, 16
                  slli         t5, tp, 11
                  addi         a7, zero, -10 #init loop 0 counter
                  slt          s3, tp, s10
                  addi         ra, zero, -15 #init loop 0 limit
sub_3_1_0_t:      andi         t2, s3, 1914
                  xori         t3, t5, -1448
                  sub          s3, a2, a1
                  sltu         s8, sp, t1
                  sltiu        s2, a0, 1197
                  addi         a7, a7, -5 #update loop 0 counter
                  xor          sp, sp, a1
                  or           tp, t6, a2
                  bge          a7, ra, sub_3_1_0_t #branch for loop 0
                  slt          t0, s1, t0
                  sll          t0, s7, s8
                  bltu         a6, s9, sub_3_1_1_t #branch for loop 1
                  slt          s6, a3, a2
                  addi         a0, zero, 9 #init loop 0 counter
                  sltiu        t1, s4, 1904
                  slli         tp, s7, 4
                  slt          s5, zero, s3
                  addi         sp, zero, 9 #init loop 0 limit
sub_3_7_0_t:      sub          t5, gp, t4
                  sra          t5, s1, a6
                  srli         s2, t6, 30
                  auipc        s3, 332490
                  addi         a0, a0, -7 #update loop 0 counter
                  slli         zero, t2, 19
                  xori         a1, s11, -1396
                  add          t4, a5, s6
                  sra          s3, s0, a4
                  sll          s2, t0, s8
                  or           a4, s4, t5
                  bgeu         a0, sp, sub_3_7_0_t #branch for loop 0
                  sltiu        t1, t5, 266
                  addi         a7, zero, -3 #init loop 1 counter
                  sra          s4, a6, a6
                  addi         t1, zero, 17 #init loop 1 limit
                  addi         s6, tp, -1388
sub_3_3_1_t:      xori         s1, s6, -116
                  addi         a7, a7, 10 #update loop 1 counter
                  slli         t6, s2, 3
                  addi         ra, zero, 5 #init loop 0 counter
                  sra          s11, s4, a2
                  addi         t0, zero, 8 #init loop 0 limit
sub_3_3_0_t:      slti         s5, t1, -1514
                  slt          t5, s8, s10
                  addi         ra, ra, 7 #update loop 0 counter
                  bltu         ra, t0, sub_3_3_0_t #branch for loop 0
                  bne          a7, t1, sub_3_3_1_t #branch for loop 1
                  auipc        s3, 936052
                  addi         a2, zero, -2 #init loop 1 counter
                  lui          s8, 337573
                  addi         t2, zero, 16 #init loop 1 limit
                  auipc        s3, 172454
sub_3_0_1_t:      sub          zero, s2, zero
                  sltiu        tp, s2, -1234
                  addi         a2, a2, 1 #update loop 1 counter
                  addi         ra, zero, 8 #init loop 0 counter
                  addi         s0, zero, 20 #init loop 0 limit
                  slti         s4, a4, -1926
sub_3_0_0_t:      auipc        a7, 464973
                  sltu         t3, t4, t3
                  addi         ra, ra, 3 #update loop 0 counter
                  sltu         t0, ra, zero
                  beq          ra, s0, sub_3_0_0_t #branch for loop 0
                  srai         s3, a7, 22
                  bne          a2, t2, sub_3_0_1_t #branch for loop 1
                  srl          sp, a1, ra
                  bne          a3, s7, 18f
                  andi         s9, zero, -660
                  addi         t0, s4, -605
                  xori         sp, s2, -1149
                  bne          t6, tp, 22f
                  srli         t4, s5, 18
                  sltu         ra, s7, t0
                  sra          s3, a6, a5
                  and          s8, t2, t1
                  bgeu         s5, s9, 13f
                  slli         t1, s10, 28
                  beq          s5, sp, 14f
                  or           s2, gp, t0
13:               blt          s8, s8, 32f
14:               bne          t2, s1, 33f
                  bgeu         t2, s5, 26f
                  add          s11, a7, sp
                  bge          s5, s1, 31f
18:               sll          zero, s5, a6
                  add          t6, sp, t1
                  or           t0, sp, s11
                  slt          a0, tp, a6
22:               sltiu        t2, a5, 1098
                  or           t1, t2, s5
                  sra          t6, s0, s9
                  ori          a4, a2, 1124
26:               andi         a5, a1, -1250
                  srli         s4, s4, 11
                  slt          a1, s8, s11
                  srli         sp, t6, 24
                  slti         a4, a2, 139
31:               xor          tp, gp, a2
32:               sll          t5, s9, s9
33:               nop
                  nop
                  bne          t2, a3, 38f
                  and          s8, s10, t0
                  bge          t2, t5, 51f
38:               sra          ra, s10, t4
                  srl          t3, a3, s9
                  srli         tp, a0, 19
                  slli         a4, s5, 16
                  sll          a0, t2, s4
                  sll          t3, ra, s7
                  sub          t5, a7, s7
                  addi         sp, gp, -246
                  addi         s0, zero, 8 #init loop 0 counter
                  sltiu        s3, a1, 46
                  addi         s11, zero, 8 #init loop 0 limit
                  slti         s4, t5, -1979
                  xor          s3, s0, s5
                  srl          s5, s1, t4
                  lui          a7, 134981
                  nop
                  srli         a0, sp, 10
                  xori         a5, a1, 23
sub_3_10_0_t:     andi         t0, t2, 700
                  slt          t2, a6, sp
                  addi         s0, s0, -3 #update loop 0 counter
                  or           s5, a7, sp
                  bge          s0, s11, sub_3_10_0_t #branch for loop 0
                  slti         t4, t1, -2039
                  slti         t2, s3, -1656
                  blt          sp, s10, 66f
                  beq          tp, t4, 50f
                  or           t6, zero, t4
50:               nop
51:               xori         s8, a7, 1628
                  slli         t3, gp, 18
                  slt          s9, a1, ra
                  addi         s5, tp, 701
                  add          a0, s10, a7
                  sub          t5, a3, a6
                  xor          a2, t3, s6
                  xor          s6, t2, a6
                  beq          t3, s4, 78f
                  blt          a3, s3, 78f
                  addi         a0, a0, -436
                  sra          t6, s2, a6
                  addi         s4, s8, 535
                  srai         t6, t3, 14
                  slli         t3, sp, 27
66:               and          s4, t4, s7
                  addi         s5, a5, -27
                  auipc        s4, 668380
                  addi         a1, a2, 371
                  ori          a6, t4, -1845
                  sltu         t1, a7, sp
                  auipc        sp, 669664
                  bne          ra, a6, 85f
                  srai         a5, s11, 2
                  srli         a2, ra, 23
                  blt          t5, t5, 77f
77:               bge          t3, gp, 88f
78:               xor          s6, a0, a1
                  add          s0, a7, a3
                  nop
                  nop
                  andi         a6, t0, 1679
                  sll          ra, s9, tp
                  bgeu         zero, t0, 94f
85:               or           s1, s4, s9
                  bne          s4, t1, 99f
                  sll          a1, s1, a0
88:               bgeu         s1, s3, 98f
                  bne          s1, s10, 106f
                  or           a0, ra, s9
                  bltu         a2, t4, 111f
                  sra          a2, a2, t1
                  bge          s7, s7, 112f
94:               nop
                  xor          a7, a2, s0
                  sra          a7, gp, a0
                  slti         s11, s5, -530
98:               bge          s2, a3, 115f
99:               auipc        t2, 463087
                  xor          a0, s8, gp
                  xori         s3, a2, 1744
                  sub          a6, s1, s9
                  sub          a7, s0, s9
                  sltu         ra, a7, ra
                  sra          a4, s3, s1
106:              lui          a6, 497157
                  slt          a1, zero, t6
                  bge          s0, t1, 124f
                  srli         a7, a2, 23
                  bgeu         a6, s0, 113f
111:              and          sp, s4, t1
112:              blt          s1, a4, 123f
113:              or           s2, s3, s10
                  xor          s2, a3, a0
115:              srai         s11, tp, 31
                  srl          gp, s5, ra
                  srli         t2, t6, 18
                  ori          s6, t1, -906
                  lui          a5, 338856
                  sltiu        a6, s0, 954
                  or           s6, s10, gp
                  nop
123:              nop
124:              addi         gp, t2, -368
                  sra          s5, a3, s2
                  xori         t6, t1, 957
                  addi         s8, a2, -1589
                  ori          s9, a6, -882
                  srl          s3, t1, t5
                  add          gp, a3, t5
                  bge          a2, s10, 143f
                  ori          s5, sp, 1942
                  bltu         s8, tp, 151f
                  slt          t5, t1, t4
                  beq          t5, s0, 148f
                  sra          a7, s11, s10
                  srli         t4, s2, 13
                  bgeu         a6, t0, 155f
                  xor          a0, t3, t2
                  sra          t4, t1, s3
                  bgeu         a7, a4, 151f
                  slli         ra, t3, 0
143:              sra          a1, t0, s3
                  lui          sp, 355513
                  blt          a1, s9, 165f
                  sra          a6, s0, t0
                  sub          s11, t4, s10
148:              slt          s6, t1, a2
                  sra          a5, sp, zero
                  srai         a6, s10, 17
151:              sub          tp, s0, t6
                  bltu         a0, t1, 169f
                  beq          t0, sp, 156f
                  sub          tp, a7, ra
155:              add          a0, s9, s3
156:              slti         s8, t5, 1284
                  bgeu         sp, a5, 175f
                  andi         a4, s11, -1181
                  xor          t0, s1, zero
                  blt          a5, s11, 171f
                  ori          a5, a4, -30
                  and          s8, s4, a0
                  andi         a1, s5, 397
                  addi         s9, s8, 943
165:              sra          t4, s3, s9
                  slt          s9, t6, s5
                  lui          s1, 808750
                  sll          t5, s5, s6
169:              beq          t5, t5, 170f
170:              srl          s3, s10, t3
171:              sll          t2, t6, s5
                  blt          t4, s4, 175f
                  ori          a2, s1, 1029
                  blt          t2, t3, 187f
175:              slt          s5, t1, a3
                  sltiu        gp, t2, 1155
                  sra          a6, a3, a5
                  slt          s11, zero, a4
                  beq          t6, a0, 198f
                  srai         a2, a2, 11
                  ori          t3, a7, -1819
                  sll          t6, s4, t1
                  bne          zero, a6, 201f
                  blt          t1, a3, 195f
                  srl          t1, ra, s6
                  bne          ra, gp, 200f
187:              sll          s9, t4, a6
                  bne          s4, s3, 191f
                  sltiu        a4, s6, 463
                  sll          zero, s10, t1
191:              bgeu         s6, s8, 210f
                  or           s9, gp, t3
                  bgeu         s2, s5, 204f
                  xor          t2, s4, zero
195:              blt          sp, t1, 209f
                  sltiu        s5, a0, -1177
                  ori          a6, zero, 1082
198:              sra          t3, a3, s0
                  srli         a5, s2, 3
200:              andi         a0, s11, 2015
201:              xor          s0, s10, t2
                  nop
                  ori          s9, s3, 1555
204:              add          t4, a2, t0
                  bltu         s9, a0, 217f
                  sltiu        s11, s0, -1768
                  sra          s4, a5, s10
                  blt          ra, t2, 227f
209:              xor          s5, s10, s4
210:              bltu         zero, a0, 228f
                  lui          t5, 176134
                  slti         a4, s4, 774
                  bltu         s10, t0, 231f
                  xor          t5, zero, t3
                  slt          a7, s9, tp
                  srl          t6, t2, t2
217:              sltiu        zero, t5, 2040
                  bge          gp, zero, 234f
                  slt          a1, a1, t2
                  ori          s0, s9, -458
                  ori          a4, a6, 771
                  xor          t5, t6, ra
                  nop
                  or           t6, t6, s2
                  sll          a1, zero, a0
                  beq          t6, s4, 245f
227:              bgeu         s1, t6, 237f
228:              or           s3, a6, tp
                  srl          t6, a0, s5
                  nop
231:              andi         a6, t1, -981
                  srai         a4, s7, 27
                  addi         t0, t1, -1422
                  addi         s0, zero, 7 #init loop 0 counter
                  auipc        t0, 475030
                  slti         a2, s2, -708
                  slli         s2, a3, 19
                  addi         s9, zero, 11 #init loop 0 limit
                  auipc        s5, 1030000
                  srai         t2, s2, 23
                  xori         s3, a7, 1422
                  sub          t0, s1, s1
                  lui          s3, 831924
sub_3_13_0_t:     slt          t2, t6, t5
                  srli         s6, a1, 19
                  addi         s0, s0, 4 #update loop 0 counter
                  sll          t0, t1, t1
                  bne          s0, s9, sub_3_13_0_t #branch for loop 0
                  ori          a5, sp, 1786
234:              slli         sp, s3, 12
                  sra          s1, s8, sp
                  slti         sp, s6, 204
237:              bge          s1, s11, 239f
                  slti         s8, a4, -573
239:              srli         t6, a2, 9
                  ori          t5, a4, -1078
                  bne          s2, s3, 254f
                  lui          s3, 409608
                  srli         s4, s4, 22
                  auipc        t4, 63138
245:              or           t6, t3, t3
                  addi         tp, a1, 368
                  bgeu         s5, a7, 251f
                  srai         s0, gp, 5
                  ori          s9, a2, 1089
                  nop
251:              auipc        s0, 942009
                  andi         t2, t6, 307
                  slli         tp, t0, 0
254:              nop
                  bne          s10, s11, 267f
                  srai         t1, t1, 19
                  bge          s4, t1, 276f
                  sltu         s2, s5, zero
                  auipc        a1, 920631
                  xor          s8, gp, a7
                  srli         s1, s1, 30
                  and          a4, a3, zero
                  sub          t5, t0, tp
                  sub          a0, s10, a1
                  bltu         s2, a7, 267f
                  sub          a4, s6, s9
267:              slt          tp, a0, a2
                  ori          ra, s5, -1576
                  slli         a4, a3, 9
                  sltiu        sp, a1, -1379
                  bgeu         a5, s8, 272f
272:              xor          a2, s10, t1
                  srl          sp, s0, t4
                  sltiu        a1, s4, 1321
                  xori         t2, s10, 488
276:              bne          s10, zero, 295f
                  bgeu         s6, ra, 287f
                  addi         sp, s4, -1612
                  srl          s5, s0, s4
                  and          a4, s0, tp
                  bltu         s6, t1, 299f
                  bgeu         s7, s1, 300f
                  xor          s6, s4, a3
                  add          t5, tp, a6
                  sub          s5, a3, s10
                  sll          a1, a7, t0
287:              slt          t5, ra, a2
                  add          s5, tp, s4
                  slli         t3, a3, 15
                  nop
                  slli         a2, a1, 16
                  slti         s0, a0, -2028
                  beq          ra, a0, 305f
                  bge          s4, s5, 313f
295:              sra          t5, s5, gp
                  bge          t4, t0, 308f
                  and          tp, s8, t4
                  bgeu         s2, gp, 309f
299:              beq          a2, sp, 318f
300:              beq          s7, s9, 303f
                  auipc        t2, 825336
                  sltu         t0, a2, zero
303:              add          ra, a2, zero
                  nop
305:              xor          a1, s10, a6
                  srai         sp, s10, 29
                  bltu         a1, a4, 320f
308:              xori         t1, s4, 1060
309:              and          t6, s6, s0
                  sltiu        zero, t1, 1210
                  auipc        t3, 990905
                  bltu         t0, s9, 332f
313:              xor          gp, tp, s3
                  sltu         tp, sp, s6
                  bgeu         sp, zero, 333f
                  xori         t6, s3, -348
                  slti         t6, s3, -1057
318:              blt          tp, s2, 328f
                  xor          s11, t2, s4
320:              slli         t6, t6, 21
                  bgeu         s2, zero, 325f
                  sltu         s1, a2, tp
                  beq          a7, t3, 337f
                  slti         zero, s2, 1400
325:              auipc        s8, 1008135
                  srl          s3, t1, s2
                  srai         s9, t6, 12
328:              ori          s8, a1, 117
                  andi         t1, t2, -160
                  or           s1, s6, s4
                  beq          t1, a3, 350f
332:              addi         s6, s3, 3
333:              srl          tp, t0, t3
                  slli         s5, tp, 2
                  sltiu        a6, s5, 614
                  addi         a5, a5, -1343
337:              and          a0, a4, s11
                  slt          a6, a1, a2
                  sll          s1, a2, a2
                  srl          a0, a2, tp
                  or           s2, s6, s3
                  and          s11, t5, a2
                  addi         a5, zero, 5 #init loop 0 counter
                  xori         s3, ra, -5
                  nop
                  addi         gp, zero, -14 #init loop 0 limit
                  srl          s11, ra, tp
                  xori         s11, t6, -380
                  slti         a4, a5, -437
                  sltiu        s2, a4, -812
sub_3_2_0_t:      nop
                  addi         a5, a5, -2 #update loop 0 counter
                  auipc        t2, 672737
                  andi         tp, a1, -338
                  slti         s0, t0, -536
                  slt          t2, s1, s5
                  xori         s8, t2, 976
                  sltu         s0, ra, tp
                  auipc        s5, 865079
                  bge          a5, gp, sub_3_2_0_t #branch for loop 0
                  sltiu        s0, s5, -88
                  slli         gp, s9, 28
                  auipc        zero, 809033
                  beq          s7, t1, 348f
                  lui          t1, 19411
                  srl          zero, t5, a2
348:              bge          t6, tp, 367f
                  blt          s11, t0, 362f
350:              bgeu         a4, s9, 367f
                  slli         t5, t2, 31
                  slli         zero, s9, 22
                  ori          t1, s0, 623
                  blt          s8, gp, 370f
                  slt          s3, s6, s1
                  add          sp, s1, ra
                  add          a1, s1, s6
                  sub          a4, t6, t5
                  slli         s0, s11, 13
                  sra          sp, s9, t6
                  sltiu        s9, a5, -1575
362:              beq          s5, s1, 376f
                  srl          s6, a5, s11
                  beq          a6, a1, 375f
                  xor          t0, s5, s10
                  bltu         a7, s3, 377f
367:              blt          a7, s1, 384f
                  and          t0, tp, sp
                  sltiu        s8, zero, -1238
370:              and          s11, a1, s11
                  srl          s9, s10, t0
                  lui          t1, 379117
                  lui          zero, 889629
                  beq          t0, zero, 392f
375:              blt          sp, gp, 378f
376:              bgeu         s2, a2, 378f
377:              add          a6, a2, a6
378:              srai         s5, s8, 1
                  and          ra, t4, s1
                  sltiu        sp, t6, -692
                  auipc        s0, 209291
                  ori          s6, t2, -953
                  bgeu         s3, a5, 394f
384:              lui          t5, 699114
                  xor          a5, a4, s9
                  add          s2, t2, a5
                  bltu         s0, a3, 398f
                  slti         a7, t4, -771
                  ori          s2, s7, 352
                  nop
                  ori          sp, t1, -1163
392:              or           s0, sp, s9
                  add          t6, zero, s1
394:              addi         s11, t5, -1145
                  addi         sp, sp, -1154
                  addi         gp, s7, -1904
                  sll          s1, s6, a7
398:              or           s4, a6, s9
                  add          a1, t1, s9
                  bge          a3, tp, 410f
                  and          a1, ra, s8
                  sll          sp, s11, s10
                  sub          s5, sp, a7
                  or           t2, ra, t4
                  slt          a4, s11, a3
                  sltiu        t4, tp, -1477
                  and          a5, t4, a0
                  or           a2, s0, a7
                  bgeu         s2, t2, 426f
410:              ori          zero, s6, 593
                  bne          a1, a3, 430f
                  blt          t4, s8, 428f
                  bge          a4, s6, 431f
                  or           s9, a7, gp
                  blt          s2, s3, 433f
                  sll          t6, s10, s0
                  bgeu         s6, a3, 427f
                  sltiu        tp, a1, 1654
                  sltu         t3, a2, t0
                  auipc        s5, 339181
                  slti         s2, a0, -923
                  auipc        s6, 852617
                  auipc        s11, 402932
                  srli         a5, a3, 6
                  srli         t2, t2, 25
426:              slti         tp, s0, -1535
427:              beq          s1, tp, 428f
428:              lui          tp, 309925
                  srli         s4, tp, 19
430:              xor          a5, s5, s3
431:              sub          t0, s10, s9
                  addi         s11, ra, 1952
433:              add          s11, t0, s7
                  bne          a4, a1, 437f
                  sltu         a7, t3, zero
                  nop
437:              ori          s11, t6, -875
                  addi         a1, a6, -1926
                  bgeu         zero, ra, 451f
                  slt          s9, a1, tp
                  andi         s11, s4, -674
                  blt          s10, a0, 461f
                  xor          sp, t5, a3
                  bge          s4, s6, 463f
                  andi         s4, sp, -1219
                  and          a0, t4, t4
                  bge          s6, s4, 459f
                  and          s4, zero, s10
                  auipc        t5, 305876
                  add          s6, a0, s3
451:              xor          s9, s3, sp
                  xor          zero, a3, a2
                  xor          gp, s2, t2
                  auipc        a1, 446438
                  ori          t5, s5, 65
                  slt          t0, t0, ra
                  add          sp, s9, a2
                  or           a6, t6, a1
459:              srli         ra, zero, 5
                  lui          s1, 734473
461:              sltu         s11, gp, s10
                  srl          a6, s11, s9
463:              andi         t6, s9, 1297
                  bgeu         a3, t6, 482f
                  slti         s4, a5, 883
                  lui          t6, 360483
                  add          t1, zero, s1
                  sltiu        a7, zero, -820
                  xor          sp, sp, a0
                  blt          s0, zero, 490f
                  sltu         a0, a2, tp
                  bgeu         t4, s7, 486f
                  addi         t2, a1, -600
                  slti         s0, a4, 928
                  ori          t0, s7, 796
                  add          s5, s3, s10
                  srai         t6, a1, 16
                  slti         zero, gp, 61
                  srai         s3, a4, 10
                  or           a7, a4, s2
                  sltu         ra, tp, t2
482:              and          s11, s0, gp
                  sltiu        a0, a6, -1352
                  slti         t5, a0, 1473
                  srl          s0, a6, ra
486:              and          a5, sp, t1
                  sra          s1, t6, s7
                  srli         a4, s2, 22
                  and          sp, a1, s5
490:              and          a4, a0, a6
                  addi         s3, zero, 693
                  auipc        s0, 949990
                  sra          t1, tp, a2
                  auipc        t4, 168251
                  andi         t3, t6, -297
                  sll          tp, zero, s11
                  andi         t5, a5, 1582
                  add          t3, t2, t2
                  bne          zero, zero, 510f
                  xor          s1, s2, s11
                  srli         t3, s4, 2
                  sll          t1, a5, a2
                  sltiu        t1, s3, 604
                  bne          a7, ra, 517f
                  nop
                  sltu         a6, a7, t5
                  srl          a7, s6, s5
                  bne          s11, s10, 511f
                  srl          s5, s7, a7
510:              slli         s11, s10, 0
511:              slti         a0, a6, 281
                  bne          s0, s9, 529f
                  add          a6, s3, s5
                  bgeu         s3, t4, 533f
                  sltu         s1, s5, tp
                  sra          tp, t5, t4
517:              add          t5, a4, t2
                  sub          s9, t1, s1
                  addi         s4, t3, -944
                  sltiu        a7, tp, -1340
                  ori          a0, tp, -1052
                  bltu         sp, t5, 535f
                  slti         s4, sp, -987
                  srai         s8, t6, 7
                  bgeu         t2, s9, 528f
                  xori         t3, ra, 788
                  sltu         t1, t5, t6
528:              add          gp, a2, s2
529:              bne          t5, s4, 547f
                  sll          s6, a5, sp
                  slt          t1, a7, t2
                  slli         s8, ra, 28
533:              bge          s0, sp, 537f
                  bltu         s9, a1, 548f
535:              slti         s2, a7, -977
                  sll          a0, t6, t6
537:              and          a4, a5, t5
                  blt          t1, t3, 557f
                  slti         t1, s11, 1623
                  add          t2, s8, t5
                  nop
                  bgeu         s10, a3, 561f
                  sll          a6, a4, zero
                  bne          a7, t2, 555f
                  add          s5, a3, t2
                  xor          s5, t1, a7
547:              beq          s4, sp, 557f
548:              sub          zero, s6, a4
                  sltiu        a7, t6, 492
                  xor          sp, a0, s2
                  bne          s8, s5, 567f
                  or           gp, s8, ra
                  xori         s6, s9, -1494
                  andi         t3, gp, 746
555:              beq          a3, t1, 573f
                  and          t5, a3, gp
557:              bge          a2, s4, 567f
                  slt          a6, s8, s6
                  bltu         s7, s0, 578f
                  bge          sp, s1, 578f
561:              add          t6, t5, s3
                  addi         s2, s5, -1312
                  bltu         a5, t0, 567f
                  sltiu        s4, t6, -1466
                  and          ra, a1, a1
                  auipc        t5, 517170
567:              sub          a6, s1, t4
                  ori          s6, s5, -570
                  sltu         s8, gp, gp
                  addi         zero, s0, 854
                  bgeu         s5, s5, 584f
                  bgeu         s1, a6, 591f
573:              beq          zero, zero, 584f
                  beq          s5, ra, 588f
                  slt          t3, s10, s11
                  add          t0, t6, s11
                  bne          t0, t1, 580f
578:              xori         s8, a0, -772
                  auipc        s0, 534340
580:              and          t5, t4, t3
                  and          sp, s10, s2
                  ori          zero, s4, -992
                  lui          s0, 747430
584:              ori          s0, t3, -1532
                  and          a6, s5, a1
                  sra          a0, s4, a4
                  blt          s10, t5, 599f
588:              bltu         t0, sp, 606f
                  sra          s5, s2, a3
                  sra          a6, t6, s4
591:              or           zero, a6, s2
                  addi         a7, a4, 95
                  add          s0, a1, sp
                  sub          a4, a2, t4
                  bne          s8, a0, 612f
                  nop
                  addi         a7, s6, 1923
                  sll          s0, a0, t4
599:              sll          a1, a4, a6
                  bge          a1, t1, 619f
                  and          s0, a2, sp
                  addi         s0, s8, 5
                  srli         t0, s9, 13
                  auipc        a4, 861633
                  srl          tp, s8, zero
606:              lui          t3, 910293
                  bltu         ra, s11, 620f
                  addi         s4, t1, 195
                  bge          s4, a7, 620f
                  srl          a7, s11, a5
                  blt          a3, s7, 628f
612:              ori          a2, s11, -1046
                  srai         s3, sp, 0
                  andi         s6, ra, 1049
                  xori         a2, ra, 255
                  bge          ra, s1, 617f
617:              xor          a5, a2, zero
                  add          a0, s8, gp
619:              ori          t5, t2, 1785
620:              xori         s4, s1, 1379
                  srl          a6, s7, t0
                  addi         t4, t4, 1821
                  auipc        t0, 582223
                  andi         a5, s10, -128
                  blt          s10, t4, 644f
                  bltu         t0, sp, 646f
                  addi         s9, t5, -1219
628:              slli         gp, s9, 10
                  or           s4, a7, tp
                  srli         t2, s7, 4
                  blt          sp, s9, 634f
                  sub          s2, s7, a4
                  xor          a5, s11, t6
634:              sub          t6, a3, s7
                  sra          gp, s9, tp
                  slt          s3, t4, sp
                  add          t3, a6, s3
                  srli         t3, s0, 11
                  add          a4, t1, a6
                  bltu         s8, t0, 652f
                  beq          s6, t2, 643f
                  blt          a5, a5, 656f
643:              sub          a5, t2, t2
644:              xori         a7, a0, -262
                  or           tp, s4, a3
646:              ori          s9, s4, 206
                  srai         s6, a2, 11
                  nop
                  nop
                  bge          a5, s10, 653f
                  blt          s10, s6, 669f
652:              nop
653:              add          a6, t6, s8
                  bgeu         t0, a6, 674f
                  add          t5, s6, zero
656:              blt          t3, gp, 669f
                  sub          s2, s0, a5
                  addi         a1, a4, 1170
                  bltu         s1, s6, 677f
                  sll          gp, s5, a3
                  sra          s3, sp, t1
                  srli         ra, t5, 31
                  slli         tp, gp, 12
                  beq          sp, t4, 682f
                  srl          s4, gp, a0
                  bgeu         s7, s3, 677f
                  sll          a0, s5, s8
                  auipc        s4, 415928
669:              srai         t4, tp, 3
                  srli         t1, t5, 1
                  srli         t4, s2, 22
                  nop
                  blt          s9, s4, 676f
674:              bne          t2, s3, 692f
                  sll          t1, a7, a0
676:              or           t6, a0, a6
677:              sltiu        s2, s0, -1338
                  bgeu         s4, a1, 697f
                  sub          s6, s3, a3
                  sltiu        zero, a2, -580
                  or           a6, s8, s6
682:              addi         s9, t3, -1870
                  bge          s0, sp, 696f
                  bltu         gp, a0, 694f
                  auipc        s4, 450881
                  slt          t5, s11, s2
                  bne          t6, s3, 689f
                  sll          sp, a7, t3
689:              slli         a4, t4, 6
                  xori         a2, s7, -1115
                  lui          a1, 936322
692:              andi         t4, ra, -352
                  sra          a7, s0, a1
694:              sll          tp, a3, a2
                  and          t6, a0, s2
696:              srai         zero, s9, 29
697:              blt          s2, s2, 698f
698:              xori         t3, s4, -1527
                  and          s0, s5, s7
                  slti         a5, tp, -1652
                  lui          gp, 104919
                  sll          zero, s6, t6
                  slli         tp, zero, 22
                  beq          s11, a0, 716f
                  slli         t2, s6, 17
                  slti         t5, sp, 155
                  slli         t5, ra, 9
                  sltiu        zero, s6, 1054
                  nop
                  srl          s4, sp, a4
                  slti         gp, s0, -1718
                  bge          a7, s1, 729f
                  slt          s0, s10, s2
                  slt          a2, s3, s4
                  bltu         s4, s2, 726f
716:              auipc        t4, 374575
                  slli         gp, s7, 13
                  xor          s1, sp, s3
                  addi         sp, s9, -625
                  andi         s0, a3, 823
                  bltu         t3, s9, 725f
                  bltu         a3, a1, 725f
                  sltiu        s3, s1, 307
                  xor          s11, t0, s7
725:              bne          s2, s5, 742f
726:              sltu         t0, a3, t5
                  slt          s1, a5, ra
                  sub          s6, t4, s4
729:              addi         t1, a2, -1411
                  xori         s4, a5, 537
                  slli         t4, s2, 16
                  xori         s0, zero, 251
                  sra          a6, ra, s7
                  sub          t1, s1, t1
                  sra          zero, sp, s3
                  sll          t1, s8, gp
                  andi         gp, t0, -1912
                  or           s0, s0, zero
                  slt          a0, s3, s1
                  slli         t1, s2, 3
                  addi         a4, a2, -1596
742:              slti         s6, tp, 1632
                  blt          a2, t6, 746f
                  sll          s5, a7, t0
                  sltu         sp, zero, s0
746:              slli         s6, s8, 21
                  auipc        t6, 31321
                  sltu         t4, t6, s10
                  lw           t1, 4(s7)
                  addi         s7, s7, 24
                  and          tp, s0, a2
1029:             addi x31, x6, 0
1029:             jalr x31, x31, 0
sub_2:            nop
                  bge          gp, tp, sub_2_stack_p
                  andi         a0, gp, -563
sub_2_stack_p:    addi         s7, s7, -12
                  ori          a2, s11, 440
                  sw           t1, 4(s7)
                  slti         t3, gp, -1459
                  addi         t3, zero, -7 #init loop 0 counter
                  xori         t6, ra, -1123
                  or           t2, s7, s4
                  and          t6, s9, t6
                  auipc        s2, 490588
                  addi         s8, zero, 18 #init loop 0 limit
sub_2_0_0_t:      sub          a5, t0, sp
                  xor          s11, zero, a4
                  ori          tp, s3, 496
                  addi         t3, t3, 4 #update loop 0 counter
                  andi         t4, a1, -991
                  srli         ra, s10, 16
                  sll          s9, t2, t1
                  add          s11, gp, s7
                  ori          t5, a6, 1592
                  bltu         t3, s8, sub_2_0_0_t #branch for loop 0
                  or           a6, t4, a1
                  addi         a4, zero, 10 #init loop 1 counter
                  or           tp, a4, s5
                  nop
                  sltu         s4, s6, a5
                  sub          a5, t2, s10
                  sub          a1, s4, s2
                  srl          s4, s7, a0
                  addi         a0, zero, 10 #init loop 1 limit
                  andi         gp, s2, 1753
sub_2_1_1_t:      andi         t2, s6, -442
                  addi         a4, a4, -2 #update loop 1 counter
                  andi         t5, s5, -1134
                  and          t5, a1, a7
                  addi         s1, zero, -8 #init loop 0 counter
                  sra          s4, s10, s2
                  addi         s11, zero, 9 #init loop 0 limit
                  slli         a5, t6, 31
                  lui          t5, 820156
                  andi         s9, ra, -1477
                  and          s5, a4, a1
                  srli         s4, s0, 21
                  auipc        s9, 81097
sub_2_1_0_t:      sub          s3, a1, zero
                  slt          t5, s11, s9
                  sub          s9, s9, s6
                  addi         s1, s1, 7 #update loop 0 counter
                  bltu         s1, s11, sub_2_1_0_t #branch for loop 0
                  bgeu         a4, a0, sub_2_1_1_t #branch for loop 1
                  srli         a5, t2, 1
                  addi         ra, zero, 9 #init loop 1 counter
                  nop
                  addi         s2, a3, 1174
                  addi         s9, zero, 9 #init loop 1 limit
                  ori          s4, s1, 1300
sub_2_9_1_t:      and          t1, t6, t3
                  srai         t5, s11, 12
                  addi         ra, ra, -6 #update loop 1 counter
                  addi         s8, zero, -4 #init loop 0 counter
                  addi         s1, zero, 5 #init loop 0 limit
                  sll          s6, a6, a6
                  and          s11, t1, t3
                  andi         s11, t5, -422
                  slti         a6, zero, -33
                  sltu         a2, t4, t4
                  nop
                  auipc        s3, 189740
                  srli         s11, s1, 3
                  slti         zero, a4, -335
                  sra          tp, a6, t2
sub_2_9_0_t:      ori          t5, s6, -790
                  sltiu        t5, s10, 1043
                  addi         s8, s8, 9 #update loop 0 counter
                  andi         s11, t2, 631
                  lui          t2, 997540
                  bne          s8, s1, sub_2_9_0_t #branch for loop 0
                  srl          t4, s10, s2
                  bgeu         ra, s9, sub_2_9_1_t #branch for loop 1
                  slti         a5, ra, -1228
                  addi         t0, zero, 9 #init loop 1 counter
                  sll          a6, a2, s6
                  addi         t1, zero, 7 #init loop 1 limit
                  sra          s1, a5, tp
sub_2_11_1_t:     nop
                  addi         t0, t0, -6 #update loop 1 counter
                  srai         a6, ra, 30
                  addi         s0, zero, 10 #init loop 0 counter
                  sra          a0, sp, a7
                  addi         s3, zero, 10 #init loop 0 limit
                  add          a6, s8, s8
sub_2_11_0_t:     and          ra, a0, t5
                  addi         s0, s0, -9 #update loop 0 counter
                  addi         t5, a0, 816
                  bgeu         s0, s3, sub_2_11_0_t #branch for loop 0
                  sltu         s6, s5, a5
                  bgeu         t0, t1, sub_2_11_1_t #branch for loop 1
                  lui          a0, 542565
                  addi         s2, zero, -3 #init loop 1 counter
                  xori         gp, a6, -1776
                  addi         a7, zero, 18 #init loop 1 limit
                  addi         t5, s6, -1822
                  sltu         gp, ra, t5
sub_2_2_1_t:      ori          s9, tp, 1225
                  addi         s2, s2, 6 #update loop 1 counter
                  and          ra, a4, t6
                  sra          a4, s5, a1
                  srai         t2, a1, 5
                  addi         s8, zero, 5 #init loop 0 counter
                  andi         s4, s7, 1799
                  addi         s1, zero, 10 #init loop 0 limit
sub_2_2_0_t:      slt          s9, a0, sp
                  xori         s9, sp, 324
                  slli         s4, a7, 24
                  addi         s8, s8, 9 #update loop 0 counter
                  blt          s8, s1, sub_2_2_0_t #branch for loop 0
                  xor          zero, a0, zero
                  slti         s11, t6, -202
                  bltu         s2, a7, sub_2_2_1_t #branch for loop 1
                  srli         s3, a5, 5
                  addi         a4, zero, -3 #init loop 0 counter
                  auipc        t5, 689705
                  and          s6, t4, t5
                  sra          t2, t5, t5
                  sub          a2, t3, s0
                  addi         s4, zero, 17 #init loop 0 limit
                  addi         a7, s4, 936
                  add          a1, a4, zero
                  add          ra, t4, t2
                  or           a6, t6, t1
                  andi         t6, t2, -1722
                  nop
sub_2_10_0_t:     sub          s11, a5, s3
                  addi         a4, a4, 10 #update loop 0 counter
                  nop
                  sub          tp, s4, t6
                  auipc        t6, 514947
                  beq          a4, s4, sub_2_10_0_t #branch for loop 0
                  add          sp, s11, a0
                  addi         t3, zero, 9 #init loop 1 counter
                  auipc        a5, 162537
                  addi         s2, zero, 9 #init loop 1 limit
                  xori         s6, s2, -1275
                  andi         tp, s3, -180
                  srli         s9, a5, 3
                  sll          tp, sp, t0
                  and          a1, s5, t1
                  slti         t2, s3, 1848
sub_2_7_1_t:      xori         s6, ra, 603
                  xor          s1, t4, t0
                  addi         t3, t3, -8 #update loop 1 counter
                  slt          s5, gp, t2
                  addi         t4, zero, 6 #init loop 0 counter
                  lui          t1, 84086
                  nop
                  addi         s8, zero, -11 #init loop 0 limit
                  xor          a6, s8, a4
sub_2_7_0_t:      and          a7, a6, t6
                  addi         t4, t4, -8 #update loop 0 counter
                  slt          zero, s2, s1
                  bge          t4, s8, sub_2_7_0_t #branch for loop 0
                  addi         s3, s0, 1740
                  sltiu        sp, t3, 1792
                  sll          s4, t5, s9
                  bgeu         t3, s2, sub_2_7_1_t #branch for loop 1
                  srl          zero, a6, t0
                  addi         s9, zero, 2 #init loop 0 counter
                  addi         t0, zero, 16 #init loop 0 limit
                  sra          t5, t4, s7
                  andi         t5, s7, -1487
                  sltu         t3, zero, zero
                  andi         a7, a1, -1115
                  slti         s8, zero, -1275
                  sub          s8, a6, a4
                  or           gp, a4, gp
sub_2_6_0_t:      lui          s2, 670021
                  slli         s0, a4, 11
                  addi         s9, s9, 7 #update loop 0 counter
                  srl          t6, s5, s6
                  add          s11, ra, a0
                  srai         ra, s3, 17
                  sub          gp, t6, s0
                  lui          t4, 95886
                  lui          tp, 400753
                  srl          a6, t2, s5
                  xor          s5, gp, t6
                  beq          s9, t0, sub_2_6_0_t #branch for loop 0
                  slt          t3, a1, a6
                  addi         a7, zero, -9 #init loop 1 counter
                  srl          s8, t0, sp
                  addi         a4, zero, -17 #init loop 1 limit
                  andi         s8, t2, 955
                  srl          sp, s1, s1
                  lui          a0, 449398
sub_2_3_1_t:      xor          a0, t2, zero
                  sll          t3, t0, s3
                  sra          t0, a7, s9
                  addi         a7, a7, -8 #update loop 1 counter
                  and          ra, s3, a7
                  addi         t5, zero, 9 #init loop 0 counter
                  xori         t2, a2, -1204
                  addi         gp, zero, 5 #init loop 0 limit
                  or           t4, t0, s6
                  and          a0, t3, s11
sub_2_3_0_t:      nop
                  or           t2, a1, a0
                  nop
                  addi         t5, t5, -1 #update loop 0 counter
                  bgeu         t5, gp, sub_2_3_0_t #branch for loop 0
                  beq          a7, a4, sub_2_3_1_t #branch for loop 1
                  addi         s5, zero, -340
                  bne          t1, sp, 1f
1:                srai         s2, a0, 28
                  nop
                  srli         t4, t2, 5
                  sra          t5, a7, t0
                  andi         zero, s7, -1846
                  lui          a7, 540693
                  srl          a5, t5, a3
                  or           t4, a0, s6
                  ori          s1, s2, -1056
                  or           t0, t2, a1
                  addi         a0, zero, -10 #init loop 1 counter
                  nop
                  srl          s3, sp, a2
                  xori         s6, t2, -440
                  addi         s0, zero, -20 #init loop 1 limit
                  slli         ra, s1, 5
sub_2_5_1_t:      sltiu        t6, s7, -288
                  sub          a6, t0, a5
                  slli         s3, t6, 24
                  slti         s8, sp, 941
                  slt          s3, a6, a5
                  auipc        gp, 173127
                  addi         a0, a0, -5 #update loop 1 counter
                  sub          s9, t5, a4
                  andi         t4, s6, 682
                  addi         a4, zero, 10 #init loop 0 counter
                  srai         a7, s9, 10
                  auipc        s2, 720983
                  sll          a1, ra, a4
                  addi         t3, zero, 9 #init loop 0 limit
                  sra          ra, s2, s1
sub_2_5_0_t:      slti         s11, a1, -1616
                  ori          t6, a6, -1881
                  slt          s11, a6, t6
                  addi         a4, a4, -8 #update loop 0 counter
                  bgeu         a4, t3, sub_2_5_0_t #branch for loop 0
                  srai         a6, s1, 5
                  lui          s11, 436543
                  slli         ra, a4, 11
                  bne          a0, s0, sub_2_5_1_t #branch for loop 1
                  xor          s6, a0, s1
                  andi         s5, a6, 932
                  blt          s8, a3, 30f
                  or           s0, a6, s9
                  sra          a1, t6, a1
                  xori         ra, t4, 698
                  srai         t0, a5, 19
                  slti         t2, s7, 1075
                  sra          a7, a0, t4
                  xori         t1, a7, 33
                  addi         ra, s6, -1603
                  sub          a6, s5, s10
                  srli         t0, t0, 13
                  auipc        s6, 687998
                  add          s1, t4, s7
                  or           tp, s1, a2
                  add          s0, s6, s9
                  bgeu         sp, s6, 42f
                  xor          zero, s5, t1
                  sltu         a7, s0, a0
30:               andi         s3, a2, 1052
                  auipc        zero, 356726
                  srai         t4, a6, 31
                  srai         a2, ra, 15
                  bge          sp, a3, 39f
                  xor          a0, t0, sp
                  or           s11, a6, s11
                  slti         t3, a2, 1552
                  lui          s5, 937818
39:               bge          s1, t4, 56f
                  ori          a2, s4, 1930
                  srai         a5, s0, 9
42:               xori         s8, a0, -355
                  addi         a1, gp, 1539
                  addi         a5, s1, -617
                  or           a7, s11, s5
                  andi         t5, a1, -1750
                  slli         s9, s8, 5
                  xori         a6, t2, 1605
                  slli         sp, t3, 1
                  slli         a2, t6, 26
                  beq          tp, t5, 53f
                  nop
53:               srl          s5, s1, t6
                  lui          sp, 80440
                  and          ra, s3, t0
56:               and          a4, t5, t3
                  nop
                  sra          t2, a7, s8
                  sltiu        a5, s10, -93
                  slli         s0, s7, 16
                  sltu         a1, t0, a1
                  lui          t1, 142522
                  nop
                  slli         t5, s11, 22
                  sltu         t3, t5, s3
                  nop
                  auipc        a2, 791483
                  srli         a6, a6, 11
                  blt          s11, a3, 72f
                  lui          s8, 968394
                  bltu         a1, t0, 84f
72:               bne          tp, zero, 84f
                  add          s3, a4, gp
                  srli         a5, s7, 13
                  add          s3, a4, a1
                  blt          gp, s11, 80f
                  slt          t4, t6, t3
                  bge          s6, zero, 83f
                  ori          s1, s7, -220
80:               blt          t4, s5, 85f
                  auipc        t6, 596414
                  beq          sp, t3, 98f
83:               auipc        ra, 266745
84:               slli         a4, s10, 29
85:               slti         t5, t0, 854
                  xor          s0, a7, a6
                  sll          s9, zero, s6
                  srli         t5, s1, 6
                  blt          t1, a5, 101f
                  ori          a0, a6, 306
                  slti         tp, s2, -372
                  sltu         zero, a7, a6
                  and          s9, s2, sp
                  srli         t2, a2, 26
                  sub          s1, a6, a3
                  bne          s2, s1, 104f
                  xori         s2, s5, -836
98:               sll          tp, a4, s11
                  lui          t6, 217357
                  srli         s3, t1, 16
101:              sub          a5, ra, zero
                  lui          s5, 638307
                  beq          a4, s11, 116f
104:              and          t4, gp, a2
                  lui          s9, 827376
                  srai         zero, s2, 8
                  bgeu         zero, s9, 112f
                  add          ra, s9, a5
                  srl          ra, s9, t1
                  and          t6, t2, a5
                  sltiu        s8, s10, 1248
112:              xori         t5, s8, 1442
                  srli         a1, a5, 10
                  srai         t5, s9, 4
                  sub          s5, s1, t3
116:              bge          s0, gp, 122f
                  addi         t6, a5, -1408
                  slt          ra, a7, a3
                  andi         s9, t3, -1048
                  lui          s4, 749919
                  srai         s1, t3, 16
122:              sub          a2, t6, ra
                  add          s6, a4, s11
                  blt          s10, s8, 133f
                  bgeu         s3, t5, 127f
                  bgeu         a3, t4, 135f
127:              blt          t2, s11, 129f
                  and          a5, s7, a7
129:              and          s1, t0, t4
                  srl          zero, s9, tp
                  ori          s1, a6, -1062
                  xor          a7, t6, t1
133:              xori         s3, t5, -1564
                  slt          t2, s7, tp
135:              sltu         s6, t3, t0
                  sub          s9, t6, t0
                  srl          gp, t1, t0
                  bge          s7, a0, 155f
                  add          tp, a3, s10
                  or           sp, a3, t6
                  beq          t1, s0, 150f
                  sltiu        sp, t2, -461
                  bge          t0, sp, 161f
                  bltu         a0, a6, 149f
                  xor          t4, t5, a6
                  nop
                  srli         t5, t5, 7
                  ori          s2, t3, -1615
149:              ori          t0, s10, -1761
150:              srai         s9, ra, 1
                  beq          a4, s9, 171f
                  andi         t0, t5, 1406
                  lui          a1, 518076
                  auipc        t0, 748711
155:              xori         s1, t2, 1511
                  or           sp, s3, t0
                  srai         s11, s7, 21
                  sltiu        s2, sp, 1312
                  and          s11, a6, a4
                  srai         s6, s10, 16
161:              lui          s1, 420934
                  blt          s5, s5, 181f
                  bgeu         s9, a4, 165f
                  srai         s6, s2, 26
165:              bltu         t2, t4, 176f
                  sltu         a1, s8, t0
                  add          a0, s3, a2
                  addi         a7, a1, -1067
                  nop
                  slti         a4, a2, 1118
171:              bne          t1, s4, 177f
                  andi         s3, s1, 965
                  add          a2, t2, s2
                  and          tp, t1, a1
                  slt          t5, t1, a7
176:              blt          s8, a3, 179f
177:              lui          a4, 719928
                  beq          a1, s4, 195f
179:              srli         t3, s11, 14
                  addi         zero, gp, -1139
181:              bltu         s6, s11, 186f
                  bge          tp, a7, 187f
                  or           t4, s6, s10
                  slti         a4, s0, -1589
                  sltu         s3, t0, a4
186:              bge          a0, ra, 191f
187:              sll          t2, t0, a6
                  nop
                  sll          s3, a6, gp
                  sll          t3, s3, s7
191:              bltu         a2, a5, 196f
                  slti         a5, s7, -894
                  xor          s0, t4, t4
                  xori         a7, t1, -1001
195:              blt          s10, s2, 203f
196:              srai         tp, t6, 25
                  srl          s11, t6, a0
                  blt          zero, a4, 216f
                  srli         t5, t4, 30
                  auipc        a6, 713667
                  bltu         t2, t4, 213f
                  ori          t1, s6, 59
203:              or           s8, s5, a6
                  bltu         a7, s4, 221f
                  and          t5, s11, a7
                  srl          s6, s0, s7
                  add          a1, t1, s9
                  slti         t6, a6, -1316
                  nop
                  add          t3, s8, a3
                  sltiu        a1, a5, 335
                  blt          t0, a1, 214f
213:              srai         t2, s1, 27
                  addi         a7, zero, 4 #init loop 1 counter
                  or           s4, ra, sp
                  addi         a0, zero, 13 #init loop 1 limit
sub_2_8_1_t:      xor          zero, s5, t2
                  andi         s9, tp, 1117
                  sra          s2, t0, s6
                  srl          s0, gp, s9
                  addi         a7, a7, 6 #update loop 1 counter
                  or           gp, a5, zero
                  addi         t4, zero, 4 #init loop 0 counter
                  addi         t3, zero, 4 #init loop 0 limit
sub_2_8_0_t:      sub          t1, a2, a0
                  srli         s9, t1, 12
                  slt          ra, s10, t2
                  addi         t4, t4, -2 #update loop 0 counter
                  slti         t5, s1, -606
                  sltu         s2, s4, a0
                  srl          s5, a6, a3
                  srli         s9, tp, 10
                  bgeu         t4, t3, sub_2_8_0_t #branch for loop 0
                  slli         s2, t1, 10
                  blt          a7, a0, sub_2_8_1_t #branch for loop 1
                  add          s3, s1, s0
214:              bne          t6, a0, 227f
                  xor          a5, s9, a3
216:              and          t5, sp, s8
                  auipc        zero, 20581
                  andi         s3, t4, 643
                  nop
                  sub          ra, t6, s0
221:              and          a2, a6, a4
                  slt          a7, s2, s7
                  ori          a6, s11, 1806
                  ori          s5, t0, 817
                  addi         tp, zero, -1 #init loop 0 counter
                  slti         s3, ra, -1697
                  andi         t0, a4, 955
                  ori          a4, t0, -1538
                  slli         a1, s6, 13
                  addi         s6, zero, -9 #init loop 0 limit
                  slli         t6, ra, 28
sub_2_13_0_t:     addi         s1, s8, -806
                  addi         tp, tp, -4 #update loop 0 counter
                  slt          t1, s3, a0
                  xor          s0, t5, s0
                  sra          a2, s0, s0
                  andi         s0, s3, 1347
                  slli         a0, s5, 27
                  bge          tp, s6, sub_2_13_0_t #branch for loop 0
                  srai         t2, t3, 15
                  and          s3, a1, a4
                  sra          t4, a0, a6
227:              srli         ra, s9, 0
                  xori         a7, t2, 1901
                  ori          t0, a3, 361
                  srai         s6, s8, 29
                  bgeu         gp, t5, 246f
                  sub          s11, t1, t6
                  blt          a7, ra, 237f
                  ori          a6, tp, 1529
                  auipc        t3, 364182
                  and          s11, s3, s2
237:              bgeu         s6, t1, 253f
                  bgeu         s4, t2, 243f
                  xor          s1, s9, a4
                  sltu         a7, s8, t6
                  bne          s9, s1, 254f
                  sra          a4, t1, s11
243:              srli         t6, t6, 4
                  addi         a5, s11, 1373
                  addi         s6, zero, 10 #init loop 0 counter
                  srl          zero, sp, s3
                  addi         a5, zero, 10 #init loop 0 limit
                  slt          s9, a6, tp
                  sll          s0, a3, s7
sub_2_12_0_t:     sltiu        s8, a5, -204
                  xor          s11, a1, a5
                  addi         s6, s6, -9 #update loop 0 counter
                  bgeu         s6, a5, sub_2_12_0_t #branch for loop 0
                  sll          a6, t2, s10
                  sltu         gp, s11, a4
246:              sub          s6, zero, t0
                  or           ra, a3, s3
                  sra          a4, a1, zero
                  nop
                  nop
                  andi         ra, s6, -1926
                  xori         s4, a5, 941
253:              bne          a7, s0, 254f
254:              andi         s0, tp, 1917
                  xor          a0, a6, tp
                  beq          t2, t0, 265f
                  srai         t3, a4, 5
                  or           a6, s10, a5
                  sra          a5, t1, a3
                  xori         t2, t3, 839
                  sub          gp, gp, a6
                  bgeu         s7, t5, 264f
                  add          gp, zero, a1
264:              and          s5, a3, a4
265:              slti         s2, s0, 159
                  nop
                  bge          t5, t2, 287f
                  andi         t3, a1, -1709
                  slt          t5, s0, t5
                  ori          t4, s3, -924
                  srl          t3, a2, s4
                  sub          s5, sp, t0
                  xor          sp, a4, a6
                  ori          a0, s3, -622
                  and          a2, s0, gp
                  slt          t3, s4, t4
                  bne          t4, s8, 279f
                  xor          a1, s10, tp
279:              slti         t3, t6, 470
                  sra          s1, s8, sp
                  xori         ra, ra, -419
                  xori         gp, t0, 210
                  xor          ra, s11, s0
                  sltiu        t5, a4, 704
                  bne          t0, a7, 297f
                  slli         a2, a3, 18
287:              nop
                  nop
                  addi         s2, s7, 145
                  lui          a5, 763928
                  sra          s1, t3, a7
                  bge          s2, gp, 303f
                  slt          t0, s0, s5
                  xor          t1, a6, s9
                  bge          a3, a7, 314f
                  sltiu        s9, s8, 251
297:              bltu         a3, a2, 306f
                  slt          s0, s1, s5
                  bgeu         a3, t4, 308f
                  xor          s11, t0, s8
                  bgeu         s8, s5, 319f
                  or           a4, a1, s4
303:              lui          s0, 249844
                  nop
                  slli         t5, ra, 8
306:              blt          a4, a6, 308f
                  sub          s0, gp, s9
308:              and          s5, s6, t2
                  slt          a4, t4, a0
                  slti         s9, a4, -35
                  add          a7, t4, zero
                  bne          s10, t3, 317f
                  or           a4, t3, s7
314:              srli         a0, sp, 5
                  xor          s5, zero, a7
                  sltu         t3, t4, sp
317:              blt          t0, s8, 322f
                  addi         tp, a2, 991
319:              sltiu        s5, sp, 782
                  srli         zero, a0, 22
                  addi         t2, t3, -1282
322:              sll          s9, t5, t6
                  srai         a0, gp, 0
                  slti         a5, s1, -1311
                  slli         s3, gp, 3
                  bge          t0, a1, 328f
                  xori         tp, t4, 829
328:              and          zero, a6, a7
                  srli         t6, t5, 14
                  ori          s5, s5, 178
                  and          sp, s11, t5
                  and          a2, s5, t4
                  nop
                  slt          gp, zero, s3
                  srli         s1, s4, 25
                  srli         a7, a5, 13
                  auipc        s5, 681670
                  xor          s6, s11, t0
                  slli         t2, t3, 29
                  srli         t1, t4, 14
                  srli         s1, t4, 9
                  bne          ra, a3, 346f
                  srl          gp, t2, t1
                  ori          a5, t6, -1782
                  and          a6, s3, t2
346:              slli         s4, s9, 28
                  sra          zero, t1, a6
                  nop
                  add          s6, a7, s4
                  blt          t0, t2, 367f
                  bne          a6, a4, 363f
                  sltu         s3, s10, s3
                  xor          a2, t0, t5
                  xori         s8, s1, -1832
                  xor          s9, a7, s6
                  xor          a0, s6, a0
                  ori          t1, t0, -613
                  add          a4, s9, a3
                  srai         s6, s10, 28
                  sltiu        s3, a0, -1950
                  srl          s2, ra, a0
                  xori         t4, a6, 864
363:              sltu         s3, s3, s8
                  slti         s3, a3, -1893
                  andi         t4, ra, 1701
                  srli         t3, s8, 23
367:              beq          s8, s11, 382f
                  sll          s5, t6, tp
                  bge          a6, t5, 381f
                  addi         s0, s9, 1736
                  sltiu        a0, s9, 2040
                  sltiu        t2, s1, -1950
                  nop
                  slti         a5, gp, -265
                  lui          a6, 241494
                  srli         t5, t2, 24
                  xor          t6, t4, a5
                  sltiu        t1, t3, -497
                  sltiu        t5, s1, 1566
                  beq          t6, s3, 382f
381:              srai         s6, t1, 6
382:              and          t2, a5, ra
                  sltu         s11, a1, a4
                  add          t4, a1, a0
                  srai         a2, a7, 9
                  srai         s4, s1, 4
                  and          a1, a4, s0
                  beq          a4, a1, 397f
                  sub          a2, s0, s7
                  xori         s9, t3, -521
                  slti         a0, t5, -487
                  nop
                  lui          t5, 311470
                  and          s8, a5, a1
                  srai         s5, s0, 3
                  ori          t3, t4, -1604
397:              lui          ra, 289036
                  slli         gp, a7, 23
                  bgeu         s5, s6, 415f
                  sra          s4, s0, s5
                  ori          tp, ra, -1916
                  slli         a2, s2, 0
                  addi         a5, s7, 316
                  nop
                  slli         a0, t1, 25
                  bne          tp, s4, 409f
                  srai         t0, a3, 9
                  sltu         a5, a6, t6
409:              beq          ra, t4, 426f
                  or           s5, a5, s9
                  xor          s8, s11, s1
                  andi         sp, t6, 1060
                  andi         a4, a3, 1208
                  slli         t6, s7, 3
415:              beq          t3, a0, 433f
                  bgeu         tp, t0, 421f
                  bgeu         s3, s1, 422f
                  and          tp, s10, s7
                  add          s5, a7, gp
                  sll          a7, s8, t4
421:              beq          a3, s10, 440f
422:              slti         s5, a3, -1648
                  sra          tp, a7, s9
                  srl          t4, zero, s2
                  sll          t6, gp, s8
426:              sra          sp, a5, t0
                  sra          s9, s4, t3
                  blt          s8, ra, 448f
                  andi         a4, t6, 718
                  xor          t3, zero, a5
                  addi         t2, a7, 1310
                  add          s1, a1, s7
433:              add          t5, t3, tp
                  beq          s8, a5, 452f
                  slli         a0, a3, 15
                  srl          s11, s10, s10
                  slti         t1, s11, 913
                  blt          s4, a6, 449f
                  xori         a6, a1, 1989
440:              bgeu         a6, sp, 446f
                  auipc        t3, 998072
                  srl          sp, s10, t2
                  blt          t5, tp, 456f
                  bgeu         s2, s2, 453f
                  blt          t5, a0, 454f
446:              srai         s0, ra, 0
                  sltiu        a5, s4, 846
448:              xor          a0, s8, s5
449:              sra          s3, s3, tp
                  or           s4, t3, s6
                  slt          s5, s6, s2
452:              sll          t4, t2, t6
453:              blt          s0, tp, 454f
454:              bgeu         s9, t5, 459f
                  ori          t3, s5, -1693
456:              beq          zero, s10, 464f
                  bne          s7, sp, 459f
                  bgeu         s6, t1, 471f
459:              addi         gp, t3, 285
                  xori         zero, s11, -134
                  sub          s8, t2, ra
                  addi         ra, s4, 1227
                  auipc        sp, 333259
464:              auipc        a1, 877306
                  slt          a5, s8, a0
                  beq          s7, s3, 468f
                  xor          s8, a5, a2
468:              bne          s7, t1, 470f
                  sll          a0, zero, a7
470:              auipc        s9, 420379
471:              sub          s8, t4, s4
                  bgeu         a4, t4, 490f
                  and          sp, a3, s0
                  ori          s11, t1, -838
                  srli         s0, s11, 3
                  sra          s8, gp, a3
                  sub          s9, a6, s7
                  andi         s0, s1, -432
                  srl          a7, a7, s7
                  nop
                  slt          a0, a0, a6
                  or           s9, gp, sp
                  sub          t2, zero, a4
                  sra          s9, zero, t4
                  srl          gp, gp, s9
                  auipc        a0, 113012
                  bge          t0, a1, 498f
                  bgeu         a2, s3, 490f
                  srai         s4, a6, 2
490:              slt          s3, s0, t2
                  srai         s2, a3, 26
                  blt          s3, s11, 495f
                  ori          ra, s0, 1595
                  bge          a1, a0, 511f
495:              ori          tp, t5, 1599
                  sra          s4, zero, s1
                  srai         s2, zero, 29
498:              slli         s1, a7, 31
                  addi         tp, sp, 1285
                  and          s4, s4, tp
                  xori         a7, a4, 2022
                  sltiu        s9, s8, 907
                  lui          t2, 129409
                  slti         t2, s10, 1979
                  bge          t1, ra, 510f
                  bne          a1, t4, 519f
                  ori          a1, a0, -438
                  slti         s4, t2, -692
                  sll          s8, a0, s7
510:              beq          s5, a1, 512f
511:              auipc        t1, 477062
512:              sra          a5, a2, s7
                  auipc        sp, 637152
                  sra          s4, sp, gp
                  blt          sp, t5, 528f
                  slli         t1, t4, 20
                  slti         s5, a1, 1358
                  ori          a4, t5, 250
519:              sltu         s11, t5, t2
                  addi         s11, zero, -1927
                  sll          s2, t2, s4
                  slti         a0, t4, 1627
                  sltiu        a5, a6, 514
                  addi         t0, t0, -1355
                  xor          t5, s2, s10
                  sub          s1, gp, a4
                  addi         t5, zero, -405
528:              slli         s1, t1, 11
                  add          s5, s2, sp
                  srai         t5, a3, 8
                  srai         s11, a3, 31
                  andi         a4, t2, -642
                  add          s2, tp, s7
                  sltu         s8, s8, s8
                  nop
                  srai         s0, tp, 31
                  srl          a6, sp, a0
                  xori         sp, gp, -1379
                  nop
                  slli         t5, a2, 1
                  bge          s3, s10, 560f
                  xor          s4, t0, s5
                  slli         t4, s10, 19
                  bge          s1, s5, 549f
                  auipc        t5, 587384
                  xori         t3, t3, -1496
                  xor          s5, s0, t2
                  add          t6, a1, a2
549:              add          zero, s6, t5
                  bltu         t3, s6, 562f
                  add          t6, t2, t5
                  add          s9, s2, t1
                  xori         t4, s7, 1015
                  slt          s5, a6, s8
                  sltiu        t3, s6, -1772
                  slti         ra, a5, -937
                  bltu         s2, s11, 566f
                  slli         s5, s7, 25
                  auipc        s4, 2127
560:              or           s9, t2, ra
                  beq          s1, gp, 577f
562:              sltiu        t1, s6, 808
                  bge          s0, a5, 568f
                  ori          t4, t2, -1382
                  bgeu         s3, s3, 566f
566:              ori          s3, a5, 927
                  or           gp, s8, a4
568:              sll          a7, t1, a7
                  slti         a6, a0, -527
                  andi         t4, sp, -1766
                  sltu         t3, a7, a6
                  xori         s1, s6, -561
                  srl          a0, zero, t6
                  or           a4, s10, a7
                  add          gp, a4, s6
                  lui          a2, 577729
577:              sltu         a5, s1, s11
                  sra          a7, t5, t6
                  beq          t0, s0, 584f
                  slt          t2, s10, s9
                  bne          s0, s10, 583f
                  srai         t6, ra, 28
583:              bltu         t4, t6, 588f
584:              blt          t6, s7, 602f
                  ori          a5, s8, 512
                  ori          s11, s3, -573
                  or           t5, s5, t4
588:              nop
                  srli         t4, s5, 6
                  sltiu        tp, zero, 285
                  srli         zero, s10, 25
                  slli         s4, t3, 15
                  auipc        s8, 14443
                  slti         t5, s3, 742
                  blt          a1, s6, 612f
                  addi         s9, s2, -625
                  sra          ra, t6, a4
                  or           t0, s5, t4
                  addi         s6, ra, -509
                  srli         zero, t6, 30
                  bne          t6, a4, 613f
602:              sra          s11, a0, s11
                  sltu         a5, s6, s5
                  andi         s2, tp, 366
                  lui          ra, 948902
                  slt          s9, s4, tp
                  xor          a7, s6, t4
                  and          a2, s9, s11
                  sra          zero, a4, ra
                  xori         a1, t0, -1106
                  blt          t4, s9, 626f
612:              nop
613:              sltu         s5, s1, a6
                  bgeu         t3, s6, 618f
                  andi         s8, s4, 1348
                  slt          s6, s11, a1
                  xori         s11, a5, 1958
618:              andi         s9, s6, 2009
                  auipc        t6, 994157
                  xori         t6, a3, 1459
                  slt          s2, tp, s5
                  slli         zero, s6, 31
                  sltiu        t4, s0, 1613
                  lui          a0, 914692
                  lui          zero, 140250
626:              blt          a2, s2, 635f
                  add          s2, a2, s6
                  sll          gp, sp, t3
                  sltu         t6, zero, s10
                  xor          ra, t6, s3
                  slt          s3, s10, s4
                  slli         ra, s2, 11
                  sub          a5, s11, ra
                  sll          t1, a7, s11
635:              addi         s1, s1, 1843
                  or           s5, s6, s10
                  add          a4, s6, s3
                  bge          s11, t5, 647f
                  add          a2, t6, t1
                  andi         s2, a0, 932
                  bltu         zero, s6, 661f
                  auipc        t6, 329721
                  blt          t1, t3, 649f
                  and          s2, s10, t5
                  slli         s1, a3, 18
                  srai         s2, s3, 26
647:              addi         gp, t0, -563
                  srl          a5, s7, a1
649:              bgeu         a5, s6, 657f
                  bne          t4, gp, 662f
                  slli         t1, a4, 7
                  bgeu         t2, ra, 656f
                  sra          s8, a7, s4
                  srai         a5, s1, 0
                  xor          zero, t6, ra
656:              add          s0, a1, t0
657:              or           s2, ra, a0
                  blt          s5, s3, 676f
                  addi         a6, a6, -1719
                  addi         s3, zero, -3 #init loop 1 counter
                  sra          zero, a5, a5
                  sub          ra, gp, s8
                  sll          a4, s10, s4
                  addi         t6, zero, 13 #init loop 1 limit
                  sub          a2, sp, t6
sub_2_4_1_t:      xor          a6, s11, t1
                  addi         s4, s5, 1323
                  addi         s0, s11, -1143
                  add          s5, ra, s5
                  addi         s3, s3, 4 #update loop 1 counter
                  slt          a1, t4, a5
                  lui          t0, 558444
                  sub          t4, gp, sp
                  lui          tp, 852435
                  nop
                  sll          a6, t6, a0
                  auipc        s8, 412770
                  addi         s11, zero, -9 #init loop 0 counter
                  xor          s5, t2, s6
                  andi         s9, s10, 466
                  addi         s1, zero, 13 #init loop 0 limit
                  add          a1, t0, s11
                  or           t4, t0, a6
sub_2_4_0_t:      xori         a4, tp, 815
                  slti         t5, s11, -1928
                  addi         s11, s11, 6 #update loop 0 counter
                  srai         a2, t4, 24
                  xor          s5, ra, a2
                  bltu         s11, s1, sub_2_4_0_t #branch for loop 0
                  srai         s4, s4, 22
                  bne          s3, t6, sub_2_4_1_t #branch for loop 1
                  ori          t3, zero, 155
                  blt          t4, s11, 665f
661:              sub          s8, a7, t5
662:              sra          a0, a5, s0
                  srai         a0, t6, 17
                  lui          s1, 934954
665:              or           a1, t5, s6
                  or           a2, t5, s0
                  xori         sp, ra, 758
                  blt          tp, s10, 677f
                  lui          tp, 426741
                  beq          s5, t0, 679f
                  bltu         t4, s11, 673f
                  slti         s5, a7, -1165
673:              sll          t1, zero, s2
                  slt          a0, t5, gp
                  xor          a4, sp, s7
676:              sll          a6, s1, s9
677:              bne          t6, a4, 682f
                  sltiu        a4, zero, 1521
679:              addi         s4, s10, 528
                  srai         a2, s6, 28
                  bltu         t2, a7, 693f
682:              sltu         t1, s3, s10
                  auipc        s1, 952616
                  xori         zero, a1, 950
                  bge          sp, t3, 687f
                  srli         a7, a4, 21
687:              bgeu         a0, s2, 704f
                  ori          zero, t0, 1382
                  blt          s10, a0, 691f
                  slli         s5, s2, 2
691:              sltu         t3, ra, a3
                  blt          s0, s4, 706f
693:              and          t1, t6, sp
                  xor          s3, s6, s11
                  bgeu         a5, s5, 700f
                  xor          t5, t0, gp
                  nop
                  sra          t1, s6, s5
                  slti         a7, zero, 1244
700:              bne          t3, a7, 703f
                  sll          a2, a7, t3
                  srl          t6, s11, gp
703:              xori         a6, s6, -2009
704:              sub          sp, a7, t3
                  xori         t1, s8, 1412
706:              nop
                  srli         a6, s8, 28
                  lw           t1, 4(s7)
                  addi         s7, s7, 12
                  or           s5, gp, a4
                  nop
1038:             addi x2, x6, 1
1038:             jalr x2, x2, 0
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
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
                  add x13, x23, zero
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 0x1f
                  beqz x17, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

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
                  add x13, x23, zero
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x17, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x17, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x17, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x17, x5, ecall_handler
                  li x5, 0x1
                  beq x17, x5, instr_fault_handler
                  li x5, 0x5
                  beq x17, x5, load_fault_handler
                  li x5, 0x7
                  beq x17, x5, store_fault_handler
                  li x5, 0xc
                  beq x17, x5, pt_fault_handler
                  li x5, 0xd
                  beq x17, x5, pt_fault_handler
                  li x5, 0xf
                  beq x17, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x23, x13, zero
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
                  add x23, x13, zero
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
                  add x23, x13, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x23, x13, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x23, x13, zero
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
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x23, x13, zero
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
