.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x7, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0xdc57df62
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0xf2d916eb
                  li x4, 0xf08a3ef8
                  li x5, 0x80000000
                  li x6, 0x0
                  li x8, 0xf6285fd2
                  li x9, 0xf87cb97d
                  li x10, 0x0
                  li x11, 0x320ade31
                  li x12, 0x80000000
                  li x13, 0x83a09f3d
                  li x14, 0x7a887fea
                  li x15, 0x80000000
                  li x16, 0xfdf7f068
                  li x17, 0x0
                  li x18, 0x80000000
                  li x19, 0x73eb9636
                  li x20, 0x0
                  li x21, 0x7
                  li x22, 0xf445ff17
                  li x23, 0xea4109f2
                  li x24, 0x80000000
                  li x25, 0x80000000
                  li x26, 0x1
                  li x27, 0x1
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x157c554f
                  la x31, user_stack_end
main:             addi         t4, zero, 7 #init loop 0 counter
                  srai         t5, s11, 21
                  addi         s10, zero, -1 #init loop 0 limit
                  sra          s4, s1, s3
main_0_0_t:       and          s6, a6, t6
                  addi         t4, t4, -8 #update loop 0 counter
                  lui          tp, 591759
                  slli         s3, s7, 23
                  bne          t4, s10, main_0_0_t #branch for loop 0
                  xor          a5, a3, s7
                  srai         zero, t1, 14
                  slti         a2, t2, -439
                  ori          t0, ra, -86
                  srai         s3, t6, 3
                  andi         t4, a7, 1222
                  slli         t1, s8, 15
                  srl          s1, t2, a5
                  slt          zero, t6, t2
                  slt          s2, s6, s3
                  la           s0, sub_1
                  add          t5, a1, s8
                  lui          t1, 610149
                  addi         s0, s0, 825
                  lui          zero, 566099
                  srl          s11, a3, s7
                  add          t0, t1, s3
                  ori          a7, a6, -2032
main_j1:          jalr         tp, s0, -825 #jump main -> sub_1
                  sub          s11, a0, t6
                  srli         a1, a6, 24
                  xor          s6, a3, ra
                  sltu         s5, t2, s11
                  add          a4, a7, t0
                  blt          a6, t0, 32f
                  srl          ra, t5, zero
                  bgeu         ra, a4, 23f
                  bltu         s7, a7, 26f
                  nop
                  andi         s2, s1, -1683
                  slt          a4, t5, a1
                  beq          s11, s9, 22f
                  sub          a6, s0, t4
                  sltiu        s2, a5, -1136
22:               srl          s6, a6, s3
23:               sra          s7, t6, a4
                  slli         a2, t1, 23
                  sub          a6, s0, t2
26:               sub          s5, t6, s5
                  auipc        s3, 354845
                  add          s3, s9, s9
                  add          a4, s2, s3
                  sra          s8, a7, s11
                  sltu         t5, s6, t1
32:               xori         a5, s8, 1462
                  xor          s4, a5, s7
                  xori         t4, s0, 520
                  srli         s8, gp, 15
                  ori          s4, s4, 966
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            beq          s11, s4, sub_2_stack_p
                  sll          s10, s6, sp
                  add          a4, s4, s4
sub_2_stack_p:    addi         t6, t6, -40
                  sw           tp, 4(t6)
                  sll          s4, t0, s2
                  or           a5, s8, t4
                  and          s3, s2, t1
                  la           a2, sub_5
                  sltiu        s11, s1, 1157
                  sltu         t4, s5, a6
                  sltiu        s10, t4, 2038
                  sltiu        s3, s1, -269
                  addi         a2, a2, -848
                  auipc        t3, 325915
                  srli         a1, a0, 31
sub_2_j6:         jalr         tp, a2, 848 #jump sub_2 -> sub_5
                  addi         s3, zero, -1 #init loop 1 counter
                  or           a0, s9, s3
                  or           ra, t4, s9
                  srai         ra, s4, 20
                  srai         s5, s5, 14
                  sltiu        tp, s1, 1726
                  slli         a7, ra, 1
                  addi         t5, zero, 4 #init loop 1 limit
                  ori          a6, s11, 186
                  srl          t1, a4, s10
                  srai         a4, s10, 10
sub_2_8_1_t:      ori          s6, a3, 606
                  addi         s0, a1, -1384
                  sltiu        a7, s5, 46
                  slt          ra, t1, s10
                  addi         s3, s3, 9 #update loop 1 counter
                  lui          s2, 939912
                  srli         s0, t0, 15
                  and          a1, a2, a0
                  sub          s0, s9, sp
                  addi         s1, zero, 5 #init loop 0 counter
                  addi         t4, zero, 10 #init loop 0 limit
sub_2_8_0_t:      xori         a4, a0, 728
                  addi         s1, s1, 7 #update loop 0 counter
                  auipc        a4, 333337
                  bltu         s1, t4, sub_2_8_0_t #branch for loop 0
                  srl          gp, tp, s3
                  andi         t0, a4, -307
                  blt          s3, t5, sub_2_8_1_t #branch for loop 1
                  sub          a0, ra, s5
                  addi         t0, zero, 6 #init loop 0 counter
                  sll          s0, a5, t5
                  or           a4, a5, s0
                  lui          t3, 4583
                  srai         a6, a7, 22
                  addi         a2, zero, 5 #init loop 0 limit
                  slti         a0, a7, 1722
sub_2_1_0_t:      sub          t3, a2, ra
                  and          zero, s9, a6
                  xor          t1, s9, s9
                  addi         t0, t0, -3 #update loop 0 counter
                  sltiu        s1, a6, -457
                  sltiu        s6, s5, 1445
                  bgeu         t0, a2, sub_2_1_0_t #branch for loop 0
                  slti         s1, zero, 1850
                  addi         a7, zero, 7 #init loop 1 counter
                  sra          s4, s11, s3
                  sub          s4, a3, t1
                  srai         zero, a2, 29
                  slli         a0, t5, 11
                  addi         s8, zero, -13 #init loop 1 limit
sub_2_5_1_t:      slti         a0, a4, -819
                  addi         a7, a7, -4 #update loop 1 counter
                  srai         sp, s6, 23
                  and          sp, s7, t4
                  xori         a6, t0, 1064
                  addi         s2, zero, 9 #init loop 0 counter
                  xor          s0, t0, a3
                  addi         t1, zero, 17 #init loop 0 limit
                  srl          a0, t2, s11
sub_2_5_0_t:      or           s6, t6, t3
                  xori         t5, s6, 1048
                  addi         s2, s2, 8 #update loop 0 counter
                  sub          t3, s11, t5
                  blt          s2, t1, sub_2_5_0_t #branch for loop 0
                  sub          a0, s5, s1
                  sltiu        s1, a0, -975
                  slti         t3, s6, -2001
                  or           a0, a0, s4
                  sltiu        tp, s0, 591
                  bge          a7, s8, sub_2_5_1_t #branch for loop 1
                  slti         t4, gp, 903
                  addi         s8, zero, 4 #init loop 1 counter
                  addi         t1, zero, 10 #init loop 1 limit
                  xori         t0, t4, -1601
                  srli         s4, s2, 8
sub_2_9_1_t:      or           a0, s7, zero
                  auipc        a5, 111139
                  sltu         a6, t1, s5
                  addi         s8, s8, 6 #update loop 1 counter
                  slti         s7, t3, -1751
                  addi         s11, zero, 6 #init loop 0 counter
                  addi         t3, zero, 6 #init loop 0 limit
                  xori         a1, s6, 1904
sub_2_9_0_t:      ori          gp, s10, 1525
                  sll          sp, t4, s7
                  andi         a3, s9, 1970
                  addi         s11, s11, -3 #update loop 0 counter
                  slli         a5, a3, 11
                  bgeu         s11, t3, sub_2_9_0_t #branch for loop 0
                  andi         sp, a4, 654
                  bltu         s8, t1, sub_2_9_1_t #branch for loop 1
                  xori         a3, s6, 1030
                  addi         ra, zero, 1 #init loop 1 counter
                  srli         s10, s4, 4
                  addi         a7, zero, -5 #init loop 1 limit
sub_2_3_1_t:      xor          s0, gp, t4
                  add          s0, s10, a2
                  addi         ra, ra, -2 #update loop 1 counter
                  or           t0, s2, t2
                  add          t4, a4, a4
                  and          a2, t3, a3
                  addi         s1, zero, 8 #init loop 0 counter
                  srai         s5, ra, 11
                  slli         s10, a3, 22
                  xor          a2, t4, t0
                  addi         s4, zero, 13 #init loop 0 limit
sub_2_3_0_t:      add          s0, s7, s0
                  ori          a2, zero, 1668
                  sll          t1, ra, s2
                  and          a4, a4, s10
                  lui          s3, 678571
                  addi         s1, s1, 8 #update loop 0 counter
                  slti         s3, s11, -38
                  bltu         s1, s4, sub_2_3_0_t #branch for loop 0
                  lui          s11, 302645
                  slli         s7, s10, 24
                  addi         s7, a6, 687
                  bge          ra, a7, sub_2_3_1_t #branch for loop 1
                  ori          a6, s4, -1874
                  addi         a3, zero, 10 #init loop 1 counter
                  addi         a4, zero, 10 #init loop 1 limit
sub_2_11_1_t:     and          zero, a6, s3
                  slti         s7, t3, 553
                  addi         a3, a3, -9 #update loop 1 counter
                  addi         s10, zero, -3 #init loop 0 counter
                  lui          a5, 384210
                  addi         s1, zero, 16 #init loop 0 limit
sub_2_11_0_t:     sub          t4, t4, a4
                  addi         s10, s10, 1 #update loop 0 counter
                  add          s8, a5, t1
                  beq          s10, s1, sub_2_11_0_t #branch for loop 0
                  bgeu         a3, a4, sub_2_11_1_t #branch for loop 1
                  ori          t3, t2, -454
                  addi         s4, zero, -3 #init loop 1 counter
                  sra          s3, s3, a1
                  sltu         s5, a3, s4
                  auipc        a6, 1006716
                  andi         s0, a3, -1261
                  lui          s5, 653664
                  nop
                  auipc        a7, 338498
                  addi         s6, s7, -198
                  addi         a4, zero, 13 #init loop 1 limit
                  nop
                  srai         t5, a5, 16
sub_2_10_1_t:     xor          a3, a3, t5
                  addi         s4, s4, 8 #update loop 1 counter
                  slti         s0, s7, -137
                  slt          s5, a3, a0
                  addi         s8, zero, 6 #init loop 0 counter
                  and          s3, a1, a2
                  add          s2, s5, s0
                  addi         t4, zero, 4 #init loop 0 limit
                  add          t1, t4, a1
sub_2_10_0_t:     auipc        a3, 332202
                  sltu         s5, a3, s0
                  addi         s8, s8, -2 #update loop 0 counter
                  beq          s8, t4, sub_2_10_0_t #branch for loop 0
                  xor          s7, t2, t2
                  beq          s4, a4, sub_2_10_1_t #branch for loop 1
                  sub          zero, s4, s3
                  addi         a5, zero, -4 #init loop 1 counter
                  sub          s5, zero, t6
                  addi         s1, zero, -16 #init loop 1 limit
                  and          tp, s5, gp
sub_2_0_1_t:      sltiu        s4, t2, -252
                  addi         a5, a5, -2 #update loop 1 counter
                  addi         s2, zero, 7 #init loop 0 counter
                  addi         tp, s0, 1101
                  xor          s10, t1, a7
                  addi         s7, zero, 7 #init loop 0 limit
                  andi         ra, s11, 1959
sub_2_0_0_t:      add          gp, s6, s5
                  addi         s2, s2, -6 #update loop 0 counter
                  xori         s4, a6, -1766
                  lui          tp, 355649
                  bgeu         s2, s7, sub_2_0_0_t #branch for loop 0
                  srl          a6, s4, tp
                  bne          a5, s1, sub_2_0_1_t #branch for loop 1
                  andi         a4, a4, 166
                  addi         a6, zero, 7 #init loop 1 counter
                  addi         s11, s9, -547
                  xor          a4, s11, a3
                  lui          s10, 619492
                  xori         s5, a1, -367
                  ori          a0, t0, 1989
                  addi         s3, zero, 5 #init loop 1 limit
                  srl          zero, s0, t3
sub_2_2_1_t:      sub          s4, ra, gp
                  nop
                  addi         a6, a6, -3 #update loop 1 counter
                  addi         s10, s10, -803
                  slli         s5, ra, 1
                  sll          gp, s2, a2
                  addi         s7, zero, 3 #init loop 0 counter
                  addi         a2, zero, -3 #init loop 0 limit
                  sra          s11, a5, s8
                  slli         s1, a5, 14
                  or           s11, s7, a1
sub_2_2_0_t:      ori          s6, zero, -715
                  xori         sp, t4, 1323
                  sll          a3, s11, a3
                  add          a5, a2, s9
                  sltiu        s5, s1, 1802
                  addi         s7, s7, -1 #update loop 0 counter
                  slt          a4, s2, tp
                  lui          sp, 239552
                  sll          zero, t2, t4
                  bne          s7, a2, sub_2_2_0_t #branch for loop 0
                  sra          zero, s10, s2
                  sub          t4, a7, a7
                  slli         sp, s4, 21
                  andi         t4, s7, -1045
                  bgeu         a6, s3, sub_2_2_1_t #branch for loop 1
                  slli         s8, ra, 16
                  add          ra, a6, s5
                  add          t4, s7, s6
                  xor          a4, a1, s11
                  addi         s1, s7, -613
                  slti         s7, s9, 141
                  xori         sp, t2, 850
                  and          s11, s3, a0
                  sub          a7, s1, a5
                  and          s6, zero, a2
                  sltu         t1, a0, t6
                  bltu         a2, a1, 16f
                  andi         t1, t4, -257
                  xori         s6, t0, 879
                  slli         a2, s11, 10
                  beq          s11, s3, 18f
                  bge          s2, a6, 32f
16:               bltu         t1, s8, 21f
                  lui          a0, 488134
18:               lui          s7, 417141
                  bge          t4, s6, 38f
                  or           a3, a0, a6
