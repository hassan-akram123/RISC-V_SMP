.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0xc
                  li x1, 0xd496dcfa
                  li x2, 0x8ee9b3ad
                  li x3, 0x80000000
                  li x4, 0xf0cb46c8
                  li x5, 0x0
                  li x6, 0xa1185321
                  li x7, 0x5ea89610
                  li x8, 0x80000000
                  li x9, 0x72665296
                  li x10, 0xfb7ae0f8
                  li x11, 0xb
                  li x12, 0x3
                  li x13, 0xf
                  li x14, 0x9852ee6e
                  li x15, 0x9
                  li x16, 0xd
                  li x17, 0x344d894d
                  li x18, 0xe
                  li x19, 0xf38ade21
                  li x20, 0xf2d7a672
                  li x21, 0xf0de8da5
                  li x22, 0xf99df4ee
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0xff5a131e
                  li x26, 0xd
                  li x28, 0xf3efaee7
                  li x29, 0x0
                  li x31, 0x0
                  la x27, user_stack_end
main:             addi         s5, zero, 4 #init loop 1 counter
                  sltu         s0, a2, a3
                  xori         s9, t1, -250
                  sub          s2, s9, s1
                  addi         t0, zero, 10 #init loop 1 limit
                  slli         a4, t2, 31
                  sra          tp, s11, t1
main_0_1_t:       andi         a7, t2, -1741
                  sra          a5, t3, a1
                  addi         s5, s5, 6 #update loop 1 counter
                  addi         a6, zero, -5 #init loop 0 counter
                  sll          s0, s2, t5
                  slli         s3, t1, 30
                  slli         a7, a0, 14
                  addi         a1, zero, 1 #init loop 0 limit
                  xor          t2, s1, a4
                  nop
main_0_0_t:       addi         ra, s1, 613
                  addi         a6, a6, 7 #update loop 0 counter
                  nop
                  bltu         a6, a1, main_0_0_t #branch for loop 0
                  ori          a7, a2, -822
                  sltiu        t3, s11, 419
                  xor          a2, t3, a2
                  srai         tp, s5, 29
                  bne          s5, t0, main_0_1_t #branch for loop 1
                  sltu         s10, s2, t2
                  ori          s5, t0, 494
                  slt          a6, a6, s3
                  srai         t4, gp, 17
                  slli         s7, ra, 27
                  sll          a2, s10, zero
                  and          s10, s0, s1
                  la           tp, sub_1
                  addi         tp, tp, 501
                  or           t4, gp, a0
                  sub          s4, a3, a4
                  sltiu        t2, s10, -1194
                  bgeu         s1, t4, main_j1 #branch to jump instr
                  sub          s2, s4, gp
                  lui          zero, 528170
main_j1:          jalr         s10, tp, -500 #jump main -> sub_1
                  xor          s1, s11, t5
                  slt          sp, a4, s9
                  andi         a6, t2, -1062
                  sltiu        gp, s0, -1479
                  bltu         a6, gp, 9f
                  sub          a2, a2, t4
9:                slt          a1, a1, t0
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            slt          s6, s8, s8
                  slt          t3, s5, tp
                  addi         s11, s11, -64
                  sw           s10, 4(s11)
                  xor          t2, t3, gp
                  or           s3, a2, zero
                  addi         s0, zero, 8 #init loop 0 counter
                  addi         t3, zero, 14 #init loop 0 limit
sub_2_15_0_t:     slt          s8, t4, a6
                  addi         s0, s0, 1 #update loop 0 counter
                  beq          s0, t3, sub_2_15_0_t #branch for loop 0
                  andi         s1, s1, -1218
                  addi         s3, zero, -3 #init loop 0 counter
                  addi         s7, zero, -5 #init loop 0 limit
sub_2_2_0_t:      slt          ra, s3, t4
                  addi         s3, s3, -1 #update loop 0 counter
                  beq          s3, s7, sub_2_2_0_t #branch for loop 0
                  ori          s0, a2, 1449
                  addi         ra, zero, 9 #init loop 0 counter
                  nop
                  auipc        tp, 520124
                  sltiu        sp, s6, -1136
                  addi         t2, zero, 9 #init loop 0 limit
                  andi         s6, s2, -655
sub_2_22_0_t:     auipc        t0, 218108
                  addi         ra, ra, -8 #update loop 0 counter
                  sub          s7, tp, s9
                  srl          s7, s1, a6
                  sltu         s10, a7, s0
                  bgeu         ra, t2, sub_2_22_0_t #branch for loop 0
                  slt          s10, s8, s4
                  addi         s5, zero, 9 #init loop 1 counter
                  addi         t1, zero, 13 #init loop 1 limit
sub_2_17_1_t:     and          t6, a1, s2
                  addi         s5, s5, 4 #update loop 1 counter
                  addi         s8, zero, 4 #init loop 0 counter
                  sub          s6, s2, t4
                  addi         ra, zero, -16 #init loop 0 limit
sub_2_17_0_t:     sltu         a7, s0, t4
                  addi         s8, s8, -9 #update loop 0 counter
                  andi         s1, t4, 1438
                  bge          s8, ra, sub_2_17_0_t #branch for loop 0
                  bne          s5, t1, sub_2_17_1_t #branch for loop 1
                  slt          t3, a6, t4
                  addi         a0, zero, 7 #init loop 0 counter
                  lui          a4, 662117
                  srli         s9, s9, 8
                  auipc        tp, 576146
                  addi         a5, zero, 19 #init loop 0 limit
                  xori         s6, s2, 1702
                  add          ra, s6, tp
                  add          s8, a4, s8
sub_2_8_0_t:      xori         a7, a0, 573
                  srli         s3, s10, 24
                  auipc        gp, 685438
                  addi         a0, a0, 1 #update loop 0 counter
                  andi         s5, a6, 62
                  add          t6, sp, t1
                  blt          a0, a5, sub_2_8_0_t #branch for loop 0
                  ori          t2, t5, 2
                  addi         t0, zero, -8 #init loop 1 counter
                  addi         a7, zero, 14 #init loop 1 limit
                  ori          t1, gp, 494
                  srai         zero, t6, 31
sub_2_16_1_t:     andi         a1, s0, 788
                  addi         t0, t0, 10 #update loop 1 counter
                  slti         s1, s10, 1229
                  add          a2, s2, s9
                  slti         s2, s2, -468
                  addi         tp, zero, 9 #init loop 0 counter
                  auipc        a4, 410622
                  addi         s9, zero, 8 #init loop 0 limit
sub_2_16_0_t:     sltiu        a6, t1, 233
                  xor          s10, s0, a4
                  addi         tp, tp, -4 #update loop 0 counter
                  bgeu         tp, s9, sub_2_16_0_t #branch for loop 0
                  or           a0, s11, s2
                  bltu         t0, a7, sub_2_16_1_t #branch for loop 1
                  sub          s10, a4, a1
                  addi         a2, zero, 1 #init loop 1 counter
                  or           s6, sp, s1
                  auipc        s10, 93659
                  addi         s0, zero, 14 #init loop 1 limit
                  sltu         s8, t5, s8
                  sra          s8, gp, t0
                  and          s2, t3, gp
                  ori          s7, s11, 2036
sub_2_18_1_t:     nop
                  addi         a2, a2, 10 #update loop 1 counter
                  xor          a7, s9, tp
                  xor          sp, t0, a6
                  srl          ra, t6, s0
                  sub          ra, s4, s3
                  auipc        t3, 348538
                  srai         s5, s3, 24
                  ori          s3, s6, -1095
                  addi         s10, t4, 831
                  addi         a6, zero, 3 #init loop 0 counter
                  addi         s5, s8, 130
                  sltiu        s9, a4, 1764
                  addi         tp, zero, 19 #init loop 0 limit
sub_2_18_0_t:     sltu         ra, t3, s7
                  addi         a6, a6, 2 #update loop 0 counter
                  xori         s9, zero, -1286
                  and          t0, zero, s5
                  blt          a6, tp, sub_2_18_0_t #branch for loop 0
                  slti         s6, s6, 1833
                  blt          a2, s0, sub_2_18_1_t #branch for loop 1
                  andi         t3, t0, 1000
                  addi         a4, zero, 0 #init loop 0 counter
                  auipc        sp, 856293
                  sll          s3, t2, s9
                  slti         s7, a1, 1065
                  slti         s9, a2, 1188
                  sub          s5, t4, t6
                  lui          s5, 549957
                  andi         sp, s1, -1753
                  addi         a5, s1, -764
                  addi         t0, zero, 13 #init loop 0 limit
                  lui          sp, 76044
                  or           s2, a0, a2
                  andi         s1, a0, -210
                  sub          ra, s10, a4
                  lui          s9, 535358
sub_2_13_0_t:     slti         t4, a4, 1212
                  sltu         s3, s5, zero
                  addi         a4, a4, 8 #update loop 0 counter
                  slt          a7, a7, s5
                  slli         t6, t6, 21
                  sub          tp, s11, s4
                  ori          a1, a3, -1473
                  slt          s10, zero, t3
                  add          t6, t3, t0
                  auipc        t2, 969278
                  add          s5, a4, sp
                  auipc        t2, 487813
                  slli         a7, s2, 23
                  blt          a4, t0, sub_2_13_0_t #branch for loop 0
                  slt          s7, s2, s6
                  addi         a6, zero, 1 #init loop 0 counter
                  sra          tp, a2, a5
                  nop
                  auipc        a1, 111917
                  srl          a1, a3, s6
                  sll          s3, s3, t2
                  addi         s1, t4, 1643
                  or           a4, s10, a3
                  srl          s9, s9, s7
                  ori          a7, t5, 1221
                  srl          s9, s8, s10
                  addi         t3, zero, 14 #init loop 0 limit
sub_2_19_0_t:     andi         s9, a6, 700
                  and          s7, a3, zero
                  addi         a6, a6, 10 #update loop 0 counter
                  and          zero, a5, t5
                  srl          sp, sp, s9
                  sltu         a5, a4, sp
                  ori          sp, t4, 1629
                  slt          t4, s1, s8
                  sltu         t0, t6, a3
                  andi         t4, a5, -537
                  or           s0, a4, a5
                  srl          t0, t0, s1
                  ori          s10, s9, -1885
                  and          s4, s7, s2
                  blt          a6, t3, sub_2_19_0_t #branch for loop 0
                  sltu         zero, a3, a0
                  addi         t3, zero, -7 #init loop 1 counter
                  andi         s10, t0, 1689
                  addi         a1, zero, -11 #init loop 1 limit
                  slt          tp, a3, t5
sub_2_23_1_t:     xori         a5, ra, -1313
                  slt          s0, zero, t4
                  addi         t3, t3, -4 #update loop 1 counter
                  sltu         tp, s1, a2
                  addi         s6, zero, 5 #init loop 0 counter
                  addi         t2, zero, -7 #init loop 0 limit
                  auipc        t6, 757230
                  srli         s7, s3, 16
sub_2_23_0_t:     add          s1, s2, gp
                  and          s9, gp, t2
                  addi         s6, s6, -6 #update loop 0 counter
                  srli         t0, t3, 7
                  sll          s5, t3, a1
                  beq          s6, t2, sub_2_23_0_t #branch for loop 0
                  srl          s1, a6, a5
                  bge          t3, a1, sub_2_23_1_t #branch for loop 1
                  slti         t0, a5, -386
                  addi         t0, zero, 10 #init loop 0 counter
                  sra          s7, t1, t0
                  or           s8, a7, a3
                  add          s0, tp, s3
                  xori         s5, s3, -1434
                  nop
                  sra          ra, t5, t1
                  srli         sp, gp, 10
                  addi         s1, s8, -4
                  addi         t6, zero, -5 #init loop 0 limit
sub_2_4_0_t:      sltu         ra, ra, s8
                  addi         tp, zero, 1045
                  addi         t0, t0, -10 #update loop 0 counter
                  or           tp, t1, s2
                  sub          ra, gp, s10
                  bge          t0, t6, sub_2_4_0_t #branch for loop 0
                  srli         gp, t4, 16
                  addi         a0, zero, 10 #init loop 0 counter
                  lui          s7, 180449
                  addi         t2, zero, 20 #init loop 0 limit
                  srai         s2, s5, 7
                  auipc        t4, 333882
                  xori         a1, a2, 435
                  xori         t1, s3, -519
                  sub          s5, s3, s4
                  sltu         ra, t0, s7
                  andi         sp, gp, -962
sub_2_11_0_t:     nop
                  andi         t6, s4, 1558
                  addi         a0, a0, 1 #update loop 0 counter
                  xor          s1, a3, a2
                  sub          t6, a2, s5
                  addi         t3, t1, -1293
                  slt          a7, s8, a6
                  xori         zero, a4, 372
                  xor          a2, a2, s8
                  sltiu        t4, t2, 2038
                  lui          s9, 26680
                  nop
                  sra          a1, s6, a5
                  xor          a2, s6, a7
                  xori         tp, t1, 428
                  srai         a7, tp, 29
                  andi         s9, t5, -54
                  sra          s8, a5, t0
                  beq          a0, t2, sub_2_11_0_t #branch for loop 0
                  or           sp, zero, a1
                  addi         s2, zero, 6 #init loop 1 counter
                  slli         gp, sp, 17
                  add          a0, a1, s4
                  andi         sp, t1, 434
                  addi         t6, zero, -15 #init loop 1 limit
                  andi         s6, s6, 236
                  srai         a5, a3, 25
sub_2_12_1_t:     lui          a1, 621567
                  addi         s2, s2, -7 #update loop 1 counter
                  addi         s7, a1, 798
                  auipc        zero, 916704
                  srli         ra, t1, 0
                  slli         s5, ra, 31
                  sltiu        t4, gp, 1116
                  sra          s10, sp, a5
                  auipc        a4, 914942
                  addi         s9, zero, 6 #init loop 0 counter
                  srli         s8, s6, 6
                  addi         a2, zero, 3 #init loop 0 limit
                  slti         s1, s11, 1071
                  sltiu        s5, t3, -1
                  andi         t4, gp, 2022
                  addi         s4, a4, -1566
