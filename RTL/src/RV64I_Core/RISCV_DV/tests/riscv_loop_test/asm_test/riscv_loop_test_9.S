.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 0
                  csrw 0x305, x27 # MTVEC

mepc_setup:       
                  la x27, init
                  csrw 0x341, x27

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x27, 0x1800
                  csrw 0x300, x27 # MSTATUS
                  mret
init:             
                  li x0, 0xf92868c4
                  li x1, 0xfece1ad1
                  li x2, 0x80000000
                  li x3, 0x0
                  li x5, 0xc
                  li x6, 0xf5e5569f
                  li x7, 0x80000000
                  li x8, 0xf5bde9d4
                  li x9, 0x1fcc6702
                  li x10, 0x0
                  li x11, 0x630bd597
                  li x12, 0xf58c91cc
                  li x13, 0x0
                  li x14, 0xe3d866fa
                  li x15, 0x5c2a2a5f
                  li x16, 0xfcfbcf97
                  li x17, 0x0
                  li x18, 0x6
                  li x19, 0x80000000
                  li x20, 0x42bdfcb4
                  li x21, 0xf75170df
                  li x22, 0x0
                  li x23, 0x80000000
                  li x25, 0xf2e512c7
                  li x26, 0x9
                  li x27, 0xf
                  li x28, 0x55258c8e
                  li x29, 0x7
                  li x30, 0x80000000
                  li x31, 0x0
                  la x4, user_stack_end
main:             addi         t3, zero, 10 #init loop 0 counter
                  sltiu        t0, s0, -1260
                  sltu         t5, t3, gp
                  slli         s0, s10, 9
                  sll          s3, a4, t1
                  lui          zero, 33214
                  addi         a4, s3, 1609
                  sll          a4, t3, t2
                  addi         s6, zero, 13 #init loop 0 limit
main_2_0_t:       nop
                  or           ra, a3, s7
                  addi         t3, t3, 9 #update loop 0 counter
                  add          s2, a2, t3
                  xor          s5, t2, tp
                  or           sp, s6, t3
                  andi         t1, zero, 1325
                  bltu         t3, s6, main_2_0_t #branch for loop 0
                  sra          s5, a5, a1
                  addi         a6, zero, 9 #init loop 1 counter
                  addi         s1, zero, 9 #init loop 1 limit
main_0_1_t:       sltiu        t6, a6, 1546
                  addi         a6, a6, -2 #update loop 1 counter
                  sltu         s7, sp, s4
                  addi         a2, zero, -7 #init loop 0 counter
                  addi         gp, zero, 18 #init loop 0 limit
main_0_0_t:       andi         a4, s0, -1215
                  addi         s3, s11, 1391
                  addi         a2, a2, 6 #update loop 0 counter
                  bltu         a2, gp, main_0_0_t #branch for loop 0
                  bgeu         a6, s1, main_0_1_t #branch for loop 1
                  andi         t4, t5, 493
                  addi         s7, zero, 6 #init loop 1 counter
                  addi         a4, a5, 770
                  slt          a2, s8, t0
                  nop
                  addi         s2, zero, 11 #init loop 1 limit
                  xori         a4, t6, -380
main_1_1_t:       slti         t6, tp, -302
                  addi         s7, s7, 8 #update loop 1 counter
                  srl          s3, s6, t4
                  addi         a3, zero, 2 #init loop 0 counter
                  addi         gp, zero, 15 #init loop 0 limit
                  auipc        s9, 674940
                  and          zero, zero, t2
main_1_0_t:       addi         t6, sp, 1170
                  addi         a3, a3, 10 #update loop 0 counter
                  blt          a3, gp, main_1_0_t #branch for loop 0
                  xori         s0, s2, 1661
                  lui          s3, 681316
                  bltu         s7, s2, main_1_1_t #branch for loop 1
                  lui          ra, 732943
                  sll          t6, t4, s9
                  sll          a6, s10, a3
                  srl          s1, ra, s2
                  sltu         a3, gp, s10
                  nop
                  slli         s1, a2, 1
                  ori          t0, a6, 1713
                  addi         a5, t4, 654
                  xor          s9, gp, s5
                  nop
                  blt          a5, tp, 13f
                  slli         s11, gp, 9
                  beq          gp, s4, 30f
13:               srai         a4, s7, 11
                  bltu         s0, s5, 17f
                  andi         s2, s11, 82
                  sra          t1, zero, s9
17:               lui          s7, 294513
                  bltu         s5, a4, 22f
                  sub          a7, a4, t1
                  bge          t1, a4, 33f
                  sltiu        gp, a1, 1960
22:               xori         s11, t5, -2019
                  xori         s9, t1, -1682
                  sub          a7, a4, s6
                  xori         t5, t0, -1255
                  xor          a0, a4, t4
                  sra          s1, s10, a0
                  slt          gp, a1, a2
                  addi         s10, t4, -937
30:               slti         s7, s5, 47
                  slt          t4, s3, gp
                  or           s7, a2, s8
33:               xori         s5, a5, 1661
                  bgeu         zero, s2, 39f
                  beq          s10, a0, 51f
                  auipc        t0, 45451
                  slt          s9, t6, s3
                  bne          t2, s7, 48f
39:               sub          s0, s8, s6
                  bgeu         sp, s7, 55f
                  srli         t4, a5, 24
                  slli         gp, s10, 30
                  nop
                  sra          a4, a4, s8
                  andi         t5, sp, -1515
                  srli         s7, a7, 7
                  sltiu        s10, a2, 1724
48:               srai         t5, s10, 23
                  bgeu         s1, t2, 57f
                  sltiu        s9, a2, 297
51:               slt          gp, a3, s2
                  bge          s6, s0, 66f
                  bne          a5, a0, 73f
                  ori          sp, t3, 30
55:               bltu         s1, s9, 60f
                  bne          t0, a6, 61f
57:               andi         zero, s0, 1306
                  sll          s2, s9, a1
                  addi         gp, t6, -467
60:               auipc        a7, 368566
61:               slt          a3, s7, s3
                  slli         s3, s9, 3
                  xor          t6, s6, t2
                  andi         s11, zero, 1982
                  srai         s10, t4, 17
66:               ori          s0, s7, -1086
                  bne          t1, t4, 84f
                  sltu         t5, tp, s3
                  andi         t1, a5, -655
                  addi         a5, s8, 1333
                  sltu         s6, a3, t1
                  slli         gp, t4, 19
73:               sltiu        t5, gp, 930
                  lui          s3, 246177
                  sub          s1, a0, s1
                  bne          a7, s5, 81f
                  xori         ra, t2, 1114
                  add          t5, t1, s11
                  bge          s5, t2, 84f
                  sltu         a5, ra, t5
81:               sra          s9, gp, a3
                  srli         t5, t3, 5
                  bgeu         s7, a5, 99f
84:               slt          a2, s8, s8
                  lui          s5, 40253
                  blt          s10, s6, 102f
                  srli         a0, s9, 17
                  sll          s4, gp, s6
                  nop
                  or           s7, a5, s11
                  ori          t1, t4, 1408
                  bne          t4, gp, 107f
                  slli         t4, s11, 5
                  sll          s6, t1, ra
                  xori         ra, a3, -219
                  slti         s9, s1, -1221
                  beq          s6, t5, 117f
                  srl          s5, ra, a1
99:               bne          a4, s9, 104f
                  beq          a7, s8, 106f
                  blt          t0, s8, 102f
102:              sltiu        s1, t1, 700
                  and          s0, s10, a4
104:              addi         s11, t0, -764
                  lui          zero, 910417
106:              ori          a1, a1, -1297
107:              lui          s9, 261642
                  beq          s5, s11, 114f
                  bne          t6, a6, 120f
                  auipc        sp, 608286
                  sub          s0, s11, s9
                  add          a0, s0, a3
                  bgeu         ra, t2, 122f
114:              srai         a2, ra, 17
                  bltu         a2, s4, 129f
                  bne          t2, a3, 124f
117:              sll          s7, a1, s2
                  auipc        s5, 891344
                  bne          t0, ra, 132f
120:              addi         t6, a7, 251
                  bne          a2, a3, 126f
122:              auipc        t3, 302839
                  srai         s5, s3, 29
124:              ori          s10, a1, 1811
                  sub          a4, a2, t0
126:              auipc        sp, 419212
                  andi         t0, s2, 838
                  slli         s0, t0, 24
129:              sltiu        s7, s3, -645
                  slli         t4, a3, 2
                  add          s10, t2, s0
132:              slli         t5, ra, 29
                  slti         a6, t4, 481
                  bltu         a1, t2, 139f
                  bge          tp, ra, 140f
                  sll          zero, t3, sp
                  auipc        s6, 804272
                  add          a6, s7, s5
139:              beq          s4, a5, 140f
140:              add          s4, t6, s6
                  lui          ra, 164232
                  lui          ra, 512140
                  sll          a7, t2, s3
                  and          ra, ra, a4
                  and          a0, a5, t1
                  andi         t1, t2, 158
                  ori          zero, t2, -971
                  xor          a2, t2, a6
                  blt          t2, ra, 163f
                  la           ra, sub_1
                  and          s11, s0, s10
                  srai         s5, t0, 24
                  sltiu        s7, s2, -870
                  slli         s3, a3, 6
                  sltu         s5, a1, s7
                  addi         ra, ra, -359
                  slt          a6, a0, t1
                  sltu         s11, s0, a7
                  bgeu         a4, sp, main_j1 #branch to jump instr
                  sub          a3, s1, sp
                  srl          s6, s6, s11
main_j1:          jalr         ra, ra, 359 #jump main -> sub_1
                  bne          a4, tp, 166f
                  add          sp, t2, s3
                  addi         s3, s6, -1161
                  sltu         s7, s8, s0
                  auipc        zero, 271164
                  xor          ra, t5, a2
                  nop
                  bne          a2, s4, 166f
                  bge          s5, t0, 166f
                  srli         a2, s5, 3
                  auipc        a6, 615313
                  or           s5, s11, s9
                  and          a5, a7, a4
163:              slli         sp, s6, 3
                  slti         s10, s4, 409
                  sub          a0, s0, t0
166:              addi         sp, s1, 787
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            auipc        s11, 813252
                  blt          a4, a4, sub_1_stack_p
                  sll          a7, a4, zero
                  sltiu        t4, s10, 1258
sub_1_stack_p:    addi         tp, tp, -60
                  sw           ra, 4(tp)
                  nop
                  ori          a2, s7, 1685
                  srai         a4, s5, 6
                  addi         s4, zero, -5 #init loop 0 counter
                  and          a6, s8, a6
                  addi         a7, zero, -8 #init loop 0 limit
                  nop
sub_1_2_0_t:      andi         s10, a0, -1393
                  srai         a2, a1, 3
                  add          a0, t6, ra
                  and          t5, ra, a0
                  addi         s4, s4, -7 #update loop 0 counter
                  sll          t6, s4, t3
                  slti         a5, gp, 6
                  srai         a4, t4, 7
                  slli         t0, t3, 12
                  auipc        s6, 769900
                  slt          s6, s9, s5
                  bge          s4, a7, sub_1_2_0_t #branch for loop 0
                  slt          a4, a7, s10
                  addi         a5, zero, 2 #init loop 0 counter
                  sll          s2, s3, s9
                  ori          s4, s6, -1782
                  sub          s6, t2, a6
                  lui          sp, 966043
                  sra          s11, s0, a3
                  addi         a0, a1, -2043
                  nop
                  addi         t3, zero, -4 #init loop 0 limit
                  slt          zero, s10, s3
sub_1_5_0_t:      sltiu        s7, s4, 703
                  slti         s1, sp, -733
                  addi         a5, a5, -6 #update loop 0 counter
                  xor          s9, sp, a6
                  beq          a5, t3, sub_1_5_0_t #branch for loop 0
                  xor          s2, s9, zero
                  addi         sp, zero, 3 #init loop 0 counter
                  slt          t5, a1, t2
                  sra          s0, tp, s0
                  slli         s7, s9, 31
                  lui          t3, 998502
                  and          a5, s7, s3
                  slt          a6, t6, s1
                  addi         a1, zero, -11 #init loop 0 limit
                  or           s4, a5, tp
                  xori         a6, t0, 1884
sub_1_4_0_t:      xori         s9, t1, -1338
                  slti         s4, a2, 132
                  sll          s10, s2, a5
                  slt          s6, t5, s7
                  addi         sp, sp, -2 #update loop 0 counter
                  xori         s3, tp, 2012
                  sltu         gp, s2, t5
                  xori         a5, s7, -1529
                  sra          s9, a7, t3
                  add          s6, s3, s1
                  xor          t1, t5, t0
                  slt          a0, a0, a0
                  sub          t6, ra, s10
                  andi         s0, s4, 790
                  beq          sp, a1, sub_1_4_0_t #branch for loop 0
                  srai         a2, s11, 12
                  addi         t6, zero, -6 #init loop 1 counter
                  addi         s6, sp, -2025
                  lui          s0, 512972
                  and          a2, s2, s0
                  slt          gp, s2, ra
                  sltiu        a4, s3, -1859
                  lui          s6, 493030
                  sra          a2, a6, t5
                  addi         s9, zero, 3 #init loop 1 limit
                  slli         a0, sp, 12
sub_1_14_1_t:     add          t3, a6, a3
                  addi         t6, t6, 6 #update loop 1 counter
                  srl          a2, sp, a2
                  addi         a3, zero, 10 #init loop 0 counter
                  sltiu        a4, s9, 935
                  addi         s3, zero, 17 #init loop 0 limit
                  auipc        t1, 146750
                  auipc        a0, 979115
                  lui          t5, 88600
                  add          t3, a0, a5
                  sra          s6, t3, s0
sub_1_14_0_t:     sub          t1, s10, sp
                  auipc        s0, 566734
                  addi         a3, a3, 7 #update loop 0 counter
                  nop
                  and          t4, a2, a2
                  bne          a3, s3, sub_1_14_0_t #branch for loop 0
                  andi         t3, a7, 1714
                  srai         s2, s6, 30
                  add          s10, a0, zero
                  sub          zero, s6, a7
                  srai         t5, a4, 12
                  bltu         t6, s9, sub_1_14_1_t #branch for loop 1
                  add          t3, t0, a4
                  addi         a4, zero, -6 #init loop 1 counter
                  addi         a5, tp, -1887
                  addi         t0, zero, 6 #init loop 1 limit
                  slti         s10, a6, -1564
sub_1_13_1_t:     nop
                  auipc        s10, 362708
                  srai         a3, t1, 10
                  addi         a4, a4, 6 #update loop 1 counter
                  sltiu        s7, s8, 59
                  addi         a2, zero, 7 #init loop 0 counter
                  addi         s1, s3, -1948
                  add          a3, s8, s2
                  sltiu        s2, t1, -1684
                  andi         s2, t6, 723
                  sltiu        s3, a4, -840
                  or           s2, a3, a4
                  nop
                  addi         gp, zero, -13 #init loop 0 limit
                  auipc        t6, 696731
                  lui          a3, 950266
                  sltu         t4, t0, t2
                  sltiu        a7, s10, 1411
sub_1_13_0_t:     ori          s5, s2, 1970
                  addi         a2, a2, -10 #update loop 0 counter
                  sltu         sp, t0, a7
                  nop
                  bne          a2, gp, sub_1_13_0_t #branch for loop 0
                  andi         t6, sp, -266
                  bne          a4, t0, sub_1_13_1_t #branch for loop 1
                  xori         t5, a3, -1691
                  addi         s9, zero, -1 #init loop 0 counter
                  srl          s1, t1, a2
                  addi         gp, zero, 20 #init loop 0 limit
sub_1_15_0_t:     auipc        t6, 401445
                  addi         s9, s9, 1 #update loop 0 counter
                  xori         t1, s10, -2037
                  blt          s9, gp, sub_1_15_0_t #branch for loop 0
                  sltu         s4, s1, ra
                  addi         t1, zero, -3 #init loop 1 counter
                  addi         s9, zero, 0 #init loop 1 limit
                  lui          s0, 558255
sub_1_10_1_t:     xori         s1, s3, 95
                  addi         t1, t1, 9 #update loop 1 counter
                  addi         a7, zero, 8 #init loop 0 counter
                  addi         s4, zero, 8 #init loop 0 limit
sub_1_10_0_t:     lui          s3, 409130
                  sub          t3, t4, sp
                  slli         s3, s3, 0
                  addi         a7, a7, -7 #update loop 0 counter
                  bgeu         a7, s4, sub_1_10_0_t #branch for loop 0
                  blt          t1, s9, sub_1_10_1_t #branch for loop 1
                  xori         t3, s3, 894
                  addi         a1, zero, 9 #init loop 1 counter
                  slti         a3, sp, -1113
                  sub          s2, gp, s4
                  add          sp, t5, s4
                  add          s10, a4, ra
                  slli         s4, a3, 21
                  addi         zero, t6, -1794
                  and          s10, a5, sp
                  sltu         t4, t1, s9
                  nop
                  slti         s11, a7, 1813
                  nop
                  addi         s1, zero, 6 #init loop 1 limit
sub_1_0_1_t:      andi         s10, t1, 635
                  xor          a5, s5, t6
                  addi         a1, a1, -3 #update loop 1 counter
                  slti         zero, a3, -1070
                  addi         a5, s0, -874
                  or           t6, a6, t1
                  addi         s6, zero, -10 #init loop 0 counter
                  addi         t0, zero, 17 #init loop 0 limit
