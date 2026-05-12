.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x4, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 1
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x5ea4d082
                  li x1, 0x80000000
                  li x2, 0x78dc200f
                  li x3, 0x0
                  li x5, 0x2f79c851
                  li x6, 0x47930ef7
                  li x7, 0xf4d06f18
                  li x9, 0xfe3b8110
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x12, 0x3169a5ac
                  li x13, 0x9
                  li x14, 0x7
                  li x15, 0x8
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0xfa8649b2
                  li x20, 0x73bc0184
                  li x21, 0xf97bbfaa
                  li x22, 0xfebf1902
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x80000000
                  li x27, 0xfd05752c
                  li x28, 0xa
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0xb
                  la x8, user_stack_end
main:             addi         a7, zero, 8 #init loop 0 counter
                  addi         t3, zero, 5 #init loop 0 limit
                  andi         a0, s5, 411
                  addi         t2, t0, 636
                  auipc        t5, 621756
main_0_0_t:       auipc        s7, 954171
                  lui          gp, 1041099
                  addi         a7, a7, -3 #update loop 0 counter
                  ori          s6, a3, 1527
                  bgeu         a7, t3, main_0_0_t #branch for loop 0
                  add          t0, s11, s3
                  and          t1, s3, sp
                  bltu         t2, t0, 14f
                  bne          s6, s8, 10f
                  add          t0, s0, a2
                  sltiu        s3, t3, 1553
                  nop
                  andi         a5, t4, 395
                  slli         a1, t6, 4
                  sll          ra, t6, s9
                  blt          t0, tp, 24f
10:               and          s9, a1, a0
                  sub          s6, s9, s6
                  bge          t1, s11, 22f
                  andi         a7, sp, -443
14:               or           s5, s8, a5
                  bgeu         t2, t5, 23f
                  lui          s9, 501159
                  la           a4, sub_1
                  xori         t4, a1, -668
                  slti         t3, s0, -919
                  sub          gp, t3, a7
                  addi         a4, a4, -345
                  xor          a5, a4, s2
                  add          s1, s0, ra
main_j1:          jalr         ra, a4, 346 #jump main -> sub_1
                  andi         s7, ra, 1383
                  slli         ra, ra, 13
                  nop
                  auipc        t0, 66207
                  beq          t5, t1, 21f
21:               or           t5, a3, sp
22:               nop
23:               xor          a3, a0, t6
24:               andi         s1, s2, 1826
                  and          s6, s8, a6
                  or           s7, a6, t4
                  addi         s7, s3, 1715
                  and          s5, a7, a3
                  nop
                  bne          a1, s3, 36f
                  blt          t2, a4, 32f
32:               andi         s10, zero, 507
                  srai         s5, t0, 7
                  xor          s8, a6, a1
                  xori         s6, s2, -585
36:               sltiu        s9, s6, -19
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         s1, t3, -1310
                  add          sp, t4, a4
                  slti         a7, t0, -167
                  srli         gp, t6, 16
                  bgeu         a4, s11, sub_4_stack_p
                  srli         gp, a2, 22
                  xor          t4, s8, zero
                  xor          s2, s3, s3
                  auipc        a5, 490246
sub_4_stack_p:    addi         s0, s0, -56
                  sub          t1, tp, t6
                  sw           ra, 4(s0)
                  xor          a1, a3, s7
                  addi         s6, zero, 0 #init loop 1 counter
                  sltu         s10, s9, t0
                  addi         ra, zero, 1 #init loop 1 limit
                  lui          s11, 292253
                  nop
sub_4_0_1_t:      or           a5, s8, s6
                  sltiu        t1, a1, -39
                  xori         a4, sp, -998
                  andi         a0, t6, 717
                  addi         s6, s6, 9 #update loop 1 counter
                  sltiu        s11, s5, -999
                  addi         t5, zero, -9 #init loop 0 counter
                  lui          zero, 395898
                  srl          a6, t0, sp
                  lui          s5, 898445
                  xori         a6, s3, -690
                  addi         t4, zero, 19 #init loop 0 limit
                  and          a4, a5, t0
sub_4_0_0_t:      andi         t3, s11, 1153
                  sra          gp, a0, a2
                  addi         t5, t5, 1 #update loop 0 counter
                  sub          t6, a0, s4
                  lui          a5, 183821
                  xor          gp, s2, a1
                  slt          a2, gp, a5
                  slti         s9, a1, 1589
                  addi         s5, s6, -1726
                  add          zero, sp, t2
                  and          a6, gp, a3
                  bne          t5, t4, sub_4_0_0_t #branch for loop 0
                  blt          s6, ra, sub_4_0_1_t #branch for loop 1
                  sltiu        a4, tp, -572
                  sub          t0, a4, a0
                  srl          s9, a2, a6
                  xori         a1, a5, -393
                  srai         s9, s4, 24
                  auipc        s10, 796556
                  bgeu         s2, s4, 6f
6:                nop
                  addi         t0, a3, 15
                  sltiu        ra, ra, -912
                  ori          t5, a0, 1396
                  andi         a6, a6, -1628
                  bgeu         a6, a6, 26f
                  nop
                  bltu         s1, a6, 22f
                  blt          a2, s8, 19f
                  sltiu        s7, s5, -1451
                  slt          a4, s2, t2
                  or           s11, a3, a5
                  bge          gp, tp, 37f
19:               nop
                  xor          t3, sp, a0
                  slt          s6, a6, ra
22:               or           t4, ra, tp
                  sltu         gp, s7, a5
                  srli         a6, s7, 6
                  sra          t1, a7, t2
26:               slt          a7, s5, tp
                  add          s11, sp, s4
                  sltiu        s3, tp, -259
                  or           t1, s8, s3
                  nop
                  srl          s5, a6, t4
                  bge          t3, a4, 46f
                  slti         t5, tp, -1927
                  or           t1, t2, tp
                  or           t3, a6, s10
                  sll          sp, s1, a6
37:               bne          s3, s5, 38f
38:               slti         ra, a3, -173
                  and          a3, a1, a7
                  srli         t4, s11, 22
                  sll          ra, a7, a1
                  add          s3, s10, a3
                  srai         a5, a3, 24
                  bge          a7, t3, 47f
                  bne          s8, s10, 58f
46:               slt          s7, s1, gp
47:               bne          s2, s8, 60f
                  add          a7, gp, s6
                  sll          s2, t3, t0
                  slti         s3, s8, 517
                  addi         s3, a1, -1627
                  xori         s3, a4, -1856
                  bgeu         s11, t5, 63f
                  bltu         s7, s4, 62f
                  addi         zero, zero, -1545
                  sltu         zero, t1, t5
                  sltiu        s8, gp, 46
58:               xor          s9, t0, s9
                  sra          sp, zero, s5
60:               srai         t6, t3, 2
                  slti         s10, s6, -70
62:               sra          a3, s5, s3
63:               sll          s11, s0, s8
                  add          zero, s8, a4
                  blt          s3, s10, 81f
                  sra          a3, t4, gp
                  auipc        t6, 583129
                  srli         s3, a3, 5
                  bltu         ra, s8, 81f
                  auipc        s9, 789851
                  blt          a7, s0, 76f
                  slli         a1, s9, 0
                  bgeu         t6, s5, 80f
                  addi         s8, a7, 458
                  bgeu         s7, t2, 81f
76:               ori          t1, ra, 812
                  slti         t2, tp, -801
                  lui          a2, 990456
                  bltu         a6, s9, 81f
80:               and          a7, ra, a3
81:               auipc        t1, 206095
                  xori         t0, a3, -519
                  lw           ra, 4(s0)
                  sll          a1, s6, s11
                  srl          t0, a3, a5
                  addi         s0, s0, 56
                  slli         s2, s1, 18
                  and          a0, s1, a4
                  srli         s1, s1, 12
                  slt          s10, s7, t0
136:              addi x7, x1, 0
136:              jalr x7, x7, 0
sub_3:            srai         zero, t2, 26
                  bge          t0, a7, sub_3_stack_p
sub_3_stack_p:    addi         s0, s0, -32
                  auipc        t0, 344367
                  sw           ra, 4(s0)
                  srai         s10, s6, 25
                  addi         a2, zero, 0 #init loop 0 counter
                  srli         s2, a6, 12
                  addi         s5, zero, -18 #init loop 0 limit
sub_3_2_0_t:      ori          a7, s2, 1521
                  nop
                  addi         a2, a2, -9 #update loop 0 counter
                  beq          a2, s5, sub_3_2_0_t #branch for loop 0
                  addi         a7, zero, -726
                  addi         t5, zero, 10 #init loop 0 counter
                  sub          a3, s10, s10
                  sra          s1, sp, a2
                  nop
                  or           t3, a2, t0
                  ori          s9, a0, -1867
                  nop
                  lui          a7, 752000
                  addi         s7, a2, 785
                  sra          s6, a1, t5
                  addi         a0, zero, 16 #init loop 0 limit
                  sll          sp, t0, gp
                  sub          zero, s10, s9
                  nop
                  xori         a4, sp, 1632
sub_3_1_0_t:      sltu         s6, s10, zero
                  auipc        gp, 713895
                  srai         t0, ra, 1
                  addi         t5, t5, 6 #update loop 0 counter
                  or           s10, a6, s8
                  slli         t2, s5, 16
                  andi         s3, tp, 1273
                  sltu         t6, s5, s4
                  srli         s11, t4, 18
                  blt          t5, a0, sub_3_1_0_t #branch for loop 0
                  slli         sp, t3, 20
                  addi         a1, zero, -9 #init loop 1 counter
                  addi         s10, zero, -16 #init loop 1 limit
                  xori         a6, ra, 1191
sub_3_5_1_t:      nop
                  addi         a1, a1, -1 #update loop 1 counter
                  lui          sp, 555177
                  addi         t4, zero, -2 #init loop 0 counter
                  srl          s11, s3, s6
                  addi         s6, zero, 3 #init loop 0 limit
                  andi         s8, s2, -1996
                  slt          t0, s2, t2
sub_3_5_0_t:      ori          s3, a5, -913
                  sra          t6, a2, t2
                  addi         t4, t4, 8 #update loop 0 counter
                  blt          t4, s6, sub_3_5_0_t #branch for loop 0
                  or           zero, s10, a3
                  slli         a3, s1, 11
                  sltu         s9, s10, t1
                  lui          s1, 36574
                  addi         gp, gp, -249
                  addi         a2, a0, 54
                  sltiu        ra, t6, 244
                  slt          s3, s10, s5
                  andi         sp, s5, 126
                  slt          t1, s0, a7
                  slt          ra, ra, s0
                  bge          a1, s10, sub_3_5_1_t #branch for loop 1
                  srl          s7, s10, ra
                  addi         s6, zero, 7 #init loop 0 counter
                  add          a2, sp, s0
                  xor          t1, s2, ra
                  srli         s10, s10, 27
                  sub          a0, s4, a7
                  srai         a2, s6, 11
                  lui          ra, 38749
                  slli         ra, t5, 23
                  addi         t6, zero, 11 #init loop 0 limit
                  srl          s5, a2, tp
                  xor          a6, a5, tp
                  sll          a0, t1, s2
                  andi         s3, zero, -1696
sub_3_18_0_t:     auipc        a1, 606545
                  addi         s6, s6, 7 #update loop 0 counter
                  sra          ra, gp, tp
                  addi         ra, s4, -419
                  xori         a1, a1, 378
                  srai         a2, tp, 3
                  and          t1, a2, s2
                  sll          t2, a6, a3
                  srl          s7, s8, a7
                  nop
                  xor          gp, a7, gp
                  addi         t2, s2, 12
                  xori         a4, sp, 749
                  blt          s6, t6, sub_3_18_0_t #branch for loop 0
                  slli         s7, sp, 20
                  addi         a6, zero, 2 #init loop 1 counter
                  sub          s7, s4, s1
                  slli         a0, a5, 11
                  slli         ra, t6, 14
                  xor          s7, a7, s8
                  addi         a7, zero, 7 #init loop 1 limit
sub_3_22_1_t:     sltu         t0, sp, a6
                  add          s2, s11, s10
                  addi         a6, a6, 3 #update loop 1 counter
                  slti         s9, t4, 656
                  sra          a0, tp, s0
                  sra          t6, s10, t1
                  slt          s8, t1, sp
                  ori          s3, a7, 1198
                  slli         s7, s4, 6
                  andi         a0, a2, 1645
                  auipc        s6, 273372
                  addi         t3, zero, -1 #init loop 0 counter
                  srl          s5, s7, s8
                  addi         a5, zero, 9 #init loop 0 limit
                  xor          sp, a3, ra
sub_3_22_0_t:     ori          s7, gp, -823
                  srai         sp, s3, 6
                  xori         t0, s10, -1215
                  addi         t3, t3, 10 #update loop 0 counter
                  sltiu        s8, s2, 910
                  srai         s6, s9, 7
                  bne          t3, a5, sub_3_22_0_t #branch for loop 0
                  slti         t4, zero, 1555
                  auipc        t4, 553327
                  bltu         a6, a7, sub_3_22_1_t #branch for loop 1
                  lui          gp, 90492
                  addi         gp, zero, 7 #init loop 1 counter
                  addi         s7, zero, 12 #init loop 1 limit
sub_3_9_1_t:      addi         s9, a0, 796
                  addi         gp, gp, 1 #update loop 1 counter
                  addi         t1, zero, 5 #init loop 0 counter
                  addi         s11, zero, -16 #init loop 0 limit
sub_3_9_0_t:      lui          a6, 139064
                  addi         t1, t1, -1 #update loop 0 counter
                  bge          t1, s11, sub_3_9_0_t #branch for loop 0
                  bltu         gp, s7, sub_3_9_1_t #branch for loop 1
                  sll          t4, a2, t3
                  addi         sp, zero, 8 #init loop 0 counter
                  lui          a3, 828519
                  ori          t4, s1, 825
                  add          a7, a7, s9
                  srai         s7, s2, 13
                  sub          t6, tp, t3
                  auipc        t5, 990048
                  or           a3, s10, t4
                  addi         s10, zero, -8 #init loop 0 limit
sub_3_11_0_t:     addi         a3, a2, -1703
                  lui          a3, 87607
                  slli         s3, a7, 2
                  xor          a4, a2, a0
                  nop
                  addi         sp, sp, -8 #update loop 0 counter
                  slli         s3, s3, 18
                  sltiu        a5, s5, 20
                  bne          sp, s10, sub_3_11_0_t #branch for loop 0
                  ori          gp, s10, 1656
                  addi         t1, zero, 9 #init loop 0 counter
                  lui          s10, 271949
                  andi         t6, zero, 460
                  xor          a7, a6, t4
                  sltiu        a6, t3, -1364
                  and          s10, t5, a7
                  addi         a2, zero, 9 #init loop 0 limit
                  srai         a5, gp, 17
                  or           sp, gp, s7
                  slli         s11, t6, 29
sub_3_12_0_t:     ori          t3, s7, -1124
                  addi         t1, t1, -8 #update loop 0 counter
                  xor          s8, s0, a3
                  bgeu         t1, a2, sub_3_12_0_t #branch for loop 0
                  srai         a7, t4, 20
                  addi         t3, zero, 10 #init loop 0 counter
                  addi         s6, zero, 10 #init loop 0 limit
sub_3_3_0_t:      lui          s11, 82315
                  srl          s11, t0, s0
                  addi         t3, t3, -8 #update loop 0 counter
                  xor          s3, a6, t0
                  bgeu         t3, s6, sub_3_3_0_t #branch for loop 0
                  srl          t5, zero, a6
                  addi         s7, zero, -1 #init loop 0 counter
                  srl          a7, a3, a0
                  sltiu        a4, s8, 1322
                  auipc        s2, 100156
                  addi         s8, zero, 19 #init loop 0 limit
                  srai         a3, s8, 16
                  nop
sub_3_4_0_t:      slt          s5, s10, t2
                  lui          s2, 950502
                  addi         s7, s7, 7 #update loop 0 counter
                  add          zero, t0, s0
                  ori          t1, s2, 647
                  sltu         s2, s10, a1
                  auipc        t5, 376762
                  bltu         s7, s8, sub_3_4_0_t #branch for loop 0
                  ori          a6, a7, -613
                  addi         a4, zero, 3 #init loop 0 counter
                  sltu         a5, t5, a1
                  srl          s2, a7, s9
                  slli         ra, a0, 28
                  srai         t1, s6, 25
                  ori          s9, s9, 921
                  sltiu        t4, a4, 1159
                  ori          s7, sp, 722
                  sub          s5, a3, a0
                  addi         a7, zero, 8 #init loop 0 limit
sub_3_6_0_t:      or           a5, ra, tp
                  sll          zero, t2, a5
                  add          t4, zero, s11
                  add          a2, s1, t5
                  lui          s11, 235945
                  ori          t6, s3, -1051
                  addi         a4, a4, 5 #update loop 0 counter
                  sra          s11, t0, s6
                  sub          t5, s2, t6
                  sub          t6, s6, t3
                  beq          a4, a7, sub_3_6_0_t #branch for loop 0
                  sra          s9, t1, t2
                  addi         a4, zero, 8 #init loop 0 counter
                  addi         s3, zero, 20 #init loop 0 limit