sub_2_12_0_t:     or           t2, s3, t5
                  nop
                  addi         s9, s9, -1 #update loop 0 counter
                  bgeu         s9, a2, sub_2_12_0_t #branch for loop 0
                  andi         t0, t6, -946
                  beq          s2, t6, sub_2_12_1_t #branch for loop 1
                  srl          t3, t3, t3
                  addi         s10, zero, 7 #init loop 1 counter
                  andi         t1, a4, -1183
                  sll          s5, a7, t3
                  sltiu        t6, a5, 1920
                  and          s1, s9, t5
                  addi         a4, zero, -5 #init loop 1 limit
                  and          t6, a3, a0
                  sll          a0, zero, s11
sub_2_3_1_t:      sub          t0, s10, tp
                  add          a1, s6, s5
                  auipc        s4, 145013
                  addi         t0, gp, -1363
                  addi         s10, s10, -8 #update loop 1 counter
                  slt          a5, s6, s5
                  addi         tp, zero, 1 #init loop 0 counter
                  addi         s8, zero, 11 #init loop 0 limit
                  xor          s9, a1, s6
sub_2_3_0_t:      slti         s5, a3, -1111
                  slti         sp, zero, 439
                  sub          t1, s4, s3
                  addi         tp, tp, 10 #update loop 0 counter
                  xor          s2, s11, t4
                  addi         s3, a3, 2038
                  bne          tp, s8, sub_2_3_0_t #branch for loop 0
                  srai         t1, s4, 1
                  or           t0, s0, t6
                  bge          s10, a4, sub_2_3_1_t #branch for loop 1
                  add          sp, t5, t6
                  addi         s3, zero, -1 #init loop 0 counter
                  auipc        tp, 529360
                  addi         a7, zero, -5 #init loop 0 limit
                  addi         zero, a3, -1822
                  lui          a1, 48377
sub_2_0_0_t:      xor          s7, s1, s3
                  addi         s3, s3, -6 #update loop 0 counter
                  and          s8, ra, ra
                  add          s4, s10, s6
                  slti         t6, s5, 1847
                  addi         s6, s9, -292
                  bge          s3, a7, sub_2_0_0_t #branch for loop 0
                  sra          a0, a1, t1
                  addi         t2, zero, 10 #init loop 0 counter
                  sltiu        s8, zero, 210
                  addi         a6, zero, 16 #init loop 0 limit
                  lui          s6, 306455
                  auipc        t1, 558093
sub_2_7_0_t:      slti         t6, a6, 183
                  slli         zero, s0, 25
                  nop
                  nop
                  auipc        t6, 15194
                  addi         t2, t2, 8 #update loop 0 counter
                  srli         t3, s5, 19
                  andi         s5, s7, -1627
                  blt          t2, a6, sub_2_7_0_t #branch for loop 0
                  sra          a0, a6, a0
                  bgeu         a7, s7, 12f
                  la           s5, sub_4
                  sltu         t4, s5, sp
                  andi         t3, a4, -1182
                  addi         s5, s5, 350
                  lui          s0, 259271
                  sll          a1, t3, t6
                  srl          s4, a1, s9
                  srai         zero, gp, 15
                  auipc        tp, 73518
                  add          a7, a3, t2
                  andi         a6, ra, -498
                  bge          a5, t6, sub_2_j5 #branch to jump instr
                  sltu         s10, a7, ra
sub_2_j5:         jalr         s10, s5, -350 #jump sub_2 -> sub_4
                  bltu         sp, ra, 13f
                  xor          s5, a0, a4
                  auipc        s6, 455753
                  srli         a6, a4, 12
                  bne          s1, t6, 25f
                  andi         t3, s11, 1680
                  addi         t4, gp, 1472
                  xor          a5, s9, s8
                  bge          a7, zero, 13f
                  sub          s1, s0, t5
                  addi         a4, zero, 6 #init loop 1 counter
                  auipc        ra, 276736
                  addi         s3, zero, 4 #init loop 1 limit
sub_2_14_1_t:     auipc        a2, 77881
                  sra          t1, a2, a2
                  addi         a4, a4, -3 #update loop 1 counter
                  addi         s4, zero, 7 #init loop 0 counter
                  srai         a2, s5, 9
                  addi         s7, zero, -17 #init loop 0 limit
sub_2_14_0_t:     andi         s5, a0, 1324
                  addi         s4, s4, -8 #update loop 0 counter
                  and          t0, s10, a0
                  beq          s4, s7, sub_2_14_0_t #branch for loop 0
                  xori         tp, a5, 1766
                  bgeu         a4, s3, sub_2_14_1_t #branch for loop 1
                  srli         t1, t4, 17
                  ori          s0, s2, -20
12:               bge          a5, t3, 21f
13:               bne          s2, ra, 20f
                  add          a7, s8, s8
                  and          a7, t1, s11
                  addi         s2, t0, 658
                  nop
                  blt          s8, tp, 23f
                  sltu         a2, t4, t0
20:               xori         s3, s5, 1196
21:               bge          t6, a3, 26f
                  bge          sp, t2, 29f
23:               and          sp, a0, t5
                  sll          a2, t6, gp
25:               sra          gp, sp, a2
26:               sra          a1, s3, t3
                  bge          s3, gp, 28f
28:               or           gp, t5, a4
29:               nop
                  lui          s1, 466075
                  srl          a5, s5, sp
                  blt          t0, s4, 44f
                  bgeu         a1, gp, 35f
                  and          a2, s4, s5
35:               andi         a1, s0, 2008
                  srli         gp, a2, 13
                  bne          a2, t2, 57f
                  sra          ra, s7, ra
                  srli         s0, s11, 13
                  xor          s1, s11, s4
                  xori         a5, s10, -708
                  andi         s3, a5, 1988
                  sll          a5, s11, gp
44:               srai         s6, tp, 21
                  bge          t1, t4, 59f
                  and          a5, s11, t5
                  srl          t0, ra, t2
                  add          t1, s3, a7
                  slti         s6, s3, -943
                  ori          tp, tp, -1513
                  andi         s2, t6, -533
                  sltiu        sp, s4, 736
                  add          t1, a3, a7
                  addi         gp, a7, 1999
                  srai         s4, a1, 20
                  xori         s1, s6, 96
57:               srli         s4, tp, 18
                  xori         t0, t1, 129
59:               srl          s7, t0, s8
                  slli         s7, s0, 13
                  blt          s1, a5, 79f
                  slli         zero, a1, 23
                  auipc        s4, 687922
                  slt          s7, a6, s6
                  bge          s1, s2, 78f
                  sll          a5, s7, s1
                  bge          t6, zero, 79f
                  beq          a6, gp, 80f
                  or           ra, t5, a7
                  lui          s5, 850756
                  xori         tp, s2, -845
                  xori         tp, s4, -68
                  bne          s6, t2, 91f
                  slli         tp, zero, 11
                  srli         s3, a2, 12
                  slli         tp, s3, 28
                  andi         s10, s4, -590
78:               sll          s9, s7, t1
79:               xori         s0, t6, -1554
80:               sll          s8, sp, s9
                  add          s5, s3, tp
                  xor          s10, ra, a6
                  slti         a1, t1, 869
                  sub          s4, a0, s7
                  bgeu         s1, t5, 95f
                  slt          t0, s5, t0
                  bgeu         a7, zero, 107f
                  ori          a1, s7, 391
                  xori         a4, sp, 705
                  srli         a4, s1, 25
91:               sra          s8, s4, a5
                  sltu         a7, a4, a2
                  xori         a5, t3, 1559
                  bgeu         s11, s8, 99f
95:               sltiu        gp, t6, 534
                  nop
                  lui          sp, 97114
                  addi         s0, a5, 1127
99:               auipc        s9, 826675
                  sltu         s2, s2, zero
                  or           s7, a6, a3
                  beq          t6, sp, 106f
                  blt          tp, s2, 111f
                  sll          t6, t2, a4
                  bne          s11, s1, 108f
106:              sltu         ra, s4, t1
107:              xor          s9, a0, ra
108:              xor          a5, tp, sp
                  xor          a4, a5, s10
                  ori          sp, t3, -1592
111:              nop
                  xori         a6, a5, 1547
                  add          a7, tp, t3
                  lui          a1, 218940
                  srli         s1, s4, 14
                  nop
                  sll          zero, t1, t6
                  blt          t5, s8, 135f
                  slli         s5, zero, 4
                  bgeu         sp, gp, 127f
                  sra          zero, t5, ra
                  ori          tp, s5, -1751
                  slt          ra, s7, t0
                  slti         s10, s1, 1986
                  auipc        s5, 776216
                  sra          a4, s5, s4
127:              bgeu         s8, t2, 133f
                  lui          a0, 127176
                  add          a6, t5, t2
                  sub          zero, a4, s3
                  addi         s7, zero, -6 #init loop 0 counter
                  addi         a4, zero, -13 #init loop 0 limit
sub_2_9_0_t:      and          t6, zero, t1
                  srl          s6, zero, a2
                  addi         s7, s7, -7 #update loop 0 counter
                  beq          s7, a4, sub_2_9_0_t #branch for loop 0
                  srli         a0, a7, 6
                  blt          t5, zero, 144f
                  slti         s0, a2, -1225
133:              addi         a1, zero, 992
                  bge          t2, t2, 153f
135:              srli         s6, a5, 3
                  addi         s10, s4, 1468
                  auipc        s5, 501038
                  sll          t3, a5, s2
                  beq          t0, a4, 147f
                  sub          s8, zero, ra
                  nop
                  lui          t4, 220609
                  and          t3, zero, a3
144:              ori          t2, t0, -957
                  and          t3, t5, s10
                  sll          t2, s10, a6
147:              xori         a6, a2, -727
                  srl          a0, s11, s9
                  beq          ra, s4, 156f
                  slt          sp, zero, s9
                  slli         t2, t3, 23
                  srli         t6, a0, 0
153:              blt          s4, tp, 157f
                  andi         s3, zero, 1763
                  ori          t6, t1, -2013
156:              xori         t0, s1, 655
157:              srl          a0, a7, zero
                  auipc        ra, 765560
                  bltu         s11, s3, 171f
                  xori         a4, tp, -1644
                  xor          t0, a7, a2
                  sltu         t2, s0, a1
                  xor          t1, s10, a1
                  lui          s0, 276326
                  or           s10, a6, s8
                  xor          a0, s3, s7
                  blt          a2, s11, 174f
                  beq          s10, t4, 180f
                  slt          t3, a4, a1
                  sltiu        t0, s5, -421
171:              andi         t3, a4, -1990
                  sra          t4, s11, a7
                  nop
174:              sub          a2, s5, s10
                  bgeu         s1, s9, 181f
                  srli         a5, s2, 27
                  slli         sp, t0, 23
                  xor          t2, t0, a1
                  slt          sp, a0, t5
180:              slt          t2, s5, s5
181:              slt          t3, t2, s6
                  blt          s1, s7, 194f
                  addi         s0, zero, -4 #init loop 0 counter
                  slti         t3, s5, -1218
                  addi         gp, zero, 13 #init loop 0 limit
                  lui          s5, 896797
                  andi         s7, sp, 105
                  or           s10, a6, s0
                  sra          a7, sp, zero
                  srai         a6, ra, 13
                  sra          zero, a5, s7
sub_2_1_0_t:      add          s7, t3, t4
                  andi         t4, s0, 246
                  sltiu        s6, ra, -1293
                  slli         a2, t2, 28
                  slt          s6, a5, a6
                  sra          a7, a1, tp
                  and          s6, a0, a2
                  sll          t2, t2, t1
                  lui          s6, 136255
                  addi         s0, s0, 2 #update loop 0 counter
                  auipc        a4, 463914
                  slt          s5, a7, s3
                  bltu         s0, gp, sub_2_1_0_t #branch for loop 0
                  srai         s8, s5, 1
                  srai         a5, a6, 29
                  andi         tp, sp, -1991
                  lui          a6, 516695
                  bgeu         t6, t6, 206f
                  sub          s5, a0, t3
                  auipc        t1, 267966
                  sra          s1, tp, a3
                  sltiu        s3, t5, -1866
                  sra          sp, s0, t3
                  beq          s5, s10, 206f
                  bge          tp, s1, 206f
194:              auipc        a0, 292180
                  bgeu         gp, gp, 208f
                  sll          s5, t2, tp
                  ori          s4, a4, -216
                  slti         s5, t6, -1524
                  lui          s6, 568486
                  bne          s10, a3, 205f
                  sltiu        ra, s3, -6
                  lui          t3, 1009624
                  auipc        gp, 615995
                  and          t4, t3, a0
205:              sltiu        s4, a0, -1549
206:              add          s7, t5, a2
                  sub          s3, t2, a7
208:              or           s7, sp, zero
                  srl          t0, s11, t6
                  or           s0, a0, s11
                  blt          s9, s2, 223f
                  srli         a6, sp, 9
                  addi         s3, s7, -839
                  slt          s2, s9, a3
                  bge          a5, a4, 235f
                  xor          a1, ra, s6
                  ori          t2, s9, -1451
                  sltiu        t4, s4, 804
                  addi         zero, t3, 647
                  xor          ra, s3, tp
                  bge          t6, a7, 240f
                  slti         zero, gp, -1596
223:              nop
                  or           s7, a4, sp
                  or           t0, a0, a1
                  sra          s1, t3, t3
                  bge          a4, a7, 244f
                  sltiu        a5, s8, 457
                  blt          s8, zero, 239f
                  srai         s3, gp, 23
                  addi         s6, t5, -2035
                  slli         gp, zero, 27
                  ori          t2, t3, -1151
                  lui          zero, 741453