sub_1_0_0_t:      or           s7, s9, t3
                  addi         s6, s6, 9 #update loop 0 counter
                  bne          s6, t0, sub_1_0_0_t #branch for loop 0
                  auipc        s10, 1014128
                  and          a3, s3, a0
                  or           ra, s11, t1
                  add          s7, s2, gp
                  xor          s7, t2, a4
                  ori          s11, a3, -1021
                  addi         s2, zero, -1640
                  andi         s2, t5, -1425
                  bgeu         a1, s1, sub_1_0_1_t #branch for loop 1
                  addi         t5, a0, -1690
                  addi         t0, zero, -1 #init loop 0 counter
                  slt          t6, s10, a2
                  or           s3, s1, zero
                  andi         a5, s7, -815
                  and          s2, s4, gp
                  ori          t5, s2, 1910
                  xori         t4, tp, 1491
                  sub          s0, s2, s9
                  add          a3, t2, zero
                  sll          sp, gp, a7
                  addi         sp, t5, -632
                  sltu         t6, s7, t5
                  slli         sp, s9, 9
                  xor          s2, s0, a7
                  slli         s2, t1, 23
                  addi         s1, zero, -9 #init loop 0 limit
                  sltiu        s0, tp, 1070
                  lui          t1, 318821
                  xori         zero, tp, -1051
                  addi         s5, s11, -1803
                  srai         s10, a0, 23
sub_1_3_0_t:      and          s11, s7, s2
                  sltu         s6, s5, t5
                  addi         t0, t0, -8 #update loop 0 counter
                  ori          s10, t2, -686
                  ori          a6, a5, -1546
                  sra          t1, s2, s3
                  slli         a2, s6, 12
                  beq          t0, s1, sub_1_3_0_t #branch for loop 0
                  sll          s3, s1, t5
                  addi         a6, zero, -7 #init loop 1 counter
                  addi         s6, zero, 9 #init loop 1 limit
                  srai         a4, t3, 30
sub_1_16_1_t:     nop
                  addi         a6, a6, 6 #update loop 1 counter
                  addi         s10, zero, -5 #init loop 0 counter
                  addi         s5, zero, 8 #init loop 0 limit
sub_1_16_0_t:     andi         a5, t2, -476
                  sll          a2, s9, s4
                  addi         s10, s10, 5 #update loop 0 counter
                  bltu         s10, s5, sub_1_16_0_t #branch for loop 0
                  sltiu        a7, s1, -620
                  bltu         a6, s6, sub_1_16_1_t #branch for loop 1
                  and          s7, a7, a4
                  addi         a4, zero, 1 #init loop 0 counter
                  slti         zero, a4, 1350
                  andi         a5, s5, -424
                  sub          s9, a4, s9
                  addi         gp, s6, -1952
                  andi         t6, a1, -1280
                  xor          s2, s1, t5
                  addi         s5, zero, -6 #init loop 0 limit
                  sltiu        gp, s8, 1228
sub_1_18_0_t:     xori         t5, s3, 1598
                  nop
                  addi         a4, a4, -8 #update loop 0 counter
                  or           a7, s6, tp
                  lui          s3, 726198
                  sltiu        a5, t3, -163
                  auipc        s11, 836623
                  srl          t6, s0, a4
                  nop
                  slt          t5, t2, t4
                  sll          t4, t4, s11
                  or           t1, t3, ra
                  slli         ra, s4, 27
                  and          gp, zero, s2
                  bge          a4, s5, sub_1_18_0_t #branch for loop 0
                  xor          gp, t6, s1
                  addi         a1, zero, 10 #init loop 0 counter
                  sltu         s6, s1, a6
                  srl          a5, s2, s4
                  xor          s11, t6, s7
                  srli         s3, s0, 20
                  sltiu        a7, s10, -712
                  addi         s9, zero, -5 #init loop 0 limit
sub_1_1_0_t:      andi         s7, s0, 1305
                  or           gp, zero, t5
                  slli         sp, gp, 19
                  add          a0, s6, s4
                  addi         a1, a1, -5 #update loop 0 counter
                  auipc        t0, 845475
                  sltiu        gp, s6, -1082
                  auipc        t3, 215386
                  bne          a1, s9, sub_1_1_0_t #branch for loop 0
                  ori          s10, s6, -1658
                  addi         t1, zero, 9 #init loop 1 counter
                  slli         a5, zero, 19
                  nop
                  xori         t4, s8, 425
                  srl          a1, t2, t3
                  nop
                  xori         a7, a4, 2014
                  or           t5, tp, a7
                  addi         s7, zero, 5 #init loop 1 limit
sub_1_8_1_t:      xor          a7, s10, a6
                  auipc        s9, 420766
                  addi         t1, t1, -3 #update loop 1 counter
                  xor          t4, s8, zero
                  ori          t3, s5, 944
                  sltiu        zero, s4, 758
                  addi         a0, zero, -7 #init loop 0 counter
                  and          a4, a1, s8
                  addi         sp, zero, 6 #init loop 0 limit
                  slti         ra, s10, 1740
sub_1_8_0_t:      addi         zero, sp, 1079
                  addi         a0, a0, 4 #update loop 0 counter
                  slti         gp, s11, -1595
                  bltu         a0, sp, sub_1_8_0_t #branch for loop 0
                  bgeu         t1, s7, sub_1_8_1_t #branch for loop 1
                  andi         a2, sp, 1643
                  addi         s0, zero, 2 #init loop 0 counter
                  xori         t6, tp, -231
                  addi         s3, s9, -1240
                  nop
                  xor          t6, zero, s0
                  slti         s7, a5, 789
                  addi         t4, zero, 2 #init loop 0 limit
                  nop
                  auipc        a6, 790596
                  srl          t0, a6, t5
                  slt          a5, a6, t2
sub_1_6_0_t:      and          a5, gp, a1
                  sra          a1, a4, sp
                  addi         s0, s0, -1 #update loop 0 counter
                  slt          s1, a3, s7
                  sltu         s7, t2, s3
                  bgeu         s0, t4, sub_1_6_0_t #branch for loop 0
                  sltu         a1, a5, tp
                  addi         t0, zero, 10 #init loop 0 counter
                  ori          s2, a3, -706
                  sra          t5, a1, gp
                  addi         s5, zero, 8 #init loop 0 limit
                  sll          t3, a1, s9
                  sub          t3, s10, s2
                  sub          s7, t1, s1
sub_1_9_0_t:      addi         zero, s1, 1798
                  auipc        s2, 235057
                  sll          s9, a4, s4
                  srai         t1, zero, 19
                  srai         t3, a7, 15
                  auipc        zero, 656891
                  addi         s6, s5, -559
                  slt          a2, t3, s10
                  add          ra, s9, s10
                  srli         a5, t5, 12
                  addi         t0, t0, -6 #update loop 0 counter
                  slt          s2, s3, t1
                  addi         s9, a4, -1883
                  srai         a5, s5, 25
                  srai         a3, a3, 24
                  xori         s0, s9, -1117
                  sltiu        s3, s4, -281
                  bgeu         t0, s5, sub_1_9_0_t #branch for loop 0
                  sltu         a6, t3, ra
                  addi         a6, zero, 2 #init loop 1 counter
                  addi         t6, zero, 10 #init loop 1 limit
                  addi         t3, sp, 388
                  lui          s2, 305490
                  addi         zero, s2, -1465
sub_1_20_1_t:     slt          s1, gp, tp
                  or           a5, s11, s9
                  addi         a6, a6, 6 #update loop 1 counter
                  srai         t1, a6, 29
                  addi         s0, zero, 7 #init loop 0 counter
                  sltu         a5, s4, a0
                  slti         gp, t2, 403
                  sltiu        ra, zero, 1161
                  add          s2, s5, s3
                  addi         s10, zero, 11 #init loop 0 limit
                  xor          s7, t4, s9
                  srai         a5, s3, 1
                  or           s3, s8, zero
sub_1_20_0_t:     sub          s1, a3, a6
                  srl          t4, gp, a2
                  addi         s0, s0, 2 #update loop 0 counter
                  srai         a1, s0, 23
                  ori          t4, a7, 286
                  bltu         s0, s10, sub_1_20_0_t #branch for loop 0
                  nop
                  andi         t5, a3, 1989
                  andi         s3, a2, 1617
                  sltiu        a4, t5, -1684
                  nop
                  auipc        ra, 396347
                  blt          a6, t6, sub_1_20_1_t #branch for loop 1
                  xor          s3, a6, t2
                  addi         t1, zero, -4 #init loop 1 counter
                  sub          a2, s1, s2
                  andi         s7, s3, -351
                  addi         gp, zero, -13 #init loop 1 limit
sub_1_19_1_t:     sub          a5, t0, ra
                  sra          s9, t1, a4
                  addi         s2, s3, 1072
                  add          t6, s5, s4
                  addi         t1, t1, -9 #update loop 1 counter
                  xor          t3, a6, a0
                  addi         s11, zero, 2 #init loop 0 counter
                  addi         s0, zero, 8 #init loop 0 limit
                  auipc        a4, 312149
                  srli         a5, t6, 18
sub_1_19_0_t:     ori          t3, a4, -462
                  addi         a7, s5, -176
                  addi         s11, s11, 5 #update loop 0 counter
                  xori         a6, t4, 526
                  blt          s11, s0, sub_1_19_0_t #branch for loop 0
                  srli         a2, s5, 31
                  andi         t0, tp, 347
                  sltiu        s1, t1, 946
                  srai         s10, s1, 15
                  auipc        s2, 215963
                  bne          t1, gp, sub_1_19_1_t #branch for loop 1
                  slli         a6, zero, 2
                  blt          t6, s10, 5f
                  add          zero, t4, s11
                  addi         s6, a2, 99
                  lui          s10, 478166
                  auipc        a6, 710046
5:                and          t0, gp, sp
                  sra          s7, s10, t1
                  sltu         a3, sp, a0
                  sra          gp, s7, s5
                  sra          a1, gp, s7
                  auipc        a0, 595003
                  beq          t6, t5, 30f
                  srli         a3, t6, 26
                  xor          s3, s1, t5
                  auipc        s2, 324638
                  bge          a4, s5, 33f
                  sll          zero, zero, a4
                  bgeu         t4, t0, 22f
                  bne          a0, s1, 34f
                  xor          s7, s11, zero
                  nop
                  bge          t2, t5, 26f
22:               sltu         a4, tp, t1
                  beq          a1, gp, 35f
                  bne          s11, s8, 31f
                  bltu         s6, s0, 45f
26:               srl          t5, t0, s9
                  srli         a5, zero, 26
                  sub          t0, a4, s0
                  srai         a2, s10, 25
30:               or           t4, zero, s8
31:               slli         a0, s8, 22
                  srli         s3, t0, 17
33:               ori          s9, zero, 189
34:               blt          t0, s5, 51f
35:               slti         zero, s4, -1709
                  andi         a3, t0, -1677
                  sll          s5, a6, s0
                  add          s11, s3, ra
                  ori          s9, s1, -547
                  ori          s4, t5, 239
                  sltiu        a0, t1, -1655
                  slti         a2, s7, -1584
                  slti         a5, t4, 730
                  blt          s7, s11, 45f
45:               srai         t0, s7, 10
                  sra          s0, a2, a3
                  beq          a6, s6, 49f
                  sub          s1, tp, a7
49:               sub          s6, a3, t2
                  addi         a3, s8, 258
51:               add          t6, tp, s10
                  xor          s3, s0, t4
                  blt          s8, a2, 58f
                  srl          s4, t0, s7
                  sub          s7, s3, a6
                  beq          a7, t5, 73f
                  or           a3, a2, t3
58:               andi         a5, s7, 1867
                  slli         a5, a1, 3
                  andi         ra, s4, -146
                  or           a3, a5, s3
                  bne          sp, s1, 74f
                  sra          a3, s4, s8
                  slli         t6, s0, 9
                  bne          s10, a2, 77f
                  nop
                  addi         t3, t1, -1107
                  nop
                  slli         s3, a7, 23
                  bne          s8, s10, 79f
                  xori         s4, a0, 28
                  blt          s5, t5, 80f
73:               and          s9, a7, a1
74:               and          gp, sp, t0
                  xori         t0, s0, -1957
                  add          t1, t2, s8
77:               sub          s10, a0, a3
                  or           s5, t1, t6
79:               bne          t2, s1, 85f
80:               sra          s3, zero, a2
                  lui          a1, 373000
                  and          t5, s3, s0
                  addi         t1, a5, -61
                  ori          s5, t5, -983
85:               beq          s10, t0, 99f
                  slt          a4, a6, t0
                  or           s10, ra, a2
                  and          t0, t6, a6
                  xor          s0, s7, s5
                  bgeu         t3, t0, 102f
                  srl          ra, t3, gp
                  srli         t1, s0, 10
                  sll          a5, a6, s4
                  lui          s11, 742513
                  bge          gp, s1, 114f
                  add          t3, t3, t6
                  slli         a0, s1, 8
                  srai         t6, a2, 3
99:               andi         a4, t1, -936
                  srl          s6, t5, s7
                  ori          sp, sp, -1749
102:              slti         t6, sp, 1085
                  andi         a6, a1, 1638
                  nop
                  or           t4, a3, s2
                  beq          a5, t1, 118f
                  sltu         s1, a3, s3
                  bltu         s8, sp, 121f
                  bne          t4, a5, 110f
110:              sltu         s10, s3, a2
                  bne          t3, s10, 125f
                  sra          t5, s10, t1
                  xor          a4, s1, a0
114:              add          s1, tp, a0
                  slli         s11, ra, 26
                  auipc        s0, 125373
                  sltu         s6, t4, s10
118:              slt          s10, s0, s0
                  andi         s4, t1, 525
                  slt          t0, s0, t6
121:              bgeu         s1, s6, 134f
                  andi         t3, t2, 648
                  slt          t3, t4, a0
                  add          s6, t6, gp
125:              slti         zero, s2, -1530
                  bgeu         t4, tp, 142f
                  lui          s11, 775313
                  srli         t6, t0, 31
                  addi         s5, a7, 439
                  sra          a5, a2, s0
                  srl          s2, s1, tp
                  bne          sp, t3, 147f
                  sltiu        a0, t2, -1190
134:              addi         s7, sp, 111
                  lui          s11, 173607
                  nop
                  andi         t6, s11, -2012
                  sll          ra, a7, a2
                  sltu         s2, t1, s2
                  sub          s4, t4, t5
                  srli         s2, a1, 31
142:              srl          t3, t4, t1
                  bne          t4, a4, 163f
                  bne          a5, s5, 158f
                  blt          t2, a2, 150f
                  or           a3, a0, a6
147:              xori         s0, a1, 1011
                  bgeu         s1, a0, 149f
149:              nop
150:              sra          s9, t1, a1
                  slti         t4, a5, 1187
                  srli         a1, t2, 7
                  and          a1, t5, s7
                  bltu         t0, a3, 159f
                  sltu         s11, a0, t3
                  sra          s6, a1, s5
                  andi         s1, a3, 1606
158:              sltiu        s11, a7, 743
159:              sltiu        s11, t3, -378
                  add          a3, s7, gp
                  bge          ra, t5, 163f
                  and          t3, tp, t6
163:              nop
                  slli         zero, a3, 12
                  andi         a1, a1, -1839
                  slli         a5, t6, 9
                  bgeu         t5, zero, 187f
                  slli         t4, t5, 20
                  bne          s0, a4, 174f
                  blt          t5, s7, 171f
171:              and          t4, s8, s8
                  addi         s9, s0, 1879
                  slt          ra, a6, t0
174:              slti         a6, s5, -1061
                  slti         s5, gp, -634
                  bne          s11, a5, 189f
                  sll          s9, zero, s6
                  bgeu         a3, s5, 190f
                  srli         a0, a7, 2
                  bge          a6, s4, 196f
                  slli         t0, a4, 19
                  sll          s11, zero, s1
                  beq          s0, a3, 203f
                  srli         a4, s9, 16
                  bgeu         t0, s3, 202f
                  slti         t4, sp, -831
187:              slli         t3, a6, 26
                  slti         s2, a7, -1812
189:              slti         gp, a4, 1025
190:              and          gp, t1, ra
                  addi         zero, t6, -1439
                  blt          s2, ra, 200f
                  blt          zero, t4, 199f
                  beq          t5, s1, 211f
                  addi         a2, s11, 1870
196:              or           s3, s6, a0
                  slti         s0, zero, -1568
                  blt          t3, t3, 205f
199:              slti         a2, s5, -1438
200:              slt          s2, a2, gp
                  bne          t1, s6, 213f
202:              bge          t5, gp, 215f
203:              or           t1, a5, t0
                  lui          a4, 505805
205:              addi         t5, sp, -1409
                  xor          t0, s1, s3
                  sra          s5, s5, s7
                  bltu         s10, s3, 227f
                  or           s3, t5, t4
                  bgeu         s7, s1, 228f
211:              and          a7, t6, a1
                  bltu         a0, s10, 226f
                  la           s3, sub_2
                  sll          t5, a1, a1
                  sub          s5, a0, a3
                  slti         a7, t6, -1618
                  sra          s7, gp, a4
                  addi         s3, s3, -340
                  andi         t5, a4, 690
                  srai         t4, a4, 5
                  slli         t1, ra, 3
                  lui          s9, 398936
sub_1_j2:         jalr         ra, s3, 341 #jump sub_1 -> sub_2
213:              beq          a7, ra, 225f
                  and          s0, a7, gp