21:               xor          s2, t2, s3
                  bge          a3, t3, 35f
                  sltu         s5, a6, s8
                  bge          t3, s10, 40f
                  sra          s3, a7, s0
                  add          a3, a6, s0
                  slti         a1, s8, -630
                  or           t3, a6, gp
                  or           s11, gp, a0
                  srai         t4, s6, 5
                  nop
32:               srai         t3, s11, 7
                  srai         a2, a2, 16
                  srl          gp, s2, s9
35:               slti         a5, a4, -1383
                  bgeu         s8, ra, 43f
                  or           s5, t6, s8
38:               sltu         ra, s7, s0
                  sltiu        a7, a2, -967
40:               sub          zero, s0, s11
                  and          a1, a4, s10
                  xor          s11, a0, a5
43:               xori         s0, a6, -1029
                  beq          s10, t3, 45f
45:               addi         s7, s5, 361
                  srl          tp, tp, a4
                  beq          t6, t5, 61f
                  xori         s2, t4, 216
                  ori          s8, sp, 1769
                  srai         a0, t6, 2
                  sra          s6, s10, ra
                  add          sp, t4, a6
                  lui          a1, 163667
                  add          s6, a0, a3
                  addi         t4, s10, 1790
                  sra          t1, zero, t0
                  and          a3, s7, gp
                  sub          s0, a2, t3
                  bne          s10, a7, 71f
                  xor          s7, sp, s0
61:               nop
                  or           s5, ra, a6
                  blt          t6, s5, 69f
                  xori         s5, s0, -1503
                  beq          t5, s2, 81f
                  blt          a2, tp, 71f
                  beq          ra, t3, 76f
                  and          s10, t1, a6
69:               add          t3, a6, s6
                  sltiu        ra, s0, 1831
71:               bne          s3, s7, 73f
                  and          t3, s6, s6
73:               bne          s4, s3, 87f
                  lui          sp, 890186
                  sll          s2, t2, s1
76:               andi         s0, s0, -931
                  beq          s8, a6, 94f
                  bne          t6, s8, 87f
                  srl          ra, tp, a1
                  sltiu        a1, zero, -2000
81:               andi         s8, zero, -533
                  bgeu         sp, a3, 91f
                  add          s8, s11, tp
                  bgeu         s9, t6, 85f
85:               xori         s4, ra, 647
                  beq          a3, s10, 87f
87:               beq          s8, t2, 100f
                  beq          a0, t3, 95f
                  xor          s5, tp, a2
                  srli         ra, tp, 16
91:               srl          a1, t5, ra
                  addi         s11, s8, -166
                  and          s1, sp, a3
94:               ori          a6, ra, 444
95:               sltiu        a4, a0, 1045
                  bne          s6, ra, 102f
                  bltu         t6, a5, 98f
98:               bge          s11, t5, 104f
                  slli         t4, a3, 3
100:              bne          t6, t4, 116f
                  srli         gp, a6, 5
102:              srl          s7, a2, a1
                  nop
104:              or           a3, s1, t0
                  xor          s11, s1, s8
                  or           a1, a1, t2
                  ori          a1, s8, -986
                  or           a6, a5, a5
                  add          ra, s2, a7
                  sll          s6, s8, a7
                  ori          a4, s6, 890
                  bgeu         s5, s10, 126f
                  and          s10, a6, a6
                  sub          ra, a3, a0
                  slt          s5, a1, a3
116:              bltu         gp, a4, 124f
                  addi         a0, s3, -1931
                  sll          s4, t1, t6
                  beq          a2, a0, 128f
                  andi         gp, gp, 1449
                  auipc        s2, 726011
                  sltu         s0, zero, t0
                  bne          gp, a5, 128f
124:              ori          a3, s0, -1749
                  srai         a4, s5, 20
126:              xori         s4, a2, 454
                  sll          s6, s5, a6
128:              sra          a4, t4, t1
                  bgeu         s5, zero, 130f
130:              and          t3, s1, a4
                  nop
                  slt          s6, tp, zero
                  blt          s8, ra, 146f
                  ori          s11, s10, 1365
                  lui          sp, 826264
                  auipc        a2, 523066
                  bltu         s6, s10, 154f
                  bge          a0, s2, 155f
                  slli         t0, s10, 8
                  bltu         s8, t1, 141f
141:              sltu         t1, s4, zero
                  nop
                  bgeu         t2, s1, 151f
                  bltu         tp, a5, 150f
                  sltu         t3, t3, tp
146:              xori         s0, s7, -1268
                  srli         a0, s9, 6
                  andi         s8, t5, 1761
                  bgeu         t1, t3, 150f
150:              and          s5, a4, gp
151:              xori         s3, t1, -92
                  slli         s5, s9, 2
                  slti         s7, a0, -18
154:              sll          s4, s3, a4
155:              sll          s1, s10, s6
                  or           s8, t0, s6
                  andi         s11, t6, -1152
                  sll          s2, a4, t1
                  addi         a7, zero, -10 #init loop 1 counter
                  nop
                  sltiu        s0, s6, -1870
                  srli         t3, a0, 14
                  sll          s11, zero, a7
                  add          t4, a0, s5
                  slti         t0, t3, -830
                  addi         s1, zero, -18 #init loop 1 limit
                  lui          t1, 482897
                  or           a2, a6, s9
                  lui          a0, 950188
sub_2_6_1_t:      xor          s3, s5, s4
                  sltu         a2, s3, sp
                  sra          a6, a5, a3
                  addi         a7, a7, -8 #update loop 1 counter
                  addi         s2, zero, 10 #init loop 0 counter
                  auipc        a0, 224341
                  addi         s8, zero, 12 #init loop 0 limit
sub_2_6_0_t:      add          s3, gp, t4
                  sll          s6, t1, t3
                  addi         s2, s2, 8 #update loop 0 counter
                  srli         s7, a5, 15
                  bltu         s2, s8, sub_2_6_0_t #branch for loop 0
                  xor          a4, tp, s7
                  beq          a7, s1, sub_2_6_1_t #branch for loop 1
                  ori          a1, s4, -972
                  slti         s3, a1, 1392
                  bne          gp, t6, 174f
                  slti         a6, ra, 329
                  and          s11, s7, ra
                  srli         gp, t6, 10
                  bne          tp, s2, 180f
                  ori          a5, t3, 1715
                  sra          s2, s4, t6
                  addi         a7, sp, -1082
                  sltiu        t0, t3, 250
                  slli         s10, s2, 21
                  bgeu         s10, gp, 174f
                  srli         a2, s2, 30
                  blt          a1, a7, 185f
                  slli         a7, s8, 16
174:              slli         s10, t0, 22
                  nop
                  ori          t0, s10, -542
                  and          s5, a7, tp
                  xori         t3, s11, 1498
                  srl          s3, t4, sp
180:              xor          a4, a7, s2
                  beq          a0, s6, 195f
                  and          sp, a4, s7
                  xori         a4, s3, 896
                  lui          a2, 532245
185:              sra          a5, t3, ra
                  sltiu        gp, gp, 971
                  slt          s10, s7, gp
                  bltu         s6, a3, 195f
                  bne          s3, t5, 191f
                  sltiu        a5, gp, 987
191:              bltu         s5, tp, 200f
                  add          sp, t4, s7
                  xori         s10, s4, -1647
                  beq          t6, s3, 200f
195:              sub          a4, t1, a0
                  and          s6, a3, ra
                  sub          a4, s7, t2
                  slt          s7, s11, s9
                  srli         a5, s1, 15
200:              bne          a4, a1, 205f
                  srl          s11, s11, s1
                  xori         a4, t6, -1990
                  sltu         s10, tp, s0
                  bne          t6, s10, 218f
205:              xori         s0, tp, -855
                  lui          a0, 144394
                  lui          sp, 1030046
                  ori          a3, a2, 199
                  addi         s2, t6, 957
                  bge          zero, s6, 217f
                  sub          a3, tp, s0
                  sra          sp, s4, s4
                  andi         t0, a1, 238
                  bltu         zero, t6, 230f
                  lui          s11, 410640
                  xori         a6, t5, -410
217:              addi         sp, t4, -270
218:              sltu         gp, t3, t5
                  xor          s1, a6, s8
                  bgeu         a5, t4, 221f
221:              blt          t4, s7, 230f
                  slt          a4, t4, a7
                  or           zero, t4, t6
                  addi         a2, zero, 8 #init loop 0 counter
                  sll          a5, t5, s2
                  lui          t1, 201692
                  nop
                  slt          sp, tp, a1
                  xor          s1, t5, s1
                  xor          s11, s8, a3
                  addi         a3, zero, 17 #init loop 0 limit
                  srli         s4, t1, 30
                  auipc        s2, 109978
sub_2_4_0_t:      and          s11, s5, s8
                  srai         t4, s8, 7
                  addi         a2, a2, 4 #update loop 0 counter
                  or           s2, s1, s4
                  addi         a6, a2, 1878
                  sll          t1, s10, a1
                  xori         s11, t4, -1292
                  lui          a1, 363083
                  sltiu        s8, zero, -1787
                  blt          a2, a3, sub_2_4_0_t #branch for loop 0
                  nop
                  lui          a7, 886467
                  auipc        t4, 78144
                  sll          s7, tp, s4
                  bge          s11, gp, 233f
                  auipc        zero, 389924
                  sub          s5, s8, s11
230:              bltu         a7, s7, 249f
                  nop
                  nop
233:              bgeu         t1, s2, 245f
                  bltu         a5, gp, 240f
                  add          gp, t0, a3
                  bgeu         s9, s7, 252f
                  slt          a6, t5, gp
                  nop
                  slli         zero, s6, 6
240:              bltu         a1, s7, 247f
                  sltiu        a7, s0, 1733
                  addi         s4, s10, -1531
                  sra          a5, s8, s3
                  bne          s11, a3, 258f
245:              srl          s8, ra, s0
                  srai         a0, s3, 3
247:              andi         a6, s2, -932
                  add          a2, s6, t3
249:              sll          tp, s10, t4
                  xori         s5, a3, -940
                  bltu         a0, s2, 265f
252:              andi         zero, a6, 157
                  srai         s1, s4, 3
                  sltiu        a6, a0, 1587
                  and          t4, a6, s7
                  add          t0, zero, a4
                  bgeu         zero, s1, 263f
258:              sltu         a5, a7, sp
                  sltu         t1, s1, ra
                  beq          t6, a3, 265f
                  or           s5, a4, s1
                  or           s2, t5, s1
263:              bge          gp, ra, 267f
                  bne          gp, a1, 280f
265:              bltu         s11, a0, 267f
                  sll          t0, a6, s10
267:              srai         a6, t4, 13
                  slli         s8, s4, 13
                  srl          s4, t0, t6
                  add          s7, s1, s11
                  slli         t4, t3, 3
                  or           s8, t2, sp
                  bltu         s5, a2, 279f
                  sltiu        a0, a1, 1378
                  xor          s10, a4, t0
                  beq          a1, s10, 277f
277:              bne          s10, a5, 291f
                  bltu         ra, s9, 291f
279:              and          tp, tp, s5
280:              lui          a5, 1019497
                  beq          s11, s3, 289f
                  slti         s0, a5, 1001
                  beq          t2, a1, 289f
                  bge          a5, t6, 297f
                  slt          s11, s0, a2
                  sltiu        s8, ra, 71
                  srli         sp, a1, 9
                  ori          s10, t2, 380
289:              slti         t0, s11, 572
                  ori          tp, tp, -1826
291:              lui          tp, 175955
                  addi         t5, ra, 1164
                  sub          a7, s8, s0
                  sltiu        s4, a1, -301
                  xori         sp, s1, -2013
                  xori         t5, a1, -1363
297:              nop
                  add          a3, t2, s0
                  bge          s4, zero, 311f
                  slli         t1, tp, 5
                  add          s2, a7, t5
                  nop
                  blt          s10, t6, 304f
304:              lui          t3, 441976
                  sltiu        s8, a3, -1857
                  xori         s11, s4, -1637
                  slli         t3, a3, 22
                  nop
                  and          s5, a1, s0
                  ori          s3, a2, -1894
311:              blt          t1, tp, 312f
312:              auipc        s1, 523988
                  sub          s7, t1, gp
                  blt          a0, s5, 323f
                  add          a7, t1, ra
                  addi         a4, a3, 667
                  bne          a6, s0, 334f
                  ori          s4, s6, 1162
                  andi         a6, a7, -796
                  ori          s6, s1, -897
                  xori         s8, a1, -552
                  sltu         s6, s3, s9
323:              sltiu        ra, s6, 1635
                  slli         s6, t1, 13
                  addi         s8, a4, 760
                  sltiu        a7, a5, -308
                  slli         s10, a7, 23
                  bltu         s0, a5, 344f
                  bltu         t6, s9, 345f
                  srai         a5, a6, 22
                  srli         s2, a6, 28
                  ori          a1, t2, 832
                  bltu         a7, s10, 340f
334:              slt          a1, t4, gp
                  andi         s7, s6, 144
                  nop
                  addi         s6, s2, 1278
                  xori         s2, sp, -2027
                  srl          a5, s4, a5
340:              add          a0, t1, t4
                  slli         a2, t1, 24
                  beq          t1, a6, 351f
                  xori         s1, t0, -507
344:              slli         s6, t3, 18
345:              sltu         gp, t2, ra
                  sub          a6, a0, ra
                  and          t5, s8, ra
                  slli         s2, a3, 4
                  bge          s0, t2, 350f
350:              bge          s6, s6, 359f
351:              ori          s10, tp, -256
                  or           s8, t2, s2
                  xori         a7, s3, -1211
                  sra          a7, s9, s10
                  addi         tp, a5, 770
                  sltu         s6, s6, t0
                  or           s1, t5, a2
                  beq          sp, gp, 377f
359:              blt          zero, a5, 364f
                  sll          s0, a2, t3
                  addi         t3, s4, 2027
                  xor          a3, s4, s6
                  andi         t1, a2, 189
364:              sltiu        s2, s4, -40
                  slli         s2, s7, 7
                  auipc        s4, 316725
                  addi         a4, a2, 62
                  srai         s2, t1, 22
                  lui          a7, 939887
                  blt          a2, ra, 376f
                  ori          a5, t2, 1395
                  lui          s2, 378691
                  ori          a5, sp, 1049
                  xor          a4, s10, t2
                  srai         s1, t3, 24