235:              sltiu        t0, a6, 1674
                  srli         zero, s3, 5
                  sltiu        tp, s2, -214
                  bge          tp, s1, 256f
239:              sltu         s5, t5, a7
240:              and          a6, ra, ra
                  xor          a6, a4, a2
                  xori         s9, t0, -1828
                  sra          gp, s11, a1
244:              blt          a3, a7, 245f
245:              bne          s3, s3, 247f
                  beq          t6, gp, 255f
247:              and          a7, a0, t1
                  bge          s11, s6, 268f
                  add          s9, s5, t0
                  sltiu        t2, t6, -347
                  srli         s5, a6, 22
                  srai         a6, t0, 17
                  slt          s0, a3, t1
                  beq          a5, ra, 266f
255:              xor          s0, t5, s7
256:              srai         a2, t2, 18
                  srl          a7, s10, t2
                  srl          gp, ra, s11
                  sub          ra, t6, s11
                  xor          gp, a7, s2
                  slli         s6, a1, 24
                  xor          s8, t1, s5
                  xori         sp, a1, -613
                  srl          t1, a0, s7
                  add          sp, t2, s0
266:              bltu         a7, s2, 271f
                  bge          s6, t0, 285f
268:              beq          s4, t6, 272f
                  bne          a5, a4, 276f
                  srai         s0, s7, 1
271:              srl          a1, a5, s5
272:              bne          a4, a6, 277f
                  or           t4, t5, t6
                  sra          s7, s0, s11
                  slt          s0, s4, t6
276:              and          s3, a0, s6
277:              and          a2, a3, s6
                  bge          t0, t2, 281f
                  bltu         t3, s4, 291f
                  sub          zero, t1, t3
281:              sub          s9, sp, t0
                  bltu         ra, s0, 283f
283:              slli         t0, s10, 27
                  xor          s9, s10, gp
285:              xor          a0, s0, s5
                  sub          gp, t2, s7
                  lui          a2, 277753
                  srai         a1, s6, 26
                  add          s5, s1, t6
                  ori          s4, a1, -983
291:              slt          a0, gp, t6
                  xori         s0, a7, 1153
                  add          t1, sp, s0
                  beq          t0, ra, 299f
                  sltiu        a5, t5, -29
                  bgeu         s2, s5, 309f
                  xori         s5, s2, -1603
                  or           s8, t4, a4
299:              xor          s0, s11, s1
                  ori          s2, a6, 744
                  srai         s1, gp, 3
                  and          s2, s8, t3
                  srai         s7, t3, 3
                  bltu         s5, t3, 322f
                  ori          s10, ra, 881
                  andi         s8, t0, 913
                  sra          t0, t3, tp
                  srli         a4, a1, 8
309:              bne          a7, s10, 329f
                  sll          a0, t6, s7
                  auipc        a7, 403143
                  auipc        a4, 43012
                  sltu         a0, t1, s1
                  blt          s6, s5, 331f
                  bgeu         gp, t6, 328f
                  add          s0, s7, zero
                  srl          s8, t2, t2
                  blt          s10, s10, 325f
                  nop
                  xori         a6, a6, 1127
                  ori          a2, a2, -427
322:              xori         s5, a3, -945
                  bgeu         t2, a1, 343f
                  ori          a0, t5, -786
325:              srl          s4, gp, t4
                  bne          s3, a6, 338f
                  sra          sp, s3, t5
328:              beq          s9, s4, 330f
329:              nop
330:              srl          s3, s10, t5
331:              andi         a5, a1, -1982
                  or           zero, s7, a1
                  xor          a2, t5, a3
                  slt          zero, s9, s0
                  auipc        a5, 21151
                  add          a0, s5, s6
                  srai         a5, sp, 7
338:              slli         t2, a0, 31
                  sll          a4, s8, t4
                  sll          s6, t5, zero
                  xori         s8, s3, -51
                  sra          s1, sp, t4
343:              ori          s0, ra, -108
                  nop
                  ori          t6, t3, -305
                  slti         t6, tp, -1786
                  add          s7, s3, a0
                  sll          t1, sp, t6
                  sll          t2, s8, sp
                  sll          s9, s1, sp
                  sub          gp, s6, tp
                  slti         zero, a7, 1443
                  xor          a2, zero, s7
                  bne          t1, a3, 361f
                  srl          s1, s5, s11
                  xor          a6, sp, s8
                  sra          a1, a0, a7
                  sll          t6, t5, s2
                  sub          s7, s3, a0
                  auipc        t2, 411720
361:              slli         t0, t4, 15
                  xori         t0, s6, 1693
                  auipc        zero, 280267
                  blt          a2, ra, 374f
                  andi         s2, s7, -320
                  bne          s2, s5, 370f
                  blt          sp, tp, 386f
                  bgeu         t5, s1, 375f
                  bltu         t0, gp, 374f
370:              ori          a7, s2, -801
                  add          s9, gp, gp
                  bge          s3, t4, 384f
                  lui          a5, 518589
374:              sll          a6, t2, s6
375:              slt          sp, a5, a7
                  and          gp, ra, s10
                  and          a6, a2, a3
                  and          a7, a6, s7
                  srli         s5, gp, 24
                  bltu         s11, s0, 400f
                  sll          s10, s2, s11
                  addi         a1, zero, 6 #init loop 1 counter
                  xor          s10, a3, s10
                  sltu         a0, t0, t3
                  lui          a0, 357636
                  addi         t6, zero, 6 #init loop 1 limit
                  and          s10, a3, s4
sub_2_21_1_t:     nop
                  srl          a5, a5, a6
                  srli         a5, a1, 6
                  addi         a1, a1, -5 #update loop 1 counter
                  sub          a2, a6, s3
                  addi         t2, zero, 3 #init loop 0 counter
                  sll          s6, s6, zero
                  addi         gp, zero, 6 #init loop 0 limit
                  sltiu        s0, t5, 1200
sub_2_21_0_t:     xori         s3, t0, 1105
                  addi         t2, t2, 3 #update loop 0 counter
                  auipc        a4, 1006057
                  bne          t2, gp, sub_2_21_0_t #branch for loop 0
                  bgeu         a1, t6, sub_2_21_1_t #branch for loop 1
                  sra          a2, a7, a3
                  addi         a7, s10, 1586
                  slli         a4, a6, 14
384:              xor          a4, a2, ra
                  bne          s9, a6, 393f
386:              bltu         t2, s1, 398f
                  lui          a0, 953526
                  sra          a5, t4, a3
                  auipc        s1, 69275
                  and          s9, s11, t2
                  slli         t2, s7, 10
                  xor          s2, a2, ra
393:              sub          s6, tp, a4
                  bne          s6, a2, 400f
                  auipc        s3, 245233
                  add          a7, t2, s4
                  beq          t3, ra, 406f
398:              add          zero, a7, sp
                  bltu         a2, s4, 417f
400:              slt          t2, s0, gp
                  beq          t3, s4, 405f
                  bne          a0, s10, 405f
                  xor          a0, zero, s6
                  sra          s0, a0, t0
405:              sltu         s4, t4, t3
406:              add          s9, s9, a2
                  xori         a5, s3, -29
                  srl          s1, s8, a0
                  slti         tp, s6, 254
                  lui          t2, 999113
                  sltu         s9, t4, sp
                  bltu         s11, a3, 424f
                  auipc        a6, 376881
                  srli         s10, t4, 9
                  srl          t3, a2, t2
                  srai         tp, sp, 1
417:              sra          tp, s5, a2
                  bge          s2, t2, 423f
                  bne          a1, t0, 433f
                  addi         t0, tp, 559
                  addi         s1, zero, 3 #init loop 0 counter
                  lui          s9, 576446
                  addi         s8, zero, 9 #init loop 0 limit
                  andi         a5, t4, 849
                  nop
                  sra          gp, s10, sp
sub_2_6_0_t:      sub          s10, s5, s3
                  addi         s1, s1, 1 #update loop 0 counter
                  and          t3, t1, zero
                  beq          s1, s8, sub_2_6_0_t #branch for loop 0
                  sltu         s0, s3, t1
                  sra          a5, a7, a3
                  sltu         zero, a0, t3
423:              slli         s9, a5, 8
424:              beq          s10, t1, 431f
                  lui          t1, 340923
                  slti         a6, t6, -962
                  nop
                  blt          s5, s9, 435f
                  bgeu         a1, sp, 438f
                  sltiu        a1, s4, 1225
431:              add          ra, gp, t5
                  bne          a4, s9, 444f
433:              bltu         s8, s6, 447f
                  sll          s0, s11, zero
435:              beq          a1, s1, 440f
                  slli         s3, t0, 2
                  srli         t4, tp, 5
438:              slli         s8, gp, 1
                  bltu         t0, a6, 456f
440:              srl          s7, sp, a4
                  nop
                  xori         t3, s0, -1939
                  and          sp, t4, a7
444:              sra          t0, s8, s4
                  andi         t0, t4, -1672
                  bge          t5, s2, 458f
447:              xori         a6, s4, 31
                  sll          a5, s2, s7
                  sltu         s1, s7, t6
                  bgeu         s10, a4, 470f
                  bgeu         s2, a0, 463f
                  slti         s8, sp, 1697
                  sra          s3, s10, t3
                  xori         a0, a6, -1809
                  add          s0, s4, t3
456:              bltu         a7, t0, 476f
                  srli         s3, a4, 24
458:              sltu         s6, s1, t2
                  srai         a4, a5, 23
                  addi         t4, s2, -1811
                  slli         a2, s5, 20
                  bne          t3, s3, 475f
463:              bge          s4, a6, 466f
                  andi         a4, s11, -1484
                  bgeu         a0, s3, 477f
466:              beq          t4, a7, 470f
                  bne          s6, a0, 468f
468:              bne          t3, a2, 472f
                  sltiu        s10, s6, -318
470:              andi         t6, a0, -1
                  sub          s7, t3, sp
472:              xori         t0, t1, 76
                  sll          s10, s5, ra
                  bgeu         gp, s3, 481f
475:              auipc        s2, 773659
476:              sltu         t2, zero, s6
477:              bgeu         s4, t0, 482f
                  sub          gp, s9, a3
                  slli         s1, t6, 10
                  sltu         a2, s9, s4
481:              sltiu        s9, t6, -1336
482:              sub          t6, t2, s9
                  nop
                  bltu         tp, s8, 503f
                  xor          gp, sp, t2
                  lui          t0, 968021
                  and          s3, t5, t4
                  xor          a2, a7, a1
                  srai         s3, tp, 31
                  add          s6, s0, s2
                  slti         s2, t0, -1446
                  blt          sp, a1, 500f
                  sub          a4, s3, a7
                  slt          ra, s7, s4
                  auipc        a4, 703019
                  ori          s1, a1, 2005
                  auipc        ra, 375630
                  or           t6, a3, s8
                  bne          t2, s8, 519f
500:              xori         gp, zero, -136
                  ori          s8, t6, 1686
                  sll          s9, t6, s6
503:              blt          a6, t6, 521f
                  or           tp, a7, a5
                  nop
                  slti         t1, t0, -393
                  slti         s10, s8, 1988
                  or           a4, a5, tp
                  slt          s3, s4, s11
                  add          ra, s3, s11
                  slti         s10, a5, 586
                  sra          a1, t1, s1
                  lui          t3, 423244
                  bge          s10, t6, 516f
                  sltiu        a6, a2, -376
516:              bltu         t6, s6, 529f
                  bgeu         s8, t5, 529f
                  and          s1, s10, s3
519:              bgeu         t6, a6, 529f
                  and          s10, a1, s8
521:              sltiu        a1, sp, 954
                  sra          a0, zero, zero
                  sra          s6, t1, t5
                  bltu         t2, s10, 542f
                  sub          t3, gp, s1
                  bltu         ra, a0, 531f
                  addi         s8, t4, -516
                  sll          s6, a4, a6
529:              addi         t0, t3, -1803
                  and          s3, s2, s7
531:              andi         s3, t6, 1726
                  nop
                  xori         t4, s11, -1856
                  xor          s8, a0, a2
                  srai         tp, s5, 21
                  add          a2, a6, t2
                  slli         s1, s4, 15
                  slli         a2, a5, 14
                  xori         t0, t2, -552
                  lui          zero, 863219
                  blt          a2, a2, 547f
542:              sltiu        gp, sp, 510
                  beq          s3, s3, 544f
544:              sub          s2, t2, s0
                  srl          s7, s1, s7
                  srl          t0, t5, a7
547:              or           gp, a4, zero
                  xor          a7, sp, t3
                  andi         s5, sp, 1823
                  srli         s10, s11, 7
                  bgeu         s5, zero, 563f
                  sltiu        s0, t6, 0
                  xori         gp, s9, -681
                  lui          sp, 483241
                  slti         s4, t5, 340
                  or           s10, s4, t4
                  sll          s0, a1, t4
                  and          t0, zero, t5
                  xor          gp, s1, s9
                  add          t2, s8, a7
                  andi         s1, s9, -1369
                  beq          t0, t2, 572f
563:              lui          a2, 634850
                  srl          t0, s0, s11
                  bltu         s2, s1, 577f
                  addi         s0, a3, 530
                  slli         s2, s6, 24
                  nop
                  bge          s0, t3, 576f
                  slti         t3, a1, 752
                  add          ra, t5, sp
572:              xor          tp, s10, s5
                  ori          a4, a0, 626
                  sltiu        a0, a5, 1565
                  bltu         s6, t2, 595f
576:              bge          tp, a3, 584f
577:              blt          ra, a2, 586f
                  sltu         sp, a6, a1
                  bltu         zero, s8, 585f
                  sll          s10, t2, s0
                  or           t0, t3, a3
                  sub          tp, sp, t2
                  and          a5, a6, s0