sub_3_23_0_t:     addi         zero, s6, -516
                  addi         a4, a4, 4 #update loop 0 counter
                  bltu         a4, s3, sub_3_23_0_t #branch for loop 0
                  xori         s9, s0, -259
                  addi         a5, zero, -7 #init loop 0 counter
                  xor          t3, s11, s4
                  xor          a2, t5, t5
                  sll          zero, t3, a4
                  srl          gp, s9, t6
                  srli         a6, s0, 28
                  addi         s6, zero, -17 #init loop 0 limit
                  and          a6, a6, s6
sub_3_8_0_t:      sub          s2, zero, s5
                  sltiu        t4, s0, -529
                  addi         a5, a5, -10 #update loop 0 counter
                  xor          t0, s2, a7
                  slt          t2, s0, t4
                  sll          a0, s4, ra
                  sll          s10, s7, s6
                  add          a2, s3, t0
                  or           s11, a5, s3
                  sltiu        t0, a5, -470
                  xori         s8, s1, -1587
                  slt          t4, s3, a1
                  srl          a4, t3, s11
                  slli         t1, a2, 8
                  sll          t2, gp, t5
                  xori         s11, t6, -1852
                  beq          a5, s6, sub_3_8_0_t #branch for loop 0
                  sltiu        t1, a7, 1291
                  addi         s9, zero, -8 #init loop 1 counter
                  addi         a0, zero, 10 #init loop 1 limit
sub_3_20_1_t:     and          t2, a6, t0
                  addi         s9, s9, 3 #update loop 1 counter
                  addi         t2, s3, -1857
                  addi         s7, zero, 3 #init loop 0 counter
                  addi         s3, zero, 14 #init loop 0 limit
sub_3_20_0_t:     sltiu        t4, a3, -987
                  addi         s7, s7, 5 #update loop 0 counter
                  bltu         s7, s3, sub_3_20_0_t #branch for loop 0
                  beq          s9, a0, sub_3_20_1_t #branch for loop 1
                  sltiu        t6, a5, 1518
                  addi         a3, zero, 10 #init loop 1 counter
                  xori         gp, s10, 934
                  auipc        s2, 628715
                  addi         t2, zero, 10 #init loop 1 limit
                  srai         s7, s1, 24
                  ori          a0, s2, 1708
sub_3_7_1_t:      sltiu        t1, s0, 1942
                  sltu         zero, s10, t5
                  sltu         a1, s11, a7
                  addi         a3, a3, -9 #update loop 1 counter
                  sltu         s9, s1, s8
                  addi         ra, zero, 2 #init loop 0 counter
                  slti         s11, s11, -1443
                  addi         s3, zero, 20 #init loop 0 limit
                  srai         t0, a7, 12
sub_3_7_0_t:      addi         a5, s10, 1907
                  slti         a6, s5, 1412
                  sra          a2, t4, s3
                  addi         ra, ra, 9 #update loop 0 counter
                  sub          zero, t4, t1
                  add          a5, a6, a1
                  lui          t3, 190418
                  addi         t4, s10, 382
                  slt          t3, ra, a2
                  slti         s8, s4, -757
                  srl          s1, ra, s5
                  beq          ra, s3, sub_3_7_0_t #branch for loop 0
                  slt          a7, a3, a1
                  sub          a2, s4, a3
                  sub          t0, s1, a0
                  and          a2, a3, a4
                  addi         a1, s6, -647
                  bgeu         a3, t2, sub_3_7_1_t #branch for loop 1
                  xori         a7, zero, 1930
                  addi         a0, zero, 8 #init loop 1 counter
                  xori         t1, t5, 1073
                  sltiu        a1, t4, -1994
                  sll          s7, s7, t6
                  andi         ra, s11, 813
                  addi         a6, zero, 5 #init loop 1 limit
                  slli         t4, a1, 6
sub_3_16_1_t:     sub          t5, a1, t1
                  addi         a0, a0, -3 #update loop 1 counter
                  auipc        a3, 546431
                  addi         s1, zero, -8 #init loop 0 counter
                  ori          s3, gp, -117
                  addi         s10, zero, 17 #init loop 0 limit
                  ori          a4, s5, -204
                  slli         s6, gp, 8
                  slli         s9, s5, 3
                  lui          s11, 907171
                  srli         a4, a1, 0
                  ori          s8, s0, -1155
                  and          a2, s7, s6
sub_3_16_0_t:     sltu         a1, s7, s11
                  and          s7, s8, gp
                  addi         s1, s1, 6 #update loop 0 counter
                  sltiu        a7, a4, 1600
                  sll          t1, a0, s1
                  sll          t5, s4, sp
                  bltu         s1, s10, sub_3_16_0_t #branch for loop 0
                  xori         t0, a2, 420
                  slti         s6, s3, 1585
                  sub          zero, a3, s8
                  nop
                  bgeu         a0, a6, sub_3_16_1_t #branch for loop 1
                  auipc        a5, 36498
                  addi         a6, zero, 8 #init loop 0 counter
                  xor          s1, a2, s9
                  addi         t0, zero, 17 #init loop 0 limit
sub_3_14_0_t:     sltu         s2, s10, t4
                  andi         gp, s8, -1070
                  add          ra, s8, a6
                  addi         a6, a6, 9 #update loop 0 counter
                  slti         gp, s11, 2021
                  srai         a4, t6, 23
                  sll          s6, t1, s9
                  srai         t5, tp, 2
                  add          s2, s4, s2
                  auipc        t3, 430499
                  auipc        s9, 269340
                  nop
                  slti         s2, s9, 1268
                  bne          a6, t0, sub_3_14_0_t #branch for loop 0
                  slti         s7, ra, 1470
                  addi         s6, zero, 10 #init loop 1 counter
                  xori         s8, s11, -1129
                  addi         s2, zero, 19 #init loop 1 limit
                  add          t1, s0, a7
sub_3_24_1_t:     ori          t3, sp, -1533
                  sra          t6, t4, s11
                  lui          a6, 333902
                  addi         s6, s6, 9 #update loop 1 counter
                  addi         a5, zero, 3 #init loop 0 counter
                  nop
                  addi         s10, s11, -1968
                  sll          s7, s6, s7
                  addi         gp, zero, 3 #init loop 0 limit
                  sltiu        s7, t1, 1902
sub_3_24_0_t:     or           s10, t3, s4
                  xori         a1, t3, 1697
                  addi         a5, a5, -2 #update loop 0 counter
                  or           s8, t4, s11
                  lui          a0, 879264
                  srai         t4, zero, 2
                  bgeu         a5, gp, sub_3_24_0_t #branch for loop 0
                  bne          s6, s2, sub_3_24_1_t #branch for loop 1
                  xor          t2, s10, s4
                  srl          s9, a4, zero
                  sll          s5, s1, zero
                  srai         a3, a5, 13
                  sub          t5, s2, t2
                  beq          s8, s11, 14f
                  sra          t3, a7, t1
                  or           a2, t5, gp
                  sub          s8, s5, t0
                  and          s8, a0, a3
                  and          a2, t6, s11
                  xor          t4, s3, t5
                  slti         t6, s7, 1192
                  bgeu         t2, t6, 21f
                  xori         a7, s0, -1186
14:               sltu         a6, t4, s8
                  andi         t4, s0, -1529
                  andi         t2, a1, -347
                  lui          s1, 557307
                  sll          s3, s1, a7
                  slli         a6, t0, 24
                  lui          s8, 217276
21:               or           zero, a2, s9
                  sltiu        s9, s6, -464
                  sltu         s11, t6, s6
                  slli         t4, t1, 1
                  srli         gp, t4, 20
                  sltiu        zero, s8, -1374
                  and          a4, gp, s11
                  slti         a1, s4, 1300
                  sll          a0, s1, s5
                  auipc        s2, 789882
                  bne          a4, t2, 38f
                  add          s10, s7, a7
                  auipc        s10, 896774
                  srl          a5, s2, a3
                  andi         a7, s6, 78
                  slti         s8, t3, 1907
                  sub          s6, s0, t4
38:               bge          a7, s5, 47f
                  sltu         s7, a4, s8
                  sltiu        s9, s7, -2046
                  add          t0, a3, s1
                  sll          s10, s10, s1
                  add          ra, t4, a3
                  xor          s3, a2, a1
                  andi         s8, s0, 1598
                  srli         t0, a3, 29
47:               slti         a7, t0, 1901
                  bge          s5, s5, 67f
                  auipc        a3, 868765
                  addi         t6, t4, -253
                  ori          t3, s1, -1350
                  srai         a3, sp, 17
                  srai         a7, s0, 0
                  srai         t4, a2, 7
                  bltu         s0, a0, 75f
                  andi         s10, a6, 589
                  lui          s7, 450633
                  add          zero, s1, sp
                  sltiu        a7, t3, 411
                  slt          t4, t0, a5
                  and          a3, t5, a0
                  sltu         s8, t6, a4
                  add          sp, s5, gp
                  srai         s7, a6, 18
                  and          a0, s1, s7
                  xori         a2, a1, -830
67:               bne          s3, s3, 68f
68:               sltiu        t4, s8, 579
                  bge          a2, gp, 70f
70:               bltu         s5, t6, 90f
                  bltu         t1, s8, 83f
                  bge          t0, t1, 85f
                  blt          a7, t4, 75f
                  sltu         a5, s3, ra
75:               sra          t5, s8, a3
                  xor          s1, s4, t3
                  slti         a6, t6, 1526
                  bltu         s8, s7, 87f
                  bltu         s4, s0, 80f
80:               addi         a0, t0, 283
                  addi         a3, t2, -1217
                  andi         s10, a4, -374
83:               srli         a0, a2, 17
                  beq          t1, t6, 90f
85:               ori          ra, s11, -913
                  beq          a3, s10, 87f
87:               sll          s11, t1, s10
                  xor          s11, a1, s4
                  addi         gp, a4, 582
90:               andi         s6, zero, 1437
                  srai         gp, gp, 17
                  slti         zero, s8, 1871
                  ori          zero, t0, 1415
                  sltu         s11, s6, t5
                  sltu         a1, s9, s7
                  sub          s3, t0, s2
                  sltiu        s5, t5, 769
                  sra          sp, s9, t0
                  srl          a4, s3, a7
                  auipc        t6, 610987
                  blt          s7, a4, 107f
                  bltu         s11, s3, 103f
103:              srli         s6, sp, 11
                  nop
                  or           s6, t3, gp
                  bltu         s3, t5, 126f
107:              xori         t2, ra, 294
                  bne          t2, a5, 109f
109:              bltu         zero, t2, 116f
                  srai         s6, t2, 23
                  slli         a3, s10, 5
                  srai         s6, t6, 9
                  and          t1, a5, a6
                  bgeu         s11, a6, 121f
                  ori          t2, tp, 444
116:              auipc        t3, 152788
                  lui          t4, 249129
                  bltu         s11, s9, 133f
                  addi         a4, t0, -982
                  sltu         a2, s6, s9
121:              xori         ra, a1, 165
                  bne          s0, sp, 123f
123:              andi         s7, s6, 597
                  xori         s1, s2, 1933
                  blt          tp, ra, 135f
126:              lui          t1, 275386
                  sltu         s8, s1, sp
                  xor          a4, a0, zero
                  sra          a6, s9, t5
                  xor          s8, s4, s10
                  sra          t5, s2, t6
                  srli         a0, tp, 16
133:              add          s6, a1, a7
                  srli         s2, a6, 7
135:              auipc        gp, 457668
                  andi         s11, s0, 1739
                  slli         s11, s8, 2
                  add          s3, a3, t4
                  nop
                  bltu         a6, s7, 147f
                  bgeu         t5, s6, 149f
                  andi         t3, zero, 813
                  sub          a6, s0, a2
                  srai         s3, t2, 2
                  srl          s5, s9, s3
                  sra          t5, s4, t2
147:              addi         t5, t5, -306
                  sra          t5, s1, s8
149:              ori          sp, a2, 1219
                  slli         sp, s3, 2
                  add          a2, s6, t4
                  bge          s9, a2, 161f
                  srli         s5, t2, 12
                  srl          s3, tp, s3
                  xor          a5, ra, t0
                  and          a1, t1, a7
                  xori         ra, a2, -1323
                  srl          s11, a0, t6
                  auipc        ra, 171368
                  bgeu         s7, s8, 165f
161:              srl          a0, s7, s7
                  lui          zero, 655792
                  bltu         a4, s7, 175f
                  xor          a2, a2, s10
165:              bltu         zero, a4, 174f
                  lui          a0, 822672
                  bge          t5, zero, 182f
                  bne          s10, a4, 176f
                  xori         s11, t1, 151
                  bltu         zero, a7, 171f
171:              srl          s7, a2, a7
                  slt          ra, t6, a2
                  sltu         t2, ra, zero
174:              sltu         zero, t3, s7
175:              auipc        s1, 692435
176:              slt          t0, s10, s7
                  blt          s0, t2, 197f
                  xori         a4, s4, 851
                  blt          a5, gp, 186f
                  sub          gp, s1, t1
                  sltiu        ra, s4, 1758
182:              xor          t0, s1, s3
                  andi         s8, s4, 749
                  blt          s5, sp, 194f
                  bge          a5, s1, 191f
186:              and          a0, a2, a3
                  srl          a7, gp, t2
                  nop
                  xori         ra, s9, -1045
                  nop
191:              bgeu         s2, s7, 204f
                  beq          s2, s4, 193f
193:              sub          s5, t6, t1
194:              ori          s6, sp, -299
                  lui          s5, 850093
                  sltu         s6, t4, t1
197:              bgeu         t5, a2, 203f
                  or           a0, s5, t5
                  slli         s7, a3, 8
                  nop
                  andi         t5, t4, 1114
                  or           a4, t4, tp
203:              lui          t4, 825364
204:              auipc        t5, 740357
                  beq          s4, a2, 225f
                  slt          ra, t1, s3
                  andi         s9, a5, -811
                  ori          t1, s10, 1643
                  addi         s9, t4, -1589
                  andi         t4, s8, 716
                  sltu         a5, t0, gp
                  xori         a4, s7, -1251
                  add          a6, s7, zero
                  sll          a4, s0, t6
                  srl          s5, t5, sp
                  slt          t0, s11, t0
                  blt          a0, s9, 226f
                  nop
                  or           ra, s4, tp
                  auipc        a1, 175669
                  auipc        a5, 265371
                  srai         a2, a5, 0
                  sub          a5, s9, a3
                  bge          a0, s4, 225f
225:              lui          s8, 553960
226:              slli         t0, s2, 14
                  and          s9, tp, s10
                  ori          a3, t0, -1992
                  slti         t6, s3, 1227
                  or           s7, s5, s3
                  sll          t2, tp, t5
                  bgeu         s6, t2, 239f
                  slli         t1, t3, 6
                  blt          tp, s9, 236f
                  or           s9, s7, s4
236:              sltu         s1, t2, s2
                  xori         t3, s3, -1850
                  add          a5, s9, a5
239:              srl          s1, s0, s5
                  or           s5, s3, gp
                  srli         a7, sp, 12
                  auipc        t4, 380019
                  lui          t0, 145122
                  sra          s9, s11, sp
                  srl          sp, a2, s6
                  sra          a7, s4, a5
                  srai         t2, s1, 25
                  sra          a2, a7, a4
                  blt          t2, t1, 261f
                  and          s5, a4, t2
                  addi         a4, a6, -850
                  ori          s5, a6, -1650
                  sltiu        s9, ra, 372
                  slli         s10, t2, 15
                  sra          s2, a2, s10
                  addi         s1, a6, -848
                  bgeu         s11, s0, 266f
                  srl          a0, s1, s7
                  nop
                  sll          a5, t3, t6
261:              sub          a6, s5, tp
                  slt          a7, s0, s2
                  and          a6, a7, a3
                  beq          a7, s5, 284f
                  sra          a7, t3, t1
266:              andi         t4, tp, -1161
                  slti         t4, a4, 889
                  sub          gp, s1, s6
                  add          a0, t2, a5
                  auipc        a2, 377217
                  or           a0, a3, t1
                  xori         t6, t0, 821
                  and          s3, t6, ra
                  bne          s11, t6, 284f
                  nop
                  srl          s5, t1, s0
                  ori          ra, s3, 574
                  ori          s7, t1, -1243
                  lui          t6, 357304
                  lui          zero, 755018
                  sra          s7, s2, t2
                  addi         s5, a0, 2004
                  add          t2, s5, t4
284:              srl          a5, a0, a4
                  ori          t2, a0, -1411
                  addi         a5, s6, -129
                  slt          ra, a1, a7
                  andi         a2, s11, 626
                  slti         ra, a7, -962
                  andi         a2, s0, 1690
                  blt          s4, a2, 298f
                  nop
                  sltiu        s1, t0, 328
                  addi         s1, tp, 799
                  srli         a5, ra, 13
                  blt          a3, sp, 297f