215:              add          a2, s11, sp
                  xor          s2, s9, a2
                  auipc        zero, 569498
                  auipc        t0, 297386
                  lui          s10, 909633
                  auipc        a4, 873977
                  andi         s1, t4, 1522
                  slti         t3, a3, -584
                  addi         s2, s4, -399
                  blt          a0, zero, 236f
225:              bge          t5, s0, 230f
226:              or           s7, a6, zero
227:              nop
228:              bne          a0, s8, 244f
                  bltu         a2, s7, 238f
230:              srli         s3, ra, 20
                  slli         s9, t5, 24
                  blt          t2, s3, 244f
                  addi         sp, zero, 4 #init loop 0 counter
                  slli         gp, s8, 30
                  and          s7, a3, s8
                  andi         a5, t3, -1967
                  addi         s1, zero, 11 #init loop 0 limit
                  slti         a0, t1, -493
                  nop
                  sra          a1, t4, s4
                  sub          s5, a2, s3
                  sra          t6, s5, a2
                  srai         s6, ra, 30
                  slli         s5, a1, 24
                  slli         s0, s7, 23
                  nop
sub_1_21_0_t:     and          t0, a7, t0
                  lui          s0, 726928
                  addi         sp, sp, 9 #update loop 0 counter
                  lui          s4, 69601
                  bltu         sp, s1, sub_1_21_0_t #branch for loop 0
                  slli         s3, s7, 10
                  auipc        ra, 560659
                  andi         t5, s5, -1916
                  or           a2, a7, t0
236:              bge          t5, gp, 251f
                  or           a2, a1, s1
238:              sub          t4, s6, s0
                  or           a4, s9, zero
                  add          a7, s7, zero
                  bltu         s8, t2, 260f
                  sra          s4, s5, tp
                  xor          a5, a2, t5
244:              auipc        s7, 289558
                  sra          a3, a1, a0
                  auipc        s11, 709661
                  add          a0, t4, a5
                  blt          s0, s8, 254f
                  nop
                  sra          gp, zero, t3
251:              or           a1, s3, s10
                  slli         a2, a5, 26
                  srli         s6, s10, 12
254:              sra          a1, s4, s1
                  auipc        a1, 949347
                  nop
                  andi         s9, gp, 234
                  ori          a0, s11, 1313
                  xori         s2, tp, -583
260:              sll          t5, s2, s7
                  slli         sp, a1, 0
                  bltu         ra, t1, 274f
                  sra          s11, t0, s10
                  sll          a0, t5, a0
                  add          ra, a5, s0
                  bge          tp, s0, 279f
                  lui          s5, 441667
                  beq          s9, zero, 275f
                  or           s5, sp, t5
                  sltu         a0, s5, s1
                  xor          a7, s1, t4
                  slli         t6, t2, 14
                  bgeu         tp, sp, 290f
274:              blt          a1, a2, 289f
275:              sltu         s9, a1, a2
                  slt          a1, s8, t2
                  add          t4, t0, s7
                  srli         s5, s11, 27
279:              xori         s5, s4, -1169
                  bgeu         s10, ra, 298f
                  bge          s1, s11, 297f
                  bge          s0, s5, 294f
                  bne          t1, t6, 288f
                  auipc        t0, 640793
                  xori         a5, s0, -385
                  nop
                  bne          gp, t6, 299f
288:              sll          gp, a5, a3
289:              xor          s5, a3, t1
290:              auipc        t1, 189271
                  auipc        t5, 432635
                  add          s7, s2, t1
                  bgeu         gp, a4, 312f
294:              sub          sp, s5, s8
                  lui          s3, 849937
                  blt          s5, a6, 297f
297:              auipc        a3, 376589
298:              sll          a6, s9, s0
299:              bne          a5, a3, 311f
                  ori          s6, tp, -751
                  auipc        s6, 102378
                  sll          t5, tp, zero
                  andi         a0, t4, 1839
                  srai         s7, t3, 2
                  beq          s8, a7, 313f
                  or           a2, a1, a7
                  srli         gp, a0, 7
                  sltiu        t0, s6, 1483
                  or           zero, s4, a5
                  sra          t1, a0, s8
311:              bge          t5, a2, 323f
312:              srli         s5, s7, 24
313:              auipc        s3, 150520
                  bge          s2, s9, 316f
                  nop
316:              addi         a4, gp, 397
                  sra          t0, a2, t0
                  bgeu         t6, t6, 334f
                  bge          a2, s2, 324f
                  beq          s7, a7, 325f
                  ori          t3, s10, 284
                  blt          a2, sp, 336f
323:              addi         sp, a7, 1740
324:              slt          a5, a1, a2
325:              slt          s6, t0, a0
                  sra          a4, s1, s11
                  lui          a7, 982992
                  and          ra, s5, t0
                  slli         s9, s6, 5
                  nop
                  blt          s3, t6, 340f
                  xor          t1, zero, t3
                  slti         t6, a4, -1580
334:              srai         a6, a0, 3
                  nop
336:              srli         t4, s4, 18
                  sll          s10, t1, t1
                  bge          s1, t2, 352f
                  beq          zero, s4, 356f
340:              auipc        gp, 1032898
                  sltiu        s10, a4, 1049
                  bgeu         s1, s11, 361f
                  nop
                  auipc        a1, 648265
                  sra          ra, s7, a3
                  sra          s10, s9, s9
                  beq          t4, gp, 352f
                  sltiu        a6, s1, -4
                  bltu         a1, s1, 369f
                  bltu         t1, a2, 351f
351:              sll          a7, a0, s1
352:              bltu         s2, a0, 372f
                  sub          s6, t2, a4
                  blt          s4, a4, 367f
                  blt          s8, t3, 356f
356:              blt          tp, zero, 365f
                  ori          s6, s10, -1786
                  auipc        t1, 469489
                  ori          t6, t5, -2008
                  and          t4, zero, s0
361:              slli         a4, s5, 2
                  srli         t6, t3, 9
                  slti         t1, a7, -373
                  xor          a7, s6, a5
365:              slti         a7, s10, 370
                  addi         s4, s5, -1746
367:              sltiu        s3, s8, -576
                  slti         t4, a0, -1129
369:              or           a7, ra, a0
                  addi         gp, t0, -913
                  auipc        zero, 377070
372:              slli         sp, s11, 12
                  addi         s1, a7, -1832
                  blt          t4, sp, 376f
                  slti         zero, s11, 404
376:              sra          s4, s5, gp
                  bne          t5, t6, 384f
                  blt          s8, a1, 395f
                  sub          s6, a2, s0
                  ori          s6, a2, -913
                  andi         s11, a7, 2002
                  sltiu        gp, a2, -1407
                  and          s4, t1, ra
384:              nop
                  xor          s0, gp, a4
                  bltu         a4, a2, 404f
                  sltu         t6, zero, a3
                  srl          t3, s9, s6
                  beq          t4, a3, 409f
                  lui          s4, 52231
                  sub          t5, a6, s6
                  srli         a3, a7, 21
                  auipc        t4, 831795
                  auipc        a3, 861996
395:              slti         t3, s4, 1272
                  sll          a0, sp, a2
                  xori         a7, t3, 1382
                  and          a6, s2, a6
                  bltu         zero, s5, 411f
                  srai         sp, t1, 27
                  sub          a7, t3, s11
                  srli         t0, t3, 20
                  sltu         s3, s0, s8
404:              or           a0, s0, s9
                  addi         a5, t4, -657
                  lui          s9, 468554
                  blt          s4, a6, 412f
                  lui          zero, 890312
409:              slt          s5, s8, s10
                  beq          sp, s11, 429f
411:              add          a4, s6, a2
412:              bne          s5, s9, 432f
                  sltu         s5, sp, t2
                  ori          zero, a2, -415
                  bne          tp, sp, 427f
                  srli         t3, s2, 17
                  and          t6, a3, a6
                  sub          zero, tp, ra
                  addi         t6, s5, 140
                  add          t0, gp, s2
                  slli         a1, a5, 25
                  ori          s5, s3, 575
                  or           sp, t6, a2
                  srli         s6, gp, 1
                  srl          t0, a7, t3
                  lui          t5, 398354
427:              xori         a7, a2, 1771
                  ori          s0, t5, -1635
429:              addi         t6, a7, -2040
                  bne          tp, s3, 444f
                  slli         sp, ra, 8
432:              bgeu         a1, s9, 437f
                  and          a6, a3, s5
                  slt          s2, t4, a5
                  or           sp, t1, s11
                  xor          t3, s0, s8
437:              sltu         s1, gp, a4
                  bne          zero, s3, 453f
                  bne          t4, t0, 453f
                  lui          a4, 676444
                  xor          s4, s7, s8
                  lui          a4, 573355
                  slt          s1, t2, s5
444:              sub          a6, a7, a1
                  sll          s4, s3, s1
                  blt          ra, s1, 463f
                  add          s5, s3, s8
                  slti         t4, s0, -199
                  srai         a2, s2, 1
                  srl          a4, s3, s2
                  addi         ra, zero, -1 #init loop 1 counter
                  addi         s6, s3, 816
                  addi         t4, zero, 7 #init loop 1 limit
sub_1_11_1_t:     xori         s6, ra, 1672
                  srli         t0, t2, 28
                  srli         s11, t6, 27
                  addi         ra, ra, 9 #update loop 1 counter
                  srl          a7, gp, a3
                  add          t5, s6, s3
                  or           s7, s4, s5
                  addi         a3, zero, -5 #init loop 0 counter
                  addi         s4, zero, -20 #init loop 0 limit
                  sltiu        s6, s7, 1096
                  lui          s9, 668197
sub_1_11_0_t:     sltiu        a6, s7, 469
                  sll          s2, tp, gp
                  addi         a3, a3, -5 #update loop 0 counter
                  auipc        t5, 122589
                  addi         s6, a3, 1778
                  auipc        a2, 161846
                  bne          a3, s4, sub_1_11_0_t #branch for loop 0
                  lui          a0, 897345
                  slt          a4, a7, s10
                  slli         s6, t6, 2
                  blt          ra, t4, sub_1_11_1_t #branch for loop 1
                  xor          t6, s7, s11
                  beq          t2, tp, 467f
                  sub          s10, a5, t6
453:              addi         t6, gp, 461
                  bltu         a0, t6, 462f
                  addi         s9, s1, -1391
                  and          a1, t6, a4
                  bge          t3, s5, 458f
458:              bltu         t6, s11, 470f
                  xori         s1, a4, 634
                  andi         s4, s2, 354
                  auipc        a6, 116581
462:              add          s10, a0, s7
463:              auipc        a2, 269048
                  add          s9, a2, a3
                  slli         s3, gp, 29
                  srl          t5, a5, ra
467:              slt          t5, a5, s5
                  slti         a1, a6, 1841
                  sll          a3, t4, s10
470:              auipc        s2, 519288
                  blt          a4, zero, 487f
                  bgeu         ra, t5, 484f
                  nop
                  bge          s11, zero, 480f
                  bne          t4, s9, 488f
                  and          t6, s4, a4
                  blt          sp, t6, 482f
                  slt          s0, s7, s6
                  sltiu        ra, s7, -1997
480:              slt          s0, a4, a7
                  slli         s4, t5, 23
482:              sra          t5, a7, a5
                  xor          zero, s11, t3
484:              bltu         gp, s10, 489f
                  slt          s9, s2, t4
                  bge          s7, zero, 499f
487:              and          s11, s8, s1
488:              srai         s2, a5, 17
489:              sltiu        a3, s4, -900
                  lui          t1, 774577
                  nop
                  sltu         s0, s5, tp
                  sltiu        a0, a3, -460
                  sltu         a0, s2, a0
                  srai         a3, sp, 13
                  andi         a2, a2, 1558
                  addi         a7, tp, -1160
                  slti         t4, s0, 1159
499:              andi         s0, s1, -390
                  and          a7, s6, s10
                  srl          a2, s5, s6
                  srli         s6, t3, 7
                  auipc        a0, 507072
                  xor          a5, a6, s6
                  slli         s6, sp, 0
                  srli         s0, s4, 28
                  nop
                  and          t5, a1, s9
                  ori          gp, a7, -96
                  bne          t3, s0, 522f
                  xor          t0, sp, s10
                  sltiu        s0, a2, 707
                  andi         a3, a0, 1934
                  beq          s1, s5, 533f
                  auipc        s9, 554921
                  sub          a6, a1, s5
                  xor          t3, gp, a5
                  slt          a3, sp, a4
                  and          s4, s10, s6
                  bltu         a3, a7, 539f
                  srli         s2, t6, 27
522:              slti         gp, s2, 503
                  or           a2, s2, s1
                  andi         s10, s6, 1804
                  sll          a3, a2, s2
                  auipc        a5, 169657
                  sll          zero, s11, s8
                  bltu         s4, t4, 530f
                  andi         s5, sp, 218
530:              and          s3, t4, tp
                  bgeu         a5, s3, 537f
                  bltu         a4, gp, 539f
533:              slt          ra, a6, a2
                  bgeu         a1, s11, 550f
                  sra          gp, t1, t1
                  bne          s7, a4, 548f
537:              and          s9, gp, a1
                  slt          s4, t5, a7
539:              andi         s4, s3, 1990
                  sub          a5, zero, s5
                  srai         a4, t2, 9
                  add          a2, gp, t3
                  addi         s6, s10, 162
                  xor          t0, s3, a6
                  lui          t3, 972723
                  blt          a7, t4, 566f
                  sltu         ra, t6, zero
548:              slti         a6, a4, 584
                  sll          s11, t0, a4
550:              add          a5, t1, s8
                  or           sp, s3, s2
                  srl          t3, a1, s8
                  addi         a4, tp, 33
                  xor          gp, t6, s6
                  sll          s6, s11, s10
                  xori         s1, a5, 1619
                  slt          s2, a3, a4
                  srli         t6, s3, 19
                  slli         t3, s11, 12
                  addi         a7, s5, 1436
                  or           s3, t1, ra
                  and          a0, t4, t3
                  sra          a6, a3, t1
                  or           s9, a5, t6
                  add          a5, a0, gp
566:              nop
                  addi         t3, zero, -1249
                  xor          t6, a5, a3
                  and          a6, t0, s1
                  sub          gp, a7, s3
                  sltu         t3, s4, s6
                  sra          a2, t0, a0
                  addi         t5, t2, 251
                  sltu         a3, s4, s9
                  sra          gp, s1, s2
                  beq          t4, t1, 588f
                  beq          zero, a6, 589f
                  bne          t4, t1, 594f
                  srl          a3, s3, s0
                  or           s5, s6, s8
                  xori         s6, s8, -1439
                  srl          t4, a0, s8
                  blt          s9, t6, 596f
                  blt          a3, a0, 585f
585:              slt          s2, t2, s1
                  beq          s0, a3, 604f
                  nop
588:              slt          t4, a5, s4
589:              blt          a1, a1, 606f
                  and          s2, t2, t5
                  xori         a0, s6, -633
                  bne          a2, s9, 609f
                  slli         s5, tp, 15
594:              sub          s5, t2, s0
                  nop
596:              addi         s1, s8, -605
                  srli         a0, t2, 19
                  bge          a2, a1, 603f
                  slli         t4, s0, 15
                  auipc        t3, 908477
                  and          s11, t4, tp
                  slti         a1, zero, 2026
603:              auipc        s5, 965624
604:              slti         s10, s0, 550
                  nop
606:              sll          s7, s8, a1
                  bltu         a7, s0, 612f
                  bgeu         sp, t3, 623f
609:              srli         zero, s2, 22
                  sll          s9, s0, a3
                  or           sp, t3, t4
612:              srli         sp, s11, 8
                  slli         a4, s8, 24
                  xor          t5, s11, s3
                  srli         t4, a4, 13
                  bgeu         s8, a4, 625f
                  bltu         a3, s5, 622f
                  slli         gp, t5, 17
                  beq          s11, ra, 624f
                  sub          s4, s2, s8
                  blt          s5, s11, 633f
622:              beq          s10, s6, 635f
623:              xori         s5, tp, 1874
624:              sltu         t5, tp, s7
625:              add          a4, t0, s3
                  slli         a4, s6, 9
                  lui          a0, 638726
                  sll          ra, zero, s9
                  sltu         t5, t4, s6
                  sub          a5, t4, a3
                  sltu         a1, s2, s9
                  xor          zero, s6, s7
633:              andi         t6, t4, -510
                  srai         a4, s2, 16
635:              slt          a2, a4, a3
                  bge          a3, s8, 648f
                  slli         t6, s8, 20
                  beq          t1, a2, 652f
                  xori         s11, s10, -391
                  and          t0, a2, a5
                  slli         a2, a7, 10
                  slt          a1, s7, s5
                  slti         a6, s5, 1386
                  bltu         sp, s6, 652f
                  sltiu        a2, t6, -2007
                  srli         ra, tp, 20
                  sub          s11, sp, s2
648:              sub          a1, s9, t4
                  slti         a1, a2, 1899
                  srai         sp, t4, 6
                  sll          s1, tp, s8
652:              sltu         a3, t5, t4
                  auipc        s2, 65145
                  sll          a3, t4, s11
                  bge          t3, s11, 675f
                  srl          s4, a7, s7
                  and          s5, a5, s4
                  auipc        a2, 939840
                  lui          t6, 326768
                  sltu         a6, s2, a3
                  andi         sp, s3, 319
                  and          s0, t3, a0
                  blt          a7, a2, 677f
                  beq          s8, s0, 683f
                  bltu         a5, a2, 666f
666:              lui          s7, 833677
                  bne          s7, s3, 668f
668:              bltu         t3, s10, 673f
                  slt          a5, t1, a5
                  sll          s2, s10, a6
                  slli         t1, s2, 12
                  bgeu         sp, a4, 689f