584:              srli         s3, ra, 14
585:              xor          a5, t6, s11
586:              xor          t4, a2, ra
                  nop
                  sltiu        zero, a7, -17
                  ori          s10, s4, -1827
                  bne          s7, s7, 592f
                  srai         a0, a2, 0
592:              beq          t2, s3, 604f
                  blt          a2, s10, 600f
                  addi         t3, t2, -1025
595:              xori         t3, s0, -1641
                  blt          a4, s10, 599f
                  ori          s7, t1, -206
                  sra          s7, a5, s9
599:              xor          t0, gp, s10
600:              sll          s10, zero, a6
                  lui          sp, 9302
                  sltiu        t2, ra, -362
                  bge          a2, a6, 616f
604:              blt          a4, s4, 608f
                  sll          zero, s9, zero
                  sltu         s8, s6, t1
                  bne          s3, a4, 611f
608:              sltiu        gp, a6, -1913
                  nop
                  bltu         a1, s11, 615f
611:              bgeu         zero, t3, 631f
                  addi         t1, t0, 620
                  beq          a3, s4, 630f
                  sltiu        a1, a6, -566
615:              srai         s3, s6, 15
616:              slt          s6, s9, s7
                  or           t2, t2, t5
                  srli         a2, s11, 6
                  andi         sp, a5, -244
                  slti         a4, gp, 560
                  sltiu        s5, a6, -1516
                  sra          a2, zero, a2
                  ori          s7, a3, 915
                  auipc        s1, 392183
                  bne          s4, s10, 643f
                  bne          s1, t1, 640f
                  slt          s5, a3, a1
                  addi         zero, a1, 1161
                  lui          a7, 571179
630:              or           t0, s10, a6
631:              ori          a1, a7, 235
                  beq          a7, tp, 651f
                  or           a7, a3, t0
                  sub          zero, ra, s10
                  srl          sp, s6, t1
                  ori          a6, ra, -1504
                  srli         a0, t2, 27
                  bge          s3, s4, 650f
                  srli         s8, s3, 5
640:              srai         a2, t2, 11
                  slti         a1, zero, -145
                  sltu         s8, s10, s5
643:              xori         a1, a2, -35
                  lui          s4, 63675
                  sub          t0, s6, gp
                  add          s5, s1, a3
                  bltu         t6, tp, 654f
                  slli         s6, t0, 28
                  sra          s8, t1, a4
650:              nop
651:              or           sp, s1, zero
                  addi         t2, t0, 29
                  nop
654:              nop
                  auipc        t1, 299794
                  sll          t6, t1, zero
                  sra          s1, s1, gp
                  bge          sp, s1, 676f
                  slli         s0, gp, 3
                  xor          a0, zero, gp
                  srli         t2, sp, 31
                  ori          a1, s2, -1488
                  xori         s4, a4, -1543
                  sltiu        sp, t3, -1249
                  srl          s4, a2, a5
                  bgeu         gp, s9, 686f
                  xor          s0, t4, s3
                  beq          s0, s11, 673f
                  xori         t0, s1, 0
                  slt          a7, a6, s8
                  add          gp, t1, t1
                  sub          t1, sp, t2
673:              slli         zero, s9, 7
                  slt          sp, t5, s2
                  sll          zero, s1, t3
676:              and          a0, s5, a7
                  sub          sp, t5, s5
                  slti         a1, gp, 1681
                  auipc        ra, 992387
                  slti         s9, t0, 1241
                  slli         a0, s6, 4
                  blt          s7, ra, 695f
                  andi         s0, s3, 1519
                  add          s1, a3, t4
                  sltiu        sp, t6, 495
686:              sub          s6, a3, t0
                  bgeu         t6, s10, 692f
                  bgeu         a5, s3, 700f
                  addi         t2, s9, -649
                  bgeu         a3, gp, 697f
                  srl          s1, t0, t5
692:              lui          a0, 129534
                  srli         s6, tp, 18
                  srai         zero, a6, 2
695:              xor          sp, zero, s8
                  slli         s0, t1, 12
697:              srl          s2, sp, a1
                  xori         a2, s5, 342
                  sll          s4, a6, ra
700:              bltu         a4, s2, 704f
                  nop
                  or           t0, s7, a5
                  bne          s2, t3, 715f
704:              and          sp, t3, s4
                  nop
                  auipc        s4, 1035133
                  ori          sp, gp, 655
                  nop
                  sll          a0, s9, a4
                  add          t3, t4, s11
                  andi         a7, s0, -859
                  or           ra, ra, s1
                  beq          sp, s7, 733f
                  blt          t5, tp, 726f
715:              bltu         s3, s6, 735f
                  andi         t0, s1, -1701
                  sra          gp, s7, tp
                  sltu         zero, s7, t1
                  srai         a6, tp, 10
                  slli         s0, s10, 28
                  bgeu         s10, s5, 735f
                  slti         s0, s2, -1094
                  blt          s10, s4, 728f
                  or           zero, t6, s4
                  nop
726:              ori          tp, tp, -447
                  addi         a4, s0, -1356
728:              srai         a5, s1, 5
                  blt          s8, t2, 741f
                  xor          a5, s11, t1
                  lui          s2, 920972
                  beq          s9, t0, 740f
733:              xori         a2, gp, 501
                  andi         ra, s4, 1705
735:              bge          t2, s2, 753f
                  auipc        s4, 257684
                  srli         s4, s2, 27
                  xori         sp, s2, -2003
                  srai         s1, s3, 9
740:              or           s10, s6, a1
741:              xor          a6, a6, zero
                  sll          s4, a6, s11
                  and          t6, s0, gp
                  beq          sp, t5, 761f
                  sll          t3, s8, a6
                  srl          t1, a2, s2
                  auipc        a4, 930127
                  ori          s7, t3, -1854
                  blt          a0, a0, 756f
                  sub          s2, a1, t3
                  sll          a1, s9, t4
                  sub          a1, a2, ra
753:              srl          s8, a1, t5
                  srl          tp, s8, a0
                  bne          t1, s0, 768f
756:              ori          a1, sp, 1618
                  srl          a6, a6, s0
                  bgeu         a5, s5, 768f
                  add          a7, sp, t3
                  sltiu        t4, s5, 498
761:              bge          s8, s7, 781f
                  lui          t3, 266236
                  srl          a7, t3, a7
                  slti         s2, s0, -1702
                  bltu         a7, ra, 774f
                  sltiu        t0, s11, -141
                  srl          s1, t1, tp
768:              srai         a6, s2, 9
                  add          s8, t1, t0
                  srli         t0, a2, 17
                  xor          a5, s8, a2
                  bltu         s8, s5, 777f
                  sltu         t3, s0, t5
774:              addi         sp, t1, 976
                  slt          s3, s5, t6
                  sll          a0, gp, a6
                  addi         s3, zero, -6 #init loop 1 counter
                  addi         tp, zero, 17 #init loop 1 limit
sub_2_5_1_t:      addi         t2, a3, -1015
                  addi         s3, s3, 10 #update loop 1 counter
                  srl          a7, t0, s0
                  addi         ra, zero, -3 #init loop 0 counter
                  addi         s9, zero, -8 #init loop 0 limit
sub_2_5_0_t:      lui          a4, 197509
                  nop
                  addi         ra, ra, -1 #update loop 0 counter
                  beq          ra, s9, sub_2_5_0_t #branch for loop 0
                  blt          s3, tp, sub_2_5_1_t #branch for loop 1
                  srai         t2, tp, 14
777:              auipc        s5, 1027774
                  lui          s8, 847065
                  add          s6, s2, a0
                  or           a6, zero, ra
781:              sll          s1, a2, a6
                  auipc        s10, 827690
                  bltu         s7, sp, 795f
                  blt          s4, a3, 785f
785:              srli         a0, s7, 6
                  bne          t0, t3, 793f
                  bne          a6, t2, 800f
                  sll          t6, a3, s7
                  ori          s10, t1, -1727
                  srl          s3, a7, a2
                  andi         tp, s0, -1324
                  srl          a1, s10, t5
793:              slt          s2, t0, a3
                  lui          t3, 65860
795:              bltu         a5, a7, 807f
                  xor          t4, t1, zero
                  sll          t4, s1, s4
                  xori         a5, a1, -1871
                  or           s7, t1, s9
800:              srai         s2, a3, 30
                  srl          tp, t3, t1
                  slli         t4, a3, 17
                  bge          s6, t6, 807f
                  slt          s9, s11, gp
                  sltiu        a4, t0, -1760
                  or           a1, a6, t1
807:              bgeu         s5, s1, 825f
                  slt          s10, ra, a5
                  xori         a1, s7, -1101
                  sll          a6, t6, t3
                  auipc        a1, 251935
                  srli         a6, s8, 5
                  or           gp, t6, sp
                  srl          s3, s1, s5
                  srli         a1, s2, 14
                  and          sp, s3, s2
                  bne          s11, t5, 820f
                  xori         s3, s3, 1880
                  bne          s3, s5, 824f
820:              beq          t3, a5, 839f
                  bge          a2, s1, 827f
                  add          s9, ra, a6
                  and          a0, s10, s1
824:              sltu         s6, gp, ra
825:              sltu         s7, sp, s4
                  xori         a1, t4, 1899
827:              beq          gp, t3, 829f
                  sll          s6, t6, s0
829:              sltu         t4, s1, t4
                  sltu         zero, a4, t3
                  ori          t4, s11, 517
                  add          s4, a7, s2
                  slt          t3, s6, s9
                  slt          s2, s0, s2
                  bne          s7, s3, 840f
                  srli         s3, a4, 28
                  bge          s5, a0, 855f
                  addi         a2, zero, -1 #init loop 1 counter
                  addi         ra, zero, 8 #init loop 1 limit
sub_2_10_1_t:     xori         gp, a0, -1474
                  addi         a2, a2, 4 #update loop 1 counter
                  srl          s3, t6, a5
                  addi         s4, zero, 9 #init loop 0 counter
                  or           s9, a1, tp
                  addi         t4, zero, 4 #init loop 0 limit
sub_2_10_0_t:     sltu         tp, t3, a5
                  or           a4, t4, t2
                  addi         s4, s4, -9 #update loop 0 counter
                  auipc        t6, 646025
                  bge          s4, t4, sub_2_10_0_t #branch for loop 0
                  or           sp, s6, s8
                  blt          a2, ra, sub_2_10_1_t #branch for loop 1
                  srli         s5, tp, 18
                  xor          s6, a7, t3
839:              sltu         a5, t4, s3
840:              slli         a2, a6, 28
                  sll          s3, sp, sp
                  sltu         sp, s1, gp
                  slt          s9, s6, s5
                  slti         t4, t0, -146
                  bgeu         s1, a0, 852f
                  sltu         s10, s3, t4
                  nop
                  sltu         t4, a1, s2
                  slt          tp, a3, s11
                  srli         a6, t6, 8
                  xor          ra, zero, a4
852:              bgeu         s9, sp, 855f
                  sub          s5, a1, s7
                  or           s5, s3, sp
855:              sra          s9, ra, a7
                  add          s2, t4, s3
                  sub          s5, s10, t4
                  srai         sp, s7, 25
                  lui          s5, 192639
                  bne          t2, t0, 865f
                  srl          a5, a4, s0
                  slt          s4, t6, s5
                  xor          t3, a4, t4
                  addi         t3, s7, -1960
865:              xor          sp, s3, gp
                  add          s1, a6, a5
                  srl          t6, t1, s8
                  auipc        s0, 621309
                  or           tp, tp, t2
                  sltiu        a4, a7, 916
                  slli         t1, a4, 30
                  and          s1, s10, s9
                  xor          zero, t3, s3
                  add          t6, s2, a5
                  srai         t1, a4, 26
                  sub          a0, a6, s1
                  ori          s2, t5, 1446
                  slli         t1, s11, 22
                  or           a2, a2, t0
                  slli         tp, s6, 12
                  lui          ra, 253663
                  beq          s10, s11, 886f
                  bge          ra, s6, 897f
                  nop
                  beq          s0, s7, 898f
886:              slt          s10, a6, gp
                  sra          t6, t0, sp
                  or           s3, a7, a1
                  slt          tp, s8, s2
                  sltiu        s6, a3, 1393
                  bgeu         t5, s6, 892f
892:              xori         tp, t2, 225
                  or           a6, a5, s7
                  and          s3, a4, s0
                  lui          s0, 845096
                  sra          s0, zero, ra
897:              ori          a2, a0, 1211
898:              addi         s7, zero, -1343
                  blt          s1, s5, 918f
                  bge          s10, zero, 912f
                  slti         t3, a5, -1643
                  lui          s1, 637476
                  andi         s1, t5, 1052
                  bge          ra, a2, 916f
                  slti         t3, s6, -172
                  lui          s0, 258924
                  slt          t1, a5, t4
                  andi         a5, s8, -901
                  sltu         t1, a5, t3
                  sltiu        s8, s7, -964
                  or           s10, a4, sp
912:              lui          s1, 902126
                  addi         a4, zero, 1 #init loop 1 counter
                  addi         a5, zero, 16 #init loop 1 limit
sub_2_20_1_t:     auipc        t3, 506755
                  slti         s1, s0, -779
                  addi         a4, a4, 8 #update loop 1 counter
                  addi         s5, zero, -10 #init loop 0 counter
                  addi         a0, zero, -18 #init loop 0 limit
                  sll          ra, a7, ra
sub_2_20_0_t:     sub          t4, t4, t2
                  addi         s5, s5, -5 #update loop 0 counter
                  bge          s5, a0, sub_2_20_0_t #branch for loop 0
                  slt          sp, t0, a5
                  srai         s4, s1, 12
                  blt          a4, a5, sub_2_20_1_t #branch for loop 1
                  add          gp, a6, s10
                  lui          s6, 24803
                  slti         a5, s7, 518
                  slti         s3, sp, -1258