297:              bne          t6, a6, 298f
298:              sltu         t6, a4, t3
                  or           a4, s3, tp
                  auipc        s6, 411658
                  and          s9, t4, ra
                  sltiu        ra, ra, -407
                  sll          a4, s1, gp
                  srli         t2, s8, 28
                  xori         sp, sp, -1032
                  andi         a5, s6, 264
                  ori          ra, s0, -345
                  slt          sp, a1, s11
                  bgeu         tp, a4, 316f
                  srli         s2, s2, 10
                  lui          t4, 1016209
                  sll          s8, a3, a2
                  nop
                  or           a7, t3, a5
                  xori         s8, a5, -1583
316:              nop
                  andi         a2, a4, 735
                  bne          a7, s2, 319f
319:              sub          t6, t4, a4
                  sltiu        s1, sp, 356
                  srai         s1, s8, 13
                  sltiu        a7, tp, -199
                  srli         ra, s6, 7
                  ori          t2, s2, -215
                  srai         sp, s5, 2
                  srli         s3, t2, 26
                  sltu         s10, gp, s0
                  srli         t1, s4, 4
                  bltu         a5, t5, 330f
330:              sltu         a2, a2, s5
                  sltiu        s7, a1, -564
                  blt          s6, a5, 337f
                  sub          gp, a4, s11
                  auipc        s3, 111302
                  and          s8, a2, s7
                  sub          s2, t0, s5
337:              add          t5, a4, a1
                  srli         s7, tp, 1
                  sll          s5, t5, t2
                  add          a7, t0, t0
                  bgeu         t4, s8, 350f
                  slti         sp, s10, 1380
                  sra          t0, a2, t6
                  bne          t3, s2, 363f
                  addi         s7, gp, 1509
                  bltu         t3, s10, 358f
                  slli         a7, a6, 28
                  sltu         t3, a4, sp
                  lui          s1, 67897
350:              bltu         a2, s10, 351f
351:              bgeu         t0, s1, 352f
352:              bltu         t1, t6, 361f
                  lui          zero, 20681
                  sra          t1, s4, s1
                  and          t2, a7, s8
                  lui          gp, 959321
                  bgeu         t4, t4, 377f
358:              bltu         s10, s3, 373f
                  bgeu         s9, s8, 372f
                  add          a1, s1, s11
361:              sll          a7, s1, s1
                  bge          gp, s2, 370f
363:              slti         t3, t3, -1513
                  sra          s10, gp, s3
                  slt          t6, a6, s3
                  bgeu         ra, s11, 367f
367:              blt          t3, t2, 387f
                  sltu         ra, a3, t4
                  auipc        t3, 804964
370:              or           zero, tp, s9
                  slt          a2, ra, sp
372:              or           s3, s6, a5
373:              sll          a5, a5, a6
                  or           a2, t2, s4
                  srl          t1, s3, a7
                  slti         t0, t4, -1276
377:              slt          ra, t3, s6
                  slli         a0, t3, 31
                  blt          t1, t2, 385f
                  addi         s3, s8, 835
                  sltu         zero, a3, a2
                  blt          t1, t3, 388f
                  bltu         s0, t2, 392f
                  sltu         a3, a4, t4
385:              lui          zero, 389014
                  beq          t6, s6, 406f
387:              beq          a2, t3, 394f
388:              sll          a3, s1, s4
                  srl          a6, t5, s6
                  sll          t6, s0, s11
                  and          a5, gp, a4
392:              bltu         s4, a0, 404f
                  srl          a3, s9, a3
394:              srai         s8, s1, 0
                  slti         zero, a4, -504
                  sub          s3, s2, s10
                  sltu         a0, a6, s9
                  nop
                  sll          a3, s5, s5
                  add          a0, a3, tp
                  xori         t3, a2, 1993
                  lui          s7, 546873
                  bltu         t1, a6, 412f
404:              bltu         t5, s5, 411f
                  xori         t5, s2, -951
406:              sub          a6, s6, t3
                  bgeu         t5, zero, 412f
                  beq          a0, a1, 415f
                  bgeu         zero, s2, 411f
                  beq          s6, s0, 411f
411:              slt          s5, s5, t6
412:              bltu         s8, s6, 424f
                  srli         t0, s5, 29
                  lui          a4, 277543
415:              add          t0, s8, s4
                  bge          t1, s1, 417f
417:              beq          t6, t4, 436f
                  slti         s7, t2, 623
                  srli         s8, sp, 29
                  or           a7, t0, t6
                  slti         t4, zero, 331
                  beq          zero, tp, 423f
423:              bgeu         s8, s1, 433f
424:              bgeu         s4, a6, 434f
                  lui          sp, 984123
                  blt          a5, s10, 427f
427:              add          a7, s6, a2
                  addi         ra, a5, -457
                  sltiu        a4, a7, 1070
                  sltu         a4, s8, a0
                  or           t5, t2, sp
                  or           a5, s5, s11
433:              add          a4, t2, s2
434:              and          s8, a3, s6
                  slli         t6, t4, 11
436:              srli         a1, s1, 14
                  sltiu        s9, s4, 690
                  sub          zero, s5, a2
                  bne          s11, s3, 448f
                  blt          a3, a7, 447f
                  bge          a1, s8, 450f
                  bgeu         s5, a0, 454f
                  slti         t3, s6, 81
                  sub          a4, s3, zero
                  xori         a1, s7, -1674
                  add          a5, s10, s11
447:              lui          a0, 255955
448:              slli         s5, a4, 4
                  addi         t2, t2, -337
450:              xori         t2, sp, -259
                  srl          t5, t6, s11
                  sltu         a3, s6, a4
                  bge          a2, t3, 461f
454:              andi         a3, t2, 800
                  add          s8, a4, s7
                  bne          s5, zero, 461f
                  sra          a3, a5, a5
                  bge          t2, s2, 465f
                  sra          zero, t0, t2
                  ori          a4, s5, 1626
461:              beq          tp, t0, 473f
                  nop
                  lui          gp, 455373
                  nop
465:              srl          s6, a0, s1
                  beq          t5, s5, 472f
                  sra          s10, s4, zero
                  srl          s1, a6, s9
                  slli         zero, t1, 29
                  lui          s8, 566058
                  slt          t3, s6, s6
472:              andi         t1, s4, -1631
473:              slli         s3, a0, 24
                  slt          s10, s4, tp
                  add          s9, a6, s2
                  bltu         s3, t0, 485f
                  slti         t6, zero, 1779
                  bne          a1, a2, 485f
                  andi         t0, zero, 1529
                  bgeu         s5, s10, 481f
481:              ori          s8, a3, 1860
                  srai         t6, s10, 12
                  slt          s9, a2, s8
                  sra          s1, t5, s10
485:              lui          s9, 152080
                  nop
                  srl          a7, ra, s8
                  bge          a1, t1, 489f
489:              bne          t1, t5, 490f
490:              bge          tp, t4, 492f
                  srl          t0, a4, s2
492:              sltiu        t2, t5, 936
                  srl          s8, t6, s0
                  srai         t2, a7, 31
                  or           s1, a4, t0
                  sltiu        s5, sp, -381
                  and          a7, s8, a0
                  ori          a2, zero, 565
                  sra          t5, a5, s2
                  srai         t5, s9, 16
                  srli         s9, gp, 1
                  beq          s3, s1, 509f
                  sra          s3, s7, a1
                  slti         zero, s2, 904
                  nop
                  bltu         s11, t4, 515f
                  sra          t0, s10, s11
                  bge          s2, s3, 518f
509:              sltu         s1, a7, t1
                  sll          a0, s2, t6
                  addi         a5, s5, 98
                  auipc        t3, 1034924
                  xori         a7, t3, -935
                  bgeu         t5, a6, 527f
515:              sub          t5, a0, s9
                  ori          s11, a5, 908
                  nop
518:              auipc        s3, 16357
                  nop
                  sub          a5, a4, t1
                  srl          a3, a2, s10
                  auipc        sp, 211738
                  srli         t5, t5, 23
                  xori         s6, a0, -1792
                  bge          a2, zero, 526f
                  addi         t3, zero, -9 #init loop 0 counter
                  xori         t0, a3, 1305
                  sll          s3, t2, a3
                  sll          s2, s5, tp
                  addi         s11, zero, -6 #init loop 0 limit
                  sra          zero, s7, a2
                  slt          t5, a7, zero
sub_3_13_0_t:     sltiu        a1, sp, -279
                  srai         t6, a4, 2
                  slli         s6, tp, 3
                  addi         a2, zero, 377
                  nop
                  slt          s9, t4, t4
                  addi         t3, t3, 1 #update loop 0 counter
                  sra          s3, s2, a7
                  slti         a0, a5, -1603
                  sra          s1, gp, a1
                  andi         s9, t6, -1210
                  sub          a2, ra, s4
                  slli         a2, a6, 1
                  andi         s1, t1, 766
                  auipc        a2, 949266
                  bne          t3, s11, sub_3_13_0_t #branch for loop 0
                  or           t4, a6, t4
526:              bne          s4, t2, 546f
527:              add          s8, gp, s9
                  srli         s10, t2, 20
                  slli         s9, s9, 24
                  blt          t1, a6, 539f
                  slli         s10, tp, 9
                  slt          s8, ra, gp
                  sra          t0, tp, a3
                  sltu         t2, tp, s1
                  slti         a1, s9, 1406
                  bltu         ra, a2, 537f
537:              andi         t4, s7, 1313
                  sub          a7, gp, s1
539:              sll          s11, s10, sp
                  srai         a0, s8, 5
                  auipc        a3, 119702
                  bne          a3, t4, 548f
                  ori          t3, zero, 1134
                  sltu         s9, tp, a2
                  and          s1, t2, ra
546:              and          zero, ra, s3
                  or           a5, s9, t3
548:              or           a5, s2, s7
                  srli         t4, s0, 1
                  sra          s7, a6, sp
                  bltu         tp, t6, 571f
                  addi         a6, zero, -884
                  bltu         t0, s8, 568f
                  xor          t5, a7, s1
                  or           s2, t4, gp
                  slli         s10, a4, 22
                  bgeu         a7, a4, 576f
                  andi         a7, s11, -551
                  sltiu        t0, s6, -2048
                  slti         s9, zero, 1911
                  bgeu         s6, s8, 562f
562:              srl          t6, sp, ra
                  sltiu        a6, s5, 1089
                  lui          sp, 964827
                  bne          a2, s3, 585f
                  bgeu         s6, s4, 567f
567:              addi         s3, s10, 1626
568:              add          t2, s6, t0
                  xor          a4, s10, s0
                  lui          s6, 483066
571:              bltu         s11, sp, 578f
                  beq          gp, t6, 582f
                  bgeu         s10, s0, 574f
574:              bltu         tp, t6, 575f
575:              addi         a2, a1, -1010
576:              slt          t6, t0, s8
                  lui          s3, 46576
578:              and          t5, s0, t6
                  srl          t0, a7, t4
                  bge          s2, s6, 589f
                  slli         t4, t1, 1
582:              bgeu         t3, t4, 602f
                  xor          sp, zero, s4
                  and          a5, s3, s11
585:              andi         a4, tp, 1574
                  add          t4, s1, a4
                  bge          t3, s10, 592f
                  bgeu         s6, s5, 597f
589:              bge          s0, s6, 590f
590:              bge          sp, s5, 591f
591:              srli         a6, t6, 9
592:              blt          gp, s0, 605f
                  sll          s8, a0, s0
                  srli         s11, s3, 22
                  srli         zero, a6, 5
                  xori         s1, s2, 1431
597:              sll          s8, s8, a6
                  srai         s3, s3, 14
                  xori         s8, s1, 1973
                  and          t6, t6, t3
                  lui          zero, 826845
602:              sltiu        t6, t6, -1256
                  srli         s6, a5, 12
                  addi         t6, s8, -1136
605:              sra          s8, t6, s4
                  sltu         gp, s3, s1
                  bne          s7, a0, 608f
608:              beq          s1, s8, 628f
                  bgeu         a2, s10, 619f
                  bgeu         t5, sp, 618f
                  ori          a7, s1, -338
                  srai         s3, s11, 6
                  sltu         a5, s3, zero
                  add          s5, s7, s10
                  lui          a1, 635247
                  andi         s10, s3, 946
                  slti         a4, s6, 1775
618:              lui          zero, 84511
619:              ori          t6, t5, 378
                  slt          a0, t0, s9
                  sltu         gp, a4, t0
                  sltu         a6, s9, a7
                  addi         t5, s5, -1918
                  addi         s11, s4, -963
                  sub          a4, sp, t1
                  and          a4, tp, ra
                  bltu         a0, t1, 634f
628:              ori          t3, s2, -516
                  sra          s3, a2, tp
                  sll          t3, s6, s6
                  slt          gp, s1, gp
                  and          t5, s4, s9
                  addi         t2, zero, 9 #init loop 1 counter
                  andi         zero, t6, -1737
                  sltiu        t3, a5, -56
                  addi         s2, zero, 12 #init loop 1 limit
                  xori         t3, s6, 503
sub_3_15_1_t:     ori          s1, a7, 1335
                  or           s9, s7, tp
                  addi         t2, t2, 4 #update loop 1 counter
                  nop
                  sltiu        t0, s6, 347
                  auipc        s6, 197236
                  auipc        s9, 75799
                  addi         s10, zero, -9 #init loop 0 counter
                  addi         t5, zero, 5 #init loop 0 limit
                  sltu         ra, s1, a4
sub_3_15_0_t:     xor          s6, t5, t0
                  addi         s10, s10, 9 #update loop 0 counter
                  auipc        s5, 290727
                  addi         a0, gp, -1629
                  nop
                  srl          ra, a5, t2
                  sub          ra, s6, s1
                  sll          a7, s0, t0
                  blt          s10, t5, sub_3_15_0_t #branch for loop 0
                  lui          t1, 834220
                  xori         t4, a1, 855
                  srl          a7, t5, a0
                  blt          t2, s2, sub_3_15_1_t #branch for loop 1
                  xor          s9, s2, s8
                  slli         s11, a6, 9
634:              bgeu         t1, tp, 643f
                  srli         t0, t2, 31
                  andi         s8, a6, 215
                  bne          a0, s8, 646f
                  srl          t2, a4, sp
                  and          a2, a6, t0
                  lui          t4, 61806
                  bgeu         s3, tp, 656f
                  and          a7, s4, s5
643:              sra          a6, a4, a4
                  addi         s10, sp, -251
                  xori         sp, a7, -291
646:              bltu         s11, a3, 647f
647:              add          s2, t2, t4
                  sra          s8, t5, s1
                  srai         a2, t3, 29
                  sltiu        sp, gp, -924
                  lui          s6, 945958
                  bgeu         ra, t2, 664f
                  ori          s7, s8, -192
                  slti         sp, t4, -1572
                  sra          t3, s4, a6
656:              slti         a2, a4, 555
                  sub          s10, t3, s1
                  srl          s2, a5, ra
                  auipc        s8, 388458
                  andi         a0, a7, -291
                  bne          s8, s9, 668f
                  bne          a0, s8, 663f
663:              sra          a5, tp, t3
664:              or           s1, s1, s6
                  nop
                  add          s11, s3, a5
                  and          a5, s3, t1
668:              beq          t2, t3, 674f
                  and          s10, a6, a7
                  or           s7, a2, a3
                  addi         a4, s11, 1213
                  sub          gp, s0, zero
                  xori         t0, a6, 1669
674:              ori          a7, zero, -85
                  add          s5, zero, a4
                  slli         a0, a7, 23
                  sll          a5, s10, a0
                  sll          t6, s3, s2
                  andi         a5, s9, -212
                  sltu         t5, s7, s7
                  slt          s8, t6, tp
                  bgeu         t6, t2, 689f
                  ori          s10, a0, -1268
                  addi         s9, s7, -830
                  addi         s9, a5, -1948
                  sub          gp, sp, ra
                  srl          a7, a3, s8
                  xori         s5, a5, -1056
689:              lui          s5, 910161
                  blt          t3, sp, 702f
                  sra          s9, a6, a0
                  sub          s5, t5, a4
                  lui          a3, 52453
                  bge          sp, t1, 713f
                  beq          t2, t3, 697f
                  xori         a0, s3, 1967
697:              srai         a5, a3, 0
                  sltiu        s1, s0, -1396
                  nop
                  sltu         a1, t1, a5
                  auipc        sp, 268136
702:              sra          a7, s0, t4
                  slti         s11, s10, 1092
                  addi         t3, zero, -9 #init loop 0 counter
                  sll          ra, t5, a4
                  addi         t2, zero, -9 #init loop 0 limit
                  sub          s6, t3, gp