376:              ori          s5, a3, -1667
377:              bge          t3, t1, 394f
                  xor          tp, a2, s0
                  bne          a4, a7, 398f
                  sll          sp, s1, sp
                  or           a4, a5, t6
                  lui          a5, 68523
                  xor          s1, s2, a2
                  xor          a2, s3, s5
                  bge          s6, s9, 391f
                  sltiu        a4, s10, 1418
                  srai         s8, a1, 24
                  srai         a6, t3, 16
                  sltiu        a4, t0, -561
                  bne          tp, s3, 403f
391:              nop
                  bltu         a0, a0, 404f
                  bge          t6, t0, 409f
394:              srli         a5, a4, 17
                  bge          a4, s9, 400f
                  or           a5, t3, a1
                  xori         s4, sp, 784
398:              sub          zero, s0, a7
                  slli         zero, ra, 15
400:              sll          t1, a4, s9
                  and          t3, s8, s2
                  slli         s0, a0, 24
403:              sltu         s0, zero, a4
404:              slli         t1, s4, 6
                  add          s6, s3, s3
                  xor          t0, t4, a4
                  bge          t0, ra, 414f
                  srl          t5, s5, t0
409:              beq          a0, t2, 413f
                  lui          a6, 703969
                  add          t3, ra, s11
                  andi         t5, a6, 1322
413:              sra          t4, ra, t0
414:              blt          s4, a6, 420f
                  slti         s8, ra, -218
                  xori         a0, t5, -697
                  blt          s10, s6, 425f
                  sra          a3, t2, s9
                  bne          s5, s6, 433f
420:              auipc        a4, 181795
                  blt          t5, sp, 422f
422:              slli         s5, s5, 13
                  blt          ra, s11, 432f
                  sra          s4, a6, gp
425:              xor          s8, t3, a2
                  sltu         a3, ra, a3
                  nop
                  sub          t1, t5, s1
                  auipc        s7, 490419
                  andi         s1, a5, 510
                  beq          a1, t1, 447f
432:              beq          tp, s1, 446f
433:              andi         s11, t5, -338
                  sll          s6, t1, s2
                  slli         t1, ra, 26
                  bne          s4, gp, 438f
                  slti         gp, s10, 670
438:              srl          s3, a7, a7
                  bne          s7, s10, 445f
                  blt          tp, s7, 441f
441:              xor          a3, s2, ra
                  sub          s10, t5, a0
                  nop
                  slli         s5, zero, 8
445:              bgeu         gp, t0, 461f
446:              xori         a4, a7, -1408
447:              and          a3, a0, a1
                  lui          s4, 961808
                  bne          gp, s0, 450f
450:              addi         s3, a6, 93
                  xori         a6, zero, 1041
                  sltiu        s2, t3, 21
                  srli         a2, t2, 31
                  sltiu        a0, t5, -1129
                  bgeu         sp, sp, 461f
                  slt          s0, s4, s10
                  lui          t5, 575403
                  lui          t5, 666477
                  srli         s5, s3, 27
                  nop
461:              ori          t0, a1, 771
                  slli         zero, s9, 3
                  srl          s4, s6, s6
                  bgeu         t3, t4, 465f
465:              add          tp, s10, a1
                  bltu         t6, s9, 475f
                  slli         ra, a0, 14
                  lui          a1, 930588
                  srli         s8, t4, 27
                  sltiu        a5, s4, -1056
                  sra          s10, s2, s1
                  bge          a4, s0, 486f
                  lui          t1, 759702
                  ori          a5, s6, -1876
475:              xori         s5, s0, 1081
                  slti         s4, sp, 357
                  sra          t4, t5, t3
                  andi         t1, a4, -1652
                  bgeu         sp, s2, 484f
                  lui          ra, 562101
                  sra          t3, a1, gp
                  srli         s4, s3, 12
                  and          sp, a4, s3
484:              blt          a5, a7, 497f
                  lui          s8, 794523
486:              or           a3, a7, s8
                  andi         a1, gp, -477
                  beq          s11, t2, 505f
                  and          tp, s0, s6
                  bge          s3, zero, 499f
                  bge          s9, s3, 508f
                  sub          s2, t0, s9
                  srai         a1, s6, 18
                  bgeu         t0, sp, 501f
                  sub          s7, t5, s8
                  sra          s3, a5, a3
497:              bge          a3, t2, 502f
                  xor          t4, t3, t0
499:              lui          a5, 826872
                  ori          s7, a2, 194
501:              nop
502:              sra          s8, s4, a2
                  or           a3, gp, a7
                  addi         a7, s0, -244
505:              andi         s3, a1, -1622
                  srai         s10, s3, 12
                  nop
508:              bge          s11, s3, 514f
                  srl          s7, gp, a3
                  bgeu         s6, a0, 519f
                  sub          s0, t0, s9
                  and          s1, t6, s5
                  bne          t2, a6, 514f
514:              ori          t5, t0, -1767
                  sub          s1, s8, a3
                  nop
                  sltu         t4, a2, t4
                  blt          sp, a6, 532f
519:              ori          sp, t3, -1506
                  xori         s11, a7, 866
                  auipc        s4, 979355
                  andi         a2, gp, -1064
                  andi         s2, s4, -39
                  xori         s6, a4, 1314
                  bgeu         s0, t6, 531f
                  slli         s2, s3, 16
                  slt          s6, zero, t3
                  xor          t3, a0, t1
                  xor          a2, s10, s1
                  xor          s3, t3, s4
531:              beq          s8, s5, 544f
532:              addi         s4, t6, 381
                  xor          sp, zero, s2
                  sll          s7, s1, gp
                  blt          gp, t5, 542f
                  addi         t0, tp, -2048
                  slt          a3, zero, a0
                  beq          s1, a7, 540f
                  addi         s6, a3, -1981
540:              bne          t5, a7, 553f
                  addi         a5, s7, -1160
542:              slli         t0, tp, 19
                  sltu         ra, t1, a5
544:              bltu         s8, a3, 556f
                  blt          a4, t2, 554f
                  srli         a0, gp, 27
                  ori          s7, a4, 1049
                  slt          a2, t1, s11
                  addi         tp, zero, -4 #init loop 1 counter
                  addi         s2, s5, -1608
                  addi         s0, zero, 8 #init loop 1 limit
                  srl          s1, s1, sp
sub_2_7_1_t:      andi         t3, t1, 1450
                  sltu         s3, zero, a1
                  addi         tp, tp, 8 #update loop 1 counter
                  xori         s3, zero, -780
                  sltiu        t3, a1, -2019
                  slt          s7, t1, s4
                  or           s11, t4, zero
                  sra          a3, a0, sp
                  addi         sp, zero, 4 #init loop 0 counter
                  auipc        a2, 145565
                  sltu         s4, zero, s9
                  addi         a0, zero, 8 #init loop 0 limit
                  and          a1, a3, a4
                  sra          a4, s8, t3
                  andi         s3, a0, 707
                  ori          zero, t5, 351
                  xor          a6, s2, s0
sub_2_7_0_t:      andi         a2, a3, -332
                  andi         a4, gp, 425
                  nop
                  sll          s10, s2, t4
                  addi         sp, sp, 9 #update loop 0 counter
                  blt          sp, a0, sub_2_7_0_t #branch for loop 0
                  xori         s7, t1, 410
                  and          a5, a0, tp
                  auipc        s7, 287533
                  srai         s11, sp, 18
                  srl          t0, a6, gp
                  addi         a4, s10, 699
                  blt          tp, s0, sub_2_7_1_t #branch for loop 1
                  slti         a6, a1, 1591
                  andi         a1, t6, -1326
                  auipc        gp, 862554
                  nop
                  sltu         s2, s7, a7
553:              sra          s7, t3, s6
554:              lui          a0, 157150
                  srl          s1, a0, tp
556:              add          zero, s7, s7
                  slti         s5, a0, 762
                  beq          a5, tp, 575f
                  xori         s1, gp, -1647
                  xori         s8, s7, -1393
                  bne          t4, s3, 562f
562:              ori          s1, gp, -1448
                  slt          a3, s0, a2
                  bne          ra, s10, 580f
                  addi         t3, a3, 313
                  addi         a4, a6, -1624
                  lui          a3, 316867
                  ori          tp, t1, -934
                  sltiu        s6, a1, 2023
                  addi         s10, t5, 1182
                  xori         tp, s1, 1420
                  beq          ra, t4, 578f
                  bge          a0, s2, 587f
                  srli         gp, s4, 2
575:              slt          s11, a0, s10
                  srl          s2, s7, s8
                  lui          a5, 143125
578:              nop
                  srli         s11, s4, 26
580:              sltiu        s4, t0, 1357
                  sub          a7, s0, t5
                  srai         t0, s9, 13
                  sra          t0, s3, ra
                  slti         a2, a7, 1412
                  andi         s6, s8, -743
                  xor          t1, a4, s10
587:              addi         t0, a4, 1815
                  sltu         s10, s4, a5
                  auipc        t4, 434600
                  beq          t3, sp, 606f
                  auipc        s3, 305342
                  and          t0, s1, ra
                  srai         sp, tp, 1
                  and          s3, gp, t0
                  lui          a4, 144232
                  slli         a0, a0, 19
                  xor          t4, s5, sp
                  nop
                  bltu         s2, a0, 608f
                  sltu         s8, s0, t5
                  sub          s5, tp, s10
                  blt          a6, sp, 609f
                  or           s8, a4, a1
                  srli         a7, s4, 31
                  sltu         t4, ra, s9
606:              and          t0, a6, a6
                  nop
608:              sll          ra, a0, t5
609:              auipc        s0, 522783
                  lui          a1, 457874
                  bgeu         t5, s3, 625f
                  blt          t4, t5, 617f
                  ori          a4, a1, -732
                  slt          a4, s9, t4
                  blt          s10, t6, 616f
616:              bne          a0, gp, 629f
617:              sll          a1, t2, t6
                  srli         gp, s1, 25
                  addi         s2, t4, 1895
                  blt          s11, t5, 628f
                  xori         tp, a7, -2002
                  slti         sp, a0, 1973
                  bltu         s1, a4, 624f
624:              or           t5, t3, ra
625:              addi         t0, s8, 1396
                  bltu         s7, s10, 629f
                  slti         a7, a6, -1590
628:              beq          s1, t3, 629f
629:              sll          s7, t3, a2
                  nop
                  or           a1, a1, a7
                  slt          s0, a3, a5
                  lw           tp, 4(t6)
                  ori          t3, a3, -1370
                  addi         t6, t6, 40
                  sltiu        s4, a4, 1174
952:              addi x3, x4, 0
952:              jalr x3, x3, 0
sub_3:            sub          a6, a5, s8
                  or           s8, s7, zero
                  bgeu         s4, t1, sub_3_stack_p
sub_3_stack_p:    addi         t6, t6, -48
                  ori          a0, t6, -868
                  sw           tp, 4(t6)
                  slt          ra, s11, s4
                  sub          a7, s3, t2
                  addi         a6, zero, 10 #init loop 1 counter
                  andi         t1, a2, 1258
                  sltu         s4, t2, t5
                  srli         a5, t2, 2
                  addi         t5, zero, 7 #init loop 1 limit
                  sltu         a2, t0, s10
                  nop
                  and          a1, a3, s9
sub_3_1_1_t:      or           s2, t1, s5
                  slli         a2, a3, 31
                  slli         tp, tp, 14
                  addi         a6, a6, -6 #update loop 1 counter
                  sltu         s6, sp, s7
                  addi         s7, zero, 9 #init loop 0 counter
                  andi         s2, s11, 887
                  ori          s0, s5, -1332
                  auipc        zero, 663025
                  addi         a3, zero, 7 #init loop 0 limit
                  srli         t3, sp, 16
sub_3_1_0_t:      sub          t0, a4, a5
                  addi         s7, s7, -4 #update loop 0 counter
                  xori         a5, gp, 729
                  bgeu         s7, a3, sub_3_1_0_t #branch for loop 0
                  xor          s1, s0, s7
                  andi         s1, a0, 973
                  srli         s3, s3, 15
                  lui          s1, 151837
                  bgeu         a6, t5, sub_3_1_1_t #branch for loop 1
                  slti         a0, t0, 404
                  addi         gp, zero, -2 #init loop 1 counter
                  addi         t4, zero, -8 #init loop 1 limit
sub_3_6_1_t:      addi         a0, s4, 1806
                  addi         gp, gp, -5 #update loop 1 counter
                  addi         s0, s2, 1126
                  addi         s3, zero, -10 #init loop 0 counter
                  addi         a5, zero, 0 #init loop 0 limit
sub_3_6_0_t:      and          s0, a0, s1
                  addi         s3, s3, 10 #update loop 0 counter
                  add          t0, s8, zero
                  beq          s3, a5, sub_3_6_0_t #branch for loop 0
                  bge          gp, t4, sub_3_6_1_t #branch for loop 1
                  auipc        t3, 827233
                  addi         a3, zero, 7 #init loop 0 counter
                  sub          s11, s8, a2
                  auipc        a6, 23057
                  addi         s2, zero, 6 #init loop 0 limit
                  sltiu        a1, s2, 1958
                  sub          s10, t2, s2
sub_3_4_0_t:      xor          t5, s5, a1
                  addi         a3, a3, -3 #update loop 0 counter
                  andi         s4, a6, 601
                  sll          s6, tp, s4
                  bgeu         a3, s2, sub_3_4_0_t #branch for loop 0
                  xori         s4, t3, 77
                  addi         s0, zero, 10 #init loop 0 counter
                  add          s6, s2, a0
                  srli         a4, gp, 1
                  sltiu        a3, s1, -1386
                  ori          a2, t6, -1112
                  srl          sp, sp, s1
                  and          s10, s10, s0
                  or           sp, s8, s7
                  sltiu        a4, s1, 519
                  auipc        s10, 754377
                  or           tp, a0, t1
                  slli         t1, t1, 28
                  sll          t1, s2, s9
                  sltiu        ra, a0, 1679
                  addi         t0, zero, 10 #init loop 0 limit
                  addi         s1, s8, -1081