916:              bgeu         a3, t1, 925f
                  srli         s10, s1, 25
918:              xori         a1, s10, -841
                  slti         s8, tp, 836
                  bltu         a2, s11, 928f
                  srl          a2, sp, a2
                  bltu         tp, a6, 942f
                  bltu         a6, s7, 925f
                  sll          s6, t6, s3
925:              sll          sp, s8, s8
                  xor          t6, t5, s4
                  sltiu        s6, a7, 1981
928:              bge          t6, a6, 948f
                  srl          a7, t2, s8
                  and          t3, s1, a2
                  sll          t0, s7, s4
                  srai         sp, zero, 16
                  sltu         t1, a4, gp
                  auipc        gp, 1014209
                  blt          a4, s5, 955f
                  ori          sp, a1, -351
                  sltu         t1, t4, s10
                  ori          s0, s10, -132
                  sltu         a2, t3, s11
                  bgeu         sp, s6, 947f
                  sra          a7, a5, s6
942:              sra          t0, s3, t1
                  andi         a6, a3, 840
                  slt          tp, a1, a6
                  or           t2, t5, a3
                  srli         s9, a1, 27
947:              addi         zero, t6, 408
948:              srli         s0, s5, 24
                  slt          s1, t5, t1
                  sub          a1, a2, s0
                  blt          a2, a6, 956f
                  bltu         s4, s5, 956f
                  srai         s4, s4, 1
                  slti         t6, s4, -1267
955:              bge          s8, t1, 967f
956:              auipc        s3, 358365
                  blt          t0, s8, 964f
                  xori         ra, zero, 844
                  lui          t2, 357955
                  slli         s9, zero, 9
                  nop
                  bgeu         t6, a2, 974f
                  lui          tp, 273040
964:              sltu         tp, t3, s9
                  slli         s1, a0, 13
                  or           t2, s2, a0
967:              sll          s7, t3, s0
                  sll          t1, zero, t2
                  sll          a5, s7, s6
                  xor          s9, s11, t2
                  bltu         s5, s10, 981f
                  bltu         s8, a6, 984f
                  or           zero, t5, a4
974:              sub          a5, s3, s5
                  xor          a7, a1, sp
                  nop
                  bne          t2, t0, 994f
                  and          t1, s6, s6
                  bltu         s9, t6, 985f
                  srai         t2, t3, 11
981:              srli         a0, s4, 13
                  lui          zero, 258799
                  beq          s5, s10, 996f
984:              nop
985:              xor          a7, t6, sp
                  sltiu        a0, zero, -757
                  srl          s7, s7, s7
                  andi         s6, t6, -1190
                  sll          s8, s6, sp
                  sub          a1, s8, a0
                  add          t2, gp, s4
                  nop
                  sra          s3, t3, a3
994:              srai         a2, t3, 22
                  add          a5, s10, s5
996:              srli         t3, s2, 12
                  slli         s10, ra, 16
                  add          s4, ra, t4
                  lui          t0, 739157
                  blt          zero, a4, 1018f
                  auipc        s5, 990399
                  slli         s9, s7, 7
                  blt          t5, zero, 1011f
                  sltiu        a4, t2, -1483
                  slti         ra, zero, 1959
                  sltiu        gp, gp, -791
                  sra          t1, s5, s8
                  andi         s2, t6, 1242
                  sltiu        s2, s9, -1485
                  sub          a6, a4, tp
1011:             srl          t4, tp, s10
                  addi         s6, a3, 1092
                  sra          s7, s7, t2
                  andi         t1, a6, -1107
                  bltu         s6, s1, 1032f
                  sra          s9, t1, a6
                  and          a2, a5, s8
1018:             beq          s8, s7, 1031f
                  bne          tp, a4, 1028f
                  sltu         t4, a1, a7
                  blt          s0, s3, 1040f
                  addi         sp, s10, -348
                  bge          t2, gp, 1035f
                  xori         t6, sp, -884
                  beq          s4, t0, 1038f
                  bltu         a4, a4, 1031f
                  sll          sp, t5, a1
1028:             srl          a1, s11, zero
                  srli         s6, a7, 30
                  bltu         t6, s9, 1050f
1031:             srli         ra, sp, 29
1032:             xor          gp, s1, t0
                  slt          t4, s0, a4
                  nop
1035:             andi         sp, s10, -570
                  srai         t4, t4, 29
                  bltu         s3, t4, 1055f
1038:             sll          t4, a1, t2
                  lui          a2, 874672
1040:             sub          a5, gp, a4
                  auipc        s10, 483864
                  addi         s4, a0, 371
                  sll          t2, s1, a7
                  bne          s10, s9, 1047f
                  slli         t2, a3, 24
                  xori         s2, ra, 588
1047:             slti         s2, a0, 190
                  sltu         a5, a6, t4
                  auipc        s7, 473122
1050:             srli         s2, s10, 17
                  srli         a4, s8, 7
                  sltu         t0, t5, s10
                  xor          tp, zero, t2
                  sltu         t3, t3, zero
1055:             slli         gp, s6, 29
                  sub          t6, a4, s8
                  beq          a0, gp, 1067f
                  sra          s9, s9, gp
                  beq          t3, s0, 1073f
                  lui          zero, 792713
                  add          gp, t5, a4
                  bltu         s9, a4, 1080f
                  sub          t1, a5, t6
                  lui          s8, 203668
                  sltiu        a4, t6, -1890
                  auipc        t2, 761709
1067:             bgeu         sp, s0, 1079f
                  srli         gp, gp, 15
                  ori          s6, s3, 1938
                  ori          tp, s2, -558
                  sra          ra, s3, a3
                  beq          s10, sp, 1077f
1073:             srai         a4, s3, 2
                  bgeu         a5, a6, 1081f
                  or           s4, tp, gp
                  xori         a0, t4, 1911
1077:             beq          t2, s5, 1082f
                  sltiu        s3, s0, 1685
1079:             sltiu        t1, t5, -1591
1080:             beq          a0, s8, 1082f
1081:             auipc        a0, 533273
1082:             xori         s2, t0, 293
                  lui          s0, 763511
                  srli         s4, t0, 15
                  nop
                  blt          s9, s3, 1090f
                  xor          a4, t5, t2
                  and          t6, a4, t3
                  xor          a1, a6, s8
1090:             auipc        s7, 346362
                  and          a5, s3, s8
                  sra          s5, zero, zero
                  bge          a5, s5, 1105f
                  sub          t0, tp, s5
                  slli         t4, s5, 28
                  srli         s10, t2, 4
                  slt          gp, s11, s5
                  or           s1, tp, s3
                  addi         s1, s0, -1492
                  blt          a5, tp, 1104f
                  srli         t3, a5, 15
                  sltu         s3, s1, a0
                  sll          s3, t3, zero
1104:             addi         t4, s10, 1563
1105:             xori         t2, a2, -852
                  xori         s4, sp, 1764
                  sll          s7, s1, t0
                  beq          s3, s8, 1120f
                  sll          t4, s7, s11
                  addi         t4, ra, 1146
                  slti         s2, a3, -702
                  add          a0, t4, t0
                  xor          s6, s8, s3
                  add          tp, a3, a3
                  bgeu         a6, a0, 1116f
1116:             bltu         s10, s11, 1122f
                  andi         a7, s7, 1319
                  blt          a4, a2, 1130f
                  srl          s10, t5, s2
1120:             srli         s10, s6, 13
                  slti         t4, gp, 883
1122:             add          s8, zero, a3
                  sltu         s9, a4, s8
                  andi         t4, a3, 1207
                  ori          gp, s2, -1448
                  add          a0, t3, s2
                  lui          t3, 637835
                  slt          t1, s6, s0
                  or           s4, s9, a2
1130:             slli         s10, s8, 30
                  slti         t3, s11, 1733
                  bltu         s9, tp, 1152f
                  sltu         a1, t4, sp
                  blt          t6, s3, 1141f
                  bltu         t4, s3, 1155f
                  add          a0, t0, ra
                  sltu         sp, s0, t5
                  slt          a6, s3, a2
                  bltu         s7, a5, 1146f
                  blt          t2, zero, 1145f
1141:             bgeu         s4, t4, 1161f
                  lui          ra, 925636
                  bne          s2, t3, 1150f
                  slli         t6, tp, 13
1145:             auipc        a1, 339373
1146:             bge          a4, tp, 1166f
                  and          a7, a2, a0
                  lui          s1, 702764
                  blt          t6, s9, 1154f
1150:             beq          a7, a6, 1153f
                  sra          s7, a4, a6
1152:             or           s7, s6, s6
1153:             blt          s8, t1, 1157f
1154:             addi         s6, a1, -1153
1155:             andi         a7, s9, -1706
                  srai         s10, t4, 16
1157:             slti         ra, s3, 1759
                  slt          zero, sp, s2
                  bgeu         s8, a2, 1176f
                  beq          a4, a5, 1178f
1161:             and          a6, t4, a6
                  add          a4, gp, t6
                  xori         a6, a1, -1790
                  slti         gp, t4, 14
                  and          t1, t1, s5
1166:             beq          a7, s10, 1172f
                  addi         t2, s6, 1870
                  beq          a6, s1, 1172f
                  bgeu         tp, s10, 1181f
                  bltu         gp, s5, 1183f
                  bne          a1, a0, 1183f
1172:             sll          t2, a3, t2
                  sltu         a5, s10, a1
                  bge          zero, t0, 1186f
                  slt          tp, s3, s1
1176:             auipc        s9, 258986
                  lui          s1, 845426
1178:             sra          s7, a6, t0
                  blt          a6, s11, 1189f
                  lui          t2, 313776
1181:             bltu         s6, a0, 1182f
1182:             srl          s6, s4, sp
1183:             slti         s8, sp, 1227
                  addi         a5, s0, -1591
                  srai         s0, s10, 23
1186:             add          t4, s8, t0
                  bltu         a3, a0, 1207f
                  sub          s8, a7, t5
1189:             xor          s7, s7, ra
                  lui          s3, 351840
                  sltiu        a0, t6, -1081
                  auipc        tp, 729868
                  sll          zero, t5, s5
                  sub          tp, zero, t1
                  slti         t4, s1, -1270
                  addi         tp, tp, 1148
                  sltiu        s5, a3, -1532
                  ori          t1, a0, -270
                  srli         s4, a5, 28
                  auipc        a2, 695358
                  srl          a0, s4, s2
                  sll          gp, a1, s6
                  bne          t1, s0, 1209f
                  lui          gp, 275654
                  bgeu         s3, s9, 1209f
                  srli         s0, s0, 7
1207:             bne          s3, t1, 1209f
                  sltiu        a5, s1, 1207
1209:             srl          s3, t5, a6
                  lw           s10, 4(s11)
                  slli         s8, s7, 1
                  slti         gp, s8, -1088
                  addi         s11, s11, 64
                  lui          a1, 1002728
1672:             addi x18, x26, 1
1672:             jalr x18, x18, 0
sub_1:            beq          s1, s4, sub_1_stack_p
sub_1_stack_p:    addi         s11, s11, -64
                  srl          tp, s2, t5
                  sw           s10, 4(s11)
                  and          a7, s1, t4
                  lui          s1, 356740
                  add          s0, sp, t2
                  xori         t1, t4, -496
                  slli         s8, s4, 0
                  srai         a1, ra, 1
                  ori          s4, s5, -1491
                  or           s8, s9, t5
                  sll          a7, a5, s2
                  sll          tp, a7, t0
                  xor          s0, t6, a2
                  add          s2, s8, s5
                  ori          s3, a5, -1816
sub_1_j2:         jal          s10, sub_2 #jump sub_1 -> sub_2
                  addi         s5, zero, -8 #init loop 0 counter
                  add          a5, s1, a4
                  andi         t0, a7, 148
                  auipc        t0, 584476
                  or           a2, ra, s0
                  addi         t1, ra, -200
                  sltiu        a1, t1, -1493
                  sra          t2, a3, a1
                  auipc        s10, 204414
                  addi         t4, zero, 7 #init loop 0 limit
                  ori          a7, ra, -319
                  sub          a4, a3, s8
sub_1_2_0_t:      lui          s2, 325539
                  add          a1, s0, s7
                  addi         s5, s5, 10 #update loop 0 counter
                  ori          t1, s7, -1773
                  ori          t2, t2, 2
                  or           t6, ra, a3
                  xori         t6, sp, -1741
                  auipc        a7, 880179
                  slti         t6, a6, 1993
                  blt          s5, t4, sub_1_2_0_t #branch for loop 0
                  sltu         zero, s2, a0
                  addi         t3, zero, 8 #init loop 1 counter
                  nop
                  sll          a5, a4, tp
                  slt          zero, t6, a7
                  addi         s10, zero, 8 #init loop 1 limit
                  or           s8, a4, t5
sub_1_0_1_t:      slt          a0, a3, s5
                  sltiu        sp, sp, 1033
                  addi         t3, t3, -6 #update loop 1 counter
                  addi         a1, zero, 1 #init loop 0 counter
                  xori         a5, a4, -1381
                  addi         ra, zero, -10 #init loop 0 limit
sub_1_0_0_t:      slti         s2, t0, 1167
                  addi         a1, a1, -7 #update loop 0 counter
                  sll          s8, s5, a1
                  bge          a1, ra, sub_1_0_0_t #branch for loop 0
                  sltiu        zero, a4, -389
                  bgeu         t3, s10, sub_1_0_1_t #branch for loop 1
                  slli         s4, a0, 6
                  addi         tp, zero, 1 #init loop 0 counter
                  sll          t4, a6, tp
                  sll          s4, t5, a1
                  sub          sp, s4, s11
                  slt          s1, ra, s4
                  sra          s0, a0, a7
                  lui          t0, 523732
                  slt          t4, a6, a2
                  add          s3, ra, s7
                  addi         s8, zero, 19 #init loop 0 limit
                  srli         s2, t3, 28
                  nop
                  slli         s3, gp, 29