sub_3_21_0_t:     addi         t1, a0, -46
                  sll          t6, s2, a1
                  addi         t3, t3, -7 #update loop 0 counter
                  lui          sp, 885799
                  bge          t3, t2, sub_3_21_0_t #branch for loop 0
                  srl          ra, a7, t4
                  nop
                  ori          t1, s6, -1940
                  slli         t3, t3, 1
                  xori         s5, s6, 805
                  srl          a6, s10, s11
                  andi         s8, a1, 656
                  nop
                  auipc        s1, 160679
                  andi         s6, sp, 171
713:              sub          zero, s3, t5
                  slti         sp, s4, 584
                  srli         s1, a2, 12
                  bgeu         t5, s1, 726f
                  sub          a6, sp, a2
                  ori          s3, s5, 273
                  slti         t3, ra, -1700
                  or           t2, a1, a1
                  slli         gp, a2, 4
                  srl          a4, a6, s11
                  or           s9, s10, s1
                  ori          s1, t5, 1686
                  addi         t4, s6, 300
726:              bgeu         a7, t0, 746f
                  slti         s11, tp, -1663
                  sltu         s3, a3, t5
                  sub          t1, a6, t0
                  sra          s6, s4, s1
                  andi         t3, a7, 594
                  blt          t1, s6, 738f
                  or           t3, s3, s5
                  add          t2, s8, t4
                  srai         t1, s2, 0
                  slti         s11, tp, -393
                  add          s2, t1, t6
738:              xori         a4, s1, -1418
                  slli         s8, a3, 17
                  sra          t2, ra, a6
                  beq          ra, a1, 748f
                  bgeu         s11, a2, 752f
                  blt          a0, a7, 750f
                  xor          sp, s1, s5
                  ori          a3, t4, -1932
746:              and          a1, s8, a4
                  bne          a5, t6, 760f
748:              srli         t4, s7, 20
                  slli         t3, a7, 18
750:              beq          t5, s7, 756f
                  bge          s5, s6, 760f
752:              auipc        ra, 983942
                  slt          s7, zero, t4
                  srli         t2, a2, 23
                  nop
756:              andi         s8, s4, 26
                  bltu         s6, a7, 776f
                  nop
                  bne          a5, a5, 779f
760:              nop
                  srli         a0, a0, 8
                  sub          a3, a7, a0
                  slli         a1, a6, 11
                  add          t0, a3, ra
                  slti         s3, s7, 471
                  auipc        s7, 133727
                  sltiu        s5, t5, 422
                  blt          t1, t0, 780f
                  sll          a4, a6, t2
                  srl          s6, gp, s5
                  or           a6, s10, ra
                  blt          t1, gp, 779f
                  blt          sp, sp, 774f
774:              slt          s2, sp, s8
                  nop
776:              xori         s3, a2, -668
                  and          a2, a3, s6
                  sra          t0, a0, t6
779:              bgeu         a1, t6, 794f
780:              sltu         t5, t6, a1
                  slti         s7, gp, 853
                  andi         s1, s4, -252
                  srli         a2, a2, 30
                  ori          a4, s5, 2022
                  sra          ra, s10, t6
                  sra          s8, s4, s1
                  andi         t3, t5, 1239
                  sra          a5, s3, sp
                  sll          zero, s6, s1
                  addi         a5, t5, -507
                  slti         t3, t5, 1218
                  bge          t3, gp, 799f
                  bltu         t3, a3, 799f
794:              lui          s7, 733650
                  bltu         a4, s5, 796f
796:              sll          a3, s10, s10
                  or           a6, s5, a3
                  srl          s1, t1, a6
799:              slti         t2, sp, 1176
                  lui          t1, 503483
                  lui          a6, 870648
                  and          t2, s1, a0
                  slti         a0, s10, -1000
                  bge          s5, s11, 816f
                  addi         ra, s7, -1104
                  sra          s5, s0, s1
                  addi         s3, zero, -1 #init loop 1 counter
                  slti         a4, s4, 1447
                  sll          s5, a2, s9
                  and          s10, s10, t5
                  addi         a1, zero, 18 #init loop 1 limit
sub_3_0_1_t:      sub          s10, t2, a2
                  addi         s3, s3, 3 #update loop 1 counter
                  srli         s6, a3, 4
                  addi         s2, zero, -3 #init loop 0 counter
                  addi         s9, zero, 5 #init loop 0 limit
                  sltu         a6, t3, t4
                  sra          sp, s9, s7
                  srai         a6, s7, 1
                  nop
                  sub          t2, t1, ra
                  addi         t1, tp, 1568
                  nop
sub_3_0_0_t:      andi         t1, s0, -770
                  addi         s2, s2, 4 #update loop 0 counter
                  bltu         s2, s9, sub_3_0_0_t #branch for loop 0
                  slt          t4, t5, s1
                  blt          s3, a1, sub_3_0_1_t #branch for loop 1
                  sll          a0, s4, a4
                  xor          t0, s10, a6
                  sll          a4, a0, s11
                  bge          t2, t2, 811f
                  beq          s5, a5, 811f
811:              sltiu        s3, a4, -516
                  slti         t3, s9, 1205
                  bge          ra, t1, 814f
814:              slli         t1, a6, 27
                  andi         t2, s10, -1871
816:              slli         s3, t4, 10
                  andi         a3, s11, -863
                  add          s8, a7, s1
                  addi         a1, s6, 1569
                  sltu         t2, s3, s3
                  srai         a4, t2, 19
                  sltu         s1, t5, a0
                  srai         a0, s3, 18
                  beq          t6, t2, 825f
825:              nop
                  srli         a4, s7, 3
                  andi         a6, sp, -25
                  sltiu        t4, t6, -1305
                  srli         s9, s8, 30
                  beq          s8, a7, 831f
831:              lui          t0, 297410
                  bne          a5, a4, 839f
                  slli         s2, t6, 8
                  bge          s0, s5, 843f
                  nop
                  srli         s3, a2, 24
                  srai         s2, s11, 10
                  srli         s6, a1, 15
839:              slti         s5, sp, 349
                  srli         sp, s5, 5
                  xor          a5, s9, t4
                  and          s11, s3, s0
843:              and          t1, t5, s11
                  sll          s2, t2, t4
                  bne          t4, t2, 865f
                  slli         a2, s9, 12
                  ori          t4, a0, -469
                  sra          a2, t1, s5
                  sra          gp, s1, s2
                  slli         s3, s9, 23
                  nop
                  slt          t2, tp, ra
                  sub          s3, tp, s6
                  slti         s5, a3, -817
                  or           a4, a0, a6
                  addi         s2, tp, 1122
                  beq          t6, s6, 865f
                  sll          ra, t4, t0
                  xor          a4, t2, a7
                  sltu         ra, a3, t1
                  xori         sp, tp, 816
                  beq          t5, s9, 872f
                  andi         a4, gp, -112
                  slt          a7, a4, tp
865:              sra          a1, s11, s0
                  slli         zero, a1, 9
                  sll          sp, zero, a6
                  auipc        a3, 472412
                  or           s6, s0, a7
                  bge          s3, a7, 890f
                  srl          a6, s1, tp
872:              lui          a6, 188433
                  andi         t1, t2, 1581
                  bltu         s8, a5, 883f
                  beq          t5, s7, 880f
                  slti         a5, s7, -1989
                  auipc        t1, 231851
                  slli         sp, s8, 6
                  bgeu         a3, t0, 888f
880:              srl          s1, t5, a4
                  srli         s11, s10, 19
                  nop
883:              and          s7, a5, s3
                  ori          t1, s10, -1850
                  auipc        gp, 399562
                  blt          s6, s9, 887f
887:              srl          t5, s9, t1
888:              and          t3, s6, t6
                  bge          a7, s9, 909f
890:              addi         t0, t3, 2
                  beq          gp, a1, 897f
                  and          s5, s3, tp
                  blt          s0, s0, 913f
                  slti         a4, a6, -437
                  bne          s7, t5, 908f
                  ori          s6, s1, 1993
897:              and          s7, s4, s5
                  sub          s3, s4, s11
                  ori          s3, tp, 1320
                  srl          a1, s10, a3
                  beq          s8, a2, 910f
                  xor          a6, t5, t1
                  sra          gp, s2, s9
                  lui          t5, 568817
                  ori          s1, s5, 1406
                  sub          t0, gp, a3
                  lui          s8, 855003
                  addi         a1, zero, 9 #init loop 0 counter
                  addi         sp, a0, 1443
                  xori         t5, a3, 285
                  nop
                  and          s9, zero, s10
                  sltu         t0, s6, a4
                  addi         t2, zero, 7 #init loop 0 limit
                  xori         s8, s7, 1503
                  sra          s2, a6, t4
sub_3_10_0_t:     slti         zero, a0, 306
                  addi         a1, a1, -3 #update loop 0 counter
                  sra          t3, a4, a7
                  slt          s2, s9, a4
                  xori         s7, s3, 2002
                  lui          s11, 1039934
                  sll          a4, s11, tp
                  slti         t0, t6, -1782
                  add          t1, s4, a1
                  srai         s3, s3, 30
                  srai         t0, t0, 7
                  xori         a5, t6, 1106
                  xor          s7, a0, s5
                  addi         a4, a5, -1134
                  bge          a1, t2, sub_3_10_0_t #branch for loop 0
                  auipc        s5, 694960
908:              addi         s8, t3, -419
909:              blt          a0, s2, 928f
910:              sltiu        a3, sp, -1886
                  srli         t5, s5, 2
                  sltu         s2, a6, s7
913:              add          a0, s7, s10
                  bltu         s8, s8, 915f
915:              and          t5, t0, a5
                  sltiu        s11, ra, 1701
                  addi         a5, t2, -1186
                  add          gp, a1, a3
                  bgeu         a4, t0, 926f
                  addi         s9, s2, 1969
                  bge          s5, t5, 929f
                  sra          a1, a0, s0
                  slli         a2, s9, 23
                  srl          s10, s10, s9
                  xori         a6, a2, -849
926:              slti         t1, s0, 1335
                  xori         t6, s6, -868
928:              addi         t6, s4, -1518
929:              bge          t1, ra, 934f
                  bgeu         gp, s8, 931f
931:              bne          a2, s1, 943f
                  add          s3, t5, t2
                  bne          s0, s9, 940f
934:              srli         a6, s3, 19
                  slt          ra, s7, s0
                  beq          tp, ra, 946f
                  sltu         t0, zero, a5
                  nop
                  add          s8, t2, sp
940:              and          s9, zero, gp
                  or           t0, t5, s3
                  sltiu        s6, s3, -1692
943:              blt          a5, t5, 950f
                  or           s9, a2, t1
                  sll          s10, t1, gp
946:              bltu         s10, s7, 955f
                  srai         t4, sp, 31
                  lui          s6, 411396
                  srai         t3, s11, 21
950:              xori         zero, tp, 1362
                  sltu         a7, t1, s5
                  andi         s5, s5, 1819
                  addi         s1, t2, 1390
                  or           s8, s3, t5
955:              and          a6, s8, s8
                  xor          t4, a4, zero
                  sra          s6, t5, a7
                  nop
                  srl          s6, t2, s4
                  slt          sp, s1, a7
                  sra          a0, s2, s6
                  sltiu        t2, s2, -1200
                  addi         t5, t3, -706
                  nop
                  bltu         a0, t1, 966f
966:              slti         a1, sp, -1302
                  or           t3, s1, a5
                  slti         s7, t4, -110
                  srli         a7, s10, 11
                  bgeu         a5, t1, 976f
                  ori          s8, s2, 56
                  beq          s11, t1, 973f
973:              xor          s9, s1, s0
                  blt          a4, zero, 984f
                  auipc        t5, 726933
976:              slt          t2, t6, s6
                  sub          s8, s7, a3
                  ori          s10, t5, -1401
                  addi         t3, s5, 647
                  add          a1, s4, zero
                  ori          zero, t5, 1297
                  sltu         t6, a3, s3
                  blt          a0, s0, 984f
984:              xori         s6, t4, -2040
                  nop
                  srli         s3, t3, 29
                  sra          s9, s9, s1
                  auipc        sp, 578405
                  slli         sp, t0, 20
                  xori         sp, s2, -418
                  auipc        s10, 935747
                  auipc        a1, 988219
                  bne          a0, s1, 1005f
                  nop
                  xor          ra, s5, a1
                  srl          t4, a5, s11
                  blt          t5, a3, 998f
998:              andi         s10, tp, 1804
                  bgeu         s11, s3, 1001f
                  sll          gp, gp, t2
1001:             xor          s3, s11, ra
                  beq          s7, a2, 1009f
                  bltu         s0, t0, 1012f
                  slti         zero, s0, 445
1005:             slti         a1, s0, 1970
                  srli         t2, tp, 13
                  slt          s3, s4, s3
                  blt          tp, t0, 1017f
1009:             add          s2, a5, sp
                  auipc        t2, 567954
                  bltu         a7, t5, 1031f
1012:             bne          s3, a3, 1013f
1013:             auipc        a6, 165324
                  srli         a2, a4, 27
                  slti         s9, a5, -892
                  bne          a7, zero, 1031f
1017:             sll          sp, a7, s7
                  slli         t6, a6, 6
                  or           t5, s6, t6
                  xori         s2, a0, 229
                  bge          t2, s9, 1030f
                  nop
                  xori         zero, tp, -1517
                  sll          a3, s7, t5
                  sltiu        s1, zero, 178
                  ori          s2, a7, 1649
                  sltiu        a6, t3, 1919
                  ori          zero, s8, 577
                  andi         sp, s6, 1216
1030:             sltu         s5, t5, t3
1031:             bge          t6, s8, 1051f
                  nop
                  slt          s2, s6, s10
                  addi         t6, s11, -1208
                  xori         a3, a5, -846
                  xor          s2, ra, s9
                  bltu         tp, a4, 1046f
                  addi         s9, t6, -1573
                  auipc        t0, 227540
                  andi         s6, a4, -2035
                  slt          sp, t0, t2
                  srl          a0, s6, s0
                  addi         gp, s10, 1590
                  bltu         a6, t5, 1045f
1045:             sra          s5, s0, a5
1046:             or           a0, a1, sp
                  addi         a6, t2, 920
                  sltiu        t1, tp, 832
                  srl          gp, zero, s5
                  sltiu        ra, s1, 695
1051:             sltu         a7, t2, s11
                  sltiu        t2, zero, -215
                  srl          s11, s0, a1
                  nop
                  blt          s5, s2, 1063f
                  slli         t2, s11, 6
                  add          s7, t0, t1
                  beq          s9, a3, 1064f
                  sra          a3, s10, sp
                  srai         a1, a0, 14
                  ori          t4, a4, 621
                  slli         a4, a7, 30
1063:             add          a2, s9, a6
1064:             xor          t1, a0, zero
                  slt          s9, a7, tp
                  blt          s5, s11, 1086f
                  sll          s8, t6, s6
                  addi         t2, s9, -296
                  sub          s3, s8, s10
                  xor          t0, s8, s3
                  srai         a2, zero, 5
                  and          s7, t2, s1
                  andi         s6, t2, -696
                  xori         a0, t1, -2022
                  xor          a3, zero, a0
                  sub          t6, s3, gp
                  or           a0, gp, t0
                  bge          a6, s6, 1088f
                  slti         a2, t3, -1191
                  lui          a5, 741048
                  sltiu        s9, t1, -1623
                  sll          gp, t6, t5
                  sltu         a0, t4, a6
                  ori          a3, t0, -914
                  bne          zero, s9, 1090f
1086:             srli         a5, a7, 7
                  bgeu         s2, s10, 1096f
1088:             sll          t6, sp, sp
                  add          a2, a0, s7
1090:             sll          a3, a5, s10
                  auipc        t3, 631787
                  blt          a7, zero, 1099f
                  beq          a7, s6, 1100f
                  andi         t4, s1, -1132
                  sll          s11, s6, s7
1096:             xor          s11, s8, s3
                  srai         a5, s4, 30
                  beq          zero, s0, 1118f
1099:             bltu         s11, s9, 1114f
1100:             sub          t5, t0, a7
                  auipc        t6, 313351
                  add          t5, s5, t5
                  slt          a7, a3, t1
                  sltiu        t5, s0, 443
                  srli         t4, t1, 28
                  bne          a2, s3, 1118f
                  xor          s11, t5, s8
                  nop
                  auipc        t4, 54119
                  and          a0, t6, gp
                  sra          sp, a2, t0
                  sll          t4, s6, zero
                  srli         s11, s2, 21
1114:             or           t3, t3, s4
                  andi         s1, t1, -105
                  srl          s9, a2, t2
                  and          s10, a4, s0
1118:             auipc        gp, 6032
                  sll          a3, s10, t5
                  add          t1, t0, s3
                  or           s11, a0, s5
                  addi         a1, s3, -517
                  lui          a3, 898347
                  slli         gp, s10, 29
                  ori          t4, t3, -1954
                  bgeu         zero, s1, 1127f
1127:             srai         zero, a5, 29
                  bne          s1, s10, 1129f
1129:             sll          t1, gp, s6
                  bgeu         zero, s1, 1140f
                  addi         s1, ra, -215
                  or           s1, sp, s11
                  blt          s7, s5, 1134f