sub_3_2_0_t:      nop
                  sltiu        zero, s9, 334
                  slt          t3, t4, tp
                  add          s4, t2, gp
                  addi         a0, a6, -1613
                  sltu         a5, s8, s7
                  or           zero, s7, a3
                  addi         s0, s0, -9 #update loop 0 counter
                  bgeu         s0, t0, sub_3_2_0_t #branch for loop 0
                  and          tp, s10, a7
                  addi         sp, zero, 8 #init loop 0 counter
                  and          a1, ra, a4
                  addi         s6, zero, 6 #init loop 0 limit
sub_3_12_0_t:     ori          s4, s0, 685
                  addi         sp, sp, -2 #update loop 0 counter
                  slli         t0, t4, 28
                  nop
                  slt          a4, t6, s11
                  bne          sp, s6, sub_3_12_0_t #branch for loop 0
                  lui          zero, 319520
                  addi         a0, zero, -7 #init loop 1 counter
                  slti         s2, t4, -370
                  xor          a1, a3, t3
                  addi         s6, zero, -17 #init loop 1 limit
sub_3_8_1_t:      and          s1, a5, t3
                  and          s4, sp, a3
                  slti         gp, s0, -372
                  addi         a0, a0, -7 #update loop 1 counter
                  and          a7, s0, sp
                  addi         a2, zero, -6 #init loop 0 counter
                  andi         t0, t6, -913
                  nop
                  addi         ra, zero, 18 #init loop 0 limit
                  sra          t4, s1, sp
sub_3_8_0_t:      addi         s3, s9, 1871
                  add          a7, t3, gp
                  addi         a2, a2, 8 #update loop 0 counter
                  addi         s2, t5, 1235
                  srl          sp, s7, a1
                  srai         a3, tp, 13
                  slt          a3, s3, a7
                  beq          a2, ra, sub_3_8_0_t #branch for loop 0
                  add          s5, a0, t4
                  add          t0, s3, s5
                  srl          t5, ra, a7
                  slli         s8, a0, 23
                  bge          a0, s6, sub_3_8_1_t #branch for loop 1
                  srli         s8, ra, 4
                  addi         ra, zero, 3 #init loop 0 counter
                  xor          t4, a0, t2
                  or           s11, s10, s1
                  xor          s1, s8, a4
                  sub          t0, s7, a3
                  addi         s2, zero, -7 #init loop 0 limit
                  sltu         gp, s1, s2
                  slt          s8, zero, t3
sub_3_9_0_t:      nop
                  add          t5, s6, t6
                  xor          zero, t3, t1
                  sltiu        a0, s3, -954
                  srli         t3, s11, 17
                  sra          s10, s5, s5
                  addi         ra, ra, -10 #update loop 0 counter
                  sub          t3, t5, a2
                  auipc        s4, 960311
                  srl          s5, s3, s3
                  sra          t4, s5, ra
                  sra          a5, a3, zero
                  beq          ra, s2, sub_3_9_0_t #branch for loop 0
                  srl          gp, t6, a2
                  addi         s2, zero, 3 #init loop 0 counter
                  auipc        a7, 359152
                  lui          a7, 533965
                  sltu         s0, s0, t5
                  or           s1, a4, tp
                  xori         a7, sp, 607
                  addi         ra, zero, 6 #init loop 0 limit
                  slli         a3, a5, 25
sub_3_0_0_t:      slt          zero, s1, a0
                  xori         a0, s7, -427
                  lui          sp, 711809
                  addi         s2, s2, 9 #update loop 0 counter
                  xor          a4, a4, a4
                  sll          s8, zero, s2
                  sltu         a3, s7, s10
                  slti         s6, s0, -2025
                  bltu         s2, ra, sub_3_0_0_t #branch for loop 0
                  addi         s11, s4, -1034
                  addi         gp, zero, 6 #init loop 1 counter
                  sltiu        s7, s7, 2038
                  nop
                  addi         sp, tp, -1544
                  sltu         s6, s8, s9
                  sll          s7, ra, a6
                  addi         s11, t1, -1224
                  sltiu        s2, t4, -880
                  srl          a3, ra, zero
                  addi         s5, zero, -18 #init loop 1 limit
sub_3_5_1_t:      xori         s10, s10, -1702
                  addi         gp, gp, -5 #update loop 1 counter
                  srl          sp, s4, s10
                  slti         tp, a4, -279
                  addi         a3, ra, -623
                  sltiu        s11, a0, 783
                  ori          sp, t4, -273
                  srli         s6, t2, 23
                  addi         s0, zero, -8 #init loop 0 counter
                  srli         a5, t1, 10
                  sll          t5, a5, t1
                  addi         s2, zero, 1788
                  addi         a1, zero, -13 #init loop 0 limit
                  sltu         a4, s9, s6
                  xori         a7, a6, -1066
sub_3_5_0_t:      slt          s3, a0, a1
                  addi         s0, s0, -7 #update loop 0 counter
                  slti         a7, t3, -625
                  sra          a0, a2, s0
                  bge          s0, a1, sub_3_5_0_t #branch for loop 0
                  sub          s6, a1, t5
                  ori          s10, s4, -2024
                  bge          gp, s5, sub_3_5_1_t #branch for loop 1
                  sub          s1, s11, t1
                  addi         sp, zero, 6 #init loop 1 counter
                  nop
                  addi         a2, zero, -14 #init loop 1 limit
                  auipc        a6, 205674
sub_3_3_1_t:      ori          t5, a1, 1388
                  andi         a1, t0, 1275
                  addi         sp, sp, -4 #update loop 1 counter
                  addi         s8, zero, 9 #init loop 0 counter
                  addi         s4, zero, -15 #init loop 0 limit
                  andi         t3, s9, -145
                  srli         t5, zero, 26
sub_3_3_0_t:      sltu         s7, a1, a5
                  addi         s8, s8, -3 #update loop 0 counter
                  and          s0, a5, sp
                  or           a6, s1, s2
                  beq          s8, s4, sub_3_3_0_t #branch for loop 0
                  beq          sp, a2, sub_3_3_1_t #branch for loop 1
                  srli         a0, t6, 1
                  addi         t4, zero, 9 #init loop 1 counter
                  ori          t5, a5, -147
                  addi         a4, zero, 9 #init loop 1 limit
sub_3_7_1_t:      or           s10, sp, a4
                  srli         a5, t6, 19
                  addi         t4, t4, -7 #update loop 1 counter
                  andi         gp, t2, -1019
                  sltiu        a3, t3, 1424
                  addi         s0, zero, 8 #init loop 0 counter
                  addi         s5, zero, 8 #init loop 0 limit
                  sltiu        s8, tp, -1047
                  sll          s4, t2, a3
                  sub          a0, s9, t3
                  nop
                  andi         s2, t1, -833
                  slti         s2, t5, 1966
                  and          t0, t2, s10
sub_3_7_0_t:      or           a0, a1, ra
                  or           a5, t0, s7
                  xori         tp, s6, -1028
                  srl          zero, sp, s2
                  xori         s7, s7, -1797
                  addi         s0, s0, -6 #update loop 0 counter
                  sub          a1, t4, a4
                  bgeu         s0, s5, sub_3_7_0_t #branch for loop 0
                  sltu         s7, t4, tp
                  slt          s4, t0, t3
                  lui          t3, 85167
                  slti         s11, t0, 748
                  add          t0, sp, a2
                  xori         s10, s10, 1616
                  bgeu         t4, a4, sub_3_7_1_t #branch for loop 1
                  slt          s4, zero, a7
                  sll          a4, a3, a2
                  slli         gp, t5, 8
                  andi         s11, a4, 1125
                  bgeu         s1, s5, 12f
                  addi         t1, s4, -1954
                  srl          s11, t6, t6
                  blt          a1, tp, 25f
                  srli         zero, s0, 13
                  slli         t1, t4, 24
                  sltiu        s7, a2, 1593
                  sltiu        s10, s6, -575
                  bltu         a1, a3, 25f
12:               sltiu        sp, s1, 1421
                  srl          a5, a3, s3
                  sub          a5, s11, s6
                  lui          a7, 751382
                  nop
                  sub          s10, s2, t0
                  xor          s4, a3, s4
                  nop
                  add          s4, a2, t0
                  xor          s2, a2, tp
                  addi         sp, s2, 741
                  slt          s5, t2, s11
                  and          zero, s9, s3
25:               add          s2, tp, s1
                  slli         t4, s6, 14
                  add          t1, a7, t5
                  bgeu         ra, sp, 39f
                  sll          t0, t3, s0
                  bgeu         s4, s3, 35f
                  nop
                  bltu         s8, s4, 44f
                  slti         s11, a7, -1173
                  slt          s4, s6, a1
35:               sltiu        a1, t4, -823
                  sub          s6, s9, s7
                  srli         zero, t1, 26
                  auipc        s10, 422358
39:               slli         a3, a3, 30
                  blt          a3, t0, 41f
41:               sltu         t0, s7, gp
                  and          t5, s4, gp
                  slti         tp, tp, -1665
44:               sra          t1, s5, s1
                  auipc        a7, 380334
                  xor          gp, a1, tp
                  slt          s11, s9, a1
                  beq          a2, t1, 62f
                  nop
                  srai         t0, a3, 28
                  xori         s7, zero, -359
                  sltu         a7, zero, t0
                  bltu         s3, s5, 66f
                  xori         a0, a4, -266
                  andi         s7, gp, -1078
                  srai         s2, t3, 23
                  xor          a1, t5, s10
                  sltiu        s6, gp, -1681
                  srl          t5, s11, t0
                  beq          s9, s7, 73f
                  xori         a3, gp, -684
62:               lui          tp, 1003021
                  or           s10, gp, t3
                  xori         s1, a5, 1768
                  bne          s6, a3, 66f
66:               and          s8, s2, zero
                  auipc        a5, 846641
                  bne          a2, a1, 88f
                  slli         s3, s1, 15
                  addi         s5, s4, 208
                  srai         a4, s4, 9
                  slti         s6, s5, 1348
73:               bge          t1, a4, 88f
                  sub          t1, s0, a6
                  sltiu        zero, s11, 435
                  blt          a2, t2, 79f
                  slt          ra, a4, t4
                  blt          t0, t0, 84f
79:               and          a5, s7, tp
                  sltiu        s3, s4, -242
                  bne          a4, a3, 93f
                  sltiu        s2, a6, 1652
                  bgeu         a5, s9, 98f
84:               bgeu         a4, a3, 91f
                  nop
                  slti         s11, gp, -1426
                  and          s3, s3, ra
88:               sltu         t1, zero, zero
                  addi         t0, a2, 166
                  sltu         a3, gp, t4
91:               sll          s3, a0, t3
                  add          t4, s7, s9
93:               xor          s10, a3, s8
                  srai         a5, s1, 5
                  beq          t4, t6, 110f
                  slli         s11, t3, 4
                  srli         t0, s8, 10
98:               slti         a4, sp, -327
                  or           t5, gp, t5
                  auipc        gp, 491649
                  srai         a3, a7, 19
                  slt          t0, s11, a4
                  bltu         t0, a6, 107f
                  or           t0, tp, tp
                  bge          a2, s7, 120f
                  bge          ra, t0, 113f
107:              srl          gp, s8, s7
                  xori         a3, a5, 788
                  addi         a4, tp, -2014
110:              slti         t3, t6, 881
                  lui          a3, 456760
                  sltiu        s2, tp, 791
113:              srl          sp, a5, s0
                  ori          zero, s3, 1714
                  addi         t5, s4, 64
                  nop
                  nop
                  slt          gp, t3, t2
                  and          t5, t2, t1
120:              sub          s0, a4, ra
                  xori         tp, a2, 893
                  xor          gp, a5, s0
                  sra          a5, a6, t1
                  sra          s11, tp, s10
                  srai         tp, zero, 13
                  nop
                  andi         t4, tp, 2008
                  and          t0, t2, s0
                  srl          t3, a0, s6
                  addi         zero, s5, 1873
                  sltu         t3, a1, a7
                  slti         t4, ra, -1189
                  blt          s7, s1, 147f
                  andi         t0, tp, -1472
                  auipc        t1, 97259
                  addi         s10, tp, 1527
                  bltu         a1, s8, 147f
                  bge          a4, s8, 148f
                  beq          a0, a5, 152f
                  addi         a0, zero, -7 #init loop 1 counter
                  srl          t3, s6, s5
                  xori         a1, t6, 1475
                  addi         t5, zero, 13 #init loop 1 limit
                  slli         gp, a1, 15
sub_3_10_1_t:     slti         s5, t5, 975
                  add          a7, s4, s4
                  slt          t1, s11, t1
                  addi         a0, a0, 9 #update loop 1 counter
                  addi         tp, zero, -3 #init loop 0 counter
                  addi         s10, zero, 16 #init loop 0 limit
                  sll          t4, a0, a6
                  sltiu        s2, a2, -579
sub_3_10_0_t:     addi         s5, ra, 773
                  slli         s7, a6, 13
                  addi         tp, tp, 9 #update loop 0 counter
                  bltu         tp, s10, sub_3_10_0_t #branch for loop 0
                  slli         a4, a6, 30
                  bltu         a0, t5, sub_3_10_1_t #branch for loop 1
                  sub          a6, t3, t2
                  and          gp, a6, a4
                  and          tp, t4, t4
                  srai         zero, s9, 26
                  xori         ra, a6, 1044
                  add          s10, sp, s2
                  slti         s4, s9, -1586
                  xor          t3, s9, zero
147:              beq          a3, tp, 167f
148:              sltiu        ra, s8, -364
                  blt          t1, t0, 152f
                  sra          ra, a0, a2
                  sra          a4, t0, sp
152:              xor          a3, s11, s3
                  slt          t0, s9, a2
                  blt          t3, a1, 171f
                  slti         t4, s1, 475
                  xor          s10, t4, s3
                  sltu         s0, t5, a7
                  bgeu         s9, t2, 167f
                  and          ra, ra, t0
                  addi         s4, s6, -327
                  and          t3, t0, s10
                  and          s11, t1, zero
                  slti         s10, t6, -1119
                  nop
                  bne          t6, a6, 178f
                  sltu         s0, a5, a7
167:              sltiu        s8, s4, -213
                  srl          s11, a5, zero
                  or           s11, t2, s11
                  srli         ra, t6, 25
171:              slt          a5, t6, t1
                  sra          a7, zero, a0
                  auipc        a0, 605201
                  beq          s4, t6, 179f
                  nop
                  nop
                  srl          t0, a0, t3
