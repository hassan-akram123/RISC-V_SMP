.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x29, h0_start
jalr x0, x29, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x5, kernel_stack_end

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
                  li x0, 0x669e8208
                  li x1, 0x2
                  li x2, 0xa
                  li x3, 0x80000000
                  li x4, 0x2
                  li x6, 0xf29456ee
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0xfacac6ae
                  li x10, 0xeed1ab5f
                  li x11, 0x235b8647
                  li x12, 0x80000000
                  li x14, 0xfa00bbe5
                  li x15, 0x309bf138
                  li x16, 0xc3a9e8b9
                  li x17, 0xa81a4121
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x75f24de2
                  li x21, 0xe
                  li x22, 0xd153f0fa
                  li x23, 0x3
                  li x24, 0x0
                  li x25, 0xa271fea3
                  li x26, 0x5145355b
                  li x27, 0xfab82de6
                  li x28, 0xf8416d56
                  li x29, 0x59f82c51
                  li x30, 0xfaab4299
                  li x31, 0xfa03c55d
                  la x13, user_stack_end
main:             slli         s9, ra, 7
                  la           a0, sub_2
                  srl          s7, zero, s8
                  andi         s10, s11, -312
                  addi         a0, a0, 48
                  slt          t1, s6, a6
                  bge          a7, t1, main_j2 #branch to jump instr
                  auipc        s9, 725641