1134:             sll          sp, t1, zero
                  slt          s9, a7, t2
                  srl          ra, t0, ra
                  lui          s3, 254463
                  and          s1, a7, a0
                  lui          a3, 607204
1140:             and          t2, a4, zero
                  xor          a3, s7, a0
                  andi         s6, t2, -1934
                  sltu         t0, t3, a3
                  slli         t1, s8, 25
                  sll          a6, a7, s6
                  bne          t1, a2, 1159f
                  auipc        a7, 550559
                  blt          gp, sp, 1149f
1149:             srai         a6, ra, 15
                  srl          s11, t6, a3
                  slli         t4, a5, 23
                  slli         t1, a2, 3
                  slti         t0, s2, -1661
                  andi         sp, s9, -603
                  bge          t2, a2, 1162f
                  srl          a0, s6, t4
                  andi         s2, a3, -546
                  or           t6, s10, a0
1159:             lui          t6, 279115
                  bgeu         s10, a1, 1161f
1161:             or           s7, s10, t0
1162:             sltiu        s3, a4, 1871
                  sra          s5, a3, a3
                  srli         t0, a3, 9
                  auipc        s6, 502482
                  auipc        a2, 72500
                  sub          a2, s3, a7
                  and          s7, s6, zero
                  sll          s2, a7, s1
                  srai         t2, t5, 10
                  ori          t6, a6, -1950
                  sltu         a4, sp, zero
                  add          zero, a2, s9
                  srai         gp, s2, 4
                  or           ra, s0, t0
                  bne          s3, s4, 1177f
1177:             sltu         s5, t3, t4
                  xor          a7, t6, a0
                  bge          t4, s4, 1191f
                  sra          sp, t4, a2
                  lui          a1, 983251
                  srai         t3, ra, 22
                  srai         s8, t0, 25
                  addi         a1, zero, 7 #init loop 0 counter
                  lui          a7, 182842
                  slti         a3, t1, -572
                  sll          a0, a4, s5
                  sltiu        s1, s0, 893
                  ori          a0, a3, -1514
                  addi         t5, zero, 6 #init loop 0 limit
sub_3_17_0_t:     sltiu        t2, t3, -397
                  xori         zero, a0, -538
                  auipc        a2, 153826
                  addi         a1, a1, -5 #update loop 0 counter
                  srai         s5, a5, 12
                  add          s2, a7, t2
                  bgeu         a1, t5, sub_3_17_0_t #branch for loop 0
                  ori          zero, s1, 1168
                  and          gp, tp, a6
                  sltu         a0, a2, a5
                  nop
                  andi         s5, t0, 651
                  addi         s10, zero, 5 #init loop 0 counter
                  add          a1, ra, t3
                  srli         a0, t5, 5
                  sll          a1, s9, a1
                  srl          s1, s3, a4
                  srli         s5, gp, 26
                  ori          t6, s6, -1589
                  xor          s9, t4, ra
                  slt          a4, s2, s1
                  sra          a1, t2, ra
                  addi         t1, zero, 20 #init loop 0 limit
                  and          t6, s8, a0
sub_3_19_0_t:     lui          s7, 283404
                  addi         s10, s10, 2 #update loop 0 counter
                  srai         a4, s5, 28
                  sltiu        a6, t5, -1941
                  add          sp, s1, s2
                  sra          sp, a6, t0
                  srl          sp, s7, s11
                  blt          s10, t1, sub_3_19_0_t #branch for loop 0
                  add          s3, s4, a7
                  xor          s10, t5, s1
                  and          t1, a0, s10
                  bge          gp, s9, 1197f
1191:             addi         s5, t0, 2022
                  sltiu        s9, s9, -706
                  ori          t5, s9, -529
                  srli         a3, ra, 11
                  xori         a4, a3, -1177
                  srl          a7, s5, s2
1197:             xor          t6, tp, s7
                  srai         a6, t3, 3
                  bltu         s4, s9, 1201f
                  addi         t2, gp, 1819
1201:             bltu         a2, zero, 1210f
                  slli         s10, s9, 12
                  ori          s3, t5, 1408
                  beq          a4, a1, 1223f
                  and          a0, s3, s5
                  bne          t4, s2, 1212f
                  lui          a0, 713059
                  ori          a6, a5, 310
                  bge          t5, sp, 1218f
1210:             slt          a0, s8, t5
                  beq          t1, s11, 1223f
1212:             lui          t3, 821881
                  sub          a2, a4, t3
                  xori         a2, s8, -1362
                  sub          a1, s4, s8
                  or           s8, s2, t0
                  xori         t3, s4, 1618
1218:             xori         t2, s7, -1096
                  srli         a2, s3, 19
                  sll          s7, s2, gp
                  slt          s10, s1, t2
                  xor          s3, gp, a6
1223:             bne          s11, a2, 1243f
                  slti         s10, a4, -1866
                  ori          gp, s6, -182
                  bge          t3, s11, 1233f
                  andi         s11, s1, 141
                  auipc        t5, 743705
                  ori          s6, t3, 2030
                  bge          a1, a0, 1231f
1231:             srli         s11, s5, 17
                  xori         s11, s3, 1614
1233:             bltu         t1, s5, 1234f
1234:             sub          t0, a4, t2
                  addi         a2, s0, -121
                  addi         zero, t1, 428
                  xori         s8, s6, 1897
                  nop
                  blt          sp, gp, 1249f
                  bge          s0, t1, 1253f
                  slli         a3, t0, 0
                  bltu         t2, a6, 1243f
1243:             bgeu         t3, a0, 1250f
                  lui          a7, 565060
                  sltiu        ra, a6, 1896
                  auipc        s6, 872955
                  ori          a1, t2, 1292
                  add          s10, gp, s7
1249:             bgeu         s5, t5, 1256f
1250:             slt          a4, a4, a5
                  sra          a2, sp, s7
                  srli         a1, t5, 3
1253:             srli         s6, t2, 1
                  sub          a4, s8, t5
                  xori         a3, s5, -919
1256:             nop
                  sltiu        s11, gp, 685
                  bge          t4, t2, 1266f
                  beq          t5, zero, 1279f
                  slt          t4, t5, zero
                  slli         a1, t0, 25
                  bltu         t2, t3, 1263f
1263:             slt          ra, ra, ra
                  slli         t4, t6, 5
                  or           zero, a2, tp
1266:             sltiu        sp, a0, 1927
                  bltu         t2, tp, 1279f
                  andi         t1, a3, -329
                  srl          s7, tp, s7
                  xor          s10, a3, ra
                  sll          s6, sp, t0
                  andi         t2, t5, -543
                  bne          s6, a4, 1274f
1274:             lui          a0, 819719
                  sll          t2, s9, t0
                  nop
                  blt          t4, a4, 1282f
                  sltiu        s7, s8, 641
1279:             slt          t6, s8, t1
                  xor          a7, s4, tp
                  nop
1282:             slt          s2, s6, a6
                  auipc        a4, 395721
                  addi         a6, s6, -349
                  srl          zero, a4, a5
                  andi         a2, s0, 1438
                  sltu         zero, s8, s7
                  bge          t4, a5, 1294f
                  slti         s2, t3, -1837
                  sub          s8, a0, s3
                  sra          t2, s0, a3
                  add          t2, a0, s7
                  bge          t6, s2, 1294f
1294:             sltu         s5, s11, s9
                  lw           ra, 4(s0)
                  auipc        t5, 700557
                  srai         a7, s0, 14
                  lui          sp, 153959
                  addi         s0, s0, 32
                  auipc        s3, 958702
1819:             addi x2, x1, 1
1819:             jalr x2, x2, 0
sub_1:            sltiu        s8, s3, -417
                  bgeu         a0, s5, sub_1_stack_p
                  addi         s8, s6, 1912
                  srli         t0, ra, 29
sub_1_stack_p:    addi         s0, s0, -40
                  nop
                  sw           ra, 4(s0)
                  srli         t4, a3, 11
                  sltiu        a1, a7, -1071
                  slli         t0, t3, 15
                  xor          sp, a4, gp
                  or           s9, tp, a5
                  beq          tp, a0, sub_1_j3 #branch to jump instr
                  sltiu        t1, a1, -1384
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  addi         t3, zero, -7 #init loop 0 counter
                  sll          s8, a3, t6
                  addi         t6, zero, 19 #init loop 0 limit
sub_1_1_0_t:      xor          s1, a0, s4
                  and          s2, a2, a2
                  nop
                  addi         t3, t3, 6 #update loop 0 counter
                  addi         a4, s3, 555
                  addi         a5, t2, -1373
                  slli         a4, s7, 14
                  srli         a5, s9, 21
                  or           t1, t6, s7
                  sll          a6, tp, t3
                  ori          t4, s9, 2015
                  bltu         t3, t6, sub_1_1_0_t #branch for loop 0
                  slli         s3, t4, 18
                  addi         a7, zero, 8 #init loop 1 counter
                  xor          t0, t3, a7
                  and          t3, t2, a1
                  addi         s11, zero, 4 #init loop 1 limit
                  slt          t4, tp, t5
                  slli         a6, t2, 9
sub_1_5_1_t:      auipc        sp, 880507
                  addi         t3, s4, -766
                  addi         a7, a7, -5 #update loop 1 counter
                  addi         s3, zero, -8 #init loop 0 counter
                  xor          a5, s1, s9
                  lui          gp, 969292
                  srl          t5, ra, s11
                  sra          t2, s7, s10
                  addi         a4, zero, -3 #init loop 0 limit
                  xor          s6, zero, t2
                  addi         s2, zero, -1661
                  ori          s5, s2, 1886
sub_1_5_0_t:      xor          a6, t5, t2
                  nop
                  addi         s3, s3, 5 #update loop 0 counter
                  sltu         a5, s9, t4
                  bne          s3, a4, sub_1_5_0_t #branch for loop 0
                  sltu         s8, sp, s0
                  bge          a7, s11, sub_1_5_1_t #branch for loop 1
                  sra          a3, s3, a1
                  addi         s1, zero, 8 #init loop 1 counter
                  auipc        t0, 421003
                  sub          t4, a5, a7
                  auipc        t3, 940848
                  lui          s5, 684163
                  srl          a7, a0, s6
                  slt          s7, a1, s3
                  sltiu        t0, a3, 508
                  sra          t3, t3, a3
                  addi         t6, zero, 20 #init loop 1 limit
                  sub          t3, a3, s0
                  srli         a4, s10, 9
                  slt          a6, t3, t4
                  sra          a2, a4, s2
                  and          a1, t1, s3
sub_1_0_1_t:      or           a2, t1, s8
                  srl          s5, tp, t0
                  addi         s1, s1, 2 #update loop 1 counter
                  and          ra, t2, t5
                  lui          t4, 721750
                  addi         s2, zero, -9 #init loop 0 counter
                  add          s3, a2, a6
                  addi         a6, a2, -1465
                  addi         a1, s1, 302
                  addi         a3, zero, 8 #init loop 0 limit
                  ori          a5, a7, 618
sub_1_0_0_t:      or           a5, zero, t6
                  xori         s6, s0, 1459
                  addi         s2, s2, 6 #update loop 0 counter
                  or           zero, s10, s11
                  blt          s2, a3, sub_1_0_0_t #branch for loop 0
                  slt          t3, s9, s11
                  blt          s1, t6, sub_1_0_1_t #branch for loop 1
                  sub          s3, t4, s3
                  addi         gp, zero, -8 #init loop 0 counter
                  slt          t0, s4, a0
                  slti         s8, a0, 1229
                  sltu         zero, s7, t3
                  addi         a0, zero, -18 #init loop 0 limit
                  xori         zero, gp, 960
                  slti         a1, s6, -89
sub_1_7_0_t:      slt          s9, a2, a5
                  nop
                  addi         gp, gp, -5 #update loop 0 counter
                  and          a4, s3, a4
                  bne          gp, a0, sub_1_7_0_t #branch for loop 0
                  sub          t3, s1, s6
                  addi         s1, zero, 4 #init loop 1 counter
                  and          s8, s9, s1
                  addi         s3, zero, 2 #init loop 1 limit
                  slti         s7, a3, -869
sub_1_2_1_t:      or           a6, s11, t2
                  sra          s11, s7, s9
                  xor          s7, tp, s6
                  ori          sp, s2, 1065
                  slli         a5, t5, 27
                  addi         s1, s1, -2 #update loop 1 counter
                  and          s8, t3, s7
                  lui          t6, 649287
                  addi         a0, zero, 4 #init loop 0 counter
                  lui          zero, 841258
                  andi         t3, a4, -1484
                  addi         a2, a0, 1048
                  auipc        ra, 866339
                  andi         t4, a6, -1962
                  xor          a4, s6, s11
                  addi         t1, zero, 19 #init loop 0 limit
                  add          s11, t3, a7
sub_1_2_0_t:      and          a2, s9, a0
                  slti         t3, s11, -717
                  sll          s10, t0, s7
                  addi         a0, a0, 10 #update loop 0 counter
                  sub          zero, s0, s3
                  lui          a4, 294301
                  bltu         a0, t1, sub_1_2_0_t #branch for loop 0
                  lui          s10, 14172
                  xori         a2, a2, -1600
                  sltiu        s11, s1, -1370
                  or           a2, s2, a3
                  sltu         t6, s2, a0
                  beq          s1, s3, sub_1_2_1_t #branch for loop 1
                  slli         s9, s5, 25
                  addi         sp, zero, 9 #init loop 0 counter
                  or           s9, tp, s0
                  addi         a4, zero, 11 #init loop 0 limit
                  sub          t6, a0, s0
                  addi         s9, s5, -1001
                  slt          ra, s5, s1
                  sub          t6, ra, a2
                  sltu         t3, s6, a6
                  lui          s1, 928642
                  auipc        t3, 163290
                  auipc        a0, 772219
                  sra          s3, a2, a2
sub_1_3_0_t:      xori         a1, t6, -126
                  andi         s8, a0, -550
                  addi         sp, sp, 8 #update loop 0 counter
                  auipc        s6, 727900
                  sll          s11, gp, s11
                  sra          a2, a3, s3
                  or           t4, a2, a4
                  add          ra, a6, a4
                  xori         a0, zero, -879
                  nop
                  bltu         sp, a4, sub_1_3_0_t #branch for loop 0
                  slli         a3, a7, 5
                  addi         ra, zero, 8 #init loop 0 counter
                  xori         gp, tp, -1650
                  srli         t2, s3, 14
                  sub          a1, a2, t2
                  xori         s7, s11, 61
                  or           a1, t1, s0
                  nop
                  and          s1, s5, a1
                  slt          a4, s8, t3
                  addi         t3, s4, 1989
                  and          t2, s3, a1
                  add          a2, gp, a7
                  andi         t5, s7, -1202
                  add          a5, a5, a6
                  or           s1, tp, t3
                  nop
                  addi         s8, zero, -11 #init loop 0 limit
sub_1_8_0_t:      lui          a1, 875883
                  addi         ra, ra, -5 #update loop 0 counter
                  xori         s11, a5, -1979
                  addi         s9, tp, -1113
                  sub          a3, s10, a6
                  sltiu        a6, a7, -1779
                  bge          ra, s8, sub_1_8_0_t #branch for loop 0
                  addi         a1, t3, -30
                  sltiu        a3, a4, -1783
                  lui          gp, 904968
                  nop
                  bgeu         a1, s9, 21f
                  srli         a0, t6, 5
                  sll          a6, zero, zero
                  sub          s5, t3, t5
                  auipc        s6, 940881
                  srli         t2, s5, 22
                  bltu         tp, a1, 28f
                  bge          a1, s2, 30f
                  sltu         a7, a5, a4
                  sll          s5, s4, a7
                  sll          sp, t5, t0
                  auipc        a4, 756029
                  ori          a0, sp, 1960
                  bgeu         a0, t3, 33f
                  bge          zero, ra, 30f
                  srli         s11, s0, 19
                  bltu         a1, s8, 38f
                  bltu         t2, s5, 24f
21:               blt          t3, t2, 22f
22:               blt          t4, s11, 27f
                  add          gp, s1, s2
24:               sra          s6, a0, a1
                  and          t2, t5, s10
                  lui          gp, 428874
27:               bge          s0, s8, 39f
28:               srli         s6, a0, 15
                  bgeu         gp, a2, 43f
30:               lui          s11, 790426
                  sll          s1, s8, s0
                  sltu         s5, tp, a0
33:               ori          s3, s5, 886
                  addi         zero, s9, -1367
                  beq          a2, s3, 36f
36:               lui          s8, 958560
                  slli         s11, a4, 24
38:               xor          ra, a6, a2
39:               sltiu        s8, t0, -841
                  xor          s2, s10, zero
                  or           a1, t0, tp
                  beq          s0, t1, 57f