178:              sub          s6, s9, s5
179:              bge          s4, s1, 191f
                  sltiu        s1, t2, -673
                  beq          s5, t0, 182f
182:              and          ra, s6, t5
                  xori         sp, s11, -1552
                  beq          a4, a4, 198f
                  srli         a4, a6, 18
                  sub          t1, s1, t1
                  nop
                  ori          tp, a2, -2009
                  xori         ra, s5, -433
                  sll          a6, a7, t6
191:              slti         s11, a0, 141
                  add          t0, s3, s3
                  sra          s4, s11, sp
                  bge          t0, t3, 204f
                  or           s10, t1, a5
                  sltiu        s3, s1, -1272
                  andi         a7, a0, -1933
198:              srl          a2, t1, s6
                  xor          a4, t4, t5
                  sltu         a6, s1, s6
                  nop
                  add          s8, t2, t2
                  and          t4, a7, s3
204:              beq          t3, s10, 223f
                  and          a2, sp, s10
                  slli         s1, t3, 21
                  slli         a5, s2, 29
                  srli         s11, s9, 8
                  lui          t5, 1043770
                  xori         t1, t0, -148
                  addi         s10, s7, 1993
                  ori          s2, t1, -1006
                  lui          t1, 374584
                  srai         t4, t4, 25
                  addi         a2, zero, 9 #init loop 0 counter
                  addi         a1, zero, 6 #init loop 0 limit
sub_3_11_0_t:     nop
                  addi         a2, a2, -5 #update loop 0 counter
                  bgeu         a2, a1, sub_3_11_0_t #branch for loop 0
                  or           a0, a3, a2
                  addi         t4, a7, 906
                  slli         s3, s0, 13
                  beq          t2, gp, 227f
                  xor          ra, zero, t3
                  sltu         t5, s7, a0
                  srai         s4, a3, 5
                  srai         s4, s5, 30
                  bne          a4, s8, 237f
223:              sll          a6, s7, s4
                  srai         t4, t5, 21
                  sltu         sp, t3, gp
                  slt          s0, s6, s2
227:              sll          sp, sp, s7
                  sub          s6, s7, t2
                  nop
                  bne          ra, s11, 239f
                  sll          s0, a6, s0
                  xori         t1, gp, 474
                  sra          t3, s9, a1
                  bge          a7, a1, 254f
                  nop
                  bltu         s4, t5, 249f
237:              sltu         t0, s0, t6
                  srai         a3, s10, 4
239:              add          s11, a5, a3
                  xor          s11, s10, gp
                  sub          a0, t2, t2
                  beq          t3, t5, 254f
                  nop
                  bgeu         s2, a6, 245f
245:              slli         a3, t2, 9
                  srai         t0, t0, 26
                  or           a4, zero, a1
                  add          sp, a4, t6
249:              nop
                  bge          s9, t3, 257f
                  or           a7, t2, s5
                  srai         tp, s5, 22
                  sra          s10, s3, s10
254:              sltiu        a2, t1, -1960
                  srl          t5, a7, t3
                  lui          t5, 869649
257:              beq          gp, t3, 260f
                  auipc        a5, 99963
                  lui          a0, 427695
260:              xor          ra, a6, a2
                  blt          t6, t3, 270f
                  slli         s0, s3, 8
                  sra          gp, s7, s2
                  srai         s2, t2, 8
                  sltiu        a3, t3, 873
                  xori         gp, t5, 96
                  lui          t4, 892896
                  bge          zero, s8, 282f
                  slli         gp, s3, 19
270:              blt          zero, a4, 285f
                  bge          s8, s5, 274f
                  sra          a0, s7, ra
                  andi         s8, s3, -687
274:              sub          a5, t5, s1
                  auipc        a3, 90380
                  and          ra, t0, s6
                  sra          ra, a4, a5
                  bge          t1, s5, 293f
                  srl          a6, sp, gp
                  sltiu        s6, a7, 1310
                  ori          s5, t5, 1117
282:              slti         s11, s8, 265
                  srai         t1, sp, 18
                  andi         a2, a4, -785
285:              lui          gp, 380799
                  srai         t3, t4, 4
                  slli         s10, a3, 7
                  sltiu        s10, s10, -1734
                  bltu         t6, t5, 303f
                  slt          a0, a7, s4
                  sub          tp, gp, s6
                  sltiu        t0, s11, 1515
293:              sltu         sp, t2, tp
                  sltiu        a1, s4, 929
                  beq          sp, s4, 308f
                  or           a4, a3, t5
                  bge          s0, s0, 303f
                  sub          a4, s11, s0
                  auipc        a1, 465538
                  bge          t5, a6, 304f
                  nop
                  blt          a2, t2, 313f
303:              bge          t1, sp, 323f
304:              bltu         sp, s7, 319f
                  ori          s10, a2, 8
                  sra          s11, t1, s10
                  slti         ra, s2, 1777
308:              bge          s10, a5, 315f
                  ori          a2, a2, -353
                  andi         t0, s10, -1668
                  sltu         s11, s6, s4
                  andi         t5, a4, 785
313:              slt          s5, a4, gp
                  xor          s1, sp, s4
315:              and          s10, t2, s7
                  nop
                  sra          zero, tp, t2
                  addi         s11, s6, -103
319:              bgeu         s9, a3, 336f
                  blt          a1, ra, 321f
321:              bge          t6, ra, 336f
                  slti         t1, t3, 1073
323:              or           t1, t2, t5
                  blt          zero, t2, 329f
                  slli         a0, s7, 18
                  ori          s2, t6, 48
                  beq          zero, s10, 331f
                  sll          tp, a5, a4
329:              xor          s10, t2, t2
                  sub          a7, gp, a2
331:              ori          zero, a2, 157
                  sra          t5, t4, t3
                  auipc        sp, 221787
                  srl          zero, s5, a2
                  slli         s5, s4, 13
336:              lui          s3, 678581
                  lui          sp, 40362
                  bltu         tp, s3, 352f
                  bge          zero, s0, 346f
                  slli         ra, a3, 16
                  auipc        t1, 78
                  andi         a5, ra, 691
                  sra          t5, a5, tp
                  bne          a0, a6, 347f
                  addi         s7, a0, -1622
346:              add          a0, sp, s11
347:              xori         a5, a7, 851
                  srai         a3, s6, 25
                  slt          gp, t0, ra
                  xor          gp, s3, s4
                  beq          s9, tp, 357f
352:              nop
                  add          tp, s6, s9
                  srai         a1, t6, 31
                  auipc        t0, 752247
                  sll          s10, a2, t4
357:              sra          gp, a0, s8
                  sltu         s2, a3, a3
                  slli         t5, t1, 6
                  blt          t0, s8, 375f
                  and          tp, gp, t3
                  bltu         s2, t4, 377f
                  blt          s6, s5, 364f
364:              xori         s6, s1, 1245
                  sub          t3, s4, t3
                  bge          t2, s3, 380f
                  ori          a5, t3, -1388
                  slti         ra, s8, 1012
                  bne          a0, s0, 372f
                  sub          a2, s8, s3
                  srli         gp, a2, 23
372:              slt          a2, s4, s0
                  beq          a5, a1, 383f
                  and          ra, a7, t0
375:              xor          s3, a5, s1
                  addi         s4, t6, 1505
377:              bne          s9, gp, 388f
                  xor          t0, s7, a6
                  slt          a0, s4, s8
380:              add          a2, s6, s1
                  sub          a0, tp, a5
                  sltu         a7, s0, s9
383:              auipc        tp, 940108
                  slti         s0, s8, 1219
                  slti         t4, t1, 1201
                  sra          t1, t3, s5
                  slti         a1, ra, 530
388:              slt          s0, a2, s11
                  sltu         t1, s9, s9
                  slti         sp, t0, -1605
                  sltiu        a7, t6, 1749
                  add          ra, t5, s9
                  addi         a7, a1, -1227
                  sltiu        a5, t3, 933
                  and          a6, a1, t6
                  xor          a2, a5, a5
                  blt          a1, a1, 406f
                  xor          s7, t5, t4
                  xor          t3, a0, s5
                  sltu         s0, t6, a1
                  sra          a5, s4, gp
                  sltiu        a4, a0, 475
                  or           t4, t3, a1
                  slt          tp, a3, zero
                  bge          s9, sp, 420f
406:              srai         s8, a7, 8
                  slti         s0, a2, 542
                  beq          tp, s1, 428f
                  auipc        a5, 803891
                  sltu         a2, zero, sp
                  sltu         t3, s4, t4
                  slli         a4, s2, 5
                  auipc        s1, 130793
                  sub          a2, s8, ra
                  bne          s6, a4, 427f
                  addi         a2, s0, 455
                  srli         tp, s3, 9
                  slli         t3, t1, 17
                  auipc        t0, 486803
420:              bge          a3, tp, 433f
                  nop
                  bne          t3, s10, 439f
                  slt          t1, tp, s8
                  sra          a6, s1, t3
                  bltu         zero, s6, 445f
                  bne          a4, s2, 439f
427:              srl          a6, a4, sp
428:              or           s0, a2, t1
                  srli         s6, a2, 8
                  bne          a6, a4, 449f
                  bge          a5, s10, 444f
                  andi         sp, a2, -572
433:              sub          a2, t5, s7
                  or           s6, s1, a2
                  bgeu         a0, t5, 444f
                  xori         gp, s0, 685
                  addi         a2, s7, -1857
                  xori         zero, t1, -1924
439:              nop
                  srli         s0, s10, 28
                  or           gp, s1, gp
                  beq          sp, a5, 452f
                  bgeu         s9, s11, 457f
444:              bne          t5, a2, 451f
445:              bltu         s5, a2, 457f
                  or           a6, a1, s7
                  nop
                  add          a7, t6, gp
449:              auipc        t1, 757653
                  bgeu         s6, s1, 451f
451:              auipc        a7, 271667
452:              lui          s0, 493113
                  blt          s3, t4, 470f
                  bne          t4, s0, 468f
                  addi         t0, a6, -720
                  nop
457:              bne          s10, a2, 470f
                  sltiu        t4, a4, -543
                  or           sp, s8, ra
                  srl          sp, t4, s2
                  lui          s3, 558453
                  addi         t0, ra, 1930
                  addi         a5, t5, 983
                  srai         sp, a2, 23
                  bge          t6, tp, 485f
                  srl          s8, s7, s7
                  add          s7, s11, s6
468:              slti         s4, s2, -1518
                  or           s8, t6, s7
470:              srli         s2, a6, 21
                  xor          s10, s3, s4
                  slli         a5, a1, 5
                  nop
                  slti         a3, s7, 1801
                  slti         a1, s0, -1628
                  bge          t0, s3, 477f
477:              beq          a1, s3, 480f
                  beq          t6, s8, 484f
                  auipc        a1, 642750
480:              bge          s0, a7, 492f
                  bge          zero, s7, 493f
                  sub          t0, s5, a3
                  slli         t1, s2, 11
484:              bne          t2, tp, 493f
485:              sll          s5, s5, a4
                  slti         s11, t3, 701
                  addi         tp, zero, -1703
                  srai         s3, a7, 16
                  bltu         ra, s8, 503f
                  auipc        a7, 138989
                  ori          s5, t0, -2029
492:              bne          t4, s7, 511f
493:              nop
                  auipc        gp, 107494
                  addi         s4, t5, -808
                  or           s7, zero, s0
                  slt          ra, s3, t0
                  andi         s4, a5, -1805
                  addi         s1, a1, -165
                  srai         sp, a7, 4
                  bne          s1, s5, 508f
                  srl          s8, s9, a0
503:              slt          s6, s3, a2
                  xori         a0, t0, -140
                  bne          a5, a6, 510f
                  sub          tp, t3, s9
                  sra          s5, t5, s3
508:              ori          s2, t2, -1672
                  or           a7, s10, a1
510:              bgeu         zero, zero, 513f
511:              lui          s0, 934238
                  bne          s4, s5, 527f
513:              nop
                  nop
                  addi         tp, t6, -1717
                  andi         tp, s4, -1046
                  addi         s7, a5, -36
                  sltiu        t3, t6, 103
                  add          s11, s3, s6
                  sll          s7, zero, a5
                  sll          a1, t6, t6
                  bne          t6, t2, 532f
                  add          t5, s8, a2
                  slti         a4, s1, -1195
                  slti         t4, s11, -884
                  sltiu        t4, t5, 952
527:              xori         s7, zero, -93
                  nop
                  bne          sp, s5, 543f
                  sltu         a4, s4, s4
                  or           ra, tp, a2
532:              and          a7, a6, a1
                  lui          s6, 755722
                  slli         s6, s2, 4
                  sll          t4, a2, s1
                  add          s3, t4, a6
                  srl          s1, t4, s9
                  sub          zero, a3, s5
                  or           gp, a3, t3
                  sltu         s6, t3, t5
                  slt          gp, s4, gp
                  bgeu         t6, s2, 546f
543:              ori          s1, s11, -2017
                  beq          s1, gp, 557f
                  sltu         a0, s11, a4
546:              sll          s1, s7, a4
                  bgeu         t0, t4, 558f
                  xor          t3, a3, t2
                  ori          s6, s10, -1712
                  ori          a3, a6, 1608
                  sra          s7, a2, s0
                  sra          t5, a7, s0
                  xori         t3, t2, -1250
                  srli         s8, a6, 1
                  srli         s7, a5, 7
                  slli         s10, s5, 27
557:              xori         gp, t4, 1082
558:              bge          s3, a1, 578f
                  srli         t3, t6, 27
                  lui          sp, 418274
                  or           t4, s11, t0
                  andi         a2, t2, -1507
                  auipc        gp, 942723
                  bne          a4, a7, 573f
                  slli         s11, s7, 15
                  xori         a7, a1, -224
                  sll          s3, zero, a7
                  bge          s11, a1, 578f
                  slt          s4, a7, sp
                  sra          a6, a0, s1
                  bge          t5, t6, 586f
                  blt          s8, s11, 585f
573:              xori         a6, s0, 501
                  beq          s8, s6, 589f
                  sra          a6, zero, s5
                  andi         t4, t4, -930
                  sub          a6, a6, a1