main_j2:          jalr         ra, a0, -48 #jump main -> sub_2
                  la           sp, region_0+957 #start riscv_load_store_rand_instr_stream_0
                  nop
                  nop
                  lbu          a2, 150(sp)
                  lbu          s10, 68(sp)
                  sb           s6, -41(sp)
                  lbu          t3, 80(sp)
                  sb           a1, 130(sp)
                  lbu          s0, -111(sp)
                  lbu          s11, 13(sp)
                  nop
                  lbu          ra, -28(sp)
                  addi         s4, t3, -1043
                  lw           gp, -157(sp)
                  lbu          s0, -248(sp)
                  sb           a1, 70(sp)
                  lb           s2, -71(sp)
                  lbu          s2, 120(sp)
                  slli         a2, s1, 13
                  lb           t2, -138(sp)
                  lbu          a6, 171(sp)
                  slti         tp, a3, 210
                  lw           a2, -217(sp)
                  lhu          s11, -135(sp)
                  addi         t6, s11, -361
                  lbu          t5, 231(sp)
                  sub          s7, s4, t5
                  lb           t5, 184(sp)
                  lbu          s11, 207(sp)
                  sra          s4, a2, s2
                  srai         s1, t5, 0
                  xor          a0, s1, s8
                  sb           s8, 157(sp)
                  lhu          s3, -47(sp)
                  lbu          t5, -25(sp)
                  addi         s0, t4, -1400
                  add          a4, t2, t3
                  lh           tp, 171(sp)
                  lbu          a0, -29(sp)
                  lb           a2, -50(sp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  sltiu        s8, a2, 456
                  lui          a0, 507796
                  or           s7, sp, s1
                  bltu         t4, a4, 14f
                  and          a7, sp, t1
                  sltu         a0, sp, s6
                  and          s10, ra, s7
                  sub          gp, a5, t4
                  srai         a2, zero, 10
                  or           s4, t0, s2
                  addi         t5, a7, -138
                  slt          t1, s10, t2
                  sra          sp, t1, t0
14:               nop
                  beq          ra, zero, 27f
                  ori          a5, a7, 1962
                  srai         ra, s6, 7
                  sub          s9, s1, a4
                  slt          s11, s8, t3
                  addi         a7, t2, 1539
                  srli         zero, s5, 4
                  slli         t2, t1, 29
                  sub          ra, t4, a1
                  srli         s10, a5, 31
                  beq          a4, s10, 38f
                  or           t6, ra, a1
27:               ori          t3, s4, -1933
                  srai         t5, t5, 19
                  slti         t5, zero, 1217
                  nop
                  lui          ra, 850422
                  sltu         s1, s10, t2
                  add          zero, s7, zero
                  slt          s4, s8, a0
                  blt          s8, t0, 48f
                  lui          s10, 915625
                  lui          t1, 170022
38:               and          s2, zero, s7
                  auipc        s6, 869962
                  xori         t6, tp, -1997
                  la           s6, sub_1
                  addi         s6, s6, 554
                  xori         s3, a2, -1129
                  bgeu         s4, a3, main_j1 #branch to jump instr
                  addi         a7, gp, 1299
                  sll          t5, tp, s10
                  add          s1, s1, s1
                  addi         s5, s0, 1398
                  sll          gp, s5, s7
main_j1:          jalr         ra, s6, -553 #jump main -> sub_1
                  xori         s4, t6, 1683
                  addi         a7, s0, -639
                  nop
                  sra          gp, t0, t2
                  lui          gp, 1044383
                  bne          t2, a0, 56f
                  bgeu         s5, s2, 50f
48:               addi         s11, s6, -1459
                  auipc        s0, 561946
50:               add          zero, gp, t1
                  bge          a6, s8, 56f
                  bne          s6, a1, 59f
                  sltiu        t5, a2, -554
                  xor          t5, s10, s7
                  sub          t1, a5, s7
56:               blt          t1, tp, 73f
                  sltu         t5, s11, s11
                  bgeu         s3, s2, 72f
59:               bgeu         s8, tp, 74f
                  sll          tp, a2, t1
                  bgeu         a6, s0, 71f
                  slti         s10, s10, 814
                  bge          gp, gp, 82f
                  sra          a5, s11, t3
                  sltu         ra, s7, sp
                  slt          t3, s0, a6
                  xor          s4, s0, s7
                  xori         a7, zero, 999
                  bltu         t5, a7, 76f
                  slti         s0, a0, 155
71:               bne          ra, gp, 85f
72:               lui          t3, 267642
73:               slt          s7, s8, s9
74:               beq          a3, a4, 87f
                  nop
76:               sra          s6, t0, ra
                  slt          s0, s9, a4
                  slti         t5, s1, 843
                  and          s1, gp, a3
                  srl          s8, a0, a3
                  bne          t4, t6, 82f
82:               sltu         zero, a7, a0
                  bltu         a1, s4, 88f
                  addi         s11, t4, 592
85:               xor          s7, a2, t0
                  and          a2, s6, a0
87:               and          s3, a5, sp
88:               srli         s5, s11, 20
                  bltu         t4, a0, 90f
                  and          s6, t6, s7
                  la           s10, sub_3
                  xor          s6, s6, a4
                  slti         ra, a3, -1636
                  srli         ra, s0, 10
                  nop
                  sltu         s7, a4, s9
                  slt          s9, a0, ra
                  addi         s10, s10, -410
                  slti         a6, s11, -1696
                  addi         t5, tp, 723
                  srli         s6, s2, 16
main_j3:          jalr         ra, s10, 411 #jump main -> sub_3
90:               nop
                  slti         tp, ra, -1654
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_5:            blt          s0, s0, sub_5_stack_p
                  addi         a7, a7, 1375
                  add          zero, s3, s2
                  srl          zero, t5, s4
sub_5_stack_p:    addi         a3, a3, -20
                  auipc        s1, 687898
                  slt          s8, s10, a6
                  ori          s3, s9, -1761
                  sw           ra, 4(a3)
                  srai         s4, a2, 23
                  nop
                  sra          gp, s11, s0
                  slli         s6, s0, 25
                  la           t3, sub_7
                  addi         t3, t3, 1013
                  add          s4, a6, zero
                  xor          t1, t3, t0
                  srli         sp, t1, 4
                  and          s2, s9, ra
                  ori          s5, tp, -1544
                  xori         a7, s0, 307
                  add          t1, tp, s5
                  bltu         sp, a4, sub_5_j8 #branch to jump instr
                  sltiu        a2, a4, 1097
sub_5_j8:         jalr         ra, t3, -1013 #jump sub_5 -> sub_7
                  srai         s3, a3, 6
                  la           ra, sub_7
                  and          tp, s0, a5
                  srl          a7, t4, a7
                  slt          s1, sp, s3
                  addi         ra, ra, 672
                  ori          s7, a0, -774
                  bne          s0, a0, sub_5_j9 #branch to jump instr
                  lui          s9, 901888
                  srli         s4, t2, 0
                  xori         s3, t4, 826
                  srai         a4, sp, 8
                  slti         t3, s9, 437
sub_5_j9:         jalr         ra, ra, -672 #jump sub_5 -> sub_7
                  sub          s6, s7, ra
                  ori          a1, gp, 4
                  slti         a1, gp, -295
                  andi         s6, s11, -1600
                  beq          ra, a0, 8f
                  slt          s8, s1, s0
                  bgeu         a4, t1, 17f
                  lui          s2, 402924
8:                blt          tp, a3, 24f
                  sub          t2, t1, a2
                  blt          t4, s5, 25f
                  auipc        s7, 743981
                  srli         s0, t2, 22
                  slti         tp, t2, -1045
                  srli         s8, s11, 14
                  sll          a6, t6, s9
                  bge          gp, s10, 19f
17:               sltiu        t1, t5, 1739
                  sltu         ra, gp, a2
19:               slt          a7, t0, t5
                  srai         s4, s3, 21
                  addi         s2, s6, 1499
                  srai         s8, ra, 19
                  ori          s1, s7, 1419
24:               sltu         s6, s3, a6
25:               bne          s5, t5, 37f
                  slti         t5, a5, -173
                  srl          s6, a1, a1
                  sltiu        a1, a7, 241
                  srai         ra, zero, 24
                  auipc        t2, 155616
                  slli         tp, t1, 15
                  or           tp, s10, a5
                  andi         s5, s5, 57
                  auipc        t2, 15272
                  srl          gp, s1, a3
                  srl          t1, gp, s8
37:               xori         s6, t3, 1759
                  add          a0, a1, s0
                  auipc        zero, 966164
                  sra          a7, s10, a2
                  ori          a4, s7, -20
                  bge          s1, t0, 45f
                  lui          s11, 15827
                  slt          s11, t1, s6
45:               sub          a6, s5, s5
                  auipc        s4, 902843
                  srai         s2, t6, 15
                  and          a2, s6, s9
                  xori         s6, a5, -959
                  lw           ra, 4(a3)
                  addi         a3, a3, 20
                  ori          s5, s2, 709
                  slli         a2, s3, 11
                  sub          a6, t0, s11
                  sltiu        s8, t5, 1299
                  sra          gp, s2, a2
                  ori          s9, t6, -53
                  sltu         s9, a1, s3
                  nop
                  xor          t2, a6, a1
100:              addi x25, x1, 1
100:              jalr x25, x25, 0
sub_2:            bne          a2, s3, sub_2_stack_p
                  slti         a4, s3, 1440
                  or           a0, a4, s1
                  addi         s1, t1, -198
sub_2_stack_p:    addi         a3, a3, -36
                  slti         s10, t4, 331
                  sw           ra, 4(a3)
                  addi         a7, a7, -544
                  sltu         s7, zero, s0
                  slti         t5, s0, 1889
                  bge          tp, a2, sub_2_j4 #branch to jump instr
                  add          s5, t5, s1
                  sltu         s2, s5, s6
                  slli         s4, s11, 15
sub_2_j4:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  la           a6, sub_4
                  srai         gp, t4, 5
                  slt          s2, sp, s7
                  srli         s9, ra, 4
                  addi         a6, a6, 904
                  sltiu        sp, ra, -420
                  xori         s3, s2, 408
                  or           s6, s10, t2
                  bne          s7, s1, sub_2_j5 #branch to jump instr
                  slti         t2, t5, 1731
                  sltu         zero, s8, t1
sub_2_j5:         jalr         ra, a6, -903 #jump sub_2 -> sub_4
                  la           a4, sub_5
                  auipc        s0, 741872
                  addi         a4, a4, 409
                  slt          s3, s5, s5
                  sltiu        s5, t5, -13
                  sll          s9, s8, a1
                  blt          a7, s9, sub_2_j6 #branch to jump instr
                  srai         t5, s7, 29
sub_2_j6:         jalr         ra, a4, -408 #jump sub_2 -> sub_5
                  xor          s2, a6, a2
                  blt          t4, tp, 15f
                  auipc        tp, 727758
                  sra          a6, s11, s1
                  andi         sp, s11, -1435
                  beq          a3, s6, 10f
                  and          zero, gp, s7
                  sub          a1, zero, a7
                  srli         a6, a4, 20
                  bne          t1, a7, 21f
10:               bgeu         a1, tp, 17f
                  sub          s7, sp, a7
                  bne          s8, t0, 27f
                  or           s8, s6, t6
                  srl          gp, s6, s2
15:               add          a1, t0, ra
                  bgeu         s10, s3, 27f
17:               or           t6, t0, gp
                  beq          s1, s3, 27f
                  andi         ra, t1, 1671
                  ori          a6, t1, 1071
21:               and          tp, s1, tp
                  srl          t3, s9, s1
                  slti         s8, t3, 742
                  andi         s9, s7, -626
                  auipc        s8, 488104
                  srl          s7, s3, t1
27:               auipc        s10, 946310
                  lw           ra, 4(a3)
                  slti         a2, tp, 1859
                  nop
                  addi         a3, a3, 36
                  nop
                  slt          gp, t1, s5
                  or           s0, s5, s2
                  auipc        s4, 898001
                  andi         s10, t2, 1092
                  xor          s1, t6, s8
                  slli         s0, s4, 23
75:               addi x3, x1, 1
75:               jalr x3, x3, 0
sub_4:            sub          s10, a2, a7
                  slti         tp, zero, 1037
                  slti         t5, t6, 517
                  beq          s11, a0, sub_4_stack_p
sub_4_stack_p:    addi         a3, a3, -12
                  sub          s0, t5, t6
                  sw           ra, 4(a3)
                  sll          s8, s2, gp
                  la           t2, region_0+45 #start riscv_load_store_rand_instr_stream_2
                  lh           t6, 169(t2)
                  add          s2, a6, a3
                  srli         a6, s11, 23
                  sb           s8, 180(t2)
                  sltu         s1, t6, s6
                  sb           a4, 226(t2)
                  addi         a0, s10, 1903
                  lbu          a7, 238(t2)
                  sh           sp, 13(t2)
                  lh           t3, 27(t2)
                  slli         a2, t5, 15
                  sltu         a2, a2, a6
                  srai         s0, a3, 24
                  srai         s0, a2, 22
                  ori          s3, ra, -1003
                  lh           s7, -21(t2)
                  auipc        s1, 643596
                  lb           t1, 92(t2)
                  sb           t0, 60(t2)
                  ori          s11, a4, 901
                  sh           s8, 195(t2)
                  sb           s8, 81(t2)
                  slt          s10, t2, a6
                  lbu          t5, 0(t2)
                  sra          s8, t1, a6
                  sh           a6, 77(t2)
                  add          s3, a2, s4
                  sb           s6, 120(t2)
                  slli         s7, s9, 20
                  sh           t1, 13(t2)
                  lui          s5, 323285
                  srli         s10, a1, 27
                  nop
                  andi         a6, a0, 723
                  slli         zero, s0, 1
                  sb           tp, 96(t2)
                  sb           a1, 32(t2) #end riscv_load_store_rand_instr_stream_2
                  la           a1, region_1+1492 #start riscv_load_store_rand_instr_stream_1
                  sb           a0, -27(a1)
                  srl          t5, s8, t3
                  sh           a3, 24(a1)
                  xori         s0, t5, 152
                  lhu          s11, 50(a1)
                  lh           s9, 2(a1)
                  slti         gp, t4, 1625
                  xor          t2, s6, a1
                  lui          s3, 962325
                  sb           a3, 19(a1)
                  slt          s4, a5, t3
                  lhu          a5, -56(a1)
                  andi         s7, sp, 1697
                  sll          s3, s4, zero
                  sw           s9, 28(a1)
                  ori          a0, s5, -314
                  srli         a0, a4, 20
                  slli         s4, s3, 0
                  lbu          sp, -35(a1)
                  slt          a5, t6, t1
                  sra          t1, ra, a0
                  slli         sp, a6, 21
                  sb           s8, -1(a1)
                  add          a0, zero, t2
                  sub          zero, t6, t1
                  slli         s2, a7, 1
                  nop
                  sub          a2, t3, a1
                  slli         s3, s4, 26
                  xori         tp, a4, -993
                  and          a6, t2, s10
                  lbu          t1, 7(a1)
                  lbu          s2, 57(a1) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1218 #start riscv_load_store_rand_instr_stream_6
                  auipc        t3, 681444
                  xor          zero, gp, t3
                  addi         s5, a7, 551
                  lbu          a1, 11(sp)
                  sub          s6, a6, a7
                  lb           s2, -15(sp)
                  and          s4, tp, t4
                  sh           ra, 16(sp)
                  auipc        t3, 267491
                  sb           t3, -11(sp)
                  ori          gp, s7, -1069
                  lw           s5, 10(sp)
                  auipc        t1, 703945
                  slti         t2, s2, 512
                  slli         s11, s9, 26
                  sh           t3, -16(sp)
                  lb           s5, -15(sp)
                  lbu          s2, 5(sp)
                  sw           zero, -2(sp)
                  lhu          t2, 2(sp)
                  lb           a7, -13(sp)
                  slli         s8, s1, 10
                  sra          tp, a1, s0
                  sb           t5, 0(sp)
                  srai         t5, s5, 30
                  lhu          s8, -4(sp)
                  xor          a0, a7, t2
                  and          a6, s2, s9
                  sra          t2, a2, a5
                  srli         s11, sp, 31
                  or           s2, s4, s10
                  lbu          t5, -1(sp)
                  andi         t1, a6, -1739
                  andi         s4, t0, 79
                  andi         t2, t0, -1082
                  lb           a0, 15(sp)
                  lbu          s7, -9(sp)
                  lw           t6, 10(sp)
                  ori          t5, t5, 1587
                  xor          tp, s5, s0
                  sw           s1, -14(sp)
                  sltu         s3, t2, a4
                  lh           t6, 0(sp)
                  sb           t3, -1(sp)
                  lbu          s2, -9(sp)
                  lb           s1, -9(sp)
                  lhu          t3, 14(sp)
                  sb           s6, -11(sp) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_1+478 #start riscv_load_store_rand_instr_stream_4
                  lhu          s0, 924(ra)
                  slti         s5, t0, 800
                  lhu          t1, 642(ra)
                  sb           s7, 187(ra)
                  andi         t1, a0, -561
                  nop
                  nop
                  andi         t1, tp, 2030
                  sw           s1, 1098(ra)
                  lw           zero, 1254(ra)
                  ori          s11, gp, 928
                  lhu          gp, 342(ra)
                  lb           s8, 535(ra)
                  lui          a6, 332498
                  slti         t3, s9, -981
                  sub          a5, s5, t5
                  sw           a3, -414(ra)
                  lb           t3, -169(ra)
                  lb           tp, -79(ra)
                  lb           t6, 1059(ra)
                  srai         a1, ra, 12
                  srai         a0, t3, 10
                  sh           s3, -272(ra)
                  srli         s1, a4, 31
                  sb           a5, 1508(ra)
                  and          a6, t2, tp
                  lbu          a7, 1395(ra)
                  xor          gp, a3, a0
                  sb           a2, -253(ra)
                  slli         t6, a3, 13
                  sb           t1, 1080(ra)
                  lb           s4, -263(ra)
                  lhu          s6, 652(ra)
                  srl          a2, s7, s0
                  or           a5, s0, s4
                  slli         a6, a4, 18
                  srl          a5, s9, a7
                  sb           s4, 726(ra)
                  lb           a6, 600(ra)
                  sll          s3, t1, a0
                  srli         s8, zero, 30
                  sltu         s1, s2, a6
                  lb           a4, -265(ra) #end riscv_load_store_rand_instr_stream_4
                  la           ra, region_0+1 #start riscv_load_store_rand_instr_stream_3
                  lb           s4, 56(ra)
                  andi         s10, a2, 856
                  xori         s0, tp, -606
                  sll          t2, a2, s9
                  srl          s7, s6, a7
                  slt          a5, s4, s7
                  lw           s5, 19(ra)
                  lui          s7, 695429
                  srai         s1, a4, 26
                  sltiu        s2, t3, 841
                  lw           sp, 43(ra)
                  sub          t6, ra, s5
                  sb           gp, 47(ra)
                  ori          a4, gp, -557
                  srli         s10, a0, 9
                  lbu          t6, 34(ra)
                  lh           t5, 45(ra)
                  xor          s1, s6, t2
                  sh           s4, 17(ra)
                  sb           t2, 50(ra)
                  sll          s3, t4, a7
                  or           a7, a6, s5
                  lb           a4, 53(ra)
                  auipc        s1, 840710
                  addi         t3, tp, 301
                  lb           s1, 50(ra)
                  srai         sp, s6, 15
                  lbu          s8, 39(ra)
                  and          s9, a0, tp
                  sltu         a7, s11, s5
                  sh           s9, 17(ra)
                  sh           s0, 49(ra) #end riscv_load_store_rand_instr_stream_3
                  lui          tp, 125781
                  xor          sp, s0, a3
                  bltu         t2, a2, 5f
                  addi         sp, s2, 1804
                  slli         t3, sp, 9
5:                or           a6, s4, s8
                  sra          s7, s2, s0
                  addi         s1, a7, 1947
                  slt          zero, s10, a7
                  bge          a4, sp, 25f
                  beq          a2, t1, 23f
                  and          ra, a7, a0
                  andi         ra, s2, -1247
                  srl          a1, a2, a5
                  ori          a2, s9, 489
                  add          t1, s0, a1
                  sra          t5, a7, t1
                  andi         a4, t0, 1456
                  bge          t0, zero, 21f
                  ori          t1, t3, -1605
                  auipc        s0, 245039
21:               xori         s3, t6, 1817
                  srli         s7, s6, 28
23:               srai         sp, a2, 21
                  srai         a4, zero, 27
25:               bltu         t4, s8, 32f
                  slli         zero, s6, 1
                  sltu         t2, ra, a3
                  beq          s4, s5, 34f
                  la           sp, region_0+168 #start riscv_load_store_rand_instr_stream_0
                  lbu          s9, 887(sp)
                  sltu         t2, s6, s3
                  lw           s10, 356(sp)
                  lh           s0, 980(sp)
                  sub          s9, s6, a5
                  lb           a5, 1391(sp)
                  sub          s5, sp, s8
                  nop
                  sb           t1, 715(sp)
                  lw           s0, 180(sp)
                  lbu          s0, 300(sp)
                  lb           a0, 820(sp)
                  sltu         s0, t6, s11
                  lbu          gp, 1649(sp)
                  sb           gp, 1087(sp)
                  sb           t1, 1287(sp)
                  sb           s11, -51(sp)
                  srai         s2, s0, 18
                  sltu         t6, s9, t4
                  srai         a4, t3, 22
                  lh           s3, 1364(sp)
                  sb           ra, 117(sp)
                  sltu         tp, s2, s4
                  sb           zero, 693(sp)
                  sb           t1, 1377(sp)
                  xori         a2, s3, -1144
                  sub          s6, t5, zero
                  add          a1, t0, s3
                  lui          s0, 684867
                  lb           s7, 499(sp)
                  sh           t5, 46(sp)
                  lw           a7, 648(sp)
                  sb           s9, 541(sp)
                  or           s6, s5, s8
                  sra          s7, s1, s11
                  slt          a0, tp, s11
                  lhu          s3, 438(sp)
                  lw           s4, -168(sp)
                  sh           s11, 654(sp)
                  srli         gp, s3, 15
                  lb           t1, 997(sp)
                  lw           t3, 1280(sp) #end riscv_load_store_rand_instr_stream_0
                  xor          s8, a0, s0
                  slti         a1, a0, 1106
                  slti         t2, s10, -2
32:               beq          s9, a1, 34f
                  or           ra, a4, t0
34:               bne          a7, a3, 42f
                  sll          s2, t2, s5
                  blt          t0, zero, 48f
                  srl          s5, s9, a4
                  sll          a4, sp, s4
                  beq          gp, t6, 53f
                  ori          a1, tp, -829
                  srl          s3, s2, a4
42:               nop
                  xor          s3, t0, ra
                  srl          s6, a3, a1
                  sltiu        t2, a0, 700
                  sll          gp, s6, ra
                  slti         t3, s2, 1025
48:               blt          a0, s3, 49f
49:               nop
                  lui          t5, 74871
                  bgeu         s2, s10, 70f
                  sltu         a2, a4, s2
53:               ori          a0, t1, 1049
                  xor          a1, t1, s9
                  sltiu        s7, t5, -303
                  sub          gp, s6, a1
                  slli         a1, s9, 11
                  auipc        s4, 899090
                  ori          sp, t5, 873
                  xori         s2, s9, 923
                  and          t1, t5, zero
                  srli         s3, t1, 19
                  sub          s8, s4, a5
                  sltiu        a6, s2, -1554
                  sll          s9, s4, t5
                  nop
                  sltu         a5, t6, gp
                  sub          gp, ra, s3
                  slt          s11, s10, t4
70:               srai         s4, s6, 7
                  slt          s1, t3, t5
                  xor          s8, a0, gp
                  and          a1, s10, a5
                  xor          a0, s7, a5
                  sra          a7, s4, s3
                  auipc        a7, 943349
                  andi         zero, gp, -1553
                  srl          a1, ra, a3
                  bge          t6, s10, 98f
                  sra          s8, s5, s0
                  srai         t1, s10, 20
                  xori         t5, tp, -941
                  sra          zero, t5, s11
                  andi         t6, s1, 1126
                  beq          t5, s5, 98f
                  lui          tp, 12480
                  bne          a5, s9, 88f
88:               srl          s9, s7, zero
                  sll          a7, t3, a1
                  addi         sp, s8, 965
                  bne          sp, a3, 101f
                  sra          a1, ra, t0
                  nop
                  sltu         s0, s2, a3
                  bgeu         a3, s9, 106f
                  auipc        a4, 148432
                  bge          a5, t4, 109f
98:               and          ra, s4, s6
                  nop
                  beq          s8, t0, 119f
101:              addi         t3, s1, 314
                  andi         a4, t1, -1306
                  ori          s6, a2, -1065
                  slti         t5, t4, 2039
                  xori         s1, t1, -1024
106:              blt          s0, ra, 126f
                  bltu         gp, t3, 112f
                  xor          s4, s9, a3
109:              and          s11, s11, a2
                  xor          a5, tp, a1
                  srli         s3, t6, 25
112:              srl          t1, s1, s7
                  slti         s5, tp, 1722
                  beq          a0, a5, 128f
                  bltu         a6, zero, 117f
                  beq          ra, s4, 120f
117:              andi         t5, t2, 1766
                  beq          a3, s0, 131f
119:              blt          a3, s11, 134f
120:              beq          ra, t4, 122f
                  srl          a7, zero, zero
122:              xor          zero, a1, s0
                  slti         a7, s7, 768
                  beq          zero, s6, 126f
                  srai         s4, a4, 8
126:              xor          zero, a5, s6
                  andi         s5, s0, 1871
128:              bltu         t6, t5, 142f
                  sll          s0, zero, s1
                  addi         a7, t2, 1950
131:              ori          s0, t4, 462
                  ori          a2, t1, 1252
                  ori          ra, t4, 775
134:              bltu         s5, s5, 148f
                  bge          a6, s10, 137f
                  or           t6, t3, s6
137:              bgeu         s0, s1, 152f
                  xori         ra, a4, -974
                  sra          s0, a3, a4
                  sub          ra, s8, tp
                  xor          s5, sp, gp
142:              lui          s0, 276349
                  slli         s10, s3, 15
                  bgeu         t2, s3, 156f
                  lui          sp, 127347
                  andi         t1, sp, -41
                  bne          tp, a1, 161f
148:              srai         a4, gp, 8
                  bltu         s1, t3, 155f
                  sub          a5, a1, zero
                  slli         s3, s1, 24
152:              bgeu         s7, a3, 163f
                  slt          t5, t3, s5
                  slli         s8, a0, 4
155:              or           s9, a6, t5
156:              addi         s8, a2, 724
                  srai         a7, s4, 1
                  addi         s4, s4, 835
                  and          s10, s9, s11
                  ori          a7, t3, 785
161:              blt          s3, a1, 162f
162:              sll          s10, t4, t1
163:              and          t2, zero, a2
                  auipc        a5, 794076
                  lui          t5, 158397
                  bgeu         a1, a0, 173f
                  and          s8, s4, s4
                  bgeu         s0, s11, 170f
                  sll          t3, s9, tp
170:              bne          zero, a6, 182f
                  sra          s4, gp, a4
                  and          s11, gp, s11
173:              bltu         a0, s1, 187f
                  la           s5, region_0+1068 #start riscv_load_store_rand_instr_stream_5
                  or           s4, s4, tp
                  sh           s7, 622(s5)
                  lbu          ra, -349(s5)
                  sll          gp, s10, a7
                  srli         s11, a3, 2
                  nop
                  add          a5, t3, s1
                  addi         s8, s10, 1515
                  slli         tp, ra, 5
                  lb           s3, 914(s5)
                  sh           t2, 92(s5)
                  srl          s7, ra, s11
                  lb           a1, -761(s5)
                  srai         gp, t2, 30
                  lbu          t5, 571(s5)
                  srai         sp, s6, 23
                  xori         a2, s1, 926
                  lh           s11, -618(s5)
                  srai         a0, sp, 20
                  sb           s6, -533(s5)
                  sltiu        t3, t5, -1815
                  lw           s10, -936(s5)
                  add          sp, a7, t3
                  sb           t3, -82(s5)
                  lhu          a2, -112(s5)
                  sub          sp, s3, ra
                  or           a7, t6, a5
                  xori         t6, a2, 1699
                  lb           s4, 77(s5)
                  sb           t1, 45(s5)
                  sb           s6, 593(s5)
                  slti         t3, tp, 212
                  sll          s3, s10, t2
                  sb           s2, 360(s5)
                  xori         t1, s4, 1357
                  slt          s7, a1, s0
                  lbu          a6, -561(s5)
                  lb           s6, -425(s5)
                  srai         gp, s9, 18
                  sll          a1, a7, a4
                  lhu          a4, 100(s5) #end riscv_load_store_rand_instr_stream_5
                  sra          a4, a3, a0
                  bltu         t5, s11, 185f
                  bge          s1, a1, 179f
                  sll          s11, a5, s8
                  srl          tp, zero, gp
179:              bgeu         t6, a1, 198f
                  slti         a0, tp, 166
                  andi         s7, s10, 1944
182:              auipc        zero, 36949
                  bge          ra, s2, 185f
                  sltu         s4, a0, s1
185:              sltiu        s8, s5, 391
                  sltu         s6, a7, a6
187:              auipc        ra, 651487
                  bge          s10, s5, 190f
                  beq          s2, s6, 197f
190:              bne          t0, a0, 194f
                  slli         ra, t4, 14
                  slt          a7, t1, a6
                  beq          s5, s2, 198f
194:              blt          a1, a1, 208f
                  bge          s8, s4, 211f
                  bgeu         t6, s10, 215f
197:              slti         sp, s6, -1297
198:              slti         ra, a5, 994
                  andi         a6, a7, 1432
                  add          ra, s4, t3
                  bgeu         a0, t4, 215f
                  sra          ra, t3, a5
                  and          a0, s1, t5
                  sltu         t2, s3, tp
                  sltiu        s10, s4, -53
                  blt          s11, gp, 219f
                  srli         s5, t0, 24
208:              bgeu         a5, a5, 228f
                  nop
                  addi         s4, t3, 1047
211:              lui          a2, 478122
                  slli         t3, a2, 1
                  slli         a1, s6, 9
                  srai         s11, a5, 7
215:              nop
                  bltu         s0, s1, 229f
                  srli         s6, zero, 28
                  bge          gp, a5, 237f
219:              addi         s7, gp, 329
                  xor          s6, tp, s7
                  blt          a6, a5, 222f
222:              srai         s10, a0, 24
                  srli         s0, s5, 5
                  xor          ra, t0, s5
                  bgeu         ra, a0, 238f
                  auipc        s8, 653241
                  xor          zero, zero, t3
228:              add          gp, s4, a6
229:              bltu         a1, gp, 232f
                  bge          s7, t6, 244f
                  xori         t5, s9, 138
232:              auipc        s0, 1002289
                  lui          t1, 924437
                  slli         sp, s9, 14
                  or           s8, s1, s8
                  bltu         a6, s8, 237f
237:              srl          gp, gp, a0
238:              slti         a5, s3, -601
                  nop
                  add          a0, s6, a1
                  beq          a7, s4, 243f
                  sll          a6, s9, s2
243:              lui          s1, 508880
244:              andi         s3, s10, -1036
                  xori         t1, s4, -1600
                  nop
                  andi         s3, t4, -1113
                  srl          t1, s3, a6
                  sub          a0, tp, zero
                  sub          a7, s6, s8
                  sra          t3, s0, s11
                  add          s5, s7, t2
                  auipc        s10, 925688
                  and          t1, t0, tp
                  slli         a7, s8, 6
                  bge          s2, a5, 258f
                  andi         t6, t3, 2034
258:              auipc        tp, 1005103
                  lui          gp, 361858
                  bgeu         t5, a5, 270f
                  sltu         t5, a1, t5
                  srli         s11, s2, 2
                  nop
                  xori         s6, zero, 469
                  sltu         a5, zero, s4
                  blt          s0, s8, 286f
                  sll          tp, s3, s5
                  srai         s0, s11, 28
                  add          s4, t6, s2
270:              bltu         s3, ra, 273f
                  add          a4, a5, ra
                  sll          s3, s2, tp
273:              sltu         t3, t5, s8
                  srl          s3, tp, s9
                  sra          tp, t4, s8
                  slti         tp, t4, 1348
                  andi         s11, s4, 213
                  xor          s11, sp, s9
                  sltu         s10, t6, t5
                  beq          a4, s9, 285f
                  bne          s1, a7, 300f
                  slli         zero, a6, 27
                  bne          s10, t5, 286f
                  beq          s11, s11, 296f
285:              xor          s6, t2, tp
286:              bltu         zero, s4, 299f
                  bge          gp, t0, 301f
                  bne          a4, t3, 295f
                  andi         tp, t5, 1652
                  sltu         s1, tp, a7
                  slt          a4, s11, t4
                  bltu         ra, s9, 300f
                  srl          gp, s10, t4
                  andi         a4, s7, -1002
295:              bltu         t1, a5, 310f
296:              sltu         s10, s2, a2
                  beq          s10, t5, 313f
                  auipc        t6, 737634
299:              xori         s4, s1, 1623
300:              slti         s5, tp, -1618
301:              srai         a2, t2, 19
                  bne          s1, t5, 303f
303:              srli         a7, zero, 19
                  srai         tp, gp, 24
                  or           s4, s4, s7
                  lui          s10, 659796
                  and          t2, s6, t3
                  and          a1, a2, s2
                  slt          a6, s5, t1
310:              or           a2, gp, s2
                  ori          a4, t0, 116
                  sra          a1, s11, s7
313:              nop
                  blt          s10, ra, 328f
                  auipc        a6, 488501
                  srli         t6, a1, 9
                  slti         s9, a1, 1071
                  nop
                  bne          t3, ra, 321f
                  sltiu        s6, ra, -589
321:              or           s10, s10, a2
                  slli         a4, s6, 13
                  slli         a5, a7, 8
                  slt          s2, a1, a1
                  ori          a4, a4, -807
                  andi         s6, a6, 1502
                  sltu         s7, t6, t1
328:              lui          s6, 1004472
                  addi         a2, s0, -103
                  srl          s0, s2, a5
                  sra          s10, s1, t6
                  beq          a7, gp, 351f
                  bgeu         gp, ra, 352f
                  slli         t6, t2, 3
                  lui          s8, 699865
                  bgeu         a4, zero, 338f
                  add          t2, t2, t3
338:              or           s3, a1, t4
                  andi         sp, ra, 1952
                  xori         s5, a7, -938
                  bne          s10, a7, 355f
                  slti         s11, a1, -26
                  slti         a1, s2, 1610
                  ori          sp, t2, 1945
                  addi         s0, gp, 36
                  slti         t1, s0, -316
                  sub          a6, t0, a4
                  bgeu         tp, t1, 354f
                  bgeu         s1, t5, 360f
                  bltu         tp, gp, 363f
351:              addi         s0, s11, -697
352:              slti         s11, s6, 1802
                  slti         a6, ra, 975
354:              auipc        a4, 634285
355:              auipc        t5, 747225
                  auipc        a5, 578796
                  srli         a4, s1, 0
                  sub          s6, a4, s4
                  sub          ra, s7, s4
360:              ori          s5, t2, -1475
                  slti         tp, t0, -455
                  sub          t3, ra, t4
363:              bltu         ra, ra, 375f
                  slt          a7, a2, t2
                  slli         ra, s6, 4
                  lui          s7, 361426
                  srai         s11, sp, 25
                  or           s8, t0, t3
                  sltiu        a5, s10, 936
                  add          s6, s8, a0
                  and          tp, a7, t6
                  or           s11, a6, s11
                  bne          s5, s7, 386f
                  nop
375:              sll          s4, s5, s10
                  or           t5, a1, gp
                  srai         s11, t5, 26
                  sltu         s4, a5, s7
                  bgeu         a5, a4, 383f
                  slti         s5, t2, 1586
                  xori         t6, s7, 1165
                  ori          a2, a5, -74
383:              beq          t6, a5, 397f
                  slti         a5, ra, 1510
                  andi         a4, s11, 1021
386:              bgeu         s4, zero, 389f
                  xori         s2, s8, 200
                  blt          s7, t3, 392f
389:              xori         s11, t5, -569
                  srai         s2, s1, 2
                  andi         a6, s0, -1010
392:              srai         s2, sp, 6
                  sub          s1, s4, s1
                  auipc        t1, 788659
                  addi         s7, s5, 1214
                  addi         zero, s11, 1548
397:              slli         s8, s6, 23
                  auipc        sp, 433161
                  xor          t2, a5, a7
                  add          a0, a0, a2
                  srai         s4, s3, 25
                  slt          sp, s10, tp
                  and          a1, a5, a0
                  slt          tp, t2, s1
                  xori         gp, t0, 1517
                  slt          s1, a2, tp
                  sub          zero, tp, gp
                  beq          s7, s3, 420f
                  xor          a5, s6, s9
                  xor          a4, a7, a3
                  srl          tp, s9, s4
                  ori          tp, s1, -920
                  srli         a7, s4, 3
                  xori         t3, s1, 400
                  sra          a0, t0, s5
                  slli         s5, a6, 23
                  bge          a7, a5, 418f
418:              sll          a6, t2, s3
                  srli         tp, s2, 16
420:              or           s7, gp, s6
                  andi         s6, t4, 165
                  add          zero, t1, sp
                  slt          s2, t2, tp
                  sub          s8, s9, t6
                  bgeu         gp, s1, 440f
                  srli         s2, s0, 22
                  sll          a5, a6, ra
                  lui          s7, 29615
                  blt          s7, s1, 440f
                  srai         t2, s6, 27
                  and          s7, gp, s1
                  bge          s11, s1, 444f
                  add          s8, t4, sp
                  beq          a3, t3, 441f
                  sll          a1, t4, s7
                  lui          s9, 360850
                  slti         ra, t2, 1483
                  srai         s5, t1, 7
                  sub          a4, s3, s1
440:              or           t5, tp, a2
441:              sra          s7, t0, a2
                  slt          t6, s2, t5
                  lui          s10, 946838
444:              andi         ra, t6, -1003
                  bne          s6, s3, 459f
                  add          a5, s7, a3
                  sub          s3, a0, gp
                  xori         t3, a1, 440
                  ori          a7, t4, -850
                  andi         ra, s0, -1140
                  addi         s4, s0, 1609
                  nop
                  srli         s8, sp, 17
                  sll          s9, a4, t3
                  sltiu        s0, a3, -928
                  addi         t5, zero, -1625
                  bge          t1, ra, 467f
                  andi         s2, s10, -1259
459:              beq          t5, sp, 472f
                  or           t5, t3, s2
                  slli         a6, s6, 24
                  xori         a5, a5, -1454
                  beq          s11, a2, 476f
                  srl          s9, t0, s3
                  blt          t2, s10, 466f
466:              ori          t5, s0, -1823
467:              slt          s5, a0, t2
                  bne          ra, a6, 484f
                  bne          sp, s7, 471f
                  sra          s3, s2, t1
471:              auipc        tp, 264621
472:              sra          a2, s5, sp
                  sltiu        t1, a6, -151
                  srli         s4, t1, 22
                  addi         a4, tp, 8
476:              xor          t5, t4, t1
                  and          gp, t2, t4
                  andi         zero, s4, 285
                  bltu         s2, t3, 498f
                  or           a4, a6, t2
                  xor          t3, t2, gp
                  bge          a4, t1, 488f
                  nop
484:              lui          a1, 487296
                  bne          a1, t0, 487f
                  ori          t5, s10, -1286
487:              bgeu         s1, a6, 489f
488:              sltu         a7, s3, s11
489:              sub          sp, a0, s5
                  sub          s5, s1, a0
                  or           s10, s2, a6
                  bge          t0, a0, 506f
                  sub          s1, t5, s0
                  bltu         gp, a5, 513f
                  srli         a4, s2, 4
                  bne          t5, t6, 501f
                  xori         a5, t3, -1107
498:              add          s11, a7, a3
                  xor          s9, s6, a4
                  srli         a2, t4, 24
501:              xori         t6, a7, 1857
                  auipc        a1, 104482
                  srai         s7, s3, 17
                  addi         t1, s8, 943
                  bge          zero, t2, 507f
506:              andi         a0, s0, -1681
507:              andi         s10, gp, -940
                  sra          s0, a0, ra
                  xori         t3, a1, -896
                  slt          a1, a0, a2
                  sll          a5, s2, s3
                  and          gp, s2, s7
513:              sra          s3, a5, s2
                  beq          s1, s5, 527f
                  andi         s0, t2, 1561
                  xor          s11, s10, a5
                  bgeu         s2, t3, 531f
                  lui          t5, 426759
                  sltiu        a5, s8, 276
                  xori         tp, a1, -586
                  slt          t2, s11, a1
                  or           gp, ra, a1
                  nop
                  sltiu        t1, s8, 531
                  beq          t5, s4, 544f
                  blt          a1, tp, 546f
527:              slli         s1, s2, 4
                  bgeu         s2, a3, 531f
                  sra          s0, a4, ra
                  addi         a7, a3, -1702
531:              andi         t5, t2, -1317
                  lui          s3, 694191
                  auipc        s3, 65481
                  sltiu        a7, t0, -1682
                  addi         t3, s2, -754
                  nop
                  slti         s3, s11, 1949
                  srl          ra, sp, s2
                  srai         s2, s5, 17
                  bge          t0, s7, 548f
                  andi         a2, s10, -639
                  nop
                  bne          s6, a3, 558f
544:              and          tp, s5, s7
                  or           t6, t3, t5
546:              srli         t3, a1, 28
                  auipc        t5, 422514
548:              or           s11, t3, s5
                  and          tp, a7, s3
                  blt          a0, s4, 564f
                  xori         a1, a4, -761
                  bge          t1, gp, 571f
                  slti         s11, a0, 2031
                  ori          a0, t3, -1470
                  bltu         t6, s5, 558f
                  lui          s1, 410937
                  xori         s3, sp, 1215
558:              sll          a5, t3, a1
                  add          a0, s4, t1
                  srli         ra, zero, 24
                  xor          a6, a4, tp
                  sra          zero, t3, s0
                  slti         t2, s2, 1550
564:              or           a2, t2, s11
                  sltu         a5, t4, s7
                  andi         s0, a7, 462
                  bne          a5, s8, 581f
                  and          gp, a0, s1
                  or           s11, s2, t5
                  auipc        sp, 30360
571:              xor          a5, tp, a0
                  srai         gp, t0, 6
                  sltu         t5, zero, t2
                  xor          t1, s2, tp
                  blt          s10, a4, 588f
                  auipc        gp, 333173
                  add          a4, a0, zero
                  sra          ra, s1, a6
                  srai         tp, a5, 18
                  addi         a2, s4, -1531
581:              and          t2, t4, sp
                  auipc        a7, 875980
                  sub          s11, gp, s0
                  sltu         t2, a0, s11
                  srai         t5, t4, 21
                  blt          t4, s11, 605f
                  andi         s1, t2, 705
588:              lui          gp, 820076
                  andi         s2, a6, -1799
                  sltiu        tp, s7, -343
                  slti         a0, a7, 8
                  or           s9, t4, t3
                  srl          t3, s0, s9
                  ori          s5, t0, -1189
                  add          s2, t1, s1
                  nop
                  ori          s0, s9, 1163
                  sltu         t5, s4, s5
                  sll          s9, tp, a6
                  bltu         t1, s2, 602f
                  blt          a6, s2, 613f
602:              nop
                  nop
                  srli         s5, gp, 17
605:              bgeu         a3, ra, 607f
                  srai         gp, t6, 15
607:              ori          zero, gp, 1141
                  srl          s4, a0, s3
                  bne          a2, t5, 614f
                  blt          a1, s6, 623f
                  andi         s0, a5, 1809
                  auipc        a2, 643986
613:              lui          ra, 885863
614:              addi         a2, t4, -1429
                  andi         s6, sp, -1267
                  sll          a1, s7, s6
                  andi         t1, s3, -533
                  blt          a1, a6, 634f
                  xori         t6, s9, 1843
                  addi         a2, a5, -126
                  xor          s2, gp, gp
                  srl          s0, a0, t4
623:              add          a1, t1, t3
                  ori          a2, gp, -1366
                  and          t3, t5, t3
                  auipc        a5, 329899
                  or           s1, a5, gp
                  srli         a0, s1, 6
                  or           s6, t3, t1
                  xori         s5, s9, 918
                  xor          s9, a7, a2
                  sltu         s9, s0, s5
                  add          s8, s6, a0
634:              auipc        s4, 859183
                  andi         t2, s3, 582
                  blt          a6, a1, 638f
                  sltu         t1, t0, ra
638:              bgeu         a4, a7, 644f
                  slli         t5, s5, 14
                  sra          s4, a4, s6
                  slli         t3, a2, 21
                  slli         a1, a2, 18
                  slti         ra, zero, 1840
644:              and          s5, s6, a4
                  nop
                  blt          t3, sp, 650f
                  bge          s2, ra, 650f
                  bltu         a4, ra, 668f
                  slt          s0, s11, s10
650:              auipc        t2, 53697
                  sll          a7, t5, tp
                  bne          t3, s10, 666f
                  blt          a4, s8, 663f
                  auipc        t5, 151451
                  slti         a0, s7, -912
                  add          sp, t6, s7
                  andi         s1, a6, -30
                  blt          a0, a1, 672f
                  slti         t6, s1, 59
                  or           a1, sp, s6
                  sll          s8, s1, t4
                  sltiu        zero, gp, -1665
663:              andi         a4, gp, -231
                  blt          s9, sp, 675f
                  xor          tp, t3, s4
666:              sltu         ra, a0, t2
                  and          a0, a5, s3
668:              addi         t6, s9, -520
                  ori          gp, t6, 1858
                  srli         s4, sp, 22
                  slti         a7, gp, -1533
672:              sll          s5, s3, sp
                  srli         s0, a4, 7
                  xori         sp, zero, 1520
675:              or           s7, tp, s8
                  beq          a0, a7, 677f
677:              bne          a7, gp, 679f
                  auipc        s11, 746953
679:              bltu         t3, s2, 686f
                  slli         a4, t2, 5
                  sra          t3, gp, t4
                  srai         a2, s9, 1
                  srl          a1, t3, ra
                  addi         a4, a4, -1482
                  andi         s11, s1, 471
686:              bne          a6, a3, 705f
                  xori         a4, s5, -656
                  sra          s7, s5, s7
                  sltu         a0, s2, t6
                  srl          tp, t2, s8
                  or           gp, a4, t0
                  sll          s10, t4, a5
                  or           a7, t6, s9
                  slli         s5, s10, 28
                  blt          a4, s9, 703f
                  bge          s0, t2, 708f
                  beq          s9, a7, 710f
                  sll          t1, zero, s7
                  sll          a2, s4, s7
                  auipc        s4, 58317
                  sra          s9, t4, t3
                  slti         s8, zero, 2021
                  sltu         a5, s1, s4
                  nop
                  slt          s3, a4, a7
                  add          a2, sp, s0
                  lui          a4, 79935
                  xor          ra, s6, a1
                  slli         s0, a0, 1
sub_4_j7:         jal          ra, sub_6 #jump sub_4 -> sub_6
                  and          a0, t3, a6
703:              ori          a0, s4, -1177
                  sll          s2, sp, gp
705:              srl          a5, a5, a4
                  srai         s0, t3, 31
                  sra          s8, s3, s0
708:              bne          t2, zero, 709f
709:              sltiu        t6, t3, 330
710:              andi         t5, t0, -886
                  beq          s5, s4, 725f
                  add          s10, a0, s7
                  sltiu        t5, t1, -859
                  slti         t5, t3, 919
                  srli         s4, s3, 4
                  beq          t0, a7, 729f
                  addi         gp, s6, 710
                  and          t6, s5, s5
                  beq          gp, s6, 732f
                  add          s1, s0, t1
                  srl          tp, zero, s3
                  addi         a0, zero, 1850
                  sltiu        s3, s8, -1543
                  lui          a7, 1033481
725:              slt          t2, t6, a3
                  slt          ra, t0, s3
                  nop
                  sll          s3, t4, sp
729:              or           a5, s1, s9
                  bltu         t5, s8, 749f
                  blt          t3, s9, 735f
732:              auipc        s8, 598683
                  beq          t5, s4, 743f
                  auipc        s4, 3413
735:              srli         s9, t2, 25
                  srli         s10, t2, 24
                  bge          t4, a4, 757f
                  srli         s10, a3, 29
                  bltu         s0, ra, 755f
                  and          ra, tp, a3
                  bgeu         s0, sp, 743f
                  bne          s3, s3, 756f
743:              or           s0, a7, s3
                  bltu         a4, t4, 752f
                  slti         s11, t6, -1300
                  beq          t0, s10, 749f
                  and          t1, t2, a4
                  sll          s5, s7, t4
749:              add          tp, a1, s1
                  nop
                  srli         t6, a7, 24
752:              xori         sp, s8, 1164
                  xor          a7, t5, ra
                  xori         t3, a7, -590
755:              bgeu         sp, s4, 757f
756:              sra          s10, a3, s3
757:              srl          a7, t6, t2
                  addi         t1, a7, -1881
                  sll          a0, t6, t3
                  beq          s2, a4, 773f
                  blt          t1, s9, 763f
                  or           t3, s8, a4
763:              auipc        a6, 886499
                  nop
                  sub          s9, t6, sp
                  auipc        t5, 86381
                  sltu         zero, t2, s5
                  and          s6, a2, a1
                  lui          s3, 326257
                  sub          t1, a4, a4
                  srl          a7, s6, a3
                  beq          s7, a7, 773f
773:              bne          a6, t0, 774f
774:              srli         sp, a5, 11
                  slti         t1, s6, 427
                  xori         sp, t2, -1709
                  xor          sp, s5, s3
                  bltu         t1, a7, 789f
                  srli         s10, s4, 28
                  bltu         s7, a4, 794f
                  blt          a0, s6, 784f
                  bge          ra, s8, 788f
                  srli         a1, t6, 14
784:              and          a0, s1, s10
                  beq          t5, s1, 797f
                  bge          s5, a2, 801f
                  or           gp, t3, s10
788:              srai         t5, ra, 24
789:              lui          s5, 295430
                  xor          s4, s8, gp
                  xor          t5, s5, s1
                  srli         s5, s2, 11
                  auipc        s4, 868863
794:              sltiu        s11, ra, -1475
                  sll          a7, t3, s0
                  addi         ra, t2, -1681
797:              slti         a5, s10, 1087
                  sub          t5, t4, s9
                  nop
                  bne          s5, s11, 807f
801:              sll          s2, a2, s4
                  sub          s11, t5, ra
                  xor          a0, s2, a4
                  xor          s2, s0, s7
                  or           s0, gp, s1
                  sltu         a0, s1, t2
807:              bne          t6, s9, 826f
                  and          tp, sp, t4
                  add          a1, t4, s0
                  lui          s10, 990714
                  beq          s2, tp, 823f
                  bgeu         t2, t0, 814f
                  xor          a2, a2, t0
814:              bne          a7, a7, 819f
                  auipc        t2, 994004
                  lui          a6, 983375
                  sub          s5, s11, gp
                  bge          tp, a0, 837f
819:              slli         a6, a0, 18
                  bne          a5, a6, 834f
                  beq          tp, s3, 828f
                  ori          sp, s9, -1283
823:              and          s10, gp, a3
                  xori         sp, a1, -2031
                  slli         a0, a1, 4
826:              srl          s0, a3, zero
                  slti         s10, s0, 1588
828:              srl          zero, a4, s9
                  ori          gp, s5, -1482
                  add          s3, a3, a5
                  slti         sp, s0, -1236
                  slli         a4, s3, 22
                  andi         s11, sp, -707
834:              bge          tp, s4, 842f
                  srl          ra, s10, sp
                  bne          s7, a3, 839f
837:              xor          a7, ra, s7
                  xor          s11, a0, s0
839:              sltiu        a2, a4, -684
                  and          a7, a5, t1
                  andi         s3, tp, -152
842:              sltu         s11, s10, tp
                  andi         s9, sp, -764
                  and          s0, t6, zero
                  slti         a0, t2, 307
                  srli         tp, s11, 14
                  slt          a7, a3, s1
                  sltiu        s7, a3, 198
                  addi         a4, s3, -1505
                  bltu         t4, a6, 860f
                  slli         s2, ra, 30
                  bgeu         a0, s9, 872f
                  ori          s7, a7, 1402
                  blt          s2, a2, 867f
                  or           t2, t0, s5
                  or           sp, t4, t3
                  slt          a1, a3, s9
                  bne          t0, s3, 874f
                  srl          s0, s6, t6
860:              bne          s6, t2, 879f
                  sub          s2, s11, s1
                  lui          t2, 987174
                  and          a5, t0, a4
                  slli         s5, sp, 21
                  slt          s9, a5, s6
                  blt          t5, a4, 877f
867:              beq          s4, sp, 880f
                  sltu         a2, s0, a1
                  and          a4, s5, a5
                  srl          ra, t3, s1
                  lui          s8, 294344
872:              slli         a1, t6, 3
                  sll          a5, s4, s5
874:              sll          s4, s6, a2
                  sub          s8, tp, a4
                  lui          s4, 925752
877:              add          s4, s3, s9
                  bge          sp, s3, 892f
879:              addi         a5, s3, 1488
880:              auipc        a0, 104258
                  bne          s1, s0, 887f
                  addi         s7, s11, -1320
                  andi         t5, zero, 1841
                  bne          s4, t3, 886f
                  nop
886:              srli         a7, s0, 29
887:              xor          a4, tp, s6
                  and          s2, s2, sp
                  slti         sp, s9, 1822
                  and          gp, s0, s11
                  sltu         a6, s3, gp
892:              and          s11, a4, s1
                  bgeu         s0, t1, 907f
                  sll          a6, t3, a0
                  xor          tp, a4, tp
                  bltu         sp, gp, 900f
                  bgeu         a6, a4, 899f
                  andi         t1, gp, 253
899:              bgeu         s6, t2, 912f
900:              nop
                  ori          s6, sp, 1783
                  bge          a2, a6, 916f
                  srai         a4, a6, 6
                  srli         s7, s1, 27
                  sltu         s6, t5, s6
                  sltu         t6, s1, t3
907:              sltiu        a5, gp, -987
                  slti         tp, s7, -1248
                  beq          tp, s4, 928f
                  bne          t1, a5, 911f
911:              xori         sp, s10, -1472
912:              srli         s11, s1, 24
                  sltiu        a4, s10, -642
                  srli         s2, a7, 10
                  sll          t2, s7, s7
916:              srl          a4, s9, a7
                  sltiu        a4, s0, 1484
                  ori          a2, s6, 477
                  beq          a7, t2, 921f
                  auipc        a0, 769037
921:              blt          a7, gp, 940f
                  srl          s9, sp, s7
                  slt          s1, a3, gp
                  and          s7, s4, ra
                  slti         a0, tp, -1471
                  srai         zero, a1, 26
                  lui          t5, 42815
928:              addi         s1, a5, -1907
                  bltu         gp, a4, 932f
                  sltiu        a4, sp, 1544
                  add          a5, a7, t0
932:              slt          s4, a5, t6
                  bgeu         s7, tp, 948f
                  sub          t6, a5, t5
                  bgeu         s7, a5, 949f
                  srli         ra, s8, 19
                  auipc        gp, 36966
                  slli         a4, tp, 8
                  sltiu        t6, s11, -373
940:              srli         sp, a5, 14
                  bltu         s4, t5, 953f
                  blt          a5, s8, 943f
943:              blt          sp, a7, 948f
                  slti         s10, ra, -255
                  auipc        a5, 587249
                  sll          a0, t6, t1
                  beq          t5, s5, 949f
948:              andi         t3, a7, -1551
949:              beq          ra, a0, 961f
                  sub          s7, a1, t6
                  slti         s4, a0, 1655
                  srl          zero, s0, s2
953:              slli         a2, sp, 30
                  lui          t1, 215418
                  andi         t6, sp, -1671
                  auipc        sp, 38361
                  blt          s3, s11, 976f
                  slt          a1, a5, a3
                  slt          t3, s9, s0
                  bltu         t6, t0, 973f
961:              addi         ra, tp, 871
                  sll          t2, sp, s7
                  ori          zero, s10, -410
                  bgeu         a7, t2, 974f
                  beq          s6, s8, 978f
                  ori          s3, gp, -1649
                  bltu         a7, t1, 978f
                  beq          t1, t6, 973f
                  slti         zero, sp, -1867
                  sltu         a1, s7, s3
                  bge          s11, a1, 983f
                  sra          s0, s10, s2
973:              bne          s10, t1, 983f
974:              srli         s9, a4, 30
                  srli         zero, s3, 4
976:              sub          gp, a5, a7
                  sub          a1, t0, a1
978:              slt          s8, a4, s11
                  srai         s7, a1, 7
                  srli         zero, a7, 12
                  nop
                  srli         gp, s3, 1
983:              add          s11, t6, gp
                  lw           ra, 4(a3)
                  addi         a3, a3, 12
                  sltiu        t6, t4, 312
                  slli         sp, a4, 22
                  andi         s6, s9, 216
                  srl          a2, s8, a4
                  ori          s6, t0, 1631
1291:             addi x27, x1, 1
1291:             jalr x27, x27, 0
sub_6:            bgeu         s4, t2, sub_6_stack_p
                  ori          s6, a0, 762
sub_6_stack_p:    addi         a3, a3, -40
                  slti         s9, a1, 0
                  ori          gp, s4, -171
                  ori          a6, a6, 1300
                  slli         a1, ra, 1
                  auipc        t2, 852540
                  add          s3, s7, a1
                  or           a6, a1, s1
                  sw           ra, 4(a3)
                  srli         s9, a4, 27
                  auipc        s10, 865637
                  srai         zero, a2, 28
                  slt          t6, a7, tp
                  sub          s5, s7, a1
                  sra          a1, t6, s6
                  addi         s0, t2, 1255
                  slt          a2, gp, ra
                  ori          s4, a5, 718
sub_6_j10:        jal          ra, sub_8 #jump sub_6 -> sub_8
                  beq          s0, t4, 6f
                  sra          t3, t6, s11
                  slti         s4, t1, -1259
                  sltu         a0, t4, t2
                  ori          s9, t4, 380
                  xor          t6, zero, s2
6:                beq          t4, s0, 12f
                  sra          tp, s11, s8
                  or           gp, s0, s9
                  sll          s11, t3, t6
                  xor          a6, a1, s5
                  and          s4, t3, a3
12:               xor          a2, gp, t4
                  nop
                  bltu         s6, t2, 22f
                  ori          a2, s1, 491
                  auipc        a0, 710392
                  bgeu         t5, s7, 20f
                  bltu         s1, t6, 22f
                  blt          s7, s11, 34f
20:               ori          t1, s6, 288
                  ori          s2, t4, 855
22:               and          t3, t4, sp
                  lui          t5, 626195
                  sra          sp, t3, s5
                  xori         s10, a1, -1689
                  blt          t4, ra, 45f
                  srai         t3, s2, 13
                  and          ra, a5, s10
                  sltiu        s6, a1, -1649
                  sll          s1, a1, gp
                  addi         a4, s7, 1208
                  srli         a7, t5, 13
                  sll          a7, s8, a0
34:               sltiu        t5, t0, -1420
                  lui          s11, 139356
                  slt          t5, s4, s1
                  slti         tp, a4, 641
                  bne          t5, s3, 55f
                  xori         zero, s4, 1438
                  bgeu         s5, s1, 49f
                  lui          s1, 462026
                  sltiu        a7, s7, -1308
                  sltu         s6, t3, s6
                  xor          a6, zero, a6
45:               beq          s10, zero, 60f
                  slt          tp, s5, s1
                  andi         s2, s7, 139
                  or           t2, s4, zero
49:               sltiu        s2, gp, 1081
                  sub          s10, s4, zero
                  auipc        t1, 763436
                  slti         s7, s4, 1663
                  add          a5, s5, ra
                  or           t6, a5, a7
55:               addi         s0, a3, -32
                  sltiu        s6, s4, -752
                  xori         s8, s11, -369
                  sra          s1, s11, t3
                  bgeu         t1, sp, 62f
60:               srli         a5, a4, 17
                  blt          s11, s6, 77f
62:               bge          t6, s6, 71f
                  xori         s9, s0, 584
                  auipc        s5, 1045439
                  and          s5, t2, s10
                  slli         a1, s9, 11
                  slt          s11, a1, s3
                  slli         s9, s7, 31
                  beq          a3, gp, 76f
                  slti         t1, t6, 1854
71:               sra          zero, t5, a0
                  sltiu        s8, a1, 518
                  blt          s11, ra, 77f
                  srl          a0, t6, s9
                  auipc        s2, 24826
76:               srli         a0, tp, 13
77:               slt          s5, a1, s8
                  lw           ra, 4(a3)
                  srai         a5, a2, 19
                  addi         a3, a3, 40
                  sltiu        s11, s0, -1337
                  slli         s6, s10, 30
                  sub          s6, a2, a7
                  xori         a7, a6, -190
                  add          a1, s3, gp
                  sltu         s8, s7, t1
                  ori          t6, s9, -1530
                  nop
110:              addi x23, x1, 1
110:              jalr x23, x23, 0
sub_7:            blt          a1, t1, sub_7_stack_p
                  xor          t5, s7, s11
                  and          s10, a3, t2
                  auipc        a0, 181605
sub_7_stack_p:    addi         a3, a3, -12
                  sw           ra, 4(a3)
                  auipc        s5, 215633
                  sub          a4, s10, t1
                  xor          zero, s3, s5
                  la           s0, region_1+1815 #start riscv_load_store_rand_instr_stream_0
                  srai         sp, s10, 7
                  lh           a7, -829(s0)
                  lbu          tp, -1543(s0)
                  srai         t5, gp, 23
                  sh           s2, -805(s0)
                  sh           gp, -965(s0)
                  addi         zero, s6, 1319
                  lb           s10, -1725(s0)
                  sra          t1, t5, t1
                  sb           s6, -1018(s0)
                  sh           s6, -417(s0)
                  sltu         s9, t0, t2
                  lb           a4, -954(s0)
                  slli         ra, a5, 21
                  srai         a7, t4, 5
                  sb           s7, 94(s0)
                  sh           sp, -611(s0)
                  srl          s5, s6, a3
                  sb           t4, -1693(s0)
                  lb           s3, -564(s0)
                  lbu          tp, -1454(s0)
                  xor          tp, s1, t5
                  sb           t0, -1340(s0)
                  sb           t0, 157(s0)
                  lbu          s2, -359(s0)
                  sb           s3, -938(s0)
                  sb           tp, 95(s0)
                  srl          s4, ra, zero
                  lbu          t2, -1025(s0)
                  sb           t4, -901(s0)
                  lb           t2, -961(s0)
                  lb           a5, -390(s0)
                  sra          s2, ra, t2
                  sh           t0, -983(s0)
                  auipc        s2, 939877
                  sltu         t2, a4, s0
                  slti         t3, s10, -1305
                  sb           s11, -1108(s0)
                  sb           s4, 146(s0)
                  sb           t5, -633(s0)
                  lb           gp, -609(s0)
                  auipc        a0, 220583
                  xor          a6, s1, s1
                  lb           sp, -1536(s0) #end riscv_load_store_rand_instr_stream_0
                  and          t2, sp, zero
                  addi         t1, s7, 1140
                  sll          s2, a3, t0
                  or           a6, a7, s10
                  and          s8, ra, s5
                  or           t3, t1, s4
                  auipc        a2, 139237
                  ori          s0, s4, 527
                  sra          s0, zero, sp
                  sub          a5, a4, t6
                  and          a4, t1, tp
                  srli         a6, a1, 20
                  srl          t5, a0, t2
                  sltu         s9, ra, gp
                  xori         t1, sp, 1403
                  blt          s8, s8, 21f
                  srai         gp, t1, 31
                  srli         s11, s6, 20
                  beq          t5, s2, 37f
                  bltu         a3, a2, 39f
                  or           a7, t5, t6
21:               sll          gp, t5, t1
                  sra          a2, t3, s7
                  bgeu         a0, s2, 36f
                  sra          s7, a7, a3
                  and          s5, s5, s8
                  sub          tp, ra, ra
                  sltu         s2, s4, s5
                  sll          t2, a0, t5
                  srli         tp, s4, 23
                  sub          t2, s3, s0
                  sll          s4, t4, t1
                  nop
                  and          a4, t2, a6
                  addi         s2, s6, -515
                  add          a7, t3, s1
36:               sub          ra, s2, t6
37:               slli         s2, gp, 28
                  srai         s9, s4, 8
39:               addi         s10, t0, 1142
                  addi         a6, sp, 1466
                  lui          a7, 302339
                  srli         a2, a4, 11
                  bge          s1, s5, 59f
                  addi         t3, t0, -710
                  bgeu         t3, s9, 60f
                  srl          s0, a0, s0
                  xori         a2, s2, 1093
                  bge          t3, s9, 60f
                  or           s0, t3, zero
                  bgeu         a0, a1, 60f
                  xor          s7, zero, s2
                  add          a7, a3, t5
                  slli         a7, a3, 19
                  sll          a0, t0, t6
                  lui          t1, 623356
                  sll          ra, s6, s11
                  srl          t5, a0, a5
                  xori         s3, t5, 1983
59:               slli         t1, sp, 4
60:               addi         sp, a3, 1949
                  add          s9, s2, s9
                  and          s5, a6, s10
                  srl          s2, t1, s3
                  slli         s7, s0, 10
                  srli         s6, s3, 1
                  nop
                  slti         t5, s3, 1508
                  bltu         a6, ra, 85f
                  srli         s6, sp, 6
                  or           s2, s9, s7
                  bge          s2, s8, 90f
                  bgeu         a0, s8, 80f
                  slti         s10, a6, -1670
                  slti         sp, a5, -1242
                  add          a5, a0, s4
                  srli         s3, s8, 31
                  andi         a6, s9, -1805
                  xori         t6, t2, -1656
                  sll          t2, a7, t6
80:               sltiu        s5, s6, -797
                  sll          s3, sp, s9
                  sra          t6, a7, s3
                  srai         s3, s6, 25
                  andi         s3, a6, -1991
85:               sub          s10, zero, a1
                  bne          s2, tp, 97f
                  bgeu         t5, a7, 99f
                  srli         zero, t0, 15
                  slt          a5, zero, a1
90:               sltu         a7, s5, t1
                  add          s8, s3, s2
                  srai         s9, a5, 16
                  sra          a6, s3, s11
                  slt          s10, s0, s6
                  add          s1, s11, sp
                  slt          tp, t0, t1
97:               beq          a4, a2, 112f
                  beq          s2, t0, 104f
99:               andi         t2, zero, 729
                  slti         t5, a2, 148
                  xor          ra, s9, s1
                  beq          s5, a3, 118f
                  sltu         s1, a4, a3
104:              addi         t3, t4, 714
                  xor          gp, t3, a3
                  bge          a0, a2, 118f
                  auipc        t5, 299514
                  bltu         s8, s10, 123f
                  beq          a7, t6, 114f
                  sra          a1, s5, zero
                  bgeu         s5, s6, 116f
112:              addi         s4, t2, -943
                  lui          t6, 403937
114:              srai         a7, tp, 28
                  bltu         s2, gp, 129f
116:              bltu         tp, s11, 118f
                  addi         gp, a5, 1804
118:              lui          s11, 667471
                  slt          s7, s4, t0
                  add          s9, t6, a2
                  sltu         a7, a3, s2
                  bgeu         s0, ra, 136f
123:              slti         ra, a6, 1273
                  ori          t3, s10, 1274
                  add          tp, s11, s3
                  bltu         s11, a3, 128f
                  beq          t0, a3, 140f
128:              sltiu        s5, a4, -1886
129:              xori         t2, s2, -1854
                  or           t1, a6, zero
                  srl          s7, s4, a5
                  sltu         t5, a7, t4
                  sltu         a7, s10, s0
                  sltu         s7, s10, ra
                  xori         s8, s3, -45
136:              bne          s2, t6, 139f
                  sll          s10, s4, t1
                  blt          a7, t4, 141f
139:              sra          s10, a0, s7
140:              sltiu        tp, a4, 22
141:              slt          s8, a3, s4
                  srli         s1, a5, 30
                  xor          a0, zero, a7
                  srai         t2, s3, 27
                  auipc        s2, 730596
                  sub          s8, s9, t4
                  addi         s9, a5, 234
                  srli         gp, s1, 30
                  sltiu        s0, t0, -127
                  bgeu         ra, a5, 157f
                  sra          s4, a4, s2
                  ori          s10, ra, 1080
                  slli         t3, t1, 25
                  and          s6, a3, a7
                  slt          s2, s1, a0
                  xor          a5, s6, a2
157:              xori         a6, t3, 402
                  slli         s0, s0, 28
                  srl          a7, t6, a6
                  add          a0, t5, s6
                  and          s1, t1, gp
                  sltu         sp, s3, t4
                  slt          t6, t6, s1
                  or           a4, s7, gp
                  sra          ra, a4, s10
                  sltiu        t6, a5, 250
                  lui          s2, 79743
                  slt          s1, ra, a4
                  lui          s9, 407697
                  sra          sp, s1, s3
                  lw           ra, 4(a3)
                  srli         a4, ra, 10
                  addi         a3, a3, 12
                  sll          a6, s10, a7
229:              addi x14, x1, 1
229:              jalr x14, x14, 0
sub_1:            xor          a5, s1, t1
                  slt          a1, sp, a7
                  beq          s7, s11, sub_1_stack_p
                  and          a4, t1, a5
                  srli         a4, a5, 9
sub_1_stack_p:    addi         a3, a3, -64
                  srl          s6, s7, s10
                  sw           ra, 4(a3)
                  sll          a1, a1, s2
                  sub          s6, s0, gp
                  andi         s0, s1, 2024
                  or           s8, zero, t4
                  andi         t5, ra, 1511
                  srl          s0, s11, a4
                  and          tp, t0, s10
                  andi         ra, a4, -1305
                  ori          a6, t2, -1231
                  bne          t1, a0, 9f
                  srai         zero, s2, 12
                  or           a1, t1, zero
                  nop
                  sltiu        t6, s3, -2015
9:                nop
                  slti         s0, t1, 443
                  lw           ra, 4(a3)
                  srai         s2, t2, 9
                  addi         s6, a4, -2016
                  addi         a3, a3, 64
                  andi         t2, t4, 228
                  addi         a7, s3, -941
30:               addi x18, x1, 0
30:               jalr x18, x18, 0
sub_9:            bgeu         a3, gp, sub_9_stack_p
                  sll          a0, a4, s3
                  auipc        s1, 438982
sub_9_stack_p:    addi         a3, a3, -24
                  sltu         s11, a3, s6
                  sll          s7, a5, a3
                  andi         t3, s3, 1471
                  and          s1, s6, s9
                  lui          a4, 776765
                  sw           ra, 4(a3)
                  srli         a6, tp, 6
                  xor          s7, a1, zero
                  la           sp, region_1+374 #start riscv_load_store_rand_instr_stream_4
                  sb           t4, -11(sp)
                  sb           s2, 59(sp)
                  sh           t6, 62(sp)
                  sll          a0, t0, t2
                  lb           s5, 48(sp)
                  nop
                  sb           ra, 55(sp)
                  srai         s4, t4, 4
                  lhu          t1, 64(sp)
                  nop
                  lw           a2, -22(sp)
                  lbu          t6, 29(sp)
                  lb           a1, -7(sp)
                  slt          a7, s2, a5
                  sra          t1, s6, sp
                  addi         t1, s7, 805
                  auipc        a1, 1047173
                  and          a1, t3, a3
                  slli         a7, t6, 10
                  addi         t1, s9, 899
                  xori         a6, t3, 68
                  or           t1, s0, t6
                  lb           t5, -31(sp)
                  lbu          s9, 47(sp)
                  sb           t5, 33(sp)
                  srl          s7, a6, s9
                  lw           t3, -62(sp)
                  lhu          a6, 64(sp)
                  lbu          t2, -51(sp)
                  sra          s4, s7, t5
                  sltu         tp, t5, a4
                  and          a5, s0, s2
                  andi         a6, a5, -631
                  lb           a4, -19(sp)
                  or           s4, s11, t5
                  srli         tp, ra, 27
                  srl          t1, s5, gp
                  lbu          t6, -15(sp)
                  addi         t1, t1, -1202
                  and          s10, a2, a5
                  sra          s2, t0, s8
                  lh           a2, -44(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s4, region_0+1202 #start riscv_load_store_rand_instr_stream_2
                  lbu          a5, -104(s4)
                  slt          t2, s6, gp
                  lbu          s10, 97(s4)
                  sb           t0, 66(s4)
                  addi         s7, s6, -948
                  auipc        s0, 663145
                  srli         s6, s6, 17
                  lb           s5, 162(s4)
                  lbu          tp, -181(s4)
                  lbu          a6, -87(s4)
                  lb           gp, -225(s4)
                  sb           t2, 124(s4)
                  nop
                  lbu          a1, 109(s4)
                  add          a7, a5, s0
                  lbu          s6, -150(s4)
                  xor          a6, t4, s10
                  sb           s10, -197(s4)
                  sb           t1, 219(s4)
                  sll          a1, a0, a3
                  lbu          s11, 231(s4)
                  or           a0, ra, a4
                  sb           zero, -211(s4)
                  lbu          a7, -153(s4)
                  lh           ra, -136(s4)
                  ori          t3, t3, -1656
                  slli         tp, a5, 8
                  sll          a2, t3, t3
                  lbu          a5, -65(s4)
                  add          a4, a2, t5
                  sh           s5, -76(s4)
                  slli         a6, a6, 23
                  sltu         s5, s7, tp
                  lbu          ra, -153(s4)
                  auipc        s2, 724440
                  lbu          s5, 51(s4)
                  sb           sp, -217(s4) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_1+1086 #start riscv_load_store_rand_instr_stream_5
                  auipc        a0, 1030865
                  add          gp, s3, sp
                  ori          a5, gp, 629
                  and          t5, t4, a4
                  lhu          a7, 52(s0)
                  srli         sp, s1, 2
                  lbu          t6, 46(s0)
                  sb           s1, 39(s0)
                  andi         s6, t1, -997
                  sll          s9, s4, s10
                  srai         s11, t2, 15
                  sb           a7, -57(s0)
                  sltu         s6, t6, a4
                  sb           t2, 39(s0)
                  sra          a4, a1, a1
                  sra          s2, s4, s3
                  or           a4, s6, a6
                  srl          a2, s2, t4
                  lb           a2, 11(s0)
                  auipc        a6, 640627
                  and          t3, s3, s3
                  lbu          gp, 41(s0)
                  lbu          t3, 61(s0)
                  or           t3, a3, s8
                  slt          ra, t2, s2
                  lb           a6, 7(s0)
                  sw           t6, 6(s0)
                  lh           a1, -8(s0)
                  or           s1, a2, s4
                  lb           t2, 33(s0)
                  lbu          s10, 54(s0)
                  lui          ra, 238555
                  lh           ra, -62(s0) #end riscv_load_store_rand_instr_stream_5
                  la           t3, region_0+1226 #start riscv_load_store_rand_instr_stream_0
                  lui          t1, 663127
                  lb           s3, -375(t3)
                  lb           s8, 349(t3)
                  andi         s10, s4, -1383
                  nop
                  srl          t1, zero, s3
                  sb           a3, -1041(t3)
                  sub          a6, t3, gp
                  add          s8, s11, a2
                  and          t6, t5, s6
                  add          t2, s7, a0
                  lb           ra, -92(t3)
                  sw           gp, -1122(t3)
                  addi         t5, t4, -194
                  sh           a0, -198(t3)
                  xor          a4, s10, s8
                  srai         t5, s10, 30
                  lw           a6, 430(t3)
                  xori         s0, a4, 1264
                  lh           zero, 412(t3)
                  and          a2, s6, a5
                  sb           sp, 585(t3)
                  lui          t1, 452569
                  lb           s5, -317(t3) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_0+1940 #start riscv_load_store_rand_instr_stream_1
                  sb           s3, 3(s2)
                  lb           t5, -16(s2)
                  slti         t5, a1, -379
                  lhu          s8, 6(s2)
                  sh           a2, 10(s2)
                  lui          a0, 750967
                  slt          s4, zero, s2
                  slti         t1, gp, 645
                  lbu          s7, -5(s2)
                  lb           s1, 14(s2)
                  lb           a2, 3(s2)
                  lh           s9, 12(s2)
                  sh           s11, -8(s2)
                  slli         s3, gp, 27
                  lb           t2, -3(s2)
                  nop
                  srli         s7, t0, 3
                  lhu          a7, -4(s2)
                  sw           t1, -4(s2)
                  sh           t1, 10(s2)
                  sb           t0, -1(s2)
                  sb           s11, -8(s2)
                  srl          a4, a5, t6
                  add          ra, ra, a2
                  sh           s11, 14(s2)
                  andi         t1, gp, 113
                  ori          s8, s0, -1059
                  nop
                  and          a0, s4, t1
                  lw           s0, -12(s2)
                  lb           tp, 7(s2)
                  xori         gp, a2, -1788
                  ori          t3, t0, 1039
                  lbu          t6, -6(s2)
                  sll          a6, s7, s6
                  lbu          s4, 13(s2)
                  sltu         gp, a3, zero
                  lb           s3, -2(s2)
                  srli         s1, s6, 10
                  auipc        s7, 305640
                  lbu          tp, -2(s2)
                  srai         ra, a6, 23
                  sh           s8, 2(s2)
                  sb           s8, -7(s2)
                  srl          s3, t4, ra
                  sh           tp, 16(s2)
                  sltu         s4, s9, t6
                  sub          t6, t0, gp
                  lh           t2, -4(s2)
                  lhu          t3, -6(s2)
                  srai         s7, tp, 15
                  lbu          t3, 5(s2)
                  lhu          ra, 16(s2) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1138 #start riscv_load_store_rand_instr_stream_6
                  lb           s8, -38(sp)
                  lh           s5, 52(sp)
                  add          t2, s2, a5
                  or           tp, tp, s11
                  nop
                  lui          a0, 101502
                  lb           s11, 0(sp)
                  lb           s5, 33(sp)
                  nop
                  ori          s11, t4, -798
                  sub          gp, a1, s1
                  lbu          s6, 19(sp)
                  ori          a5, s1, 1976
                  auipc        gp, 1028250
                  sra          s4, t4, gp
                  sb           a0, 41(sp)
                  andi         s4, gp, -1617
                  xori         gp, a6, -2018
                  lbu          a7, -50(sp)
                  sll          a0, t5, gp
                  sltu         zero, a3, sp
                  sb           a6, 6(sp)
                  sll          gp, ra, tp
                  xori         t3, a7, 116
                  slli         s8, tp, 11
                  lw           zero, 6(sp)
                  add          a0, sp, tp
                  lb           s0, -9(sp)
                  sub          zero, a2, s11
                  slt          a7, s9, s3
                  srli         s2, s4, 9
                  nop
                  sh           t6, -16(sp)
                  srli         s11, zero, 20
                  and          s6, s6, s2
                  sb           a3, -50(sp)
                  slli         a2, a1, 24
                  lbu          a0, -57(sp)
                  sb           t3, -57(sp)
                  lbu          a0, 17(sp)
                  sb           sp, -9(sp)
                  and          zero, t5, zero
                  lb           s10, -36(sp)
                  sb           a3, 31(sp)
                  nop
                  srl          s2, t2, s1
                  sub          t6, a0, t2
                  sb           s1, -29(sp)
                  lb           t1, 39(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+61 #start riscv_load_store_rand_instr_stream_7
                  xori         s7, t3, 943
                  srli         s1, t3, 14
                  lw           t5, 15(sp)
                  sltu         s10, s2, s1
                  sb           s9, 4(sp)
                  lb           a5, -13(sp)
                  lb           ra, 4(sp)
                  sll          s5, s10, s1
                  lb           a1, 13(sp)
                  and          a0, s8, s0
                  slt          ra, a7, a3
                  sub          ra, zero, zero
                  slti         s9, s5, 422
                  lb           a1, -2(sp)
                  lh           gp, 9(sp)
                  lbu          gp, 12(sp)
                  andi         s7, t0, -538
                  lh           s10, -7(sp)
                  and          s5, tp, t4
                  sb           s2, -14(sp)
                  xor          t1, zero, s7
                  add          s3, zero, t2
                  lw           s8, 3(sp)
                  srl          ra, s1, s10
                  lb           a5, 13(sp)
                  sb           s10, -7(sp)
                  or           t5, zero, a6
                  lh           s6, -5(sp)
                  lbu          t2, 8(sp)
                  lui          s9, 23444
                  sb           t0, -4(sp)
                  slli         zero, s4, 24
                  xor          t5, s9, t3
                  lw           t2, -9(sp)
                  sb           s11, 5(sp)
                  srai         gp, a0, 8
                  add          t5, a2, t1
                  sb           zero, 6(sp)
                  slti         t1, s5, 1548
                  lbu          t1, -10(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1992 #start riscv_load_store_rand_instr_stream_8
                  lb           t1, 2(sp)
                  slt          t5, t2, s3
                  lb           s1, -13(sp)
                  addi         tp, gp, 250
                  lhu          t3, -14(sp)
                  xor          a2, t3, t1
                  sw           t0, -8(sp)
                  slt          a5, s8, s7
                  auipc        a5, 867175
                  or           s3, a3, s11
                  lb           a0, -11(sp)
                  ori          t5, a7, -1702
                  sltiu        s2, sp, 344
                  slti         a2, t6, 599
                  lhu          tp, -14(sp)
                  sltu         tp, a7, t2
                  sh           t3, -10(sp)
                  xor          t2, s0, a6
                  slli         s9, gp, 5
                  lbu          a6, -11(sp)
                  auipc        s1, 745390
                  add          s1, s5, tp
                  srai         a2, s4, 18
                  lhu          tp, 4(sp)
                  and          zero, t1, s7
                  srl          a2, a0, a6
                  sltu         s0, s7, s0
                  sltu         zero, a7, s7
                  lh           tp, 2(sp)
                  sltiu        s2, t6, -1089
                  srai         a2, sp, 30
                  sra          tp, a4, a7
                  lbu          t2, -16(sp)
                  lb           s2, -9(sp)
                  lhu          ra, 6(sp) #end riscv_load_store_rand_instr_stream_8
                  auipc        gp, 91154
                  auipc        t1, 525613
                  sltiu        zero, a0, 1905
                  bge          s0, s10, 9f
                  sll          a0, s6, t5
                  xor          s10, t5, s7
                  sltu         sp, t1, s7
                  blt          s11, s4, 8f
8:                beq          ra, t6, 13f
9:                addi         s3, s11, 387
                  bne          t3, t5, 17f
                  and          s11, t2, s0
                  srl          a1, s6, a6
13:               auipc        s10, 832641
                  bge          s6, zero, 25f
                  lui          s0, 100171
                  xor          s6, t2, ra
17:               sub          s10, t2, t6
                  addi         t2, sp, -844
                  blt          t5, t2, 24f
                  ori          s6, sp, -1941
                  slti         a6, zero, -440
                  nop
                  xori         a2, t6, 1077
24:               slli         t2, s8, 16
25:               blt          ra, s3, 41f
                  slli         a5, s1, 7
                  and          tp, a4, s8
                  ori          a0, t1, -574
                  addi         tp, ra, 352
                  sltiu        s11, sp, 1258
                  ori          s0, sp, -985
                  bgeu         t5, a0, 41f
                  slli         a5, s10, 10
                  srli         s4, s4, 3
                  sub          a0, a6, gp
                  nop
                  slli         a1, a1, 29
                  xor          a2, t5, s4
                  and          ra, s9, sp
                  blt          s8, gp, 42f
41:               nop
42:               xori         s3, t2, 871
                  xor          s1, a1, a5
                  or           a0, t5, s7
                  or           s5, s1, s1
                  slt          zero, a1, sp
                  sltiu        s11, tp, 26
                  sra          a4, t5, s8
                  and          s0, a7, a1
                  addi         a5, s5, 1815
                  beq          a4, s10, 54f
                  blt          sp, a6, 69f
                  lui          s9, 618426
54:               bge          a0, a0, 58f
                  sra          s6, t3, t3
                  slti         a5, a3, 1580
                  sub          a7, gp, a7
58:               sll          s7, ra, s11
                  andi         s5, sp, 413
                  auipc        a0, 156058
                  sra          s9, s10, s4
                  srl          t1, t4, a3
                  sub          s6, t6, t6
                  auipc        a7, 359345
                  srai         zero, zero, 13
                  add          ra, s0, a2
                  srl          a1, s10, a6
                  srli         ra, a2, 9
69:               blt          a2, t1, 70f
70:               ori          a2, sp, 492
                  xori         t2, s8, -910
                  slti         a5, gp, 385
                  bltu         t4, zero, 79f
                  slti         s10, a2, -1999
                  bltu         t6, s5, 95f
                  andi         t6, t0, 290
                  sll          gp, s10, a6
                  or           a4, ra, gp
79:               bge          s10, a3, 98f
                  sll          t6, a3, sp
                  blt          s7, t3, 88f
                  sub          t5, t5, s4
                  beq          a2, t3, 86f
                  or           a4, a6, s3
                  nop
86:               ori          a0, t2, 1144
                  slt          s5, t3, gp
88:               and          tp, s4, s5
                  srli         t6, a2, 3
                  sll          s4, tp, a3
                  bne          s5, sp, 93f
                  srl          gp, tp, t3
93:               sltu         s4, s1, s4
                  xori         t3, s11, 1451
95:               sltiu        s9, s8, 517
                  bge          a2, s5, 103f
                  sltiu        ra, s8, -1656
98:               slti         sp, a1, -1909
                  sub          a7, s8, s2
                  xori         t5, a7, -144
                  srl          s8, s4, a4
                  bge          gp, s7, 107f
103:              ori          t6, a4, 1786
                  blt          a7, a7, 123f
                  bne          tp, ra, 117f
                  xori         zero, a0, -654
107:              lui          s3, 875250
                  lui          a1, 649411
                  nop
                  bltu         s0, gp, 115f
                  beq          tp, a6, 131f
                  andi         s8, t2, -1904
                  sltiu        a4, t0, -20
                  sltu         a4, a0, tp
115:              add          t6, a3, s5
                  bgeu         t4, a7, 136f
117:              lui          s8, 243422
                  xori         s11, a7, 952
                  andi         tp, s10, 1531
                  add          tp, s0, a3
                  bne          t2, t5, 136f
                  lui          s7, 624455
123:              ori          a1, a3, -327
                  xor          t5, a0, a0
                  slti         t3, t5, -1309
                  srai         a6, zero, 28
                  andi         a1, a2, 702
                  addi         a6, s6, 830
                  or           s3, s8, t6
                  lui          s9, 184608
131:              slt          s7, t0, a2
                  ori          t3, s2, -1614
                  sltiu        t5, t0, 576
                  nop
                  bge          ra, a3, 145f
136:              srli         a1, s6, 18
                  slt          a1, a2, s8
                  ori          ra, a4, -1943
                  nop
                  srl          t5, s9, s3
                  slti         zero, s1, -809
                  xori         s6, sp, -821
                  srli         s5, gp, 0
                  or           a4, t6, t4
145:              blt          sp, a5, 161f
                  ori          s7, t5, -2002
                  bltu         s4, s5, 164f
                  srli         s3, a1, 12
                  slti         a2, t3, 834
                  xori         t1, t4, -1617
                  auipc        a5, 1014672
                  andi         zero, s6, 913
                  and          s3, s1, sp
                  addi         sp, s0, -1645
                  slt          t6, sp, s11
                  andi         sp, s9, 499
                  srai         t1, s6, 10
                  lui          a0, 893278
                  lui          tp, 440052
                  addi         t6, s4, -376
161:              auipc        s6, 855968
                  srli         s4, sp, 5
                  and          a1, gp, s8
164:              lui          s4, 18193
                  xori         t5, zero, -226
                  lui          gp, 503773
                  bgeu         tp, a5, 170f
                  slt          s2, t2, s4
                  srl          s3, s0, t3
170:              and          s10, s6, s6
                  addi         s2, t5, 835
                  sll          s0, a5, a0
                  slt          t3, s2, t0
                  bge          zero, sp, 179f
                  xori         a6, s2, -1310
                  slt          a7, s1, t3
                  bne          s6, t0, 197f
                  sltu         sp, t6, t0
179:              bltu         a7, s10, 196f
                  slti         ra, gp, -84
                  sltu         s3, t4, tp
                  slli         a2, a2, 5
                  srl          s5, a3, sp
                  bne          s5, t6, 190f
                  add          s11, s4, s5
                  xor          t3, zero, a7
                  and          s8, a0, s11
                  slt          s5, a7, t0
                  bge          a7, zero, 206f
190:              slti         t2, t0, 440
                  srai         a2, t4, 6
                  bge          gp, s10, 197f
                  sltiu        s5, a0, -149
                  xori         s9, ra, 235
                  slti         s6, t2, 75
196:              and          t2, a6, a2
197:              ori          t2, s2, 1116
                  sll          t3, a3, a1
                  sll          gp, t2, a5
                  add          a4, a4, tp
                  lui          s7, 844567
                  bge          s9, s9, 209f
                  srli         t1, a1, 24
                  bgeu         s5, a0, 223f
                  blt          t0, t4, 207f
206:              srli         t6, a7, 8
207:              slli         s2, s8, 2
                  add          s6, s8, s0
209:              auipc        t5, 537176
                  sra          s2, t2, gp
                  srl          s11, t1, gp
                  lui          a1, 71436
                  lui          s7, 988574
                  sll          t6, a4, s0
                  andi         s4, s8, 677
                  srl          s5, tp, s11
                  slti         t6, a0, -978
                  blt          t1, s9, 233f
                  xor          t6, s5, s5
                  addi         s3, s10, -542
                  srai         gp, s5, 9
                  add          s2, a2, a6
223:              srli         s11, t3, 14
                  sub          t5, sp, s3
                  srli         s7, gp, 28
                  srli         t2, a3, 20
                  ori          a7, gp, -739
                  srai         a2, a1, 7
                  add          zero, ra, a5
                  sltu         s3, a3, s8
                  slti         a6, s3, -739
                  sll          s1, t5, s8
233:              beq          s4, gp, 242f
                  bgeu         a6, t5, 250f
                  and          a0, sp, ra
                  ori          s1, s1, 674
                  andi         s3, a6, 975
                  addi         s2, s4, 669
                  slt          a0, a3, a0
                  or           t5, a5, s0
                  andi         t3, t0, 1484
242:              bltu         a2, s9, 243f
243:              bge          a3, gp, 248f
                  andi         a6, t6, -794
                  andi         tp, a4, -840
                  bltu         a5, sp, 266f
                  srai         s11, t6, 1
248:              slli         zero, a2, 27
                  bgeu         s2, t4, 251f
250:              add          s0, a3, ra
251:              add          s7, a4, s9
                  srai         a2, a2, 9
                  sub          s4, t2, t1
                  andi         ra, s7, -787
                  srai         ra, a0, 7
                  sltu         zero, a0, zero
                  bge          a3, s5, 269f
                  sltiu        gp, s7, 1918
                  sltu         s10, t0, t3
                  srli         s0, gp, 3
                  slt          a0, a0, t0
                  sll          s0, t1, a5
                  slt          s11, a1, a0
                  add          s4, a2, a7
                  sra          s0, a7, a4
266:              and          t1, a1, s0
                  sltu         s1, a4, t3
                  add          sp, s11, s4
269:              srli         s4, ra, 4
                  lui          ra, 457720
                  sltu         a4, a6, a5
                  slt          a7, tp, s9
                  lui          ra, 826366
                  bltu         s5, s2, 293f
                  bgeu         s9, ra, 280f
                  beq          a6, s9, 283f
                  sll          t3, a3, s5
                  nop
                  blt          t0, s11, 285f
280:              xori         a1, s6, 753
                  bltu         s0, ra, 291f
                  nop
283:              beq          a7, a2, 284f
284:              slti         a7, a1, -309
285:              add          a6, t5, s8
                  xor          ra, s8, t3
                  beq          a6, s1, 298f
                  blt          a3, s4, 291f
                  xor          ra, a4, s8
                  add          a4, t0, t6
291:              srli         a7, a7, 27
                  ori          gp, ra, 1911
293:              bne          a7, t5, 297f
                  blt          t5, s1, 301f
                  bgeu         s6, ra, 311f
                  xori         s11, zero, -149
297:              lui          t2, 296390
298:              lui          a0, 393004
                  sll          s0, a1, ra
                  ori          a1, zero, -146
301:              sub          a6, a5, a5
                  add          s6, a2, t5
                  andi         tp, s0, -1987
                  xori         a5, sp, 1164
                  beq          a7, t3, 325f
                  sub          t1, a7, s7
                  srli         a4, s8, 9
                  slli         t1, s2, 6
                  bgeu         a3, tp, 314f
                  addi         s4, t6, 1978
311:              slli         a4, s1, 18
                  bge          ra, a2, 317f
                  sll          gp, s2, s4
314:              auipc        a2, 476428
                  srai         t6, t3, 25
                  bgeu         ra, t0, 317f
317:              ori          t3, s4, 520
                  sltiu        zero, a0, -681
                  sub          s3, t5, a2
                  addi         t2, s6, -1567
                  sra          a4, s6, s10
                  slt          a0, t4, a6
                  sltiu        t1, s7, -18
                  sll          a5, t4, a4
325:              ori          t1, t0, -596
                  bge          a4, a3, 328f
                  addi         s4, t5, 439
328:              slti         a6, t3, -855
                  sll          sp, s8, s1
                  slti         s3, gp, -1296
                  bge          a1, a6, 351f
                  xor          zero, ra, ra
                  lui          s3, 664731
                  sltu         s6, s5, s11
                  addi         t3, s1, -75
                  sub          sp, a4, a1
                  ori          s10, s5, 517
                  slt          t1, t6, t5
                  xor          t6, zero, a3
                  or           a5, t1, t4
                  ori          a0, t0, -588
                  srai         t2, t6, 2
                  slti         s7, s10, 1199
                  srai         s10, s1, 13
                  slti         s5, t1, 1761
                  sra          s1, s1, a5
                  beq          a0, gp, 350f
                  lui          s11, 867054
                  bge          t1, s2, 355f
350:              slt          s11, s1, s1
351:              bgeu         zero, sp, 356f
                  slt          tp, a4, a1
                  sra          a1, s11, s6
                  xor          zero, a7, a1
355:              bne          t3, a6, 374f
356:              lui          s10, 228988
                  or           a2, s11, s9
                  slti         tp, a1, -25
                  bge          t4, s6, 364f
                  srl          zero, s10, a4
                  or           t5, zero, s2
                  bge          a2, s5, 382f
                  blt          gp, s9, 369f
364:              sub          t5, s7, s5
                  sra          s3, gp, a1
                  auipc        a2, 844776
                  lui          a1, 38503
                  sll          s4, s5, ra
369:              bgeu         a6, s4, 380f
                  sub          s3, t5, a2
                  andi         a0, s6, 1846
                  ori          t2, t3, 1830
                  srai         s1, s6, 30
374:              lui          s5, 458823
                  and          zero, sp, s9
                  xor          s9, tp, a3
                  nop
                  slti         s3, a7, 1645
                  or           s3, s4, s0
380:              sltu         a2, t4, s2
                  slt          a0, t0, s2
382:              slli         t5, s2, 30
                  slt          gp, a1, sp
                  srl          tp, s0, s9
                  ori          a5, t3, 1566
                  slli         s10, s0, 11
                  srl          s10, s1, a5
                  sltiu        t3, a0, -356
                  bge          ra, s5, 399f
                  sub          s10, a6, t4
                  ori          s4, t3, -1576
                  add          s3, s6, s2
                  ori          s5, t3, 1610
                  andi         t1, a5, 789
                  xori         a4, tp, -996
                  ori          t5, s7, 317
                  slt          s3, t2, s0
                  blt          ra, s4, 402f
399:              or           s1, s5, t0
                  lui          s0, 540322
                  addi         s3, t0, 1650
402:              slli         s10, a6, 21
                  slti         t6, s1, -1843
                  sub          zero, a7, s4
                  addi         s2, t1, 322
                  or           ra, t4, s3
                  beq          sp, a5, 408f
408:              nop
                  addi         a6, s9, 1461
                  sltu         s6, s9, a1
                  lui          a7, 326140
                  andi         t1, s9, 773
                  auipc        sp, 464790
                  sltiu        tp, t5, -1225
                  xori         ra, zero, 702
                  nop
                  nop
                  bne          s7, a6, 420f
                  xori         gp, t3, -1615
420:              or           a7, a2, a0
                  sltu         ra, s4, a6
                  sra          t1, sp, s2
                  srli         t2, a0, 4
                  la           s0, region_0+544 #start riscv_load_store_rand_instr_stream_3
                  lhu          a4, 886(s0)
                  or           sp, t3, a4
                  addi         a6, s11, -446
                  lbu          s1, 1329(s0)
                  nop
                  xori         s6, gp, -1726
                  lh           a1, 1080(s0)
                  lb           ra, -105(s0)
                  or           t5, a4, t5
                  lw           a6, 68(s0)
                  lbu          s7, 209(s0)
                  addi         s3, a7, 1447
                  addi         s9, a0, 244
                  sb           s7, 1363(s0)
                  sra          ra, t2, a0
                  lh           sp, -18(s0)
                  sll          a0, t4, s4
                  lbu          s1, -506(s0)
                  lbu          t6, -446(s0)
                  sltiu        t2, a6, -1666
                  lb           t1, 998(s0)
                  xori         a1, t2, 1492
                  sltiu        zero, a3, 145
                  slt          a0, t3, t5
                  sb           a4, 1214(s0) #end riscv_load_store_rand_instr_stream_3
                  blt          s4, a7, 441f
                  sltu         s1, gp, gp
                  blt          a0, gp, 442f
                  srai         s2, t4, 31
                  blt          s8, t3, 440f
                  slt          a6, t5, t6
                  nop
                  srl          s10, t3, a4
                  sltu         a2, t6, t5
                  xor          a7, s11, s1
                  xori         zero, s0, -1226
                  add          s0, s3, sp
                  srai         ra, t1, 5
                  sra          s5, t5, s0
                  xor          s9, a6, s0
                  sltiu        s6, zero, 1905
440:              ori          zero, t3, 130
441:              srl          s1, s0, t4
442:              blt          a0, t6, 445f
                  sll          t2, a0, s11
                  srli         a0, s10, 11
445:              xor          t5, a1, s11
                  srli         a6, sp, 15
                  bltu         s1, s2, 462f
                  nop
                  srai         s0, a4, 5
                  andi         s7, ra, 524
                  auipc        s10, 1024109
                  srai         tp, t2, 14
                  xori         s4, s10, -112
                  xori         ra, s11, 1601
                  andi         a5, s1, 1653
                  xori         a2, t1, 969
                  bne          s0, a6, 473f
                  nop
                  ori          s7, ra, -447
                  add          a4, a4, a1
                  slli         s6, s5, 31
462:              auipc        sp, 971029
                  sltu         a6, a1, s4
                  bltu         t0, s8, 483f
                  bne          tp, s4, 485f
                  srai         s8, s10, 9
                  lui          zero, 904918
                  lui          s1, 879222
                  sra          gp, s10, a1
                  sltu         tp, tp, t6
                  slti         a5, tp, -1804
                  sltiu        gp, s11, -779
473:              bltu         s10, a0, 482f
                  and          tp, t2, gp
                  add          a4, a3, s11
                  bgeu         s11, tp, 483f
                  bgeu         s5, s9, 484f
                  sra          a6, a3, a3
                  sltiu        a4, s5, -1159
                  ori          ra, a4, 1542
                  bgeu         t6, a5, 488f
482:              nop
483:              srli         a4, s7, 27
484:              xor          s5, zero, s2
485:              sltu         s0, s9, s6
                  srli         s2, s4, 24
                  bltu         a2, s3, 504f
488:              sltu         a5, s1, ra
                  lui          a2, 503275
                  sll          t5, s3, a1
                  and          s4, a4, gp
                  slti         s9, s3, -1016
                  bltu         t3, sp, 496f
                  and          t6, t4, a4
                  bgeu         s5, a3, 514f
496:              xori         t2, a7, -223
                  slt          a5, s2, a4
                  nop
                  slti         t3, t1, -81
                  nop
                  bgeu         s7, s4, 517f
                  slt          a4, s11, a0
                  lui          t5, 371741
504:              bltu         a0, s7, 521f
                  sra          s3, t2, a0
                  bltu         t4, s6, sub_9_j12 #branch to jump instr
                  and          t1, tp, t2
                  nop
                  nop
                  slli         a0, s11, 15
                  srai         a4, a1, 3
                  or           a2, t1, a6
                  xor          s1, t0, s11
sub_9_j12:        jal          ra, sub_10 #jump sub_9 -> sub_10
                  lui          gp, 252260
                  lui          s5, 562559
                  sra          s5, s4, a7
                  or           s8, gp, ra
                  bge          t4, t4, 519f
                  sltiu        a4, s3, -1026
                  sll          a6, t6, s7
                  slli         s11, t2, 3
514:              and          a0, s0, s1
                  bgeu         s3, a5, 518f
                  xori         s8, s3, 1111
517:              add          ra, t3, s10
518:              or           t6, ra, t4
519:              bge          t1, sp, 524f
                  addi         s11, a4, -1648
521:              xori         a1, a1, 1076
                  add          s4, s2, a6
                  slti         tp, tp, 1475
524:              sltiu        a6, s0, 1893
                  blt          a7, s8, 530f
                  slli         a0, tp, 19
                  auipc        tp, 576212
                  bge          gp, t1, 548f
                  andi         s6, sp, -70
530:              add          sp, a1, t6
                  bltu         t3, t2, 537f
                  bltu         a2, s8, 536f
                  auipc        t3, 384767
                  addi         a7, t6, 1888
                  srli         s9, tp, 8
536:              sltu         zero, t2, tp
537:              nop
                  addi         s6, t1, -1603
                  slli         s6, s6, 23
                  bgeu         zero, s5, 545f
                  srli         t2, s4, 6
                  srl          s10, t0, a7
                  or           a0, s3, a0
                  and          s11, s11, t6
545:              auipc        a5, 377597
                  blt          a1, s3, 552f
                  lui          s5, 604609
548:              bltu         t2, tp, 555f
                  sll          a6, t5, s1
                  andi         sp, s5, -462
                  sll          tp, t0, t0
552:              srl          s3, s10, s0
                  nop
                  sra          s2, s5, s8
555:              slti         a1, a4, -1442
                  sra          t6, sp, s2
                  xor          s10, s3, t3
                  sra          a6, s2, a5
                  bne          a2, t2, 579f
                  slti         t2, t4, -95
                  srl          t5, s5, a3
                  bgeu         s9, a5, 564f
                  nop
564:              sll          s11, t4, s0
                  slt          tp, t6, s8
                  sll          s0, s8, s8
                  bge          s9, t3, 568f
568:              bge          s4, a1, 579f
                  bltu         t4, s4, 588f
                  addi         s10, s3, -1044
                  sll          a4, a5, s1
                  or           a6, tp, t2
                  xori         a2, gp, -1076
                  sltiu        s6, t5, 214
                  xori         s10, t2, -242
                  xori         ra, s10, -1297
                  sll          a5, a1, a2
                  srli         ra, s9, 23
579:              ori          s10, t6, -746
                  sll          s2, s6, s3
                  slti         s5, s5, 448
                  blt          a1, a4, 592f
                  xori         t1, gp, 1341
                  slli         t5, s1, 1
                  sub          a6, a1, t4
                  bne          ra, a7, 593f
                  slti         s1, t5, 938
588:              xori         ra, a5, 1199
                  xor          s0, t4, s3
                  nop
                  srai         t5, t1, 23
592:              beq          a7, a4, 607f
593:              nop
                  andi         s0, t1, 1573
                  srli         s6, t5, 13
                  slli         ra, t3, 2
                  bge          s0, t5, 614f
                  srli         s4, s5, 9
                  srl          s11, a0, a4
                  bge          s0, a6, 605f
                  addi         s1, s6, 933
                  and          t1, t1, ra
                  addi         s6, s0, 689
                  srli         s7, a2, 0
605:              xori         zero, s6, 1745
                  and          s7, a4, a2
607:              bltu         a7, s8, 619f
                  addi         gp, a1, -523
                  sll          sp, s9, ra
                  sra          s4, s4, gp
                  andi         ra, a3, 1506
                  nop
                  srai         zero, a6, 27
614:              bltu         s2, t4, 616f
                  xor          s11, a5, t5
616:              bltu         tp, a5, 632f
                  sltiu        s7, t0, 532
                  srai         gp, s1, 18
619:              bne          t2, t1, 639f
                  bge          s6, t0, 627f
                  addi         t6, s9, 1252
                  srli         s0, s4, 10
                  sra          gp, a1, a2
                  bge          s7, gp, 625f
625:              sltu         a5, s1, a4
                  slt          a0, a1, s1
627:              slt          s7, a5, a7
                  add          s11, sp, s9
                  sll          s5, s5, t4
                  slli         s1, s6, 23
                  slli         s8, zero, 0
632:              srl          s6, tp, a0
                  andi         a2, s1, -1035
                  sltiu        a2, t2, 864
                  xori         s0, s10, 881
                  bne          s5, s10, 637f
637:              xori         s4, t3, -723
                  slt          s2, s8, t0
639:              beq          s10, a7, 646f
                  xor          s5, a7, s2
                  lui          s2, 699383
                  sub          zero, t4, ra
                  sll          s10, t0, t5
                  srli         t2, sp, 27
                  srli         sp, a0, 1
646:              add          t6, a4, s3
                  beq          a1, gp, 652f
                  xori         t2, t5, -647
                  sltiu        s6, t2, -2032
                  and          t2, s2, s1
                  slti         tp, s4, -857
652:              sll          t6, s5, s2
                  or           a2, s9, gp
                  ori          t6, a2, 1060
                  or           t2, a7, gp
                  sra          zero, sp, s3
                  lui          a5, 904183
                  xor          a6, s7, tp
                  or           ra, s11, zero
                  srai         gp, t6, 22
                  slt          s7, t3, s1
                  srl          s5, t5, a0
                  la           s1, sub_10
                  addi         s1, s1, -725
                  sltu         s3, s4, s4
                  srli         s5, s7, 22
                  sltiu        a5, t4, -1238
sub_9_j13:        jalr         ra, s1, 725 #jump sub_9 -> sub_10
                  xor          t1, a2, s5
                  add          sp, a5, a0
                  add          a5, tp, a3
                  slt          s1, a1, t5
                  bge          t1, ra, 683f
                  addi         s10, a2, 411
                  sltiu        s0, zero, 738
                  beq          a4, s9, 687f
                  bne          t2, s9, 671f
                  or           ra, s9, s4
                  sub          tp, ra, s6
671:              srai         tp, t5, 4
                  beq          s5, s7, 692f
                  andi         s2, sp, 441
                  bne          t3, tp, 679f
                  bltu         ra, t5, 686f
                  srai         s9, s7, 3
                  slti         a5, s1, -972
                  nop
679:              sll          a2, sp, t6
                  bltu         a5, a3, 685f
                  and          t1, sp, s1
                  blt          s4, t3, 684f
683:              add          s11, s11, gp
684:              blt          t2, s1, 696f
685:              xori         s11, s11, 1892
686:              sltu         t1, s1, s11
687:              sltiu        s5, s1, 618
                  xori         t6, s4, -1209
                  addi         s3, s1, -1061
                  blt          s3, zero, 696f
                  and          s2, a0, a7
692:              addi         a2, s2, -615
                  slt          t6, ra, tp
                  srli         s0, t3, 3
                  sltiu        tp, s4, -195
696:              nop
                  or           a6, s8, s9
                  nop
                  or           s6, s11, t6
                  ori          a2, a6, -823
                  bgeu         t5, t4, 708f
                  auipc        a1, 96832
                  addi         t5, s2, -390
                  sll          a0, a1, a0
                  xori         t5, t2, 1631
                  xori         s9, zero, -960
                  slli         a5, s11, 8
708:              slli         a2, a1, 11
                  or           t6, s4, a0
                  and          a1, a0, s6
                  nop
                  sll          s6, t1, a2
                  sra          s3, a0, t3
                  blt          s8, t1, 719f
                  sltiu        s7, a3, -1959
                  srl          a7, sp, s11
                  sltiu        a1, s2, 676
                  sll          a6, a4, tp
719:              srai         t1, t3, 1
                  srl          sp, t5, s6
                  beq          t1, ra, 731f
                  sltiu        t6, a1, -1658
                  nop
                  slti         a5, s3, 873
                  sra          ra, t5, s8
                  slti         ra, s4, -984
                  bltu         a3, sp, 731f
                  slti         s8, s4, 1076
                  bltu         t4, a7, 745f
                  slli         a0, sp, 1
731:              nop
                  beq          zero, t0, 752f
                  bne          s0, s2, 750f
                  nop
                  bltu         zero, t4, 750f
                  sll          s2, s8, s6
                  xori         s0, t4, 531
                  sltiu        a4, a7, 1484
                  add          t6, t4, s0
                  slli         gp, a5, 8
                  srli         s1, zero, 13
                  sub          s0, s9, a4
                  srai         zero, a5, 19
                  xori         sp, s3, 286
745:              xori         zero, s1, -1574
                  bgeu         tp, s10, 763f
                  blt          t0, a7, 750f
                  xori         a5, tp, 1800
                  bgeu         a5, s2, 758f
750:              slti         t1, s0, -1298
                  bltu         sp, zero, 757f
752:              srl          t2, s3, a7
                  blt          a0, a1, 760f
                  blt          zero, t5, 770f
                  beq          a4, ra, 774f
                  sll          s3, t0, a2
757:              or           s3, a6, s11
758:              slti         zero, a3, 1076
                  add          s9, s10, s1
760:              slti         s5, a6, -2030
                  lui          t5, 306535
                  sltu         s9, s7, a4
763:              srl          s2, s4, s1
                  beq          s5, s6, 765f
765:              slti         a7, zero, -1477
                  nop
                  and          s2, gp, t4
                  add          s8, gp, t2
                  auipc        s4, 983334
770:              bge          s1, t0, 772f
                  xor          s7, t4, a0
772:              beq          s1, s4, 789f
                  sll          a5, s3, s8
774:              bgeu         zero, s4, 791f
                  or           t3, s1, t6
                  beq          s6, s8, 777f
777:              auipc        sp, 472179
                  sltu         s7, t6, a6
                  bge          s7, s4, 799f
                  auipc        zero, 24569
                  add          s2, s5, s10
                  srai         s7, tp, 19
                  bltu         a1, s10, 803f
                  xori         s1, s4, 1658
                  sll          gp, s0, t4
                  nop
                  srai         s3, a4, 10
                  blt          a1, t1, 790f
789:              bne          s9, sp, 794f
790:              srai         t3, s7, 13
791:              bne          s7, s3, 803f
                  auipc        s1, 211687
                  and          s8, a0, t1
794:              auipc        t3, 935324
                  sra          s6, a6, tp
                  auipc        t1, 138767
                  sll          a6, s2, s6
                  andi         s9, s3, -1424
799:              blt          a3, s10, 810f
                  slli         t5, s1, 17
                  auipc        a2, 230458
                  blt          t2, sp, 821f
803:              and          t5, t0, s8
                  sll          s1, t0, s6
                  add          a4, a7, t1
                  bgeu         s6, t2, 813f
                  bne          zero, s8, 811f
                  sra          s0, s10, s5
                  nop
810:              srl          s11, a5, a4
811:              sltiu        t2, a3, 1245
                  sra          a4, t2, s8
813:              bge          t5, s3, 820f
                  or           gp, a7, tp
                  slli         s3, ra, 28
                  lui          a5, 846266
                  xor          s5, s9, a0
                  sltiu        s4, s8, 2018
                  xori         s6, zero, -1697
820:              slli         t2, s1, 12
821:              srai         t5, a7, 10
                  beq          a2, a4, 837f
                  addi         a1, tp, -890
                  bge          a2, s11, 843f
                  bne          t1, s11, 830f
                  srai         s2, sp, 29
                  or           t3, gp, gp
                  lui          s10, 939632
                  ori          s2, s6, 246
830:              slt          s6, s2, s1
                  srai         a7, a2, 12
                  srai         a0, s7, 29
                  or           s4, a2, s2
                  srl          gp, t5, s0
                  nop
                  blt          a6, s10, 856f
837:              srl          tp, t4, a4
                  sltiu        t1, s7, 1762
                  add          s2, s10, s9
                  xor          s11, s10, s7
                  sltiu        t6, a6, -329
                  slti         s10, a1, -1929
843:              sra          s5, t4, zero
                  and          a2, zero, t0
                  or           t1, s7, s6
                  bltu         s3, a6, 852f
                  slti         s10, ra, 1484
                  and          a5, s7, gp
                  beq          s4, a6, 854f
                  xor          s0, a5, a2
                  beq          a0, t6, 854f
852:              slt          t5, s5, tp
                  nop
854:              blt          s0, t5, 860f
                  srai         s7, s0, 14
856:              blt          s1, a2, 859f
                  sra          zero, a6, t4
                  srli         a1, s11, 20
859:              and          s0, tp, a6
860:              nop
                  sltiu        ra, gp, 1593
                  or           s5, t2, s4
                  sra          s0, a6, s3
                  auipc        s5, 703412
                  or           a6, s7, zero
                  sll          tp, s1, t6
                  add          a4, s3, s7
                  auipc        s9, 803569
                  srl          a7, s9, s7
                  xor          s10, s1, s9
                  add          s3, t1, t0
                  slt          s0, a0, s11
                  and          t5, a0, a5
                  srl          t3, t2, s2
                  srli         ra, s0, 25
                  and          s0, a7, ra
                  sll          s11, t0, s4
                  bne          s6, t0, 883f
                  lui          tp, 595214
                  sltu         s5, s1, s2
                  bltu         s2, t0, 882f
882:              xori         s5, t5, 166
883:              sltu         s10, t1, s9
                  bne          s8, t1, 900f
                  or           s3, s2, a4
                  sub          sp, s2, t0
                  bltu         t4, gp, 894f
                  slli         a5, t0, 20
                  auipc        a7, 771127
                  sll          a7, s6, gp
                  xor          tp, t4, a7
                  ori          s8, a1, -112
                  ori          tp, t4, -317
894:              bge          s3, s7, 910f
                  srli         s5, s3, 9
                  slt          s11, tp, t5
                  xor          s9, s2, ra
                  and          ra, t4, tp
                  bgeu         sp, s6, 908f
900:              bgeu         a6, a4, 902f
                  and          t3, s8, s1
902:              srl          s2, s10, s11
                  srl          t3, zero, t0
                  sub          t5, t5, s1
                  bgeu         s0, s7, 915f
                  srli         gp, s9, 1
                  srai         a0, a1, 8
908:              bltu         s1, t3, 914f
                  sub          gp, zero, a3
910:              blt          a3, t0, 925f
                  slli         s11, t4, 17
                  addi         t3, sp, 102
                  sltu         a1, s11, s1
914:              andi         s10, zero, -188
915:              sra          s9, a7, t6
                  srli         gp, t6, 17
                  beq          t0, s11, 922f
                  sra          zero, s1, a5
                  addi         s10, a4, 493
                  beq          a0, s9, 930f
                  sub          s2, t2, a4
922:              slli         s6, t0, 11
                  xor          a2, s11, a4
                  bgeu         s8, gp, 930f
925:              sub          a2, t0, s9
                  slt          gp, zero, s1
                  slti         tp, t5, -156
                  addi         t6, a4, -896
                  or           s5, a1, a7
930:              ori          s8, a2, 5
                  beq          s0, a4, 935f
                  beq          a2, tp, 943f
                  slti         s11, a2, -1231
                  srl          s2, s0, s5
935:              srai         s11, a0, 10
                  add          s1, s8, t5
                  blt          t2, a5, 938f
938:              sra          a7, a7, s4
                  lui          s4, 204255
                  auipc        a7, 459236
                  xor          s1, s2, zero
                  and          s4, s6, s2
943:              sltiu        a0, s4, -681
                  srai         ra, t2, 5
                  sltu         s8, t2, t4
                  sll          t1, a5, s5
                  sub          s6, t5, s5
                  slt          sp, s6, a1
                  bgeu         s5, t0, 965f
                  srai         s7, gp, 5
                  bne          a7, s3, 958f
                  nop
                  lui          s2, 530605
                  lui          t1, 480420
                  andi         s0, s10, 976
                  add          s2, zero, gp
                  beq          t0, s8, 964f
958:              srai         ra, a4, 5
                  bne          s7, t3, 978f
                  nop
                  blt          s2, a1, 966f
                  srli         tp, s7, 12
                  addi         a6, t0, -1976
964:              bltu         t3, s0, 981f
965:              or           s0, a1, a0
966:              bltu         ra, t6, 986f
                  auipc        t1, 35878
                  blt          t4, ra, 973f
                  bne          s3, a2, 976f
                  or           t3, ra, s8
                  sltiu        s9, t2, -1998
                  srl          s9, a3, a0
973:              nop
                  nop
                  bne          a7, s2, 995f
976:              sub          s2, s1, s7
                  xori         t2, t6, -362
978:              xori         sp, s3, 1943
                  bgeu         s11, a6, 996f
                  auipc        tp, 568611
981:              lui          s3, 197259
                  srai         a5, s2, 13
                  bgeu         a6, s3, 999f
                  srli         s0, a1, 6
                  srai         a2, s6, 15
986:              beq          a3, s7, 988f
                  sub          a6, a1, t6
988:              addi         tp, t5, 801
                  srai         t6, a4, 24
                  slti         a2, t5, 1382
                  slli         s9, s1, 18
                  slt          tp, s2, a6
                  srai         s7, s10, 17
                  lui          s11, 220409
995:              ori          a0, s3, 1668
996:              ori          s7, a0, -253
                  nop
                  xor          zero, a6, s6
999:              addi         a2, t6, -2032
                  andi         a7, t3, 1501
                  slli         t3, a4, 22
                  srli         a0, a2, 28
                  sra          s3, a4, s10
                  andi         s10, t5, 1464
                  nop
                  beq          a0, t5, 1018f
                  xor          sp, s6, s10
                  add          zero, a3, a4
                  slti         a4, t4, -769
                  srai         s4, t2, 26
                  xori         sp, a6, 1617
                  bge          s1, s5, 1013f
1013:             nop
                  sll          s2, s7, s4
                  nop
                  xori         a4, s0, -1476
                  nop
1018:             srai         a0, t2, 8
                  xor          gp, t3, s4
                  slti         s3, sp, 524
                  blt          a1, a1, 1026f
                  andi         a5, ra, -884
                  xori         ra, s0, -946
                  and          tp, a0, s3
                  auipc        a6, 538852
1026:             slti         s4, t3, 115
                  blt          a5, tp, 1036f
                  sra          t3, sp, a4
                  sub          ra, ra, ra
                  blt          s11, a5, 1049f
                  or           ra, a3, t5
                  ori          t1, zero, 810
                  srl          t1, t1, a5
                  or           a4, s0, s4
                  bge          t5, gp, 1038f
1036:             ori          t6, sp, 1504
                  sra          s0, a5, sp
1038:             or           s3, s9, s5
                  beq          t5, s5, 1059f
                  slt          s11, t1, tp
                  sub          s4, s10, t2
                  bge          t3, t2, 1045f
                  xori         zero, zero, -922
                  bltu         a2, s4, 1046f
1045:             sll          tp, s7, s6
1046:             srl          a1, t0, a0
                  sltu         gp, t5, a4
                  bge          t3, a4, 1051f
1049:             slti         t6, ra, -765
                  blt          s2, zero, 1059f
1051:             bgeu         a0, s5, 1063f
                  sll          s3, t4, s8
                  auipc        s5, 392882
                  andi         s10, a0, -392
                  xori         t5, s6, -1195
                  nop
                  slt          t6, a4, t2
                  blt          s4, zero, 1065f
1059:             srai         s0, a6, 14
                  sltiu        t3, a0, -1785
                  sll          a4, t6, s4
                  lui          s11, 784703
1063:             ori          a0, s2, 790
                  sra          s7, s4, t3
1065:             or           a2, s9, sp
                  lui          t5, 434927
                  and          s4, a6, s6
                  srai         a5, t1, 11
                  andi         a0, t3, 1007
                  or           t6, a0, s6
                  bge          a4, a3, 1087f
                  bge          a0, s10, 1092f
                  xor          a1, a5, s11
                  srli         t6, a0, 4
                  addi         a2, a2, 463
                  sra          s4, s1, s4
                  beq          t3, a7, 1093f
                  slt          t1, tp, a6
                  xori         s10, a7, -1825
                  sltu         s1, t4, t5
                  add          t1, zero, a0
                  bne          s8, a5, 1088f
                  sltu         zero, zero, s10
                  xor          s10, a6, t0
                  srl          s11, sp, a5
                  bne          gp, s10, 1106f
1087:             or           a7, t2, t2
1088:             beq          a6, ra, 1107f
                  sra          t6, s7, s4
                  sll          s5, s5, ra
                  lui          tp, 367602
1092:             bgeu         s7, s4, 1097f
1093:             lui          s7, 289978
                  and          s8, a4, s10
                  bge          s5, a6, 1100f
                  bge          a3, t6, 1097f
1097:             nop
                  slt          s10, t5, s5
                  bge          a6, tp, 1100f
1100:             sltiu        s8, zero, -591
                  slli         t2, t0, 5
                  or           ra, s9, s11
                  srl          t6, s1, t4
                  and          s0, s10, s1
                  xor          t3, t4, ra
1106:             sltiu        s0, s4, 1106
1107:             sra          a7, a3, zero
                  slli         t2, t3, 15
                  sub          s2, t3, s9
                  bgeu         s7, t2, 1120f
                  bltu         s6, s4, 1131f
                  auipc        tp, 152447
                  or           sp, t6, s6
                  add          gp, ra, a4
                  slti         a6, t3, 35
                  andi         ra, t0, -1406
                  lui          zero, 29763
                  bne          gp, a6, 1123f
                  sra          t2, s0, s2
1120:             sltu         a7, s3, tp
                  or           s8, a6, t2
                  sub          s4, t3, s3
1123:             srai         t5, s4, 29
                  auipc        s4, 758802
                  beq          a2, t1, 1129f
                  andi         a5, a5, -312
                  sll          zero, s4, s11
                  ori          tp, t2, 388
1129:             slt          t6, s1, s4
                  nop
1131:             andi         s10, t5, -2010
                  sub          a6, s3, s6
                  srli         s9, t2, 13
                  sra          s8, t0, s11
                  srli         a7, t1, 6
                  srli         a1, a6, 18
                  blt          s2, a6, 1142f
                  slti         gp, tp, 749
                  lui          sp, 199572
                  srl          sp, s9, s7
                  sltu         a5, s2, s11
1142:             sll          a1, s3, a3
                  srai         s10, ra, 22
                  lui          a0, 496599
                  and          s3, a4, s11
                  srl          a0, s0, s0
                  slti         t1, s5, -552
                  srai         s6, sp, 17
                  sltu         s5, s5, s2
                  xor          sp, s5, a4
                  sll          t3, t4, s9
                  slli         t6, a2, 17
                  bge          t3, s4, 1172f
                  xori         s4, s6, -860
                  bgeu         a2, s2, 1162f
                  auipc        s2, 286551
                  sra          a6, a2, t2
                  sltiu        s11, s3, -721
                  sub          s3, t1, s6
                  and          s2, s6, s2
                  slt          t5, s3, a6
1162:             blt          s0, zero, 1169f
                  bgeu         a0, t6, 1178f
                  xor          a6, ra, t0
                  srai         a2, s9, 23
                  sub          s0, a5, sp
                  bge          t6, s0, 1170f
                  or           tp, s7, a0
1169:             lui          s6, 572749
1170:             or           a6, s1, a1
                  and          a0, zero, s5
1172:             blt          s9, s9, 1178f
                  srl          zero, t1, t1
                  xori         s6, s8, 1659
                  srl          t2, s6, s7
                  sra          ra, t3, a1
                  addi         s2, t3, 1482
1178:             beq          a6, a0, 1195f
                  lui          a0, 476348
                  sltiu        tp, a3, 100
                  ori          zero, gp, 1342
                  beq          s9, t6, 1184f
                  xor          a5, s3, ra
1184:             xor          sp, t4, t2
                  bgeu         s4, s8, 1196f
                  nop
                  add          s11, t3, s1
                  xori         sp, s4, -893
                  beq          a6, a2, 1206f
                  sub          s5, s3, s6
                  slli         a5, t5, 7
                  andi         a5, s0, 103
                  addi         gp, t1, -612
                  add          tp, a1, s11
1195:             xori         a2, s0, 779
1196:             srai         zero, a1, 11
                  srli         s8, tp, 17
                  bge          s5, s7, 1200f
                  nop
1200:             slt          a4, t3, s1
                  xori         s8, a1, -1940
                  blt          t6, ra, 1221f
                  sub          s8, t5, s11
                  slti         s9, a5, -335
                  xori         t5, s9, 1113
1206:             bltu         gp, a7, 1215f
                  addi         s8, a2, 1217
                  srl          s9, s0, tp
                  bge          s0, s11, 1216f
                  bltu         a1, gp, 1220f
                  lui          t5, 75655
                  ori          tp, s6, 1421
                  sltiu        t2, s0, -1288
                  beq          s9, t0, 1215f
1215:             blt          s10, s1, 1216f
1216:             sltu         a7, s5, a1
                  blt          t5, s8, 1220f
                  slli         a5, t4, 21
                  slli         s8, s3, 12
1220:             sll          s6, s2, tp
1221:             slt          s11, t2, a2
                  add          t3, s11, s4
                  bne          s3, a4, 1225f
                  beq          a4, s3, 1229f
1225:             xor          gp, s0, t5
                  bgeu         s5, s3, 1229f
                  beq          a6, ra, 1229f
                  add          ra, t3, s7
1229:             auipc        t3, 722532
                  ori          a0, a3, -1368
                  sltiu        zero, zero, -678
                  lw           ra, 4(a3)
                  auipc        t2, 598332
                  or           zero, a3, a3
                  xor          t3, a6, a1
                  srai         sp, a6, 22
                  xor          s10, s6, sp
                  addi         a3, a3, 24
                  srl          sp, sp, s4
                  slli         s11, t6, 14
                  slti         s1, t4, 1137
1619:             addi x3, x1, 1
1619:             jalr x3, x3, 0
sub_10:           slli         gp, ra, 7
                  bgeu         a3, ra, sub_10_stack_p
sub_10_stack_p:   addi         a3, a3, -36
                  addi         a0, a0, -1978
                  sw           ra, 4(a3)
                  srli         s0, t6, 17
                  sub          s8, t2, t1
                  la           tp, region_1+1788 #start riscv_load_store_rand_instr_stream_6
                  sb           a0, 23(tp)
                  sb           s2, 53(tp)
                  lh           s5, -16(tp)
                  sub          s4, s9, a3
                  sb           t5, 47(tp)
                  sb           a6, 8(tp)
                  sb           s6, -23(tp)
                  lb           gp, 5(tp)
                  nop
                  lhu          s5, -54(tp)
                  sltiu        t5, t2, -2017
                  slli         a6, a0, 15
                  sw           ra, -44(tp)
                  sb           t2, -53(tp)
                  slt          s5, s9, sp
                  lb           s7, 14(tp)
                  lb           gp, 55(tp)
                  lbu          s4, -25(tp)
                  and          s0, a5, zero
                  slti         ra, sp, 1909
                  lui          s1, 833779
                  lb           s0, 57(tp)
                  nop
                  lbu          gp, 31(tp)
                  andi         t2, s1, 248
                  lbu          s3, -31(tp)
                  sb           s4, -46(tp)
                  lw           gp, 32(tp)
                  nop
                  lb           t2, -3(tp)
                  lb           t2, 19(tp)
                  sb           t1, -15(tp)
                  lh           a1, 48(tp) #end riscv_load_store_rand_instr_stream_6
                  la           t1, region_0+1390 #start riscv_load_store_rand_instr_stream_0
                  sltu         ra, s3, s5
                  lb           s1, 27(t1)
                  lui          tp, 202731
                  sltiu        s4, t1, -1628
                  srli         s9, t1, 5
                  andi         a0, ra, 1089
                  addi         a2, a4, 1458
                  lb           s9, 29(t1)
                  srli         t3, s1, 17
                  nop
                  lbu          a0, 50(t1)
                  andi         t2, a0, -1610
                  srai         t3, a5, 21
                  ori          s8, s1, -1549
                  slt          gp, t2, t1
                  slti         a5, ra, -104
                  sw           a2, -38(t1)
                  lbu          t5, -33(t1)
                  sltu         s10, tp, s8
                  nop
                  sb           a6, 5(t1)
                  slti         s3, a6, -1520
                  add          s4, s7, s3
                  srai         s5, t1, 10
                  lui          s6, 31023
                  nop
                  lb           a1, 2(t1)
                  sltiu        s1, s6, -898
                  sltu         a2, a6, s11
                  add          s1, ra, s5
                  addi         a0, s0, 1287
                  lb           ra, -59(t1)
                  lbu          s5, 46(t1)
                  sra          s2, t1, t5
                  sra          s5, a0, a2
                  sb           a3, -56(t1) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_1+1719 #start riscv_load_store_rand_instr_stream_8
                  sltu         a0, t3, s2
                  lb           a5, -3(a6)
                  lhu          gp, -13(a6)
                  sltu         s2, s9, s7
                  sb           a5, -16(a6)
                  lbu          ra, 3(a6)
                  sb           tp, 2(a6)
                  lbu          t2, -15(a6)
                  sub          zero, s0, t1
                  slli         a4, sp, 17
                  xori         t5, a5, -573
                  sb           a7, 11(a6)
                  auipc        a2, 250452
                  lb           a4, -10(a6)
                  sb           ra, -12(a6)
                  ori          sp, s1, 613
                  add          s9, zero, t5
                  sll          s7, t3, zero
                  addi         s10, ra, -1138
                  lbu          s9, 10(a6)
                  sb           ra, -2(a6)
                  add          s10, a1, tp
                  srl          a0, t0, a4
                  sb           s8, -8(a6)
                  lh           s5, -3(a6)
                  sb           t1, 7(a6)
                  and          zero, t4, t5
                  slli         a0, sp, 23
                  lb           s6, -12(a6)
                  add          s3, s6, t2
                  lb           a0, -10(a6)
                  nop
                  lb           s2, 8(a6) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+749 #start riscv_load_store_rand_instr_stream_2
                  lh           s5, 51(sp)
                  ori          t6, s9, 1027
                  sb           t6, 186(sp)
                  lbu          ra, -248(sp)
                  sltiu        a1, a5, 1870
                  nop
                  sb           s4, -222(sp)
                  sltu         s4, a5, s11
                  lb           zero, -250(sp)
                  sw           s10, -193(sp)
                  sb           t3, 108(sp)
                  and          t5, t0, a6
                  lbu          s5, -156(sp)
                  lb           a4, -122(sp)
                  andi         ra, a5, -1985
                  slli         a0, a5, 25
                  xori         s10, t5, 1995
                  sb           t3, 246(sp)
                  lbu          s1, -39(sp)
                  lb           s0, -14(sp)
                  lw           tp, 75(sp)
                  or           t2, t5, t2
                  sll          gp, gp, s10
                  sb           s5, -86(sp)
                  lbu          a7, 241(sp)
                  xor          t2, a5, s0
                  or           a5, t5, t5
                  auipc        s8, 689090
                  slli         t1, a3, 6
                  sh           a6, -17(sp)
                  lh           t3, -175(sp)
                  auipc        a6, 248620
                  slti         s2, s7, 1577
                  slti         a1, a4, 1465
                  add          s7, s2, s8
                  sub          s8, a3, a7
                  lbu          s11, -161(sp)
                  lui          s7, 253073
                  lb           t6, -63(sp)
                  xori         s9, a3, 1178
                  srli         a7, a4, 8
                  lbu          s9, -157(sp)
                  lbu          s4, 109(sp)
                  lb           s6, 62(sp)
                  lbu          a4, 100(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t5, region_0+862 #start riscv_load_store_rand_instr_stream_11
                  lb           s11, -63(t5)
                  sw           s7, -22(t5)
                  slli         a0, sp, 17
                  sltiu        s11, t2, -799
                  lbu          a0, 1(t5)
                  sw           s5, -10(t5)
                  sb           s2, 63(t5)
                  sb           a4, -16(t5)
                  srli         s9, s10, 21
                  lb           a7, 37(t5)
                  or           a4, t2, tp
                  and          a4, t0, a4
                  sub          tp, s3, a1
                  srli         t1, ra, 25
                  lbu          t1, -12(t5)
                  sltiu        t6, t3, 357
                  lbu          s2, -39(t5)
                  lb           t3, -33(t5)
                  sw           s3, -54(t5)
                  and          a4, t6, t2
                  auipc        s5, 824813
                  lb           s7, -17(t5)
                  lh           s10, -52(t5)
                  or           t1, s10, s2
                  auipc        a2, 663140
                  lbu          s10, 17(t5)
                  lhu          a0, -50(t5) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1960 #start riscv_load_store_rand_instr_stream_3
                  sra          zero, s9, s0
                  slt          s0, a5, s2
                  auipc        s4, 42666
                  lh           s7, -1184(sp)
                  sra          s0, s6, s0
                  sb           a3, -93(sp)
                  lb           s7, -413(sp)
                  sltu         s0, s2, s10
                  slli         t1, s4, 28
                  lbu          ra, -695(sp)
                  xor          s4, a6, a7
                  xor          zero, s10, s2
                  srli         s1, s1, 2
                  lb           s6, -1858(sp)
                  addi         ra, s8, -35
                  auipc        a6, 759838
                  lbu          a2, -434(sp)
                  sh           s4, -1658(sp)
                  lbu          s8, -1799(sp)
                  nop
                  lb           a4, -707(sp)
                  nop
                  srli         t3, t1, 23
                  lb           tp, -1894(sp)
                  xor          s5, t0, ra
                  auipc        s5, 559096
                  srl          t1, s4, a6
                  slt          zero, s5, t2
                  lhu          s10, -404(sp)
                  sub          t2, s0, s0
                  sltu         a5, s10, s8
                  sb           tp, -1606(sp)
                  sra          s8, a4, s3
                  ori          ra, s3, 1362
                  xor          gp, t0, t0
                  lui          s5, 430549
                  sub          a6, t6, zero
                  sra          s0, t2, sp
                  sb           tp, -863(sp) #end riscv_load_store_rand_instr_stream_3
                  srli         gp, s11, 20
                  xor          t5, s2, s3
                  blt          a5, t4, 22f
                  slli         s10, a0, 27
                  sll          s3, s8, s3
                  srl          ra, sp, s5
                  sltu         s6, a2, s3
                  sltiu        tp, sp, -819
                  addi         s11, s10, -229
                  sltu         s6, t5, a1
                  sltu         ra, t5, s0
                  bge          a4, a1, 14f
                  bgeu         s6, s7, 19f
                  bltu         t1, t1, 24f
14:               auipc        t6, 942432
                  addi         s5, s1, 29
                  sll          s4, s3, s8
                  or           t3, s9, t1
                  nop
19:               slli         s6, s7, 30
                  andi         s7, s1, -1081
                  slt          sp, s1, s1
22:               sltu         t2, tp, a5
                  and          s11, a7, s6
24:               xori         s2, a4, 1741
                  ori          t5, s2, 400
                  sub          t3, t4, t2
                  blt          zero, t5, 32f
                  bne          a5, t2, 33f
                  bltu         t3, a1, 32f
                  andi         s9, t0, -1996
                  nop
32:               slli         s6, t6, 6
33:               slt          a5, ra, a0
                  blt          t0, s10, 49f
                  srli         t1, s6, 29
                  slt          t5, s5, a1
                  beq          a5, s6, 55f
                  nop
                  blt          s5, t4, 47f
                  ori          a1, a5, 1467
                  srl          s6, s3, a0
                  bgeu         a3, s11, 59f
                  sub          a1, t5, a1
                  nop
                  or           t2, a1, t0
                  srl          a6, t3, t2
47:               add          t2, s8, s4
                  andi         a4, gp, -352
49:               sra          a6, s6, a5
                  auipc        s5, 191226
                  andi         s9, a3, 1370
                  ori          s8, s3, -727
                  beq          s4, s5, 72f
                  slt          s5, s4, s7
55:               sltiu        gp, t2, 1727
                  sub          s8, s11, a7
                  slti         tp, s8, 1354
                  sub          s6, a7, gp
59:               and          a5, t1, gp
                  slti         s5, gp, 548
                  slli         s9, s9, 6
                  ori          gp, a3, -423
                  lui          a5, 280053
                  bgeu         sp, s3, 80f
                  andi         s11, a7, 477
                  slli         tp, ra, 1
                  bgeu         zero, s8, 68f
68:               slli         tp, a3, 31
                  bltu         s0, s1, 77f
                  sra          s3, s1, s5
                  sub          s7, t3, s9
72:               srai         a1, a2, 6
                  srli         s4, t2, 16
                  addi         a2, ra, 1862
                  nop
                  srli         s10, s4, 11
77:               sltu         s9, s5, t4
                  bgeu         a1, sp, 90f
                  slti         a5, s6, 1012
80:               srai         s6, gp, 19
                  and          a5, t4, a5
                  xor          s2, tp, a4
                  andi         t6, zero, -97
                  sub          sp, s6, ra
                  ori          a6, t6, 328
                  srl          gp, t3, s11
                  bgeu         zero, s8, 90f
                  or           a0, s6, a5
                  ori          zero, s9, -1214
90:               sra          a4, s11, a7
                  bne          t5, s10, 97f
                  sra          s2, zero, s1
                  xori         s9, s2, -1580
                  bltu         zero, a1, 102f
                  sll          gp, t2, a0
                  xor          s3, t5, a4
97:               bge          a3, t6, 107f
                  sub          zero, a2, a0
                  addi         s9, tp, -113
                  nop
                  and          sp, ra, a6
102:              srli         a0, a5, 4
                  bltu         s8, s0, 122f
                  sltu         t3, a6, s10
                  and          t1, s0, tp
                  srai         t2, s9, 20
107:              beq          a2, t6, 109f
                  or           s11, s4, a0
109:              xori         s9, s9, 1867
                  sra          t2, s7, s9
                  ori          a0, a5, 1068
                  srli         s10, t6, 29
                  slli         t6, a2, 26
                  bltu         a1, a4, 129f
                  slt          a2, a0, s6
                  xori         t1, t3, -742
                  sll          s9, s10, a5
                  or           a6, t2, s1
                  slt          gp, gp, s5
                  blt          a5, s6, 125f
                  bltu         ra, t4, 128f
122:              auipc        s1, 365515
                  and          sp, t4, t2
                  and          s5, a7, t4
125:              xor          gp, t1, t6
                  sltiu        t5, s0, 983
                  addi         zero, gp, 396
128:              srai         s0, a1, 19
129:              sll          s6, a3, t6
                  bgeu         s11, t3, 137f
                  bge          s10, s7, 145f
                  ori          t3, t3, -426
                  sub          sp, a2, s10
                  sra          a7, s6, s0
                  xor          s5, s11, s10
                  sltu         s4, s4, tp
137:              blt          t3, s1, 138f
138:              sltiu        s1, s6, 1066
                  bge          t3, a0, 140f
140:              bge          zero, s4, 154f
                  nop
                  add          s4, t2, t3
                  blt          t3, s4, 148f
                  nop
145:              slli         t1, s10, 25
                  sll          a1, s0, s11
                  add          s10, a3, s9
148:              add          gp, s7, a3
                  bne          s6, s0, 166f
                  sltu         tp, tp, s10
                  slli         s8, a4, 27
                  and          a7, gp, a3
                  auipc        zero, 1008355
154:              ori          a0, t4, -81
                  andi         a4, a6, 1065
                  sltu         a5, t5, t2
                  slli         s4, ra, 26
                  sra          s11, gp, sp
                  sll          t3, t1, t0
                  beq          t0, s1, 163f
                  bgeu         ra, s4, 168f
                  slti         s1, sp, 354
163:              sltiu        zero, t5, 746
                  ori          s5, a0, 46
                  bgeu         t4, tp, 183f
166:              bge          sp, a3, 171f
                  andi         s2, s4, 859
168:              and          ra, ra, zero
                  sltu         tp, a5, a2
                  xor          s4, a2, s9
171:              bgeu         t6, t6, 183f
                  beq          a0, s2, 186f
                  nop
                  sra          a1, t3, sp
                  bge          s0, a5, 189f
                  srai         ra, zero, 25
                  beq          a3, a4, 178f
178:              blt          s9, a7, 179f
179:              and          s0, gp, t3
                  srl          a6, sp, s1
                  bltu         a1, a1, 188f
                  blt          t3, gp, 197f
183:              add          zero, t0, t3
                  blt          zero, s3, 192f
                  bgeu         s7, s0, 195f
186:              slt          a5, s8, t1
                  beq          s0, a6, 202f
188:              auipc        a7, 268649
189:              slti         s0, a5, -1637
                  add          s6, a3, t6
                  slt          zero, a1, t2
192:              srai         s6, t6, 8
                  nop
                  sra          tp, s11, a4
195:              beq          a6, a7, 214f
                  and          s1, t2, t1
197:              andi         a1, a1, 275
                  ori          s5, sp, 334
                  beq          a2, ra, 201f
                  add          sp, s5, t5
201:              srai         s1, s10, 1
202:              add          s8, a2, a4
                  lui          t6, 604833
                  bne          s8, s7, 209f
                  bge          t1, t3, 221f
                  slt          a1, s7, t1
                  srl          a4, a4, s2
                  blt          s2, a5, 209f
209:              sub          t5, t2, s1
                  blt          t4, t2, 218f
                  addi         a7, s0, -1295
                  sub          a4, t3, t4
                  bne          t2, s7, 221f
214:              bge          a4, gp, 217f
                  blt          zero, a5, 234f
                  srl          s9, t2, t6
217:              nop
218:              bltu         s10, a6, 229f
                  srli         s7, s1, 4
                  srl          s10, s5, a1
221:              add          s11, ra, sp
                  nop
                  nop
                  srl          s1, ra, t5
                  slli         s4, zero, 17
                  xori         t3, zero, -1400
                  slli         s1, s10, 22
                  srli         a5, zero, 20
229:              xor          a2, s10, gp
                  srl          s5, t4, s4
                  bne          a0, s6, 234f
                  addi         a5, s7, 113
                  srai         s9, t0, 22
234:              bge          s4, s4, 240f
                  sltiu        s9, a4, 1841
                  srl          a7, t6, s0
                  or           a2, s8, t0
                  xori         zero, gp, -1057
                  srl          t6, s11, a7
240:              addi         s6, t2, -1371
                  and          t5, a7, ra
                  slti         a7, s7, -281
                  sra          a5, t1, zero
                  slti         t1, t5, 1710
                  and          gp, t6, s8
                  bne          t0, s10, 266f
                  blt          gp, s3, 254f
                  sltiu        s10, s11, -1199
                  bne          a5, s3, 268f
                  beq          s11, a2, 257f
                  andi         s10, t2, 1354
                  slt          s2, ra, zero
                  or           a2, s2, s10
254:              addi         sp, s8, -1487
                  beq          t3, s8, 272f
                  sltiu        a7, s5, -1856
257:              and          a2, s10, t1
                  andi         s6, t0, -1489
                  slt          t1, s2, t5
                  nop
                  bge          s0, a5, 268f
                  ori          s6, s0, 222
                  blt          a3, a2, 271f
                  addi         s1, a1, 680
                  la           a2, region_0+897 #start riscv_load_store_rand_instr_stream_1
                  xor          s2, tp, sp
                  xor          sp, t0, s6
                  sb           s11, 0(a2)
                  andi         t5, s11, 1891
                  lb           tp, -1(a2)
                  lbu          s9, -8(a2)
                  ori          a1, s1, 1641
                  srl          s8, t4, s10
                  lhu          s4, 3(a2)
                  nop
                  lh           a5, 5(a2)
                  lh           a7, -1(a2)
                  xori         s5, tp, -1863
                  or           s6, a7, t1
                  sb           sp, -10(a2)
                  xori         s6, t2, 1900
                  andi         s0, s1, -1
                  slt          gp, s0, a4
                  nop
                  and          s1, s1, s9
                  sb           s0, -10(a2)
                  lb           s1, 9(a2)
                  srai         s3, ra, 6
                  sra          s0, tp, a4
                  xor          t6, a1, s5
                  lb           a7, -3(a2)
                  sub          t5, a0, s4
                  srli         a5, s6, 11
                  sh           s4, 9(a2)
                  lbu          s5, 4(a2) #end riscv_load_store_rand_instr_stream_1
                  srl          a7, a3, s3
266:              blt          a6, t3, 269f
                  srl          t2, s5, s0
268:              sra          t6, tp, zero
269:              bge          s3, t5, 274f
                  slli         t3, s9, 29
271:              bltu         s7, zero, 272f
272:              slli         s1, s8, 7
                  slti         s8, t3, 226
274:              srl          s0, a4, s3
                  srli         s4, t6, 20
                  sll          a5, ra, t5
                  or           s3, t2, s7
                  bgeu         t5, a0, 283f
                  bgeu         t5, t4, 287f
                  beq          s8, a7, 295f
                  sll          tp, s8, t3
                  xori         s8, s6, -1737
283:              bgeu         s2, zero, 298f
                  addi         tp, s11, 569
                  bne          a3, s3, 295f
                  sll          s0, gp, s5
287:              slt          sp, a5, s3
                  sltiu        a4, a5, 1299
                  sltiu        zero, a3, 1004
                  nop
                  blt          t3, a0, 303f
                  sub          t6, s9, s5
                  sltiu        tp, t3, 1853
                  slli         a1, s4, 7
295:              slt          a1, s2, a7
                  addi         a2, t3, -265
                  bge          t6, ra, 298f
298:              bge          s2, t1, 317f
                  sltu         s7, a7, ra
                  bge          t3, a4, 303f
                  slti         a6, a7, -1242
                  bgeu         t4, a2, 304f
303:              sltu         t3, s9, t1
304:              addi         a1, a3, -416
                  sub          s2, gp, a2
                  xor          s11, s11, s3
                  sltiu        t1, t2, 786
                  slt          t5, s8, s8
                  xor          s7, s11, s0
                  xori         a6, a0, -1847
                  srai         s8, tp, 28
                  bltu         s0, ra, 320f
                  ori          s0, s8, 1784
                  bltu         s6, a4, 317f
                  bge          s7, sp, 320f
                  srl          s1, s4, t3
317:              bne          gp, sp, 318f
318:              auipc        zero, 213573
                  bgeu         s11, sp, 325f
320:              nop
                  add          s6, a1, sp
                  addi         s1, t2, 1191
                  sra          s0, s0, t2
                  sub          ra, s9, s7
325:              slli         s11, t4, 7
                  srl          a2, a1, s0
                  srai         a1, a3, 9
                  bne          a7, t2, 342f
                  ori          s1, s1, 1389
                  beq          a7, s4, 341f
                  nop
                  nop
                  xori         s11, a7, -729
                  sltu         t1, a5, zero
                  slli         t6, t5, 11
                  sra          a6, t0, s8
                  xori         ra, ra, -810
                  bltu         s1, s8, 354f
                  sltu         a1, t1, gp
                  nop
341:              nop
342:              nop
                  bltu         a5, s3, 363f
                  add          s0, tp, tp
                  bltu         gp, a6, 352f
                  sra          a6, gp, s4
                  sltu         s6, s5, a5
                  sub          a5, a5, tp
                  blt          s6, t1, 363f
                  srl          a6, t5, t2
                  nop
352:              bltu         a7, s9, 370f
                  bltu         t6, s3, 368f
354:              add          s3, t0, s4
                  auipc        s11, 434877
                  slli         s0, a3, 29
                  blt          t4, s2, 367f
                  slt          a1, t4, zero
                  ori          s1, s2, 1409
                  auipc        t1, 734679
                  slli         s10, tp, 3
                  sltu         t3, a2, s7
363:              sll          s10, ra, gp
                  andi         s6, a3, -1227
                  bne          a7, s8, 372f
                  slti         s2, a2, 676
367:              sltu         s8, t1, s8
368:              and          s6, s5, s5
                  sra          t2, ra, s1
370:              beq          a7, a1, 389f
                  lui          sp, 826108
372:              slti         t5, t4, 1866
                  srli         s8, a6, 26
                  add          zero, t3, tp
                  xori         a2, a1, 1835
                  srl          sp, a6, a4
                  addi         s0, s10, -220
                  sltiu        a6, sp, 1308
                  blt          s0, s0, 387f
                  add          s6, t1, zero
                  and          gp, t0, t1
                  xor          ra, s2, a1
                  slli         t2, a1, 10
                  add          s8, gp, t1
                  srl          s11, zero, s11
                  ori          gp, s1, 1130
387:              auipc        a7, 985851
                  and          a5, a2, s0
389:              slli         s5, gp, 5
                  bne          s10, s0, 395f
                  and          a5, t6, a0
                  xori         t3, s1, 176
                  srl          t2, a7, gp
                  addi         tp, s9, -635
395:              xori         a1, s7, 121
                  or           s11, a5, t4
                  srli         s5, s5, 11
                  sra          s7, t2, t5
                  slti         a0, t1, 1749
                  la           sp, region_1+480 #start riscv_load_store_rand_instr_stream_9
                  lb           s9, -10(sp)
                  lb           tp, -11(sp)
                  srai         zero, a4, 13
                  lh           t1, -6(sp)
                  sb           s1, -4(sp)
                  sb           s11, -14(sp)
                  lhu          s10, 16(sp)
                  lhu          tp, 6(sp)
                  lui          a7, 701806
                  lh           zero, -14(sp)
                  lbu          s9, 9(sp)
                  lui          t1, 213096
                  lb           s8, -9(sp)
                  sll          a2, t0, ra
                  sltiu        s11, a7, 1884
                  lb           a5, 7(sp)
                  sb           sp, -6(sp)
                  lui          a7, 419148
                  addi         t6, t6, 1597
                  lh           s9, 14(sp)
                  lbu          ra, -7(sp)
                  lh           gp, -10(sp)
                  sw           a6, 12(sp)
                  andi         a2, gp, -1963
                  lb           s1, -7(sp)
                  lbu          t6, 12(sp)
                  lbu          s0, -11(sp)
                  srai         a1, t0, 6
                  slli         gp, t0, 25
                  xor          t1, a7, t6
                  xor          s0, t5, s8
                  lb           a0, 15(sp)
                  lbu          a1, -9(sp)
                  lb           s7, 3(sp)
                  sll          s2, t2, s9
                  sh           s1, -10(sp)
                  sb           s6, 5(sp)
                  lb           a5, -13(sp)
                  sub          a2, a6, s0
                  lbu          s11, 13(sp)
                  sb           s5, -3(sp)
                  lh           s1, -2(sp) #end riscv_load_store_rand_instr_stream_9
                  sra          s5, a4, gp
                  blt          t3, t2, 402f
402:              andi         t1, s6, -1199
                  srai         gp, s7, 0
                  beq          a3, a0, 409f
                  ori          t5, a7, -1166
                  addi         t1, t0, 747
                  sra          tp, ra, ra
                  auipc        s10, 983800
409:              blt          t3, t6, 423f
                  or           s10, gp, a1
                  or           s2, a7, s9
                  auipc        s8, 845592
                  sra          a0, t4, a0
                  bge          s9, a0, 429f
                  xor          s0, zero, t5
                  ori          a5, t2, 46
                  slli         s7, s11, 28
                  slti         zero, t3, 1183
                  xor          a6, s6, s5
                  beq          a3, t1, 437f
                  auipc        a7, 120119
                  nop
423:              bgeu         zero, s1, 430f
                  slli         t2, t6, 17
                  sra          s3, a2, s4
                  beq          s0, a2, 432f
                  slt          s9, s8, a3
                  srl          s8, t2, t3
429:              auipc        s5, 568875
430:              bge          t1, sp, 432f
                  slti         t3, s9, -123
432:              srai         s2, s1, 17
                  sll          s4, s9, t1
                  nop
                  beq          t2, t3, 449f
                  bne          s8, s10, 439f
437:              srl          s9, sp, s5
                  addi         s9, t1, 1190
439:              bgeu         tp, s0, 451f
                  slli         s2, s2, 9
                  slti         s8, s10, -1800
                  slt          s0, gp, ra
                  srai         s3, a6, 9
                  lui          s3, 242943
                  srl          gp, a6, t0
                  srli         s6, s1, 22
                  slt          s3, s1, s0
                  or           a6, a1, t6
449:              xor          s3, s8, zero
                  ori          a2, s6, -1684
451:              blt          s5, ra, 454f
                  nop
                  or           zero, t5, a3
454:              lui          ra, 265502
                  and          t2, tp, ra
                  andi         t6, a1, -1025
                  addi         s10, a3, 1824
                  sub          sp, t4, s10
                  blt          t3, s9, 479f
                  slli         s10, s3, 21
                  lui          s3, 646555
                  slt          ra, t0, a6
                  bne          ra, t2, 479f
                  xori         gp, s2, 514
                  and          s10, a4, ra
                  andi         zero, a5, 1854
                  sltu         a4, t5, a5
                  slli         a6, gp, 2
                  xor          s9, a6, t1
                  la           sp, region_1+1330 #start riscv_load_store_rand_instr_stream_10
                  slli         a2, s0, 9
                  lb           a7, -521(sp)
                  lhu          s9, -152(sp)
                  sb           t3, -407(sp)
                  lbu          s9, 271(sp)
                  sltu         s3, a4, ra
                  sltu         a6, t6, a1
                  ori          s2, s11, 1117
                  lbu          a2, 187(sp)
                  slti         a5, ra, 1567
                  lui          t1, 427131
                  sb           a2, -661(sp)
                  add          s1, a5, zero
                  srli         a0, a4, 29
                  xori         ra, t5, -1227
                  sltiu        s11, t0, -1360
                  add          t1, gp, t4
                  lbu          s10, -334(sp)
                  sb           s8, -927(sp)
                  slti         tp, s5, -1023
                  add          a7, s1, t6
                  sltiu        tp, s7, 34
                  sll          s3, gp, t5
                  lb           a2, 30(sp)
                  slti         s5, sp, -138
                  xor          s1, gp, a6
                  sb           a5, -608(sp)
                  sb           s5, -879(sp)
                  lb           a4, -1193(sp)
                  slli         a4, s5, 21
                  sltiu        s2, t3, 1399
                  slli         tp, s5, 1
                  sb           a3, 481(sp)
                  lhu          s1, -1316(sp)
                  addi         a1, a1, -73
                  srai         t3, s9, 4
                  andi         s5, a3, 1328
                  sb           tp, -324(sp)
                  lbu          a7, -224(sp)
                  ori          a5, t0, 1780
                  lb           s1, -637(sp)
                  slli         a6, s10, 12
                  xori         a6, sp, -345
                  slli         t1, s9, 0
                  sb           a5, -263(sp)
                  lbu          s10, -1179(sp)
                  andi         a0, s3, -232
                  sltu         s4, a4, s11
                  lb           s7, 96(sp)
                  xori         a1, a2, 645
                  lb           a1, -411(sp)
                  sw           a7, 190(sp) #end riscv_load_store_rand_instr_stream_10
                  auipc        t1, 131791
                  slt          a5, a0, a4
                  add          s1, gp, s8
                  slt          t3, s6, a6
                  beq          t3, t4, 475f
475:              lui          s11, 713943
                  nop
                  lui          gp, 641163
                  add          gp, s2, t0
479:              blt          a4, s7, 497f
                  bgeu         gp, s1, 487f
                  auipc        s6, 26889
                  bgeu         s10, t2, 493f
                  bne          t5, s2, 484f
484:              bne          tp, s2, 503f
                  bltu         a1, s0, 493f
                  srl          t6, t4, t4
487:              addi         t2, a6, -444
                  addi         a1, s8, -1172
                  blt          a6, sp, 494f
                  slti         s7, s11, -60
                  sltiu        a1, t0, 759
                  blt          s10, t5, 500f
493:              srai         s3, t2, 10
494:              bge          a0, a1, 497f
                  sltu         s8, s10, t6
                  srai         s10, t5, 29
497:              andi         s10, a4, -61
                  nop
                  bltu         s4, zero, 516f
500:              slt          s3, s0, a0
                  ori          a2, s4, -690
                  beq          s2, t5, 507f
503:              beq          s1, s11, 510f
                  sltiu        s8, s2, 399
                  sll          a6, ra, sp
                  srai         s11, s8, 12
507:              bgeu         a2, s1, 513f
                  beq          t6, s2, 511f
                  sltu         t1, ra, s4
510:              xor          s0, a3, a4
511:              bne          s11, s11, 519f
                  sltu         a6, a7, s4
513:              or           s8, s6, t2
                  add          t1, s11, t2
                  andi         t2, t3, -606
516:              sltu         a6, tp, t1
                  xor          a0, zero, t2
                  or           a7, s1, s4
519:              bltu         t1, tp, 520f
520:              srl          ra, zero, zero
                  bne          t5, s9, 523f
                  sltiu        a1, a6, 1986
523:              bltu         s10, t5, 531f
                  or           a5, a1, a3
                  bne          s5, s6, 533f
                  srli         a5, s10, 20
                  bge          a7, tp, 547f
                  auipc        gp, 18281
                  andi         s1, a5, 1071
                  bge          s0, a4, 545f
531:              beq          t2, s7, 532f
532:              addi         sp, a5, 14
533:              addi         a0, a0, 2006
                  srli         t6, zero, 29
                  blt          a3, gp, 551f
                  xor          t1, s4, t4
                  nop
                  sra          s5, s0, a3
                  ori          a1, s0, -1517
                  bne          s3, a0, 543f
                  addi         tp, a3, -686
                  and          s2, s11, s9
543:              bgeu         s11, s4, 557f
                  or           s1, t0, a0
545:              srai         t2, t0, 16
                  ori          s5, a5, -539
547:              xori         s5, s6, 1746
                  add          t1, s9, t0
                  sltiu        s5, s3, 516
                  or           a0, a0, s5
551:              addi         s5, s5, 850
                  slt          s0, t6, a4
                  slt          gp, s7, s4
                  or           zero, t5, a6
                  slli         s9, t5, 25
                  srl          s3, ra, a2
557:              andi         s4, s9, 1002
                  slt          t2, a5, s7
                  nop
                  bgeu         s4, a5, 567f
                  sub          s6, s5, s8
                  blt          s9, a4, 567f
                  xor          s11, s10, zero
                  srl          s5, zero, a5
                  or           t5, s5, a6
                  bgeu         tp, t5, 585f
567:              andi         s10, t1, -483
                  bge          ra, s9, 573f
                  nop
                  sltu         s6, s10, s10
                  slli         s4, t0, 20
                  slli         a5, t0, 27
573:              sll          s8, a6, a0
                  bge          s1, s8, 584f
                  sra          t5, t4, zero
                  auipc        s7, 878972
                  andi         ra, a1, -959
                  and          s8, s6, a4
                  sra          s3, t4, tp
                  sltiu        s0, s6, -1921
                  slli         s9, s8, 2
                  xori         s8, t4, -509
                  nop
584:              srli         s9, t5, 1
585:              lui          s10, 228739
                  and          s4, s11, s0
                  and          t3, s5, t1
                  blt          s2, zero, 589f
589:              srl          ra, t4, s0
                  sra          zero, s4, s10
                  nop
                  nop
                  slti         s1, zero, -1785
                  xori         s4, a1, -1869
                  xor          sp, s7, a5
                  sra          s11, s5, s7
                  nop
                  slti         s7, a7, 777
                  slt          gp, s2, s10
                  or           a2, t4, zero
                  blt          s0, s11, 620f
                  addi         a7, t1, 71
                  srl          a7, a2, t2
                  sltu         a2, a3, tp
                  slli         s9, s8, 20
                  bne          s3, t0, 624f
                  and          a6, a2, t3
                  bge          a2, s9, 619f
                  nop
                  beq          a7, t0, 622f
                  srl          s9, a3, a7
                  bltu         s0, ra, 619f
                  blt          s1, tp, 627f
                  and          a1, t5, s2
                  andi         a0, t3, 1148
                  sra          a1, a4, t6
                  xor          s1, s2, t1
                  nop
619:              bge          t3, a5, 634f
620:              blt          s2, a4, 623f
                  and          a5, s0, t2
622:              sltu         a4, s3, s8
623:              beq          s9, a4, 634f
624:              slti         s11, a3, 572
                  srl          s11, t3, s9
                  beq          a2, s1, 641f
627:              add          t6, s7, sp
                  sra          t3, sp, t2
                  bne          tp, s7, 630f
630:              bltu         a7, zero, 638f
                  bltu         s7, s9, 632f
632:              lui          a1, 332054
                  sltiu        a6, s9, 1546
634:              xori         s10, s11, 860
                  and          a1, t1, s1
                  beq          t1, s2, 650f
                  bgeu         s10, t0, 643f
638:              sltiu        ra, a2, -407
                  and          s11, t0, t0
                  andi         s7, zero, -1856
641:              add          t5, a4, t4
                  bge          a7, s4, 643f
643:              xor          s2, t4, a0
                  and          t1, a5, a5
                  slli         a0, s4, 0
                  srai         s8, s0, 12
                  srl          t2, a3, t6
                  nop
                  bgeu         t6, zero, 659f
650:              bgeu         s0, ra, 655f
                  beq          gp, s1, 665f
                  auipc        s9, 246963
                  bltu         s2, gp, 665f
                  slli         a4, zero, 13
655:              srl          s11, s4, t3
                  sra          s8, a3, t3
                  xor          sp, a6, a2
                  xor          ra, s1, t1
659:              sub          s5, sp, t5
                  and          t5, a2, a2
                  bltu         t4, t6, 678f
                  srl          s2, s10, s8
                  lui          s2, 658646
                  auipc        s0, 788825
665:              or           t3, s2, t5
                  slli         a6, s1, 15
                  andi         tp, t3, 1988
                  srai         tp, s1, 8
                  lui          s9, 282470
                  addi         a6, s6, 1363
                  ori          s5, t1, 1090
                  bgeu         sp, s3, 674f
                  sll          t1, s2, s4
674:              sra          s9, zero, s7
                  bne          s0, t0, 683f
                  sll          a1, s9, s5
                  bge          ra, a5, 682f
678:              beq          s7, s1, 698f
                  andi         tp, s0, -1137
                  and          s6, a4, s3
                  lui          t3, 971656
682:              bge          a6, s3, 685f
683:              sub          zero, s0, a3
                  sra          a4, s8, t2
685:              xor          t3, gp, a7
                  bgeu         s7, a3, 691f
                  srai         s9, s2, 26
                  srl          s8, ra, ra
                  srli         s7, a5, 9
                  slli         t5, sp, 22
691:              auipc        tp, 259034
                  sltu         a6, a3, s7
                  sll          s11, a7, s11
                  xor          s7, a6, t4
                  and          s4, gp, t4
                  blt          a4, s9, 703f
                  srai         s5, a5, 28
698:              bne          zero, s1, 701f
                  addi         s11, t0, 1073
                  beq          t6, t6, 708f
701:              sltu         s9, t2, a1
                  slti         a1, t5, -538
703:              sub          s3, s8, t2
                  slli         t1, a1, 6
                  bge          t0, s8, 724f
                  beq          t6, a5, 721f
                  bgeu         s0, a3, 723f
708:              sub          a6, s8, s4
                  and          s11, tp, t1
                  beq          tp, s1, 713f
                  sub          t2, a4, gp
                  bltu         s10, s9, 730f
713:              slti         zero, t5, 1362
                  andi         s1, a7, 2041
                  sltiu        a7, s3, 1692
                  ori          tp, s6, 239
                  srl          a5, s10, t4
                  slli         s2, s4, 29
                  blt          t4, sp, 726f
                  srl          t3, zero, t5
721:              ori          a1, a2, 483
                  bltu         s10, s2, 741f
723:              or           s7, s9, s1
724:              bgeu         s2, t6, 731f
                  ori          sp, s11, 1182
726:              xori         gp, a4, 1188
                  blt          tp, s7, 732f
                  bgeu         t1, t3, 731f
                  andi         s7, s8, 1382
730:              add          a7, t4, zero
731:              xori         s7, t4, 1996
732:              bgeu         a0, t2, 748f
                  sll          a7, s7, t5
                  addi         t3, s8, -316
                  andi         a4, s3, -170
                  sra          t2, ra, t3
                  sltiu        s9, s2, 244
                  auipc        s4, 76653
                  and          tp, sp, s6
                  auipc        t6, 768033
741:              srai         s6, gp, 24
                  andi         s3, zero, 1894
                  sltiu        s0, t6, 1032
                  sltiu        s1, s5, 1889
                  bgeu         s9, s6, 757f
                  xor          a0, tp, gp
                  xori         s4, t2, -991
748:              lui          s6, 708292
                  addi         s10, s1, -314
                  slt          s7, gp, s1
                  and          s6, t2, s3
                  sub          ra, s8, t6
                  or           sp, a2, a4
                  sub          a0, a6, s2
                  beq          a1, a7, 760f
                  bltu         s5, s10, 757f
757:              and          t5, s10, sp
                  auipc        s7, 979158
                  slti         s11, t2, 1156
760:              sub          a0, zero, t3
                  andi         s3, gp, -387
                  srl          s3, zero, zero
                  beq          t6, a5, 771f
                  sltu         a0, s10, gp
                  xori         s0, s6, 1324
                  slli         a4, zero, 5
                  addi         s6, s5, -571
                  sltiu        sp, s7, 1660
                  srai         t6, zero, 0
                  sub          t6, sp, t3
771:              slli         tp, s1, 26
                  beq          s8, a7, 773f
773:              slti         t6, s2, -1565
                  lui          s5, 644256
                  ori          s8, s8, -1545
                  nop
                  bltu         a0, s11, 780f
                  bgeu         a2, s11, 786f
                  slt          a5, s10, t3
780:              sub          a4, sp, a6
                  sltiu        a4, a4, 1657
                  ori          gp, s8, 1315
                  andi         s0, ra, -1885
                  auipc        sp, 732548
                  sltiu        a5, t0, -918
786:              beq          s4, t4, 793f
                  blt          zero, t0, 801f
                  or           tp, t0, s3
                  ori          a4, t5, 632
                  sub          s2, s1, a6
                  ori          s8, ra, -306
                  beq          s6, t4, 799f
793:              slli         a2, ra, 5
                  srl          zero, a7, s10
                  and          t2, s0, tp
                  and          a2, s11, t0
                  and          s6, s8, s3
                  slti         a5, t3, -991
799:              sltiu        s10, t4, 1160
                  sub          a4, s5, s4
801:              ori          ra, a4, -734
                  slli         s5, ra, 26
                  srli         a6, a5, 2
                  add          s1, a1, s6
                  lui          a1, 163196
                  srl          a1, s4, a6
                  ori          a0, tp, -877
                  addi         s11, s5, 385
                  bge          ra, t3, 820f
                  nop
                  andi         s9, t1, 1980
                  beq          t3, s8, 831f
                  sll          s5, gp, t6
                  auipc        a5, 726912
                  bltu         t1, zero, 835f
                  slli         t1, s2, 11
                  sltiu        a0, t1, 127
                  slt          s9, s7, s4
                  bne          s3, s10, 834f
820:              and          sp, t4, s8
                  xor          s10, s8, tp
                  blt          tp, s3, 829f
                  add          a5, s7, a3
                  sltu         s0, s5, t1
                  xor          t2, s3, s10
                  add          t5, s4, s3
                  srl          a0, s9, s11
                  or           s3, a4, s10
829:              bgeu         s0, s2, 848f
                  slli         s0, a6, 18
831:              nop
                  srl          s5, t2, a2
                  lui          a7, 937220
834:              slli         s3, t2, 3
835:              sltiu        t5, t0, 137
                  blt          a4, s10, 839f
                  xori         a0, s5, 568
                  srl          a6, t0, a0
839:              nop
                  bge          a3, t1, 858f
                  and          a0, a6, t5
                  xor          a7, t0, a1
                  bne          s9, s5, 844f
844:              sub          s0, s5, s0
                  bgeu         a4, a2, 853f
                  andi         a7, s11, 407
                  nop
848:              beq          sp, s5, 854f
                  bltu         s11, t2, 851f
                  xori         ra, t5, -42
851:              xori         s4, a6, 285
                  blt          s1, a5, 857f
853:              srl          s11, t5, sp
854:              sltiu        s11, a6, 1255
                  bltu         s9, s4, 870f
                  blt          s9, t2, 873f
857:              sll          s5, t0, s0
858:              ori          a4, a7, -792
                  xor          s0, a2, a1
                  bge          a1, t3, 874f
                  bne          s2, s10, 871f
                  lui          s8, 702016
                  srai         t6, a7, 23
                  nop
                  bne          s7, s7, 880f
                  bltu         s6, s8, 885f
                  srai         a0, s3, 8
                  slt          s4, zero, a1
                  andi         a2, s9, 1347
870:              auipc        s1, 20217
871:              nop
                  auipc        a7, 511714
873:              andi         s4, s2, 1227
874:              sll          t1, t1, a2
                  lui          tp, 589645
                  lui          s0, 186852
                  sra          s0, s4, s6
                  srl          a5, s9, s3
                  bne          t1, s6, 886f
880:              sub          a6, s1, sp
                  addi         tp, s9, -766
                  add          zero, zero, ra
                  add          t3, a0, a4
                  xori         a0, a0, -643
885:              slti         t3, tp, 1518
886:              andi         s2, t5, -138
                  slli         a1, t0, 18
                  xori         t1, a3, 1797
                  sltiu        t1, t0, 1976
                  slti         gp, s4, 1832
                  bne          ra, s8, 896f
                  beq          s10, zero, 893f
893:              sltu         tp, t4, t0
                  nop
                  nop
896:              xori         t6, t3, 1905
                  bge          a4, t6, 905f
                  beq          s8, a3, 917f
                  sltiu        s4, s6, -260
                  sra          t3, t1, s0
                  ori          sp, t1, -1893
                  or           s3, s5, s10
                  auipc        s10, 1025359
                  srai         s11, s4, 7
905:              sra          gp, t4, s7
                  sub          a7, t0, sp
                  srl          s4, s3, a4
                  bgeu         s0, a5, 909f
909:              bltu         s8, t5, 910f
910:              bltu         ra, a7, 917f
                  xori         s7, t1, -256
                  slt          s2, t4, t5
                  slti         s3, s4, -480
                  srl          a4, s0, s6
                  blt          a3, a2, 933f
                  blt          a7, s9, 927f
917:              bne          a3, s2, 931f
                  sltiu        s11, t3, -1858
                  sub          s9, a4, s8
                  sltiu        zero, t1, 853
                  sltu         s10, gp, a7
                  slt          t5, ra, s7
                  andi         zero, s7, 797
                  slt          s9, s11, s5
                  beq          a1, a7, 937f
                  srli         s3, zero, 10
927:              sub          s4, a4, sp
                  sra          s11, s3, t0
                  bgeu         s3, t5, 932f
                  beq          t4, s8, 947f
931:              sll          a0, s9, a0
932:              or           s0, s2, t5
933:              addi         gp, s2, 1278
                  beq          s5, s11, 939f
                  slti         a2, t2, -530
                  xor          t2, a3, s9
937:              and          t5, a7, t2
                  xori         s9, s0, 87
939:              bltu         s2, s8, 946f
                  sltu         s0, s3, t4
                  xori         s3, s5, -1564
                  sub          t5, s6, a4
                  sll          tp, t3, t2
                  srl          t6, t3, ra
                  la           s2, region_0+1356 #start riscv_load_store_rand_instr_stream_7
                  lw           s7, 164(s2)
                  sb           s9, -125(s2)
                  addi         s10, a6, 1371
                  sltiu        s8, t3, 1909
                  lbu          t1, 144(s2)
                  or           s10, t1, s2
                  lb           gp, -89(s2)
                  sll          sp, t0, s4
                  or           t2, s10, t0
                  lbu          s0, -53(s2)
                  sb           gp, -21(s2)
                  lui          a4, 914177
                  srl          s3, gp, tp
                  lb           s3, -95(s2)
                  add          s7, s8, s6
                  sb           s1, 101(s2)
                  lb           t1, -234(s2)
                  sll          a2, t2, s6
                  xor          t2, s4, s7
                  addi         s5, s6, 1958
                  sub          sp, a2, s5
                  sltiu        s8, tp, -244
                  slli         t6, a2, 1
                  srli         t5, t5, 11
                  sb           s9, 163(s2)
                  lb           a7, 103(s2) #end riscv_load_store_rand_instr_stream_7
                  slt          gp, t1, tp
946:              slli         t2, t2, 12
947:              bltu         s9, t6, 957f
                  srai         a6, s11, 3
                  add          a5, t5, s1
                  andi         s10, tp, -730
                  and          t3, t3, t4
                  srli         a5, a7, 30
                  la           s8, region_0+1009 #start riscv_load_store_rand_instr_stream_5
                  sb           sp, 16(s8)
                  addi         s5, s7, -1401
                  sh           s7, 225(s8)
                  lb           s4, -52(s8)
                  lbu          t2, 153(s8)
                  sb           s0, 31(s8)
                  sb           zero, 185(s8)
                  add          s7, a5, s4
                  andi         s3, s4, -557
                  lbu          a0, 104(s8)
                  sub          t5, s2, t6
                  auipc        a5, 572609
                  lbu          s6, -140(s8)
                  sb           a6, 196(s8)
                  lb           t1, -149(s8)
                  sb           t6, -29(s8)
                  sb           s8, -64(s8)
                  lbu          a2, 105(s8)
                  slt          gp, s8, t0
                  lh           s7, -209(s8)
                  lb           s6, -9(s8)
                  and          a5, s11, ra
                  lbu          a7, -112(s8)
                  lbu          a5, -70(s8)
                  lbu          t2, 136(s8)
                  lw           a6, -61(s8)
                  addi         gp, s6, -644
                  sub          s4, s6, sp
                  lb           tp, 103(s8)
                  lb           s4, -192(s8)
                  sra          s10, s7, s0
                  sb           s8, 161(s8)
                  lb           a2, 186(s8)
                  lbu          gp, 74(s8) #end riscv_load_store_rand_instr_stream_5
                  addi         s8, tp, -408
                  add          s0, zero, s1
                  srai         a4, a1, 9
                  lui          tp, 197265
957:              bltu         s1, tp, 962f
                  xor          t6, a2, tp
                  srl          s4, a3, a6
                  auipc        a2, 350037
                  slt          s3, s11, s7
962:              nop
                  srl          s7, gp, t2
                  slt          t2, a3, s10
                  add          a1, s0, a2
                  ori          a7, t0, 118
                  auipc        sp, 779960
                  ori          s8, a4, -1440
                  sra          gp, a1, s4
                  lui          s7, 147462
                  lui          s5, 65357
                  sll          a5, a5, s9
                  andi         s0, a1, 1981
                  srl          a6, s10, s6
                  sub          s0, a6, t2
                  xor          s3, a3, t5
                  sll          t2, s4, t6
                  bne          s7, a3, 986f
                  srli         a4, t4, 23
                  or           a0, s5, zero
                  sll          t3, a1, a6
                  sltiu        ra, ra, 597
                  ori          t3, s7, -718
                  xor          s0, a1, s2
                  la           a0, region_0+170 #start riscv_load_store_rand_instr_stream_4
                  lbu          a6, 33(a0)
                  sb           s8, 22(a0)
                  sb           t6, -7(a0)
                  lb           s9, 9(a0)
                  sra          s2, a6, a5
                  lw           s2, -26(a0)
                  lb           t6, -4(a0)
                  xor          s11, t5, a5
                  lh           t1, 64(a0)
                  lb           t5, -9(a0)
                  slli         a7, s6, 29
                  and          t6, a4, s11
                  sltiu        t1, t0, 1117
                  srli         gp, s10, 1
                  sh           a0, 34(a0)
                  lbu          s8, 7(a0)
                  lhu          a6, 20(a0)
                  lw           s0, 62(a0)
                  ori          s3, a1, 2020
                  xor          a4, a6, gp
                  nop
                  sb           a1, -28(a0)
                  lbu          s11, -11(a0)
                  lbu          t2, 37(a0)
                  sb           s4, -64(a0)
                  lhu          sp, 28(a0)
                  xori         s4, t2, -300
                  lbu          s7, -45(a0) #end riscv_load_store_rand_instr_stream_4
                  srai         a2, t6, 31
986:              add          s10, ra, ra
                  or           s10, s7, a7
                  sra          s6, a2, s0
                  slti         zero, s3, 747
                  slti         a4, a6, 594
                  beq          t3, ra, 1005f
                  sltu         s2, s0, gp
                  auipc        a0, 805082
                  sltu         t3, s5, s1
                  andi         t1, a6, -404
                  nop
                  xor          s10, s4, gp
                  auipc        s5, 205411
                  sll          s0, t5, s4
                  sub          t2, t3, a5
                  andi         a0, t3, 1120
                  beq          a6, t6, 1005f
                  addi         gp, s2, -732
                  sltiu        t1, a4, -1064
1005:             sll          t2, t5, ra
                  addi         a5, tp, -1097
                  sltiu        s3, t3, 1094
                  lui          t5, 111439
                  srl          s7, a5, ra
                  ori          sp, s8, -247
                  xori         t2, ra, 970
                  sub          s6, t4, a2
                  slt          s7, a4, s6
                  sltiu        s1, s8, -1128
                  addi         a4, ra, -875
                  and          s8, a6, s7
                  or           ra, s0, s0
                  nop
                  andi         a4, ra, 61
                  sltu         s2, s8, a4
                  slli         s5, s3, 16
                  bgeu         t5, s11, 1038f
                  xor          a1, a5, t2
                  auipc        s8, 49734
                  sltu         tp, s3, s2
                  srli         gp, t2, 10
                  sll          s3, t6, a6
                  auipc        s8, 96477
                  bgeu         s1, s9, 1037f
                  xor          a5, a5, tp
                  bgeu         zero, t2, 1051f
                  bge          t5, a3, 1047f
                  slli         s10, t3, 18
                  blt          s5, s2, 1036f
                  nop
1036:             add          a1, a2, t3
1037:             srl          s0, zero, a4
1038:             add          s5, a0, t2
                  andi         t1, ra, 1817
                  bge          t4, s4, 1043f
                  and          s1, t4, a2
                  blt          a4, a5, 1048f
1043:             xori         s5, a7, -805
                  or           a4, a3, s0
                  auipc        s11, 169745
                  srai         a4, s9, 25
1047:             slt          a5, tp, t1
1048:             auipc        s3, 280793
                  lui          t6, 922126
                  ori          t6, a7, 860
1051:             bltu         s0, zero, 1056f
                  srli         t1, a0, 5
                  ori          a5, s6, 1374
                  beq          t4, a7, 1069f
                  sra          a5, s1, a2
1056:             ori          s1, s8, 557
                  nop
                  auipc        t1, 967832
                  ori          a1, ra, -425
                  sltu         tp, a4, s11
                  ori          ra, zero, -1754
                  add          s8, t4, t2
                  addi         t5, tp, -1710
                  beq          t4, a3, 1067f
                  xori         t5, s7, 1007
                  xor          t1, s7, a0
1067:             beq          sp, s4, 1086f
                  sub          tp, s4, t4
1069:             add          s11, s6, s5
                  bne          a0, sp, 1076f
                  auipc        s8, 132275
                  sltu         zero, t1, a3
                  ori          gp, sp, -1311
                  bge          s10, a3, 1090f
                  slt          a0, s1, s8
1076:             slt          s2, t4, t1
                  bgeu         t2, t5, 1082f
                  slt          t3, sp, t3
                  auipc        t2, 63177
                  beq          gp, a7, 1083f
                  sll          s3, s2, a0
1082:             ori          a5, s11, -1192
1083:             sub          sp, a1, gp
                  sltu         s11, a0, gp
                  blt          t4, s11, 1095f
1086:             add          a4, t3, s0
                  addi         a2, s11, -399
                  bltu         sp, t5, 1089f
1089:             blt          ra, a3, 1100f
1090:             slti         tp, a5, -975
                  bgeu         s11, t4, 1094f
                  nop
                  beq          s6, t1, 1107f
1094:             bgeu         s0, a3, 1114f
1095:             slt          t1, s2, a2
                  bne          zero, s3, 1104f
                  slti         s4, a0, 884
                  add          s2, a2, a6
                  slt          a4, t6, a1
1100:             auipc        a6, 513941
                  bge          tp, a3, 1108f
                  xor          t2, s4, t5
                  lui          a0, 356104
1104:             andi         a1, s10, -1336
                  sltiu        s5, s8, -1128
                  or           a5, t1, a0
1107:             bltu         s2, s10, 1108f
1108:             slli         tp, t3, 14
                  auipc        a7, 997020
                  auipc        t5, 831367
                  sra          tp, ra, a3
                  xori         s1, t0, -583
                  srl          s2, s10, t1
1114:             auipc        s8, 982204
                  sra          a7, t4, a1
                  bltu         a3, s0, 1118f
                  xori         s7, s4, 1416
1118:             sra          s9, gp, tp
                  andi         a7, sp, -441
                  auipc        s9, 112392
                  or           t3, sp, s10
                  slt          t2, a5, t4
                  srli         tp, s6, 24
                  auipc        gp, 9846
                  lui          a5, 607517
                  srl          tp, s0, s11
                  and          a0, a7, a4
                  sll          s3, t0, s5
                  srli         s2, s1, 19
                  ori          s9, t1, 690
                  xori         t5, t3, -1474
                  sra          s7, a1, s7
                  xori         s0, t4, -311
                  and          t5, a2, s6
                  sub          a7, a0, t2
                  srli         s1, sp, 13
                  bgeu         gp, s3, 1144f
                  bne          s0, ra, 1157f
                  blt          t0, a2, 1156f
                  bltu         s3, s6, 1145f
                  xor          a7, s11, t6
                  add          s9, t4, t3
                  sra          tp, s9, tp
1144:             srli         ra, tp, 26
1145:             slti         ra, s0, -482
                  sub          s11, a3, a2
                  blt          s8, a2, 1165f
                  blt          t0, s5, 1163f
                  srai         s8, a5, 25
                  sltu         s10, a1, s1
                  bltu         a3, sp, 1159f
                  or           s11, s0, t1
                  sltiu        t2, t4, -786
                  srl          s11, t6, tp
                  blt          s9, s6, 1167f
1156:             slli         s9, s0, 7
1157:             ori          s1, t4, 1268
                  addi         s8, s7, 1547
1159:             slli         zero, gp, 12
                  ori          s8, t4, -895
                  nop
                  add          s10, a2, a4
1163:             ori          s5, s3, -1248
                  bgeu         s3, t1, 1171f
1165:             srai         s9, s10, 8
                  bgeu         ra, t6, 1167f
1167:             bge          t0, a6, 1175f
                  sub          t2, t0, s10
                  sll          s6, s10, a5
                  bge          t5, a2, 1184f
1171:             srai         s7, a6, 21
                  srli         t1, a6, 12
                  srli         a5, tp, 23
                  xor          s4, tp, t6
1175:             add          s4, a2, t5
                  sltu         s0, s8, s7
                  sll          tp, a4, a0
                  blt          s8, t2, 1184f
                  sub          s10, a3, s10
                  bltu         a6, s3, 1196f
                  slti         a1, a0, -1391
                  sra          s10, t3, t1
                  beq          zero, a6, 1198f
1184:             srai         sp, s1, 29
                  xor          s3, s2, a6
                  beq          s8, a4, 1193f
                  srli         s3, s6, 2
                  xori         t6, s3, 488
                  beq          a4, s2, 1192f
                  nop
                  sub          t2, s5, ra
1192:             slti         a1, t0, -733
1193:             sub          s5, s8, s3
                  addi         s9, a3, 1969
                  auipc        s1, 18324
1196:             slli         a7, ra, 19
                  ori          t5, zero, -1821
1198:             or           t5, a0, tp
                  srl          s7, t1, a7
                  blt          t4, t1, 1212f
                  andi         t1, s4, 637
                  and          sp, a6, s8
                  xor          s7, a5, t5
                  auipc        tp, 733733
                  srl          s0, t2, a6
                  beq          t0, a3, 1211f
                  xori         a4, s3, 941
                  xor          a4, s2, t6
                  bgeu         s3, tp, 1228f
                  or           s2, a7, t4
1211:             xor          t3, a1, t5
1212:             bge          a7, sp, 1231f
                  bgeu         tp, t2, 1224f
                  srai         sp, a0, 29
                  slli         t6, a7, 4
                  xori         s8, s11, -965
                  bgeu         s5, s1, 1219f
                  srai         t2, s7, 9
1219:             add          s0, s8, s9
                  blt          sp, t1, 1237f
                  bge          t3, a3, 1222f
1222:             slti         s0, s10, 648
                  sub          s3, t1, ra
1224:             bgeu         s1, a2, 1231f
                  slli         a0, a2, 14
                  slti         s8, s9, -362
                  sltu         tp, t5, a6
1228:             bne          s8, sp, 1233f
                  srai         s10, a1, 14
                  or           gp, s11, s7
1231:             slt          gp, s8, s10
                  bgeu         tp, s8, 1235f
1233:             add          a2, s9, s5
                  xor          s3, a5, s5
1235:             bgeu         sp, s2, 1236f
1236:             bgeu         s6, a6, 1244f
1237:             xor          gp, a1, a4
                  sll          t5, t4, s3
                  sll          s8, s9, s5
                  nop
                  bge          gp, s5, 1259f
                  srai         a5, t3, 28
                  nop
1244:             andi         s3, s6, -112
                  andi         tp, gp, -766
                  bge          t4, gp, 1254f
                  xori         s0, s10, 896
                  nop
                  add          s8, a5, s2
                  sltiu        s6, t3, 1208
                  ori          t6, t6, 1136
                  srl          s5, s0, s1
                  sub          a6, t2, t3
1254:             sra          s9, t5, a0
                  add          s5, s9, s5
                  sra          tp, a3, s9
                  bgeu         a5, t3, 1271f
                  nop
1259:             srl          t3, t0, t6
                  bgeu         s4, t4, 1275f
                  slli         s4, t6, 24
                  slt          tp, t1, s11
                  xor          s0, a0, t6
                  addi         s6, zero, -1834
                  bltu         t2, s10, 1266f
1266:             xor          a7, s5, zero
                  sltiu        s6, tp, 929
                  nop
                  or           s2, tp, s2
                  sra          a0, a3, t5
1271:             xor          s11, sp, t2
                  ori          a5, a6, 204
                  bltu         s2, ra, 1280f
                  slti         tp, tp, 1234
1275:             bgeu         a3, s2, 1289f
                  bltu         a3, a0, 1281f
                  srl          s7, a5, a0
                  srl          a6, a5, s5
                  auipc        s3, 426728
1280:             blt          a2, a0, 1283f
1281:             add          t2, s9, gp
                  srli         tp, a1, 0
1283:             srai         t2, gp, 25
                  bge          t0, t4, 1294f
                  andi         s2, a6, 1994
                  andi         s4, s8, -1620
                  bgeu         s11, t6, 1295f
                  add          s10, zero, a5
1289:             slt          a2, t2, a0
                  bltu         a4, s0, 1310f
                  sltiu        t5, gp, 225
                  lui          a1, 613978
                  sltiu        s11, s3, 676
1294:             xori         s3, t2, 1470
1295:             srai         sp, t4, 5
                  bne          tp, s2, 1306f
                  sub          s1, t3, ra
                  sltu         a5, s11, s0
                  srl          a1, a1, t0
                  xori         s8, s6, 370
                  xori         s7, a6, 555
                  xor          t5, s3, s8
                  slli         a7, s1, 7
                  sltiu        s2, s11, -849
                  sra          a5, zero, a4
1306:             bgeu         s11, a1, 1321f
                  slti         tp, sp, 1154
                  lui          s0, 292133
                  srl          sp, s3, sp
1310:             slti         s9, s6, 1308
                  andi         gp, a4, 1433
                  slli         a4, s6, 0
                  sra          t2, s8, s8
                  nop
                  xori         a7, t0, -1548
                  slli         s3, a7, 24
                  slti         s2, a0, -1719
                  andi         a1, t0, 16
                  blt          t3, s11, 1337f
                  xor          s4, s10, s1
1321:             addi         s3, t3, -1324
                  andi         s10, s4, 673
                  beq          s0, s6, 1331f
                  srl          gp, s10, a5
                  sra          s6, a3, s4
                  add          a1, t2, t0
                  xori         a0, t1, -1843
                  bge          a4, s1, 1343f
                  blt          s11, a4, 1337f
                  lui          tp, 697450
1331:             xor          s0, t6, t5
                  sra          tp, a6, t3
                  andi         tp, s5, -1880
                  srai         s0, a6, 23
                  andi         s9, s0, 2038
                  sll          t5, sp, t3
1337:             andi         ra, a3, 1041
                  auipc        t2, 349606
                  auipc        gp, 195215
                  srai         t6, a5, 9
                  bgeu         a7, s8, 1348f
                  slti         a1, s0, -623
1343:             sll          a2, gp, t1
                  slti         s1, t6, 103
                  beq          a7, a5, 1365f
                  srli         s8, s1, 16
                  xori         zero, a7, 919
1348:             addi         t6, t5, 1707
                  xori         s8, t3, 494
                  add          tp, a3, s6
                  bne          s11, t2, 1365f
                  bgeu         s4, s3, 1366f
                  and          a4, s7, t5
                  auipc        zero, 1043377
                  sll          s8, s1, ra
                  lui          s7, 299207
                  srli         s0, s11, 19
                  bne          t1, gp, 1364f
                  srl          s8, t0, tp
                  bge          a3, t5, 1362f
                  bltu         s0, a1, 1362f
1362:             nop
                  and          tp, s2, gp
1364:             blt          s7, t1, 1369f
1365:             sra          s7, a2, t3
1366:             add          t3, s9, t4
                  add          s6, s1, a0
                  beq          a2, a2, 1384f
1369:             bge          gp, s7, 1377f
                  addi         s8, a5, -331
                  slli         tp, s2, 28
                  beq          s4, ra, 1377f
                  sub          gp, s3, s9
                  bltu         a1, sp, 1375f
1375:             lui          gp, 495182
                  auipc        t6, 493182
1377:             addi         t1, gp, 313
                  add          a1, s10, a2
                  add          a1, s0, s6
                  sub          s3, t0, s10
                  and          a4, s8, sp
                  xori         a6, s11, -1529
                  sltiu        gp, a4, 843
1384:             nop
                  add          t1, s6, s1
                  bne          a5, a0, 1393f
                  sltu         a1, a2, gp
                  srai         s2, t5, 8
                  xori         a4, s1, -588
                  andi         s9, s8, 931
                  sub          a7, t0, a7
                  bltu         s7, t2, 1409f
1393:             lui          a2, 181987
                  add          t1, sp, s2
                  bge          s1, a1, 1414f
                  blt          a3, sp, 1407f
                  lui          a4, 293943
                  and          a4, t1, s4
                  auipc        t5, 575024
                  andi         s10, s4, 1785
                  addi         t2, ra, -1636
                  auipc        s4, 874468
                  slt          a0, t0, s5
                  sra          ra, t1, t6
                  lui          s10, 1033516
                  slt          s4, s2, t5
1407:             add          s5, a6, a0
                  nop
1409:             andi         a7, a4, 306
                  srl          tp, s6, ra
                  sra          gp, a7, s8
                  bgeu         s0, s3, 1424f
                  addi         s6, s3, -238
1414:             add          s6, a5, a6
                  ori          s9, s0, 1128
                  ori          a1, a0, -1213
                  sub          a0, a5, s0
                  blt          s1, a4, 1421f
                  auipc        s6, 220243
                  and          ra, t5, s8
1421:             bne          t6, s2, 1424f
                  srai         t1, t5, 24
                  slti         s3, a7, -403
1424:             and          s3, s11, s1
                  sll          sp, gp, s1
                  auipc        s1, 457542
                  blt          t1, s0, 1432f
                  nop
                  lui          a4, 790168
                  slti         a1, a2, -1328
                  slli         s11, a1, 24
1432:             auipc        s10, 117846
                  sra          s9, s4, a7
                  srl          ra, a6, a3
                  ori          a2, a5, -1272
                  xor          a0, a1, t4
                  bge          t4, ra, 1438f
1438:             bgeu         a2, t6, 1457f
                  nop
                  xori         s7, s7, 176
                  bne          s11, s3, 1448f
                  srl          s1, t4, a7
                  and          a1, ra, t2
                  xor          a1, a0, s1
                  sll          t1, a0, t3
                  sll          t1, a1, a2
                  slti         s0, s0, -133
1448:             bge          ra, t6, 1451f
                  sll          t6, t1, ra
                  bltu         s2, a6, 1460f
1451:             blt          t0, t6, 1466f
                  xori         s3, t2, 1528
                  lui          s8, 851644
                  andi         a7, t1, 1693
                  slt          s9, a1, s10
                  sll          ra, gp, s3
1457:             beq          s2, s0, 1462f
                  nop
                  sll          zero, s11, a4
1460:             bgeu         t1, s1, 1474f
                  bne          s0, t6, 1480f
1462:             sll          s0, t4, a4
                  or           s1, a6, s11
                  xor          s8, a7, a5
                  xor          s6, a0, a6
1466:             bne          a1, t4, 1471f
                  xori         ra, s1, -1655
                  srli         s8, gp, 17
                  addi         s11, s2, -1129
                  auipc        sp, 892608
1471:             slli         t6, a3, 14
                  add          a4, tp, sp
                  srai         a1, s11, 29
1474:             bgeu         s4, s10, 1476f
                  bge          s1, s2, 1481f
1476:             and          a1, a2, s10
                  srai         s5, s10, 4
                  srl          t6, a6, t0
                  xor          zero, s10, a0
1480:             slli         s0, s0, 24
1481:             add          tp, s10, t0
                  srl          a6, zero, s6
                  srl          a4, s2, t5
                  srli         zero, s0, 13
                  bgeu         t1, t2, 1493f
                  srai         t6, s8, 11
                  bltu         s10, s10, 1503f
                  auipc        s9, 939126
                  bne          s11, s2, 1497f
                  bgeu         s3, s4, 1505f
                  slli         tp, s3, 15
                  and          gp, a7, s10
1493:             sub          sp, gp, gp
                  bgeu         s5, s7, 1506f
                  lui          gp, 156572
                  blt          tp, a2, 1516f
1497:             xori         t2, a7, 1839
                  bge          s10, a1, 1505f
                  lui          s1, 264901
                  xor          a6, s3, t0
                  slli         t5, a5, 25
                  sll          sp, a5, s4
1503:             andi         a5, ra, 1403
                  bge          gp, s6, 1511f
1505:             sll          gp, gp, s10
1506:             and          a5, t3, s1
                  slli         a1, tp, 24
                  auipc        gp, 962784
                  add          a7, s10, a0
                  slti         t2, s10, 1257
1511:             srli         a1, zero, 21
                  slt          t2, t2, s1
                  bne          s7, s1, 1520f
                  blt          a4, s8, 1519f
                  srli         t5, s7, 15
1516:             slti         s10, ra, -172
                  or           a7, t4, t6
                  beq          a1, s11, 1519f
1519:             lui          s6, 760905
1520:             srl          s11, s8, s8
                  and          t2, s6, zero
                  srl          s8, tp, s3
                  bge          s11, s4, 1524f
1524:             sltu         s9, zero, sp
                  bge          gp, s9, 1529f
                  and          a7, a5, t6
                  bne          t1, t4, 1529f
                  slli         t1, t2, 11
1529:             xor          s7, s1, a6
                  srli         a7, s0, 26
                  nop
                  sra          t6, s1, s3
                  sra          s10, s5, a4
                  andi         s9, a7, 748
                  addi         t3, s4, 1904
                  lw           ra, 4(a3)
                  slt          s10, a6, ra
                  addi         a3, a3, 36
                  xor          s5, zero, s11
                  andi         t1, t5, 1770
1985:             addi x16, x1, 0
1985:             jalr x16, x16, 0
sub_8:            srai         t6, a6, 9
                  nop
                  addi         a3, a3, -52
                  sw           ra, 4(a3)
                  sra          s7, gp, s9
                  or           tp, s1, gp
                  sltiu        s9, a1, -243
                  sltiu        a2, a1, 1048
                  slt          tp, a0, s8
                  la           a1, region_0+372 #start riscv_load_store_rand_instr_stream_1
                  lb           zero, -2(a1)
                  or           s7, s9, s7
                  srai         s8, s11, 12
                  sb           s7, 5(a1)
                  nop
                  lw           t5, -8(a1)
                  lbu          s7, -7(a1)
                  sh           t5, 6(a1)
                  auipc        t1, 32115
                  sltu         s5, s1, a1
                  lbu          gp, 3(a1)
                  andi         t2, zero, 800
                  lb           a5, -1(a1)
                  slt          s2, s5, s11
                  nop
                  lb           s10, -9(a1)
                  lbu          s8, -2(a1)
                  addi         s10, t5, -1823
                  xori         s5, a2, -186
                  lhu          a6, -16(a1)
                  lb           s0, -15(a1)
                  lb           a6, 14(a1)
                  lhu          zero, -6(a1)
                  lb           s3, -3(a1)
                  sub          s11, a3, a3
                  srai         tp, sp, 31
                  auipc        t6, 556980
                  lw           t6, -4(a1)
                  sb           t5, 2(a1)
                  lb           a7, 7(a1)
                  sb           s9, 1(a1)
                  lb           s6, -13(a1)
                  sb           t2, 7(a1)
                  and          a4, s9, s6
                  slti         a4, t3, 463
                  lbu          s11, 1(a1)
                  lb           a4, -13(a1)
                  sll          t1, t3, sp
                  lb           t2, -7(a1)
                  sb           ra, 13(a1)
                  lhu          a2, 10(a1)
                  lbu          a5, 16(a1)
                  lb           s7, -10(a1) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_0+195 #start riscv_load_store_rand_instr_stream_3
                  srai         s0, t4, 7
                  sra          s8, gp, t2
                  lbu          gp, -36(a7)
                  srli         s4, s9, 11
                  slti         zero, zero, -396
                  lb           s1, 34(a7)
                  sltiu        s7, s10, 1931
                  srli         a0, a2, 8
                  slti         tp, t4, 162
                  sltiu        a6, tp, 1922
                  lb           zero, 35(a7)
                  srl          ra, a5, s9
                  sb           a2, -6(a7)
                  addi         s10, s1, -293
                  lb           sp, -4(a7)
                  lbu          a0, 50(a7)
                  sra          a2, t4, a0
                  auipc        a5, 169711
                  lbu          a4, -14(a7)
                  sra          zero, sp, t2
                  sh           a3, -57(a7)
                  sb           a1, -29(a7)
                  sb           a5, 3(a7)
                  lb           tp, -12(a7)
                  add          a5, tp, s2
                  sltu         t6, s5, s1
                  addi         t3, s10, 1726
                  sub          t3, t2, t2
                  lb           t6, 32(a7)
                  srl          a2, s8, a1
                  lbu          s6, -46(a7)
                  addi         s7, t0, 1383
                  srai         gp, s9, 17
                  sltu         a4, sp, tp
                  sb           a4, 51(a7)
                  slt          s1, s3, sp
                  sh           s0, 55(a7)
                  lhu          s8, 39(a7)
                  xor          s3, t0, s8
                  lbu          s7, 13(a7)
                  lbu          s3, 38(a7)
                  lbu          s10, 56(a7)
                  nop
                  auipc        s6, 755058
                  sb           ra, 42(a7)
                  lb           tp, -33(a7)
                  lw           a6, -15(a7)
                  sb           s2, 4(a7)
                  lh           t1, -35(a7)
                  or           ra, t5, a7
                  slli         t5, s3, 2
                  lb           s3, -41(a7) #end riscv_load_store_rand_instr_stream_3
                  la           a1, region_1+1447 #start riscv_load_store_rand_instr_stream_4
                  lui          s2, 18203
                  sltu         t5, t2, s10
                  lbu          s0, -36(a1)
                  lb           s1, 6(a1)
                  lbu          t6, -3(a1)
                  sltu         t1, s6, s5
                  lb           s11, -20(a1)
                  sb           sp, -8(a1)
                  sh           s11, 39(a1)
                  sll          a5, sp, s5
                  lb           s2, -54(a1)
                  auipc        a7, 445633
                  lb           t5, 14(a1)
                  sb           s8, 32(a1)
                  lbu          tp, -52(a1)
                  sltiu        s1, a1, 765
                  lh           t3, 37(a1)
                  ori          t3, t0, 426
                  andi         s2, s5, 1193
                  srai         s9, s8, 24
                  lb           s0, -14(a1)
                  lb           s11, 58(a1)
                  lbu          s4, -17(a1)
                  add          s10, a2, t6
                  lh           a4, -5(a1)
                  lbu          s0, 55(a1)
                  slli         t2, s8, 30
                  lb           a6, -26(a1)
                  addi         s4, a7, 611
                  sb           t4, -30(a1)
                  slt          s6, t0, a3
                  sb           a4, -9(a1)
                  sb           a3, 35(a1) #end riscv_load_store_rand_instr_stream_4
                  la           ra, region_0+1142 #start riscv_load_store_rand_instr_stream_0
                  or           s8, a6, a2
                  srli         s2, a3, 2
                  nop
                  andi         s2, a7, 547
                  srl          s4, a4, s7
                  lhu          s4, -212(ra)
                  lhu          s11, -942(ra)
                  sb           gp, 762(ra)
                  lb           s4, 313(ra)
                  sb           s5, 207(ra)
                  nop
                  lbu          s3, 41(ra)
                  addi         a0, s2, 1544
                  lb           t1, 188(ra)
                  slt          tp, s6, s8
                  lh           a2, -1004(ra)
                  lb           s7, -853(ra)
                  sb           a3, -989(ra)
                  lhu          a5, -902(ra)
                  lbu          t5, -113(ra)
                  lb           s2, -48(ra)
                  sra          a1, t6, s5
                  sltu         t1, s8, s9
                  srli         a2, zero, 30
                  sra          s7, sp, zero
                  sh           s0, -860(ra)
                  srl          s1, s9, ra
                  slt          a4, s9, s6
                  lb           s9, 641(ra)
                  slti         t6, s4, -1116
                  slt          s5, s5, s8
                  srai         a1, sp, 27
                  xori         s3, gp, -1512
                  srli         s10, t0, 28
                  srai         a6, a1, 19
                  sra          gp, gp, s11
                  nop
                  sra          a6, a5, sp
                  lw           a0, 854(ra)
                  sh           s1, -1128(ra)
                  srli         a0, s9, 16
                  andi         zero, s8, -1049
                  xor          s4, s4, s6
                  and          s6, gp, a0
                  sra          s6, tp, a1
                  sb           s8, -871(ra) #end riscv_load_store_rand_instr_stream_0
                  bgeu         s4, s3, 8f
                  nop
                  sltiu        a2, t4, 1446
                  lui          t1, 769191
                  addi         s3, s6, 1437
                  srli         s7, s8, 10
                  and          gp, s6, t5
                  srl          t5, a4, s1
8:                bge          s2, s7, 22f
                  lui          tp, 979534
                  srai         zero, tp, 22
                  andi         a0, a7, 820
                  xori         a1, t2, -1750
                  slli         a4, zero, 14
                  srai         a4, s11, 0
                  blt          s6, s10, 24f
                  xori         gp, s11, 846
                  bne          zero, gp, 32f
                  srai         t1, s7, 1
                  slti         s4, a0, -539
                  srai         t2, t1, 27
                  sltiu        s8, t2, -79
22:               auipc        s8, 215000
                  nop
24:               nop
                  sltiu        gp, gp, 2006
                  srl          s2, a3, s5
                  xor          gp, s11, t4
                  addi         t2, s7, 1141
                  blt          t0, a5, 34f
                  srl          tp, s6, a5
                  blt          gp, a3, 51f
32:               or           a5, t5, t5
                  beq          ra, a5, 39f
34:               slti         tp, t0, 969
                  andi         s6, s3, 1617
                  lui          a5, 162761
                  srai         tp, ra, 20
                  or           t2, zero, t6
39:               nop
                  auipc        s0, 887328
                  beq          s6, s0, 47f
                  addi         ra, t2, 111
                  and          a0, a5, a3
                  bge          s6, a6, 47f
                  bge          t4, s10, 56f
                  auipc        s8, 517199
47:               andi         a1, a1, 1173
                  sltiu        s3, s9, -708
                  ori          a5, a2, 1171
                  srli         s7, zero, 25
51:               nop
                  sll          s9, t3, ra
                  bltu         s8, s1, 64f
                  auipc        s9, 527235
                  sltu         a1, t1, s3
56:               sll          a4, a4, a5
                  addi         s5, t4, -1776
                  auipc        sp, 937714
                  slti         zero, t6, -1654
                  ori          a0, s8, -549
                  slt          s11, s1, s0
                  bne          s5, s3, 66f
                  bltu         a2, a1, 64f
64:               and          a2, t5, t5
                  sll          s11, s5, t0
66:               bgeu         s5, a1, 78f
                  add          ra, s4, s0
                  add          s0, s0, zero
                  addi         s4, t3, 82
                  xor          s0, a5, a2
                  srai         s8, zero, 12
                  or           a5, zero, gp
                  xori         a5, s6, 745
                  srai         t2, s3, 1
                  nop
                  slti         t5, a4, -1066
                  blt          t6, s8, 96f
78:               srai         a5, a1, 13
                  bne          s6, t6, 96f
                  srli         s10, a0, 23
                  lui          t2, 1000830
                  blt          s4, s3, 93f
                  auipc        s3, 93219
                  add          ra, gp, s10
                  srai         s1, s3, 17
                  sltiu        tp, a5, 1071
                  sll          s9, gp, sp
                  auipc        a5, 662429
                  xor          s11, sp, s0
                  sltu         a5, a5, zero
                  srl          s8, s7, ra
                  bge          s5, a4, 98f
93:               sra          s3, sp, s3
                  la           sp, region_1+291 #start riscv_load_store_rand_instr_stream_2
                  sb           a1, -8(sp)
                  lb           a2, -14(sp)
                  add          s3, t3, t3
                  sb           s7, 11(sp)
                  sb           ra, 7(sp)
                  lb           gp, 6(sp)
                  ori          s9, s10, 1235
                  lhu          t2, 11(sp)
                  lb           a6, 2(sp)
                  xori         t2, s1, -940
                  lbu          s7, -6(sp)
                  lh           s9, -5(sp)
                  lh           a1, 3(sp)
                  lbu          s0, 14(sp)
                  sb           s4, -12(sp)
                  lbu          a4, -10(sp)
                  lbu          s2, 11(sp)
                  lbu          a7, 16(sp)
                  add          s4, s5, s8
                  lb           a4, 8(sp)
                  lb           s6, 15(sp)
                  nop
                  xor          s4, a5, ra
                  sll          t3, t6, s9
                  sltu         s8, s5, gp
                  and          s10, a6, t4
                  lw           s9, -15(sp)
                  lb           s11, -10(sp)
                  sw           s4, 5(sp)
                  srai         a6, a0, 19
                  sb           t5, 1(sp)
                  nop
                  lb           a2, 4(sp)
                  sb           zero, -8(sp)
                  lbu          tp, 8(sp)
                  sltiu        s3, a0, -1740
                  lbu          a4, -1(sp)
                  lbu          s4, -5(sp)
                  lhu          a6, -1(sp)
                  lb           a2, 16(sp)
                  and          s5, t4, s3
                  lbu          s7, 16(sp)
                  lbu          s7, -8(sp) #end riscv_load_store_rand_instr_stream_2
                  sltiu        t5, a7, 1377
                  sra          s11, a4, s7
96:               ori          s2, s2, -26
                  ori          t5, t3, 1127
98:               sra          s3, t2, a6
                  sltiu        a7, gp, -850
                  sra          gp, a5, t6
                  sltu         a2, a1, s7
                  auipc        gp, 807851
                  lui          t2, 1001540
                  lui          s9, 121381
                  xor          tp, s4, s11
                  and          s10, zero, s9
                  srli         s7, t3, 9
                  xori         t2, a5, -1933
                  sub          s8, s0, a3
                  bltu         s7, a7, 123f
                  sll          t1, a3, t5
                  slt          s2, a1, t2
                  xor          a5, s7, s10
                  sub          zero, a5, s9
                  auipc        s10, 923992
                  lui          s10, 260559
                  bge          t5, s1, 122f
                  beq          s10, zero, 127f
                  srli         a1, s6, 13
                  srai         a4, a7, 25
                  srli         s0, s2, 19
122:              or           s1, s8, t0
123:              bltu         a3, t3, 126f
                  slti         s10, t5, -145
                  or           s0, a3, a7
126:              beq          s6, a3, 128f
127:              bge          a5, t0, 141f
128:              lui          s3, 802875
                  bne          t6, a1, 131f
                  andi         a5, s7, 91
131:              sltiu        a2, s3, 1722
                  slti         tp, a3, 242
                  bltu         s4, s5, 141f
                  and          t1, a3, a5
                  blt          a3, a6, 140f
                  srai         s9, t6, 20
                  srl          a0, t4, s9
                  auipc        a7, 60069
                  bge          t4, a5, 154f
140:              sra          s2, s6, s2
141:              beq          a0, t1, 155f
                  lui          a0, 278210
                  andi         t5, s0, -446
                  blt          a4, t0, 162f
                  srl          s10, t4, s0
                  auipc        s1, 764713
                  bge          s0, s5, 149f
                  slli         a4, t2, 2
149:              xori         s8, s9, -1265
                  slt          s4, t6, s8
                  slt          t5, t2, t6
                  slti         s11, t0, -1533
                  bge          s0, t4, 158f
154:              ori          a6, zero, -1279
155:              bne          t1, gp, 161f
                  srai         s8, s10, 10
                  sltu         t6, s8, t2
158:              auipc        t6, 835951
                  blt          a3, zero, 165f
                  slt          s10, a3, s5
161:              sltiu        s2, s8, 1732
162:              and          s4, a5, a5
                  sltu         s5, t5, s3
                  bge          a3, s3, 166f
165:              sll          a2, s10, t3
166:              beq          s3, t3, 178f
                  bgeu         sp, s10, 185f
                  and          s6, a2, s4
                  nop
                  addi         t6, s8, -1808
                  sltiu        t1, s6, 1321
                  sltu         a0, s9, s0
                  xor          s6, a4, zero
                  addi         t6, s11, -1897
                  nop
                  srli         a6, t4, 27
                  srl          s0, s4, t5
178:              or           s8, a4, s3
                  sub          a2, a7, s4
                  or           a4, s11, gp
                  srli         a2, s0, 1
                  xor          s0, t5, s8
                  beq          t3, ra, 198f
                  add          sp, a3, t5
185:              xori         a2, s4, 1558
                  sra          t2, ra, a0
                  ori          s4, sp, 497
                  add          s2, sp, s5
                  bge          s0, a7, 194f
                  or           a1, t4, tp
                  sub          s7, s2, a4
                  sltiu        a4, ra, -1645
                  sltu         s0, s1, a7
194:              bne          a7, zero, 211f
                  and          s5, a0, s2
                  ori          s10, a7, 2025
                  bge          gp, s9, 203f
198:              nop
                  beq          a1, a7, 203f
                  add          s3, s4, s6
                  bne          t5, s5, 212f
                  slli         s11, ra, 18
203:              bltu         s8, s3, 212f
                  slli         tp, tp, 21
                  slti         t1, zero, 956
                  sltu         s5, a0, ra
                  bge          s9, s5, 208f
208:              sltu         a2, s7, s1
                  bltu         s4, a4, 212f
                  nop
211:              beq          s9, s6, 216f
212:              sll          s2, s3, t4
                  sltiu        sp, tp, 1029
                  xor          a0, a4, s1
                  slti         s4, a7, 1733
216:              srl          s8, a0, a2
                  nop
                  bgeu         s2, t5, 232f
                  beq          s0, a1, 238f
                  bgeu         a5, a1, 228f
                  srli         s4, t2, 26
                  srli         s7, s5, 2
                  add          s4, a0, s11
                  bltu         zero, t5, 227f
                  and          s2, s2, s3
                  and          s9, s1, t4
227:              auipc        sp, 472292
228:              sll          t2, s11, zero
                  beq          s10, s6, 243f
                  sltu         gp, t3, s6
                  nop
232:              bgeu         a7, sp, 245f
                  or           s2, a4, gp
                  ori          s2, ra, 2014
                  lui          s7, 275141
                  bltu         s9, a7, 245f
                  slli         a1, s5, 29
238:              bge          s11, a4, 253f
                  sra          t2, s11, a0
                  sltu         a1, sp, t0
                  srli         s11, s5, 10
                  srai         s10, a3, 31
243:              bne          s9, t6, 257f
                  beq          t6, a4, 252f
245:              xor          t6, a7, a5
                  srl          t3, s3, t6
                  sra          s11, tp, a5
                  bge          a7, tp, 259f
                  bge          t5, t4, 269f
                  srai         s11, gp, 16
                  srl          s3, a5, ra
252:              slti         a5, t6, 48
253:              slti         s8, a5, -1826
                  sra          zero, a5, s5
                  sub          tp, t3, s10
                  addi         s4, s6, 357
257:              sltu         s6, s4, ra
                  bge          ra, s3, 269f
259:              bgeu         ra, s11, 262f
                  bne          ra, s10, 271f
                  xori         s6, sp, 1432
262:              slli         tp, s11, 17
                  srl          tp, sp, tp
                  sub          s1, a6, a4
                  srai         s9, t0, 9
                  blt          a5, a6, 268f
                  srl          t2, s3, a2
268:              bgeu         t4, zero, 282f
269:              bltu         sp, t6, 282f
                  addi         s9, t5, -844
271:              xori         s3, ra, -578
                  blt          s3, s0, 286f
                  add          a5, s9, t0
                  or           a6, t1, s0
                  andi         s4, s5, -1514
                  sra          a4, s3, s4
                  srai         sp, gp, 31
                  auipc        gp, 944302
                  xor          a2, t1, a0
                  xori         sp, t3, -449
                  bgeu         a7, t3, 295f
282:              srai         ra, t4, 5
                  bltu         a3, a2, 289f
                  beq          a6, s0, 299f
                  blt          a2, t5, 288f
286:              lui          zero, 578855
                  and          s3, a5, s5
288:              xor          s1, t1, ra
289:              addi         s9, a2, 1606
                  sltiu        s4, t1, 1103
                  or           a7, s11, ra
                  bge          a5, s2, 304f
                  and          sp, t4, zero
                  sltiu        s5, s9, 1038
295:              slt          s9, t5, s5
                  or           a2, s5, t2
                  or           a0, s6, sp
                  sltu         sp, a4, s7
299:              sltu         s1, a7, a3
                  and          s5, t4, t5
                  beq          t4, a6, 312f
                  slli         t2, s6, 6
                  andi         s0, s1, 1668
304:              xor          s11, t3, tp
                  sra          a1, s4, sp
                  slt          a5, t0, t1
                  sub          a6, zero, t5
                  slti         s2, a2, 744
                  nop
                  beq          s0, s10, 311f
311:              addi         s0, t1, -1306
312:              addi         s11, a3, -857
                  sub          s1, s1, s9
                  nop
                  andi         s11, s2, -1984
                  srli         sp, s3, 20
                  bgeu         a7, a7, 322f
                  bgeu         a7, tp, 324f
                  addi         t5, s3, -1983
                  la           t6, sub_9
                  slli         gp, a5, 19
                  sub          t5, s11, s5
                  nop
                  addi         t6, t6, -343
                  srli         s5, a2, 30
                  bltu         t4, a1, sub_8_j11 #branch to jump instr
                  srli         a7, s0, 19
sub_8_j11:        jalr         ra, t6, 344 #jump sub_8 -> sub_9
                  slti         sp, a4, 1677
                  and          t5, sp, a5
322:              xor          gp, s1, t1
                  srai         tp, s8, 10
324:              xori         s2, a0, 1187
                  blt          a1, s2, 330f
                  bge          s11, a3, 334f
                  xor          sp, t6, a1
                  bltu         a6, s0, 345f
                  bne          s6, s5, 334f
330:              bgeu         a3, s5, 339f
                  sll          s4, t5, s4
                  or           s2, s8, s9
                  xori         gp, ra, 205
334:              andi         a0, a3, -1163
                  xor          s0, s7, zero
                  bge          ra, t1, 347f
                  slti         t5, zero, -1532
                  or           a4, s5, a1
339:              bltu         s1, t3, 343f
                  bgeu         s4, a2, 342f
                  srai         t2, t1, 19
342:              bne          a1, s11, 348f
343:              blt          a0, a6, 352f
                  sltu         a5, a5, s11
345:              add          a1, a3, t6
                  sltu         s5, s7, a3
347:              sltiu        ra, ra, 2045
348:              bgeu         a1, s11, 356f
                  slli         s11, s2, 0
                  sltu         s7, a3, t5
                  nop
352:              xori         zero, s0, -943
                  slli         s3, s0, 3
                  sub          a4, a5, a7
                  xor          s0, t3, s7
356:              xori         s1, a1, 1193
                  slli         gp, s3, 31
                  xori         t3, a2, -237
                  lui          s6, 55619
                  sltu         a4, s11, a0
                  addi         a1, t6, -1971
                  nop
                  srli         s7, s7, 1
                  and          s2, s1, s0
                  slt          s1, tp, s3
                  sra          t3, t3, s5
                  sra          s2, a4, s3
                  addi         s4, s8, -172
                  slt          t3, gp, zero
                  sltiu        s4, t0, -949
                  xor          t6, s8, s11
                  andi         a4, a4, -1839
                  addi         s2, a1, 406
                  xor          a7, t2, a2
                  or           zero, a4, t1
                  xori         s0, t5, -1719
                  beq          a4, s11, 395f
                  xori         s4, a7, 678
                  andi         s7, s6, 1648
                  slt          a2, a2, t1
                  beq          s4, a3, 401f
                  nop
                  add          t2, a7, s2
                  sll          s3, t5, sp
                  blt          s9, a3, 404f
                  andi         t2, sp, 1610
                  or           a1, a7, a5
                  srli         a2, t1, 13
                  srli         a6, s2, 14
                  bne          t0, ra, 405f
                  addi         t3, t5, -545
                  or           t3, a5, s11
                  add          t1, s1, t1
                  or           t2, a1, s1
395:              bgeu         t2, ra, 397f
                  auipc        s0, 335002
397:              blt          t2, s2, 401f
                  xor          s5, a6, s3
                  slt          gp, tp, s9
                  srli         s1, zero, 16
401:              sll          t6, t6, zero
                  nop
                  bge          s6, s6, 405f
404:              sra          a7, t6, s3
405:              bne          t6, t1, 411f
                  and          s5, zero, zero
                  srli         s2, a3, 31
                  srai         s9, a4, 22
                  lui          a4, 841525
                  lui          t3, 794877
411:              lui          s4, 214174
                  slti         a2, s7, 503
                  beq          s8, s9, 427f
                  bltu         t2, sp, 433f
                  blt          a3, t3, 421f
                  bltu         sp, s4, 417f
417:              andi         s9, s1, 1616
                  and          t3, t4, s6
                  slti         s9, t1, -1129
                  sltu         t3, t3, s7
421:              ori          a4, a0, -1970
                  slt          a6, s5, s3
                  sltiu        ra, sp, 281
                  and          zero, s4, a2
                  sltiu        s7, s1, -974
                  and          t2, a6, a3
427:              sra          s1, s1, t6
                  addi         s5, gp, 1369
                  slli         t2, s1, 21
                  blt          a1, s3, 436f
                  srai         a6, zero, 22
                  addi         s3, s8, -349
433:              blt          s2, t4, 442f
                  auipc        s2, 598094
                  bne          s1, sp, 443f
436:              auipc        tp, 714731
                  srai         s8, ra, 7
                  auipc        s1, 862725
                  addi         ra, s6, -820
                  xori         s9, t3, 258
                  slt          a2, s8, gp
442:              sll          t6, s8, s0
443:              bltu         a0, s4, 458f
                  srli         s2, s10, 6
                  bne          sp, a4, 450f
                  blt          t1, a2, 461f
                  bne          s8, t5, 458f
                  slt          s10, t4, a7
                  ori          t5, a7, 1670
450:              ori          t5, s2, 181
                  sub          s7, s8, a4
                  or           s6, s10, a5
                  andi         s5, a6, 943
                  srli         t6, t1, 11
                  slti         s0, s10, 1298
                  sltiu        zero, t5, 1536
                  beq          t2, tp, 462f
458:              xor          gp, s4, s3
                  sltu         s6, sp, tp
                  sra          a5, s10, s5
461:              addi         a7, s11, 334
462:              bne          t6, t4, 482f
                  add          s4, gp, s10
                  sra          t1, a3, s8
                  slli         s0, a3, 24
                  slt          a5, s5, s2
                  auipc        t5, 770066
                  lui          t5, 1010569
                  andi         a4, s10, -302
                  slti         gp, s1, 888
                  andi         s7, t3, -60
                  srl          a6, a7, t5
                  bltu         s1, a4, 491f
                  bltu         zero, a3, 486f
                  sub          s3, t6, s2
                  xori         s2, s5, -23
                  blt          a3, a6, 488f
                  sub          s0, t2, ra
                  sub          a7, s0, a4
                  ori          s6, s7, 832
                  srai         s8, t3, 16
482:              slli         zero, s3, 24
                  xor          a7, t6, t5
                  srai         s6, s0, 5
                  srai         a7, t5, 1
486:              bltu         tp, s6, 495f
                  auipc        s10, 588891
488:              andi         s10, s1, 1209
                  bgeu         s0, t2, 492f
                  blt          a1, s3, 498f
491:              nop
492:              sll          s5, a2, t1
                  bne          a5, s3, 510f
                  sub          s5, tp, s11
495:              lui          s2, 971031
                  blt          a7, t4, 509f
                  sra          s7, s2, s8
498:              sub          s4, a5, a2
                  sra          t1, a6, s7
                  sll          s7, a7, t2
                  beq          s1, a6, 506f
                  addi         ra, a3, 331
                  nop
                  slt          s3, s6, sp
                  sll          a0, a5, a2
506:              sltu         s1, ra, s9
                  slt          s9, ra, s7
                  bne          s6, a1, 511f
509:              add          s6, s7, t5
510:              slt          zero, s5, a4
511:              sltu         t1, t5, t3
                  add          s8, s6, a2
                  and          sp, a1, s11
                  sll          zero, s11, a4
                  blt          t2, a6, 529f
                  andi         t1, s2, 628
                  auipc        a7, 853462
                  lui          s10, 1047135
                  xori         a6, a6, -39
                  bne          s1, s7, 531f
                  lui          a4, 360711
                  or           a6, ra, s9
                  add          s11, s8, s5
                  beq          t0, t2, 538f
                  or           a1, t3, s5
                  ori          s4, ra, 384
                  blt          zero, s6, 538f
                  ori          s5, s6, 591
529:              bge          t4, s1, 543f
                  xori         s7, gp, -1184
531:              srli         s10, sp, 6
                  slti         a4, s1, 1858
                  bltu         tp, t5, 535f
                  ori          s0, a6, -1075
535:              nop
                  bgeu         a1, s6, 550f
                  srl          a4, a2, t3
538:              add          s4, a4, t2
                  sltiu        s1, s6, 542
                  sub          a0, s5, t0
                  or           s7, t6, tp
                  lui          gp, 118955
543:              and          s4, s8, s4
                  srai         s3, s1, 8
                  beq          s0, t5, 550f
                  xor          sp, s8, s1
                  blt          t5, t6, 558f
                  lui          gp, 991175
                  sltu         a2, s9, a6
550:              bne          s9, a0, 556f
                  slti         a5, a4, -941
                  xori         s8, t4, -928
                  sub          s5, t5, a4
                  sra          a0, a0, a3
                  slli         t2, s6, 14
556:              sll          tp, a7, s0
                  sll          s4, s7, s5
558:              beq          s0, a6, 567f
                  sub          sp, a2, t0
                  slt          s6, s6, a1
                  add          s6, s10, a1
                  srli         a0, gp, 5
                  slti         tp, s2, -984
                  lui          t5, 72387
                  blt          t5, s4, 577f
                  srl          s11, s1, a1
567:              sltu         t1, t2, s0
                  bne          s2, s5, 577f
                  auipc        t3, 632647
                  or           t6, a4, s3
                  slti         tp, s11, -1947
                  auipc        s2, 425028
                  add          a7, s5, s0
                  slt          a4, a2, gp
                  beq          s8, s3, 589f
                  or           a5, a4, t2
577:              sltu         tp, t0, t6
                  slt          a7, a2, zero
                  slt          ra, t6, s6
                  or           s4, t6, gp
                  beq          sp, t1, 583f
                  srli         s0, a3, 19
583:              auipc        gp, 311321
                  nop
                  and          s3, t2, ra
                  srli         t3, a3, 9
                  bgeu         a2, s10, 598f
                  blt          s9, t6, 594f
589:              bltu         s9, t0, 594f
                  srli         s0, tp, 21
                  bltu         s3, t4, 599f
                  sub          s4, a0, s6
                  srli         a4, s2, 21
594:              xori         s2, t2, -1580
                  sll          t1, a5, a7
                  srl          s6, s10, a5
                  nop
598:              add          t2, s1, s2
599:              or           t2, s1, t4
                  andi         gp, tp, 267
                  srli         a5, a1, 1
                  xori         a1, s4, 1028
                  beq          s3, t6, 607f
                  auipc        t5, 679823
                  bge          s5, t0, 611f
                  bgeu         s9, a5, 625f
607:              xor          a0, a0, tp
                  slli         sp, s1, 23
                  beq          zero, gp, 626f
                  sra          s2, s4, sp
611:              srli         s9, gp, 19
                  and          s4, s0, s0
                  slti         s10, tp, 1539
                  bgeu         a1, s5, 617f
                  bne          a1, a0, 620f
                  bgeu         zero, gp, 619f
617:              ori          gp, s8, 612
                  bltu         tp, ra, 631f
619:              bltu         s4, t1, 634f
620:              beq          ra, t6, 621f
621:              sub          s11, t4, zero
                  sra          t6, a5, t0
                  sll          s3, a5, a5
                  sltu         a1, s5, s5
625:              sra          t3, a6, t1
626:              xori         s10, s1, -1389
                  add          a7, ra, a1
                  bge          a2, t6, 636f
                  slti         s9, zero, 825
                  sltiu        s0, zero, -1845
631:              blt          gp, tp, 649f
                  slli         s6, s2, 14
                  add          a6, a7, s0
634:              slti         s11, s5, -626
                  slli         zero, s5, 27
636:              blt          s11, sp, 651f
                  auipc        t6, 602978
                  slt          tp, s11, a7
                  ori          ra, a3, -316
                  addi         a4, tp, 169
                  nop
                  or           gp, s4, t2
                  sll          s10, a2, s5
                  sltiu        a7, s0, 1426
                  or           s8, t3, sp
                  andi         s2, s10, 196
                  or           a4, t6, s9
                  bne          gp, a1, 668f
649:              and          a5, s4, s2
                  bne          s5, s5, 656f
651:              sltu         t6, a6, a3
                  srli         s7, a4, 19
                  sltiu        s2, a1, -1770
                  bne          s5, t1, 669f
                  bge          s0, tp, 673f
656:              nop
                  slt          ra, s2, s3
                  andi         s3, a7, -1600
                  addi         a0, s1, -1579
                  ori          t3, s1, 361
                  bgeu         s7, ra, 669f
                  slti         s9, s1, -1511
                  bgeu         s3, s4, 674f
                  addi         s11, ra, 1280
                  sll          a1, t5, t4
                  slti         s4, t6, 625
                  srli         t1, a6, 4
668:              sra          gp, a2, t4
669:              xori         a2, t4, -1083
                  sltu         a0, s10, t1
                  bge          a2, t4, 676f
                  srai         s2, ra, 2
673:              or           s0, t0, t0
674:              ori          t5, t1, -1875
                  or           s2, sp, a2
676:              nop
                  slt          s6, s10, s4
                  slt          sp, t3, t3
                  sub          s1, s2, s7
                  srl          s11, t5, s2
                  sub          tp, t5, t5
                  bgeu         s10, s11, 686f
                  blt          s5, s4, 694f
                  ori          sp, ra, 1626
                  srl          s0, t2, s6
686:              lui          t6, 194738
                  xori         a0, t5, 691
                  slli         s2, gp, 15
                  xori         s6, ra, 943
                  bne          gp, sp, 705f
                  lui          a1, 946656
                  xori         a7, s5, -1148
                  blt          s8, s0, 696f
694:              ori          a7, s8, 1121
                  auipc        s11, 864298
696:              sll          s5, tp, ra
                  xor          s0, s10, s11
                  sub          gp, s9, t5
                  srli         zero, sp, 21
                  slli         tp, s11, 27
                  srli         s6, s5, 31
                  xor          tp, t4, tp
                  bne          s4, t5, 704f
704:              xor          a7, t4, t1
705:              ori          a1, ra, 179
                  sltu         a0, s0, s8
                  sub          a7, s9, a7
                  addi         s6, a5, -1681
                  or           s3, gp, a2
                  bltu         a4, s0, 721f
                  xori         s1, s0, 1425
                  auipc        s11, 369820
                  beq          ra, tp, 730f
                  srli         gp, s2, 30
                  blt          a1, a3, 735f
                  slli         s0, ra, 27
                  or           zero, t2, a0
                  blt          a7, t4, 737f
                  bne          gp, zero, 725f
                  sra          s5, a3, s0
721:              ori          tp, s9, -531
                  sub          a4, t1, a7
                  sll          zero, a5, t4
                  sub          gp, sp, s3
725:              xor          t1, ra, t6
                  bgeu         s10, s7, 731f
                  srli         a2, a2, 7
                  bge          ra, s9, 739f
                  sltu         t2, a3, s3
730:              beq          sp, s6, 739f
731:              srai         a7, gp, 29
                  sra          s11, s8, s11
                  slli         s10, t1, 0
                  slti         a4, a4, 908
735:              beq          a4, a6, 737f
                  blt          s3, t1, 739f
737:              bgeu         sp, a3, 739f
                  and          t2, a6, t0
739:              sll          t5, a4, t5
                  lw           ra, 4(a3)
                  sub          s2, s3, s4
                  ori          gp, s4, 1970
                  addi         a3, a3, 52
                  lui          t3, 196993
                  sra          s5, s2, a4
                  nop
                  andi         t6, a6, 1633
                  srli         t3, a6, 24
                  srl          a4, ra, s7
                  sltu         s6, tp, s3
                  srl          s3, ra, s7
992:              addi x14, x1, 0
992:              jalr x14, x14, 0
sub_3:            srl          a2, s7, a1
                  sltu         zero, s11, t3
                  addi         a3, a3, -52
                  or           zero, a3, a2
                  lui          a2, 858488
                  sltu         s0, a2, a5
                  sll          sp, a3, a1
                  nop
                  sll          s4, sp, a6
                  srli         s8, t2, 9
                  sw           ra, 4(a3)
                  srai         a4, a0, 28
                  bgeu         a2, ra, 19f
                  srli         t2, a5, 4
                  lui          a1, 406425
                  slti         s6, t2, 61
                  and          s2, ra, sp
                  xor          a1, ra, s9
                  bge          a5, s4, 22f
                  addi         a5, s0, -1646
                  slt          s9, s2, t5
                  addi         a4, sp, 1072
                  blt          s4, t6, 18f
                  or           t1, s11, a4
                  sltu         t2, s10, s2
                  andi         s5, t4, 1229
                  addi         a5, a1, -40
                  add          a7, t4, s1
                  blt          a6, ra, 35f
                  srai         s11, t2, 18
18:               sll          s5, gp, s9
19:               ori          s8, t5, -1072
                  srai         s1, s10, 15
                  slti         t2, zero, 1102
22:               nop
                  srl          s10, s2, s1
                  bge          a5, a3, 40f
                  xor          s5, s9, t3
                  bne          s2, zero, 39f
                  srl          s1, t4, t0
                  sub          s6, s8, s11
                  or           a2, t2, s0
                  bne          s6, a2, 38f
                  srai         a4, a6, 31
                  sra          s10, zero, a2
                  sra          t1, s9, t2
                  addi         sp, s3, 1094
35:               auipc        s5, 810556
                  slt          s8, zero, a4
                  andi         s5, a4, 1448
38:               sltu         tp, s9, tp
39:               auipc        s8, 683272
40:               or           s0, t4, a4
                  srl          a0, s0, s0
                  ori          t3, s7, 130
                  add          zero, t6, s5
                  xori         s8, ra, 927
                  beq          t4, s9, 58f
                  bge          a1, sp, 65f
                  slt          ra, s7, a1
                  addi         a2, s11, 689
                  srai         a5, zero, 31
                  xor          a6, sp, a2
                  blt          ra, t6, 65f
                  sltiu        t2, gp, 313
                  addi         s10, t5, -45
                  xori         s11, s9, 1814
                  xor          s8, a1, s11
                  and          a5, s2, s1
                  beq          t5, s9, 64f
58:               bltu         t6, s1, 77f
                  srli         tp, zero, 6
                  slt          a6, t0, t3
                  ori          a6, s5, -1551
                  blt          s3, s7, 80f
                  blt          s10, a4, 67f
64:               addi         s4, s9, 839
65:               srl          tp, s10, ra
                  srai         s11, a3, 13
67:               add          s5, s9, a6
                  sll          s11, s6, s9
                  slli         a0, a1, 28
                  sltu         s5, s7, a1
                  addi         s6, s10, -164
                  bgeu         ra, t0, 75f
                  andi         tp, s6, 1505
                  sltu         s8, s1, t1
75:               slli         tp, t1, 18
                  andi         s0, a4, -893
77:               bne          t1, t6, 84f
                  srl          s5, a6, s4
                  bge          t0, zero, 85f
80:               srai         t2, sp, 14
                  slti         s9, s8, -495
                  ori          t2, s8, 1503
                  srl          a6, ra, t6
84:               xor          s8, a5, tp
85:               lui          s6, 1048485
                  andi         zero, s3, 1071
                  lw           ra, 4(a3)
                  srai         s2, a3, 25
                  sra          t5, s4, s10
                  sltiu        s9, t3, -1136
                  slti         a1, a0, -670
                  addi         a3, a3, 52
                  slli         t2, a5, 19
106:              addi x14, x1, 0
106:              jalr x14, x14, 0
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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x5, x13, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x2, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x2, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x2, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x2, x6, ecall_handler
                  li x6, 0x1
                  beq x2, x6, instr_fault_handler
                  li x6, 0x5
                  beq x2, x6, load_fault_handler
                  li x6, 0x7
                  beq x2, x6, store_fault_handler
                  li x6, 0xc
                  beq x2, x6, pt_fault_handler
                  li x6, 0xd
                  beq x2, x6, pt_fault_handler
                  li x6, 0xf
                  beq x2, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

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
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x13, x5, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