673:              xori         ra, s7, 1269
                  and          gp, t4, t2
675:              xor          t6, a0, a6
                  xori         a0, a0, 201
677:              beq          sp, s0, 683f
                  addi         a0, s2, 1522
                  or           s9, s6, s8
                  bne          s1, a2, 692f
                  bltu         t5, t2, 697f
                  srli         zero, s11, 7
683:              auipc        t0, 972077
                  sltiu        s5, a0, 1235
                  auipc        t3, 757777
                  sra          s4, s3, s2
                  sll          t3, s3, s2
                  srai         a5, s3, 28
689:              srl          s2, s8, s9
                  sltiu        a2, s10, 555
                  xor          a7, a6, s10
692:              andi         s0, t2, 1864
                  xori         s2, s10, -821
                  bgeu         a2, s0, 713f
                  sltiu        a2, ra, 234
                  bge          t0, s11, 704f
697:              xor          a2, s10, s9
                  or           s9, s4, a3
                  nop
                  addi         sp, s9, 324
                  lui          s4, 1022431
                  srli         ra, t4, 17
                  srai         t5, t4, 14
704:              slti         a7, s4, -563
                  sub          a1, a2, s3
                  bne          t4, s6, 719f
                  srli         s4, t3, 3
                  bne          s4, a5, 728f
                  and          sp, ra, t6
                  slti         t6, t3, -1899
                  beq          ra, a3, 724f
                  beq          a2, s10, 717f
713:              slti         t1, a2, -1966
                  slli         t6, s7, 28
                  sub          zero, s6, s9
                  or           zero, t5, t6
717:              sltiu        t3, a0, 826
                  bne          a3, s4, 727f
719:              slli         a2, tp, 11
                  addi         a0, s5, -1554
                  auipc        s4, 567741
                  xori         a7, s9, -822
                  beq          a4, s8, 725f
724:              nop
725:              xori         s4, a6, 1617
                  sltiu        s3, a4, -41
727:              bne          s5, s10, 739f
728:              auipc        s0, 252682
                  slti         s3, s10, 1483
                  srli         t5, a4, 20
                  lui          s0, 900706
                  nop
                  andi         a3, s7, 1764
                  srai         s1, t2, 13
                  bltu         a5, t6, 747f
                  sltu         s1, gp, t6
                  add          zero, a0, a6
                  and          t1, s7, s10
739:              nop
                  addi         zero, zero, -949
                  bne          s11, s0, 759f
                  srli         a3, t1, 19
                  sltiu        a4, a5, 92
                  sra          s5, a6, s3
                  bgeu         s6, a0, 762f
                  bne          a3, s6, 765f
747:              blt          s8, s2, 754f
                  sltu         t4, s5, zero
                  sra          t0, zero, zero
                  sub          t5, a4, s8
                  slli         s9, s8, 2
                  auipc        ra, 1041604
                  auipc        s5, 584679
754:              beq          s6, s6, 766f
                  srli         a3, t2, 15
                  add          s1, s0, ra
                  bne          s8, t0, 769f
                  ori          s3, s11, -793
759:              andi         s0, s9, 2035
                  or           s11, a5, a4
                  andi         a1, ra, -1766
762:              sra          a0, a1, s9
                  bne          a3, t3, 783f
                  slti         s0, t2, -2044
765:              slti         a3, zero, 493
766:              and          s6, s6, s4
                  andi         s2, t1, 317
                  bltu         s3, s10, 769f
769:              xor          t5, t2, t1
                  lui          a7, 429291
                  bgeu         t3, ra, 787f
                  slli         s5, ra, 16
                  srl          s11, t3, gp
                  andi         a2, s9, 1711
                  blt          t2, tp, 780f
                  andi         s1, a1, -1134
                  srl          s0, sp, zero
                  ori          s1, sp, -1431
                  sll          s11, s2, s2
780:              or           t1, t2, a1
                  sll          a2, s3, a7
                  add          s0, a2, s1
783:              srli         t1, sp, 0
                  andi         a4, t3, -934
                  bge          a2, s10, 800f
                  slli         t1, a7, 2
787:              auipc        a3, 616392
                  bne          tp, a7, 793f
                  beq          t4, t5, 803f
                  srli         a4, a7, 31
                  bltu         s1, gp, 805f
                  bne          s9, zero, 811f
793:              add          sp, t3, s4
                  beq          a4, s9, 806f
                  auipc        t4, 1046866
                  lui          t0, 366166
                  and          s6, s4, t3
                  addi         s3, t0, 1336
                  xori         s5, s8, 1986
800:              slli         s10, t5, 16
                  slti         a1, t2, 611
                  bgeu         a3, a0, 803f
803:              auipc        s5, 163113
                  blt          a0, zero, 809f
805:              nop
806:              blt          zero, s0, 807f
807:              srai         t1, s11, 14
                  xor          t5, a7, t6
809:              nop
                  andi         zero, s8, 1239
811:              srl          sp, s11, s4
                  slti         a1, gp, 1611
                  xor          a2, a6, gp
                  lui          s7, 882472
                  bne          ra, a7, 828f
                  slt          ra, s11, a3
                  sll          t3, a2, ra
                  or           sp, s11, a2
                  bgeu         s4, zero, 825f
                  andi         a4, a2, 1857
                  bge          s10, s6, 839f
                  addi         ra, t5, 1103
                  sltiu        t3, a0, -95
                  xori         a2, zero, 223
825:              or           s7, t1, zero
                  srli         s4, s3, 5
                  slt          gp, t6, a2
828:              xori         t1, a2, 941
                  bgeu         t0, s8, 841f
                  or           a2, t2, a3
                  or           gp, s10, a3
                  xor          a4, zero, s3
                  andi         t3, tp, 1171
                  bltu         sp, s8, 843f
                  slti         t4, s3, -1806
                  lui          s4, 812669
                  bltu         s1, t1, 851f
                  or           zero, ra, ra
839:              or           a3, tp, sp
                  and          a2, t2, a6
841:              add          a6, gp, t3
                  bltu         t3, s2, 847f
843:              bge          t6, t1, 855f
                  and          s5, t6, s2
                  or           t4, t1, a3
                  sltiu        t3, t6, -1307
847:              srli         gp, s10, 20
                  nop
                  slt          s11, s1, t6
                  beq          a3, t2, 858f
851:              and          t3, a7, s8
                  blt          t5, tp, 872f
                  and          s9, s6, s5
                  xori         s5, s2, -637
855:              sub          a2, a2, s11
                  bltu         s5, a0, 875f
                  srai         a1, a4, 27
858:              bgeu         t0, a4, 875f
                  beq          s11, s0, 876f
                  xor          a2, t1, zero
                  nop
                  bne          s5, s7, 876f
                  andi         t6, a3, -1041
                  or           a4, t2, s9
                  nop
                  srl          s9, a7, t6
                  sltu         t1, s3, a5
                  srl          t6, tp, s3
                  slli         t1, a4, 20
                  slti         a3, s11, 1445
                  xori         s1, gp, 1225
872:              slt          t5, s9, a7
                  addi         t1, zero, 172
                  nop
875:              bltu         a0, sp, 887f
876:              slti         s0, a3, -1442
                  addi         a4, a0, -1226
                  andi         s9, tp, 701
                  xor          a4, s1, t5
                  ori          a1, gp, -1282
                  bge          t1, s2, 886f
                  xor          s5, s2, s1
                  sra          a5, a7, t0
                  sra          a0, a6, zero
                  xori         gp, t1, -133
886:              slti         a7, s6, 1211
887:              sra          s10, gp, t1
                  bge          t6, a0, 890f
                  ori          s1, s11, -946
890:              and          a6, s4, s9
                  srl          t3, a0, s9
                  sltu         t4, s4, s1
                  andi         t4, a7, 116
                  xori         a3, s1, 304
                  srli         a3, tp, 13
                  bne          s5, a7, 916f
                  add          s0, t0, t0
                  slt          t1, a7, s2
                  slti         s3, tp, -567
                  andi         s5, s1, 1117
                  sll          a5, s0, a4
                  srli         gp, t6, 17
                  blt          t1, s7, 919f
                  nop
                  srli         a5, s2, 9
                  sll          gp, a1, s3
                  sra          t4, t6, a0
                  srl          a6, t3, s8
                  sra          t0, s11, t3
                  sll          t1, a5, s11
                  srai         a2, a2, 17
                  srl          a6, s5, s7
                  lui          a7, 617728
                  sltiu        t1, a7, -1975
                  srl          a6, gp, s4
                  addi         a4, zero, 4 #init loop 1 counter
                  addi         s7, zero, -20 #init loop 1 limit
sub_1_17_1_t:     auipc        s10, 176387
                  addi         a4, a4, -5 #update loop 1 counter
                  addi         t0, zero, 3 #init loop 0 counter
                  addi         s1, zero, 12 #init loop 0 limit
sub_1_17_0_t:     lui          a0, 451611
                  addi         t0, t0, 8 #update loop 0 counter
                  blt          t0, s1, sub_1_17_0_t #branch for loop 0
                  bge          a4, s7, sub_1_17_1_t #branch for loop 1
                  xor          s11, s9, s7
916:              lui          s7, 83716
                  slli         s10, ra, 24
                  bgeu         t6, s0, 934f
919:              auipc        s10, 615643
                  blt          t4, a0, 927f
                  bgeu         a1, s11, 936f
                  sltiu        s5, s7, 115
                  add          t0, sp, s8
                  slti         s0, a7, 1404
                  addi         t5, a6, -1235
                  or           a2, s5, s1
927:              ori          s9, t1, -496
                  bgeu         a3, a5, 941f
                  sub          s10, a4, s9
                  slti         a2, t5, 1486
                  srai         t1, s7, 23
                  ori          a5, a5, 223
                  xor          s11, sp, a6
934:              or           t4, s1, s6
                  xor          a2, s1, t5
936:              blt          a4, s8, 948f
                  blt          t1, s0, 942f
                  srli         s10, ra, 26
                  srli         s11, s0, 2
                  blt          a0, s6, 945f
941:              sltiu        s6, t0, -1712
942:              slli         s1, a3, 29
                  xori         a2, s8, 1269
                  sltu         t3, a4, s3
945:              or           t6, a7, s6
                  ori          t6, t4, 217
                  sub          a5, a3, s8
948:              xori         s5, s1, -1836
                  slli         t3, t4, 6
                  sltu         s2, t4, s2
                  sltu         a4, t5, s9
                  lui          a4, 346840
                  bge          zero, s7, 970f
                  or           s6, zero, sp
                  andi         a4, t2, -1335
                  srl          s1, a2, a4
                  xor          t6, t1, a2
                  beq          a2, a7, 971f
                  sltiu        s6, ra, -1988
                  xori         sp, t6, -1827
                  beq          s10, s5, 966f
                  srl          s3, gp, tp
                  auipc        s5, 907152
                  blt          zero, a5, 983f
                  addi         a1, zero, 1 #init loop 0 counter
                  sub          t6, s7, t2
                  ori          t6, t3, 1640
                  addi         s0, zero, 9 #init loop 0 limit
                  lui          s11, 903841
                  srl          s7, a7, s0
sub_1_7_0_t:      andi         s3, a7, -541
                  addi         t6, a5, -1600
                  slli         s11, a0, 30
                  addi         a1, a1, 6 #update loop 0 counter
                  blt          a1, s0, sub_1_7_0_t #branch for loop 0
                  add          a7, s7, t3
                  xor          t5, a1, t0
966:              and          s11, s11, s2
                  srl          a2, a6, t6
                  bge          sp, s8, 982f
                  sltu         s6, a0, a2
970:              bge          s6, t5, 986f
971:              and          s0, ra, s2
                  sltiu        a5, s8, 1651
                  blt          s0, sp, 979f
                  beq          t5, s5, 990f
                  slli         a1, s3, 5
                  nop
                  srai         t4, t6, 29
                  bge          s9, s1, 979f
979:              bge          a5, s8, 996f
                  srai         sp, ra, 5
                  auipc        a6, 952682
982:              bltu         s6, s9, 991f
                  ori          sp, a6, -1917
                  sra          sp, s6, a7
                  blt          gp, s5, sub_1_j3 #branch to jump instr
                  andi         a5, t1, -1419
                  andi         t0, s4, -1086
                  srai         t6, s1, 18
                  and          t5, s8, t0
                  slt          s10, gp, t6
                  slti         a3, t0, -587
                  ori          s6, ra, -583
                  srai         zero, ra, 29
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
983:              xor          t0, sp, a6
                  slli         s1, s4, 0
                  slt          s0, a7, sp
986:              bne          s6, a6, 993f
                  bne          a1, zero, 999f
                  sub          t6, ra, t1
                  bgeu         s11, s11, 1007f
990:              blt          t4, s10, 1002f
991:              beq          a6, s11, 996f
                  bltu         t2, a7, 1004f
993:              xor          t3, a3, s11
                  sra          t0, s9, s10
                  sltu         ra, a0, ra
996:              slt          s6, a5, t1
                  bgeu         s4, s1, 1009f
                  bge          s11, s2, 1018f
999:              sll          s7, s4, s8
                  sra          t4, a4, t1
                  bge          s9, a0, 1003f
1002:             bltu         a4, t5, 1015f
1003:             add          a2, s0, ra
1004:             bge          s11, a7, 1024f
                  srai         s1, s1, 23
                  bltu         a7, t3, 1018f
1007:             auipc        ra, 619900
                  sra          s11, s9, s4
1009:             add          s0, ra, t0
                  xor          s9, s5, a1
                  beq          t2, tp, 1012f
1012:             sub          s10, s3, a5
                  slt          a7, s7, a0
                  auipc        s9, 504896
1015:             slt          s3, s7, a2
                  slli         a0, t0, 19
                  sll          t1, a6, s7
1018:             bgeu         a5, zero, 1033f
                  addi         t4, s1, 501
                  lui          a3, 566062
                  sll          a3, s9, tp
                  blt          s9, s2, 1030f
                  and          s1, a3, t3
1024:             srl          s7, s0, sp
                  andi         s4, t3, -328
                  bgeu         gp, a1, 1040f
                  slli         s5, t2, 13
                  bge          s5, t1, 1033f
                  slli         s0, zero, 7
1030:             bgeu         t3, ra, 1049f
                  auipc        s3, 397134
                  slt          t4, s4, a0
1033:             bne          ra, a0, 1038f
                  bge          t3, a6, 1048f
                  srl          s9, s6, s6
                  sltu         sp, a7, t0
                  and          t3, s10, zero
1038:             add          a0, s0, a2
                  sra          a1, t3, s8
1040:             sll          a3, s10, s9
                  xori         s0, gp, -1731
                  slt          t1, t5, zero
                  slli         t6, s0, 29
                  sltu         t0, s11, a4
                  nop
                  slti         t6, ra, -694
                  blt          t0, t4, 1055f
1048:             nop
1049:             sll          t6, a7, t1
                  srli         s6, s8, 15
                  blt          tp, s5, 1069f
                  xor          s10, s6, s2
                  slti         t3, s0, 875
                  beq          s5, s6, 1066f
1055:             bgeu         s6, s8, 1056f
1056:             slti         a4, s10, -877
                  beq          a4, a0, 1064f
                  bltu         sp, a5, 1070f
                  sra          t1, s9, t0
                  blt          a1, a3, 1080f
                  sub          a4, s10, ra
                  blt          s2, s5, 1074f
                  xori         t4, sp, -1138
1064:             srai         s2, ra, 4
                  blt          s2, s5, 1067f
1066:             beq          a3, s6, 1080f
1067:             bltu         ra, a5, 1072f
                  or           t6, a0, t0
1069:             add          a0, gp, ra
1070:             bltu         a7, gp, 1071f
1071:             lui          s3, 360653
1072:             slli         s1, a3, 2
                  bge          a5, s3, 1086f
1074:             or           a7, s9, a7
                  bge          zero, s6, 1095f
                  slt          sp, s11, s1
                  sub          sp, t5, t1
                  slti         s1, s7, -926
                  andi         s5, a3, -922
1080:             sltiu        t3, t5, 1610
                  auipc        t1, 738894
                  addi         s7, a2, -843
                  bltu         gp, a2, 1088f
                  sll          t3, ra, t5
                  lui          a0, 112492
1086:             auipc        sp, 319995
                  bne          t5, t2, 1102f
1088:             bne          a6, zero, 1100f
                  bge          zero, t2, 1102f
                  bgeu         s10, a1, 1107f
                  add          gp, a4, a2
                  or           sp, s7, a7
                  beq          s7, s1, 1105f
                  blt          s1, a4, 1099f
1095:             or           s5, sp, t6
                  bgeu         t3, gp, 1113f
                  slli         s0, s7, 31
                  bltu         zero, s0, 1104f
1099:             sltu         t6, a4, a0
1100:             and          sp, a6, gp
                  lui          a2, 354749
1102:             ori          a0, t0, -1901
                  or           a6, tp, s0
1104:             srli         s6, a0, 0
1105:             or           s7, t2, t6
                  ori          t5, s0, 378
1107:             sltu         gp, s4, t0
                  xor          s11, a5, t3
                  auipc        s7, 434292
                  srl          a3, s11, a3
                  sll          s9, sp, ra
                  xori         a4, s3, -1750