578:              beq          a7, s8, 585f
                  srai         t1, s3, 16
                  slli         ra, s0, 21
                  slt          a6, a1, s7
                  sltiu        s11, gp, 1818
                  xori         t4, s6, -865
                  and          s6, t0, t6
585:              auipc        tp, 742552
586:              xori         a4, a2, -706
                  addi         s0, t0, -887
                  sra          sp, a2, s3
589:              nop
                  bne          s2, ra, 605f
                  xori         s8, s8, -325
                  nop
                  srl          a0, t2, t4
                  lui          a4, 941881
                  srl          s10, zero, t3
                  or           a6, t1, tp
                  bltu         t0, s9, 607f
                  beq          s3, s9, 605f
                  slti         s3, s7, -1188
                  sltiu        s11, a3, 1543
                  srai         a1, a6, 28
                  srai         s1, t3, 27
                  slti         s10, a7, 100
                  bgeu         t2, a2, 607f
605:              bne          a5, s9, 619f
                  andi         t1, a6, -1683
607:              sltu         s4, s9, t4
                  bne          s10, a7, 614f
                  srl          s3, zero, a2
                  add          t5, zero, ra
                  or           s0, s11, s5
                  andi         t1, s7, 1968
                  xor          a7, t1, sp
614:              or           s1, s10, s5
                  or           s5, s2, gp
                  xori         t5, s1, -1184
                  nop
                  ori          tp, a6, -1113
619:              bne          t2, s11, 624f
                  sltiu        a3, t4, 1754
                  srai         a7, a1, 1
                  sltu         a3, ra, t3
                  add          t3, gp, s2
624:              auipc        a7, 969431
                  ori          a6, s1, 1476
                  xor          a3, a4, ra
                  bltu         ra, a1, 628f
628:              auipc        t5, 605401
                  andi         s4, s10, 245
                  xori         ra, s0, 1265
                  sltiu        a2, s9, 1284
                  srli         a2, a7, 30
                  ori          s7, s9, 1022
                  nop
                  nop
                  sra          s4, a5, a2
                  or           gp, s8, a2
                  andi         s10, sp, -68
                  slti         zero, s4, -1820
                  sll          zero, t2, zero
                  sll          s7, zero, a4
                  slli         sp, s1, 26
                  sra          s3, t6, a4
                  sll          t0, s6, s2
                  sub          s11, s11, t0
                  bgeu         t0, t5, 654f
                  srli         a6, ra, 5
                  or           s8, a2, a7
                  srl          s1, zero, s1
                  bltu         zero, s3, 654f
                  slt          zero, t4, s10
                  bltu         s9, s5, 654f
                  slt          a6, a6, ra
654:              sll          t1, gp, t3
                  sll          ra, t0, s4
                  addi         a3, sp, -696
                  sltu         s6, a7, s9
                  lw           tp, 4(t6)
                  addi         t6, t6, 48
                  or           s6, t5, sp
                  srai         s1, zero, 9
                  nop
                  sub          s11, t4, s3
                  and          sp, s4, s11
                  add          s7, s7, s11
943:              addi x15, x4, 1
943:              jalr x15, x15, 0
sub_4:            xori         s0, zero, -1705
                  addi         t6, t6, -44
                  slti         t0, s3, 1613
                  sltiu        t5, t1, 42
                  sw           tp, 4(t6)
                  sltiu        a7, s7, -1295
                  la           tp, sub_5
                  srl          zero, gp, t2
                  addi         tp, tp, -903
                  auipc        s7, 919591
                  sll          t3, t0, a3
                  sra          s11, s7, tp
                  sll          s8, a0, t1
                  xori         t5, a0, 939
sub_4_j7:         jalr         tp, tp, 904 #jump sub_4 -> sub_5
                  addi         s1, zero, 9 #init loop 1 counter
                  slli         a7, s1, 25
                  nop
                  addi         s2, zero, 9 #init loop 1 limit
                  sltu         a2, s10, t5
sub_4_0_1_t:      ori          s11, t3, 1868
                  addi         s1, s1, -8 #update loop 1 counter
                  slli         ra, t0, 20
                  addi         t1, zero, 1 #init loop 0 counter
                  sub          a0, a0, s9
                  slti         a1, sp, -416
                  auipc        t4, 726337
                  and          s0, s0, t0
                  lui          a2, 786861
                  slt          tp, s11, t0
                  addi         t0, zero, 9 #init loop 0 limit
                  and          t5, s5, s11
sub_4_0_0_t:      sltiu        s8, a5, 1383
                  ori          sp, a4, 945
                  slt          s0, s8, t5
                  addi         s5, s5, 1038
                  addi         t1, t1, 7 #update loop 0 counter
                  or           t4, s11, s4
                  sltu         s7, sp, a1
                  srli         a2, t3, 13
                  bltu         t1, t0, sub_4_0_0_t #branch for loop 0
                  add          s10, sp, s3
                  bgeu         s1, s2, sub_4_0_1_t #branch for loop 1
                  sll          t3, a1, s5
                  addi         s8, zero, 8 #init loop 0 counter
                  andi         a1, ra, 1800
                  slli         s6, a3, 7
                  and          s5, sp, s9
                  sltu         gp, a7, a2
                  addi         a3, a0, -1952
                  srli         sp, s2, 19
                  xori         s5, ra, 1487
                  slt          a3, s4, s6
                  slt          a2, a3, a2
                  or           tp, t4, t5
                  sra          s11, tp, t4
                  srli         t5, t1, 31
                  srl          a6, s8, s5
                  andi         t1, t2, 1658
                  addi         a7, zero, 19 #init loop 0 limit
                  slt          a6, a1, ra
sub_4_4_0_t:      sub          s1, s11, a1
                  srai         s1, s3, 1
                  slti         t4, t0, 377
                  sltiu        gp, t5, -1231
                  addi         s8, s8, 5 #update loop 0 counter
                  addi         a3, a1, 1158
                  bltu         s8, a7, sub_4_4_0_t #branch for loop 0
                  slti         a5, t5, 1880
                  addi         s0, zero, -7 #init loop 1 counter
                  addi         a4, zero, 14 #init loop 1 limit
sub_4_3_1_t:      auipc        s4, 139335
                  slt          s5, s10, a1
                  addi         s0, s0, 6 #update loop 1 counter
                  addi         sp, zero, 0 #init loop 0 counter
                  auipc        t5, 982371
                  addi         a3, zero, -20 #init loop 0 limit
sub_4_3_0_t:      sltiu        s2, a1, -1541
                  addi         sp, sp, -10 #update loop 0 counter
                  ori          s7, t3, -236
                  bge          sp, a3, sub_4_3_0_t #branch for loop 0
                  blt          s0, a4, sub_4_3_1_t #branch for loop 1
                  srl          s6, s1, a2
                  addi         a6, zero, -10 #init loop 1 counter
                  sll          s11, s4, s10
                  xor          a3, t2, s5
                  addi         t4, zero, -9 #init loop 1 limit
sub_4_7_1_t:      lui          s10, 593088
                  add          a1, s10, a5
                  addi         a6, a6, 7 #update loop 1 counter
                  sll          gp, ra, zero
                  sub          s0, s0, a3
                  sll          s2, t2, s4
                  addi         t5, zero, -2 #init loop 0 counter
                  slti         s3, s6, 143
                  srai         s11, s4, 29
                  addi         s8, zero, -14 #init loop 0 limit
sub_4_7_0_t:      sltu         t1, gp, s11
                  srl          s3, t1, t1
                  xori         s11, tp, 1046
                  ori          t1, t2, 1215
                  addi         t5, t5, -7 #update loop 0 counter
                  slt          t1, a7, gp
                  xori         tp, a6, -394
                  bge          t5, s8, sub_4_7_0_t #branch for loop 0
                  blt          a6, t4, sub_4_7_1_t #branch for loop 1
                  sltiu        ra, s1, 172
                  addi         s6, zero, -10 #init loop 0 counter
                  srai         t1, s11, 1
                  slli         s5, t1, 22
                  ori          s10, s1, -454
                  srli         s7, s10, 28
                  srl          a3, s6, s7
                  addi         s8, zero, 2 #init loop 0 limit
                  andi         a1, s3, -1975
                  slti         t3, a2, -1168
sub_4_1_0_t:      sltu         ra, a6, gp
                  andi         a5, s2, 1069
                  slt          s1, sp, s4
                  auipc        zero, 602659
                  srai         a7, a4, 1
                  addi         s6, s6, 7 #update loop 0 counter
                  andi         s3, s0, -647
                  srl          s5, a7, t4
                  and          a5, gp, s8
                  slti         t5, t0, -1441
                  bltu         s6, s8, sub_4_1_0_t #branch for loop 0
                  or           t4, gp, a3
                  addi         a3, zero, 3 #init loop 0 counter
                  lui          t3, 125827
                  or           a4, s6, s1
                  xori         t3, a1, 852
                  srai         a2, a1, 2
                  addi         s0, zero, -2 #init loop 0 limit
                  srl          zero, a0, a0
                  add          s6, t4, s5
                  srl          ra, s5, a2
                  addi         s10, a7, 529
                  sltu         a2, s10, a0
sub_4_6_0_t:      and          t4, s5, s0
                  srai         a2, s5, 24
                  slt          a6, s5, t1
                  addi         a3, a3, -5 #update loop 0 counter
                  xor          s6, zero, a0
                  auipc        s8, 936025
                  srai         s10, a5, 31
                  slt          t5, s7, s11
                  auipc        zero, 737124
                  sltu         a4, t6, a5
                  lui          s6, 444247
                  beq          a3, s0, sub_4_6_0_t #branch for loop 0
                  sub          s2, s10, tp
                  addi         a3, zero, -5 #init loop 1 counter
                  addi         s11, zero, 13 #init loop 1 limit
                  slti         a0, s2, 564
sub_4_2_1_t:      xori         s10, s11, 921
                  sltu         s7, s5, s0
                  addi         a3, a3, 6 #update loop 1 counter
                  addi         a2, zero, 2 #init loop 0 counter
                  addi         a6, zero, 14 #init loop 0 limit
sub_4_2_0_t:      slt          s4, t5, t1
                  addi         a2, a2, 6 #update loop 0 counter
                  beq          a2, a6, sub_4_2_0_t #branch for loop 0
                  addi         s10, gp, -908
                  bltu         a3, s11, sub_4_2_1_t #branch for loop 1
                  andi         s0, a1, -1582
                  addi         a4, zero, 10 #init loop 1 counter
                  sra          s6, s11, t4
                  addi         a2, zero, 5 #init loop 1 limit
                  andi         sp, t3, 945
sub_4_5_1_t:      add          s5, t5, a2
                  addi         a4, a4, -3 #update loop 1 counter
                  srl          s1, s0, t5
                  srl          a3, ra, t0
                  addi         a1, zero, -10 #init loop 0 counter
                  lui          a3, 108741
                  addi         a6, zero, -5 #init loop 0 limit
                  auipc        zero, 336938
sub_4_5_0_t:      nop
                  addi         a1, a1, 8 #update loop 0 counter
                  or           a3, a0, a7
                  sra          t1, a2, s3
                  blt          a1, a6, sub_4_5_0_t #branch for loop 0
                  srl          s4, s3, s9
                  sltu         a5, a0, t4
                  bgeu         a4, a2, sub_4_5_1_t #branch for loop 1
                  slt          t1, s3, t5
                  sll          a3, s7, a0
                  srai         t4, t4, 15
                  ori          t4, a3, -62
                  ori          s6, a4, -694
                  sltu         t4, s10, t5
                  sltiu        a6, t4, 875
                  sub          s4, a0, s0
                  slli         gp, s3, 30
                  bgeu         s11, a1, 22f
                  ori          a2, s9, -870
                  sltu         s6, tp, s3
                  sra          s4, s9, zero
                  bgeu         s4, gp, 21f
                  add          s10, s3, t5
                  beq          s7, a6, 18f
                  sra          tp, s4, s0
                  addi         s8, s3, 797
                  bne          s10, s11, 18f
18:               bgeu         t4, a7, 34f
                  slt          t3, t2, a1
                  addi         s1, t4, -1253
21:               slti         s4, s10, 366
22:               blt          t2, a6, 26f
                  lui          a0, 904046
                  addi         t3, t0, -1239
                  beq          t0, a6, 33f
26:               auipc        a5, 32026
                  srli         gp, t3, 5
                  addi         gp, s10, -498
                  srl          sp, s1, a0
                  and          s2, s0, s4
                  blt          s11, s7, 33f
                  sra          t0, zero, s7
33:               slt          s10, zero, ra
34:               srai         t3, a7, 18
                  sltiu        a5, a5, 1111
                  slti         a6, t6, 405
                  xori         s0, zero, 711
                  addi         a7, a2, 1666
                  bne          ra, t0, 59f
                  slli         s7, t4, 11
                  beq          s11, a3, 54f
                  sltu         t1, s3, t6
                  sltu         a3, s4, s1
                  blt          ra, tp, 62f
                  srli         s8, t3, 1
                  srai         t0, s11, 16
                  slti         t0, t5, 158
                  bne          t2, a4, 66f
                  slti         a5, s5, 688
                  auipc        s8, 274061
                  slt          gp, tp, t6
                  beq          s3, t6, 64f
                  addi         s5, s10, -482
54:               bgeu         s2, s4, 63f
                  xor          zero, tp, zero
                  sll          a5, t3, s7
                  srli         s8, ra, 3
                  nop
59:               bgeu         t2, t1, 77f
                  slti         a2, s8, -1128
                  sltiu        sp, t3, -1517
62:               andi         s4, a7, 1291
63:               blt          t2, s7, 65f
64:               xor          t1, s11, s6
65:               sra          s1, tp, s1
66:               bge          s0, t5, 71f
                  srl          t5, a3, s1
                  xori         a7, s7, 416
                  or           t0, a0, s10
                  and          a5, s11, ra
71:               sra          zero, s4, a1
                  sltiu        s8, tp, -1801
                  srl          s4, s4, s10
                  slt          t0, s9, a3
                  and          s1, gp, s3
                  sltiu        gp, ra, -934
77:               sll          s3, s4, zero
                  bge          s5, s11, 85f
                  sltiu        t4, s8, -1382
                  bge          s8, s8, 81f
81:               sll          a5, s3, s3
                  bgeu         t1, a5, 97f
                  beq          t2, s3, 90f
                  srli         s3, ra, 15