43:               ori          a6, t5, -1083
                  sll          ra, s4, a2
                  andi         t0, t4, 1610
                  bne          s9, sp, 56f
                  srl          s3, t3, t6
                  slt          s7, t0, s8
                  bne          zero, s1, 57f
                  and          t2, s1, s5
                  bge          a7, s1, 66f
                  andi         a1, a6, 227
                  slti         s2, t3, -145
                  sltiu        s11, a0, -1175
                  sll          gp, t0, a1
56:               sra          s7, a7, s10
57:               beq          a5, a4, 70f
                  bltu         s7, gp, 72f
                  auipc        s5, 329306
                  srai         a4, s11, 4
                  auipc        t1, 62990
                  bge          t0, t2, 68f
                  auipc        t4, 688896
                  srai         t6, s7, 9
                  sll          a2, s4, a1
66:               slti         s3, s11, -99
                  addi         zero, t3, -1593
68:               bge          s6, t2, 86f
                  srl          a5, t4, a3
70:               bltu         a1, t6, 78f
                  or           s11, t0, s11
72:               sub          a5, gp, a4
                  srai         s11, s9, 20
                  srl          a4, s10, tp
                  srai         t4, gp, 9
                  bne          s5, s4, 88f
                  blt          a2, s5, 85f
78:               blt          zero, s7, 89f
                  bltu         s10, t6, 90f
                  add          a2, s9, a0
                  add          gp, t5, a0
                  bgeu         zero, s10, 86f
                  srai         zero, s6, 10
                  sltu         t0, t1, a7
85:               srai         s8, a6, 17
86:               lui          zero, 69717
                  nop
88:               sltu         s8, a4, s1
89:               sltu         a0, s7, a4
90:               andi         t3, t3, 1523
                  add          a1, s3, a7
                  andi         s3, tp, 118
                  slt          s8, t5, sp
                  or           a0, s0, s6
                  bltu         a7, a6, 108f
                  addi         a3, t5, -1061
                  bltu         s0, zero, 98f
98:               xor          t6, tp, s11
                  addi         s5, a2, 1375
                  bgeu         t1, a6, 117f
                  srl          s9, a1, s7
                  addi         sp, zero, 9 #init loop 0 counter
                  slt          t5, s0, s5
                  sll          s7, s7, tp
                  lui          s2, 316461
                  sra          a6, s8, a2
                  srl          s8, s0, a0
                  sra          ra, t3, t0
                  auipc        a2, 609557
                  addi         t3, zero, 9 #init loop 0 limit
sub_1_6_0_t:      auipc        s3, 853204
                  addi         sp, sp, -7 #update loop 0 counter
                  slti         s1, s3, 1834
                  slt          s6, ra, s4
                  xor          t4, a5, s3
                  xori         s7, a7, 1410
                  andi         gp, a3, -907
                  srl          t2, zero, a0
                  sltu         a2, a6, s11
                  bgeu         sp, t3, sub_1_6_0_t #branch for loop 0
                  sub          s2, t1, t5
                  slti         t5, a4, -1194
                  nop
                  bne          a4, s9, 107f
                  beq          a3, s3, 111f
                  nop
107:              sra          a0, s11, t3
108:              sll          s7, a1, a3
                  nop
                  lui          s2, 837502
111:              addi         t3, a6, -637
                  sra          a7, ra, gp
                  blt          s3, gp, 130f
                  xor          a0, t5, a4
                  nop
                  sll          s9, s11, s1
117:              addi         t4, s5, -493
                  sll          t0, tp, s11
                  bne          sp, t2, 127f
                  srai         s11, s7, 6
                  or           s10, t6, s6
                  andi         s3, s7, 1115
                  beq          zero, a5, 136f
                  add          sp, s8, gp
                  blt          s10, tp, 130f
                  ori          a2, t1, -988
127:              xor          a6, s2, s0
                  slli         a7, a1, 16
                  sub          gp, t2, s7
130:              srai         zero, s8, 5
                  srai         s1, s7, 16
                  slt          t6, a0, s4
                  slti         s6, tp, 1249
                  srl          t2, s2, s2
                  and          gp, sp, s2
136:              ori          zero, a1, 635
                  sltiu        s1, s0, 1715
                  bgeu         s3, t0, 149f
                  add          a2, s10, a1
                  slt          s2, t2, t4
                  xor          a1, s7, s4
                  bltu         t1, s4, 162f
                  ori          s11, t1, -177
                  add          a0, s9, s7
                  slti         s3, a5, 2035
                  bge          s7, s10, 156f
                  xor          s11, a3, t3
                  sltiu        t4, s0, -1714
149:              xor          a4, a2, s4
                  sub          t2, s8, zero
                  xori         t3, t5, -1576
                  bgeu         s2, s0, 164f
                  add          t0, s8, t3
                  bgeu         s10, s8, 165f
                  andi         a2, a3, 69
156:              or           gp, s5, ra
                  xori         t1, s8, -1378
                  sub          s2, t1, s7
                  sltiu        t1, s6, -718
                  slt          s3, s11, gp
                  xor          a2, t1, s1
162:              slt          s9, t5, zero
                  sltu         t1, s7, a4
164:              lui          t1, 634585
165:              addi         zero, s8, 472
                  slt          t5, a3, a6
                  auipc        s10, 141841
                  slt          sp, s7, s6
                  srl          t4, s6, a0
                  xor          t0, a0, t4
                  srli         t0, s4, 23
                  slt          a2, a7, t3
                  addi         zero, a6, 973
                  sra          a5, a3, s7
                  srai         s8, s6, 6
                  srl          t2, t3, s0
                  bge          s6, s8, 191f
                  auipc        ra, 446443
                  auipc        t5, 285927
                  sra          a3, a3, s11
                  xori         zero, a5, 600
                  addi         s3, t2, 1082
                  bge          s9, a6, 201f
                  or           a3, a7, s8
                  bge          s6, tp, 198f
                  slli         s6, t2, 5
                  and          a5, s2, a1
                  addi         t0, s2, -1579
                  srl          a1, s5, t2
                  sll          a2, s8, s10
191:              xor          s1, s0, s10
                  or           t0, s9, gp
                  slt          s1, s5, a7
                  xor          s6, s2, a6
                  beq          t5, s0, 198f
                  xori         a7, zero, -642
                  srli         t6, a2, 10
198:              beq          s8, a7, 202f
                  slti         t2, tp, -1745
                  sltiu        a7, a5, 1696
201:              xori         a6, t3, 792
202:              bne          s8, s1, 206f
                  blt          s10, tp, 211f
                  addi         a3, t0, 548
                  slt          ra, t2, tp
206:              bgeu         a2, s5, 225f
                  xori         s11, s1, -1985
                  ori          zero, a4, 967
                  slt          s11, t6, a3
                  sltiu        a0, s2, 1525
211:              and          t3, a2, a0
                  sra          t4, s5, t2
                  add          s1, s9, a6
                  srl          a4, t6, s10
                  xor          s9, s0, s1
                  xor          a7, s0, s1
                  andi         t1, tp, 663
                  slt          sp, t0, t3
                  bgeu         zero, a1, 237f
                  bgeu         t2, sp, 232f
                  xor          s2, s3, s7
                  add          t1, s7, a4
                  sub          a5, a5, sp
                  beq          t4, a7, 243f
225:              srl          a1, s1, s2
                  xor          t5, s11, s8
                  beq          t1, zero, 240f
                  sltiu        a1, a0, 1810
                  or           s11, s1, s11
                  srai         t6, s3, 27
                  blt          a6, s11, 246f
232:              srli         t3, a3, 2
                  bge          s5, a6, 234f
234:              and          t2, t6, s7
                  add          s8, a2, s10
                  beq          s1, s11, 237f
237:              bgeu         t2, a7, 254f
                  auipc        t1, 887226
                  sub          sp, s5, t1
240:              srl          t0, s10, a2
                  nop
                  srai         a7, sp, 24
243:              sltu         a1, a0, gp
                  or           t2, t5, tp
                  beq          s2, s9, 260f
246:              xor          t1, t2, zero
                  beq          a7, t5, 255f
                  lui          s8, 641494
                  andi         t3, t5, 1555
                  sltiu        s8, tp, 1410
                  or           s9, zero, t1
                  sltu         t1, a6, t2
                  beq          t2, a5, 254f
254:              bge          t6, t6, 268f
255:              andi         t0, a5, 701
                  bgeu         s5, s8, 269f
                  bge          gp, a6, 265f
                  bgeu         sp, t3, 266f
                  srai         s11, a3, 12
260:              slli         s2, t6, 31
                  bne          a2, s8, 274f
                  sll          t3, a5, a3
                  blt          a7, t5, 280f
                  slli         a4, a7, 16
265:              beq          a0, a3, 279f
266:              sltu         sp, s7, a3
                  addi         s1, zero, -10 #init loop 1 counter
                  ori          sp, tp, 1972
                  or           a2, s1, s4
                  addi         t3, gp, 899
                  andi         s11, s3, -866
                  slti         t3, t5, -764
                  xori         s11, gp, -556
                  addi         t4, zero, 19 #init loop 1 limit
                  add          s9, t5, t0
                  andi         ra, s4, 1283
                  sltiu        t2, t3, 1740
sub_1_4_1_t:      ori          a1, zero, 286
                  addi         s1, s1, 6 #update loop 1 counter
                  add          a5, s3, s0
                  addi         s10, zero, -6 #init loop 0 counter
                  addi         a6, zero, -20 #init loop 0 limit
sub_1_4_0_t:      xor          zero, gp, s5
                  sra          t2, a4, s5
                  addi         s10, s10, -2 #update loop 0 counter
                  srl          sp, a7, sp
                  add          s9, t4, t3
                  sltiu        s5, a4, -560
                  slt          s9, s4, ra
                  srl          a0, s5, s6
                  bge          s10, a6, sub_1_4_0_t #branch for loop 0
                  xor          s11, s8, s8
                  lui          s8, 277426
                  ori          s9, s5, 866
                  or           t0, s1, t6
                  bltu         s1, t4, sub_1_4_1_t #branch for loop 1
                  srli         s5, t4, 2
                  auipc        zero, 34625
268:              srai         t5, s6, 0
269:              auipc        a0, 604760
                  xor          a0, s11, a6
                  sra          t0, a7, ra
                  slli         sp, a2, 12
                  sll          t2, a3, t0
274:              srl          a7, t1, a6
                  beq          s0, a6, 279f
                  bne          s11, s1, 296f
                  slti         a3, gp, -170
                  bltu         t0, s0, 297f
279:              xori         ra, s10, 875
280:              sra          t6, a2, a1
                  sll          zero, zero, a2
                  sll          a1, a1, a0
                  slti         ra, sp, -235
                  srai         sp, a4, 17
                  sub          t3, s10, s0
                  blt          s2, ra, 301f
                  or           s11, t0, s0
                  bge          s3, s2, 299f
                  slli         s5, gp, 31
                  sll          t1, s10, a7
                  srai         s1, s9, 24
                  blt          s1, t1, 304f
                  bge          s11, t5, 297f
                  slti         zero, a2, -913
                  bne          ra, a2, 306f
296:              sra          t3, s4, a1
297:              or           t6, gp, a2
                  slt          t2, t2, a2
299:              sltiu        a2, t6, 311
                  sltiu        t2, s9, -1422
301:              bge          a6, zero, 309f
                  and          s1, gp, s8
                  xori         a7, t5, -942
304:              srai         a2, s0, 20
                  xor          s7, gp, t0
306:              srli         a4, t2, 28
                  srli         s6, a3, 18
                  add          t5, sp, a2
309:              srl          t5, s6, a4
                  xor          s9, a7, zero
                  and          a5, tp, s0
                  xori         ra, gp, 798
                  xor          s8, t2, s3
                  xor          s10, s5, s7
                  slt          a7, sp, s11
                  lui          ra, 58700
                  or           s3, gp, sp
                  srli         s11, a6, 19
                  andi         zero, a3, -1563
                  blt          a6, s4, 321f
321:              sub          a5, s8, s6
                  lui          a7, 1009234
                  sltiu        a3, t3, 182
                  lui          a4, 249463
                  addi         a2, a6, -1531
                  auipc        t3, 511407
                  blt          t6, t6, 340f
                  andi         zero, s4, -453
                  auipc        t1, 1000647
                  sub          s2, a1, a2
                  slt          t0, gp, a6
                  sra          t1, t4, t3
                  bne          s4, tp, 339f
                  sub          s10, t6, s0
                  and          t0, t5, s11
                  andi         t1, t6, 678
                  sll          s3, t2, t6
                  slti         ra, a7, -680
339:              nop
340:              beq          t0, s9, 345f
                  srai         a6, s3, 0
                  xor          a2, t4, a3
                  bltu         s8, a3, 344f
344:              sltu         a0, s8, s6
345:              add          t1, ra, sp
                  sra          s2, t1, a3
                  beq          a4, t0, 365f
                  sltu         s10, t3, s7
                  sltiu        zero, a6, -1586
                  sra          a1, t3, s3
                  auipc        s3, 2552
                  srai         s11, s8, 11
                  sll          a3, t2, s4
                  addi         a4, s7, -474
                  xor          s2, t3, a6
                  beq          s6, ra, 375f
                  sll          t6, t0, t0
                  add          s1, s6, s5
                  sra          s10, t5, a2
                  sll          t0, s3, t0
                  xor          a4, s7, s0
                  srai         s7, a6, 2
                  bne          t2, s10, 373f
                  auipc        s3, 571683
365:              xor          a6, s6, sp
                  srl          t2, s3, s1
                  bgeu         tp, s3, 368f
368:              sra          gp, s1, t0
                  slt          s1, s10, s8
                  or           t0, tp, s8
                  sltu         s8, a0, a0
                  slli         t5, s7, 15
373:              sub          a7, a7, a0
                  sll          s7, s4, gp
375:              xor          s2, a2, s9
                  bge          a6, s7, 394f
                  ori          s10, s11, -1431
                  slti         s7, t6, -829
                  bge          s8, tp, 382f
                  auipc        s3, 473296
                  and          s6, s7, a6
382:              auipc        sp, 348885
                  beq          s7, a1, 400f
                  sll          t3, zero, t3
                  sltu         a3, gp, s6
                  andi         t4, a3, -1768
                  slt          a2, s2, a4
                  and          ra, t2, sp
                  sub          t3, s6, s10
                  addi         a6, zero, -1748
                  auipc        a0, 948342
                  la           t3, sub_2
                  addi         t3, t3, 578
                  slt          ra, t5, a5
                  bge          a7, a6, sub_1_j2 #branch to jump instr
                  addi         a7, a0, 76
                  slt          s10, t0, t4
                  ori          s1, a3, -126
                  sub          t5, s1, s11
                  srai         s7, s9, 21
sub_1_j2:         jalr         ra, t3, -578 #jump sub_1 -> sub_2
                  add          a7, t4, t4
                  bltu         s11, a2, 407f
394:              andi         t3, s5, 2027
                  and          s11, s1, s8
                  srl          s9, s9, t2
                  bne          zero, a4, 412f
                  or           t5, a5, sp
                  bge          t3, s10, 411f
400:              bge          gp, t4, 418f
                  bltu         a6, t2, 416f
                  nop
                  lui          zero, 718324
                  ori          gp, a7, 882
                  sltu         t0, s9, a7
                  and          a0, a1, gp
407:              xori         t1, t0, -997
                  xori         t6, s10, -1483
                  andi         gp, a7, 1970
                  slt          s2, s3, s0
411:              ori          t5, gp, 1120
412:              sra          s10, a2, a7
                  slli         t4, t4, 7
                  srli         a0, gp, 28
                  auipc        s1, 795643
416:              ori          t5, s5, 1118
                  blt          s4, s9, 429f
418:              xori         t2, t6, 1572
                  srl          gp, zero, a5
                  lui          a5, 419783
                  andi         t3, ra, -913
                  slli         a0, a5, 9
                  sltiu        sp, a6, 50
                  blt          s1, a0, 425f
425:              blt          s4, s0, 433f
                  sltu         ra, s2, s5
                  blt          gp, s10, 428f
428:              xor          gp, a4, ra
429:              nop
                  auipc        s9, 683709
                  addi         a6, a4, -1350
                  blt          t3, s5, 445f
433:              sltiu        a7, a6, -236
                  slti         s11, t1, -1612
                  slli         zero, a6, 28
                  ori          ra, zero, -1987
                  srai         a7, t1, 2
                  slli         zero, t0, 11
                  sltiu        a1, sp, -159
                  add          a1, s9, s6
                  andi         t6, s8, 2039
                  srli         a2, t0, 14
                  beq          s0, t1, 462f
                  blt          a3, s6, 452f
445:              addi         s6, t0, -1835
                  sub          t4, t3, s11
                  slt          s1, s7, s9
                  lui          t1, 24829
                  srai         a0, s0, 29
                  sra          s11, ra, s9
                  blt          s5, s10, 455f
452:              sub          a0, s8, s4
                  sltu         s5, t2, s4
                  andi         a5, s4, 1511
455:              bne          s9, s9, 472f
                  and          s9, t1, s2
                  andi         a4, a1, 438
                  xor          sp, gp, a1
                  sltu         s3, a0, a3
                  nop
                  xori         a0, t3, 31