sub_1_3_0_t:      sltu         s0, s7, sp
                  addi         tp, tp, 9 #update loop 0 counter
                  nop
                  sll          s7, t4, t2
                  add          t1, a2, t5
                  sll          s4, a7, s2
                  sra          s2, s10, s9
                  slli         s7, ra, 18
                  and          s0, s10, s2
                  slli         a2, sp, 7
                  slli         s9, ra, 12
                  beq          tp, s8, sub_1_3_0_t #branch for loop 0
                  andi         s2, s3, 941
                  addi         s6, zero, -5 #init loop 0 counter
                  add          t1, gp, s4
                  addi         s2, zero, -13 #init loop 0 limit
                  auipc        a4, 754698
                  srl          t1, a0, t3
                  addi         zero, tp, 889
sub_1_5_0_t:      slti         sp, t4, 1729
                  auipc        s3, 956272
                  addi         s6, s6, -8 #update loop 0 counter
                  slli         a1, s3, 5
                  addi         t3, s4, -1559
                  sltu         t4, ra, sp
                  sltu         s1, t4, a1
                  sub          zero, s8, a7
                  sra          a2, a1, a6
                  sltu         s8, s10, s4
                  lui          s0, 488917
                  slt          t3, s1, ra
                  addi         a7, s3, 622
                  or           sp, s3, s1
                  bne          s6, s2, sub_1_5_0_t #branch for loop 0
                  andi         s1, a4, -56
                  addi         a1, zero, 5 #init loop 0 counter
                  slli         a4, ra, 17
                  srli         s5, a3, 22
                  add          a4, a0, zero
                  srl          gp, t3, a0
                  addi         t1, zero, 12 #init loop 0 limit
sub_1_1_0_t:      slti         s9, s3, 177
                  slli         gp, s0, 28
                  addi         a1, a1, 10 #update loop 0 counter
                  slli         s10, s1, 15
                  slti         t0, a6, -1030
                  srl          s10, s7, s7
                  sub          t3, a7, a7
                  slli         t2, s1, 25
                  sra          a5, s10, s11
                  blt          a1, t1, sub_1_1_0_t #branch for loop 0
                  srai         s8, s4, 1
                  addi         s1, zero, -2 #init loop 1 counter
                  add          t4, t5, s2
                  slt          t6, a1, t2
                  sll          a0, zero, t2
                  srai         t0, s6, 13
                  sub          a0, zero, s10
                  srli         s8, s2, 7
                  addi         s3, zero, 18 #init loop 1 limit
sub_1_4_1_t:      andi         sp, s9, -1767
                  ori          t2, a0, 990
                  and          sp, ra, s9
                  addi         s1, s1, 3 #update loop 1 counter
                  srai         t4, t0, 28
                  addi         a7, zero, 2 #init loop 0 counter
                  addi         a4, zero, 4 #init loop 0 limit
                  ori          s9, s6, 1731
                  slli         gp, t5, 26
sub_1_4_0_t:      andi         t4, s3, 1463
                  xori         t6, s4, 971
                  addi         a7, a7, 1 #update loop 0 counter
                  beq          a7, a4, sub_1_4_0_t #branch for loop 0
                  xori         s5, s0, -1166
                  addi         s9, s6, 115
                  auipc        gp, 592160
                  lui          t0, 73270
                  srli         a1, zero, 20
                  bltu         s1, s3, sub_1_4_1_t #branch for loop 1
                  srli         t6, tp, 0
                  slli         a4, t0, 30
                  lui          tp, 51777
                  sra          a1, a4, a4
                  bgeu         s11, t4, 14f
                  ori          s7, s4, 1175
                  srai         s7, s0, 23
                  srli         s1, a6, 14
                  blt          t1, sp, 19f
                  blt          sp, a3, 20f
                  bltu         tp, s8, 29f
                  sra          zero, s2, s10
                  bge          gp, s8, 30f
                  slt          s0, t6, t3
                  slli         sp, t4, 1
14:               add          gp, a5, s0
                  lui          s0, 689116
                  andi         t3, s3, -704
                  ori          t2, s7, -1984
                  slti         t1, zero, 1917
19:               and          zero, a2, s6
20:               or           t0, s3, s10
                  andi         a1, s2, -37
                  nop
                  bltu         a3, s1, 40f
                  ori          s9, zero, 1700
                  nop
                  add          tp, s10, t2
                  blt          s9, tp, 40f
                  sltu         a0, s3, s0
29:               srai         a5, s1, 7
30:               sra          t6, gp, a2
                  sltu         sp, t5, a4
                  add          a1, s11, t3
                  nop
                  ori          t0, a5, 678
                  slli         a5, t3, 11
                  beq          a7, s6, 56f
                  slli         s2, s0, 2
                  and          s7, a2, t6
                  slt          a6, t1, t0
40:               slli         t6, sp, 24
                  or           a4, s10, a0
                  andi         s0, tp, -1143
                  andi         t1, t2, -1419
                  sll          s1, a4, a5
                  bltu         s11, t2, 59f
                  nop
                  lui          a6, 554631
                  bge          s7, a7, 62f
                  srai         a5, s0, 4
                  bltu         s6, s1, 57f
                  srl          s10, a2, a7
                  beq          zero, s7, 64f
                  auipc        t4, 525540
                  nop
                  beq          s5, a4, 57f
56:               sltiu        s3, a6, 1173
57:               bge          s1, s2, 61f
                  lui          tp, 1019039
59:               xor          t6, s3, s6
                  bge          a7, a4, 76f
61:               slti         tp, t2, -828
62:               addi         s0, t6, 337
                  sltiu        zero, gp, 1432
64:               bne          a1, a5, 83f
                  srai         a6, a4, 29
                  sra          s3, s9, t4
                  andi         s0, s10, 1907
                  xor          a0, a3, a7
                  srai         s6, s11, 31
                  sub          t4, t1, a1
                  sltu         t0, a4, sp
                  bge          s5, a4, 79f
                  slti         s9, sp, 1905
                  srl          a1, a5, ra
                  srai         s8, s8, 21
76:               slli         t1, zero, 18
                  and          t1, s0, s8
                  sltiu        a4, s8, -1125
                  sltiu        a4, s5, 1794
                  andi         zero, a1, -1485
                  sra          a7, s8, t4
                  slli         s9, s7, 23
                  sltu         tp, s0, a2
                  bge          tp, s2, sub_1_j4 #branch to jump instr
                  ori          s9, t5, 1605
sub_1_j4:         jal          s10, sub_3 #jump sub_1 -> sub_3
                  nop
                  lui          t2, 755382
79:               and          s5, s7, s5
                  srli         s8, zero, 23
                  slti         ra, zero, 1220
                  blt          s3, s3, 89f
83:               andi         s5, a1, -281
                  auipc        zero, 328538
                  addi         t6, a3, 1804
                  add          t3, t1, s5
                  slli         t2, t3, 19
                  bltu         s7, a5, 106f
89:               addi         s3, a7, -1459
                  ori          a6, t0, -1145
                  slli         s9, a5, 19
                  ori          a5, s7, -841
                  bltu         s6, s5, 108f
                  slti         a2, s8, 886
                  slti         s3, tp, 205
                  xori         t2, s8, -1962
                  and          s8, a0, t2
                  auipc        zero, 966035
                  slli         s6, t3, 23
                  srai         a2, t1, 11
                  slt          t1, a3, s5
                  sub          t2, t6, s0
                  ori          zero, a2, 701
                  bltu         sp, s9, 123f
                  sltiu        a5, a3, 769
106:              lui          t2, 559460
                  bltu         s5, a7, 125f
108:              slti         sp, sp, -30
                  slt          a4, zero, zero
                  slt          tp, s0, t3
                  sub          s9, ra, s4
                  lui          s6, 369306
                  bgeu         t4, s10, 130f
                  xor          a2, t1, s2
                  sll          a4, tp, s10
                  sltu         s2, a3, s3
                  add          zero, a4, t5
                  xor          s5, t2, t1
                  sub          a4, s4, sp
                  bne          t3, ra, 135f
                  sub          s0, gp, s2
                  bne          a6, ra, 127f
123:              bne          s3, a0, 127f
                  slt          t4, s8, s4
125:              andi         s9, gp, -316
                  slli         s7, t2, 20
127:              bne          s0, s3, 131f
                  sltiu        a1, t1, 1868
                  lui          zero, 186076
130:              sll          sp, t4, a5
131:              or           t2, s0, s8
                  sra          s10, s7, sp
                  and          s9, zero, gp
                  ori          a0, s3, -1675
135:              xori         a7, s4, 1375
                  beq          t0, a7, 147f
                  or           s2, a2, t5
                  slti         t0, t0, 669
                  sltiu        zero, s5, -1169
                  srl          a7, s6, a3
                  sltiu        s5, ra, -333
                  slli         sp, s8, 24
                  lui          t4, 965159
                  bltu         a4, zero, 152f
                  beq          s10, s7, 159f
                  sltiu        a6, s6, -1768
147:              andi         s5, ra, -23
                  xor          s8, t0, s7
                  bne          t4, a6, 164f
                  bge          s3, s8, 165f
                  slli         t6, t1, 17
152:              addi         s0, t5, -1311
                  auipc        s7, 956478
                  and          s7, tp, s9
                  bltu         s10, sp, 169f
                  or           s4, a3, t0
                  bgeu         s6, s4, 162f
                  sltiu        gp, s7, 886
159:              add          sp, s0, s9
                  lui          zero, 233262
                  auipc        a5, 268236
162:              sltu         t0, a2, t0
                  bgeu         s5, t2, 170f
164:              ori          s2, s3, 1960
165:              lui          s2, 376516
                  auipc        t0, 449564
                  andi         a6, s6, -926
                  bne          a7, s4, 172f
169:              sra          s1, a4, sp
170:              srli         a6, t6, 1
                  auipc        s6, 452026
172:              sll          a1, s2, a5
                  xori         s7, a6, -672
                  or           a0, s5, a2
                  bne          zero, s1, 186f
                  bltu         a5, t2, 190f
                  sll          s10, s2, t0
                  auipc        a6, 917001
                  bne          s11, s2, 191f
                  auipc        t4, 574511
                  beq          s1, s8, 200f
                  blt          a4, t0, 186f
                  sra          t6, t1, sp
                  slli         a4, gp, 14
                  slli         s0, s3, 29
186:              sra          a5, gp, gp
                  slti         a6, s10, 1502
                  xori         t3, a4, -1880
                  blt          t5, s9, 196f
190:              sra          t4, t1, s6
191:              addi         a6, s1, 1785
                  auipc        t6, 810926
                  srai         s7, s8, 5
                  srai         s3, a4, 14
                  add          t3, s10, s7
196:              xor          s4, t2, t3
                  bne          a2, t6, 204f
                  or           zero, t6, a7
                  slt          t3, t4, gp
200:              andi         t6, s4, 1682
                  srli         s6, s4, 13
                  sltu         s1, a1, a3
                  xori         t1, s10, -1698
204:              xor          a5, gp, s2
                  slt          s5, tp, t3
                  slti         a2, gp, 241
                  slli         s7, t4, 21
                  sub          s5, t4, a3
                  sltiu        s9, gp, 1246
                  nop
                  add          ra, s3, s4
                  slt          gp, s2, s0
                  sra          t3, zero, t6
                  xori         s4, t5, 560
                  xor          s6, s1, sp
                  add          zero, s1, s6
                  or           ra, s5, a4
                  xor          t3, s7, a4
                  slt          a0, a2, a2
                  andi         gp, gp, -639
                  slti         s5, sp, 1755
                  slt          t6, tp, a4
                  lui          s0, 968710
                  add          s10, t1, s3
                  andi         t4, t3, -459
                  bne          s6, t1, 246f
                  sub          t6, s11, t2
                  beq          a6, s3, 239f
                  srai         t6, s6, 11
                  slti         t2, s7, -172
                  nop
                  or           s3, s4, t3
                  andi         s1, s4, -2003
                  lui          s3, 202264
                  sltiu        a1, s4, 269
                  andi         s10, a4, -37
                  slli         t0, s5, 1
                  auipc        s1, 123605
239:              sll          a4, t4, t6
                  ori          s5, t0, -1968
                  bltu         zero, s7, 260f
                  slt          s7, s1, t4
                  xor          s4, s5, t0
                  srl          s4, a6, a4
                  addi         gp, s1, 145
246:              and          s8, s1, s10
                  sra          ra, s4, t2
                  sltu         s3, s2, a5
                  sra          a6, a2, tp
                  sub          s5, s10, a3
                  sra          a0, s1, s6
                  slti         a5, t6, 844
                  sltu         s10, a5, a3
                  or           t6, a1, s8
                  and          a5, a5, s7
                  slli         s1, a5, 4
                  sub          t0, s11, s4
                  add          s2, a7, s0
                  add          sp, tp, ra
260:              beq          a3, t2, 264f
                  lui          t6, 974295
                  bgeu         s2, ra, 276f
                  add          s2, a0, sp
                  la           s1, sub_2
                  andi         s8, a5, -1294
                  srai         s10, t2, 11
                  addi         s1, s1, 978
                  sll          t4, a7, s2
                  srai         s5, t4, 22
                  srli         tp, s7, 0
                  ori          t4, tp, 514
                  srl          s6, a7, s7
                  bgeu         s11, a5, sub_1_j3 #branch to jump instr
                  addi         s6, s5, 684
sub_1_j3:         jalr         s10, s1, -977 #jump sub_1 -> sub_2
264:              blt          s4, s3, 276f
                  slti         s3, tp, 148
                  sltiu        t0, a6, 1080
                  sltiu        t4, gp, 1424
                  slli         s9, ra, 8
                  beq          t6, s2, 277f
                  and          ra, a7, a3
                  slli         s9, tp, 9
                  sltiu        s7, s1, 1832
                  slt          a7, s3, s4
                  sll          a5, a1, s0
                  bne          sp, s2, 292f