85:               xori         s7, s8, -1782
                  srai         t1, a2, 4
                  slt          tp, s11, a4
                  nop
                  blt          s11, s1, 103f
90:               srli         t4, ra, 25
                  xori         a0, s11, 862
                  sltiu        t0, t0, 1051
                  beq          s3, t5, 108f
                  srl          gp, s2, a2
                  xor          s1, s10, a3
                  srl          a2, s8, s6
97:               bgeu         a0, s0, 104f
                  bge          s2, t3, 103f
                  xor          gp, gp, s5
                  andi         tp, a3, -802
                  srl          s7, s2, ra
                  add          s8, t0, t5
103:              slli         t4, a5, 10
104:              beq          s6, gp, 107f
                  slti         t0, t4, -1113
                  lui          a6, 197066
107:              xor          a5, s9, gp
108:              srai         t4, s8, 10
                  sub          s2, s4, s1
                  srli         s8, tp, 13
                  nop
                  xor          s4, s2, a7
                  bltu         t6, t2, 125f
                  bgeu         t2, ra, 118f
                  xori         a0, s5, 521
                  slli         s3, s10, 2
                  bne          zero, t3, 133f
118:              sltu         t0, s1, a6
                  sub          t3, t3, t5
                  srl          t4, s4, s11
                  sll          zero, a2, zero
                  sub          a0, s11, ra
                  sltiu        s10, t0, -1566
                  addi         t1, a0, -1379
125:              blt          a1, gp, 139f
                  and          s4, gp, a5
                  sub          s8, a2, s1
                  nop
                  sltu         zero, s3, t6
                  slt          s0, s9, s5
                  andi         t5, s7, -2018
                  sll          s1, s3, s10
133:              srl          a0, s7, s0
                  lui          a7, 942968
                  slli         t4, s0, 18
                  beq          s1, s4, 150f
                  slti         a0, a7, -1703
                  slt          t3, s1, s4
139:              bge          s4, ra, 155f
                  bne          s7, gp, 154f
                  xori         gp, a7, 1559
                  blt          s3, s11, 144f
                  sll          s4, gp, s2
144:              bge          gp, gp, 151f
                  lui          s6, 813236
                  bltu         a6, ra, 161f
                  add          t0, ra, s6
                  bgeu         s6, t1, 164f
                  bltu         a3, a3, 156f
150:              add          s3, sp, a0
151:              addi         s10, sp, -590
                  slt          a7, zero, t6
                  sll          a4, t1, a7
154:              srli         a2, s11, 6
155:              bge          s0, zero, 156f
156:              srli         s11, a5, 0
                  sub          gp, s8, a6
                  lui          t4, 581134
                  blt          t4, sp, 166f
                  and          a7, sp, t5
161:              srl          a4, tp, a4
                  bltu         t3, t4, 163f
163:              slli         s7, s5, 19
164:              sltu         zero, tp, s7
                  addi         a7, a5, 332
166:              auipc        a0, 982496
                  addi         s11, t6, 1498
                  andi         s6, s7, 292
                  bge          a1, s11, 187f
                  bne          s9, a3, 175f
                  bgeu         s7, t4, 189f
                  srl          t5, a0, t3
                  slti         t5, a5, -1376
                  auipc        s4, 36372
175:              srli         s10, s5, 15
                  sra          t0, s4, s3
                  lui          s10, 232481
                  bltu         ra, s10, 196f
                  sltu         s7, a2, t6
                  nop
                  slli         zero, s9, 22
                  or           s0, t2, t2
                  sll          t4, s9, s11
                  slti         t1, t1, -1980
                  bge          a3, a6, 199f
                  sub          a5, a4, s3
187:              add          a3, zero, a1
                  addi         s6, a1, -440
189:              auipc        t4, 477609
                  beq          s5, a1, 192f
                  srl          a3, a5, t1
192:              ori          t4, s10, 845
                  sub          t3, t0, s6
                  srai         a2, s10, 0
                  or           s5, s4, s0
196:              sll          a0, s8, sp
                  add          a2, s7, s5
                  sltiu        s4, a2, -223
199:              auipc        a2, 10923
                  bgeu         gp, s10, 203f
                  addi         t4, s10, -1814
                  sra          s1, t4, a5
203:              bgeu         s2, s10, 215f
                  slt          tp, s11, s2
                  nop
                  slt          a4, sp, t6
                  sub          sp, s11, s10
                  andi         a4, s4, 1030
                  sltu         a1, s3, a7
                  ori          a1, sp, 406
                  srai         a5, s1, 3
                  bltu         t0, ra, 221f
                  nop
                  blt          s8, s3, 223f
215:              andi         s10, a1, -1316
                  srai         t1, s0, 16
                  addi         a0, a5, 1099
                  sub          a5, t3, s2
                  bne          s11, t4, 239f
                  and          s8, t1, ra
221:              beq          a1, s10, 225f
                  sub          s0, gp, sp
223:              bge          a4, t2, 238f
                  bgeu         s0, s1, 236f
225:              bge          s2, s7, 238f
                  beq          s7, a0, 230f
                  bne          t4, ra, 232f
                  slt          t5, s11, s10
                  slti         t5, a5, -995
230:              bgeu         a4, s2, 238f
                  auipc        a4, 683126
232:              sll          a1, gp, s2
                  bltu         s1, t5, 237f
                  add          tp, tp, s1
                  srl          s2, a1, s0
236:              slt          s2, s4, t4
237:              srl          t1, s11, a5
238:              ori          zero, a3, -952
239:              add          t1, gp, ra
                  nop
                  sll          a1, a6, s4
                  add          a0, s8, s0
                  sltu         s7, a0, a0
                  bne          gp, s1, 251f
                  srl          a4, a4, s10
                  sltu         a5, s2, a1
                  slti         a0, t3, 1063
                  slt          a5, s5, a7
                  and          s3, zero, s3
                  nop
251:              ori          a6, tp, -1334
                  blt          gp, s6, 268f
                  bne          s10, a0, 271f
                  ori          a7, s8, 1418
                  slt          a3, a5, s6
                  sub          sp, t1, t0
                  and          s3, s7, t1
                  xor          a3, s0, t4
                  andi         a0, s7, 157
                  sltu         s2, a0, a2
                  bgeu         gp, t2, 270f
                  bge          s6, s11, 266f
                  auipc        s1, 462362
                  add          s10, a6, t5
                  bge          t5, s11, 266f
266:              nop
                  bltu         t3, s10, 274f
268:              beq          tp, a1, 282f
                  sub          a0, s0, s2
270:              beq          sp, a5, 284f
271:              andi         zero, s8, -697
                  slt          s7, s11, a0
                  bgeu         t4, t1, 280f
274:              bgeu         s10, t4, 289f
                  add          a6, s5, gp
                  xor          gp, a0, t1
                  bgeu         a6, s0, 282f
                  ori          ra, s10, 179
                  beq          t2, a3, 291f
280:              blt          s10, s0, 292f
                  sll          a2, s3, t4
282:              add          s11, s6, s0
                  srli         s0, s0, 25
284:              srai         s6, s4, 22
                  bltu         t6, s2, 289f
                  addi         s0, a4, -1501
                  slt          ra, s7, a2
                  and          a7, t2, s11
289:              slli         s11, s5, 1
                  lui          s3, 26549
291:              sra          gp, s4, s9
292:              and          t5, ra, t1
                  blt          t5, sp, 296f
                  slt          s11, a7, s10
                  nop
296:              xori         tp, t3, 317
                  blt          t1, ra, 313f
                  beq          t6, sp, 313f
                  nop
                  sll          a2, s4, t2
                  blt          s10, s8, 306f
                  blt          t2, tp, 322f
                  bne          a5, a4, 312f
                  bltu         a5, a2, 306f
                  or           s6, zero, s6
306:              xor          a1, a1, ra
                  or           gp, s9, t3
                  srl          a0, t0, gp
                  bge          a5, a1, 323f
                  sltu         gp, a0, sp
                  sltu         a7, a0, s0
312:              slt          t5, a3, s4
313:              sltiu        s4, a7, -1108
                  bltu         a2, s8, 327f
                  srai         s1, t3, 14
                  sub          a5, s6, s0
                  lui          s2, 681255
                  lui          s3, 770103
                  bgeu         s1, a5, 327f
                  bne          sp, a4, 322f
                  or           zero, t6, a4
322:              slli         s10, s3, 16
323:              auipc        a5, 874391
                  sra          s0, a2, s6
                  bgeu         s4, a0, 343f
                  bne          s7, s10, 327f
327:              slti         s5, zero, -808
                  andi         zero, s4, -649
                  auipc        s11, 485967
                  slti         s4, gp, 936
                  bge          gp, zero, 349f
                  and          a4, t0, a2
                  xor          gp, a5, s7
                  blt          s9, tp, 338f
                  sltu         s5, t1, s2
                  and          a2, t2, a4
                  sltu         s1, t1, tp
338:              sll          sp, s7, sp
                  sltiu        t1, tp, 346
                  sll          s0, s6, zero
                  or           ra, s8, t1
                  sll          s0, t1, s9
343:              addi         t3, s10, 628
                  nop
                  srl          t3, a2, s10
                  bltu         a4, t5, 359f
                  sltiu        gp, tp, 938
                  sub          a5, s8, t6
349:              srl          s8, s5, a0
                  srli         gp, s4, 2
                  slt          s2, tp, t6
                  slti         s7, s3, -1110
                  sltu         sp, s9, tp
                  bltu         s4, s7, 366f
                  slli         a5, s4, 29
                  and          a6, s6, s11
                  srl          s3, t3, t4
                  slt          gp, s10, s8
359:              add          s10, s3, a5
                  sltiu        t5, s8, 579
                  sra          a6, t6, s7
                  sltiu        a3, t3, -1865
                  sltu         s11, t5, t0
                  slt          zero, s6, sp
                  bge          s2, a5, 377f
366:              sll          a5, s1, a4
                  sll          s0, s9, a7
                  andi         zero, t3, -1850
                  slt          t1, t0, a6
                  nop
                  sltiu        tp, t2, 1449
                  bge          s7, t0, 374f
                  srli         ra, t4, 9
374:              ori          tp, a1, -1183
                  bne          s8, t4, 384f
                  lui          s5, 133422
377:              slli         t4, a6, 19
                  ori          s6, s9, -1613
                  xori         s1, s3, -1146
                  bgeu         s3, a5, 398f
                  blt          zero, s4, 384f
                  bne          s8, t0, 386f
                  slt          s3, s3, tp
384:              xor          sp, ra, t1
                  slt          t1, tp, s9
386:              sll          a6, sp, t4
                  sub          s6, a5, a3
                  sll          gp, t2, t2
                  addi         a1, t1, 1472
                  sll          a1, s1, s8
                  addi         s0, zero, 8 #init loop 0 counter
                  addi         sp, zero, 7 #init loop 0 limit
                  sltiu        a6, t3, 228
                  andi         a1, s5, 1361
                  lui          s11, 762366
                  nop
                  slt          s11, s5, t2
                  sll          s8, gp, s4
                  lui          t4, 471924
                  srli         s5, t3, 18
                  nop
                  xori         s6, s0, -579
                  sltu         t3, t2, t5
                  xor          s4, s2, t2
                  addi         a3, t6, 805
                  add          t5, s0, a6
                  addi         a3, a1, -1538
sub_4_8_0_t:      sub          t4, a3, a0
                  sltiu        t4, t4, 902
                  or           s8, s2, a2
                  addi         s0, s0, -6 #update loop 0 counter
                  andi         s8, s3, -1536
                  slt          s5, a5, s3
                  srl          t0, s0, a7
                  srai         t5, s5, 15
                  bgeu         s0, sp, sub_4_8_0_t #branch for loop 0
                  lui          s5, 630999
                  and          a6, tp, zero
                  sll          s6, a0, a0
                  addi         t3, a2, 1786
                  sltiu        s7, a6, -1736
                  nop
                  blt          s8, a2, 403f
                  nop
398:              addi         t3, s5, -1468
                  sltiu        s7, t5, -589
                  sra          sp, t3, a6
                  bge          s5, gp, 417f
                  addi         s1, s0, -673
403:              lui          sp, 762620
                  beq          a3, zero, 418f
                  nop
                  sltu         sp, s6, a7
                  and          t3, s1, s1
                  beq          a7, tp, 422f
                  slli         s3, s9, 18
                  addi         a6, zero, 416
                  bge          t3, s1, 429f
                  srli         t3, s11, 9
                  srl          a1, a6, s8
                  srli         t4, t2, 21
                  addi         a4, s4, -1975
                  srai         a4, s9, 28
417:              blt          t1, a5, 418f
418:              sub          gp, a0, a7
                  nop
                  bge          t5, s8, 427f
                  and          a5, s1, a3
422:              blt          a7, a0, 423f
423:              bltu         s10, s1, 438f
                  slti         ra, s10, 1113
                  sltu         a0, a4, s6
                  or           s6, ra, s9
427:              blt          a7, s4, 435f
                  sub          s5, zero, s11
429:              andi         sp, s8, -890
                  addi         t0, t5, -1603
                  slli         a0, ra, 29
                  add          zero, a6, a6
                  beq          t3, t5, 440f
                  bge          s9, s9, 439f
435:              srai         s5, zero, 26
                  and          t3, s1, t3
                  lui          t4, 1004689
438:              sll          s5, s6, s8
439:              sltiu        t4, a6, -842
440:              sra          t0, s7, s0
                  slti         t0, a6, 97
                  xor          s10, a0, s1
                  srl          a5, t1, s6
                  bgeu         gp, t5, 464f
                  bne          s11, a6, 460f
                  beq          tp, s10, 451f
                  addi         t3, ra, 223
                  srli         a7, t5, 15
                  slti         a5, sp, -1373
                  and          a2, t2, t6
451:              bgeu         a5, s10, 469f
                  addi         s5, tp, 1927
                  slt          t4, t2, s0
                  blt          gp, tp, 456f
                  auipc        s4, 667980
456:              slli         s5, s0, 27
                  slli         a1, a0, 8
                  slli         ra, t3, 14
                  sub          a5, s9, t3
460:              addi         sp, s6, 1254
                  slti         a7, a2, -183
                  auipc        a1, 17834
                  sra          gp, a2, tp