1113:             addi         t5, a5, 490
                  or           a4, s3, gp
                  nop
                  ori          s1, s9, -1497
                  srli         t1, ra, 20
                  slt          s6, gp, s0
                  add          s7, t6, s1
                  addi         s10, zero, -6 #init loop 0 counter
                  addi         s5, zero, -18 #init loop 0 limit
                  srli         a6, s5, 10
                  nop
                  srl          a7, t6, a7
                  nop
                  srai         s9, a4, 24
                  slli         s1, a6, 12
                  sltiu        a0, t1, -1932
                  sll          a6, a4, a5
sub_1_12_0_t:     sltu         s3, a5, a3
                  and          a2, a2, tp
                  ori          a6, a7, -1330
                  and          s1, s1, ra
                  addi         s0, ra, -1763
                  and          a3, a2, zero
                  lui          a2, 828708
                  sra          a2, a7, ra
                  addi         s10, s10, -4 #update loop 0 counter
                  andi         s0, zero, 1709
                  bge          s10, s5, sub_1_12_0_t #branch for loop 0
                  sltiu        s7, s6, -1524
                  srai         t0, s9, 1
                  or           s1, t0, zero
                  bgeu         gp, sp, 1134f
                  sub          t4, s2, t2
                  srai         a4, zero, 20
                  srai         s5, a0, 16
                  sub          t6, s9, a6
                  bgeu         s3, s0, 1134f
                  slt          a2, s6, a2
                  andi         a5, sp, -584
                  sra          t0, a7, s5
                  or           gp, s8, s9
                  add          a5, t5, sp
                  bgeu         s2, s3, 1134f
1134:             addi         t4, a1, 359
                  sltiu        t4, t5, 1055
                  lw           ra, 4(tp)
                  srl          a0, s7, s1
                  addi         tp, tp, 60
                  ori          a0, a5, 1025
                  xori         s10, a1, -320
                  addi         a1, a4, -602
1657:             addi x25, x1, 1
1657:             jalr x25, x25, 0
sub_5:            auipc        t6, 215741
                  slti         s11, s3, 770
                  and          a0, s4, s8
                  addi         tp, tp, -48
                  and          s9, a5, a7
                  sw           ra, 4(tp)
                  nop
                  andi         a7, a6, -1140
                  srl          a3, a5, t5
                  slti         s0, s5, 1034
                  addi         s4, s0, -460
                  nop
                  slti         s5, a1, 1198
                  nop
                  bgeu         s11, s2, 11f
                  slt          t0, a5, s4
                  srl          s1, t6, t4
                  blt          t5, s9, 11f
                  srl          s4, a2, t1
                  add          s3, a4, a3
                  sll          s3, s5, a3
11:               slti         s3, a6, 457
                  sub          t6, t2, tp
                  lw           ra, 4(tp)
                  add          s2, s3, t5
                  slt          t5, s7, a6
                  and          t3, a6, sp
                  lui          s11, 731405
                  addi         tp, tp, 48
                  sltiu        s5, s11, -1874
                  srli         t3, s0, 16
                  sltu         t0, a0, s1
32:               addi x1, x1, 0
32:               jalr x1, x1, 0
sub_2:            addi         tp, tp, -52
                  sw           ra, 4(tp)
                  addi         s3, s2, 1137
                  srli         a1, s4, 28
                  slli         s0, t0, 29
                  sltu         s1, s10, t1
                  nop
                  xori         a3, s5, 1520
                  srl          s9, sp, a0
                  srli         s0, sp, 3
                  slli         a4, tp, 14
                  lui          gp, 283776
                  blt          s6, s3, sub_2_j4 #branch to jump instr
                  slli         s4, a7, 24
                  and          gp, ra, a2
                  slli         a6, s6, 1
                  sltiu        t0, t3, 1781
                  srli         s1, ra, 14
                  srli         s0, s9, 29
                  sltu         s3, a6, a6
sub_2_j4:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  xor          s11, t2, a2
                  add          ra, s7, t5
                  srl          s1, tp, s8
                  slt          zero, t0, a6
                  slli         a4, t6, 20
                  srl          sp, a7, t0
sub_2_j5:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  andi         t4, sp, 382
                  sll          a4, a1, t1
                  slti         t6, a5, 478
                  xori         t4, t6, -561
                  sltiu        t6, s7, -120
                  sltu         zero, a7, s0
                  or           a1, gp, s9
                  and          s6, s11, s11
sub_2_j6:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  sra          t5, s5, s2
                  sll          s10, s0, a4
                  sll          a5, s11, t3
                  sltu         s11, ra, s7
                  sub          a7, s6, a3
                  slti         gp, s5, 942
                  sub          a6, s4, s8
sub_2_j7:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  andi         a4, s6, 1853
                  sra          s10, t5, tp
                  add          s10, s5, a3
                  slti         a7, t1, 470
                  bge          t2, t5, 15f
                  sra          a4, a0, s1
                  slli         t0, s2, 11
                  nop
                  add          s4, t5, s2
                  blt          a6, a1, 15f
                  sra          s1, s1, zero
                  xori         s10, a2, 1225
                  srl          zero, a5, a4
                  bge          tp, s2, 15f
                  srl          s10, gp, a4
15:               andi         s11, t3, 1340
                  lw           ra, 4(tp)
                  and          gp, ra, a3
                  addi         tp, tp, 52
                  srli         s7, s7, 26
                  andi         a2, t1, -903
66:               addi x11, x1, 1
66:               jalr x11, x11, 0
sub_4:            bge          zero, s3, sub_4_stack_p
                  sub          a5, t1, sp
                  sltiu        s0, s5, 707
sub_4_stack_p:    addi         tp, tp, -56
                  srl          s0, a7, gp
                  sw           ra, 4(tp)
                  srli         a3, a6, 22
                  addi         s6, zero, -5 #init loop 0 counter
                  sub          t5, a4, s11
                  srli         t3, s0, 14
                  and          a6, t0, a4
                  xori         s4, a0, 1393
                  andi         a2, s8, -1824
                  xori         t1, a7, 1783
                  addi         t1, s4, -1972
                  xori         s9, t0, 498
                  xori         s0, zero, 356
                  addi         gp, zero, 7 #init loop 0 limit
                  ori          s9, s10, -128
sub_4_11_0_t:     andi         a3, zero, 1255
                  slt          s10, s0, s4
                  andi         a5, a4, 148
                  sltu         t3, s1, s7
                  srl          a2, tp, a3
                  addi         s6, s6, 6 #update loop 0 counter
                  lui          a7, 633879
                  slt          s0, s9, tp
                  lui          sp, 788475
                  nop
                  srli         a1, a4, 13
                  sltu         s11, s5, s1
                  add          s0, a7, t1
                  auipc        s7, 324359
                  or           s11, t1, a6
                  beq          s6, gp, sub_4_11_0_t #branch for loop 0
                  slti         s11, s0, -320
                  addi         s4, zero, 2 #init loop 0 counter
                  slt          a4, t1, zero
                  ori          s11, a5, -1175
                  addi         ra, zero, -14 #init loop 0 limit
                  or           t4, s11, a0
                  srli         a4, s10, 6
                  andi         s9, t5, -1131
                  sltiu        gp, a1, -1928
                  auipc        s2, 159339
sub_4_6_0_t:      slt          s7, a2, s6
                  addi         s4, s4, -8 #update loop 0 counter
                  sll          a6, zero, a4
                  slli         s9, t2, 13
                  auipc        t0, 753026
                  add          sp, s7, t0
                  slti         s7, a6, -1850
                  ori          t0, sp, 904
                  lui          a6, 1010581
                  addi         s1, a3, -2023
                  slli         t5, t0, 14
                  sub          a2, s6, a2
                  slti         a3, s0, 1569
                  or           s7, t2, t5
                  slti         t0, a1, 1212
                  xori         gp, a0, 884
                  slti         s1, a5, 974
                  sltu         a4, s11, s9
                  srli         gp, s7, 8
                  beq          s4, ra, sub_4_6_0_t #branch for loop 0
                  auipc        zero, 590920
                  addi         t0, zero, -6 #init loop 0 counter
                  xor          a5, ra, a2
                  nop
                  sltiu        a6, t5, -581
                  sll          s7, t1, t3
                  srai         a4, s9, 30
                  add          a0, a7, s7
                  sltu         t5, s4, a0
                  addi         s6, t0, -1575
                  addi         s5, zero, 11 #init loop 0 limit
                  srl          s2, sp, s9
                  addi         s0, s5, -835
                  sra          s6, s9, s8
                  xor          a4, t2, s1
sub_4_8_0_t:      auipc        zero, 971709
                  addi         t0, t0, 9 #update loop 0 counter
                  add          a7, a3, t1
                  srl          sp, a5, ra
                  slti         a4, zero, -262
                  ori          a5, s8, -202
                  sll          s9, s3, a5
                  srai         s7, s4, 8
                  srai         s6, a2, 22
                  andi         s10, gp, -567
                  srli         s0, t4, 13
                  sra          s2, a4, a3
                  ori          s11, s4, 1058
                  bltu         t0, s5, sub_4_8_0_t #branch for loop 0
                  srli         s1, s9, 10
                  addi         s1, zero, -5 #init loop 1 counter
                  srli         a6, s4, 30
                  srai         gp, t5, 23
                  addi         a3, zero, -9 #init loop 1 limit
                  or           zero, a2, s2
sub_4_9_1_t:      andi         s10, t5, 1625
                  srai         s2, tp, 6
                  srli         gp, t1, 11
                  sltiu        gp, t6, 1115
                  addi         s1, s1, -9 #update loop 1 counter
                  slt          s3, sp, a0
                  addi         sp, zero, -10 #init loop 0 counter
                  or           zero, a3, t5
                  addi         a0, zero, -19 #init loop 0 limit
                  slli         gp, s3, 8
sub_4_9_0_t:      andi         a2, a1, 891
                  addi         sp, sp, -9 #update loop 0 counter
                  slli         s9, tp, 4
                  beq          sp, a0, sub_4_9_0_t #branch for loop 0
                  auipc        s7, 372604
                  xor          a1, s3, sp
                  slti         s6, t4, 1991
                  sra          s10, a1, s11
                  slti         t0, t1, 675
                  bge          s1, a3, sub_4_9_1_t #branch for loop 1
                  addi         a5, s8, -1188
                  addi         s1, zero, -2 #init loop 1 counter
                  xor          t1, s0, a6
                  addi         a3, zero, 14 #init loop 1 limit
                  sltiu        s4, a3, 1565
sub_4_7_1_t:      sltu         gp, s4, t6
                  addi         s1, s1, 8 #update loop 1 counter
                  ori          s10, s4, -526
                  addi         s11, zero, -5 #init loop 0 counter
                  lui          sp, 795167
                  slli         ra, t3, 28
                  addi         a4, zero, 20 #init loop 0 limit
                  add          a5, a0, a6
                  auipc        t6, 264192
sub_4_7_0_t:      sltiu        s6, t1, 445
                  sra          t1, a0, s4
                  slli         s9, s9, 13
                  sub          s10, s10, gp
                  addi         s11, s11, 5 #update loop 0 counter
                  beq          s11, a4, sub_4_7_0_t #branch for loop 0
                  bltu         s1, a3, sub_4_7_1_t #branch for loop 1
                  slli         a1, sp, 7
                  addi         t3, zero, 9 #init loop 1 counter
                  addi         s3, zero, -7 #init loop 1 limit
                  sltu         zero, a0, s0
sub_4_1_1_t:      addi         s9, a7, 1825
                  addi         t3, t3, -1 #update loop 1 counter
                  ori          gp, a4, -251
                  addi         t1, zero, -4 #init loop 0 counter
                  sub          s6, gp, zero
                  slti         s10, t2, -236
                  and          s4, s6, a7
                  addi         a3, zero, 17 #init loop 0 limit
                  xori         a4, t4, -48
                  slti         s7, s5, 426
sub_4_1_0_t:      xori         s0, a0, -434
                  addi         t1, t1, 7 #update loop 0 counter
                  slt          a7, s5, s5
                  sltu         s10, t6, a4
                  auipc        a4, 30980
                  srl          zero, a0, zero
                  slli         ra, t6, 24
                  beq          t1, a3, sub_4_1_0_t #branch for loop 0
                  sltu         s5, tp, s8
                  sll          s7, a7, s10
                  andi         zero, t6, 939
                  xori         s7, s2, 7
                  or           s0, t4, a6
                  beq          t3, s3, sub_4_1_1_t #branch for loop 1
                  xori         t5, s7, -225
                  addi         t4, zero, 8 #init loop 1 counter
                  lui          gp, 69104
                  lui          s3, 1042571
                  xori         t5, a5, -475
                  sra          s5, t0, t0
                  addi         s6, zero, 6 #init loop 1 limit
                  sra          a5, a6, s11
                  slli         a0, t4, 24
                  slli         t0, a1, 8
                  srl          a0, t4, t4
sub_4_0_1_t:      lui          t5, 750576
                  and          s9, a0, gp
                  sra          a7, a0, a0
                  addi         t4, t4, -3 #update loop 1 counter
                  andi         s9, tp, -1046
                  slli         s7, gp, 0
                  addi         a1, zero, -10 #init loop 0 counter
                  addi         s1, zero, 5 #init loop 0 limit
                  sltiu        a4, s2, 584
sub_4_0_0_t:      add          s5, t4, s1
                  sll          t5, s11, gp
                  addi         a1, a1, 6 #update loop 0 counter
                  bltu         a1, s1, sub_4_0_0_t #branch for loop 0
                  ori          s7, zero, 530
                  auipc        a4, 427321
                  nop
                  bgeu         t4, s6, sub_4_0_1_t #branch for loop 1
                  sra          a6, t2, s9
                  addi         s11, zero, 9 #init loop 1 counter
                  addi         s5, zero, 9 #init loop 1 limit
                  andi         s2, s6, 1217
sub_4_3_1_t:      sltu         t4, a2, a2
                  addi         s11, s11, -5 #update loop 1 counter
                  addi         a7, zero, -3 #init loop 0 counter
                  slt          a2, a5, t1
                  addi         t0, zero, -9 #init loop 0 limit
sub_4_3_0_t:      sub          a3, t5, t4
                  addi         a7, a7, -9 #update loop 0 counter
                  bge          a7, t0, sub_4_3_0_t #branch for loop 0
                  and          a1, s10, t4
                  bgeu         s11, s5, sub_4_3_1_t #branch for loop 1
                  srai         t1, t6, 28
                  addi         s2, zero, 9 #init loop 0 counter
                  addi         a4, zero, -18 #init loop 0 limit
sub_4_2_0_t:      slt          a3, s11, s0
                  add          s7, t1, t3
                  addi         s2, s2, -5 #update loop 0 counter
                  bge          s2, a4, sub_4_2_0_t #branch for loop 0
                  sltiu        t1, t5, 1559
                  addi         t1, zero, -6 #init loop 0 counter
                  auipc        a0, 387923
                  add          s1, s6, s2
                  addi         a1, zero, 15 #init loop 0 limit
                  slti         s3, t6, 2032
                  xor          a6, s5, a2
                  nop
sub_4_10_0_t:     slti         sp, s1, 1520
                  slt          t5, s9, a7
                  srai         a7, sp, 7
                  or           a0, t6, t1
                  addi         a3, s2, 5
                  sll          s5, s1, s4
                  xor          a4, t0, s3
                  addi         t1, t1, 4 #update loop 0 counter
                  xor          a0, t2, a3
                  sub          s11, s8, t4
                  sra          a7, sp, s0
                  andi         s3, a1, -437
                  sra          t0, a2, s4
                  sub          s6, s5, t0
                  ori          sp, a5, -1885
                  bltu         t1, a1, sub_4_10_0_t #branch for loop 0
                  slli         s3, s3, 8
                  addi         s7, zero, 9 #init loop 0 counter
                  add          a5, s4, s5
                  srai         t1, t0, 28
                  sub          a0, a3, a4
                  xori         s3, sp, -872
                  addi         s9, s6, 1569
                  xor          a4, gp, s10
                  sll          a2, t0, t1
                  addi         a6, zero, 13 #init loop 0 limit
sub_4_5_0_t:      ori          t1, a5, -1506
                  sltiu        t4, sp, 553
                  nop
                  srli         a4, a7, 24
                  ori          s9, t0, -1370
                  sltu         s3, gp, s1
                  addi         s7, s7, 8 #update loop 0 counter
                  and          t5, gp, a0
                  sltiu        t1, s7, -905
                  addi         gp, s10, 1608
                  blt          s7, a6, sub_4_5_0_t #branch for loop 0
                  xor          t1, s7, s5
                  addi         t6, zero, 2 #init loop 0 counter
                  sub          zero, s10, a5
                  sltiu        s6, s7, 1373
                  nop
                  sltu         s9, s9, zero
                  slti         t0, zero, -918
                  xori         s7, a6, -987
                  srai         a3, a3, 1
                  sltiu        gp, a4, 1137
                  or           t3, a3, a4
                  addi         a5, s1, -446
                  sltiu        gp, t1, -1568
                  srl          s9, t4, gp
                  xori         a6, t0, 1111
                  addi         a4, zero, 20 #init loop 0 limit
                  sub          a7, a5, s10
                  sll          s9, s6, t6
                  xor          s0, s0, s4
sub_4_4_0_t:      slti         s5, sp, -95
                  sltu         a0, s9, s3
                  addi         t6, t6, 9 #update loop 0 counter
                  xor          s7, s11, t1
                  slti         s7, s10, 472
                  slti         zero, t5, 1436
                  lui          s6, 1008520
                  slti         t5, ra, 921
                  bne          t6, a4, sub_4_4_0_t #branch for loop 0
                  srai         a0, ra, 7
                  xori         a0, a1, 1393
                  ori          sp, a1, -783
                  xori         s3, a2, 109
                  sltiu        a4, sp, 1168
                  srli         a3, a4, 31
                  srli         s2, a3, 2
                  slli         a6, t4, 20
                  bltu         s7, t1, 11f
                  bne          s0, s5, 9f