462:              bne          s5, a6, 475f
                  ori          t6, a7, -573
                  add          s9, t1, zero
                  xor          a1, s3, s2
                  slli         s10, ra, 10
                  sra          s5, a7, s5
                  bltu         s3, t0, 483f
                  sll          t0, s9, a5
                  ori          s8, s0, -1121
                  or           s2, t6, a3
472:              sub          a0, s9, a1
                  sll          t6, tp, s10
                  blt          gp, t5, 489f
475:              addi         s9, s3, -1953
                  xori         s8, t6, 1299
                  lui          t3, 1041375
                  srai         a7, a7, 6
                  bne          s11, s8, 480f
480:              lui          t5, 804900
                  bge          t6, s2, 489f
                  sltiu        t0, tp, 637
483:              bgeu         s6, tp, 489f
                  sub          s6, a3, s2
                  ori          s5, a5, 1347
                  add          t2, ra, a4
                  bgeu         ra, s0, 489f
                  bgeu         a4, t4, 489f
489:              slli         a5, a3, 7
                  lw           ra, 4(s0)
                  slli         s2, gp, 17
                  srai         t2, s0, 16
                  sll          t3, ra, sp
                  and          s10, zero, a3
                  addi         s0, s0, 40
                  add          sp, s10, a6
                  sltu         s5, a7, a4
                  sll          s9, s6, gp
                  srl          t5, a7, s4
                  srli         a5, s9, 9
750:              addi x22, x1, 0
750:              jalr x22, x22, 0
sub_2:            addi         a4, t3, 1371
                  add          a7, a5, t3
                  bgeu         sp, t0, sub_2_stack_p
                  slt          t0, a4, sp
sub_2_stack_p:    addi         s0, s0, -32
                  sw           ra, 4(s0)
                  srai         gp, s5, 18
                  srl          s9, a5, t1
                  la           t3, sub_4
                  ori          s11, s1, 1808
                  addi         s11, ra, -1422
                  sltiu        s6, a3, 1221
                  or           sp, t6, t3
                  addi         t3, t3, -361
                  bne          a5, s7, sub_2_j4 #branch to jump instr
                  or           s11, t2, t4
                  sra          s5, t1, a7
                  sll          a3, a2, t4
                  srli         s5, s9, 15
                  xori         s1, a1, 1724
sub_2_j4:         jalr         ra, t3, 361 #jump sub_2 -> sub_4
                  srai         s5, a3, 30
                  xor          s1, t1, a0
                  srl          t6, zero, a6
                  sra          t0, t1, s7
                  slli         a3, s7, 24
                  sll          s6, s6, a4
sub_2_j5:         jal          ra, sub_5 #jump sub_2 -> sub_5
                  la           gp, sub_5
                  or           s3, a2, t2
                  and          t2, t5, t2
                  or           zero, t4, a7
                  sltiu        t0, t6, -1147
                  addi         gp, gp, 1000
                  add          a3, a6, t2
                  slti         a0, s0, -1644
                  addi         t6, ra, -770
                  sltiu        sp, s6, 362
                  ori          s9, s0, -657
                  sub          ra, s11, gp
sub_2_j6:         jalr         ra, gp, -1000 #jump sub_2 -> sub_5
                  xor          a3, a4, s4
                  lui          a6, 423031
                  sub          a3, a6, s1
                  la           t0, sub_3
                  slti         s6, a0, 1594
                  addi         t0, t0, 57
                  sub          s9, s9, a2
                  xori         s9, a1, -1756
                  sub          a1, t3, t1
                  addi         s10, s5, -1268
                  slt          zero, s0, t3
sub_2_j7:         jalr         ra, t0, -56 #jump sub_2 -> sub_3
                  addi         a2, zero, 10 #init loop 1 counter
                  nop
                  or           a5, s8, s11
                  nop
                  addi         ra, zero, 16 #init loop 1 limit
                  ori          s9, s5, 1799
                  srai         a4, a2, 2
                  slt          t6, s0, s9
                  sll          a1, t5, a6
                  or           s1, s4, s4
sub_2_0_1_t:      nop
                  or           a0, s7, s7
                  sra          a1, sp, t5
                  addi         a2, a2, 6 #update loop 1 counter
                  auipc        a1, 803780
                  addi         s5, zero, -2 #init loop 0 counter
                  slli         t3, s5, 20
                  addi         s8, zero, -10 #init loop 0 limit
                  sll          t0, s1, a6
                  lui          s10, 185543
sub_2_0_0_t:      slti         t5, s10, 257
                  addi         s5, s5, -2 #update loop 0 counter
                  slli         s7, s7, 19
                  bne          s5, s8, sub_2_0_0_t #branch for loop 0
                  sltiu        t6, t2, -237
                  xori         s10, a1, -856
                  srli         t3, s1, 20
                  sra          s9, t0, t2
                  slti         t5, ra, 1445
                  or           sp, s9, t2
                  add          t1, a4, s0
                  add          t3, s7, s2
                  or           t0, a4, sp
                  beq          a2, ra, sub_2_0_1_t #branch for loop 1
                  or           a4, s9, t5
                  slt          s8, s7, s11
                  sll          a4, s4, a4
                  sra          s7, t1, s4
                  sltiu        t1, s10, -1895
                  slt          s1, s9, a6
                  and          a4, gp, zero
                  srai         s2, s0, 14
                  auipc        t3, 579663
                  srai         a6, t3, 26
                  srai         s7, s1, 3
                  and          a4, t5, t4
                  bne          a0, t6, 14f
                  add          t4, a0, t4
                  beq          a1, a1, 27f
14:               xor          a4, t1, a6
                  sll          t0, a5, t6
                  nop
                  bltu         a4, tp, 36f
                  sltu         t6, t2, t0
                  slti         gp, s7, -2013
                  nop
                  srli         gp, s1, 5
                  bne          a3, tp, 38f
                  xori         sp, s1, -1137
                  srli         t4, s0, 26
                  sltu         a3, a5, a6
                  sltiu        a4, tp, -538
27:               slti         s7, a2, -306
                  addi         t4, s6, -53
                  sub          a5, s5, s11
                  sra          t5, t5, a3
                  srl          s7, s10, a1
                  srl          a7, ra, s3
                  beq          a4, s8, 50f
                  sll          a1, s1, s11
                  bne          t4, ra, 45f
36:               slti         a5, t0, 385
                  sll          s7, s2, t2
38:               sll          s6, t2, a0
                  add          s5, sp, zero
                  nop
                  addi         s3, s4, -839
                  slli         s1, s5, 20
                  bne          tp, s7, 50f
                  nop
45:               lui          t2, 483186
                  andi         a6, t1, -96
                  slt          s8, t4, a4
                  xori         s1, s10, 2041
                  auipc        s11, 766103
50:               sltu         s10, a1, s5
                  slt          a5, t1, t3
                  lw           ra, 4(s0)
                  auipc        a3, 163955
                  andi         sp, a2, -1128
                  slli         s8, ra, 28
                  nop
                  sltiu        a4, zero, 16
                  addi         s0, s0, 32
                  or           t1, a0, sp
                  or           s7, t6, s11
                  nop
150:              addi x16, x1, 0
150:              jalr x16, x16, 0
sub_5:            beq          a2, t1, sub_5_stack_p
                  sra          zero, t5, s1
sub_5_stack_p:    addi         s0, s0, -48
                  addi         s11, a6, -1886
                  andi         t4, t6, 1099
                  andi         sp, t1, -1238
                  sw           ra, 4(s0)
                  lui          a6, 11402
                  slt          t6, a5, s6
                  nop
                  xori         s8, a2, 1607
                  ori          a5, t4, 496
                  srl          a3, s2, t5
                  andi         t1, ra, -530
                  slti         a4, a4, 980
                  srl          t5, s7, a2
                  lui          zero, 250444
                  beq          sp, s10, 9f
                  slti         t3, s9, -1727
                  beq          t4, sp, 8f
8:                slli         gp, s1, 22
9:                and          s1, a5, zero
                  addi         s6, sp, -1629
                  srli         gp, s10, 7
                  add          s2, s4, s6
                  ori          s1, sp, -866
                  sltu         s10, a4, a2
                  beq          t4, s8, 32f
                  and          s10, t6, sp
                  slti         s10, s1, 856
                  add          s3, a0, s2
                  bge          ra, t2, 27f
                  sltu         s2, a2, sp
                  slli         t1, gp, 13
                  blt          t5, t3, 27f
                  srli         t3, s10, 0
                  slti         t5, a6, 295
                  and          t4, t3, gp
                  or           s8, s6, a5
27:               bgeu         t0, s4, 30f
                  lui          s10, 962909
                  slti         t6, t4, 1916
30:               srl          s8, t3, zero
                  blt          t0, a4, 43f
32:               sra          t1, s11, a4
                  srl          s1, t5, t0
                  addi         a4, a1, 641
                  lui          s5, 741106
                  bge          s5, a1, 41f
                  slli         s6, s1, 30
                  xor          t3, gp, ra
                  bltu         s7, s6, 43f
                  ori          t3, s8, -217
41:               xor          t2, a6, a5
                  slli         a3, s8, 18
43:               sltiu        t6, sp, 1132
                  sub          a1, s9, ra
                  lw           ra, 4(s0)
                  sra          s7, a7, s9
                  addi         s0, s0, 48
                  sltu         s2, s8, s9
                  srli         a4, s10, 22