276:              sub          zero, s7, s9
277:              blt          t5, s11, 295f
                  sub          s1, s9, s5
                  slt          gp, a4, a5
                  ori          ra, a7, -1019
                  beq          t5, t0, 298f
                  bltu         s6, s6, 284f
                  bne          a1, t6, 296f
284:              sltu         a1, t5, a1
                  slli         t2, t1, 26
                  sra          ra, a1, s4
                  bgeu         t5, zero, 305f
                  beq          a7, a3, 300f
                  srli         tp, a0, 22
                  xor          s10, t6, s9
                  bge          t3, s5, 310f
292:              lui          a6, 1028936
                  sltu         t4, t2, a4
                  slti         gp, s8, -264
295:              sll          ra, a3, s7
296:              sll          t2, a0, t2
                  bne          a7, s11, 317f
298:              beq          a2, s7, 314f
                  sll          tp, s7, t1
300:              bltu         a0, a4, 312f
                  slli         zero, zero, 5
                  auipc        zero, 343331
                  bge          t5, s9, 318f
                  bltu         t0, t6, 317f
305:              or           s7, sp, s0
                  bgeu         s0, tp, 318f
                  andi         t1, a2, -608
                  and          t0, a3, t3
                  andi         t4, a5, 1438
310:              sltiu        t1, t0, -1462
                  or           t1, a1, t4
312:              beq          t2, sp, 318f
                  bge          s2, tp, 317f
314:              xori         a0, s2, 1299
                  blt          s7, s3, 318f
                  sub          s6, t0, s8
317:              slli         t3, gp, 6
318:              and          s1, tp, s2
                  lw           s10, 4(s11)
                  addi         s11, s11, 64
                  slt          zero, a0, t1
                  sltu         a2, t5, a7
                  slt          t6, t3, t4
499:              addi x25, x26, 1
499:              jalr x25, x25, 0
sub_4:            slti         s9, s5, 1881
                  lui          s8, 391510
                  addi         s11, s11, -36
                  sltiu        s8, a6, -243
                  or           s7, a0, zero
                  sub          a1, t2, s7
                  xori         a0, tp, -486
                  or           t6, s3, t6
                  slli         s6, tp, 5
                  sw           s10, 4(s11)
                  sltu         s3, t6, zero
                  nop
                  add          s6, a5, s1
                  auipc        s5, 740468
                  slt          ra, s6, s6
                  srai         a4, s5, 14
                  xor          t4, sp, s8
                  srli         s9, s11, 8
                  sra          s4, a7, s7
sub_4_j8:         jal          s10, sub_5 #jump sub_4 -> sub_5
                  addi         t0, zero, 10 #init loop 1 counter
                  and          s6, t6, a2
                  slti         gp, a1, 1718
                  addi         a5, zero, 10 #init loop 1 limit
sub_4_3_1_t:      sub          s3, t6, a6
                  ori          t1, s9, 224
                  addi         t0, t0, -9 #update loop 1 counter
                  sltiu        s6, a7, -1347
                  sltiu        a6, t2, -175
                  addi         s8, zero, -10 #init loop 0 counter
                  slli         sp, tp, 11
                  addi         t2, zero, -15 #init loop 0 limit
sub_4_3_0_t:      andi         t6, s2, 2037
                  addi         s8, s8, -8 #update loop 0 counter
                  addi         sp, s5, 1387
                  sltu         s3, s4, s4
                  andi         a0, s9, -1542
                  bge          s8, t2, sub_4_3_0_t #branch for loop 0
                  add          s10, s7, a2
                  slli         t3, t4, 15
                  lui          s2, 1033549
                  bgeu         t0, a5, sub_4_3_1_t #branch for loop 1
                  xor          s1, s3, t3
                  addi         a4, zero, 3 #init loop 1 counter
                  lui          t3, 980845
                  sll          t0, a2, t0
                  addi         sp, zero, 11 #init loop 1 limit
sub_4_2_1_t:      add          a6, t3, t5
                  andi         gp, s1, 646
                  addi         a4, a4, 4 #update loop 1 counter
                  and          a1, s8, a4
                  addi         s6, zero, -7 #init loop 0 counter
                  nop
                  addi         a0, zero, 5 #init loop 0 limit
                  srli         s0, a7, 3
sub_4_2_0_t:      sltiu        s8, a1, 687
                  srl          t3, gp, t2
                  addi         s6, s6, 1 #update loop 0 counter
                  beq          s6, a0, sub_4_2_0_t #branch for loop 0
                  sltiu        s2, a4, 109
                  ori          s2, a7, 1009
                  blt          a4, sp, sub_4_2_1_t #branch for loop 1
                  nop
                  addi         a2, zero, 1 #init loop 1 counter
                  sltiu        a6, s8, -792
                  add          s9, a4, a0
                  xori         t0, a1, -1572
                  addi         s6, zero, -8 #init loop 1 limit
                  auipc        sp, 243328
sub_4_0_1_t:      sub          s1, tp, a3
                  srai         s4, tp, 13
                  sra          s10, s6, t3
                  sltu         zero, a6, s4
                  addi         a2, a2, -3 #update loop 1 counter
                  addi         t4, zero, -6 #init loop 0 counter
                  ori          a0, s7, 1518
                  sra          t0, s8, a6
                  addi         ra, zero, 3 #init loop 0 limit
                  sltu         s8, s10, t6
                  slli         t6, s10, 11
                  nop
sub_4_0_0_t:      and          a6, s1, t4
                  addi         t4, t4, 9 #update loop 0 counter
                  srli         t1, s0, 2
                  or           tp, a0, s6
                  beq          t4, ra, sub_4_0_0_t #branch for loop 0
                  sltiu        a7, s4, -1696
                  bge          a2, s6, sub_4_0_1_t #branch for loop 1
                  and          tp, s7, s9
                  addi         t0, zero, -8 #init loop 0 counter
                  or           s3, t3, tp
                  addi         t2, zero, -5 #init loop 0 limit
                  srai         t6, a6, 14
                  srai         s9, s4, 26
sub_4_1_0_t:      sltu         s8, t1, a5
                  addi         t0, t0, 8 #update loop 0 counter
                  blt          t0, t2, sub_4_1_0_t #branch for loop 0
                  sltu         t1, t3, gp
                  addi         a4, zero, 2 #init loop 1 counter
                  addi         s8, zero, 16 #init loop 1 limit
sub_4_5_1_t:      ori          t2, a4, 1261
                  add          s6, t1, s2
                  and          a0, s0, t6
                  slli         s7, t4, 14
                  addi         a4, a4, 2 #update loop 1 counter
                  addi         a1, zero, 8 #init loop 0 counter
                  addi         s3, zero, -8 #init loop 0 limit
                  or           tp, s1, s5
sub_4_5_0_t:      xori         t2, s3, 1069
                  addi         a1, a1, -2 #update loop 0 counter
                  addi         a6, a4, -1718
                  bne          a1, s3, sub_4_5_0_t #branch for loop 0
                  sltu         s4, sp, t4
                  bltu         a4, s8, sub_4_5_1_t #branch for loop 1
                  sra          t3, t2, a4
                  addi         t1, zero, 0 #init loop 1 counter
                  addi         a7, zero, -13 #init loop 1 limit
                  slt          a2, t3, s2
sub_4_4_1_t:      slti         t6, gp, 995
                  addi         t1, t1, -9 #update loop 1 counter
                  addi         s3, zero, 10 #init loop 0 counter
                  sltiu        a4, t5, 267
                  addi         s0, zero, 9 #init loop 0 limit
sub_4_4_0_t:      nop
                  slt          s1, t6, tp
                  addi         s3, s3, -8 #update loop 0 counter
                  bgeu         s3, s0, sub_4_4_0_t #branch for loop 0
                  bge          t1, a7, sub_4_4_1_t #branch for loop 1
                  sll          a6, s2, t5
                  andi         gp, a5, 1854
                  sub          a5, a7, a0
                  sll          sp, s6, ra
                  slli         a7, ra, 17
                  srai         s10, t6, 19
                  lui          a7, 626695
                  sll          a5, t5, tp
                  ori          t6, s7, -1816
                  sltiu        ra, s11, 194
                  nop
                  sltu         a5, s11, t4
                  xor          t0, sp, t3
                  srli         t1, s4, 30
                  ori          s3, tp, -1887
                  slli         s3, a5, 0
                  bltu         gp, s4, 28f
                  bltu         s1, s10, 22f
                  lui          a4, 482043
                  andi         t4, gp, 1901
                  andi         s7, t0, -1346
                  slti         a0, a7, -1385
                  blt          a4, s0, 37f
22:               blt          s4, t1, 24f
                  bne          t0, s3, 27f
24:               bgeu         s1, s0, 30f
                  xori         s5, a0, -1100
                  sltiu        s4, a1, -35
27:               and          sp, a3, s8
28:               srl          t3, zero, t4
                  add          s0, a5, tp
30:               sll          s10, t3, zero
                  slti         a4, sp, -1700
                  andi         s2, t3, 203
                  bne          s11, a1, 36f
                  and          a5, s5, s9
                  bgeu         a1, a0, 36f
36:               lui          s5, 299474
37:               andi         a7, a5, 1166
                  or           t6, sp, t0
                  and          s0, ra, a4
                  ori          t1, s1, 178
                  sub          s3, a5, s2
                  slli         zero, ra, 1
                  lui          a2, 274632
                  ori          zero, s4, 1536
                  nop
                  nop
                  andi         s0, t3, -69
                  xori         s2, s2, 489
                  xori         ra, t1, -1280
                  srai         s6, t3, 23
                  bgeu         a0, t4, 65f
                  sra          zero, tp, a1
                  slt          tp, s1, a2
                  sltiu        t6, s1, -1406
                  bgeu         s2, s7, 67f
                  xor          sp, s9, s9
                  slt          s10, s3, t2
                  slli         a6, a4, 13
                  slti         s0, a3, -1219
                  xori         tp, t0, -1533
                  andi         s5, s8, -827
                  bltu         gp, t3, 82f
                  srai         s5, a3, 31
                  and          a0, t0, t6
65:               sltiu        s3, s11, -1391
                  andi         s7, t1, -1023
67:               bne          a6, t6, 86f
                  srai         s10, s3, 13
                  beq          ra, t5, 88f
                  addi         t2, t1, -995
                  bgeu         a4, a3, 81f
                  bgeu         a5, sp, 80f
                  and          s8, s6, t5
                  beq          t5, ra, 84f
                  slt          gp, s10, tp
                  srl          gp, a3, s4
                  bgeu         s9, s0, 91f
                  addi         t0, a2, 1208
                  slli         t2, s6, 6
80:               sra          a6, t4, a3
81:               slti         s6, s7, -1914
82:               sra          s9, zero, a7
                  srai         s0, ra, 6
84:               bltu         s1, s8, 96f
                  slt          t6, a0, s4
86:               blt          a1, t5, 92f
                  and          t1, s6, a3
88:               ori          t2, a5, -1071
                  slli         s1, s6, 13
                  andi         sp, s4, -1384
91:               or           s3, a3, s4
92:               sra          a5, t4, a3
                  slt          ra, s8, t4
                  auipc        a5, 103019
                  bne          s3, a0, 107f
96:               bge          a1, a5, 115f
                  lui          s6, 279132
                  slt          sp, a0, a6
                  xori         t0, a7, -1562
                  lui          a6, 898826
                  srai         t2, t4, 20
                  xori         t0, s5, -1468
                  ori          a1, t0, -517
                  ori          t3, s5, 1313
                  bge          zero, sp, 124f
                  sra          a0, ra, s1
107:              slti         t4, a2, -589
                  sra          s8, t5, t1
                  srai         s9, a3, 16
                  or           zero, ra, s4
                  xori         s4, t3, 1856
                  add          a5, s10, s4
                  srai         gp, zero, 16
                  slli         t1, t5, 20
115:              lui          t3, 708387
                  andi         a4, t5, -605
                  and          sp, a5, a3
                  sltiu        sp, ra, -1409
                  nop
                  xor          t1, gp, a2
                  or           s6, a0, s10
                  or           a0, s9, s11
                  ori          ra, s4, -86
124:              sltiu        a6, s10, -1474
                  beq          s1, a2, 132f
                  slli         a6, s11, 19
                  sub          s6, s0, s11
                  blt          gp, a3, 133f
                  sll          t4, t0, s9
                  srai         tp, t1, 14
                  auipc        ra, 439889
132:              srl          sp, t1, sp
133:              beq          s1, t2, 152f
                  andi         tp, a2, -1816
                  slti         t2, s5, -1173
                  add          t6, zero, s8
                  srai         s7, s5, 31
                  slt          a7, a7, s2
                  sltiu        a5, a2, -1557
                  slti         a0, ra, 1402
                  xor          s2, t3, t0
                  srai         s0, a5, 18
                  blt          s2, s6, 151f
                  slt          s7, sp, a5
                  sra          a5, s1, s2
                  andi         a4, t4, 951
                  sra          t3, a0, a5
                  bltu         a6, a7, 167f
                  ori          s1, zero, 939
                  sltiu        s3, a2, 456
                  la           t0, sub_5
                  slli         a4, s5, 6
                  add          s6, s1, sp
                  sltiu        a1, s3, -1032
                  addi         t0, t0, -90
                  andi         tp, a4, 474
                  nop
sub_4_j7:         jalr         s10, t0, 90 #jump sub_4 -> sub_5
151:              and          s2, a7, s1
152:              or           s3, sp, s8
                  addi         zero, a3, 563
                  bltu         s1, zero, 172f
                  lui          ra, 217886
                  auipc        s4, 381064
                  bne          a0, sp, 172f
                  slt          sp, s8, a3
                  bgeu         a5, a6, 173f
                  and          s3, t4, tp
                  sll          t3, zero, s6
                  slti         t4, s3, -554
                  nop
                  srl          a5, s6, a4
                  and          t6, s7, s7
                  nop