9:                bltu         a2, a3, 19f
                  srai         a3, a2, 0
11:               xor          s1, t1, t4
                  add          ra, t1, a1
                  srl          s7, t3, t5
                  nop
                  ori          t4, t6, 1061
                  bge          a5, zero, 20f
                  bne          s10, gp, 33f
                  sra          t1, a3, a4
19:               andi         a1, a3, -1106
20:               xori         a7, a2, -1672
                  bne          s4, zero, 39f
                  bgeu         ra, s3, 42f
                  sra          t1, s2, t5
                  sra          s7, t1, t6
                  srl          s3, t3, s11
                  beq          s0, a7, 42f
                  slti         zero, sp, -319
                  xori         zero, t1, 1628
                  or           s9, a1, tp
                  addi         sp, s1, 787
                  beq          a1, t5, 33f
                  bgeu         s2, t5, 33f
33:               and          a5, t5, s3
                  bge          zero, a2, 47f
                  bge          gp, t0, 47f
                  slli         a5, t0, 2
                  andi         sp, s10, -1911
                  addi         s11, t2, 425
39:               slli         s5, a3, 2
                  srli         s10, s5, 1
                  slt          s7, s9, s0
42:               slli         t1, s10, 24
                  srl          t6, ra, s5
                  sra          s3, s11, t3
                  bgeu         s5, s6, 50f
                  sll          s0, a1, tp
47:               sll          s4, zero, s6
                  or           s2, a3, a5
                  bge          t3, s0, 59f
50:               bne          gp, a0, 70f
                  xori         s0, a6, 1002
                  xori         a2, t3, 1626
                  sll          a3, t3, a4
                  sltiu        t0, sp, -1820
                  blt          a1, s6, 71f
                  bge          s5, s9, 64f
                  bgeu         tp, s0, 67f
                  slt          s4, s9, a3
59:               srai         t6, a4, 12
                  srai         sp, zero, 15
                  ori          gp, sp, 1785
                  sub          s5, s11, s10
                  sll          a4, t3, a1
64:               sltu         s3, a0, s7
                  add          a1, t2, a7
                  ori          ra, sp, -498
67:               add          s10, t6, a3
                  sub          s4, a2, s3
                  bltu         ra, a7, 76f
70:               slli         s6, s1, 7
71:               bne          s1, ra, 91f
                  andi         a3, s5, -1744
                  nop
                  srli         s4, ra, 26
                  and          a4, a4, a0
76:               auipc        s10, 986731
                  sltiu        s5, t3, 1578
                  srli         s4, a6, 18
                  andi         t6, ra, 1059
                  bge          t5, zero, 86f
                  beq          a1, s7, 86f
                  srai         a2, gp, 8
                  sll          t1, a7, s2
                  sra          s1, s4, t6
                  xor          a1, s6, t4
86:               nop
                  blt          s9, s0, 102f
                  sub          s1, a2, s5
                  and          a1, t0, s9
                  bne          s3, s6, 110f
91:               bge          s7, t6, 96f
                  xori         t5, a2, 1497
                  bne          t3, a6, 109f
                  lui          t1, 44437
                  sltu         ra, a6, s1
96:               bltu         s4, t2, 103f
                  sltiu        a1, t0, -979
                  bge          t5, t2, 115f
                  andi         t4, gp, -28
                  sll          t6, t2, s8
                  add          s1, a4, a1
102:              slli         s4, a3, 11
103:              slti         ra, s2, -552
                  bltu         t1, tp, 105f
105:              ori          zero, t2, -1274
                  and          a7, a4, a0
                  slti         zero, s1, 1991
                  bgeu         s4, s10, 127f
109:              sltiu        t4, s8, 1041
110:              sub          s3, s9, s10
                  beq          t5, t0, 131f
                  slt          s7, sp, a0
                  ori          s5, a6, -1719
                  add          t1, gp, s7
115:              slti         s3, gp, -1254
                  srai         s7, t1, 1
                  addi         gp, s9, 543
                  ori          a5, s2, -1338
                  and          a4, t3, s7
                  auipc        t6, 134401
                  slli         s11, a5, 11
                  andi         a6, a7, -1036
                  slt          zero, zero, a5
                  xori         s9, s4, -1102
                  andi         gp, s4, 1256
                  bltu         s9, s9, 146f
127:              bgeu         s10, t1, 137f
                  add          a3, t2, s3
                  bltu         zero, s6, 146f
                  addi         t3, t6, 108
131:              lui          t5, 615741
                  andi         zero, a2, 1588
                  sltiu        t3, s11, 199
                  sra          a2, gp, s0
                  ori          a0, ra, -994
                  bgeu         t5, a6, 152f
137:              or           s5, tp, a3
                  add          a7, t1, t1
                  srli         s2, zero, 10
                  sra          zero, t1, s0
                  bne          s2, a0, 148f
                  beq          a0, s2, 147f
                  srai         a5, tp, 25
                  or           t1, t4, a7
                  slt          s1, s6, s10
146:              nop
147:              srli         s0, gp, 17
148:              bgeu         s9, s7, 152f
                  sra          a0, s10, s5
                  and          t1, tp, t3
                  slli         s2, s1, 23
152:              xori         ra, t3, -675
                  srl          s7, s1, t5
                  addi         gp, s3, 980
                  lui          s4, 746928
                  auipc        s1, 124205
                  sub          s6, s6, s2
                  auipc        a7, 188924
                  blt          t6, a4, 174f
                  and          zero, tp, a0
                  auipc        s2, 841396
                  addi         s10, a5, -1220
                  auipc        t0, 454264
                  bge          s1, t0, 174f
                  bgeu         s9, s3, 171f
                  or           a6, t4, s0
                  srai         a2, t2, 27
                  bgeu         s5, a6, 188f
                  bltu         sp, s2, 177f
                  sll          gp, s10, gp
171:              bge          t1, ra, 187f
                  beq          s3, t5, 192f
                  andi         s2, s6, -1033
174:              sltiu        s10, s4, 1979
                  xor          s0, t5, ra
                  sra          sp, a4, a4
177:              bgeu         s5, tp, 195f
                  beq          a6, s11, 188f
                  slti         a1, gp, -837
                  sll          a5, a1, a2
                  nop
                  auipc        s3, 562300
                  or           s1, s9, a5
                  slt          sp, s3, s9
                  auipc        s11, 22254
                  sltiu        s4, s2, -694
187:              sltiu        t5, s10, 179
188:              lui          s10, 726895
                  addi         a4, s8, -1654
                  andi         s2, s3, 292
                  andi         t6, a3, 793
192:              blt          a6, s9, 205f
                  srai         s9, t0, 11
                  slli         sp, ra, 21
195:              xori         a0, s5, -744
                  or           s9, gp, s7
                  sra          a4, t5, a7
                  srl          s1, s6, s7
                  add          a7, s0, s3
                  bne          t0, a4, 202f
                  sltiu        s10, s10, -2045
202:              srli         t6, s7, 9
                  sub          s0, s2, a5
                  and          gp, a6, s10
205:              sra          a1, t2, a2
                  bne          t0, t5, 210f
                  addi         a2, s3, 1008
                  bltu         t4, a3, 213f
                  sra          a6, t0, s2
210:              andi         a0, t1, 1911
                  xori         a2, s5, -522
                  xor          t6, zero, t2
213:              xor          t1, s9, s11
                  sltu         a6, s8, t1
                  beq          s0, tp, 231f
                  bgeu         sp, s1, 217f
217:              lui          s1, 930522
                  srl          ra, a6, s11
                  xori         ra, s8, -741
                  add          a7, s3, s7
                  sra          s0, s0, t2
                  bge          s10, a7, 223f
223:              sra          a1, a1, a5
                  lui          t4, 367204
                  add          a4, a5, a2
                  slt          a5, t5, a6
                  sub          s4, s6, a5
                  bge          s9, zero, 244f
                  add          s0, a4, s1
                  bltu         a2, s9, 242f
231:              nop
                  addi         t1, s3, -246
                  auipc        s3, 833285
                  slli         s1, t6, 11
                  sll          t6, s3, a1
                  sltiu        a0, a3, -1790
                  slt          zero, a4, s1
                  blt          s2, s2, 243f
                  sltiu        t5, t2, -1451
                  sub          a6, gp, sp
                  slli         t6, a4, 11
242:              bgeu         s1, t1, 249f
243:              slt          s0, s2, s7
244:              slti         t3, zero, 1531
                  andi         s1, s8, 1959
                  auipc        a5, 985994
                  and          s7, t4, s4
                  auipc        t0, 377040
249:              sltiu        gp, a2, 558
                  sltu         s11, a1, t1
                  xor          t0, s7, t5
                  slti         t6, t4, -1309
                  ori          a6, zero, -1569
                  andi         a5, t6, -723
                  sltu         zero, s3, zero
                  slt          a3, a5, t1
                  srl          a1, t2, a7
                  srai         s11, t2, 11
                  nop
                  xori         t5, s11, -439
                  sltiu        t6, s6, 1413
                  srl          a1, s3, a1
                  auipc        s5, 337014
                  andi         s1, t0, 577
                  slt          ra, a3, a6
                  sltiu        t1, a5, 1340
                  auipc        a2, 423418
                  or           gp, a6, s9
                  add          a4, a0, a0
                  bgeu         zero, a6, 271f
271:              xori         t4, a7, -1403
                  srli         a7, a4, 6
                  srl          s4, t2, t1
                  sltu         t0, a3, s2
                  slt          a6, a4, s6
                  bge          a1, sp, 295f
                  nop
                  srli         s3, s10, 3
                  slt          a4, a1, a4
                  beq          a0, s6, 299f
                  andi         a5, s10, -1123
                  xori         a5, s1, -194
                  add          s2, gp, t4
                  auipc        t3, 864893
                  sll          s4, t4, t1
                  xor          s3, s4, s8
                  andi         ra, t1, -754
                  addi         ra, t4, -2046
                  bltu         a2, a0, 307f
                  beq          s1, a6, 291f
291:              sll          t6, s11, a4
                  srai         a6, s1, 29
                  ori          s2, s0, -1424
                  addi         s1, a1, 659
295:              blt          a6, a1, 296f
296:              or           s10, sp, s7
                  sra          a2, tp, a3
                  bne          t3, s1, 304f
299:              slti         s7, zero, 1469
                  bne          s4, t3, 316f
                  bge          ra, s0, 321f
                  addi         t0, s1, 353
                  sub          s4, a1, s4
304:              auipc        t1, 54041
                  sub          a1, s3, t6
                  ori          t5, t0, 2032
307:              slt          a7, s11, s10
                  bltu         a5, tp, 328f
                  sltu         a1, a1, s5
                  sltu         a2, s10, t0
                  bgeu         s3, s6, 328f
                  addi         a7, a4, -1934
                  srli         t0, a7, 15
                  srl          s6, s3, s6
                  bge          s11, a6, 320f
316:              bltu         t2, t0, 336f
                  ori          s5, s4, -494
                  slli         s3, a7, 22
                  nop
320:              nop
321:              addi         t6, a2, 1866
                  slti         s6, t5, 271
                  bge          a7, a7, 333f
                  bne          s9, t5, 340f
                  bgeu         s3, s3, 332f
                  bne          tp, s4, 336f
                  srli         t3, s1, 10
328:              srl          a0, t5, s8
                  nop
                  andi         s9, tp, 1629
                  beq          s11, s2, 336f
332:              and          t6, a1, zero
333:              slli         s9, zero, 3
                  bgeu         s2, s7, 341f
                  sll          sp, s3, a4
336:              add          s4, t5, sp
                  sltu         s10, a4, t3
                  beq          a0, gp, 353f
                  srli         gp, a2, 25
340:              and          a0, zero, s1
341:              xori         t1, a4, 289
                  sll          a0, s2, s8
                  nop
                  bge          t6, t2, 360f
                  auipc        s7, 716199
                  addi         a1, t6, 1096
                  slt          s10, t5, a6
                  ori          a5, t0, 987
                  sra          t4, s10, t2
                  xor          zero, a6, ra
                  slti         s3, s9, -638
                  sltiu        t0, tp, 1670
353:              slti         s9, s7, 1879
                  bgeu         t5, zero, 374f
                  bne          a6, s7, 363f
                  sltiu        ra, a4, -381
                  or           sp, s9, a3
                  auipc        t6, 616291
                  ori          t0, s4, -529
360:              ori          gp, s4, -423
                  sltiu        a7, a1, -366
                  xor          t5, t5, t6
363:              bgeu         t2, s11, 379f
                  xori         s10, t0, -1111
                  lui          s6, 81270
                  slli         s4, s1, 25
                  srl          s6, tp, a4
                  srl          s3, s10, a3
                  beq          s11, a7, 370f
370:              and          s1, t3, gp
                  addi         t3, s11, 1883
                  bltu         t5, t1, 385f
                  slli         s2, a1, 11
374:              addi         s3, gp, 275
                  slt          a7, a6, s8
                  lui          t5, 140032
                  xori         s11, sp, -1781
                  sltu         t3, s10, a6
379:              srli         a6, sp, 25
                  nop
                  blt          s4, a0, 393f
                  blt          zero, a7, 387f
                  sra          zero, t6, t0
                  xori         s2, t6, -460
385:              sra          t0, tp, a5
                  bltu         t1, a5, 396f
387:              and          t5, a3, s6
                  and          s10, a6, s1
                  slti         a1, s5, 1220
                  nop
                  bltu         a2, gp, 395f
                  sub          s6, zero, t2
393:              sltu         t0, a1, t2
                  bltu         a5, s9, 396f
395:              bne          s8, a2, 399f
396:              sltu         a3, tp, s6
                  srli         a7, s11, 5
                  sll          a4, a7, s2
399:              or           s7, s3, t1
                  add          t3, a0, t2
                  bltu         s2, sp, 411f
                  add          gp, t4, t5
                  xori         a4, s10, 1452
                  ori          t1, sp, -1757
                  sub          s3, a1, zero
                  sra          s0, zero, s3
                  xori         t0, s9, 1053
                  xori         a7, s2, -1724
                  sub          a6, a5, gp
                  srli         t4, a7, 17
411:              bltu         s4, t2, 421f
                  xor          a7, a0, a4
                  addi         s2, t4, 1365
                  addi         sp, a0, -194
                  sra          a6, a3, t2
                  lui          a3, 1033156
                  beq          s10, ra, 418f
418:              auipc        s9, 644140
                  or           a5, t6, t1
                  add          t0, t4, s7
421:              add          gp, t3, gp
                  xori         s9, s9, -950
                  xori         t6, a6, -223
                  bne          s5, s5, 429f
                  bne          a3, s6, 431f
                  bne          t1, sp, 444f
                  addi         s0, zero, -1101
                  blt          s10, a6, 444f
429:              sltu         t5, t3, t0
                  or           s0, s8, tp
431:              srai         s0, a6, 21
                  or           s3, a3, t3
                  slti         a4, t1, -1286
                  sub          s9, a7, a3
                  slti         s2, s11, 824
                  sra          t4, s8, s4
                  slli         ra, t3, 23
                  srai         s2, s7, 0
                  bne          a4, a0, 455f
                  sltiu        a3, s7, -522
                  slt          a2, a6, tp
                  beq          gp, a6, 462f
                  slti         a5, gp, -1900
444:              srli         sp, gp, 8
                  slt          a6, a7, t1
                  slt          s3, t1, s2
                  bltu         s2, s11, 452f
                  srli         a5, s5, 4
                  sll          ra, ra, t6
                  andi         a0, a7, -675
                  lui          s2, 1000310
452:              add          t0, s1, t1
                  slti         s6, s6, -401
                  add          t3, s1, s4
455:              srai         a6, gp, 29
                  bne          sp, zero, 476f
                  sltiu        s4, a5, 792
                  blt          ra, a0, 477f
                  nop
                  and          a2, a2, s1
                  and          a5, s6, t2
462:              beq          s3, tp, 463f
463:              or           t4, s0, a1
                  bltu         t3, t3, 468f
                  or           t1, tp, s10
                  slt          t0, t0, a1
                  bne          a7, s5, 474f
468:              sra          sp, t6, s0
                  nop
                  sltu         a4, s8, a3
                  lui          a0, 6151
                  sltu         zero, s11, gp
                  sra          zero, zero, a3
474:              srli         t5, t6, 25
                  lui          a6, 368466
476:              sltiu        sp, s3, 1525
477:              andi         a4, t5, 1562
                  sll          t6, t4, t5
                  srl          sp, a1, t0
                  andi         gp, sp, 1832
                  xor          a2, s9, a3
                  sltu         zero, t3, a2
                  beq          t2, zero, 491f
                  bne          t1, a0, 499f
                  xori         t4, t6, 971
                  srai         s1, ra, 9
                  bltu         sp, s4, 499f
                  sub          s9, sp, tp
                  bge          a6, s0, 496f
                  nop
491:              ori          s11, s10, 1105
                  srl          a5, s8, s9
                  sra          a6, a5, s5
                  ori          a0, a0, 842
                  sll          gp, s4, a0
496:              xori         s4, s6, 1575
                  and          a1, a3, a7
                  ori          s6, t5, 935