62:               addi x24, x1, 1
62:               jalr x24, x24, 0
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
.word 0xffc6a638, 0x87750daf, 0xe05587c2, 0x2b6f5f6b, 0x6827621a, 0x41a84c66, 0x9ac36084, 0x6415aac3
.word 0x331105a5, 0x973d257a, 0x00d1e9e0, 0xe38c706c, 0xc575a754, 0x899fc262, 0xde3e3d99, 0x1531b65d
.word 0x2fb5110d, 0x269afffd, 0x2e9ef875, 0xd2669efd, 0xda43fa16, 0xdfd3ad24, 0x3d837c20, 0xb061960a
.word 0x1c48c843, 0x2c982e71, 0x87553d45, 0xb63ad44e, 0x0139ac9d, 0x54f2b04d, 0x059d46da, 0x4d552417
.word 0xa3ba92bd, 0x60fc51df, 0x78c2779a, 0x815b4e16, 0x4957b899, 0xfbb480e1, 0xf45963ab, 0xed539b92
.word 0x50464b46, 0x14ecc6fa, 0xd9c801a4, 0xec2b815d, 0x335e1bf6, 0x7df9986e, 0x0899fece, 0x5866032c
.word 0x4e2307b6, 0x110bbda3, 0xaf57cdf1, 0x109362f6, 0xde200efa, 0x1edbf3a3, 0x076b4883, 0x1df29ae2
.word 0x98d8a526, 0x06d87955, 0x74ff293b, 0xe8ce5308, 0x1f143a21, 0xcef7ba80, 0xd05ade26, 0x6cfbb276
.word 0x89e3a69f, 0x846b83a4, 0x24929224, 0x149eb5f5, 0xbb8593ff, 0x6f8d9b3b, 0x1e8d43e9, 0xece8fefe
.word 0x5d718f63, 0x149b03c5, 0x0570c609, 0x1a9ef2bb, 0xbe46e794, 0x27ca6880, 0xdb3b3487, 0x5195ccf9
.word 0x6bb1399f, 0xd5565e1b, 0xb044f55a, 0xb04a88f4, 0x1f8faeee, 0x32f679b4, 0x845d22b4, 0x65d048ad
.word 0x07210ba9, 0x1e13d1f5, 0x2ac9ba57, 0x095b5de6, 0x69cce0dd, 0xc8a15fe6, 0xfeede46a, 0xaa9983cf
.word 0x2e41dab9, 0x9fa4951c, 0x65ab7789, 0x26aa96dc, 0x877e0637, 0x87b6e219, 0x31c558f6, 0x0f0188b7
.word 0x37e71977, 0x0513e5b4, 0xd9028058, 0xe0b7570b, 0xd15e1dbe, 0x6162f88f, 0x77406192, 0x6bd03e84
.word 0xb8f9b5c5, 0x2de00ac8, 0xb7757d46, 0xd7d65da9, 0xe9cc8925, 0xc03b9478, 0xe2baf6c1, 0xbdba7bdf
.word 0xf48b153e, 0x6ff9fa62, 0xa34556fe, 0x22ea4643, 0x337e00c1, 0xbf042a1e, 0x9c1177ef, 0x73efc450
.word 0x56929d7f, 0xf428874a, 0xdc538820, 0xaf95e842, 0xe9aaa1a1, 0x108eb8cb, 0x3ea2d672, 0x76040931
.word 0x689b1385, 0x6ee79b12, 0x76e56a66, 0xbc038938, 0x79b6790d, 0x821e7129, 0x5716418d, 0x8477f101
.word 0xa1f9f16f, 0xc8cff5fd, 0x31991c67, 0x120d33d9, 0xfca6255f, 0xa7f60f21, 0x78b869af, 0x75d8452e
.word 0x94aa8c3c, 0xa7da752e, 0x06a58610, 0xb3590b77, 0x7d4c2269, 0x535b2f07, 0x441e7aee, 0x2a400ebb
.word 0xac92c964, 0x3bbf495a, 0x91fe443a, 0xb75e7ddf, 0xc5efa6a4, 0x8474c943, 0xb1572690, 0xd81f2708
.word 0x1ff198f0, 0xa11463ab, 0xcb4f9f21, 0x17364cb1, 0x978a65db, 0x30890797, 0x8abedd5f, 0x65ede6b9
.word 0xb7a8ce6c, 0x7066ff15, 0x063397c1, 0x96d0fbbf, 0x27c2e80c, 0x1ee9be61, 0x38c198ad, 0x4cc5d274
.word 0x00e6178c, 0x48e29793, 0xfd9379e0, 0xf48480aa, 0xb778c48e, 0xa6108bfb, 0x802bf9fc, 0x4ca1d475
.word 0x7011e0a7, 0xeb4a0312, 0xb7174256, 0x82e31045, 0xe062e3ee, 0xc5102afb, 0x488d78a2, 0x9860ff13
.word 0x8e942ee3, 0x6cfc4336, 0x8351e9db, 0x50e1e9e8, 0x7a654a4f, 0xd59ca551, 0x1b5ee734, 0x0e458b3b
.word 0x1a153d57, 0x026a4a7d, 0x9cf70fd7, 0xf411b861, 0x51281a2c, 0x30f70632, 0x4d87474e, 0xffec7b34
.word 0xafe8c746, 0x80488cb3, 0xd2d0c1ec, 0xd896ac79, 0xe6f8b76b, 0x1f31f725, 0x06043e07, 0x38b7f546
.word 0xf5e6cc99, 0xafff560a, 0xfc0cca9f, 0xa8eb8716, 0xf82fd08b, 0x133841fd, 0x67079630, 0x5dcb3846
.word 0xe9e260f2, 0xad51136e, 0xcab1c423, 0xe0f8f9cc, 0x475f630e, 0x617d31cd, 0xb391273c, 0x598bdf73
.word 0x316b6b46, 0x44fb689c, 0xaa349c47, 0x95bbb775, 0x7a056bae, 0x96e832e3, 0x32d4712f, 0xc5f85d10
.word 0x33ad855d, 0xbbcdc60d, 0x4daba118, 0xd26b6a9e, 0xcd5eb873, 0x36e06100, 0x50c79978, 0x283b30be
.word 0xd7e2636a, 0x91f26738, 0xb6c1fdff, 0xdff10c94, 0xb26e3870, 0x2c611496, 0x2f849188, 0x14cfa591
.word 0x8b5df767, 0x55892be5, 0xa0faba20, 0x7cd5392b, 0x997d071c, 0x09f09367, 0x951742fc, 0x394b2df7
.word 0xfed8d3a4, 0x36dd868d, 0xf38a8f31, 0x181a4ac8, 0xac7e303a, 0xa9254e1f, 0xc5277cc8, 0xce6c7dcd
.word 0xd31be5fb, 0x725f5157, 0x5d22132e, 0x8772c967, 0x40b47e7e, 0x48c5a8c0, 0xe248ab78, 0x5d555241
.word 0x74594e0e, 0xafc75549, 0x6e44d277, 0x931606ae, 0x1dc8e12d, 0x2512ad5e, 0xbb993cbd, 0x4822a997
.word 0xcc234a17, 0xe8683ada, 0x16d104fb, 0xd28810ae, 0x3147ccf5, 0xd21848b9, 0x03d05cc6, 0xf80b96ae
.word 0x01639f8f, 0xf6219082, 0x582b905b, 0x897cf724, 0x94c7c35f, 0x5a39db5b, 0x2d20c99e, 0x42e38933
.word 0xb0b67edd, 0x11cae1f2, 0x9cebc7de, 0xc475d76f, 0xd7cd53e5, 0x17eb9fc0, 0xe31edf9b, 0x78b43282
.word 0x3b94911a, 0x36b8f2b1, 0x14067e39, 0x04916504, 0xe5dc43ec, 0x21f7d343, 0x36878ee7, 0x2b6b7fd9
.word 0xc4f3bb5d, 0xd5355b2b, 0x0840c7a7, 0xefc38bc6, 0x51a68b7e, 0x641b9a2d, 0x6303ce2c, 0x0ce4dac2
.word 0x26ca09da, 0x1d75f068, 0xf3610983, 0xb809174b, 0xc4836278, 0x37a2c52c, 0x33e6690a, 0x3ff38695
.word 0x8dd2faf9, 0x8678b7f7, 0x4d763262, 0x737cee23, 0x4ead70d9, 0x49f23d9e, 0xe62095c8, 0xd7bf3777
.word 0x597c45c5, 0xa668eb3c, 0x19682d96, 0x4d16c672, 0xf52f5842, 0x98bc3c08, 0x40235d11, 0xcf27bc84
.word 0x548a42db, 0x10407c19, 0x10acd522, 0xf937b331, 0x8a950abb, 0x312bc72d, 0x84a35a31, 0x13593dd8
.word 0xceda7cde, 0x4fc07698, 0xd5117372, 0x893ab785, 0xaaf074f5, 0xa2fa9280, 0x2460b48b, 0xca4235b3
.word 0x1381338a, 0xb3b96d68, 0x420d3f7f, 0x07f3a2f5, 0x2025b7ef, 0x27c00bed, 0x12707469, 0xce8a9d0d
.word 0xe9bd2253, 0x575af30a, 0xbf9218f4, 0xd0502f2b, 0xd05dc60b, 0x04b9f17a, 0x11b11b21, 0xfe414af8
.word 0x5f455d70, 0xe1caba05, 0xfdc8d6b6, 0x4e86a2b0, 0x818fb584, 0x60bd7a4b, 0xe280fc09, 0x1c7cc360
.word 0xf9154df3, 0xae6f040a, 0xd786aa3f, 0xf69efecb, 0xb0944c50, 0x3a76f3a4, 0x935301ec, 0x084f4fa5
.word 0x97af6970, 0x11d5625f, 0x5a34e27d, 0xad3799e8, 0x48b0a2bd, 0xf8b99b38, 0xceb28d80, 0x10fb91a1
.word 0x1f4214d5, 0xd8ff0b77, 0xdfcbe685, 0x7c45c61a, 0x0905e05c, 0x96d2f8db, 0x1511aade, 0x94359a18
.word 0x89ba8c61, 0xebfb912e, 0x6c0cfd8c, 0x59490023, 0xc5bf3152, 0x865104ca, 0x47fe32d4, 0x5cd45ba4
.word 0x3de283e3, 0xafef1fc3, 0x154040d6, 0x60506e1b, 0xf9fd58d1, 0xf35e181d, 0xe29589ea, 0x9a584528
.word 0x7dc02e64, 0x84144d43, 0x05379a46, 0x07adad71, 0xf7629aee, 0x7e5efb1b, 0x884af92a, 0xd9dedad8
.word 0x19c30a23, 0x2289dd91, 0xa387016f, 0xbeb0d9a2, 0x26ec4114, 0x07ab090f, 0xf8e44af2, 0x12af130f
.word 0x273b2d16, 0x8736a8c2, 0x880bfe8f, 0x76de953e, 0xd00fa74d, 0x43547052, 0x1c9221ea, 0x30dee714
.word 0xd4d98141, 0x256f5f58, 0xe542162e, 0xb779c911, 0x74228fbe, 0x0cc671a2, 0x229404f8, 0x3a8ce0e8
.word 0x8ea146cf, 0xa291063b, 0x8457ab14, 0x87af668c, 0xc9de78bb, 0x4ce2aa11, 0x4c849f06, 0x016f3a1a
.word 0xa31609d6, 0x616a8c7c, 0x6db47a90, 0xf12b2733, 0x564ef4d8, 0x7cfbd75e, 0xca3b9be1, 0xb6fa581f
.word 0xbb1c72f4, 0x1d1e7d9b, 0x7a9de486, 0x3e75f2a4, 0x73c24f87, 0x327b4a50, 0xbc7df67e, 0xe1afbcdf
.word 0xd79308d7, 0xde492bd2, 0x7c9661e2, 0x5f48fd5b
.section .region_1,"aw",@progbits;
region_1:
.word 0x60a7b21e, 0xa41c53d7, 0x5bafff64, 0xabd25828, 0x9529cc6b, 0x513e50be, 0xd382b8a8, 0x3efd6e5a
.word 0x36d51e88, 0xacedff64, 0x3c268a50, 0xe1859857, 0x89935d33, 0x06acaa69, 0x78aa36b9, 0x7821f8eb
.word 0xf91034a1, 0x418daf60, 0xb5bc457c, 0x7590aa52, 0xf7432a42, 0x6c9b3e86, 0xd2aca795, 0x2a47e6d5
.word 0xb9bed74d, 0xb30926b3, 0x0cfc2f82, 0x5ad8eb0d, 0xf81a1906, 0xb0433763, 0x8757b716, 0x8c0c0318
.word 0x2091d514, 0x315898dc, 0x2955cc6a, 0xbb10a8db, 0x51c1ff97, 0x068cbb32, 0x1cbe2a11, 0x2fe4700f
.word 0xb573b3cd, 0x12ff187e, 0x1058e51d, 0xc0ae1c11, 0x0e623d10, 0xcc1b5f54, 0x81b50508, 0xb937cd13
.word 0xc30ec7a7, 0xd49e861d, 0xe7cd3eb1, 0x8e3f4e7a, 0xc67a435c, 0x4fa983a4, 0xdb6bf41b, 0x363a59d8
.word 0x871a592f, 0xc635e3cc, 0x09024119, 0xf6a3145c, 0xe2bf7ef3, 0xfe9a3333, 0xaccb00ad, 0x1a6ac7db
.word 0x709ccafa, 0x1957dbdd, 0xba5d06b5, 0xb77b17a9, 0x6aaa990c, 0x5c4f1508, 0x0fd881f5, 0xbc81c3e2
.word 0xb90e6025, 0xd1a250d8, 0x1d9fe4cc, 0xf5d8065d, 0x2f8e9675, 0x8b86c737, 0x934b926e, 0x567297e0
.word 0x4ed04f9f, 0x3f4fd9ce, 0xf7fb02c0, 0x58fc6c7c, 0xf80cac90, 0x0d283d9e, 0x072ccb77, 0x41a70eff
.word 0xbb7a72c9, 0xbbb3e7d0, 0x1883dabf, 0x6c0618f5, 0xed3db9a2, 0x21c17ae7, 0x2047ce24, 0xaabd0daf
.word 0xce5f1b42, 0x432cdd23, 0x74be5de9, 0xcef3ae67, 0xcc1ff550, 0xa337c401, 0x7b0f1cb4, 0x84025dac
.word 0x33b08438, 0x7cc49306, 0x615e37b7, 0x9864ec06, 0x0f90d255, 0xb15cba8c, 0x897d1a49, 0xd5f06e58
.word 0xeaca872b, 0x7041be3d, 0x193c43e4, 0x8aad2959, 0xb63c8540, 0x785f8c5f, 0x019512b0, 0x8a3776e0
.word 0x119b13f9, 0x28679dc8, 0xa429f462, 0x0fd88af6, 0xdc4693b9, 0x43c10645, 0xbf0903d1, 0xd28f83a5
.word 0x30f9b977, 0x48b1f4d4, 0xf723e1aa, 0xf73c6499, 0x1a4db93a, 0xe3da040e, 0xdf6526ea, 0xbe175861
.word 0x80bda94e, 0x51e8e6d0, 0xb2823368, 0xb3fd727b, 0x07f0dabc, 0xf10fb6f5, 0x416ffecd, 0xb027904e
.word 0x3419fdc1, 0x7a3f65d7, 0x005c1fdb, 0xbcaba5ec, 0x6dedfea9, 0x38cc92f3, 0x395a4e2e, 0x365660de
.word 0xf899d3a8, 0x3d3e2fdb, 0x6d83a9da, 0x5eb88f56, 0xe0712699, 0x041726d3, 0x1ddd27d1, 0x47c66e79
.word 0x30fa79e9, 0x894e2d71, 0x0ce1905f, 0xc943b075, 0x14604a57, 0x993d8287, 0xedb88c74, 0x5b698ed4
.word 0x87675681, 0xe92f24d4, 0x61040705, 0x02a4aa65, 0x851a4ae5, 0x2fa7b489, 0xce407570, 0xc59df659
.word 0xd9152916, 0xe8d63377, 0x6fe1087b, 0xef54c3b4, 0x7fc8d836, 0xeabde47d, 0x8820b121, 0xd5c19a0e
.word 0x54ff7248, 0xad9955ac, 0x0748ffd6, 0x2e430304, 0x0d36f550, 0xc2a9faa3, 0x29ed3ebe, 0x24e063a9
.word 0xa362b7b7, 0x0b4b02ca, 0xffe92382, 0x85e796df, 0x35d5a8cc, 0x2a591e37, 0xe60c1f30, 0xc7e2f954
.word 0x26ec765f, 0x86e3d0d1, 0x48e8ea88, 0x66ab640c, 0x7452e0bf, 0x2220e052, 0xf736cee7, 0x9bc04352
.word 0xfde67ea1, 0x59aa08fc, 0x1ad03a15, 0x11fc9f36, 0xda2fe695, 0x5e7f1bf1, 0x9300396d, 0x307fb326
.word 0xf5d4d83e, 0x61e80633, 0xa196dee1, 0xe7220ba3, 0x974bdc39, 0x3d42dda1, 0xc7ff3d21, 0x0a5f514a
.word 0x31da188d, 0x37de0254, 0x6ca52852, 0x9fcc06d5, 0xf2e3502f, 0x2e5e6e2e, 0x52daf764, 0x40c901ae
.word 0x776a9107, 0x52ca4563, 0x628761e8, 0x85a56c18, 0x06e3e4b4, 0x0b5412b3, 0x524893b5, 0x8ae0378a
.word 0x504ed68e, 0x7bc7d3d9, 0x623e526e, 0xc974714d, 0x247686c8, 0x071519bf, 0x01fcd423, 0xac26125b
.word 0xe208a612, 0xc1af15cf, 0x67389df9, 0xee745b4f, 0x72ccd27a, 0xcf15dc87, 0xf0b9702d, 0xe892bd78
.word 0x410fb175, 0xb0e838ec, 0xc27a3ec9, 0x76b1fb66, 0xf61b7c11, 0x329ae238, 0x2756715d, 0xfd4f0265
.word 0x79f2f9c9, 0x3e311e45, 0x3ea0139f, 0x24d20e8f, 0xafa1ae02, 0x5321f390, 0x1acf4f21, 0x0bf51a8b
.word 0xb5d48db1, 0xf3e787b5, 0x04bfc36d, 0xb0b13a6f, 0x8396605b, 0x1ce00e6a, 0xe6a5d835, 0x05bc9b35
.word 0x6955bd7c, 0x4be37a86, 0x50783d20, 0x7f081d5f, 0xa4f38b37, 0x929b1b10, 0x9f63a489, 0xe37ec09a
.word 0xa747ca42, 0x530349b6, 0x051bbb6d, 0xc0871831, 0x43a610da, 0x6fc4554c, 0xeb041a96, 0x3ae02808
.word 0x0707be6b, 0x350253c4, 0x3b24d171, 0xe7eb0593, 0xb0402784, 0x7e45c146, 0xf7299a7b, 0xf96025e9
.word 0xd5342d80, 0x7e9e61ef, 0x086c6b1d, 0x4e1b45b0, 0x8d8d633a, 0x410f529a, 0x6094d747, 0x3863bd48
.word 0xef2a4d7a, 0xa08c6bc5, 0x0d0d0cf4, 0x1a172cd1, 0x11cb8c01, 0x1193e50e, 0x7df3a5f3, 0x91ff7c06
.word 0xd550729d, 0x4e18d56d, 0x329c7c48, 0xbef142c1, 0x550d3250, 0xf0679feb, 0xdd4c2bd7, 0xe0f721b9
.word 0xf1776a63, 0xe9d1bcbf, 0xa07772ff, 0xb7897a2f, 0x91cc12d4, 0x2b79e5a9, 0xdfab2991, 0xba2a73e3
.word 0x39a2df62, 0x974c9d35, 0x86e71a1e, 0x5e052890, 0xc134d80b, 0x89f8f28d, 0xe6dcbe84, 0x64dd891b
.word 0xccc53cee, 0x4abbbf59, 0x4297dc98, 0x47075221, 0x53bd63a5, 0xc893550f, 0x4ad0fdb5, 0x3c7b0a18
.word 0x0dcf4bdf, 0x1028958c, 0xf890979f, 0x98a67ef6, 0x03921ed8, 0xf0890647, 0xedaa8762, 0xc940f3f7
.word 0x5c640601, 0xe260bec2, 0x80422138, 0x408efa5f, 0x1b4f0021, 0x43580528, 0xcbc4fb7d, 0x2b5a4e79
.word 0xf7dbf215, 0x6fe89c1d, 0xced4ffc3, 0x9a839582, 0xf16f1b4c, 0xbfb61521, 0x66a925ff, 0x3f0dcbbe
.word 0x94067fe2, 0xe968fae7, 0x8b0579a7, 0xf454c418, 0x10f4fb26, 0x3f1c8b7c, 0x5dce1e65, 0x328cc70e
.word 0xbb6dd51d, 0xef6d2603, 0x91135f5a, 0xf43e4519, 0x367dcf57, 0x4e19aec9, 0x4608c0d0, 0x7962aa7a
.word 0xf346aae5, 0x8fd58df6, 0x7671aa41, 0x21abc1ee, 0xe0d7112f, 0x6522c538, 0x939fcfb2, 0xea2575d1
.word 0x243b893f, 0x7dde539b, 0xc3e4c239, 0xe9cdeff2, 0xbc52bb88, 0xefbd48ae, 0xf02534de, 0x12e66ae9
.word 0x9bf4ea70, 0xee4a19d1, 0x27128006, 0xdc98a874, 0xce5fcb73, 0x7f355a40, 0x437284df, 0x95c30418
.word 0xe610239e, 0x972567d0, 0x25b84539, 0xc152ddf1, 0xea3bda33, 0xbf854652, 0xab044e14, 0xea2f76f2
.word 0x1ea7b81b, 0x29ad937b, 0x0dcf849d, 0xcc2b6ada, 0x358c1eab, 0xa49d00e7, 0x7251f99d, 0x59d15688
.word 0x3ae411d0, 0x5271ee41, 0x6b889b22, 0x4087023a, 0x86accfed, 0x459d44b5, 0xe2b00388, 0x97793c81
.word 0x2ea0d063, 0xa4edaab5, 0x758b7ec9, 0x5fb5130f, 0xaf6282fa, 0x834f6817, 0x7c5880e6, 0xb75a1b42
.word 0x0fd2c315, 0xbf77aff9, 0x55eaf140, 0x82549069, 0x3680dd5e, 0x58fc4a3d, 0xc5756bf0, 0xc8e5d625
.word 0x82bca7d6, 0x3ee971a0, 0xf010a53a, 0xeb2baf8c, 0x68b62e55, 0x0ce87666, 0x4a2b157c, 0x974201db
.word 0xef901c97, 0x9914cde5, 0xde20c222, 0xd6f7df6a, 0xccb11e0a, 0x28b9568a, 0x781cbbcc, 0x0e0f5e69
.word 0x8a087ec9, 0xb3437e11, 0x1e8af565, 0x6cf7fdde, 0x294d6790, 0x760068b8, 0xe1490567, 0xccc691ee
.word 0x891fccbf, 0x2dae2fbe, 0x6277365a, 0x4e281ec8, 0x9b56b80e, 0x45dce6e7, 0x7786fb63, 0x478c1416
.word 0x9e4d0644, 0xbd3536e7, 0x880c5207, 0x4f045aa9, 0x530ca0a2, 0x211845c0, 0x8f9f7d3a, 0x3e1fc658
.word 0xdd58d478, 0x0a7733ad, 0x0393d502, 0xbb48f668
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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 0x1f
                  beqz x30, 1f
                  j mmode_intr_handler
                  1: la x20, test_done
                  jalr x0, x20, 0

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
                  add x4, x8, zero
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x30, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x30, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x30, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x30, x2, ecall_handler
                  li x2, 0x1
                  beq x30, x2, instr_fault_handler
                  li x2, 0x5
                  beq x30, x2, load_fault_handler
                  li x2, 0x7
                  beq x30, x2, store_fault_handler
                  li x2, 0xc
                  beq x30, x2, pt_fault_handler
                  li x2, 0xd
                  beq x30, x2, pt_fault_handler
                  li x2, 0xf
                  beq x30, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x8, x4, zero
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
                  add x8, x4, zero
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
                  add x8, x4, zero
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x8, x4, zero
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
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x8, x4, zero
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
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x8, x4, zero
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