167:              nop
                  sll          a7, a6, s3
                  addi         a7, t1, -1438
                  slli         a0, t4, 18
                  sra          a7, zero, t2
172:              ori          a5, tp, -552
173:              sltu         s8, a3, a2
                  bgeu         t4, t2, 193f
                  bgeu         s2, t2, 189f
                  addi         s2, a7, 1756
                  or           zero, s0, tp
                  and          s6, t4, s2
                  slt          t1, s0, s0
                  slli         s1, s9, 10
                  ori          s9, s4, 1414
                  bne          t4, gp, 190f
                  srli         a7, s1, 21
                  slt          zero, a3, s3
                  sra          s8, t2, zero
                  or           s10, a5, s0
                  ori          a1, s7, 1373
                  bge          a6, t6, 208f
189:              sra          t6, t1, s9
190:              sltu         s0, a0, sp
                  auipc        gp, 330709
                  srl          s1, t6, t6
193:              blt          t3, s1, 195f
                  add          s9, s9, a5
195:              sltiu        gp, a4, -227
                  add          s1, a6, s5
                  xor          t2, gp, a6
                  and          s6, s1, s8
                  srai         a1, s7, 23
                  bge          t6, a7, 215f
                  beq          a2, sp, 207f
                  auipc        t3, 867060
                  sltu         a7, t5, s9
                  bne          ra, s11, 208f
                  bne          ra, s6, 224f
                  and          a2, t5, s11
207:              xori         ra, s4, 764
208:              xor          a0, a3, s11
                  sra          gp, t0, t0
                  bltu         t4, a2, 213f
                  beq          s11, t4, 223f
                  slt          gp, s2, s10
213:              beq          gp, a3, 220f
                  or           t0, ra, s1
215:              add          s7, t1, s4
                  xori         gp, s0, -1337
                  nop
                  beq          zero, t3, 223f
                  sltu         a0, s8, a5
220:              xori         s10, t0, -926
                  sra          zero, sp, a0
                  beq          s5, s10, 232f
223:              sltiu        t2, ra, 177
224:              xori         s3, gp, 34
                  addi         zero, tp, -461
                  slti         s5, a7, -2019
                  beq          s9, zero, 245f
                  lui          s7, 752941
                  sltu         t6, a2, s1
                  ori          t6, t2, 33
                  bgeu         s0, s0, 247f
232:              sub          s3, a0, s0
                  slli         a2, s4, 17
                  bltu         t5, a1, 240f
                  srli         a2, s10, 26
                  auipc        t6, 1022492
                  srl          a5, a4, t5
                  slti         a5, a0, 1741
                  ori          t2, s1, -849
240:              sub          t2, s3, a3
                  sub          sp, s5, s8
                  bgeu         a6, a2, 261f
                  blt          s4, a7, 262f
                  srai         s6, tp, 28
245:              sltiu        a7, t5, -538
                  sltu         a4, a4, tp
247:              add          t2, s8, s6
                  blt          s11, s0, 267f
                  blt          s9, s4, 255f
                  bne          s4, t0, 263f
                  sra          s2, t5, t2
                  bgeu         ra, s9, 264f
                  and          a1, a3, zero
                  slli         t4, a1, 19
255:              nop
                  srai         s0, s11, 4
                  bgeu         a7, t0, 269f
                  srai         s6, a5, 18
                  sll          s1, s1, gp
                  andi         t3, t2, 1353
261:              blt          s6, t1, 269f
262:              ori          zero, t4, 300
263:              sub          a5, s11, a1
264:              slli         t1, s8, 11
                  and          t0, tp, s1
                  bge          s5, s8, 276f
267:              bgeu         a6, s0, 281f
                  sltiu        a7, ra, -336
269:              sub          s9, s7, s7
                  sra          s8, t4, s4
                  beq          s9, s1, 290f
                  slli         t2, t2, 19
                  or           a6, gp, zero
                  srl          a1, t3, s8
                  srli         t6, zero, 4
276:              bge          s11, sp, 290f
                  beq          t5, s5, 278f
278:              slti         s8, s4, 1571
                  bltu         sp, t4, 294f
                  nop
281:              blt          zero, a1, 283f
                  or           s7, ra, zero
283:              nop
                  bne          t5, a6, 297f
                  ori          a7, a4, 606
                  add          s9, sp, gp
                  slli         s2, t3, 0
                  lui          sp, 122710
                  bltu         a0, s11, 301f
290:              and          a1, t0, s6
                  auipc        t1, 232629
                  bltu         t6, s3, 311f
                  xori         s1, t6, -218
294:              slt          s4, s8, s11
                  bgeu         t1, s0, 309f
                  srai         tp, gp, 24
297:              srl          s8, t4, s9
                  slti         t1, s0, -1178
                  srli         a2, t3, 16
                  srl          s3, a3, t3
301:              slti         sp, tp, -1221
                  blt          tp, zero, 308f
                  srl          s3, a7, sp
                  bge          s2, s3, 322f
                  and          t6, a2, s1
                  srai         s9, s10, 0
                  nop
308:              lui          s4, 908276
309:              or           a0, s10, t5
                  lui          t6, 279306
311:              bge          s1, a5, 321f
                  srai         gp, s3, 23
                  add          zero, a3, a7
                  xori         s8, sp, 291
                  xor          s3, a6, t4
                  sll          a1, s0, s0
                  sra          t3, t1, a1
                  slti         a5, tp, 1595
                  slt          s1, t4, a5
                  addi         a5, s4, -789
321:              sub          a4, zero, a2
322:              srai         a0, s11, 18
                  ori          t3, s2, 977
                  or           s10, s10, s3
                  addi         t3, t1, -1752
                  auipc        a0, 794956
                  sra          t1, sp, a3
                  beq          s3, s11, 336f
                  auipc        a4, 452291
                  auipc        s1, 953053
                  nop
                  xor          a2, t0, sp
                  and          s6, t6, t2
                  sra          t2, t6, s6
                  nop
336:              srai         s6, sp, 13
                  sltiu        t4, s2, 744
                  add          s5, a6, s5
                  add          t4, a4, a1
                  auipc        s6, 303383
                  lw           s10, 4(s11)
                  andi         s0, t4, -283
                  addi         s11, s11, 36
                  andi         a1, s8, 48
                  auipc        tp, 11122
                  nop
                  slti         s0, tp, 521
                  sra          a5, t6, sp
486:              addi x18, x26, 0
486:              jalr x18, x18, 0
sub_3:            nop
                  add          s3, a7, a1
                  addi         s11, s11, -60
                  srl          s6, sp, t0
                  or           t3, s0, t1
                  ori          s9, s9, 1865
                  and          s9, t3, s1
                  sw           s10, 4(s11)
                  slli         gp, s2, 9
                  srli         tp, a7, 26
                  sltiu        t6, a5, -1778
                  sltiu        s2, s5, 1140
                  xori         s0, s2, -1540
                  slti         s9, t0, -1579
                  nop
                  srli         t0, s10, 1
                  la           s7, sub_4
                  srli         s4, a5, 13
                  nop
                  andi         s9, s11, -1391
                  addi         s7, s7, 212
                  addi         sp, s11, -1860
                  beq          s10, a7, sub_3_j6 #branch to jump instr
                  sll          s10, t6, s8
sub_3_j6:         jalr         s10, s7, -211 #jump sub_3 -> sub_4
                  andi         gp, s2, 618
                  ori          t4, s9, -1291
                  andi         t6, t4, -626
                  addi         a6, a5, 1053
                  xori         s0, s4, 915
                  sub          s0, a4, a0
                  xor          s8, t2, a0
                  sltu         s1, gp, s7
                  slt          a2, s2, a7
                  slt          s7, s5, s11
                  nop
                  sub          a5, t6, a4
                  or           s9, a4, a0
                  xor          s2, s5, s7
                  and          t4, t1, a6
                  bne          a1, a5, 25f
                  sltu         a7, sp, s11
                  xori         t1, s6, -1794
                  sub          s1, t0, s6
                  srl          s3, a4, s3
                  auipc        s2, 241665
                  xori         s3, gp, 1652
                  ori          a7, a0, -1318
                  addi         s5, t0, -1915
                  beq          s0, s8, 41f
25:               beq          s11, a6, 29f
                  and          t0, a7, zero
                  bge          s7, sp, 34f
                  beq          s3, s11, 41f
29:               and          s9, a1, sp
                  slli         s5, t2, 24
                  slti         s6, ra, 1884
                  add          s3, s9, t4
                  bgeu         s11, s9, 36f
34:               andi         a6, s6, 1818
                  srli         gp, zero, 13
36:               srai         tp, a7, 4
                  nop
                  bltu         t5, t0, 43f
                  bltu         s4, s4, 45f
                  beq          s4, t0, 45f
41:               slli         ra, a4, 19
                  srli         s7, t1, 28
43:               beq          a1, s2, 45f
                  or           a5, t1, t2
45:               slt          s6, t0, s11
                  lw           s10, 4(s11)
                  slt          s5, gp, a0
                  and          s2, s1, s1
                  addi         s11, s11, 60
                  srai         tp, s11, 28
76:               addi x16, x26, 1
76:               jalr x16, x16, 0
sub_5:            srai         s0, t4, 0
                  addi         s11, s11, -12
                  xor          t6, a2, s10
                  slt          s7, a5, s9
                  slli         t0, s3, 31
                  or           t0, t3, sp
                  lui          s9, 937486
                  xori         s0, s2, -1465
                  sll          s6, tp, t6
                  sw           s10, 4(s11)
                  srl          s6, t6, ra
                  addi         s6, zero, 8 #init loop 1 counter
                  addi         a6, zero, 14 #init loop 1 limit
                  lui          tp, 593775
sub_5_0_1_t:      xor          sp, a5, t6
                  addi         s6, s6, 7 #update loop 1 counter
                  sltiu        s4, a2, -1072
                  addi         a4, zero, 10 #init loop 0 counter
                  sltiu        a5, s1, 314
                  addi         t4, zero, 14 #init loop 0 limit
sub_5_0_0_t:      add          s7, t1, s4
                  sll          t6, s3, tp
                  addi         a4, a4, 1 #update loop 0 counter
                  blt          a4, t4, sub_5_0_0_t #branch for loop 0
                  bltu         s6, a6, sub_5_0_1_t #branch for loop 1
                  sltiu        s7, t0, -721
                  bne          sp, t3, 13f
                  bgeu         gp, s6, 11f
                  sltu         a6, a5, s1
                  sub          ra, t1, a2
                  sub          a5, s11, s11
                  nop
                  and          s0, s2, gp
                  bne          t1, a6, 17f
                  srl          gp, s3, s0
                  addi         s7, a0, 1647
                  slt          ra, a1, tp
11:               srl          a5, t6, s8
                  or           tp, t4, s4
13:               srli         s0, s10, 5
                  srai         ra, a5, 6
                  slli         a2, s1, 17
                  beq          s3, s11, 24f
17:               bge          t2, t3, 21f
                  bge          s2, t0, 36f
                  xori         s1, t5, 153
                  sltu         a5, a2, zero
21:               andi         t3, a0, 1506
                  srl          s4, a7, a7
                  bgeu         a1, a7, 35f
24:               sltiu        gp, s2, -1190
                  slt          tp, s1, a1
                  sltiu        s4, s10, 77
                  blt          sp, a4, 43f
                  xori         s9, t2, 1426
                  and          s5, t5, s1
                  nop
                  auipc        a0, 721055
                  bgeu         s11, ra, 37f
                  slt          tp, a6, s11
                  beq          s9, s2, 42f
35:               auipc        s6, 2468
36:               bltu         s9, s5, 42f
37:               bne          s11, a3, 56f
                  ori          a5, t6, -976
                  andi         tp, s11, 1923
                  xor          t2, ra, t2
                  bgeu         s5, zero, 48f
42:               sll          s9, s9, t3
43:               bgeu         zero, s3, 55f
                  ori          s7, t0, 48
                  bge          a5, s0, 54f
                  beq          s6, s7, 51f
                  and          t0, a0, t5
48:               and          t6, s11, a3
                  bgeu         s0, a3, 51f
                  slt          t0, gp, s10
51:               or           s8, t5, a2
                  sll          s4, a5, tp
                  sub          s7, s7, s4
54:               sll          a7, a7, a0
55:               slli         s9, a6, 13
56:               bgeu         t3, t0, 58f
                  blt          s3, s9, 72f
58:               slli         s7, t3, 28
                  sltu         a4, s9, s1
                  ori          a0, a7, 61
                  slt          s4, a4, s5
                  sltu         t3, sp, a0
                  slti         a1, ra, 279
                  andi         s3, a4, 1931
                  xor          t4, s1, s3
                  nop
                  ori          gp, sp, 1447
                  sltu         s4, t0, s7
                  slli         t6, a6, 26
                  bgeu         ra, t1, 72f
                  sltiu        t0, t6, 1919
72:               sltu         s10, sp, t4
                  or           a0, s9, a7
                  lw           s10, 4(s11)
                  sltu         s9, t5, s4
                  addi         s11, s11, 12
                  add          s0, a1, gp
104:              addi x5, x26, 0
104:              jalr x5, x5, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x30, x27, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x2, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x2, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x2, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x2, x5, ecall_handler
                  li x5, 0x1
                  beq x2, x5, instr_fault_handler
                  li x5, 0x5
                  beq x2, x5, load_fault_handler
                  li x5, 0x7
                  beq x2, x5, store_fault_handler
                  li x5, 0xc
                  beq x2, x5, pt_fault_handler
                  li x5, 0xd
                  beq x2, x5, pt_fault_handler
                  li x5, 0xf
                  beq x2, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x27, x30, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