499:              slli         s3, a6, 15
                  srl          a7, s1, t3
                  srai         s10, s6, 17
                  slt          t0, a5, s3
                  slti         s10, a2, 319
                  andi         a6, zero, -698
                  bge          a7, s10, 507f
                  xor          s11, t0, a3
507:              slli         a4, t5, 8
                  sltu         s10, sp, t4
                  srai         a1, zero, 19
                  nop
                  sub          a0, s9, t0
                  xori         t0, s0, 1457
                  xori         s4, a6, 1196
                  bne          a1, s3, 534f
                  srai         a7, a4, 6
                  lui          s9, 1001078
                  slti         t0, tp, -1819
                  slli         sp, s0, 28
                  add          s6, ra, s4
                  bgeu         tp, sp, 521f
521:              bne          a1, zero, 531f
                  sub          a3, ra, t0
                  srai         s6, s3, 2
                  addi         s5, a3, -120
                  nop
                  ori          t1, sp, 1373
                  srai         a7, s1, 0
                  or           s10, t4, s4
                  or           a3, a5, s4
                  blt          a2, a2, 543f
531:              sltu         s1, s8, a0
                  slli         t5, s8, 27
                  sltiu        a2, a5, 1744
534:              nop
                  slli         s5, s2, 30
                  srai         s2, s8, 27
                  bltu         s1, a0, 557f
                  and          a2, a2, a0
                  andi         a4, sp, -1436
                  sub          a3, s6, s0
                  bge          s0, s2, 558f
                  srai         a2, s6, 3
543:              bltu         a6, t4, 559f
                  nop
                  slli         s10, sp, 18
                  andi         zero, t4, 1666
                  sra          s10, a4, gp
                  sra          a6, s1, t3
                  blt          s3, a3, 565f
                  lui          sp, 603051
                  blt          s3, a1, 556f
                  beq          t5, s2, 556f
                  add          a3, sp, a2
                  add          t4, s2, gp
                  andi         a5, a4, 1173
556:              srli         t1, zero, 28
557:              xori         s9, s7, -1444
558:              srai         sp, a4, 10
559:              srl          gp, zero, a1
                  sltiu        s7, tp, -415
                  ori          t0, t2, 897
                  sra          a5, a7, a2
                  addi         s9, a6, 666
                  lui          a6, 922180
565:              add          t1, s8, s8
                  or           t3, t0, s5
                  srl          a7, s3, s1
                  sltu         t0, t2, s10
                  slli         s1, t2, 26
                  ori          a6, s3, 597
                  srai         s0, s4, 13
                  slti         s0, t4, -579
                  bne          s5, s2, 580f
                  srai         s2, t2, 0
                  srli         s2, ra, 21
                  nop
                  beq          t2, a5, 594f
                  srai         s3, sp, 21
                  nop
580:              lui          s2, 699480
                  sub          t1, a4, s5
                  srai         ra, sp, 26
                  sltu         a1, s2, a7
                  bgeu         s4, t0, 589f
                  or           s11, a4, t6
                  addi         t6, a7, 536
                  add          s0, a2, t1
                  auipc        s1, 649457
589:              bne          s2, a7, 605f
                  and          s4, s7, s9
                  and          gp, s2, s8
                  sll          s9, t3, sp
                  lui          zero, 6526
594:              bgeu         s3, t6, 613f
                  lui          s0, 480065
                  lui          ra, 491016
                  slt          t3, a4, a1
                  srl          s11, zero, s9
                  sltiu        a0, s5, -930
                  andi         a6, s3, 1989
                  ori          s6, ra, -1845
                  slti         zero, t3, -872
                  sltu         ra, zero, s8
                  beq          s1, a1, 610f
605:              andi         a7, zero, 1409
                  srl          s9, a1, s9
                  and          t3, a7, a4
                  xor          s11, s7, a1
                  slli         s9, s10, 27
610:              bltu         t4, zero, 612f
                  ori          t3, a6, -1199
612:              sltu         s4, s8, t4
613:              and          s11, s6, s8
                  srli         s7, zero, 18
                  or           a5, s1, s4
                  srli         t1, t0, 31
                  srai         s2, s1, 26
                  auipc        ra, 297573
                  addi         a1, t2, 1818
                  xori         s11, s3, 816
                  lui          s6, 322163
                  nop
                  auipc        t3, 763450
                  blt          tp, t5, 628f
                  sltu         a2, sp, a5
                  srl          t0, t6, a6
                  lui          ra, 44883
628:              xori         t0, s2, -814
                  bgeu         gp, a2, 630f
630:              slli         s0, t3, 1
                  slli         t4, a2, 26
                  sltu         a2, t3, t2
                  lw           ra, 4(tp)
                  slli         s7, t4, 26
                  addi         tp, tp, 56
                  sltu         s2, s7, tp
                  auipc        s1, 1019886
930:              addi x21, x1, 1
930:              jalr x21, x21, 0
sub_3:            srl          gp, s7, t4
                  srli         a2, s1, 12
                  ori          a1, t4, 603
                  sra          s9, s0, t4
                  blt          s6, s6, sub_3_stack_p
                  slt          s7, s10, tp
                  srli         a0, sp, 8
sub_3_stack_p:    addi         tp, tp, -64
                  sw           ra, 4(tp)
                  sltu         t4, a5, a7
                  beq          zero, s2, 14f
                  andi         zero, a6, 1543
                  bltu         s0, a3, 3f
3:                beq          t4, s1, 4f
4:                xor          s4, ra, s9
                  blt          tp, a3, 17f
                  bltu         a2, t6, 18f
                  srli         s2, a0, 12
                  slli         s7, a6, 12
                  srli         zero, s7, 0
                  slt          s7, ra, t1
                  slti         t4, s6, -1682
                  or           a7, t1, sp
                  srli         t5, t3, 13
14:               srai         t0, s5, 9
                  slt          a0, zero, tp
                  auipc        a4, 308565
17:               ori          s3, tp, 1277
18:               beq          t5, t4, 28f
                  nop
                  srli         a7, t0, 2
                  bgeu         a7, s2, 25f
                  srl          s0, s6, ra
                  addi         t3, a0, 1907
                  beq          s2, s8, 26f
25:               sltu         s9, s2, s11
26:               blt          s11, s5, 28f
                  and          s3, a0, s4
28:               sub          s4, a1, s6
                  andi         s1, s8, 846
                  auipc        s3, 258503
                  ori          t1, s2, -1681
                  sltiu        s6, a3, -1452
                  xor          a6, s10, a0
                  slt          a4, t3, gp
                  sltiu        t3, s5, 1553
                  ori          t5, s5, -645
                  and          s3, a7, s3
                  ori          t0, s3, -1023
                  lw           ra, 4(tp)
                  add          s1, s10, a4
                  lui          s1, 811185
                  addi         tp, tp, 64
                  or           s7, a1, s2
                  addi         t0, s3, -487
                  sra          a4, s10, s3