464:              srli         s2, a3, 20
                  bge          s10, t3, 469f
                  lui          s0, 397157
                  auipc        a4, 107969
                  auipc        ra, 997002
469:              xori         t1, ra, 501
                  sltu         t0, s6, ra
                  or           t1, s1, a5
                  addi         a2, a2, 821
                  sub          ra, sp, s8
                  slt          a2, s7, a0
                  xori         t5, s1, -1975
                  slt          s10, s1, a5
                  sra          s3, s1, t5
                  slt          a0, t1, a0
                  sub          tp, t0, t4
                  bgeu         t5, s9, 489f
                  or           s11, a1, s6
                  beq          t5, s6, 491f
                  srl          t5, s9, t0
                  or           t3, t1, a0
                  ori          s1, s9, -1406
                  add          zero, a2, s2
                  sll          s0, a6, zero
                  auipc        s6, 865366
489:              srai         t4, t5, 14
                  sltiu        s8, s5, -584
491:              add          t3, a2, s7
                  slt          s6, a2, s0
                  lw           tp, 4(t6)
                  nop
                  addi         t6, t6, 44
                  xor          gp, s6, s8
                  slti         a7, s4, -139
                  auipc        zero, 763396
                  sltiu        t0, s6, -1148
                  lui          s10, 430653
                  slt          s0, a6, ra
716:              addi x16, x4, 0
716:              jalr x16, x16, 0
sub_1:            sra          a7, t2, t0
                  bgeu         s10, s4, sub_1_stack_p
                  or           t4, gp, s6
sub_1_stack_p:    addi         t6, t6, -56
                  sra          a6, s10, s3
                  sw           tp, 4(t6)
                  slt          a7, s11, a7
                  la           a0, sub_3
                  srl          a5, a3, t3
                  and          a5, t3, s6
                  sra          a3, s4, a4
                  auipc        s3, 193461
                  addi         a0, a0, 19
                  ori          t0, gp, 1945
                  sltu         s4, t1, t1
sub_1_j2:         jalr         tp, a0, -19 #jump sub_1 -> sub_3
                  xor          ra, s10, zero
                  srl          s3, a4, sp
                  la           a5, sub_2
                  slti         s2, tp, 372
                  addi         a5, a5, 506
                  bge          zero, s7, sub_1_j3 #branch to jump instr
                  sub          a7, a1, a6
                  srl          a1, s0, tp
                  addi         t4, zero, 1288
sub_1_j3:         jalr         tp, a5, -505 #jump sub_1 -> sub_2
                  sltu         a2, t4, s4
                  la           t3, sub_3
                  addi         t3, t3, -394
                  andi         s6, s8, -1260
                  lui          t0, 843824
                  bgeu         t1, s6, sub_1_j4 #branch to jump instr
                  srai         t4, s11, 16
                  sltiu        gp, a2, 1222
sub_1_j4:         jalr         tp, t3, 394 #jump sub_1 -> sub_3
                  add          s5, t1, s0
                  or           a1, s3, a1
                  srl          t1, s2, t1
                  lui          a6, 246826
                  auipc        a3, 906920
                  srli         a7, t3, 9
sub_1_j5:         jal          tp, sub_4 #jump sub_1 -> sub_4
                  addi         t3, zero, 1 #init loop 1 counter
                  andi         s10, a7, -953
                  auipc        t1, 264732
                  slti         s7, s5, -1647
                  addi         s5, a7, 1331
                  sll          s1, s6, a7
                  addi         s4, zero, 8 #init loop 1 limit
                  xori         t5, t4, -313
sub_1_0_1_t:      slt          s5, t5, s10
                  sltu         sp, t3, a5
                  slt          a5, gp, a4
                  addi         t3, t3, 10 #update loop 1 counter
                  or           t0, tp, s7
                  addi         a3, zero, 6 #init loop 0 counter
                  addi         a6, zero, 4 #init loop 0 limit
                  ori          gp, zero, 574
                  ori          a4, s5, -1050
                  slti         sp, zero, -1625
                  auipc        s2, 900802
                  xor          s11, zero, s8
sub_1_0_0_t:      add          s10, a4, sp
                  addi         a3, a3, -3 #update loop 0 counter
                  srl          t4, s1, s1
                  lui          s3, 281215
                  bgeu         a3, a6, sub_1_0_0_t #branch for loop 0
                  auipc        zero, 203915
                  and          s3, s5, ra
                  sub          s2, s10, a4
                  blt          t3, s4, sub_1_0_1_t #branch for loop 1
                  xor          t4, a1, a5
                  xori         s7, s8, 1588
                  xor          gp, s11, t4
                  addi         s8, a1, 1897
                  bltu         s2, s2, 17f
                  srli         s5, a6, 21
                  sra          zero, t3, s1
                  xor          a0, t5, s6
                  slt          a4, s6, t4
                  sll          a7, sp, zero
                  add          s3, a4, s1
                  srai         ra, a4, 8
                  bgeu         ra, t2, 20f
                  srl          a3, s7, s8
                  xori         a0, s7, 994
                  nop
                  or           gp, s10, s8
                  sra          a7, a7, tp
17:               ori          t1, a5, -163
                  bltu         s5, s9, 24f
                  slli         a3, s2, 16
20:               blt          tp, a3, 37f
                  slli         s5, s4, 3
                  sll          a6, a5, a6
                  andi         s5, t0, 1130
24:               sub          ra, a6, a1
                  ori          s11, a2, -63
                  srl          t1, s11, s7
                  nop
                  slt          zero, t5, ra
                  lui          s3, 642331
                  blt          sp, a0, 33f
                  xor          s8, a7, t3
                  nop
33:               bgeu         t3, a7, 38f
                  srai         t4, s5, 17
                  andi         s8, t3, 556
                  bge          s3, t4, 39f
37:               srai         gp, s3, 2
38:               lui          t4, 152525
39:               sltu         s6, s5, a2
                  srai         s10, s10, 14
                  sll          s0, s8, a5
                  ori          s0, t3, -1517
                  srl          s4, t6, s7
                  xori         zero, s3, -1269
                  andi         t1, s8, -1381
                  sltu         a7, a4, ra
                  srai         s10, s10, 30
                  sltu         s8, a0, s5
                  sltiu        s6, sp, -320
                  sltiu        s2, t6, 61
                  sub          a3, s1, s5
                  srli         a4, t6, 20
                  beq          s8, s3, 58f
                  lui          sp, 540342
                  xor          ra, s10, sp
                  sra          s7, a2, t5
                  srai         tp, a4, 1
58:               auipc        a4, 734981
                  lw           tp, 4(t6)
                  xori         s1, a7, -1199
                  srli         zero, zero, 25
                  addi         t6, t6, 56
                  lui          sp, 145547
136:              addi x3, x4, 1
136:              jalr x3, x3, 0
sub_5:            or           t5, s4, t5
                  addi         t6, t6, -16
                  add          s11, a5, a2
                  slli         ra, a7, 4
                  sll          gp, s8, a4
                  or           s4, zero, s0
                  sub          s4, t6, t2
                  sw           tp, 4(t6)
                  xor          a2, s5, a0
                  slti         s0, sp, 1308
                  slt          t3, a6, s4
                  slli         a0, s0, 27
                  addi         s3, zero, -7 #init loop 0 counter
                  lui          s4, 383373
                  slti         a5, t5, -544
                  lui          t3, 529470
                  auipc        s6, 814937
                  srl          t5, gp, a2
                  nop
                  addi         s2, s5, 486
                  slli         s4, a6, 3
                  xori         s7, tp, -149
                  addi         a6, zero, 19 #init loop 0 limit
                  add          a0, t4, t1
sub_5_0_0_t:      lui          s4, 267267
                  slti         s6, gp, -1691
                  addi         s3, s3, 10 #update loop 0 counter
                  xori         t0, a4, 1614
                  nop
                  lui          t0, 656060
                  addi         s4, s0, 392
                  bltu         s3, a6, sub_5_0_0_t #branch for loop 0
                  add          a2, s7, s11
                  addi         s7, zero, 5 #init loop 0 counter
                  xori         sp, s6, -1418
                  andi         s11, a5, 587
                  sltu         a2, s5, t6
                  addi         a3, zero, 16 #init loop 0 limit
                  srl          t0, s10, zero
sub_5_1_0_t:      sltiu        a5, a7, -282
                  andi         a4, t5, 1116
                  addi         s7, s7, 2 #update loop 0 counter
                  sra          a5, s10, gp
                  sll          s11, tp, a6
                  xor          s4, s1, sp
                  bltu         s7, a3, sub_5_1_0_t #branch for loop 0
                  auipc        a6, 926493
                  slti         zero, t0, -628
                  auipc        a0, 501554
                  and          a1, a4, s3
                  bne          s8, t1, 6f
                  auipc        gp, 667913
                  addi         a2, t0, 1577
6:                xori         a3, s2, -1065
                  srli         a6, s2, 10
                  beq          sp, s8, 13f
                  xor          s3, t2, s5
                  blt          gp, gp, 28f
                  nop
                  xori         a2, zero, 1667
13:               sll          t4, sp, s3
                  xor          s6, s7, a0
                  andi         a6, a6, -290
                  bgeu         s4, a7, 20f
                  andi         zero, sp, -479
                  sll          s1, s5, ra
                  xor          t1, t2, s4
20:               or           gp, t4, s2
                  slti         s1, t2, -1485
                  srai         a3, a5, 23
                  auipc        t3, 800602
                  beq          s4, a2, 43f
                  add          s1, t0, a2
                  srai         s0, s7, 5
                  slti         a0, s8, 850
28:               lui          zero, 601585
                  or           tp, gp, s5
                  bge          s9, s7, 50f
                  and          t3, s3, sp
                  srl          a0, t5, t3
                  srli         s4, t0, 10
                  auipc        sp, 906449
                  srai         s0, gp, 12
                  bge          a3, s7, 37f
37:               lui          t4, 724341
                  ori          t1, tp, -1010
                  or           a0, gp, a4
                  bgeu         gp, t5, 50f
                  bge          t3, a2, 59f
                  nop
43:               beq          t0, a0, 53f
                  sra          t4, s0, s1
                  ori          a2, gp, 1768
                  nop
                  addi         s7, s5, 1
                  sltiu        a5, a0, 1070
                  bge          a6, a4, 62f
50:               nop
                  bge          sp, s2, 68f
                  xor          t1, t2, s6
53:               bge          t1, t1, 54f
54:               bne          tp, a1, 62f
                  sltiu        t1, s10, 1543
                  slli         s6, s7, 7
                  xori         s10, s7, 1684
                  bne          zero, a3, 74f
59:               bne          s5, s10, 68f
                  auipc        t3, 141040
                  bltu         s6, t5, 66f
62:               bne          ra, a7, 69f
                  or           tp, ra, s9
                  bgeu         a1, s9, 84f
                  srli         a5, zero, 8
66:               addi         s6, ra, 377
                  xori         a7, t6, 391
68:               srli         s7, s7, 29
69:               srai         a1, a1, 16
                  srl          a7, s2, s3
                  blt          a0, sp, 81f
                  sll          s4, ra, a3
                  nop
74:               bltu         s6, gp, 82f
                  nop
                  sub          a7, s6, s5
                  nop
                  slti         t4, t1, -328
                  nop
                  xor          t5, t3, a1
81:               srl          a7, t6, s9
82:               andi         s10, t2, 789
                  xor          s8, s9, a0
84:               bgeu         s8, a0, 97f
                  srai         tp, a0, 10
                  slt          s6, s1, t2
                  srl          a1, s6, s0
                  addi         zero, s11, -1086
                  xor          s1, s7, s4
                  srai         s5, a3, 4
                  bne          s1, a2, 106f
                  bgeu         a2, s2, 108f
                  sra          a6, t5, a5
                  nop
                  beq          a0, s8, 115f
                  sltu         gp, sp, t6
97:               slli         t3, ra, 24
                  slli         s10, s2, 24
                  add          gp, s0, a5
                  and          tp, s1, t3
                  or           s7, s10, a3
                  andi         s7, s11, 1354
                  slt          t3, s0, s10
                  srli         a2, s9, 8
                  sll          s3, s7, a0
106:              addi         a7, a4, -1551
                  beq          sp, s3, 124f
108:              bgeu         sp, s1, 124f
                  sra          t0, s7, gp
                  and          sp, a5, t1
                  srai         gp, a7, 25
                  srl          a6, s1, a2
                  sub          tp, a7, t5
                  or           a4, s3, s1
115:              bne          tp, a0, 124f
                  addi         s3, gp, 1302
                  xor          s1, a3, zero
                  slt          a6, s7, a1
                  auipc        s8, 955571
                  slli         ra, sp, 7
                  bltu         sp, s3, 124f
                  sll          ra, a5, t6
                  bge          t2, s10, 124f
124:              sll          a6, tp, t0
                  andi         s11, s7, 1414
                  xor          s5, s10, a6
                  srl          a5, s7, a7
                  or           s2, a6, s9
                  slti         a3, tp, -1294
                  lw           tp, 4(t6)
                  srai         ra, a0, 26
                  slt          s11, t6, zero
                  addi         t6, t6, 16
                  srai         s4, s10, 12
                  sll          s2, a1, s9
183:              addi x15, x4, 1
183:              jalr x15, x15, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x7, x31, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x24, 0x3 # BREAKPOINT
                  beq x19, x24, ebreak_handler
                  li x24, 0x8 # ECALL_UMODE
                  beq x19, x24, ecall_handler
                  li x24, 0x9 # ECALL_SMODE
                  beq x19, x24, ecall_handler
                  li x24, 0xb # ECALL_MMODE
                  beq x19, x24, ecall_handler
                  li x24, 0x1
                  beq x19, x24, instr_fault_handler
                  li x24, 0x5
                  beq x19, x24, load_fault_handler
                  li x24, 0x7
                  beq x19, x24, store_fault_handler
                  li x24, 0xc
                  beq x19, x24, pt_fault_handler
                  li x24, 0xd
                  beq x19, x24, pt_fault_handler
                  li x24, 0xf
                  beq x19, x24, pt_fault_handler
                  li x24, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x24, illegal_instr_handler
                  csrr x24, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x25, write_tohost
                  jalr x0, x25, 0

instr_fault_handler:
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x31, x7, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