56:               addi x5, x1, 1
56:               jalr x5, x5, 0
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
.word 0x1ab88837, 0x5a349d1b, 0x8610d952, 0x12d55f09, 0x3aeb5270, 0x4e9db6ed, 0xd4d055e6, 0x2c211b25
.word 0x81d1bb4d, 0x4c7ea7b6, 0x31c92f87, 0x383a9f2a, 0xdbb725e9, 0x19d3b6bc, 0xe6122913, 0x12334aea
.word 0x5ed8dd8c, 0xe549ed09, 0xfdd0c200, 0x1c3cae65, 0x0ef28477, 0xd1c9ce29, 0xcd960c75, 0x3d19bd3d
.word 0xf02b8502, 0xf953748d, 0xd17d2a41, 0xea36554b, 0x595d3fe2, 0xf3781fa1, 0xff72fe9c, 0x74636979
.word 0xa348af00, 0x49a60669, 0xe4cbd595, 0x360d973c, 0x1be7c2e5, 0x729da56e, 0x05914202, 0x75785dc3
.word 0x9ece0cb1, 0xa1119bed, 0x55ff4c10, 0x08087754, 0xd78f8459, 0x937ab7d5, 0x6911dc8e, 0xe748876c
.word 0xeb1729ee, 0x5ca7272b, 0xd599107c, 0x29a53232, 0xce70a5a5, 0xe7ffb5b3, 0x26dc437c, 0xc40b7457
.word 0x3c4fe7b7, 0x2e96fc51, 0x5323e454, 0xd4ca20a8, 0x462ce18b, 0x5f02d543, 0x82acbf92, 0x870abacf
.word 0x2c753c55, 0x235326fa, 0x110ecd04, 0x11c526bb, 0xb5408eda, 0xeb342768, 0x7cb77546, 0xbd61daf0
.word 0xee1c19d2, 0xa7a9f8ec, 0x149a2eab, 0x8e3ee144, 0x2182e392, 0xd474ec71, 0x3d64ee1c, 0x12ebdcaa
.word 0xc8d09a63, 0xee502bff, 0x0cbe1951, 0x90486bc2, 0x8bfa476f, 0x0150d97a, 0x4ec2b3e3, 0x456d4041
.word 0x1a90e20c, 0xd9bfe371, 0x0c1f6305, 0xa1aedfb2, 0x93f55e02, 0x388ff408, 0x8c652caf, 0xdcb7e56b
.word 0xe828dd07, 0xeb84a669, 0xcefc9468, 0x120af5e2, 0x12e837d7, 0x60dd8b9d, 0x7ad680df, 0xd2601595
.word 0xaa7e1b0e, 0x6cfcab9a, 0x4507421a, 0x218d34c3, 0x91e0d32b, 0x0f351983, 0x08f1e846, 0xccd1d7ad
.word 0x574891c1, 0xb589afe2, 0x67662638, 0x06e9893c, 0x24bd0935, 0xb57f955f, 0x3d01e473, 0x9e495f43
.word 0x90880509, 0xcd4d5cc5, 0x01a774d6, 0x54ee7da4, 0x86635969, 0xc0813ad0, 0x92f7eb90, 0x65a70013
.word 0xce36140a, 0x87d99219, 0xa78901db, 0x27c03b69, 0xde010ebf, 0x4738fc3c, 0x3d8691b2, 0x4473e28e
.word 0x3a4bf9e7, 0xd096273d, 0x31e61da4, 0xa7b0df68, 0xb44fb21a, 0x49597644, 0xa2919854, 0xe3a2db81
.word 0x563c9f58, 0x40ac6eda, 0x718ed17d, 0x510ff1eb, 0xe2956e2b, 0xcd8b7015, 0x510583fa, 0x64e1c9b9
.word 0x9f62f98c, 0x86946558, 0xb67313bf, 0xaa097b3e, 0xe9c4e91a, 0x5ba8c4c5, 0xca7421bd, 0xb9476fcc
.word 0x8d377cf2, 0xdcbad27a, 0x362056ea, 0xd207d520, 0x828f5802, 0x5e642956, 0x939f6faf, 0xc252b7fc
.word 0x31a4167f, 0x0dc26c3a, 0x4110eb8f, 0x9ee1af26, 0x157e6b99, 0x38e22503, 0x0bd37caf, 0x7bf5e6a8
.word 0x21c91c70, 0x7a5f26c9, 0xb4646d1c, 0x302a40dc, 0x965d1251, 0x022320e9, 0xa56b8203, 0xd27a1b78
.word 0xb5206568, 0x179b0ff8, 0xe42f32f1, 0x08858d82, 0x53103b26, 0x9b46dd60, 0x68e8a099, 0x8c37c7fd
.word 0xbb66418d, 0x7fff2e9d, 0xdd00b6c1, 0x9f5ac8ef, 0x4ce6ecae, 0xbbe7dad2, 0x07936a4c, 0xf7495bc3
.word 0xf6fb63da, 0xcbf5e803, 0x1f18b3db, 0xa6c949cd, 0x9bebdb95, 0x96416551, 0x941e3b52, 0x238549f8
.word 0x2559828d, 0xdebd222a, 0x25184504, 0x030f8ff8, 0x53049343, 0x9f99130a, 0xf85cfde3, 0x0d9699e7
.word 0xdfc75b5f, 0xab8e8657, 0x6a5ed5e3, 0x6001ed87, 0x2b02181b, 0xa7535c28, 0x58108d19, 0x59d4cba2
.word 0x783141b8, 0xec8175c0, 0x74f41ff7, 0xc1698c79, 0x645e8ed5, 0x2197962a, 0xe45651db, 0x19ba2712
.word 0x73b0b750, 0xaa0ce8a4, 0x29c32e29, 0x1fb1a8ee, 0x31524bd4, 0xd5757280, 0xabb75f10, 0x293a5409
.word 0x294b259f, 0x3c103808, 0x79309ba6, 0xe804d2c1, 0xdb605db6, 0xae07c2eb, 0x0146fa71, 0xce6bc81a
.word 0x08509682, 0x3b883aad, 0x66d96da4, 0xf6d41c29, 0x57088e58, 0xb2e91c65, 0xd1d1768a, 0xdac3b776
.word 0x422ef632, 0x1459b422, 0xae292dae, 0x348f4163, 0x64b352e0, 0xdab79783, 0x30f7434b, 0x312843e8
.word 0xa2afe3a5, 0xc47e0338, 0x66df9cfe, 0xfbc74fcd, 0xa8979ae0, 0xe3bce833, 0x1719e34d, 0x1e12d0b8
.word 0x58540b3d, 0xcdaa0dac, 0x883f7503, 0x533da3c2, 0x5bf7caf7, 0x2201a963, 0xc5ee3f39, 0x9b44b0d4
.word 0x3009c1e6, 0xd2f9f152, 0x53da430f, 0xd497107e, 0x09c7b81a, 0xaa710e10, 0x1127db10, 0x6b03f773
.word 0x749ae86f, 0x4bfef641, 0x9f15bb9b, 0x3dc0972e, 0x40f68438, 0x9b842128, 0x513b629d, 0xaeaf7c65
.word 0xf01e057f, 0x3f09935e, 0xe36564df, 0x6f850a34, 0xbfce6cdf, 0xf3af1ca2, 0xf81e1627, 0xa844fe80
.word 0x98308155, 0x8c163d4e, 0x4ffabc9d, 0xf7cf7929, 0x74ce6347, 0xa494ba91, 0x0ab5f53b, 0x2cbe4152
.word 0xe34e7a7f, 0x27a6a38a, 0xa9c87e92, 0x31eea74b, 0x43c468b2, 0xc5e2455b, 0xfca2f733, 0x070d89f6
.word 0xb375f98b, 0xbdfe4a89, 0x11f29d33, 0x0208cc6e, 0xbe155ae1, 0xec80a428, 0x5efcf04a, 0x13e65cf5
.word 0x917b8101, 0xcac81bf7, 0x4eb58ead, 0xd892baf1, 0x5ba87d42, 0xcf5cdd1b, 0xb30f3647, 0x15977450
.word 0x90c86c80, 0x375e8b05, 0x1673254a, 0xdc692da3, 0x197c480f, 0xd7cae059, 0x230cf7a1, 0x1b7b9a4e
.word 0x953cf463, 0x1a166099, 0xa2936365, 0x19bb0b09, 0xbdd55c2a, 0x902d4d67, 0xe3d268c3, 0xf545bea4
.word 0x3b75485c, 0x6a3bf825, 0xca530fc1, 0x116b6da2, 0xd21f5310, 0x2cab3da1, 0x0915fbb3, 0xc02a2f34
.word 0x28fd52d5, 0xb07008fb, 0xb07fb596, 0x96dd4704, 0x3ce8bace, 0x0ca2c19e, 0x2c1ef2ab, 0x16e3566a
.word 0x49107be4, 0xf2ec0920, 0x9206268e, 0xc88c27c2, 0x99f10473, 0xc10ae60f, 0xc221ab56, 0xd7939376
.word 0x870188ed, 0x63e8e811, 0x5fe43eb9, 0xf5d35a86, 0xe7d8738a, 0x88ecaa19, 0xb4742d60, 0x0d1fc7f8
.word 0xa03036cd, 0x733937a6, 0xab2b8671, 0x6acaaec5, 0xa30aadbe, 0xe62e1c1e, 0x7089bbdf, 0x29e51287
.word 0xebf6b75f, 0x593943ff, 0x4a1b8d18, 0xe4be7ca5, 0xb6c0214b, 0x7f3530f8, 0x19180cfc, 0xc306e2ac
.word 0xd4438c1c, 0x0726d190, 0xfda3bc41, 0xb09c1550, 0x51ad87f9, 0xeb97348d, 0x5c3ff785, 0xbfbadb4b
.word 0x5a971542, 0xaa51d163, 0xd4a4a9a5, 0x35f7e4a3, 0x2d66b2d6, 0xd2ff5a3b, 0x0bfb9a39, 0x14739398
.word 0x06ae46d2, 0xd0bdf8ab, 0x297c8ecf, 0x727de96b, 0xef5d7846, 0x08333a53, 0x706878f0, 0x7f69c718
.word 0x146ffb46, 0x98830bdf, 0x8d49e836, 0x37928beb, 0x765e2091, 0x462d2780, 0x91ed5291, 0xb84c299e
.word 0x256c993a, 0x4da752b7, 0xaaa4689b, 0xdef6a9e6, 0x87b38779, 0x6a463083, 0xd9453e36, 0xdfe5ef6b
.word 0x07d348f2, 0x00832768, 0xbb5de127, 0x278ac3ca, 0x2cb13ac8, 0xa60aee13, 0x4ccfdfd1, 0xd45da740
.word 0x37bc90a9, 0x463dcfe8, 0xbe8f05db, 0x285d49c0, 0xfdf90853, 0x7caeeab5, 0xb9288fcd, 0x79bf45e3
.word 0x3c57a7ae, 0x208af2dc, 0x23216256, 0xc8766208, 0xb9dc529f, 0x0e3b2e92, 0x5e2f41be, 0xfb177534
.word 0x97152475, 0x9f2951e1, 0x9f1da894, 0xf1c07c3c, 0xb7777de3, 0xdd3d23c3, 0x9026393c, 0x52576f7c
.word 0x6733db57, 0xd07df8c7, 0x5830c04e, 0x71220af8, 0x33cb1e0d, 0x2b08b17d, 0x50a1371b, 0x5aab8ab1
.word 0x70468cac, 0x7f686c74, 0x4f73a493, 0xc6de07a2, 0x95094226, 0x8a2156c0, 0xaf0e4a4e, 0x44d79038
.word 0x8ec1d71f, 0xd0400974, 0x9a538ff0, 0xf972afdb, 0x0db98a14, 0x20327a56, 0x78418d45, 0x5a18c616
.word 0x85ceab69, 0x54ae5e95, 0x2a3dd132, 0xd31fe1d8
.section .region_1,"aw",@progbits;
region_1:
.word 0x02baee46, 0x7795a261, 0xb831621a, 0xb6ab3959, 0x46721c58, 0x68723ba6, 0xc8b80375, 0xa8803bda
.word 0x7cf76f9f, 0x42f9e2d7, 0xc668ccf2, 0xb61ec81f, 0x45f063be, 0x643b3114, 0x0e5001dc, 0x0c8605ad
.word 0x749e5189, 0xa727420c, 0x15c78408, 0x200d8f3d, 0x64b6a77e, 0x4f1f1c63, 0x91ea780d, 0xf9fe1d52
.word 0x8e8a6d3a, 0xa9aff735, 0x308b1599, 0xa954e210, 0xdc2a58c4, 0x4fc00175, 0x332de170, 0x6f411b8b
.word 0x63094f65, 0xa96bdfd5, 0x76bb4fc6, 0xe734b6cc, 0xf5f38b43, 0x214fd68b, 0x2c4e34da, 0x7c7cc25c
.word 0x94db9f10, 0xa7e5ec0b, 0xeeb2be2b, 0x3ff945bb, 0x9b995fe7, 0xc4b45920, 0xe10a6fc2, 0x16dd0acf
.word 0xd94a97f9, 0x906a9e60, 0x8b0f5906, 0xcbc93814, 0xccbe2d6b, 0x90ca4145, 0xee2cb913, 0xc7fd5b46
.word 0x1f19afc0, 0x0a98ad02, 0xe85596b8, 0x7cb9868b, 0xaf5f54b2, 0x88c3252f, 0x5df7b481, 0x0069d787
.word 0xc646fcef, 0x11858390, 0x29a4677f, 0x4b710bc8, 0x9400da70, 0x4cbac68d, 0xe83ec529, 0x1b624703
.word 0x56175625, 0x4377a113, 0x9610825a, 0xbf8eafaa, 0x44ce0363, 0xa944eec6, 0xf1018221, 0xba56459f
.word 0xa65652a5, 0xeb6c4390, 0x5a81ed8f, 0xfb91deed, 0x131b44b9, 0x10d0e388, 0x391c56fa, 0x0afc5769
.word 0x412f283b, 0xba02be06, 0x5bc9cbd6, 0xda983d29, 0x534c3dbf, 0x59a84428, 0x7692e166, 0x2f60c93f
.word 0xf4843c54, 0xa9cb6f8d, 0xaf2a07a8, 0x4af76b6a, 0x1a2888c9, 0x8b304709, 0x42da539a, 0xbd8087c2
.word 0x121b4a4a, 0x77196507, 0x65711155, 0x608b7839, 0xc1b589f2, 0x9721a958, 0xf19a3cf9, 0x4f7f3d39
.word 0x9f541636, 0xb0178523, 0x1f121989, 0xd77bcf20, 0x24d1949b, 0x1b9cda48, 0x93c25eb7, 0x716b3fb4
.word 0x5795a975, 0x4039e9e5, 0xb64df20f, 0xfd8c4a9e, 0xadd90495, 0x6fcda118, 0x0d22ebbe, 0x9866785b
.word 0x79a8a44b, 0xf020c7c1, 0x5a0c70a4, 0x6ebf4cdf, 0xd9395183, 0x84e6b9cb, 0x11c3ad96, 0xa4b05eeb
.word 0xdc7b2581, 0xcee0f7f3, 0x08bddd1c, 0x38227bb6, 0xafc0d861, 0xdd23d960, 0x6568e163, 0x647fae8d
.word 0x18790fc3, 0xd264f9b3, 0x87e3d6bb, 0x8508cd65, 0x418a2dc7, 0xe841285b, 0x7459f05d, 0x2fa274b2
.word 0x750a96a4, 0x363a4416, 0xf945eb2b, 0x9259e04b, 0x0d6ecfea, 0xabeabdd5, 0xba744872, 0x405619e7
.word 0xe833189a, 0xd9fd06ca, 0xbee8b924, 0xdbac21d6, 0xfdce52da, 0x64a1e566, 0x962ae5cd, 0xc5d32c42
.word 0x69cde83c, 0x879a05b9, 0x5082c6d6, 0xb700e7e7, 0xe03eb998, 0x0a4dabb0, 0xc57bf840, 0x554a590a
.word 0x952339f1, 0x22d061cc, 0x1233ba65, 0x97c73c08, 0x670ae9d4, 0x10d3f8b6, 0xc786d580, 0x0fec9cbf
.word 0x5fff186f, 0x882bdcc1, 0xc5b899eb, 0xa41e4250, 0x03263274, 0xfb103d05, 0xc99adaab, 0xdc4fa04f
.word 0x411692c3, 0x1e0cabb5, 0x3c572979, 0xcacd56e4, 0xc3045611, 0xf03eca96, 0xe15f7ce8, 0x0ad8a7a3
.word 0x91065893, 0x619660b6, 0x2e08cc0e, 0x7a9df45a, 0xebefc269, 0x1b7005db, 0x01a6c7bd, 0xe5578492
.word 0x472c3c4a, 0x419ab3d9, 0x9f5d5068, 0x777b14be, 0xea0bfaae, 0xd9367186, 0xe4d647d0, 0x2de87442
.word 0xda5ac3ac, 0x6977efac, 0x8c885376, 0x05746798, 0x761de9bc, 0x572d5d3f, 0x133d2654, 0x97a88502
.word 0x57cd205b, 0xf73838af, 0xb5899809, 0xc5e8c93f, 0x7acc3a0d, 0xb951a191, 0x14851c11, 0xfe41c8a1
.word 0xc07bffaf, 0x3a8e5429, 0xb949a86c, 0xd3b2d8f7, 0x8356e92c, 0x7d5f02f0, 0xc1224097, 0x0db0dab1
.word 0x22d6f05b, 0x785bd36c, 0xcf395eeb, 0x457c619e, 0xe8d91752, 0x80bd048a, 0x7c50eb39, 0x342b723e
.word 0x85230e9d, 0xd3931057, 0x67abe6e4, 0x58cf4c1d, 0xdbcc8a04, 0x2b1edf2f, 0x3340b519, 0x829b7f0e
.word 0x894fce61, 0x99c1a0a8, 0xf41844c1, 0x46de97f0, 0x0592f42b, 0x3ec35b89, 0x0d52cf7e, 0x7232e86f
.word 0x040097d2, 0xaf826cd7, 0x3781c58e, 0x19a43d11, 0xc42874ff, 0x10102477, 0x2d1f528d, 0x3d5f4b96
.word 0x44cc021c, 0x58982208, 0xeeecd5df, 0xf80831da, 0x2122d21d, 0x77956668, 0x12fa4a71, 0xb038d56b
.word 0x19e86aa3, 0x7f8fad7c, 0xa779c594, 0x05b60a18, 0x8292e301, 0xcac57051, 0xdea9e726, 0x09e78b93
.word 0xaa46a400, 0x0597abb7, 0x14ea53a0, 0xdd58e444, 0xb387aeb7, 0xa172c597, 0x9f6bcb1a, 0x4e649a86
.word 0x37fa62ce, 0x3f2725d2, 0x7cb1ec42, 0x97453a23, 0xac0ff96c, 0x0f3ed3dc, 0xd428fcd0, 0x6efceac7
.word 0x3bf44b3b, 0xf8f4ade8, 0xc78c0872, 0x3c132454, 0xff754f3d, 0x3697df51, 0x1fb12742, 0x5a1e2b3e
.word 0xcb8ae183, 0x7b425445, 0xfc88f4bc, 0xc27dc30e, 0x92887714, 0x01be1fb7, 0x1b6b25d2, 0xd3151b46
.word 0x85798106, 0xe14d67dd, 0x36dfcb36, 0x0be47570, 0xbb2224f7, 0xd9e9a2bc, 0x8dd0cb49, 0x3fdccd33
.word 0x645a554f, 0x60c59032, 0xe3db98f1, 0x9f287cc6, 0xa390f8c0, 0x4133bd55, 0x73dcbd7d, 0x8a17111f
.word 0x7c16ecc5, 0x24ca72c3, 0x1884de21, 0x759f49de, 0xcea2a708, 0xbd60486f, 0x7a8776ab, 0xef2ef73a
.word 0x10b80bbd, 0x418d5ded, 0x5774319e, 0xb8f49cad, 0x6bfd242b, 0x482bb59e, 0x2cde904f, 0xd740b0c4
.word 0x41e638f1, 0x91aa47db, 0xa7eff87f, 0xf4b67532, 0x296f8c73, 0xe923ddc4, 0xd0f44769, 0x3bfd6f35
.word 0xaa04bbf3, 0x509ae602, 0x8d6ee814, 0x3268f9d1, 0xde303bb0, 0xb81230ca, 0xaaa94272, 0xdcbbcd02
.word 0x4a6e7627, 0x8406016d, 0x5ab1d6ac, 0xfe9c983f, 0x784ef69c, 0xbc8383f8, 0x45fca73a, 0x6bf69fba
.word 0x8e3c7e22, 0xa99fabfe, 0xd0e1bae9, 0x0977345c, 0x0db61954, 0x63919652, 0xffc37b48, 0x7b6229db
.word 0xb881b2d3, 0xcbf271a5, 0x9b6e6ca7, 0xefc63f8b, 0x57874ce7, 0x506a0c33, 0x508d70ca, 0x99c5b2c8
.word 0x65934d81, 0x59b89cd9, 0x147c3375, 0x47b5fc7c, 0x1658f9b6, 0xe3f4de35, 0x6fb33a0e, 0xe0214d4c
.word 0xb8c1fc2a, 0xedd2f0f1, 0xa1d45ca6, 0x50d53c3d, 0xb08a6cc2, 0x0279665f, 0xff1f5041, 0xfd39bb5e
.word 0xbe0b2102, 0xc750dd25, 0x43e4342b, 0xdf326254, 0xa6fa8621, 0x76e98764, 0x6c32fdcf, 0x24c5d197
.word 0x3087aeca, 0x153ab2d1, 0xee2cbb83, 0x1fe919ef, 0x5628b414, 0xcc623880, 0x49d71058, 0x3deb4580
.word 0xb953e6a6, 0x4d06f1be, 0x225cc2e3, 0x078ae221, 0x82154c25, 0x7d1bf891, 0x8d20e10d, 0x3d7a7484
.word 0xace0d6eb, 0xf6bbf419, 0x99c95f1e, 0x80401fcf, 0xc1a3da4f, 0xf55e91bb, 0x8e37f4bd, 0x2d1be278
.word 0xfb594069, 0xb4b9f118, 0x7ff65566, 0xc75f275a, 0xf2041cf5, 0x63d081eb, 0xe6a3124b, 0x4c3d9cef
.word 0x64716cca, 0x754bd466, 0x191ba827, 0x50546bc2, 0xa23f16e4, 0x3562e78e, 0xe30ced4f, 0x404b3c0c
.word 0x4f703af5, 0xbfbd62ce, 0xb2fc1047, 0xe186e0da, 0xb65fc9ea, 0xc04eb89f, 0xa88d29d1, 0x3785d603
.word 0x3f6ef8f5, 0x701c5742, 0x55bd3be1, 0x0e488f19, 0x5f979f19, 0xda45e139, 0xff65d4fc, 0xe7b6677d
.word 0x0a2a2e9c, 0xae8232fe, 0xb8b455c0, 0x7401f81f, 0xc2a9db1e, 0x2a346a3d, 0x1d28d06a, 0x9c91975c
.word 0xe2371382, 0x405ff876, 0x084f9d25, 0x6ec9dab2, 0x71f11235, 0x20cb375b, 0xea5c960c, 0xefd47c8f
.word 0x1aa6b045, 0x20fab7cb, 0x4166ef3b, 0x25e8d25f, 0x4b5a178b, 0xde3070e9, 0xe0e411e7, 0x06e495d0
.word 0x7ec369ad, 0x99a79ffe, 0xcb9d4611, 0x998017ff
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
                  addi x4, x4, -128
                  sw  x1, 4(x4)
                  sw  x2, 8(x4)
                  sw  x3, 12(x4)
                  sw  x4, 16(x4)
                  sw  x5, 20(x4)
                  sw  x6, 24(x4)
                  sw  x7, 28(x4)
                  sw  x8, 32(x4)
                  sw  x9, 36(x4)
                  sw  x10, 40(x4)
                  sw  x11, 44(x4)
                  sw  x12, 48(x4)
                  sw  x13, 52(x4)
                  sw  x14, 56(x4)
                  sw  x15, 60(x4)
                  sw  x16, 64(x4)
                  sw  x17, 68(x4)
                  sw  x18, 72(x4)
                  sw  x19, 76(x4)
                  sw  x20, 80(x4)
                  sw  x21, 84(x4)
                  sw  x22, 88(x4)
                  sw  x23, 92(x4)
                  sw  x24, 96(x4)
                  sw  x25, 100(x4)
                  sw  x26, 104(x4)
                  sw  x27, 108(x4)
                  sw  x28, 112(x4)
                  sw  x29, 116(x4)
                  sw  x30, 120(x4)
                  sw  x31, 124(x4)
                  add x24, x4, zero
                  csrr x27, 0x300 # MSTATUS
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 31
                  bne x27, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x13, 0x3 # BREAKPOINT
                  beq x27, x13, ebreak_handler
                  li x13, 0x8 # ECALL_UMODE
                  beq x27, x13, ecall_handler
                  li x13, 0x9 # ECALL_SMODE
                  beq x27, x13, ecall_handler
                  li x13, 0xb # ECALL_MMODE
                  beq x27, x13, ecall_handler
                  li x13, 0x1
                  beq x27, x13, instr_fault_handler
                  li x13, 0x5
                  beq x27, x13, load_fault_handler
                  li x13, 0x7
                  beq x27, x13, store_fault_handler
                  li x13, 0xc
                  beq x27, x13, pt_fault_handler
                  li x13, 0xd
                  beq x27, x13, pt_fault_handler
                  li x13, 0xf
                  beq x27, x13, pt_fault_handler
                  li x13, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x13, illegal_instr_handler
                  csrr x13, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x27, _start
                  sw x0, 0(x27)
                  sw x1, 4(x27)
                  sw x2, 8(x27)
                  sw x3, 12(x27)
                  sw x4, 16(x27)
                  sw x5, 20(x27)
                  sw x6, 24(x27)
                  sw x7, 28(x27)
                  sw x8, 32(x27)
                  sw x9, 36(x27)
                  sw x10, 40(x27)
                  sw x11, 44(x27)
                  sw x12, 48(x27)
                  sw x13, 52(x27)
                  sw x14, 56(x27)
                  sw x15, 60(x27)
                  sw x16, 64(x27)
                  sw x17, 68(x27)
                  sw x18, 72(x27)
                  sw x19, 76(x27)
                  sw x20, 80(x27)
                  sw x21, 84(x27)
                  sw x22, 88(x27)
                  sw x23, 92(x27)
                  sw x24, 96(x27)
                  sw x25, 100(x27)
                  sw x26, 104(x27)
                  sw x27, 108(x27)
                  sw x28, 112(x27)
                  sw x29, 116(x27)
                  sw x30, 120(x27)
                  sw x31, 124(x27)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x4, x24, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

load_fault_handler:
                  add x4, x24, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

store_fault_handler:
                  add x4, x24, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x4, x24, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x4, x24, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x4, x24, zero
                  lw  x1, 4(x4)
                  lw  x2, 8(x4)
                  lw  x3, 12(x4)
                  lw  x4, 16(x4)
                  lw  x5, 20(x4)
                  lw  x6, 24(x4)
                  lw  x7, 28(x4)
                  lw  x8, 32(x4)
                  lw  x9, 36(x4)
                  lw  x10, 40(x4)
                  lw  x11, 44(x4)
                  lw  x12, 48(x4)
                  lw  x13, 52(x4)
                  lw  x14, 56(x4)
                  lw  x15, 60(x4)
                  lw  x16, 64(x4)
                  lw  x17, 68(x4)
                  lw  x18, 72(x4)
                  lw  x19, 76(x4)
                  lw  x20, 80(x4)
                  lw  x21, 84(x4)
                  lw  x22, 88(x4)
                  lw  x23, 92(x4)
                  lw  x24, 96(x4)
                  lw  x25, 100(x4)
                  lw  x26, 104(x4)
                  lw  x27, 108(x4)
                  lw  x28, 112(x4)
                  lw  x29, 116(x4)
                  lw  x30, 120(x4)
                  lw  x31, 124(x4)
                  addi x4, x4, 128
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
