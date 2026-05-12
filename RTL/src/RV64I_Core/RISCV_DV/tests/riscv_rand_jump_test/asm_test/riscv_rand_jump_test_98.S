.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x27, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 1
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x3, 0x80000000
                  li x4, 0xfa6e1290
                  li x5, 0x6
                  li x6, 0x0
                  li x7, 0x3
                  li x8, 0x80000000
                  li x9, 0x83704963
                  li x10, 0x8f2addee
                  li x11, 0x80000000
                  li x12, 0xf245d669
                  li x13, 0x0
                  li x14, 0xb084f4e0
                  li x15, 0xf0333e0b
                  li x16, 0xfc347504
                  li x17, 0x8af1892e
                  li x18, 0x8
                  li x19, 0xa4734543
                  li x20, 0x0
                  li x21, 0xb
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0xd9e466e3
                  li x26, 0x0
                  li x28, 0xafbb4189
                  li x29, 0xf3245aba
                  li x30, 0xd
                  li x31, 0xf60bbcf6
                  la x2, user_stack_end
main:             la           s3, sub_1
                  addi         s3, s3, -716
                  sra          s9, s0, sp
                  and          a2, a3, s7
                  lui          a6, 490208
                  xori         t4, a1, 603
                  and          s1, s2, zero
                  add          s1, sp, s10
main_j2:          jalr         s10, s3, 717 #jump main -> sub_1
                  la           t2, region_0+295 #start riscv_load_store_rand_instr_stream_0
                  sltiu        s5, a3, 1667
                  lbu          a0, -166(t2)
                  andi         s8, tp, -214
                  or           s1, a0, s2
                  lhu          t3, 457(t2)
                  sb           t5, 109(t2)
                  sb           s3, -193(t2)
                  sb           a1, 223(t2)
                  lbu          tp, 1450(t2)
                  lbu          s9, 1392(t2)
                  add          a1, t2, t5
                  sra          t4, a3, s2
                  lb           s10, 1157(t2)
                  srl          s10, s5, s5
                  srai         a6, t5, 8
                  lb           s8, 1202(t2)
                  lui          t6, 818155
                  sb           t2, -8(t2)
                  sb           t2, 1036(t2)
                  sb           tp, 210(t2)
                  lbu          ra, 81(t2)
                  sb           gp, 263(t2)
                  lb           s8, 866(t2)
                  slli         s9, t3, 12
                  lb           a4, 1406(t2)
                  lb           ra, 902(t2)
                  srli         a7, s6, 7
                  sb           s6, 1020(t2)
                  sb           sp, 774(t2)
                  sb           s9, 96(t2)
                  lb           tp, 805(t2)
                  ori          t1, tp, 864
                  auipc        a5, 942017
                  lb           t1, 1227(t2)
                  lbu          zero, 334(t2)
                  sb           t5, -209(t2) #end riscv_load_store_rand_instr_stream_0
                  bne          s5, sp, 19f
                  addi         a1, ra, -1762
                  beq          a1, tp, 16f
                  bge          t2, s2, 17f
                  sub          t6, a6, t4
                  or           t2, ra, tp
                  slti         t3, tp, -1882
                  slti         s9, sp, 1531
                  sltu         t4, t6, t2
                  blt          a4, tp, 15f
                  srai         s4, s11, 14
                  sub          ra, sp, s1
                  bne          t3, a2, 32f
                  bge          ra, s11, 17f
                  sltiu        t0, t6, 1966
15:               nop
16:               sltu         gp, a4, sp
17:               add          s7, s3, gp
                  sra          t3, t2, s4
19:               bge          s5, t2, 38f
                  auipc        s3, 769108
                  sub          t5, a4, gp
                  or           s9, s1, tp
                  auipc        t3, 816799
                  srai         t2, a4, 1
                  andi         a0, t6, 1217
                  srli         a3, s1, 19
                  sltu         ra, s6, s1
                  xor          a3, s10, sp
                  bltu         t4, s2, 35f
                  andi         a4, sp, 1411
                  srai         a3, s6, 3
32:               xor          a4, t1, a4
                  sltiu        gp, sp, 1559
                  xor          s1, s4, a6
35:               sra          s5, t6, s1
                  slti         tp, s6, -1897
                  slt          a5, s3, t6
38:               and          a3, a3, ra
                  or           t6, s5, s7
                  bltu         s4, a5, 54f
                  srai         s7, t0, 12
                  srli         s5, s4, 13
                  slti         a1, sp, 1825
                  xori         tp, t1, -432
                  or           zero, t6, t2
                  nop
                  bgeu         s0, a5, 57f
                  or           s10, t2, s0
                  blt          t3, a5, 67f
                  lui          a4, 965307
                  add          gp, a4, t1
                  slli         s10, a7, 15
                  sra          t5, zero, tp
54:               bltu         s3, a1, 65f
                  ori          s9, s4, 545
                  slli         t5, a0, 7
57:               beq          s7, s0, 71f
                  andi         gp, t0, -502
                  sub          s8, a0, zero
                  sltiu        ra, ra, -701
                  andi         t6, a5, 33
                  bltu         t4, s6, 71f
                  addi         t4, a2, 1101
                  srli         a4, t4, 30
65:               xori         a3, zero, 317
                  addi         s5, t5, 1704
                  sll          s1, ra, a7
                  xor          t0, a4, a0
                  srl          zero, s10, a7
                  srai         a0, a3, 31
                  la           gp, sub_1
                  addi         gp, gp, -292
                  nop
                  sra          a0, a1, a6
                  srli         s6, t0, 10
                  or           a7, s4, s7
                  srai         s8, a5, 2
                  srai         s7, s10, 9
main_j1:          jalr         s10, gp, 293 #jump main -> sub_1
67:               slti         s6, s1, 1373
                  beq          t1, gp, 71f
                  srli         a3, a1, 9
                  bltu         s9, t0, 71f
71:               srai         t2, ra, 15
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            and          t4, gp, a7
                  srli         s7, t5, 10
                  ori          a3, gp, -1538
                  sltu         ra, s10, ra
                  slt          t6, t4, s9
                  addi         a7, s8, -948
                  sltu         s4, s0, s7
                  bgeu         s5, t0, sub_1_stack_p
sub_1_stack_p:    addi         sp, sp, -56
                  sltiu        zero, t1, 918
                  sw           s10, 4(sp)
                  sltu         s9, s11, a5
                  lui          t0, 81315
                  xori         a4, a3, -736
                  andi         s10, s9, 819
                  slti         a3, s9, 939
                  srli         ra, s3, 5
                  nop
                  srli         a7, t2, 15
                  sra          s6, s6, a0
sub_1_j3:         jal          s10, sub_2 #jump sub_1 -> sub_2
                  sra          t1, t1, a7
                  xor          a2, t3, s10
                  sltu         gp, t4, t0
                  or           a4, zero, s4
                  sll          s9, t4, s9
                  or           s10, t6, sp
                  slt          tp, t3, s9
                  srl          zero, a3, a7
                  addi         a4, s7, 2035
sub_1_j4:         jal          s10, sub_3 #jump sub_1 -> sub_3
                  lui          s5, 895597
                  andi         s6, s1, -865
                  andi         s3, zero, -1417
                  andi         a2, tp, 1864
                  srai         a1, s11, 27
                  sll          t1, s7, a6
                  slt          gp, s10, t3
                  sltu         t0, a3, a4
                  beq          a0, s6, sub_1_j5 #branch to jump instr
                  xor          t6, s10, s4
                  sltiu        s5, s10, -1812
sub_1_j5:         jal          s10, sub_2 #jump sub_1 -> sub_2
                  bgeu         s8, a3, 1f
1:                sub          t5, s1, sp
                  srli         s7, t6, 14
                  slli         zero, t4, 5
                  ori          a2, sp, 1774
                  sub          a1, t6, t4
                  srli         s3, s8, 11
                  beq          a7, t3, 8f
8:                auipc        a1, 584944
                  xor          t3, t6, t4
                  xori         s4, t4, 1491
                  slt          a1, t1, s2
                  xor          t0, s1, a7
                  xor          t2, s8, a2
                  xori         a1, gp, 1249
                  bltu         zero, s6, 20f
                  slt          s3, s5, s7
                  addi         s9, s2, 146
                  sll          tp, t2, t3
                  bge          s8, t1, 20f
20:               nop
                  lw           s10, 4(sp)
                  addi         a0, a3, 1445
                  addi         sp, sp, 56
                  add          a7, s9, s2
                  sll          a3, t0, s5
69:               addi x5, x26, 1
69:               jalr x5, x5, 0
sub_2:            bge          sp, a4, sub_2_stack_p
                  sub          s1, s1, t2
sub_2_stack_p:    addi         sp, sp, -52
                  addi         s1, s6, -1069
                  sw           s10, 4(sp)
                  sltiu        t1, s1, -1314
                  sltu         s4, a4, s9
                  sltiu        zero, a2, 1134
                  or           t2, t0, s11
                  la           tp, region_1+1605 #start riscv_load_store_rand_instr_stream_9
                  sltu         s4, a5, s10
                  slli         gp, a4, 2
                  sb           s9, 14(tp)
                  sltiu        s0, t4, 2018
                  sb           s9, -4(tp)
                  lbu          s3, 0(tp)
                  sw           sp, 15(tp)
                  sra          t6, a7, s0
                  and          t4, a7, s5
                  sll          zero, a0, s1
                  xor          t1, t4, sp
                  lhu          gp, -7(tp)
                  or           t5, s8, s10
                  lb           a6, 6(tp)
                  sra          s5, t4, zero
                  sb           s2, -13(tp)
                  lb           t6, -10(tp)
                  auipc        t5, 482199
                  lb           a4, 2(tp)
                  and          t2, a6, t5
                  lb           a6, 14(tp)
                  auipc        a0, 421162
                  sb           t6, -12(tp)
                  sb           s9, -8(tp)
                  xori         a2, s8, 1226
                  srl          zero, s7, s3
                  sb           t3, -8(tp)
                  ori          t2, a5, 1061
                  lb           s1, 0(tp)
                  lb           s3, -12(tp)
                  sh           t5, 5(tp)
                  add          s7, s0, s5
                  sb           s4, -4(tp)
                  xori         s7, a0, 166
                  sll          t4, s8, t0
                  srli         s7, a1, 21
                  lh           s9, 9(tp) #end riscv_load_store_rand_instr_stream_9
                  la           s7, region_0+401 #start riscv_load_store_rand_instr_stream_7
                  sb           s1, -7(s7)
                  sltu         t1, s10, s9
                  sb           a1, 11(s7)
                  sb           s6, -2(s7)
                  sub          a2, a0, s0
                  srai         s10, s6, 7
                  lb           t3, -5(s7)
                  lhu          s4, -3(s7)
                  sb           s4, -12(s7)
                  lw           zero, -1(s7)
                  sb           s5, 2(s7)
                  sb           s9, 16(s7)
                  and          ra, ra, t6
                  lhu          t4, 9(s7)
                  sb           s4, 8(s7)
                  lbu          s0, -8(s7)
                  add          s8, ra, ra
                  lbu          zero, 2(s7)
                  sb           t4, -10(s7)
                  lw           s6, 3(s7)
                  add          a5, t2, a1
                  or           ra, a1, s9
                  lbu          a0, 9(s7)
                  srai         t1, a1, 10
                  add          t2, a0, s3
                  lhu          zero, 9(s7)
                  slt          t1, s10, a7
                  srai         a2, a0, 24
                  lui          tp, 672510
                  lbu          s0, 6(s7)
                  add          s0, s7, t6
                  srli         a6, gp, 3
                  sb           a4, -3(s7)
                  lb           a6, 14(s7)
                  sub          gp, a6, t5
                  lui          s3, 157444
                  lh           s10, -9(s7)
                  lbu          s6, 12(s7)
                  lbu          a0, 2(s7)
                  sub          t2, s6, a6
                  sb           s5, 10(s7)
                  sb           a7, -16(s7)
                  srl          s8, a7, t3
                  sh           a2, -5(s7)
                  srai         a5, s3, 22
                  add          a0, ra, gp
                  sll          a7, a6, a4
                  sh           a4, -5(s7) #end riscv_load_store_rand_instr_stream_7
                  la           a2, region_0+1962 #start riscv_load_store_rand_instr_stream_11
                  sh           a7, -8(a2)
                  sb           tp, 7(a2)
                  addi         s9, a7, -253
                  and          t4, a5, t0
                  sb           s7, 12(a2)
                  lbu          s5, 11(a2)
                  lhu          a1, 16(a2)
                  lbu          a6, 11(a2)
                  addi         t6, s0, -291
                  lbu          ra, 12(a2)
                  lb           s1, -9(a2)
                  lb           s7, 13(a2)
                  lh           s6, -4(a2)
                  lbu          a5, -11(a2)
                  sb           a4, 7(a2)
                  sltiu        s5, s2, -1906
                  lbu          t2, 5(a2)
                  sll          s8, s1, t0
                  ori          t6, t0, -1902
                  lbu          t1, 5(a2)
                  addi         s1, s1, 720
                  sb           s9, -14(a2)
                  or           s10, a5, t6
                  addi         tp, s6, -900
                  sh           t6, -16(a2)
                  addi         t1, gp, -285
                  sh           s10, 16(a2)
                  nop
                  sra          zero, a7, t5
                  sb           a6, -12(a2)
                  sll          t3, a7, zero
                  lb           t1, -14(a2)
                  sub          zero, a5, a6
                  srli         gp, s6, 13
                  srai         ra, tp, 18
                  sb           a0, 3(a2)
                  sra          s3, a7, s4
                  lbu          s7, 7(a2)
                  sb           s3, 14(a2)
                  nop
                  lbu          a5, -15(a2)
                  sb           t2, 14(a2) #end riscv_load_store_rand_instr_stream_11
                  la           a6, region_1+1776 #start riscv_load_store_rand_instr_stream_0
                  sb           t1, 10(a6)
                  srl          s8, a1, s0
                  lb           s8, 2(a6)
                  srli         s7, s1, 10
                  add          t2, sp, zero
                  and          a4, s4, tp
                  xor          t6, s6, t1
                  xori         s5, s5, 61
                  sll          a5, s6, t5
                  lb           s1, 9(a6)
                  sra          t6, s9, s8
                  sh           ra, 56(a6)
                  sb           s0, 38(a6)
                  lb           s9, -35(a6)
                  or           gp, t0, s0
                  lh           s3, -38(a6)
                  xori         t3, sp, 124
                  lb           a4, -62(a6)
                  nop
                  lbu          s6, 30(a6)
                  add          s6, s7, s6
                  xori         s7, s8, -638
                  slti         s3, gp, 1807
                  lhu          t4, -4(a6)
                  srai         t2, s5, 27
                  or           s4, a3, tp
                  srl          t0, zero, t0
                  addi         s4, s7, -583
                  and          s8, s6, s4
                  andi         s1, t3, 1992
                  lb           ra, 59(a6)
                  xor          zero, t0, s4
                  sltiu        s9, s6, -754
                  lbu          t6, -38(a6)
                  lb           a0, 57(a6)
                  lb           s10, -47(a6) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_1+1298 #start riscv_load_store_rand_instr_stream_1
                  slli         s7, t3, 17
                  addi         s9, a2, -910
                  sltiu        a3, a5, -842
                  slti         a6, s4, -570
                  lbu          a1, 19(t0)
                  sll          s5, a6, a0
                  lui          s9, 931873
                  lh           a2, -44(t0)
                  slli         a3, t6, 13
                  lbu          t2, -6(t0)
                  sb           a1, -4(t0)
                  srai         a7, t5, 17
                  sub          ra, a3, s3
                  slli         s5, a5, 17
                  auipc        s10, 327109
                  srai         a0, t5, 28
                  and          t4, a6, a0
                  ori          t4, s6, 48
                  lhu          a4, 10(t0)
                  and          a3, gp, s10
                  lb           t1, 35(t0)
                  lb           s7, 37(t0)
                  slt          s10, t3, s1
                  slli         a0, a5, 6
                  lbu          a7, -44(t0)
                  sb           s4, 49(t0)
                  auipc        a4, 361755
                  srai         t6, a7, 20
                  lb           a1, 30(t0)
                  lh           t4, -20(t0) #end riscv_load_store_rand_instr_stream_1
                  la           t1, region_1+1119 #start riscv_load_store_rand_instr_stream_10
                  sw           s1, -11(t1)
                  lbu          t6, 48(t1)
                  sb           ra, 76(t1)
                  lbu          ra, 108(t1)
                  lh           t0, 3(t1)
                  sb           a7, 157(t1)
                  sra          t4, t4, t5
                  auipc        a3, 41611
                  ori          s10, t3, -183
                  lw           ra, 113(t1)
                  nop
                  addi         a0, tp, 1660
                  sll          s4, s5, tp
                  lh           a4, -85(t1)
                  lbu          a7, 233(t1)
                  slt          zero, s2, zero
                  lhu          t6, 91(t1)
                  lhu          s5, -57(t1)
                  sh           s5, 225(t1)
                  sb           a0, -78(t1)
                  lb           gp, -122(t1)
                  sh           t0, -157(t1)
                  slti         s7, s6, 176
                  sub          s10, s0, s5
                  lb           tp, 139(t1)
                  andi         t5, s1, -1723
                  and          s7, t0, tp
                  sb           a7, -26(t1)
                  sb           sp, 3(t1)
                  srai         a1, s7, 11
                  sh           a0, -217(t1)
                  lbu          t3, -146(t1)
                  sh           a2, 99(t1)
                  lui          t0, 403130
                  sltu         zero, a5, t6
                  ori          tp, s7, 1709
                  add          s10, s1, zero
                  andi         t6, t2, 364
                  lbu          a0, -60(t1)
                  or           t3, sp, t0
                  lb           s6, 219(t1)
                  xor          s4, s11, s7
                  sb           a5, -84(t1)
                  sub          s0, t5, s0
                  sll          gp, s1, a7
                  lb           s8, 122(t1)
                  sll          a4, a1, ra
                  srl          a3, t2, tp
                  lhu          a3, -241(t1)
                  lb           s9, -92(t1) #end riscv_load_store_rand_instr_stream_10
                  la           gp, region_1+1650 #start riscv_load_store_rand_instr_stream_6
                  lb           a6, 7(gp)
                  srl          t6, a6, s5
                  ori          ra, sp, -1250
                  lh           s3, 38(gp)
                  lb           s8, 53(gp)
                  srai         t4, s3, 5
                  ori          a5, s6, 1363
                  lb           a2, 45(gp)
                  lhu          a1, -52(gp)
                  slt          t6, a3, t6
                  lh           t3, 20(gp)
                  sb           s7, -31(gp)
                  lw           a1, -14(gp)
                  lhu          t3, -36(gp)
                  lbu          s0, 28(gp)
                  lh           tp, -18(gp)
                  lbu          a1, 10(gp)
                  lb           s1, 31(gp)
                  andi         s3, s3, -893
                  lbu          t5, 54(gp)
                  slli         t1, s5, 20
                  lh           ra, 16(gp)
                  lbu          s6, -37(gp)
                  lbu          t2, -16(gp)
                  sw           t1, 18(gp)
                  sb           sp, 9(gp)
                  lhu          s3, -42(gp)
                  sltu         a3, t1, a2
                  nop
                  lb           a1, 61(gp)
                  slt          s6, s4, sp
                  lh           s9, 52(gp)
                  add          s9, s0, t4
                  xori         a7, s7, -369
                  xori         a4, t0, 1662
                  lbu          a0, 41(gp)
                  lbu          s6, -1(gp)
                  addi         t0, t5, 1528
                  sh           a3, -26(gp) #end riscv_load_store_rand_instr_stream_6
                  la           a3, region_0+1226 #start riscv_load_store_rand_instr_stream_2
                  sb           s11, 1(a3)
                  andi         a7, s3, 1027
                  xori         gp, a1, 1304
                  lbu          t2, -12(a3)
                  add          a7, a2, a0
                  srli         t5, s3, 27
                  lui          tp, 403163
                  auipc        zero, 580656
                  sltiu        a2, a1, -1298
                  lb           s6, 13(a3)
                  or           t4, t5, sp
                  lh           tp, -4(a3)
                  lbu          t6, 11(a3)
                  sb           s7, 11(a3)
                  slli         t0, s8, 13
                  andi         tp, s6, 1832
                  lb           s7, 5(a3)
                  andi         a5, s2, -1883
                  slt          s7, gp, a1
                  sltu         t6, zero, s5
                  slli         a2, t2, 11
                  slli         s4, s5, 0
                  slli         a1, t1, 23
                  lh           t6, 10(a3)
                  addi         t3, s7, -2026
                  lb           a4, 3(a3)
                  lb           s0, 13(a3)
                  lui          a1, 269914
                  lh           s5, 16(a3)
                  srl          t1, s1, s7
                  sltiu        ra, s8, 1044
                  sll          s3, s10, t5
                  slt          s7, zero, t5
                  xori         t2, s11, -1549
                  lbu          s0, 13(a3)
                  slt          t3, s4, t2
                  slt          s0, a1, a0
                  slt          a6, s10, t1
                  srai         t0, sp, 19
                  slt          zero, t6, s6
                  lbu          t6, 8(a3)
                  lw           s7, -14(a3)
                  lbu          t1, 9(a3) #end riscv_load_store_rand_instr_stream_2
                  la           s3, region_1+1157 #start riscv_load_store_rand_instr_stream_3
                  srli         a6, s11, 16
                  lb           gp, 16(s3)
                  lbu          s5, 16(s3)
                  sw           s0, 7(s3)
                  and          t4, s11, s0
                  lbu          a4, -16(s3)
                  lb           tp, 11(s3)
                  sb           t3, 1(s3)
                  addi         t6, s4, 1276
                  nop
                  slli         a6, a6, 17
                  sh           s0, 7(s3)
                  sll          a6, s0, t2
                  sw           zero, -13(s3)
                  srl          gp, sp, s5
                  lb           s5, -10(s3)
                  sh           zero, -11(s3)
                  sltiu        s6, s3, -1643
                  sub          a2, t3, t0
                  xori         s1, a0, -1109
                  lbu          t0, 12(s3)
                  sb           a0, -2(s3)
                  lbu          s0, 4(s3)
                  add          a2, t1, a1
                  sb           s11, -7(s3)
                  sb           a4, -14(s3)
                  sb           t0, 12(s3)
                  lbu          a5, 2(s3)
                  lb           zero, 8(s3)
                  sb           s7, -2(s3)
                  slt          a6, sp, a3
                  xor          a0, tp, t5
                  lb           gp, -12(s3)
                  lbu          a5, -16(s3)
                  lh           a3, -5(s3)
                  lw           gp, 11(s3)
                  slti         a4, t0, -49
                  lbu          t2, 14(s3)
                  lb           s0, -8(s3)
                  sb           s8, 7(s3) #end riscv_load_store_rand_instr_stream_3
                  xori         a2, a0, 966
                  sra          gp, s9, s11
                  srli         a4, s8, 0
                  and          t5, sp, s5
                  sub          a1, a1, s1
                  srl          a0, t6, a0
                  ori          s1, s6, -2045
                  ori          s9, a0, 139
                  xor          zero, t3, s9
                  slli         ra, s3, 5
                  beq          s5, s1, 13f
                  slti         t3, a7, 1402
                  slti         s4, s9, 1395
13:               sra          s5, t0, ra
                  srli         ra, a5, 6
                  bltu         s6, t1, 28f
                  slt          s5, s3, s3
                  beq          s7, s9, 25f
                  srai         a1, s8, 3
                  ori          a7, zero, 1329
                  sub          a4, t6, ra
                  blt          gp, zero, 37f
                  srl          tp, s3, a4
                  blt          a2, s3, 43f
                  sltiu        gp, s4, -1099
25:               xori         a5, t4, 364
                  sltu         t6, s7, s10
                  nop
28:               bltu         t3, a0, 40f
                  sltiu        s0, s4, -1949
                  bge          s6, s9, 47f
                  sll          a0, s8, s3
                  addi         a7, tp, -985
                  bne          a2, s11, 34f
34:               bge          a7, s10, 37f
                  slli         t0, a0, 9
                  beq          ra, s8, 45f
37:               bgeu         sp, a2, 54f
                  andi         s1, t0, 43
                  srli         a6, a2, 13
40:               andi         s3, a4, 177
                  bne          s10, s11, 43f
                  srli         s7, a3, 29
43:               ori          t4, a6, 130
                  bltu         s10, s4, 63f
45:               xori         a5, s9, -1101
                  addi         a7, s5, -1942
47:               bgeu         a1, a4, 54f
                  blt          a5, sp, 56f
                  blt          s2, s9, 68f
                  srli         t5, s10, 17
                  andi         t4, s6, -378
                  and          a3, zero, sp
                  sll          s9, s10, s6
54:               add          gp, s1, a4
                  nop
56:               ori          a0, a5, -844
                  xor          t1, s8, s3
                  bgeu         t0, zero, 72f
                  bgeu         s4, s1, 70f
                  slt          t6, t4, sp
                  sll          zero, s9, a2
                  sll          a3, ra, zero
63:               sll          s1, a2, zero
                  srl          a1, s8, s4
                  sra          s0, s11, t6
                  andi         t5, s10, -1345
                  sltu         s0, t2, a4
68:               srl          a7, t1, t6
                  nop
70:               or           t5, s10, t1
                  andi         t2, t5, -881
72:               lui          s8, 974071
                  slt          s10, s8, t5
                  xori         tp, sp, -332
                  nop
                  bltu         s5, gp, 91f
                  slt          zero, ra, a2
                  sltu         t0, t0, s5
                  slli         s8, s3, 24
                  nop
                  andi         s8, ra, -1554
                  sltu         tp, a6, gp
                  slti         s9, s11, -426
                  auipc        t4, 794678
                  sltiu        gp, s8, -502
                  xor          t1, a3, tp
                  nop
                  bge          s8, a4, 89f
89:               srl          s10, s10, t2
                  bge          a1, a4, 100f
91:               andi         zero, t3, -1861
                  sltiu        s9, a2, 668
                  sub          t1, sp, t2
                  srli         tp, s6, 24
                  or           a0, t0, t4
                  nop
                  add          t1, tp, s1
                  bne          gp, s5, 108f
                  sub          a6, a3, s10
100:              ori          ra, t6, -1069
                  srl          a2, s7, t2
                  and          s6, a7, a2
                  auipc        a2, 12641
                  xor          s10, s8, gp
                  srli         a2, a7, 17
                  lui          a2, 782069
                  auipc        t3, 188748
108:              srli         s8, zero, 11
                  addi         s4, t1, 196
                  ori          s8, ra, 1580
                  slli         a4, s5, 8
                  srai         t6, s9, 20
                  bltu         t5, s7, 132f
                  and          s10, t2, s5
                  nop
                  la           t2, region_1+870 #start riscv_load_store_rand_instr_stream_8
                  sub          gp, sp, s5
                  lb           s0, -829(t2)
                  lui          s1, 589320
                  sll          s0, s6, t0
                  andi         a5, s11, -26
                  lbu          t5, -637(t2)
                  lui          s4, 872768
                  or           a6, ra, s4
                  or           t6, s1, t3
                  lbu          gp, 1077(t2)
                  slt          s1, zero, t6
                  sb           a1, 209(t2)
                  lh           a5, -98(t2)
                  lb           s0, 543(t2)
                  auipc        s5, 583682
                  nop
                  lbu          a0, -350(t2)
                  sb           a0, -286(t2)
                  sll          a3, a4, t2
                  xor          a3, a4, s10
                  sub          s0, s1, t1
                  srai         t1, s0, 9
                  slli         t6, s1, 26
                  xor          s6, a1, s6
                  lbu          zero, 37(t2)
                  sb           s3, -661(t2)
                  lbu          a5, 981(t2)
                  lb           a4, -38(t2)
                  lbu          t5, 47(t2)
                  ori          t0, a2, -1554
                  lh           t3, 514(t2)
                  ori          a0, s6, 1876
                  slti         s4, a3, -658
                  sb           t0, 1073(t2)
                  lbu          t0, -351(t2)
                  or           t1, a0, a3
                  sb           s4, 1015(t2) #end riscv_load_store_rand_instr_stream_8
                  sltu         s1, t1, s4
                  add          t5, s2, s10
                  sltiu        s0, t6, -1919
                  srai         s5, gp, 5
                  bltu         t4, a4, 137f
                  slt          a1, a5, s2
                  slt          gp, s5, s0
                  sub          s8, a2, t0
                  sub          s10, t2, a3
                  slti         ra, t0, -786
                  slt          a0, a7, s8
                  bgeu         s0, s10, 135f
                  sub          a1, t3, s1
                  bne          s3, t5, 140f
                  bgeu         s6, t4, 144f
                  srl          s5, tp, ra
132:              sltiu        t6, s6, 565
                  ori          a7, s0, 943
                  xori         t2, s5, -1028
135:              sra          s10, s7, s5
                  add          s3, s1, s6
137:              nop
                  nop
                  slt          a3, s10, a5
140:              xor          a4, s8, t0
                  ori          s8, t0, -339
                  bne          s8, s1, 145f
                  ori          t3, s3, 1143
144:              slli         a2, s3, 8
145:              sll          t0, t4, a2
                  or           s4, s7, t2
                  and          a0, s5, a4
                  auipc        t6, 709454
                  slli         zero, tp, 19
                  xori         t3, s7, -988
                  bgeu         s9, a1, 153f
                  sub          zero, a1, s4
153:              srli         s5, s8, 30
                  and          t0, s7, t2
                  blt          ra, a1, 158f
                  bgeu         sp, t0, 173f
                  srai         a6, zero, 13
158:              sltu         a2, s4, t0
                  sra          t5, gp, a1
                  slti         gp, t6, -1167
                  lui          t0, 330253
                  slti         t6, t4, -1481
                  addi         a1, a0, 2031
                  or           s6, s8, s0
                  blt          a4, a3, 181f
                  lui          t0, 751820
                  sra          t6, s10, s11
                  bgeu         a0, t3, 185f
                  sll          s0, s3, s11
                  or           a3, t5, a1
                  blt          s3, t4, 173f
                  srl          s5, s0, s10
173:              slt          gp, sp, a0
                  blt          a3, t2, 182f
                  and          ra, t2, s5
                  beq          s9, t2, 178f
                  srl          t0, a1, zero
178:              ori          a7, a7, 187
                  ori          s0, s9, -488
                  blt          a1, s6, 195f
181:              bltu         t4, a5, 200f
182:              add          t1, s6, s1
                  sra          s3, s8, ra
                  lui          s4, 459267
185:              bne          a1, s3, 192f
                  slt          t6, s7, sp
                  sub          a0, s6, a5
                  nop
                  slli         s5, s3, 5
                  xor          a5, s1, a7
                  bltu         s8, zero, 202f
192:              add          a7, sp, a3
                  slti         a1, s10, 1723
                  xori         t6, t6, -1760
195:              blt          s7, t1, 209f
                  nop
                  beq          gp, t5, 209f
                  bge          a4, t6, 211f
                  srai         a4, a2, 5
200:              bgeu         a5, s0, 203f
                  andi         s1, a5, -442
202:              bge          s0, zero, 205f
203:              slti         a7, s0, -414
                  lui          s7, 82722
205:              andi         a4, t4, -1351
                  blt          t1, t6, 223f
                  or           t1, a7, s7
                  xor          s6, s10, zero
209:              ori          a3, s5, 1006
                  and          a1, s9, zero
211:              sra          s9, s5, s3
                  beq          s2, s9, 215f
                  auipc        tp, 584677
                  sltu         s6, t3, t3
215:              xor          a2, t1, s9
                  or           zero, tp, s3
                  xor          gp, sp, zero
                  ori          t6, a7, 1216
                  bltu         s0, s5, 229f
                  srai         t1, s7, 4
                  bge          ra, t0, 232f
                  nop
223:              bge          t1, a1, 242f
                  srli         a5, a5, 1
                  sra          a3, a2, sp
                  ori          t5, ra, -661
                  addi         t5, t4, 1574
                  or           a2, s2, a1
229:              slti         zero, s4, 1882
                  addi         a3, s3, 1367
                  blt          ra, t6, 234f
232:              blt          tp, s1, 233f
233:              auipc        a6, 129311
234:              slti         s3, t0, -339
                  srli         s5, t5, 8
                  auipc        s8, 229233
                  addi         s8, t3, -122
                  auipc        t4, 939354
                  srli         a1, zero, 17
                  slti         s7, s9, 1257
                  sub          t4, t1, a0
242:              blt          a7, s5, 251f
                  sltiu        a1, s11, 281
                  xor          s9, a2, t3
                  srl          s7, s6, t1
                  and          a1, s1, s6
                  bne          t3, zero, 255f
                  srai         t2, s2, 19
                  beq          s4, s4, 269f
                  addi         a5, a0, -2009
251:              auipc        a2, 489680
                  slli         a7, t5, 19
                  srl          s5, s6, a2
                  xori         t0, a3, 595
255:              sra          a7, s4, sp
                  andi         a2, s3, 1226
                  srai         t2, tp, 3
                  slti         s4, t3, -321
                  nop
                  nop
                  ori          s7, a1, 971
                  nop
                  sltu         a3, s0, a0
                  or           a6, a5, s6
                  sltu         s6, a6, gp
                  add          a2, a2, t6
                  andi         a0, tp, 1957
                  srai         a2, gp, 11
269:              bge          a5, t1, 270f
270:              sra          a7, s2, s3
                  slti         s3, s5, 618
                  andi         a0, s8, -1490
                  sltu         a0, s1, s0
                  sub          s3, s6, a7
                  beq          s6, s9, 283f
                  srai         t5, s9, 17
                  la           a7, region_1+1391 #start riscv_load_store_rand_instr_stream_4
                  lbu          a4, -5(a7)
                  sb           a2, -4(a7)
                  lb           ra, -4(a7)
                  sub          t5, zero, a4
                  sh           t3, 7(a7)
                  lb           s3, 2(a7)
                  slt          s4, ra, t5
                  lb           a1, -10(a7)
                  sb           a0, 12(a7)
                  sb           a3, -1(a7)
                  sll          a0, s11, s4
                  lb           s5, 14(a7)
                  sltu         a2, s4, a3
                  lhu          s3, -13(a7)
                  sb           tp, -9(a7)
                  lbu          a6, 4(a7)
                  lb           a3, -13(a7)
                  lb           s10, -11(a7)
                  sb           sp, -9(a7)
                  sw           s4, -11(a7)
                  sh           s8, 3(a7)
                  lbu          s3, 8(a7)
                  lw           zero, -7(a7)
                  xor          zero, a1, a1
                  slt          s8, t5, t0
                  slli         s10, t0, 24
                  xor          t5, s4, s11
                  add          t2, s3, s2
                  sb           sp, -4(a7)
                  lh           s0, 7(a7)
                  sw           ra, -11(a7)
                  lbu          ra, 8(a7)
                  andi         tp, s2, 76
                  sb           a1, 2(a7)
                  sb           s9, -11(a7) #end riscv_load_store_rand_instr_stream_4
                  slti         a4, t6, 1642
                  sra          s10, s0, s10
                  beq          s3, t5, 293f
                  sll          s6, ra, s9
                  xor          a6, gp, a4
                  slti         t2, s8, -847
283:              xori         s7, a2, 1122
                  slli         a7, a7, 2
                  slti         t1, t1, 1696
                  nop
                  sltu         s8, a6, s1
                  srai         t6, s9, 13
                  add          a4, s4, s11
                  sltiu        t5, a7, 823
                  and          s5, gp, s10
                  and          tp, a2, a2
293:              bne          a0, s10, 312f
                  xori         s8, s1, -74
                  beq          s2, a3, 305f
                  auipc        a6, 1018083
                  blt          s8, a0, 305f
                  bge          s8, a3, 306f
                  auipc        s3, 56523
                  andi         t4, s1, -202
                  bge          s7, s2, 320f
                  xori         t4, a2, -1557
                  sltiu        a7, t4, 275
                  sltiu        a3, a6, -2020
305:              sll          s0, t3, a2
306:              srl          s4, s7, t6
                  sltu         s3, s11, gp
                  srl          tp, t1, a6
                  srai         s0, a2, 14
                  and          zero, t0, s7
                  sub          s4, a2, t1
312:              auipc        ra, 1045481
                  bge          a6, s6, 330f
                  sub          s0, t1, a5
                  xori         a5, s1, -1412
                  sub          a5, a6, tp
                  bgeu         a6, s8, 324f
                  srai         t4, a6, 25
                  sltiu        gp, t5, 1773
320:              or           a2, s3, a3
                  srai         a7, a6, 5
                  bge          s3, s4, 335f
                  sltiu        tp, zero, 547
324:              slti         s7, s3, 687
                  nop
                  lui          s5, 396049
                  add          ra, a7, ra
                  slti         a0, s9, 1971
                  srai         s10, t3, 27
330:              sub          a5, s0, t2
                  sll          s5, sp, s11
                  xori         t0, a2, 168
                  add          gp, t4, s8
                  addi         s0, t3, -590
335:              addi         s9, a1, -1277
                  bltu         a3, s6, 339f
                  sll          a6, a1, ra
                  slti         s1, s1, -1163
339:              andi         gp, a4, -1006
                  andi         s7, a4, -403
                  bltu         s7, tp, 353f
                  bgeu         t6, s3, 362f
                  add          a5, zero, t6
                  auipc        s9, 67515
                  and          s9, t2, s4
                  srl          t6, t4, t6
                  sub          tp, a5, t5
                  and          zero, a1, s3
                  srli         a5, sp, 29
                  srl          s8, s6, a5
                  ori          a6, a7, 1865
                  srai         ra, t3, 24
353:              lui          a7, 446484
                  andi         tp, a1, -1423
                  blt          a3, a0, 358f
                  slt          t3, gp, t0
                  xori         s0, sp, 1786
358:              sltu         s6, t1, t5
                  sub          t6, tp, t0
                  bgeu         s8, s0, 370f
                  add          s8, ra, t1
362:              lui          t2, 49025
                  andi         s8, a3, 905
                  xor          ra, gp, t5
                  addi         a2, ra, -583
                  bne          s6, t1, 380f
                  andi         s8, s5, 5
                  bgeu         t1, s7, 369f
369:              slli         tp, gp, 11
370:              sll          a4, t3, t6
                  sltiu        t0, s10, -87
                  slti         t3, a7, 82
                  bltu         a5, t6, 374f
374:              ori          t4, a5, -457
                  and          s1, t4, s6
                  srli         t5, gp, 30
                  nop
                  srli         a5, t4, 29
                  bgeu         t2, t4, 396f
380:              sltiu        a1, zero, 194
                  or           ra, s8, s3
                  slti         t1, t4, -650
                  sra          t0, a3, t6
                  ori          a5, a0, 950
                  lui          s7, 572156
                  bne          t3, a5, 401f
                  ori          ra, a4, 1400
                  lui          s7, 438774
                  sltu         a7, s6, t1
                  slli         s7, s2, 20
                  auipc        s1, 130904
                  bltu         s2, a7, 401f
                  blt          s3, a0, 412f
                  addi         t3, a3, -1642
                  bgeu         s7, a2, 411f
396:              bgeu         s4, s1, 410f
                  blt          a6, s5, 400f
                  add          zero, a1, sp
                  sltu         s5, t5, s8
400:              add          t6, a6, s11
401:              slti         t1, a4, 1573
                  lui          a1, 164573
                  bne          s5, a7, 411f
                  andi         s5, t2, -844
                  xori         t2, s6, 1199
                  srai         a7, a6, 28
                  xori         zero, t2, -897
                  sra          t0, t4, a0
                  bltu         s0, s8, 412f
410:              bltu         t0, t5, 421f
411:              srli         gp, a2, 12
412:              srl          a0, a3, a2
                  addi         a5, a2, 1431
                  beq          s11, s6, 416f
                  bge          t4, s8, 417f
416:              slt          gp, s9, t6
417:              bge          a6, tp, 436f
                  srl          ra, a0, a6
                  bne          t1, s0, 430f
                  slti         t2, t6, 215
421:              slti         a1, s1, -631
                  bltu         s7, s9, 439f
                  slti         a1, a3, 1203
                  andi         ra, a7, -1716
                  bge          a3, s3, 435f
                  and          a1, s7, s5
                  sub          s5, s7, t0
                  sltu         s3, t5, t6
                  slli         t5, s5, 14
430:              slti         a0, s2, 1695
                  addi         a6, s7, 1259
                  addi         s3, a3, 927
                  and          s1, s11, s7
                  xori         a6, t4, -302
435:              sub          t1, s9, a1
436:              or           a4, a3, s11
                  andi         t5, a2, 151
                  nop
439:              slt          s4, s6, t5
                  nop
                  sltiu        s9, a6, -1054
                  slli         a1, s1, 31
                  sltu         s5, s4, tp
                  bge          zero, s3, 447f
                  slt          s0, a3, s11
                  sltu         a1, ra, s7
447:              ori          a1, t4, 1748
                  srli         a2, a3, 10
                  xor          s4, s1, a0
                  sltiu        t3, zero, 341
                  bgeu         sp, s1, 452f
452:              srli         a5, a3, 6
                  lui          a3, 903595
                  sll          zero, s6, s11
                  andi         a7, t2, -1321
                  slti         s1, zero, 221
                  blt          t5, t3, 473f
                  and          a6, s4, t0
                  srli         t4, a2, 8
                  srli         s0, s9, 20
                  sltiu        s4, s1, -1990
                  sltu         s9, t6, sp
                  bne          a7, a7, 471f
                  slti         a7, s6, 2011
                  or           a5, t0, t3
                  sll          t6, s1, a2
                  sll          a5, s5, s2
                  sra          a5, t0, a1
                  nop
                  bgeu         t4, t2, 473f
471:              ori          tp, s9, -1517
                  srai         tp, ra, 9
473:              addi         t0, t1, -1672
                  bgeu         s8, t1, 491f
                  andi         t4, t1, 489
                  addi         t5, a2, -1474
                  xor          a0, ra, a4
                  sra          ra, ra, a7
                  add          a4, t4, s0
                  bltu         a3, s8, 481f
481:              auipc        s0, 439246
                  and          t5, s11, ra
                  auipc        t2, 294009
                  lui          a4, 470525
                  nop
                  nop
                  nop
                  sltu         ra, s11, zero
                  bltu         a0, s8, 491f
                  auipc        t6, 959141
491:              add          s9, s6, s4
                  sra          a5, a1, tp
                  bge          a7, a0, 512f
                  addi         t0, t6, 266
                  add          a7, zero, s6
                  beq          s8, a5, 505f
                  add          s7, s5, s4
                  sltiu        gp, s6, 319
                  srai         t0, t1, 23
                  bge          a0, a2, 515f
                  sll          t6, a2, t3
                  lui          s3, 268825
                  sra          t3, s2, t0
                  auipc        a6, 116084
505:              srai         t6, t3, 1
                  and          s5, sp, t3
                  auipc        s4, 618515
                  bgeu         a3, a1, 511f
                  slt          s1, a6, t3
                  slt          s4, sp, t1
511:              srl          s5, t4, a5
512:              sltu         t4, ra, a2
                  auipc        t5, 798250
                  sltu         a3, a5, tp
515:              slt          zero, a1, s6
                  lui          a2, 782245
                  and          t0, s0, tp
                  add          a3, a4, a0
                  bltu         s2, t4, 536f
                  ori          t2, s3, 135
                  or           ra, a3, s9
                  slt          s0, a7, t5
                  blt          s7, s0, 533f
                  and          a6, t6, a4
                  xor          t4, a0, s9
                  slt          a1, s5, ra
                  ori          s6, a2, 46
                  slt          a1, s8, a6
                  sra          t0, s9, a3
                  srl          t1, t3, t4
                  andi         s5, t1, 19
                  srl          a1, t0, s2
533:              blt          a2, s1, 541f
                  or           gp, s7, t4
                  slli         s10, s11, 16
536:              srli         s8, t6, 27
                  xor          s3, a1, s5
                  xori         a5, t1, -1558
                  srl          t6, t4, ra
                  slti         t2, s0, -1489
541:              lui          s1, 369573
                  srli         t5, s8, 28
                  slti         t3, t1, -912
                  auipc        t2, 628808
                  sll          t2, a1, a4
                  lui          ra, 589072
                  slti         s0, s8, 922
                  sltiu        a0, a2, 582
                  srai         t2, s6, 17
                  slt          s6, s9, s1
                  add          a5, t4, a0
                  blt          s6, s6, 571f
                  sltu         s7, a3, t2
                  sll          t2, s8, t0
                  or           a2, a7, ra
                  bge          sp, s4, 558f
                  slli         t2, s2, 28
558:              sub          s1, a7, t4
                  sll          s6, sp, a0
                  blt          a4, ra, 563f
                  sra          t6, zero, zero
                  srli         a2, s4, 8
563:              or           s10, tp, a5
                  auipc        a3, 250721
                  add          gp, a4, t3
                  slli         a0, a0, 25
                  sub          s0, a6, zero
                  ori          a3, tp, -1456
                  andi         a3, a0, 197
                  slt          s3, a3, a7
571:              xori         s10, s10, -197
                  bgeu         s11, s1, 586f
                  xor          s10, a0, a5
                  sra          s1, s3, s6
                  srli         t3, ra, 5
                  nop
                  blt          s5, s11, 588f
                  blt          s11, t4, 586f
                  sub          a3, a3, sp
                  srai         a7, t0, 22
                  or           s5, s4, a4
                  bge          s8, sp, 599f
                  slti         s3, t4, -547
                  xori         s9, t3, -473
                  nop
586:              slli         t4, a4, 20
                  srai         s10, a5, 6
588:              slt          s5, t0, s10
                  add          s3, t5, sp
                  or           s5, a4, tp
                  blt          a7, t2, 602f
                  addi         a6, s3, -167
                  slt          s9, ra, t3
                  auipc        s10, 294750
                  blt          s2, a1, 609f
                  sub          s5, s10, s7
                  sll          gp, zero, s4
                  xor          t1, zero, a6
599:              srli         s8, s10, 15
                  slt          gp, s6, t6
                  sll          a6, a5, s1
602:              auipc        a6, 733578
                  addi         a4, t6, 1251
                  or           tp, t5, a3
                  sltu         tp, s9, s3
                  sra          gp, zero, s0
                  slli         a6, t5, 22
                  bltu         t4, s6, 627f
609:              srl          t2, t0, a7
                  xor          t6, s6, s2
                  addi         t0, s6, 1384
                  sltu         a2, s10, a5
                  sll          t1, a3, s5
                  slti         t3, s5, 1879
                  slt          a3, s7, s1
                  xori         tp, t2, 1372
                  sub          a4, t5, a6
                  srai         a3, s11, 14
                  bltu         gp, t5, 639f
                  slt          tp, ra, s5
                  xori         gp, s8, 1335
                  sltiu        t6, a6, -126
                  sub          s7, t2, t2
                  bne          a7, a3, 636f
                  or           a0, zero, a6
                  slti         s9, a3, 1169
627:              bge          s4, s0, 634f
                  addi         a3, a1, 2020
                  slti         s7, a6, 1192
                  sltu         s6, s4, a6
                  xor          t5, s8, ra
                  beq          s11, s7, 642f
                  srl          tp, s3, zero
634:              srli         a6, s6, 3
                  bgeu         s8, s5, 648f
636:              lui          a1, 199248
                  andi         s5, t6, 1319
                  bgeu         t0, s1, 641f
639:              nop
                  auipc        a6, 474322
641:              bge          t5, ra, 658f
642:              sll          s8, s4, a0
                  srl          s4, s10, s10
                  sltu         s8, t2, a3
                  sub          ra, s6, a1
                  xori         tp, zero, -1226
                  slli         a0, gp, 0
648:              sltu         s9, a6, gp
                  bge          tp, t2, 650f
650:              sll          a5, t5, t3
                  srli         s10, s9, 11
                  or           ra, t6, a1
                  sltu         s0, sp, s9
                  beq          sp, t2, 661f
                  srl          t0, s9, t5
                  slli         gp, s7, 0
                  slt          zero, t0, s5
658:              ori          t2, a4, -768
                  bltu         a5, s7, 667f
                  sra          a5, s4, gp
661:              slti         s4, s0, -1461
                  sub          s0, t2, s4
                  slti         s7, t6, 216
                  srai         tp, s5, 12
                  blt          tp, a6, 682f
                  bne          a2, s9, 676f
667:              bne          s10, zero, 681f
                  xor          s5, s1, a7
                  bgeu         s1, a5, 672f
                  nop
                  sltiu        t1, t2, 581
672:              sra          tp, s8, a2
                  srli         t0, s5, 17
                  beq          a0, s7, 685f
                  sll          t4, sp, s5
676:              srli         t0, zero, 4
                  lui          t2, 458585
                  xor          a3, s11, ra
                  srli         s1, t3, 18
                  bge          s3, a1, 696f
681:              andi         t4, a2, 1129
682:              add          s9, a7, t3
                  blt          a7, s1, 691f
                  and          a6, s0, a5
685:              xori         s5, zero, -1592
                  slli         a3, t6, 24
                  sltiu        s10, a2, -256
                  addi         zero, s11, 388
                  la           a5, region_0+1922 #start riscv_load_store_rand_instr_stream_5
                  lui          a6, 883909
                  xor          s4, s8, zero
                  lh           t2, -60(a5)
                  srli         s0, t2, 14
                  xor          t5, sp, t3
                  lb           a7, -28(a5)
                  lbu          gp, 29(a5)
                  and          s8, t5, t4
                  sh           s9, 20(a5)
                  sub          gp, ra, s3
                  sb           s10, -35(a5)
                  sb           a6, 36(a5)
                  auipc        s8, 320380
                  sub          s8, s7, ra
                  lbu          t6, -15(a5)
                  lbu          tp, -20(a5)
                  sb           t5, -59(a5)
                  sub          t1, a4, gp
                  lbu          s7, -15(a5)
                  auipc        zero, 93085
                  srli         s9, a1, 20
                  sll          t1, s5, t2
                  sub          s6, s2, s1
                  lbu          t1, -57(a5)
                  sub          s1, a6, ra
                  sb           gp, 31(a5)
                  slti         t6, s6, 1333
                  srl          s1, s11, sp
                  auipc        s3, 688266
                  or           s6, s9, s9
                  xor          t6, t6, s8
                  sll          a7, s9, s8
                  addi         a6, a2, -1716
                  lbu          s4, -43(a5)
                  lbu          s6, -37(a5)
                  and          t2, tp, s10
                  auipc        t4, 982354
                  srli         t6, s0, 13
                  and          s1, s0, t6
                  add          a3, s9, a3
                  sra          a1, gp, a7
                  lbu          tp, -57(a5)
                  lbu          t6, -39(a5) #end riscv_load_store_rand_instr_stream_5
                  and          zero, t4, a5
                  bge          s1, a0, 693f
691:              sltu         a6, s9, s11
                  sltu         a2, t4, a3
693:              lui          t0, 664302
                  slt          s4, a2, s10
                  bne          a6, s3, 709f
696:              addi         a1, s5, -959
                  auipc        a6, 396443
                  slli         t0, t2, 2
                  add          t1, t2, zero
                  srli         tp, a7, 17
                  addi         a3, gp, -1620
                  and          t0, s8, a6
                  lui          t3, 699829
                  and          zero, t3, a4
                  srli         gp, a6, 25
                  xori         tp, s3, -998
                  auipc        a3, 161098
                  bne          s8, t2, 711f
709:              nop
                  ori          s0, s8, -197
711:              sra          a1, a2, a6
                  sll          a7, sp, s10
                  nop
                  srli         a3, t2, 30
                  andi         s8, s0, -213
                  add          s9, s6, a1
                  xor          a6, s1, a7
                  beq          s1, a1, 731f
                  sltiu        a5, gp, -1385
                  sll          a5, gp, s8
                  or           a5, a6, a7
                  addi         a4, ra, -855
                  auipc        s6, 849436
                  or           a2, t2, s8
                  add          s7, s10, tp
                  bne          t2, t1, 735f
                  bgeu         s11, a2, 746f
                  xor          t4, ra, s6
                  srli         t3, a2, 8
                  srli         a4, s7, 28
731:              and          s0, a4, zero
                  and          t3, t0, s7
                  addi         a2, s3, 1633
                  lui          s6, 8969
735:              srl          s3, a7, t4
                  add          a6, s3, a3
                  slti         t1, s5, -563
                  auipc        zero, 299073
                  auipc        s4, 1033846
                  sll          t4, a5, gp
                  auipc        s9, 27248
                  sub          t5, t3, a1
                  or           t5, s2, ra
                  addi         a7, t2, 1904
                  la           s5, sub_4
                  slti         s4, s3, -100
                  sltiu        s0, t2, -1885
                  or           tp, sp, gp
                  lui          s6, 181692
                  addi         s5, s5, -194
                  sltu         a1, a2, zero
                  andi         s8, zero, 629
                  slli         s6, a5, 29
                  bne          zero, t1, sub_2_j6 #branch to jump instr
                  sltu         a7, t1, a7
sub_2_j6:         jalr         s10, s5, 195 #jump sub_2 -> sub_4
                  srai         t0, a2, 24
                  bgeu         s8, s6, 746f
                  xor          gp, s10, s8
746:              sll          a1, s4, s7
                  bgeu         a5, s0, 748f
748:              nop
                  xor          zero, t2, a2
                  sra          t4, a2, s5
                  srli         a5, ra, 21
                  xori         t0, sp, -1015
                  andi         t1, a6, -1787
                  slti         ra, t4, 178
                  sub          s4, a0, a4
                  beq          sp, s3, 773f
                  srli         s6, a1, 18
                  andi         a0, s2, -332
                  sltu         s4, t3, a7
                  bltu         t3, a4, 770f
                  nop
                  ori          ra, ra, 1959
                  bne          s8, ra, 778f
                  and          s1, t5, gp
                  sltiu        t5, s5, 1975
                  lui          a2, 1028647
                  bne          s3, sp, 769f
                  bgeu         a6, s3, 787f
769:              bltu         s6, s4, 780f
770:              bgeu         s7, a5, 790f
                  sltiu        gp, a5, 825
                  slt          a6, t3, s8
773:              sra          s0, s6, tp
                  and          t5, s4, s7
                  srl          s1, s11, s1
                  andi         s8, s1, 89
                  and          a0, a1, t1
778:              srl          t2, s11, tp
                  sltiu        s0, s5, -1584
780:              xori         a4, s0, -102
                  xor          s3, s1, s5
                  and          s4, sp, zero
                  nop
                  srli         t2, s8, 24
                  bge          s5, s3, 804f
                  bgeu         s10, t5, 798f
787:              addi         s8, gp, 10
                  sll          t3, t1, s6
                  slli         a3, a1, 19
790:              bgeu         t5, a5, 798f
                  blt          ra, s11, 794f
                  beq          s8, a3, 805f
                  slti         ra, t4, -1982
794:              sltiu        t5, t6, -1998
                  srl          a7, s4, s4
                  sub          a0, a0, s9
                  xor          a7, s11, a6
798:              xor          s1, t6, ra
                  beq          a2, s9, 813f
                  add          a6, s5, t2
                  xor          t4, s4, s4
                  addi         t3, t6, 1167
                  bge          t1, t6, 804f
804:              ori          t6, t5, 1315
805:              andi         zero, s9, 1485
                  lui          s3, 330195
                  srai         t2, t0, 20
                  and          s8, a3, s0
                  sltiu        a0, s8, -1789
                  bne          s9, ra, 821f
                  ori          ra, a0, -261
                  srl          s9, t1, t5
813:              blt          a2, t4, 816f
                  sll          a6, a3, s7
                  sltu         t2, a3, t4
816:              xor          s4, a2, t6
                  xor          t0, s7, s2
                  add          a4, a0, t6
                  ori          t6, t6, -698
                  add          tp, a7, t5
821:              sltu         zero, t1, a2
                  xori         a2, a3, -938
                  slt          s4, s11, t0
                  xori         a1, t0, 1736
                  sub          s4, t4, s11
                  bgeu         s11, t6, 837f
                  xori         gp, a7, -757
                  blt          s6, s7, 845f
                  blt          a7, s7, 837f
                  xori         a4, t1, 1810
                  srai         s6, a4, 30
                  slli         s8, sp, 29
                  or           t2, t2, s8
                  bgeu         t5, ra, 842f
                  or           t3, a4, t4
                  slt          s8, a0, s2
837:              bne          a5, a2, 851f
                  slli         s10, sp, 30
                  add          a6, s0, gp
                  srl          t1, t3, s1
                  bltu         t2, s10, 856f
842:              srli         s3, t3, 12
                  and          t4, a2, s1
                  ori          gp, gp, 1850
845:              blt          s11, s9, 865f
                  beq          a4, s6, 865f
                  srai         a5, gp, 28
                  nop
                  sub          s3, ra, s1
                  srli         t1, s1, 16
851:              and          s0, t2, a2
                  sltu         s9, a4, s7
                  slti         t4, t3, -1137
                  addi         t1, t4, 1598
                  addi         s3, t5, 1344
856:              bgeu         s5, a7, 873f
                  slti         t0, s8, 1611
                  srl          zero, s4, s7
                  slt          a4, gp, a6
                  srl          s3, ra, t0
                  bgeu         gp, s7, 864f
                  srai         s7, s11, 21
                  beq          s2, a4, 882f
864:              bge          a5, a2, 874f
865:              sll          t6, s4, zero
                  bgeu         t1, s8, 875f
                  blt          s2, s3, 886f
                  sra          s8, a1, s8
                  and          tp, s7, s3
                  lui          s0, 540737
                  slli         s8, s1, 6
                  sra          zero, t2, s9
873:              and          t1, t0, s3
874:              bne          a7, a2, 875f
875:              sra          t4, gp, a3
                  auipc        a4, 274960
                  ori          a2, s6, -1374
                  srli         t4, zero, 8
                  bgeu         s0, s2, 881f
                  xor          a2, ra, s11
881:              sra          s1, s9, zero
882:              add          s3, s4, zero
                  auipc        a5, 131534
                  bge          t5, t6, 894f
                  bne          ra, a3, 897f
886:              sll          s3, t3, t2
                  bne          t6, t0, 903f
                  addi         a3, sp, -81
                  bne          a4, s10, 906f
                  sub          t5, a7, s3
                  sltiu        s7, t6, 806
                  nop
                  andi         s9, a1, 652
894:              or           a0, sp, s2
                  srl          t4, s2, t2
                  srl          a5, a5, t0
897:              bgeu         a6, s2, 899f
                  ori          s10, a1, 1255
899:              slti         s7, zero, 1376
                  bltu         s9, s6, 903f
                  add          t6, t1, a7
                  sra          s3, a6, s7
903:              sll          s1, t6, s0
                  sltu         zero, s8, s11
                  bltu         zero, s7, 913f
906:              and          t5, a6, zero
                  sra          gp, s9, s0
                  srl          a7, s9, s0
                  slli         s4, gp, 11
                  sll          s8, tp, t4
                  ori          a5, a7, -1278
                  srl          s7, t4, t2
913:              slt          tp, s0, zero
                  blt          s8, s6, 921f
                  sra          ra, gp, zero
                  add          s9, a4, a3
                  slti         s0, s7, 974
                  bgeu         t0, a4, 919f
919:              nop
                  lui          a0, 734712
921:              auipc        s9, 178060
                  bne          a3, s6, 939f
                  sltiu        s3, tp, 1386
                  xor          s4, a5, s5
                  or           a0, s7, s3
                  sll          s9, t6, a4
                  or           a4, s2, a6
                  addi         s7, s1, 153
                  auipc        a0, 754295
                  sll          s4, a0, a2
                  sll          zero, gp, ra
                  blt          gp, sp, 949f
                  srli         a7, t5, 12
                  sll          a5, s1, ra
                  bltu         t2, t4, 946f
                  lui          gp, 518026
                  sll          a5, a6, tp
                  addi         ra, s7, -170
939:              bltu         a0, t5, 941f
                  sra          s7, a7, s0
941:              addi         s10, s0, -635
                  slt          a2, s11, gp
                  xor          a3, s4, s11
                  and          s4, ra, s3
                  sra          s0, s2, t0
946:              sltiu        s6, a6, 1774
                  lui          a5, 487511
                  srl          a6, s0, a7
949:              sltiu        s6, ra, 1890
                  nop
                  nop
                  lui          t1, 1009836
                  or           t1, s0, s10
                  addi         a6, s0, 300
                  sltiu        s5, a1, -423
                  srai         tp, t6, 31
                  bge          a4, a2, 974f
                  and          s10, a7, t3
                  slli         a4, gp, 14
                  and          t0, zero, s6
                  addi         s5, s7, -1286
                  sub          a7, s4, s11
                  bltu         s0, t1, 976f
                  sll          s3, tp, s11
                  sltu         tp, s11, a7
                  andi         a6, t3, 973
                  sltu         s9, a6, s8
                  nop
                  srli         tp, s11, 8
                  sub          a2, s0, s10
                  xor          ra, a3, s5
                  slti         s1, a1, -1460
                  ori          s0, ra, -1409
974:              sll          ra, a0, a5
                  nop
976:              beq          s0, t1, 984f
                  and          s8, t1, s1
                  xori         s0, t0, 623
                  lui          t2, 635656
                  srl          s1, ra, s9
                  bltu         s1, t1, 1001f
                  slt          a2, t6, zero
                  bltu         s6, a5, 994f
984:              sub          s3, s2, gp
                  sub          gp, t2, a0
                  slt          s4, a7, t0
                  addi         zero, s9, -1130
                  sra          s6, t3, t0
                  blt          s10, s1, 1001f
                  auipc        s1, 309509
                  andi         t0, a1, -1699
                  auipc        s10, 715779
                  srli         a7, zero, 21
994:              sltiu        ra, s10, -738
                  xor          t1, s0, t0
                  sll          a5, t5, a3
                  sub          s8, s6, zero
                  andi         t6, t4, 1349
                  bge          s9, s5, 1013f
                  sra          a3, tp, s4
1001:             xor          s8, s0, t0
                  sltu         t1, gp, t0
                  sltu         t5, s7, s2
                  andi         a6, s4, -1804
                  andi         a6, t1, 501
                  slti         a6, a7, -1914
                  addi         s1, t3, -1522
                  xori         t1, s9, -1948
                  bge          a7, s4, 1012f
                  slli         gp, s8, 30
                  add          a3, s7, t2
1012:             lui          s0, 287367
1013:             slti         a1, s11, 1427
                  srl          t5, a4, s3
                  blt          gp, s10, 1034f
                  bne          t3, s1, 1018f
                  srai         a2, a6, 27
1018:             slli         t4, ra, 23
                  blt          a0, zero, 1026f
                  xori         s7, s11, -953
                  slt          s10, s8, tp
                  blt          s10, a6, 1030f
                  xor          t3, s3, t4
                  lui          t6, 1037995
                  srl          tp, a7, a1
1026:             auipc        t6, 893380
                  srli         tp, t0, 31
                  bne          sp, a6, 1042f
                  bgeu         a6, a4, 1045f
1030:             addi         gp, s4, -526
                  srli         a0, s11, 12
                  andi         t5, sp, -2036
                  sll          s8, s10, s9
1034:             sll          s10, s11, s9
                  bgeu         tp, s7, 1050f
                  sll          t3, a3, t3
                  sltu         s10, a3, gp
                  sltiu        t4, s3, -647
                  bge          s4, t0, 1040f
1040:             srl          t0, a7, t4
                  srli         s5, a5, 8
1042:             srli         t2, s8, 1
                  sra          gp, a2, a7
                  nop
1045:             add          a6, a0, a1
                  srli         a0, s1, 21
                  or           t1, t5, t2
                  slt          s6, s4, gp
                  bge          s6, s6, 1059f
1050:             slli         s4, a0, 26
                  or           s1, s10, s0
                  xori         s5, t3, 1587
                  srai         a4, t0, 10
                  sll          t1, s2, gp
                  srli         t2, s1, 27
                  slt          tp, sp, a4
                  slti         s6, a1, 1875
                  sltiu        a7, t0, -1715
1059:             lui          s4, 159205
                  slti         t1, a5, 256
                  andi         s7, zero, 1021
                  andi         a3, sp, -1840
                  xori         s3, a4, 1782
                  srli         t3, t5, 1
                  bne          sp, s0, 1068f
                  sll          s5, s1, a7
                  add          tp, s2, s11
1068:             slti         s7, t0, -1906
                  blt          t5, t2, 1077f
                  addi         s10, s0, -1953
                  slt          s10, a0, a2
                  andi         a7, s5, 1920
                  sra          s9, s5, gp
                  bne          s3, s8, 1093f
                  and          a2, t4, zero
                  add          s10, s4, t1
1077:             auipc        t3, 98557
                  sltiu        t2, gp, 140
                  lui          s9, 1022843
                  beq          gp, a1, 1089f
                  bge          gp, gp, 1084f
                  addi         s3, t2, 1462
                  srai         t3, t6, 31
1084:             and          t3, t1, sp
                  srl          a3, a2, s2
                  nop
                  sra          t6, a7, s5
                  bge          t0, s7, 1091f
1089:             add          t0, s2, a0
                  bge          a4, s11, 1100f
1091:             xor          t5, a3, s0
                  bne          a5, s2, 1111f
1093:             slti         s8, s11, -1933
                  auipc        gp, 221474
                  sra          t6, s3, a0
                  slli         a6, t2, 16
                  bgeu         t6, s1, 1100f
                  blt          a6, s3, 1108f
                  slti         a5, s9, -991
1100:             xor          s4, a4, tp
                  xor          s3, s6, t0
                  bltu         s4, t5, 1121f
                  srai         t6, s3, 7
                  add          a4, zero, a0
                  slt          s5, tp, s9
                  bne          s6, tp, 1120f
                  slt          zero, a3, a0
1108:             sll          gp, s7, t1
                  or           t1, t0, s7
                  or           t5, s4, t3
1111:             bne          s9, s2, 1128f
                  andi         t1, s4, 73
                  sll          t3, a2, s7
                  xori         s8, a6, 1344
                  slti         t3, s6, -1240
                  and          s1, t6, t0
                  addi         a0, s3, -750
                  sll          a5, tp, s10
                  bge          s4, a5, 1122f
1120:             srai         s7, a5, 24
1121:             srai         t2, s7, 26
1122:             slti         s9, s5, 231
                  blt          t1, s9, 1133f
                  sll          gp, s1, s4
                  and          s0, s10, t2
                  and          a2, a1, s3
                  andi         a2, tp, 1105
1128:             sll          t2, t6, s0
                  bltu         sp, s6, 1138f
                  sltiu        s6, s3, 1893
                  ori          t4, t2, 742
                  ori          ra, t2, -1656
1133:             ori          t2, s5, 1783
                  bge          t6, t1, 1145f
                  sltiu        s1, s3, 1271
                  beq          s1, s7, 1156f
                  sra          a5, s4, s11
1138:             andi         s6, a0, -1289
                  lui          s6, 128918
                  slti         s8, s3, -224
                  add          a2, s2, ra
                  blt          s7, tp, 1158f
                  beq          a0, t5, 1145f
                  ori          t3, s1, 366
1145:             addi         a4, s11, -1303
                  addi         s6, t5, 656
                  ori          zero, s5, 911
                  lui          a1, 402128
                  bne          a7, s7, 1157f
                  xor          s9, zero, tp
                  bltu         t6, s4, 1165f
                  slt          s7, a2, t1
                  addi         a7, s7, 1385
                  bgeu         a7, s3, 1171f
                  beq          s0, s4, 1174f
1156:             bgeu         t1, gp, 1158f
1157:             bge          zero, tp, 1168f
1158:             sll          a3, s9, zero
                  addi         t2, s8, -1688
                  and          a0, t3, a7
                  slt          a5, s6, s7
                  sub          t0, t2, ra
                  addi         t6, a4, 1867
                  bge          s9, tp, 1181f
1165:             and          a2, s5, s4
                  sll          tp, s2, t1
                  addi         s5, gp, -519
1168:             srl          a4, s4, s7
                  srl          s5, s0, sp
                  srli         s0, t0, 4
1171:             xori         a7, t0, -1291
                  andi         t1, s9, -576
                  bge          t2, t5, 1180f
1174:             bltu         s9, a6, 1182f
                  add          a3, s3, a0
                  andi         s7, a2, -1579
                  xori         s4, a1, 1798
                  andi         a0, a1, 1122
                  sltu         t2, gp, sp
1180:             slli         a5, s10, 29
1181:             slt          tp, s9, a4
1182:             bgeu         s8, s1, 1201f
                  sll          ra, a2, s8
                  ori          s9, zero, 1584
                  bne          t4, s6, 1188f
                  bltu         t2, gp, 1194f
                  slt          s0, sp, a1
1188:             lui          t5, 1020703
                  bge          s6, zero, 1202f
                  sll          gp, a3, s10
                  and          s10, zero, s0
                  ori          tp, t6, -1552
                  nop
1194:             nop
                  bgeu         tp, t4, 1207f
                  nop
                  xor          t1, zero, gp
                  slti         tp, ra, -464
                  nop
                  lui          s4, 664657
1201:             nop
1202:             sltu         a6, s7, s0
                  slli         t1, t0, 7
                  slti         a7, s3, 1781
                  xor          s4, s0, s4
                  bge          s9, a0, 1209f
1207:             slli         s5, s11, 0
                  sra          t2, t1, s3
1209:             addi         s4, s5, 1055
                  bge          t0, ra, 1211f
1211:             bge          tp, t6, 1212f
1212:             addi         t0, s5, 1579
                  andi         s7, gp, -289
                  sll          s8, s2, a2
                  add          t6, t0, t1
                  blt          t2, gp, 1231f
                  andi         a0, gp, 396
                  nop
                  slt          s3, s10, s2
                  auipc        a7, 803785
                  slt          zero, t4, ra
                  bltu         s3, t3, 1233f
                  bgeu         zero, zero, 1224f
1224:             sll          s8, s10, gp
                  srli         a7, ra, 16
                  slli         s7, a5, 28
                  auipc        a4, 9267
                  bge          s5, s4, 1236f
                  slti         t2, s1, 1083
                  ori          zero, a1, -221
1231:             bge          a5, s11, 1243f
                  addi         t1, t0, 1035
1233:             bltu         s6, s1, 1234f
1234:             sltiu        a1, sp, 382
                  add          a5, s2, a2
1236:             sltiu        s5, s3, -1248
                  beq          s0, a3, 1250f
                  sub          s3, t2, a3
                  bne          a7, t1, 1258f
                  sltiu        s0, t1, 188
                  or           s9, t3, a2
                  xor          a7, s3, s0
1243:             xori         tp, s0, -362
                  or           s3, s8, ra
                  slli         t3, s1, 7
                  bne          s4, s7, 1248f
                  srli         t5, s5, 31
1248:             or           s0, t1, sp
                  sll          zero, ra, s4
1250:             bge          t6, s7, 1269f
                  or           s3, s2, a4
                  addi         t5, s6, 436
                  or           tp, sp, t5
                  or           s0, s10, s7
                  beq          a6, sp, 1263f
                  sll          s3, s5, a2
                  auipc        s9, 836351
1258:             sltiu        s3, a6, -242
                  srl          a2, a4, a4
                  sll          gp, ra, s4
                  srai         t1, ra, 16
                  nop
1263:             sltiu        t3, s6, -1714
                  addi         t0, s11, 1578
                  sra          t3, t2, a2
                  blt          a5, s4, 1280f
                  bgeu         a1, t0, 1270f
                  slt          s0, ra, a5
1269:             slt          t5, t3, s5
1270:             or           t0, s7, a3
                  sltu         a6, a1, a6
                  srli         a5, a5, 2
                  auipc        s8, 1015775
                  sub          s3, s11, t5
                  sra          t2, a2, s9
                  sra          tp, s1, zero
                  andi         s7, gp, 1576
                  srai         t4, a4, 12
                  slti         a3, a2, 549
1280:             add          s6, a6, gp
                  blt          s6, gp, 1291f
                  beq          a3, a0, 1302f
                  and          s6, a6, s2
                  blt          a2, a3, 1301f
                  blt          a6, gp, 1295f
                  sra          s9, a3, s8
                  auipc        t4, 238259
                  andi         ra, s5, -1165
                  bne          s0, s0, 1306f
                  bltu         s1, s3, 1293f
1291:             srai         s3, a5, 1
                  sltu         a5, a4, s2
1293:             addi         s7, t5, 189
                  sll          a3, t5, s10
1295:             sltiu        t5, s0, 510
                  sub          s0, t4, tp
                  bne          s4, a2, 1304f
                  bltu         s8, s5, 1301f
                  srl          a5, s8, gp
                  andi         t3, t5, -1442
1301:             or           s3, s5, t0
1302:             add          gp, t3, a6
                  and          s7, t5, a3
1304:             srai         s9, a2, 27
                  bge          t4, s4, 1324f
1306:             xori         t2, s3, -1329
                  beq          s1, a2, 1315f
                  nop
                  andi         s8, s3, 698
                  ori          t1, s9, -1521
                  xori         a1, s5, 244
                  slti         s10, a3, 28
                  slt          t3, s3, sp
                  beq          a3, t0, 1317f
1315:             slli         s6, s9, 11
                  sra          a7, s4, tp
1317:             auipc        a7, 205402
                  xori         a7, s2, 1727
                  addi         a7, a6, 1
                  bgeu         s0, s2, 1337f
                  xori         s8, a3, 1131
                  sra          t1, s8, s3
                  or           a1, s3, a6
1324:             srli         s9, s2, 15
                  bge          tp, t0, 1339f
                  bge          tp, s6, 1341f
                  andi         t5, s8, 1721
                  sra          t3, sp, a5
                  slt          tp, t4, s5
                  addi         s7, a1, 36
                  slt          a3, s2, t5
                  srli         s1, a4, 16
                  bne          s3, s5, 1335f
                  lui          s8, 143040
1335:             sltiu        t0, s6, -174
                  srai         t0, ra, 12
1337:             bge          s5, s7, 1346f
                  or           s3, zero, s7
1339:             sltiu        a6, a2, -766
                  srl          a5, s3, s5
1341:             add          t6, zero, a7
                  sltu         s8, t4, s6
                  sub          t4, s6, t4
                  or           s9, s7, s8
                  xor          s1, t5, s7
1346:             bne          a3, s2, 1362f
                  sra          a5, a4, tp
                  bltu         ra, a3, 1359f
                  sll          a7, tp, t3
                  add          s3, t2, a5
                  or           a1, s8, t3
                  xor          a6, s0, s6
                  bge          s2, a6, 1362f
                  xor          a1, t1, t4
                  bne          a0, a3, 1358f
                  slti         a6, a2, -1633
                  sll          t1, a4, s11
1358:             xori         s0, s7, 607
1359:             slli         gp, gp, 3
                  slti         t1, a7, -939
                  srl          gp, s9, t2
1362:             bltu         s0, s3, 1363f
1363:             srai         s6, a6, 8
                  beq          t6, a1, 1375f
                  xori         t2, t0, -1354
                  sra          gp, t6, s8
                  auipc        t4, 562997
                  srai         s5, gp, 25
                  or           a4, a1, tp
                  srai         a6, s4, 21
                  sub          s9, s1, a7
                  bgeu         t3, tp, 1387f
                  or           a0, t3, a7
                  bne          a1, s8, 1391f
1375:             slli         a1, a7, 16
                  srli         s10, t1, 9
                  srl          s6, s5, s7
                  sltu         s9, t0, s9
                  sra          gp, s9, tp
                  blt          a6, zero, 1388f
                  blt          a3, t3, 1397f
                  or           t1, t3, s5
                  bge          t6, t0, 1397f
                  sub          s9, s0, s10
                  xori         t0, a4, -34
                  auipc        s6, 938378
1387:             nop
1388:             blt          a3, s4, 1408f
                  or           s1, a5, gp
                  bne          s3, s9, 1400f
1391:             srl          s0, s3, s0
                  bge          ra, t2, 1411f
                  and          a0, t6, a5
                  sll          zero, s11, s9
                  bge          t6, a4, 1398f
                  add          tp, s2, s7
1397:             ori          ra, ra, 341
1398:             slti         s1, s10, 1406
                  srl          a7, s2, a1
1400:             srai         t0, a3, 21
                  andi         a0, a6, -1005
                  or           t4, t0, a2
                  andi         s0, t1, 778
                  bltu         s9, a1, 1417f
                  addi         a3, s4, -611
                  sltu         zero, s0, s0
                  sll          s0, gp, s5
1408:             slli         tp, t5, 18
                  xor          s6, tp, a4
                  sll          s5, t5, ra
1411:             andi         s1, s3, -158
                  andi         t2, t5, -477
                  bge          s4, a6, 1416f
                  sltu         a0, t0, t0
                  xor          t1, s5, a3
1416:             lui          t1, 864858
1417:             add          a6, t5, s10
                  slli         a6, t0, 2
                  and          t3, t0, t1
                  srli         s1, tp, 3
                  slti         ra, t5, -686
                  or           a7, a1, tp
                  or           zero, s2, s2
                  sra          gp, t6, s10
                  bltu         a3, s0, 1439f
                  bltu         tp, t5, 1438f
                  auipc        s7, 847553
                  bne          a0, s3, 1438f
                  xor          zero, s0, a6
                  add          a2, t3, a3
                  andi         t1, s10, -1127
                  sub          s1, a5, t0
                  bge          s1, t2, 1441f
                  slt          a7, s8, a2
                  slli         a7, t0, 27
                  bgeu         s6, a3, 1438f
                  sll          a5, a4, s4
1438:             slt          t0, sp, s4
1439:             lui          s10, 287200
                  beq          a6, s10, 1447f
1441:             srl          zero, s8, t2
                  slti         a7, t5, 1005
                  bne          ra, tp, 1444f
1444:             bge          a3, s4, 1452f
                  bltu         sp, s4, 1447f
                  sub          s6, t6, a5
1447:             bgeu         t6, gp, 1464f
                  srai         s9, s6, 16
                  lui          t4, 304434
                  srli         t5, zero, 28
                  ori          t5, a4, 533
1452:             srli         s0, ra, 30
                  blt          s6, t5, 1472f
                  bne          a1, s1, 1473f
                  sll          a7, t5, a5
                  xori         t0, a6, 1837
                  sll          t0, a1, a1
                  or           a7, sp, t6
                  srai         s10, a4, 27
                  xori         s9, a3, 877
                  auipc        s6, 954389
                  xor          gp, s10, a5
                  and          ra, a7, a0
1464:             slli         t4, s1, 2
                  lui          s8, 932789
                  andi         gp, a4, 1078
                  srl          t1, a0, tp
                  slt          t3, sp, sp
                  srli         a5, s6, 17
                  sra          a6, zero, s2
                  blt          a1, t4, 1474f
1472:             bge          a6, t3, 1483f
1473:             or           t0, a2, s11
1474:             add          t4, sp, s10
                  bne          s8, t5, 1492f
                  and          s8, s4, s4
                  xor          s10, s7, s5
                  sra          t4, a7, a7
                  slt          ra, a4, a7
                  ori          a3, s7, 190
                  srai         t1, a5, 13
                  bgeu         s0, t0, 1485f
1483:             add          t0, s2, t2
                  sra          t4, s2, a5
1485:             sub          t5, ra, s1
                  srai         a7, a2, 13
                  bgeu         s7, gp, 1494f
                  xor          s9, s6, gp
                  beq          s10, a7, 1497f
                  bltu         t0, ra, 1500f
                  blt          s10, s9, 1494f
1492:             nop
                  bltu         s3, t5, 1510f
1494:             bge          a4, t4, 1508f
                  blt          gp, t1, 1510f
                  xor          tp, t4, s8
1497:             sltiu        t0, s5, 1401
                  srli         t5, ra, 5
                  auipc        a5, 841903
1500:             slt          t2, s2, a6
                  srli         zero, a4, 17
                  bge          a0, s7, 1513f
                  auipc        s5, 874825
                  sra          s10, s6, a1
                  addi         s8, s5, 817
                  add          gp, a1, s8
                  slt          s4, s2, s3
1508:             sll          ra, s3, t1
                  bgeu         a7, s9, 1517f
1510:             sub          s0, tp, a2
                  or           a5, s9, s3
                  bltu         t4, t2, 1522f
1513:             sra          s6, s9, t2
                  ori          s0, t5, 1356
                  bgeu         s3, t3, 1534f
                  bltu         t2, s11, 1518f
1517:             bne          zero, t2, 1528f
1518:             beq          t6, sp, 1537f
                  sub          s3, a5, s7
                  srl          s8, sp, a2
                  blt          t4, t1, 1522f
1522:             sra          s7, gp, t4
                  auipc        s1, 308487
                  xori         s5, s6, 1116
                  bge          s0, t2, 1538f
                  srli         s4, t4, 1
                  srl          t6, s0, gp
1528:             or           t4, t6, s6
                  sltiu        s6, s11, 157
                  bne          a6, a5, 1546f
                  sub          a1, a2, a3
                  slt          t5, tp, a7
                  ori          s8, s5, 105
1534:             sltu         a5, s3, t6
                  srli         t0, tp, 29
                  bltu         t0, a5, 1547f
1537:             addi         a4, s6, 840
1538:             slt          gp, sp, a6
                  sra          tp, s11, s8
                  bge          t4, a4, 1542f
                  add          a2, a3, t2
1542:             slli         t5, sp, 18
                  auipc        t0, 60859
                  slt          s6, s5, a0
                  sll          a3, s5, t1
1546:             ori          a0, s7, 921
1547:             lui          t1, 446314
                  srli         t6, s2, 8
                  srai         s8, tp, 4
                  xor          t3, zero, a2
                  lw           s10, 4(sp)
                  addi         sp, sp, 52
                  sub          a7, tp, ra
                  xori         s9, t5, -1886
                  addi         a6, s2, -1846
2071:             addi x25, x26, 1
2071:             jalr x25, x25, 0
sub_10:           blt          s3, t2, sub_10_stack_p
                  srli         t0, gp, 12
sub_10_stack_p:   addi         sp, sp, -48
                  xor          s0, s0, s7
                  sw           s10, 4(sp)
                  sra          s5, t6, a4
                  sra          zero, s9, gp
                  slt          t5, s2, t3
                  bgeu         tp, s2, 21f
                  andi         t5, t3, -235
                  or           s8, s11, s10
                  ori          s1, a4, -589
                  srl          t3, t2, a5
                  andi         t0, t3, 194
                  ori          gp, a1, 807
                  bne          s3, s11, 29f
                  bgeu         a6, t5, 24f
                  sll          t3, s8, s0
                  bne          t1, s4, 29f
                  sll          s9, s2, s7
                  sub          a6, t2, s6
                  auipc        s0, 1009331
                  andi         tp, t3, 417
                  xori         t0, s1, 1430
                  blt          zero, s10, 29f
                  bgeu         sp, s1, 29f
                  slti         zero, t6, -1198
21:               xori         a4, s3, -170
                  auipc        tp, 470304
                  sra          zero, s5, a5
24:               slli         a3, t0, 28
                  slt          t0, s4, sp
                  srl          t0, t0, s11
                  add          a5, t1, s7
                  and          ra, s2, ra
29:               add          t4, s6, t5
                  add          a5, gp, s3
                  lw           s10, 4(sp)
                  and          a6, tp, s7
                  addi         sp, sp, 48
                  srl          t4, s10, s4
41:               addi x9, x26, 1
41:               jalr x9, x9, 0
sub_8:            beq          s4, s6, sub_8_stack_p
                  srl          ra, t6, ra
                  sra          ra, s9, a5
                  sltu         s6, a5, t5
                  andi         a2, t2, 453
                  sub          ra, zero, t5
sub_8_stack_p:    addi         sp, sp, -8
                  sll          a2, t3, a3
                  add          a3, a2, t0
                  sw           s10, 4(sp)
                  sll          tp, s2, t5
                  add          s5, ra, a0
                  addi         s7, t2, -1340
                  srai         s3, s11, 16
                  ori          t5, a0, -619
                  addi         t6, s10, -1858
sub_8_j13:        jal          s10, sub_9 #jump sub_8 -> sub_9
                  blt          a4, t6, 2f
                  slli         t3, s8, 23
2:                ori          s1, a4, 715
                  srli         a7, s5, 19
                  beq          a7, t6, 16f
                  nop
                  sltu         zero, s10, a4
                  add          a6, a4, t2
                  sra          t2, s3, a7
                  bge          s3, s0, 12f
                  bgeu         s9, t4, 16f
                  or           s6, s6, tp
12:               sltiu        t2, a7, -218
                  srai         s6, a3, 18
                  lui          a4, 583560
                  auipc        s1, 645024
16:               srli         s8, s6, 25
                  sltiu        t1, s3, -1719
                  add          t4, ra, t3
                  lw           s10, 4(sp)
                  slti         a3, s0, -765
                  addi         sp, sp, 8
                  xor          a0, zero, s2
                  ori          a5, t3, 1470
                  slli         tp, s7, 25
                  lui          s3, 52568
                  ori          gp, a5, 1389
                  srl          ra, a4, ra
45:               addi x30, x26, 0
45:               jalr x30, x30, 0
sub_5:            bne          s11, s3, sub_5_stack_p
sub_5_stack_p:    addi         sp, sp, -24
                  xori         s9, a5, -330
                  sw           s10, 4(sp)
                  slli         a3, sp, 4
                  srl          s5, a2, s8
                  la           gp, region_0+1213 #start riscv_load_store_rand_instr_stream_18
                  lb           a4, -132(gp)
                  sb           a5, 42(gp)
                  lh           tp, 247(gp)
                  sh           t0, -71(gp)
                  sb           s11, -33(gp)
                  lb           a2, 248(gp)
                  sll          s1, s11, t0
                  lbu          s1, 204(gp)
                  sb           s1, 48(gp)
                  sb           s6, 143(gp)
                  slt          a3, s2, s3
                  lhu          s5, 189(gp)
                  lh           a4, -63(gp)
                  sb           s8, -146(gp)
                  lw           s4, -129(gp)
                  srai         s0, s1, 23
                  lbu          s5, -34(gp)
                  sb           s6, 124(gp)
                  lb           s4, -166(gp)
                  slli         t6, t2, 19
                  sb           s0, 226(gp)
                  or           tp, gp, t6
                  and          a5, a2, s3
                  slli         t4, s1, 5
                  srl          s1, t0, t3
                  lh           t4, 249(gp)
                  slt          a3, s9, s2
                  srai         a3, gp, 6
                  sra          a4, a0, t3
                  srli         s8, a3, 18
                  andi         a1, a2, 1
                  sltiu        s4, s2, 1625
                  lb           s4, -24(gp)
                  lb           tp, 205(gp)
                  add          s5, t6, a4
                  lh           a6, -185(gp)
                  slt          a0, s0, t6
                  sub          ra, s10, s9
                  add          t6, gp, s7
                  andi         a1, s11, 1120
                  sw           s5, 243(gp)
                  lbu          s6, 198(gp)
                  lw           a5, -41(gp) #end riscv_load_store_rand_instr_stream_18
                  la           s5, region_0+482 #start riscv_load_store_rand_instr_stream_8
                  lbu          s10, 1056(s5)
                  xor          s7, t0, a7
                  lbu          s3, -39(s5)
                  lb           a5, 1353(s5)
                  lbu          t4, 1467(s5)
                  srai         a0, zero, 0
                  sh           s0, 1026(s5)
                  addi         a6, s6, 1054
                  auipc        a3, 970967
                  sltu         a5, s1, t0
                  srai         ra, gp, 4
                  add          t4, t6, a1
                  addi         a4, s2, -1365
                  sb           s9, 919(s5)
                  ori          s10, s5, 1039
                  lh           s1, 1048(s5)
                  sb           ra, 623(s5)
                  lb           a2, 331(s5)
                  sll          a5, t5, s4
                  lbu          s8, 15(s5)
                  lbu          s10, 633(s5)
                  sltu         t0, t0, a1
                  lhu          a7, 1160(s5)
                  lh           a7, -380(s5)
                  sb           s0, -478(s5)
                  sw           t0, 1058(s5)
                  lw           t2, 1470(s5)
                  lhu          gp, -310(s5)
                  sll          t1, t6, s5
                  sb           gp, 1345(s5)
                  xor          a3, t5, t3
                  ori          a2, a4, 1026
                  sub          s7, s9, s7
                  sub          s6, zero, a4
                  lw           s4, 242(s5)
                  srli         s8, s1, 1
                  sb           t1, -92(s5)
                  sb           t3, 789(s5)
                  sw           sp, 778(s5)
                  add          tp, a5, t1
                  lbu          s3, 1037(s5)
                  lb           t2, -177(s5)
                  sh           s9, 652(s5) #end riscv_load_store_rand_instr_stream_8
                  la           s0, region_1+693 #start riscv_load_store_rand_instr_stream_6
                  sub          s1, s9, a6
                  lui          s6, 303921
                  lb           a5, 58(s0)
                  lb           t0, -78(s0)
                  lb           a2, 164(s0)
                  lbu          a3, 114(s0)
                  lbu          ra, -253(s0)
                  sra          a4, a5, a0
                  lb           gp, 212(s0)
                  sra          s5, a0, gp
                  sb           tp, 86(s0)
                  lbu          s10, -178(s0)
                  lh           s6, -179(s0)
                  sub          s4, s2, s10
                  andi         t4, t6, -581
                  sub          t3, a4, a0
                  srli         t1, s1, 14
                  sra          a2, a5, s0
                  srli         a7, t0, 27
                  sh           s9, -131(s0)
                  sra          tp, s4, gp
                  lh           t6, 217(s0)
                  sltu         t6, s9, s5
                  addi         tp, s6, -1509
                  sltiu        t5, s6, 312
                  lbu          s1, 28(s0)
                  lb           s7, 53(s0)
                  lb           s9, -240(s0)
                  lb           t6, 180(s0)
                  lh           t1, 139(s0)
                  lbu          s8, 124(s0)
                  slt          s4, tp, s1
                  ori          t3, gp, -1118
                  sb           s3, -198(s0)
                  xor          a2, a0, a1
                  auipc        s7, 52902
                  or           a0, tp, s6
                  srli         t2, s7, 27
                  sb           s11, 66(s0)
                  auipc        s5, 1025828
                  lui          s1, 683401
                  lw           s6, 43(s0)
                  lhu          s4, -251(s0)
                  lh           gp, 115(s0)
                  lb           ra, -82(s0)
                  or           a7, gp, a4
                  lui          t4, 351163
                  sb           s1, 52(s0)
                  and          s5, t4, s10
                  auipc        t0, 433601
                  lbu          s8, -75(s0) #end riscv_load_store_rand_instr_stream_6
                  la           a2, region_0+672 #start riscv_load_store_rand_instr_stream_2
                  addi         a5, t3, 1699
                  lb           a1, 89(a2)
                  xor          a4, s6, s3
                  sb           a5, 81(a2)
                  sub          s0, gp, a0
                  lui          s5, 991888
                  sh           s4, -134(a2)
                  slli         s3, a2, 1
                  lb           s6, 147(a2)
                  sh           ra, 28(a2)
                  slti         t4, s4, -184
                  srli         t3, a3, 8
                  slt          s3, zero, t0
                  sll          s1, a4, t3
                  sb           a3, 54(a2)
                  srl          s4, a7, t5
                  add          s1, s8, a6
                  sb           t4, -181(a2)
                  and          s9, s10, a5
                  sb           t3, 171(a2)
                  sltiu        gp, ra, -1921
                  andi         a6, s5, -1598
                  add          a4, s7, t3
                  sub          t0, t2, t5
                  lbu          gp, -33(a2)
                  add          a4, ra, t5
                  auipc        t2, 612631
                  xori         a4, s1, 496
                  lh           t0, -104(a2)
                  srai         s9, s7, 11
                  add          s5, s8, t2
                  sll          s10, s1, t1
                  ori          a7, s1, 1186
                  xori         s5, a5, -1653
                  auipc        s9, 450922
                  lb           s3, 203(a2) #end riscv_load_store_rand_instr_stream_2
                  la           a5, region_1+1256 #start riscv_load_store_rand_instr_stream_3
                  sh           s0, -10(a5)
                  lbu          t4, -187(a5)
                  lui          t1, 1013213
                  addi         zero, s2, 1268
                  srli         t6, s5, 7
                  srl          a4, s8, s10
                  xor          zero, a2, ra
                  sll          s4, sp, t5
                  nop
                  xori         t0, a1, -2026
                  sb           gp, 79(a5)
                  auipc        t5, 797308
                  sltiu        s4, a4, -1556
                  and          a2, t6, t5
                  auipc        s7, 492994
                  sw           t4, 180(a5)
                  srai         gp, t3, 17
                  ori          t3, s1, 1735
                  srai         s10, a6, 0
                  lb           s3, 237(a5)
                  sra          a7, t6, s5
                  lb           s6, 85(a5)
                  lhu          a1, 140(a5)
                  nop
                  lbu          a0, 187(a5)
                  xori         zero, t6, 1591
                  srli         a4, a6, 21
                  sltu         t4, sp, a3
                  lbu          t6, 239(a5)
                  sb           tp, -18(a5)
                  sb           t2, -71(a5)
                  lbu          tp, -221(a5)
                  sh           s1, 162(a5)
                  srai         t4, sp, 12
                  xor          t1, tp, t1
                  lbu          a1, 73(a5)
                  sll          a7, s5, s0
                  and          s4, a4, s3
                  lbu          tp, -128(a5) #end riscv_load_store_rand_instr_stream_3
                  la           tp, region_1+873 #start riscv_load_store_rand_instr_stream_5
                  sll          s1, s2, s6
                  sb           t6, 2(tp)
                  lbu          t0, 48(tp)
                  sub          t2, s9, s4
                  ori          s7, sp, 1909
                  sh           s4, -7(tp)
                  lbu          a4, 30(tp)
                  xori         s1, a0, -1190
                  lb           a2, 57(tp)
                  lb           s9, -6(tp)
                  sub          s10, t6, s1
                  sh           a6, 35(tp)
                  ori          s3, a2, -1967
                  slli         t3, a5, 14
                  nop
                  sb           s1, 57(tp)
                  add          t1, tp, a0
                  slti         t1, ra, 224
                  auipc        s9, 697636
                  lui          s8, 796690
                  lw           a4, 55(tp)
                  lh           a2, 13(tp)
                  sltu         a6, tp, s1
                  lb           zero, 10(tp)
                  lbu          s1, 12(tp)
                  lb           a2, -61(tp)
                  lbu          t6, 12(tp)
                  xori         a3, s1, 817
                  ori          t1, gp, 24
                  sll          s5, a0, s7
                  srl          t3, t5, tp
                  sb           s2, 44(tp)
                  sh           s9, -29(tp)
                  lbu          s7, 49(tp)
                  sll          s5, t5, s11
                  sh           a2, -49(tp)
                  slti         t0, s4, 1822
                  or           s4, s4, t3
                  auipc        t3, 600192
                  sb           s8, -58(tp)
                  xori         s4, t4, -1946
                  lb           t4, -62(tp)
                  xor          s0, s1, s3
                  lb           t3, 50(tp) #end riscv_load_store_rand_instr_stream_5
                  la           a7, region_1+1203 #start riscv_load_store_rand_instr_stream_14
                  slt          s4, s0, t1
                  lb           s3, 48(a7)
                  lbu          s3, 34(a7)
                  xori         ra, a6, -996
                  sh           s0, -27(a7)
                  andi         t4, a2, -1114
                  slt          gp, t4, t2
                  lb           s0, 46(a7)
                  lbu          s9, -29(a7)
                  nop
                  add          a5, a1, s6
                  lw           a1, -15(a7)
                  sb           s8, 17(a7)
                  xor          a3, s8, t5
                  srli         a5, a7, 25
                  auipc        s10, 448728
                  srli         gp, s10, 23
                  xori         t1, a2, 1534
                  sra          s9, s5, s5
                  lh           t3, 9(a7)
                  addi         s5, ra, 413
                  srl          a4, t4, s4
                  and          s1, s8, a1
                  and          s6, a6, zero
                  lb           s5, -53(a7)
                  or           gp, s2, t4
                  srli         s8, t1, 8
                  and          gp, t3, t3
                  sll          a5, a3, sp
                  xor          gp, sp, s10
                  or           s9, s11, s6
                  lbu          a5, 12(a7)
                  srai         gp, ra, 26
                  sb           t0, 20(a7)
                  sltiu        s5, a2, 941
                  sub          tp, t5, s8
                  sb           a2, -9(a7)
                  slt          t0, a4, a4
                  lui          ra, 299642
                  sub          s9, t4, t0
                  andi         t6, gp, 1718
                  and          s3, a5, t5
                  sh           a0, -11(a7) #end riscv_load_store_rand_instr_stream_14
                  la           a6, region_1+1213 #start riscv_load_store_rand_instr_stream_11
                  srli         zero, s0, 19
                  and          a7, s2, s9
                  and          t1, a1, t2
                  or           s3, s8, t0
                  srai         s1, s0, 4
                  sb           t0, -216(a6)
                  ori          s10, s10, -399
                  lb           t0, -34(a6)
                  srli         a7, t6, 7
                  sb           s9, -6(a6)
                  sub          a1, s8, t1
                  lb           t5, -172(a6)
                  sb           s0, 139(a6)
                  lb           t4, 51(a6)
                  sb           s6, 116(a6)
                  lb           s8, 246(a6)
                  or           s10, zero, a0
                  sltu         zero, s7, tp
                  sb           a4, 1(a6)
                  lh           a0, 27(a6)
                  sb           t3, 141(a6)
                  sb           a6, 40(a6) #end riscv_load_store_rand_instr_stream_11
                  la           t2, region_1+1351 #start riscv_load_store_rand_instr_stream_7
                  slli         s0, s0, 16
                  sb           a6, 419(t2)
                  slt          s4, t0, t6
                  addi         t6, t5, -1945
                  sb           t4, -975(t2)
                  lh           a2, -503(t2)
                  slt          a2, zero, t5
                  srai         a1, s0, 30
                  andi         s9, a2, 1715
                  slti         t5, t2, 1271
                  addi         tp, sp, 1167
                  sltu         s3, tp, s11
                  lhu          s7, -823(t2)
                  and          s6, s5, s7
                  srai         t3, a5, 6
                  sra          s1, s5, a5
                  lb           t3, -1137(t2)
                  lb           a1, -1036(t2)
                  lw           t1, 65(t2)
                  lb           s1, -648(t2)
                  auipc        s3, 153844
                  slli         s4, ra, 30
                  ori          s3, a4, -1361
                  lui          s9, 818336
                  sb           s3, -480(t2)
                  slt          s4, t3, s5
                  slti         a6, a4, 1108
                  lb           s1, 438(t2)
                  slti         s1, ra, -2034
                  lbu          zero, -1153(t2)
                  sb           ra, -498(t2)
                  auipc        a5, 241128
                  lb           t4, 208(t2)
                  sb           s4, -1325(t2) #end riscv_load_store_rand_instr_stream_7
                  la           s9, region_0+981 #start riscv_load_store_rand_instr_stream_17
                  sll          a4, t1, a1
                  srai         ra, s10, 22
                  sw           s5, -13(s9)
                  lb           t0, 1(s9)
                  lbu          t1, 9(s9)
                  lui          t2, 404596
                  sh           t5, 13(s9)
                  lbu          t0, 14(s9)
                  lbu          a1, -7(s9)
                  or           a1, zero, s1
                  auipc        s10, 338290
                  sltiu        a7, t2, -510
                  sb           gp, 15(s9)
                  lbu          t0, 16(s9)
                  sb           a1, -4(s9)
                  and          a5, a2, gp
                  auipc        t3, 44131
                  sub          s6, s3, s4
                  lbu          t3, 14(s9)
                  lui          t4, 378339
                  lbu          s7, 14(s9)
                  sub          t6, t0, a2
                  sb           a2, -6(s9)
                  xor          s7, a1, s11
                  lb           a0, -10(s9)
                  sltiu        a5, t4, 2007
                  lbu          a6, -4(s9)
                  lbu          t3, -5(s9)
                  lb           t3, 8(s9) #end riscv_load_store_rand_instr_stream_17
                  la           gp, region_0+1356 #start riscv_load_store_rand_instr_stream_21
                  lh           s10, -4(gp)
                  nop
                  lbu          a2, -29(gp)
                  auipc        s7, 35894
                  lb           s1, 38(gp)
                  slli         s9, t0, 2
                  nop
                  sw           gp, -44(gp)
                  lh           s3, 8(gp)
                  sh           s11, 30(gp)
                  sb           t4, -54(gp)
                  and          s0, s8, t4
                  srai         a0, s1, 15
                  sub          a0, s6, s3
                  lbu          s6, -21(gp)
                  lbu          s9, -9(gp)
                  add          a3, s8, s9
                  lh           s5, -60(gp)
                  lh           s9, 46(gp)
                  srli         t2, a6, 11
                  or           s4, s9, t2
                  lw           s5, 40(gp)
                  andi         tp, t3, -1875
                  lb           t2, -27(gp)
                  sra          t0, tp, t2
                  sltiu        zero, tp, 420
                  slt          t0, a1, zero
                  add          tp, t1, s3
                  slli         s1, s0, 23
                  sb           s6, -49(gp)
                  nop
                  addi         s6, a3, 876
                  lbu          tp, 47(gp)
                  sll          a0, s3, t2
                  lbu          s3, 1(gp)
                  lbu          t6, -51(gp) #end riscv_load_store_rand_instr_stream_21
                  la           s3, region_0+1653 #start riscv_load_store_rand_instr_stream_13
                  sb           s5, -1531(s3)
                  sb           s9, 124(s3)
                  srl          t1, s7, a4
                  and          t5, s11, a4
                  sb           s4, -379(s3)
                  slli         t6, gp, 19
                  sra          t3, t1, a0
                  slli         tp, a2, 11
                  and          s4, s0, a3
                  sub          zero, tp, a2
                  lh           s8, -1029(s3)
                  lbu          a5, 120(s3)
                  sub          s6, s6, a5
                  add          a3, t6, a2
                  lw           a1, -569(s3)
                  and          s7, t5, s11
                  andi         t4, tp, -148
                  addi         s9, s9, -1524
                  srai         s5, a4, 5
                  slt          a5, t1, a7
                  lh           t1, -1507(s3)
                  lb           s9, -810(s3)
                  ori          t0, s10, 1997
                  slli         t2, a4, 1
                  sh           s0, -959(s3)
                  or           a2, tp, tp
                  sb           s11, -306(s3)
                  lhu          a5, -857(s3)
                  or           a1, a5, s4
                  lb           t1, -440(s3)
                  lb           zero, -720(s3)
                  sub          s6, t6, s4
                  sb           s3, -802(s3) #end riscv_load_store_rand_instr_stream_13
                  la           t6, region_1+203 #start riscv_load_store_rand_instr_stream_0
                  lb           a2, 1068(t6)
                  lh           s3, 1559(t6)
                  lhu          a5, 301(t6)
                  lbu          s9, 543(t6)
                  sll          t4, s1, s9
                  slt          a7, zero, s2
                  lb           t4, 1163(t6)
                  add          a2, s2, t4
                  lbu          a1, 15(t6)
                  lui          t1, 181165
                  sub          t5, s1, s4
                  add          s5, a2, t5
                  sb           ra, 520(t6)
                  sltu         t1, a1, t2
                  addi         s6, t4, -1682
                  lh           s5, 583(t6)
                  xor          t0, s0, t3
                  lb           t0, 1672(t6)
                  lbu          t0, 1556(t6)
                  xor          a2, t2, t3
                  sb           s7, 331(t6)
                  xor          s1, tp, a0
                  srai         a7, t3, 8
                  lbu          zero, -173(t6)
                  slli         s8, a5, 28
                  slti         s10, s9, 715
                  auipc        s3, 854132
                  srai         s5, s9, 10
                  lbu          s8, 182(t6)
                  sub          t2, a0, a2
                  lh           s6, 1529(t6)
                  ori          t1, t3, -1673
                  lb           t3, 1183(t6)
                  xori         t0, s9, -1478
                  lb           a7, 723(t6)
                  sub          t0, t5, tp
                  lb           a5, 652(t6) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_1+18 #start riscv_load_store_rand_instr_stream_19
                  addi         gp, gp, -508
                  lbu          ra, -5(s4)
                  lbu          s10, 15(s4)
                  ori          s9, zero, 1168
                  lb           a1, 15(s4)
                  or           t2, s5, a0
                  slti         a7, a1, 1867
                  srli         a7, s10, 9
                  sub          t1, a5, a6
                  sll          t3, s0, s6
                  xor          s1, s2, s6
                  or           t0, s6, t6
                  andi         a7, t1, -502
                  sltu         zero, a7, s5
                  lw           s0, 10(s4)
                  lh           a6, -10(s4)
                  addi         t4, a4, 1328
                  auipc        t0, 831823
                  lui          a6, 613391
                  slli         s0, a0, 18
                  srli         a5, t6, 1
                  or           a3, t1, zero
                  srli         s9, t3, 8
                  slli         t3, s5, 8
                  and          t2, a2, s0
                  slti         s8, t1, 175
                  ori          s3, t1, 307
                  sb           t1, 31(s4)
                  addi         a2, s6, -130
                  lb           a5, 15(s4)
                  srli         t2, t0, 9
                  srai         gp, tp, 20
                  sll          a7, a3, gp
                  sll          s0, a1, a4
                  lbu          tp, -5(s4)
                  xor          ra, a4, a5
                  lbu          t1, 51(s4)
                  lb           a5, -12(s4) #end riscv_load_store_rand_instr_stream_19
                  la           t0, region_0+1068 #start riscv_load_store_rand_instr_stream_20
                  lb           ra, -552(t0)
                  lb           s3, -95(t0)
                  add          t4, s8, s9
                  lbu          s8, -217(t0)
                  sb           ra, 524(t0)
                  sb           s6, 803(t0)
                  lh           a2, -346(t0)
                  sb           s6, -919(t0)
                  sw           s8, -244(t0)
                  nop
                  sb           s10, -557(t0)
                  lbu          t1, 352(t0)
                  lb           a1, -59(t0)
                  xor          s4, t4, s9
                  lh           s3, 62(t0)
                  srli         a7, s4, 0
                  sll          a4, s1, s1
                  ori          a4, t1, -1868
                  and          s4, s4, a5
                  sw           a0, 876(t0)
                  lb           s5, -895(t0)
                  lui          s10, 259471
                  xori         s4, t1, -1818
                  xor          t2, a6, t1
                  sll          zero, s1, a3
                  and          s0, s0, zero
                  lbu          gp, -437(t0)
                  sra          a4, ra, s1
                  srl          s5, s7, t4
                  sb           s6, -588(t0)
                  lb           a4, 61(t0)
                  lhu          zero, 366(t0)
                  lb           a6, -1003(t0)
                  lhu          a2, -644(t0)
                  lui          s10, 907773
                  sra          s0, a1, a1
                  sh           s4, -928(t0)
                  ori          gp, a1, -279
                  auipc        s1, 977992
                  lhu          a6, -246(t0)
                  sw           a6, -1016(t0)
                  and          a4, sp, s4
                  srai         s3, s8, 2
                  lb           zero, 784(t0)
                  sll          t5, t2, t6
                  ori          a0, a7, 210
                  sb           s10, -529(t0) #end riscv_load_store_rand_instr_stream_20
                  la           s5, region_0+540 #start riscv_load_store_rand_instr_stream_10
                  sb           gp, 365(s5)
                  sh           s5, -352(s5)
                  lui          t0, 253856
                  sb           a4, 842(s5)
                  addi         a6, s3, 1963
                  sll          s9, t2, s9
                  sra          a5, a7, s8
                  sb           gp, 435(s5)
                  lb           a1, 951(s5)
                  sb           a1, 571(s5)
                  lb           t0, 915(s5)
                  lbu          s4, 1287(s5)
                  add          t3, s9, s11
                  xori         t0, a0, -1227
                  sltiu        a0, s9, 248
                  lbu          gp, 1191(s5)
                  sb           s3, 3(s5)
                  sb           a4, -428(s5)
                  lb           s8, 179(s5)
                  lh           t4, -376(s5)
                  lbu          s3, 219(s5)
                  sra          t1, a1, s1
                  lb           t5, 945(s5)
                  sw           t4, 524(s5)
                  lbu          s9, -279(s5)
                  srli         a6, s11, 2
                  sw           t6, 656(s5)
                  srli         a2, t6, 13
                  srai         zero, t0, 30
                  andi         s8, t0, 1950
                  lbu          s6, 1043(s5)
                  lhu          ra, 2(s5)
                  lbu          s4, -384(s5)
                  and          t6, t6, s5
                  sra          t5, t2, a7
                  lhu          a2, 956(s5)
                  addi         s6, s2, -1430
                  sb           t3, 217(s5)
                  lb           t3, -437(s5) #end riscv_load_store_rand_instr_stream_10
                  sub          s9, s3, a5
                  bgeu         s11, a2, 16f
                  lui          a6, 391465
                  xor          a4, s6, t1
                  sub          gp, t1, s11
                  slt          t6, gp, t2
                  beq          a7, a7, 26f
                  sub          t5, a4, a4
                  xori         s5, a5, 702
                  andi         s3, gp, 876
                  sltu         zero, t6, t4
                  ori          zero, a2, 780
                  bge          a0, s9, 20f
                  sub          zero, t4, s9
                  sltu         tp, t1, a7
                  sltiu        s7, s0, -1050
16:               xori         t0, s8, 911
                  ori          s10, a0, 872
                  srli         a6, s7, 24
                  ori          a1, t5, 622
20:               bne          t3, a6, 37f
                  beq          a3, s6, 36f
                  nop
                  srli         t6, t4, 18
                  ori          s6, s3, 262
                  sub          a6, t2, t0
26:               sltiu        a4, ra, -420
                  bgeu         t4, a2, 39f
                  xor          zero, tp, s3
                  bne          s3, s11, 40f
                  bgeu         t0, t6, 50f
                  or           s4, t6, a3
                  sll          s4, ra, s7
                  or           tp, a1, t2
                  auipc        t1, 787362
                  bgeu         gp, s9, 43f
36:               blt          a7, t4, 55f
37:               bltu         t2, s6, 48f
                  sll          t1, a3, a0
39:               bgeu         s10, a2, 51f
40:               beq          tp, a6, 58f
                  slt          ra, a7, ra
                  or           gp, s11, a3
43:               sltiu        a6, s3, 39
                  srli         zero, s8, 21
                  slti         s3, t6, 766
                  slli         s7, t3, 7
                  lui          a1, 895755
48:               beq          a0, zero, 49f
49:               xor          s3, a0, s4
50:               nop
51:               and          a5, a4, s10
                  bne          a2, a2, 60f
                  nop
                  sltu         a1, zero, t0
55:               or           zero, s5, a7
                  sub          s1, a0, t5
                  or           s4, s1, gp
58:               auipc        a7, 209060
                  blt          a3, s9, 60f
60:               srl          t4, s5, a5
                  bne          s1, t2, 74f
                  sltu         a2, t3, s5
                  xori         a2, s11, 948
                  blt          s8, t2, 67f
                  sltu         gp, s10, t4
                  bge          s0, s10, 80f
67:               add          t0, a5, t0
                  sltiu        s8, tp, -1974
                  sll          t5, gp, s5
                  auipc        t3, 24090
                  bltu         s10, s4, 74f
                  blt          s10, a7, 76f
                  srli         a5, a3, 6
74:               add          gp, a3, a3
                  sltiu        t4, t6, -1332
76:               lui          s5, 983955
                  bltu         t5, s10, 81f
                  sltu         a2, t0, s5
                  xor          s1, s1, a6
80:               slli         a7, tp, 18
81:               srli         s6, a3, 24
                  bge          a1, s6, 96f
                  sltiu        s5, s2, 1211
                  andi         t2, s0, 1093
                  blt          a0, ra, 99f
                  slt          a0, gp, a1
                  ori          a5, s8, -174
                  srai         ra, t0, 2
                  andi         t4, t3, 714
                  andi         s5, gp, -47
                  bgeu         s6, s0, 98f
                  ori          tp, t0, -931
                  sub          t4, s7, t2
                  srli         a7, a5, 29
                  xori         s10, s3, -1545
96:               srai         a6, gp, 3
                  and          a1, t3, a1
98:               ori          t3, s5, 315
99:               bgeu         a4, a1, 118f
                  srli         a1, tp, 21
                  sll          s7, t6, zero
                  and          t4, a3, t0
                  sltiu        t4, ra, -757
                  ori          a4, a7, -503
                  bltu         t1, a1, 107f
                  bne          t3, t0, 114f
107:              and          t5, s4, s2
                  bgeu         t1, a2, 117f
                  slli         t0, t5, 17
                  lui          tp, 726499
                  xor          s4, sp, t3
                  sll          s6, tp, a5
                  bltu         s3, a0, 116f
114:              sll          s4, s1, s1
                  srli         s9, t0, 1
116:              sll          s8, s6, tp
117:              sub          a1, s9, s2
118:              ori          a3, a0, 1250
                  addi         s6, a0, -1251
                  nop
                  bltu         t1, s7, 140f
                  auipc        a4, 1005411
                  sltu         zero, t1, sp
                  bne          s8, s9, 132f
                  slli         a2, s7, 19
                  slti         s3, s3, -1241
                  srl          zero, gp, s4
                  slt          t3, s4, s7
                  beq          a4, s7, 144f
                  slli         zero, s6, 17
                  beq          tp, s8, 139f
132:              nop
                  slt          s0, t1, s8
                  srl          t5, a0, s6
                  bgeu         t6, a6, 149f
                  blt          t3, t3, 147f
                  slti         a5, s10, -184
                  add          a0, ra, s3
139:              lui          t1, 694911
140:              bge          sp, t6, 143f
                  srai         a4, gp, 0
                  sltiu        s10, sp, -1802
143:              srli         s9, s4, 28
144:              ori          s5, s9, 831
                  bltu         s4, ra, 148f
                  addi         ra, a5, -1909
147:              beq          s2, t2, 161f
148:              srl          s9, s2, gp
149:              beq          a2, s3, 151f
                  srli         s5, s0, 24
151:              beq          s1, a5, 171f
                  or           s6, a4, t4
                  srli         a5, tp, 4
                  srli         ra, s11, 25
                  bne          t1, t1, 159f
                  srai         t5, t4, 28
                  beq          t1, s6, 171f
                  sltu         s3, ra, t4
159:              bge          zero, s8, 179f
                  lui          s9, 694582
161:              nop
                  bge          a4, s0, 181f
                  sltu         a3, s6, t2
                  srl          ra, s10, t5
                  bgeu         a3, s5, 166f
166:              xor          a0, a2, a5
                  or           t5, s0, tp
                  add          s4, tp, s8
                  bge          s1, t0, 172f
                  srli         t5, gp, 4
171:              sra          t3, s2, a4
172:              xor          s3, a4, s11
                  bge          ra, t1, 188f
                  sll          t4, s3, s3
                  sub          t4, t6, s11
                  lui          s6, 514174
                  bltu         sp, t1, 189f
                  bne          s9, s5, 185f
                  la           a4, region_0+5 #start riscv_load_store_rand_instr_stream_22
                  slt          a1, s9, t6
                  lui          s9, 1029858
                  sh           sp, 5(a4)
                  ori          s1, s7, 1030
                  lb           s10, 8(a4)
                  nop
                  lb           t1, 12(a4)
                  sh           a7, 1(a4)
                  lh           t1, -3(a4)
                  sltu         s6, t6, gp
                  andi         s1, tp, -1879
                  xor          gp, t6, zero
                  sub          s8, s8, s0
                  sll          ra, a2, s4
                  ori          tp, zero, 1469
                  ori          a1, a4, -1195
                  nop
                  auipc        s4, 39509
                  srli         ra, a6, 18
                  xor          t6, s5, a4
                  ori          zero, a0, 1501
                  sb           gp, 4(a4)
                  slli         t4, a6, 10
                  sb           t1, 0(a4)
                  sltiu        t4, s3, -888
                  sra          s3, t2, t5
                  auipc        ra, 248163
                  sb           sp, 1(a4)
                  nop
                  lbu          s0, 0(a4)
                  lh           a0, -1(a4)
                  lbu          s7, 4(a4)
                  add          t1, t4, s2
                  lbu          t0, 9(a4)
                  slti         ra, a6, 664
                  lbu          t2, 13(a4)
                  sb           s11, 7(a4)
                  andi         s10, s9, -1407
                  slli         a7, zero, 18
                  auipc        t3, 115730
                  and          s8, s3, ra
                  addi         a7, a7, -842
                  lhu          s1, 13(a4)
                  slti         s10, a0, 271
                  lb           t2, 7(a4) #end riscv_load_store_rand_instr_stream_22
179:              srai         t1, s7, 6
                  bgeu         s11, s8, 198f
181:              bgeu         a7, ra, 182f
182:              sra          s1, a7, t2
                  ori          t2, t0, -830
                  bgeu         ra, sp, 192f
185:              ori          s1, t1, 650
                  addi         ra, a6, 1134
                  srli         a6, a3, 7
188:              add          s6, s10, a1
189:              sltu         a4, sp, a5
                  blt          s6, a5, 201f
                  srli         a5, s4, 23
192:              bge          t0, a4, 204f
                  slli         s1, a7, 18
                  srl          s8, s8, a4
                  ori          a2, t1, -1744
                  bne          a3, s8, 213f
                  sltu         a4, s5, a1
198:              nop
                  add          t5, a1, t6
                  sltiu        ra, tp, 1091
201:              add          s7, s9, s6
                  sltu         t0, a4, a0
                  bne          zero, sp, 216f
204:              srai         a5, a6, 8
                  andi         t2, sp, 1514
                  andi         s4, t6, -922
                  srl          t0, ra, s5
                  sub          s10, tp, s1
                  auipc        s10, 88026
                  bge          s9, gp, 219f
                  srai         t5, tp, 25
                  bne          tp, s10, 220f
213:              bltu         s6, s11, 217f
                  ori          a2, t1, -1445
                  auipc        t4, 63551
216:              and          s10, t2, t5
217:              bltu         s1, s9, 225f
                  auipc        tp, 668183
219:              sltiu        a2, a7, -1920
220:              srl          s4, s1, zero
                  slli         s7, zero, 28
                  or           gp, s5, ra
                  addi         t2, t0, -752
                  add          s4, s4, s4
225:              slli         t1, tp, 4
                  nop
                  bgeu         gp, s4, 244f
                  srli         a2, a6, 14
                  bltu         zero, a2, 232f
                  sra          a4, zero, t4
                  bne          t6, s3, 232f
232:              srli         t5, s8, 28
                  sll          a4, s11, s2
                  or           s5, tp, t6
                  and          s0, a2, s2
                  bge          t2, tp, 248f
                  slli         t2, s5, 5
                  bltu         ra, t2, 258f
                  slt          t6, s10, t4
                  add          s3, s3, tp
                  sltiu        a7, a6, 509
                  bge          s6, t5, 257f
                  addi         tp, ra, 1825
244:              ori          zero, a1, -590
                  ori          a5, t5, 403
                  slt          s9, a5, a5
                  slti         s4, s6, 1923
248:              auipc        t1, 820382
                  xor          zero, sp, a1
                  or           t6, zero, s6
                  srai         t3, a1, 21
                  nop
                  addi         s8, gp, -1000
                  bgeu         t0, zero, 274f
                  bgeu         t6, t4, 258f
                  xor          ra, s6, t1
257:              sltu         a4, a5, s0
258:              auipc        a6, 652155
                  bge          t6, a6, 273f
                  nop
                  sra          s10, s2, a6
                  sltiu        a2, a1, -1714
                  xor          a4, s11, a5
                  srl          s8, s5, tp
                  xori         a0, s4, -1698
                  slti         s10, a3, 795
                  sltu         a1, s3, s5
                  andi         s7, a6, -80
                  beq          t1, t0, 280f
                  srl          s6, s5, a7
                  xori         a0, s4, -451
                  auipc        t0, 415661
273:              srl          s1, t4, s11
274:              sub          gp, s7, a7
                  andi         t1, zero, 518
                  add          s7, a4, s9
                  addi         t4, s6, -1234
                  blt          s3, s8, 280f
                  add          t2, sp, s11
280:              srli         s5, s3, 10
                  sltiu        s10, s4, 902
                  auipc        a4, 831648
                  andi         s6, s4, -1593
                  auipc        s8, 321977
                  slt          a1, a5, t4
                  ori          a6, s10, 1925
                  ori          zero, s5, -1092
                  srli         s10, a0, 27
                  nop
                  addi         t1, a3, -854
                  sub          s3, ra, t1
                  xor          s6, a2, a2
                  slli         a0, a3, 20
                  sltu         t3, s8, s10
                  srli         s8, s1, 12
                  blt          a4, t3, 304f
                  slti         s5, a4, 506
                  sltu         a0, a4, s0
                  bgeu         a5, a5, 308f
                  srai         t6, a0, 9
                  andi         t1, t0, -206
                  slt          t0, tp, t3
                  srl          a6, zero, s4
304:              beq          s10, t3, 307f
                  bgeu         a0, gp, 318f
                  lui          t0, 1006006
307:              add          s7, a5, s9
308:              slli         gp, s4, 17
                  sra          s5, a0, s8
                  xori         s3, t4, 1866
                  slti         s9, t2, 1238
                  srl          t4, t4, a7
                  blt          t0, a1, 321f
                  nop
                  slt          s5, a2, a6
                  srl          s10, t6, a5
                  nop
318:              sub          t0, s1, t0
                  sltu         ra, s0, t4
                  xori         gp, t2, 1315
321:              srai         a3, t1, 16
                  sll          t3, a4, s7
                  xor          a3, t1, s2
                  blt          s7, gp, 338f
                  slti         ra, s7, -200
                  sltu         ra, gp, t3
                  bgeu         zero, a1, 331f
                  addi         s10, s8, -1472
                  bge          a6, a7, 337f
                  xor          s5, a4, a0
331:              blt          s4, s8, 345f
                  beq          t2, s1, 351f
                  lui          gp, 532754
                  add          t6, s10, t0
                  xori         t1, sp, 571
                  addi         gp, t6, 1424
337:              srl          a2, s2, a3
338:              andi         a4, sp, 2035
                  xor          gp, s0, tp
                  blt          s2, a1, 355f
                  bgeu         s3, s4, 342f
342:              ori          s7, t2, -924
                  blt          s4, s2, 347f
                  lui          t3, 596935
345:              slti         s1, t5, 1686
                  addi         s0, a7, -569
347:              addi         s7, t4, 959
                  xori         t2, tp, -1741
                  sub          t2, t5, t1
                  blt          t4, t3, 361f
351:              or           zero, s3, a5
                  sll          a6, sp, t1
                  lui          a6, 698865
                  srai         gp, t3, 17
355:              addi         t2, s6, -417
                  bne          a6, s0, 375f
                  srl          s10, t3, a4
                  auipc        s7, 265961
                  srai         zero, sp, 29
                  beq          s7, a3, 372f
361:              and          s5, zero, s0
                  blt          s1, s1, 369f
                  bltu         s10, t1, 381f
                  addi         s10, s6, 2030
                  bgeu         t2, zero, 379f
                  ori          s6, tp, 1389
                  addi         s3, s11, -81
                  beq          s8, a3, 379f
369:              slt          t4, s5, t6
                  nop
                  slt          t2, s10, s4
372:              sub          t3, s11, s11
                  bge          t3, a3, 374f
374:              andi         a4, tp, 711
375:              or           t0, t3, s11
                  bgeu         t1, s8, 388f
                  xori         a5, s5, -1792
                  add          s6, ra, zero
379:              add          t1, tp, s4
                  bgeu         s9, s11, 394f
381:              srl          a0, gp, t1
                  addi         s8, tp, -667
                  sra          tp, s6, s0
                  srli         t5, ra, 6
                  sltiu        s3, a3, 1221
                  slti         a7, s3, 2028
                  srl          a1, a3, s0
388:              add          t3, t6, s6
                  beq          s3, a6, 391f
                  bge          t0, s8, 401f
391:              and          a1, s2, s8
                  bne          t4, s7, 409f
                  bltu         s5, t4, 397f
394:              srli         t3, a2, 23
                  slti         a3, a1, -607
                  bltu         a6, a4, 408f
397:              add          s4, a6, a3
                  xor          gp, t6, sp
                  andi         a7, s4, -1648
                  sra          a1, t6, a7
401:              sll          t3, t6, t5
                  nop
                  bgeu         s1, s2, 412f
                  bge          t5, s10, 407f
                  sll          zero, s10, t6
                  nop
407:              beq          a6, s8, 426f
408:              add          t6, t1, s2
409:              bge          ra, a3, 416f
                  ori          tp, a1, -1814
                  sltu         t2, t4, sp
412:              xori         t1, s4, 1157
                  xor          a4, s11, t5
                  add          a4, s7, a6
                  sltu         t3, s1, s2
416:              bltu         a7, t5, 424f
                  beq          s7, zero, 425f
                  bltu         t1, t1, 433f
                  addi         t2, a2, 1341
                  addi         s8, t4, 1970
                  srli         t0, ra, 2
                  or           t1, sp, a6
                  slti         s7, t0, 1896
424:              auipc        zero, 202972
425:              bltu         t1, s3, 439f
426:              slti         t1, s6, -823
                  andi         a1, gp, 58
                  bltu         gp, a2, 431f
                  ori          s10, t4, 2029
                  sra          t6, gp, t0
431:              slli         s7, a0, 18
                  bltu         s1, s8, 445f
433:              bltu         ra, sp, 436f
                  addi         t0, a2, 1685
                  addi         s0, t6, -554
436:              auipc        s6, 719351
                  srli         t2, s4, 8
                  xor          a4, t3, ra
439:              sltu         a3, t4, a1
                  sltu         a7, s5, s4
                  xor          s0, s2, s10
                  xor          t3, gp, s2
                  sra          s6, s9, s0
                  srli         s10, zero, 9
445:              bne          t6, s8, 453f
                  sltu         a0, a1, t2
                  xor          t1, t6, a3
                  add          s7, a2, s0
                  srli         t0, t6, 19
                  srli         a0, t4, 3
                  and          s0, ra, s4
                  addi         t4, sp, 1325
453:              slt          a1, a6, s11
                  srai         s9, a1, 23
                  lui          t1, 654760
                  sltiu        t6, s7, 1627
                  sll          tp, sp, s2
                  lui          gp, 1036432
                  beq          t4, s7, 460f
460:              nop
                  srli         s7, sp, 27
                  andi         a6, t4, -1297
                  bltu         a1, t1, 481f
                  sltu         s6, t1, gp
                  auipc        ra, 443638
                  bgeu         a5, s5, 485f
                  slt          s10, t5, s9
                  xor          s10, sp, s11
                  and          s4, sp, a2
                  blt          ra, s5, 490f
                  bge          t1, ra, 475f
                  bgeu         s3, t6, 487f
                  or           a2, s4, t3
                  sltu         s0, t3, a6
475:              bgeu         t0, s4, 483f
                  and          t6, tp, s3
                  lui          a0, 461536
                  auipc        tp, 243691
                  beq          a0, t3, 499f
                  sub          s0, s2, s11
481:              and          s0, s4, a7
                  srl          s7, s3, s9
483:              bne          a3, sp, 496f
                  auipc        t2, 173301
485:              bgeu         t5, s11, 505f
                  blt          t1, t5, 493f
487:              srli         s4, a3, 18
                  slt          t3, t4, s6
                  ori          s10, s9, -564
490:              bge          s10, s9, 510f
                  blt          s5, t0, 505f
                  slli         s4, s7, 15
493:              sra          a2, s11, t3
                  add          s5, a6, t4
                  srai         t4, s10, 27
496:              slli         t5, a1, 29
                  and          t6, t2, a7
                  ori          s4, a4, 741
499:              addi         t2, t6, -1043
                  slt          a2, s2, s5
                  srai         s1, t4, 19
                  bge          t3, s0, 517f
                  bne          a6, t3, 515f
                  la           t4, region_0+1043 #start riscv_load_store_rand_instr_stream_9
                  lb           s4, -172(t4)
                  auipc        a5, 262577
                  lbu          t3, -122(t4)
                  sb           t6, -94(t4)
                  lb           t6, 6(t4)
                  lh           t2, 103(t4)
                  lb           t1, -234(t4)
                  srai         s0, s5, 16
                  lb           ra, 140(t4)
                  lb           s9, 50(t4)
                  sltu         a3, s3, s6
                  lbu          ra, 114(t4)
                  sb           t1, -130(t4)
                  lb           a7, -207(t4)
                  slt          s5, a1, zero
                  xor          a1, s11, s8
                  lb           a3, -253(t4)
                  sb           a4, -14(t4)
                  lb           a4, 18(t4)
                  sb           s1, 166(t4)
                  lbu          t6, -220(t4)
                  lbu          gp, -165(t4)
                  lh           t3, -95(t4)
                  and          s5, s6, s7
                  lb           a6, -210(t4)
                  nop
                  sub          a5, a6, t5
                  sh           t3, 19(t4)
                  lh           s1, 107(t4)
                  sltu         a0, t4, s1
                  srli         tp, a7, 30
                  andi         a3, s2, 1343
                  sll          t1, s4, a0
                  slli         s7, t1, 10
                  lb           a7, -110(t4)
                  lbu          a6, 128(t4)
                  lbu          zero, -85(t4)
                  sub          t6, s2, t0
                  sltu         s0, s4, s3
                  andi         t6, t2, 67
                  sb           s5, -108(t4)
                  lhu          s7, -87(t4)
                  srli         a7, a6, 2
                  addi         s6, s4, 162
                  srai         t1, a7, 7
                  sb           gp, 52(t4) #end riscv_load_store_rand_instr_stream_9
                  xor          a4, s0, t2
505:              blt          t1, t4, 513f
                  sltu         tp, a5, t6
                  and          t5, a7, a4
                  nop
                  srli         t5, a4, 11
510:              auipc        s8, 453409
                  bne          s7, a4, 512f
512:              auipc        tp, 885478
513:              srai         t6, a5, 23
                  and          s10, s11, s10
515:              nop
                  andi         a7, a1, -173
517:              srl          a1, a6, a4
                  or           s0, a4, s1
                  bge          s3, s4, 533f
                  andi         t2, t2, 873
                  slt          s7, s7, a2
                  blt          tp, t4, 531f
                  and          ra, s0, a1
                  srai         s4, a1, 10
                  srli         a4, a0, 16
                  and          s9, t5, a6
                  slli         t3, s8, 3
                  auipc        a0, 876393
                  sra          a2, tp, gp
                  nop
531:              addi         gp, s5, 1395
                  auipc        s3, 956593
533:              bltu         s6, zero, 541f
                  bne          a5, s6, 542f
                  ori          t0, t1, 417
                  srai         s9, sp, 0
                  addi         t6, s9, 1356
                  auipc        tp, 242186
                  or           a7, t4, a1
                  lui          s5, 654660
541:              nop
542:              srl          a5, s7, s5
                  srli         t4, a4, 22
                  nop
                  and          a1, t4, t2
                  sra          a4, s5, t6
                  slt          s3, a2, a2
                  lui          s4, 706355
                  sra          t2, t0, zero
                  bne          s8, a2, 554f
                  or           t6, s8, s8
                  blt          s4, t6, 560f
                  slli         a5, a1, 22
554:              ori          s6, s10, 1542
                  addi         zero, sp, 752
                  slt          s4, s4, a2
                  sub          s5, a5, s11
                  bltu         s6, s8, 559f
559:              auipc        tp, 462620
560:              bge          a6, s8, 575f
                  srai         t3, t3, 16
                  addi         s10, t3, 813
                  or           t1, s7, sp
                  blt          t6, s10, 583f
                  bge          a4, t4, 569f
                  srli         a6, s0, 13
                  srli         ra, t0, 11
                  slt          a3, sp, s11
569:              addi         s9, t3, -1505
                  nop
                  blt          t3, a0, 588f
                  add          s10, sp, ra
                  slli         t6, s9, 19
                  and          s8, tp, s0
575:              sll          t6, t0, a2
                  srai         s7, s11, 25
                  lui          a6, 958790
                  bltu         s1, a6, 589f
                  bne          a4, t5, 582f
                  andi         s1, ra, -1353
                  slti         a4, s2, -1831
582:              srl          tp, a2, s10
583:              bne          a3, a4, 585f
                  nop
585:              or           t5, s6, s0
                  srai         a6, s10, 16
                  nop
588:              srai         t1, t6, 26
589:              sll          zero, s9, t5
                  auipc        s8, 232349
                  auipc        s0, 1013491
                  add          s5, a3, a4
                  ori          t2, tp, -82
                  blt          a3, t3, 597f
                  srli         t0, a6, 5
                  nop
597:              xori         s3, t3, 2010
                  beq          zero, s1, 617f
                  bltu         t5, ra, 602f
                  beq          s11, s3, 612f
                  xor          zero, s7, s7
602:              sub          a4, s0, a0
                  xor          s7, s8, a3
                  bge          gp, a4, 622f
                  beq          a6, s8, 616f
                  auipc        a0, 895422
                  xori         s4, a2, 1689
                  sltiu        t5, s0, -811
                  slt          a5, s9, a1
                  beq          a2, a3, 624f
                  bgeu         sp, s7, 619f
612:              sll          a2, t1, a6
                  and          a3, gp, s5
                  addi         a7, s3, 1461
                  xor          a6, t5, t1
616:              ori          zero, a3, 730
617:              sltu         zero, s9, a5
                  srl          s8, s2, gp
619:              xori         a1, t2, -619
                  bne          a0, a2, 621f
621:              addi         t4, s10, -1518
622:              srli         tp, t4, 20
                  bne          s9, a6, 642f
624:              sltu         s6, t4, t3
                  bltu         sp, s6, 639f
                  sll          s3, s9, a3
                  xor          zero, a5, s4
                  slli         a1, tp, 29
                  and          gp, t0, a0
                  bgeu         t0, s2, 650f
                  lui          t0, 1035635
                  nop
                  beq          sp, a2, 644f
                  lui          a2, 824196
                  blt          s3, a3, 643f
                  xor          t3, a6, s3
                  andi         t0, a2, -1395
                  lui          s3, 136914
639:              nop
                  bne          t5, t5, 649f
                  sub          s10, s11, t1
642:              lui          zero, 792614
643:              sll          s3, t1, s8
644:              srai         a7, a1, 6
                  lui          t1, 302923
                  addi         t6, s0, 1295
                  srl          s10, a2, a4
                  bne          s7, ra, 652f
649:              xor          ra, a6, gp
650:              bne          a6, s7, 653f
                  and          a4, zero, a0
652:              bgeu         a3, sp, 653f
653:              slt          tp, t1, s9
                  slti         s3, t2, -972
                  nop
                  xori         s7, t6, 1555
                  ori          s1, s9, 1063
                  xori         s7, t2, -273
                  add          s8, a1, gp
                  andi         a2, s1, -1591
                  slt          tp, t5, ra
                  addi         t6, s4, 1695
                  xori         a3, s6, -911
                  add          ra, a6, a6
                  bge          s11, t2, 677f
                  slti         t5, s2, -699
                  nop
                  bltu         s1, s3, 672f
                  add          s1, t5, t1
                  sltiu        t0, a1, -705
                  sll          a1, ra, s2
672:              ori          zero, a4, 453
                  sub          s10, s5, t0
                  slt          s7, a6, zero
                  xor          a0, s5, gp
                  addi         gp, t5, -964
677:              sltiu        s8, zero, 1096
                  add          s5, a7, s3
                  bltu         s8, sp, 682f
                  srai         t3, t6, 4
                  sra          a3, zero, s6
682:              slt          a7, t6, tp
                  xori         s8, s5, 1078
                  andi         t6, s4, -597
                  andi         t3, t1, -261
                  and          a2, s3, ra
                  xor          a3, t6, s7
                  blt          zero, s0, 702f
                  bgeu         a0, t0, 697f
                  bne          a6, s9, 698f
                  xor          t6, s4, a0
                  add          s5, a7, t3
                  xori         s0, tp, 572
                  or           t5, tp, s4
                  srl          tp, s8, ra
                  xori         t1, t3, -837
697:              bge          a1, a7, 715f
698:              bgeu         t3, tp, 709f
                  ori          t5, s9, 1729
                  bne          a2, s6, 713f
                  auipc        s3, 383109
702:              bltu         s0, s3, 719f
                  bgeu         s7, s1, 718f
                  blt          t4, s4, 718f
                  blt          s1, tp, 708f
                  beq          tp, tp, 713f
                  andi         a6, s1, 83
708:              nop
709:              beq          t6, s1, 728f
                  sll          a1, t5, s5
                  lui          t4, 314728
                  sll          s0, s10, gp
713:              sll          a2, a3, s4
                  sltiu        a3, tp, -1548
715:              auipc        a7, 153467
                  sltu         s7, s5, t1
                  slli         t1, t6, 2
718:              auipc        s0, 465144
719:              sra          a6, t2, t6
                  sll          a2, s2, s8
                  add          a4, a4, t6
                  sltu         a0, s1, s10
                  nop
                  bne          s0, t2, 744f
                  lui          s1, 924690
                  bltu         a6, s7, 728f
                  srl          s8, a2, s10
728:              beq          a3, s9, 740f
                  bgeu         a3, s8, 744f
                  srl          a3, t0, s4
                  ori          tp, s10, -862
                  addi         s7, a7, -79
                  auipc        a5, 1030901
                  blt          s3, a2, 742f
                  sub          t5, a5, t4
                  sub          s0, a4, a5
                  slti         s6, s9, -567
                  lui          a7, 69639
                  ori          t2, t2, -382
740:              sub          t3, a7, sp
                  bgeu         a1, t1, 742f
742:              xori         t4, zero, -923
                  ori          a2, s9, -2041
744:              nop
                  bne          a2, a7, 753f
                  lui          t0, 351880
                  sltiu        zero, t6, -47
                  sltiu        t3, t2, 152
                  bgeu         s10, s0, 760f
                  srl          s10, a2, s1
                  slt          a7, s8, a7
                  andi         t0, t0, -792
753:              bne          sp, sp, 768f
                  srai         t3, sp, 17
                  sub          t1, tp, ra
                  or           t6, a5, s5
                  and          gp, ra, t6
                  xor          s5, a0, a6
                  blt          t6, t5, 763f
760:              lui          a3, 751564
                  ori          tp, a4, -1694
                  blt          t2, s6, 774f
763:              ori          t0, a0, 1768
                  sub          s7, s3, t0
                  slt          a2, s0, s5
                  srl          a7, sp, tp
                  bge          s8, t4, 770f
768:              or           a7, s3, s3
                  sra          t1, sp, s2
770:              srai         tp, gp, 12
                  bne          a7, s9, 774f
                  slli         s10, t1, 14
                  slt          a1, s5, a0
774:              slli         a5, s7, 1
                  bge          s4, t4, 795f
                  and          a5, s10, a7
                  blt          t0, t0, 780f
                  bne          a6, t5, 785f
                  slti         s7, s11, 1461
780:              sltu         s7, s11, t2
                  xor          s9, a1, a3
                  addi         ra, s5, 1814
                  bgeu         a4, s3, 791f
                  sub          s1, s3, ra
785:              srli         t4, a1, 26
                  or           a2, s4, s1
                  or           t0, s1, s6
                  srl          t5, tp, a2
                  add          t2, t1, a3
                  andi         s1, s11, 219
791:              bgeu         zero, a6, 805f
                  lui          a1, 494584
                  sub          s8, s11, t3
                  srl          a6, a0, s0
795:              sltiu        a2, s1, -1508
                  xori         a5, t6, -1771
                  xor          s4, s7, t6
                  bge          ra, tp, 817f
                  add          zero, gp, s5
                  xori         t1, t4, 1721
                  sltu         t0, s11, s0
                  slt          s3, a5, a6
                  bge          zero, s1, 820f
                  xor          s4, s7, s11
805:              slli         a4, a0, 13
                  xori         a7, ra, -1884
                  addi         tp, t0, 1444
                  and          t5, t5, zero
                  bltu         a7, zero, 813f
                  lui          s1, 485351
                  lui          a2, 272924
                  slli         t6, zero, 2
813:              slli         s0, ra, 5
                  bne          s9, a1, 823f
                  lui          s6, 691580
                  sll          t0, tp, s11
817:              bgeu         s11, s3, 829f
                  andi         t3, s2, 1928
                  beq          s6, s1, 820f
820:              auipc        zero, 677250
                  bltu         sp, s9, 839f
                  bne          a4, s7, 835f
823:              lui          a0, 210346
                  bne          t0, s9, 838f
                  addi         s3, t4, 1767
                  and          s5, a0, a3
                  addi         s1, a2, 2031
                  nop
829:              addi         a7, t2, 1457
                  slt          t6, s9, t1
                  xori         tp, t3, 1066
                  slt          t6, a1, t0
                  sll          s8, s0, s1
                  bge          s11, a3, 853f
835:              auipc        s0, 877273
                  sra          gp, gp, s5
                  add          s6, tp, s0
838:              srai         t1, a2, 10
839:              auipc        t4, 531570
                  slt          a0, t4, gp
                  xori         s4, gp, 971
                  bne          s7, t4, 844f
                  sra          t3, s5, sp
844:              or           s0, t3, t0
                  nop
                  slt          zero, s2, s6
                  slt          s5, a4, s2
                  xor          s0, a4, a7
                  add          t2, sp, s3
                  bltu         a6, s10, 864f
                  auipc        t4, 301238
                  sltiu        s5, s4, -2001
853:              xori         gp, s6, -1413
                  lui          a0, 1005577
                  blt          t2, s3, 875f
                  and          a6, t5, t5
                  xor          s3, t0, tp
                  sra          tp, s8, gp
                  slti         t0, t4, 552
                  and          t2, gp, a5
                  slti         s6, zero, 72
                  add          a2, t4, a5
                  xori         s5, a4, -1344
864:              slli         s3, a5, 4
                  slt          zero, s7, tp
                  or           a2, s10, a7
                  xor          a1, a5, t3
                  nop
                  xor          s3, t4, s4
                  sltu         ra, a1, s9
                  sra          t4, s7, t1
                  nop
                  slt          a7, sp, t6
                  bge          a3, s0, 885f
875:              bge          s9, s5, 890f
                  slti         t0, a2, 71
                  sltiu        a1, t0, -829
                  ori          t4, t4, 1310
                  slli         s4, t1, 30
                  add          t0, s10, zero
                  add          s1, a5, t4
                  bltu         t6, zero, 890f
                  bge          t2, t5, 898f
                  add          s6, t2, s11
885:              or           s10, a4, t1
                  bne          t1, a7, 887f
887:              bgeu         t0, a5, 894f
                  and          t4, s7, t2
                  srai         s3, a1, 30
890:              xori         a1, s8, -1146
                  andi         a7, zero, -1694
                  and          t3, sp, s2
                  bgeu         s3, s1, 913f
894:              xor          s3, tp, a4
                  srl          tp, a1, a7
                  bgeu         a0, a7, 904f
                  sub          s10, s8, s3
898:              bltu         a7, a7, 915f
                  sltu         s0, s10, a3
                  bge          s10, t5, 919f
                  bltu         t6, s10, 919f
                  sltiu        a3, t4, 854
                  srl          a4, t4, t6
904:              or           s0, tp, t2
                  add          t1, a6, s11
                  bne          t5, a6, 910f
                  sll          a6, sp, a6
                  or           s9, t6, t6
                  xori         zero, a1, -315
910:              sll          s5, t4, tp
                  slt          t3, gp, t0
                  bne          t2, a2, 915f
913:              auipc        a4, 628463
                  sltu         ra, s0, s0
915:              xori         a2, a7, -1543
                  andi         a4, a7, -558
                  blt          ra, t5, 937f
                  xori         s1, t6, 1155
919:              sll          ra, s8, s8
                  sll          t0, a6, zero
                  sub          s9, s4, a1
                  auipc        s8, 901627
                  xor          a6, s9, t3
                  sltu         a0, s6, s3
                  lui          s3, 852978
                  addi         t6, a4, -814
                  srl          a3, a0, a1
                  sltu         s5, a2, a7
                  andi         ra, zero, 389
                  beq          tp, s7, 933f
                  or           t1, s4, t0
                  or           a6, s2, s8
933:              bne          tp, s2, 944f
                  nop
                  sll          s9, s4, a1
                  blt          t1, a2, 948f
937:              bltu         a0, ra, 940f
                  beq          t4, zero, 952f
                  andi         a3, t0, 1052
940:              slt          a0, s10, t2
                  bgeu         a7, s6, 960f
                  srai         s1, zero, 9
                  andi         s8, s8, 1099
944:              nop
                  auipc        a4, 399894
                  xor          a4, s2, s9
                  srli         t4, s1, 29
948:              srli         s1, s11, 6
                  srli         t2, s2, 14
                  beq          t1, t5, 964f
                  xori         t3, s4, -437
952:              or           t4, s0, tp
                  srli         s8, t5, 11
                  srai         s9, tp, 18
                  srai         a4, a6, 8
                  srli         t5, s1, 19
                  xor          a4, s2, s9
                  blt          ra, zero, 972f
                  sltiu        t1, gp, 1614
960:              srl          t3, t3, a3
                  addi         s7, t6, -99
                  xor          s7, s10, tp
                  sltiu        a6, t3, -1858
964:              nop
                  add          s3, s7, s7
                  addi         t1, a6, 1326
                  nop
                  slti         ra, t2, 814
                  sll          zero, gp, t4
                  and          a3, a6, s11
                  auipc        a6, 433610
972:              sltiu        a5, t3, -840
                  sltu         s8, t6, a3
                  srli         s7, t6, 7
                  sltu         a7, a5, a5
                  bge          a5, sp, 977f
977:              addi         a6, t2, -896
                  add          t1, s5, s10
                  sltiu        s8, a4, -2035
                  sra          a0, ra, s1
                  or           ra, s8, ra
                  and          s8, ra, t5
                  or           zero, t3, t5
                  sra          tp, s3, s2
                  sltu         t0, s1, s4
                  bltu         a6, s4, 998f
                  xor          s5, s5, a6
                  slti         s0, t3, 125
                  blt          a6, a6, 1004f
                  sra          s9, a1, t5
                  xori         s3, t5, 1204
                  xor          a3, s2, t4
                  sra          a4, zero, t2
                  srai         t1, s1, 4
                  sub          a0, a6, t6
                  srli         s10, sp, 29
                  sltiu        a0, s11, 1139
998:              sltu         t1, s8, a1
                  sll          s1, a7, tp
                  nop
                  ori          t5, s0, -627
                  and          a3, a5, sp
                  srai         a0, t0, 1
1004:             blt          s4, a2, 1012f
                  nop
                  srai         t1, s9, 19
                  bne          a4, s1, 1009f
                  sub          a3, s8, gp
1009:             sltiu        s0, t3, 1338
                  blt          tp, t5, 1021f
                  srai         gp, s10, 6
1012:             slti         s1, zero, 521
                  bne          s3, t1, 1022f
                  sltiu        t0, s4, -1458
                  ori          s1, t3, -1842
                  andi         a1, sp, -127
                  addi         a2, t3, -1602
                  and          a0, s4, s6
                  bne          t0, sp, 1023f
                  andi         t6, s8, 507
1021:             sll          s5, t6, s0
1022:             andi         t5, t1, -386
1023:             bge          a0, a0, 1031f
                  slti         t1, a5, 566
                  xor          s5, s2, t3
                  srl          t6, ra, a0
                  slli         t3, t3, 4
                  sll          t3, zero, t5
                  nop
                  blt          s10, t1, 1043f
1031:             bge          s8, a0, 1039f
                  srai         a6, s2, 21
                  slli         t5, s6, 30
                  beq          s8, gp, 1043f
                  sltu         t4, t3, s7
                  slli         zero, a2, 21
                  addi         t4, a2, -963
                  bgeu         s11, a1, 1052f
1039:             slli         t6, s7, 25
                  ori          a0, s0, 207
                  lui          s8, 95206
                  bne          s11, a3, 1057f
1043:             xor          tp, a3, s7
                  auipc        s6, 96808
                  nop
                  addi         a4, a6, 1362
                  addi         a3, s9, -990
                  srai         t6, s2, 25
                  sltu         t6, a4, s8
                  add          a1, s9, t1
                  or           ra, zero, t0
1052:             sra          t5, a4, a4
                  andi         s8, t4, -173
                  addi         s3, t5, -1832
                  sra          t5, s9, s11
                  sltu         s4, a5, a0
1057:             xor          a0, s10, a6
                  bgeu         s5, s9, 1078f
                  srai         a2, s1, 10
                  sra          a6, a3, s4
                  blt          t3, s5, 1062f
1062:             bgeu         t1, t0, 1081f
                  beq          s2, ra, 1066f
                  lui          zero, 706043
                  srli         t6, a3, 22
1066:             srli         a4, ra, 14
                  sltu         a5, a1, tp
                  ori          s7, s10, -1325
                  lui          s10, 539470
                  sltiu        a2, a4, -305
                  srli         s6, a0, 29
                  nop
                  srai         s10, ra, 7
                  bltu         s7, a0, 1088f
                  srli         s5, a1, 11
                  bgeu         a6, s2, 1096f
                  sra          s0, s4, s1
1078:             auipc        t6, 807668
                  srai         a4, t1, 15
                  bge          s4, a5, 1098f
1081:             slt          s9, s11, a7
                  xori         t6, t1, -298
                  bge          s6, s10, 1097f
                  blt          a3, ra, 1095f
                  slti         s9, t4, 551
                  slti         a3, gp, 1223
                  sra          s6, s4, sp
1088:             auipc        s9, 372104
                  and          s7, s1, t0
                  andi         s10, s11, -800
                  blt          s0, s3, 1099f
                  lui          t0, 1043621
                  srai         a3, t4, 26
                  xori         a5, s0, 1714
1095:             sub          a7, a0, s7
1096:             andi         s0, s9, 1572
1097:             blt          t3, a3, 1105f
1098:             xor          ra, gp, ra
1099:             addi         s5, s5, -909
                  add          s7, s1, s3
                  srli         a3, s6, 2
                  addi         a6, a0, 1087
                  xori         s6, t6, -1335
                  sltu         t0, a7, sp
1105:             bgeu         a5, a2, 1109f
                  beq          tp, tp, 1109f
                  srli         s5, t0, 20
                  ori          a3, s7, -1386
1109:             auipc        zero, 119712
                  slt          gp, tp, t3
                  or           a4, t5, t3
                  sra          t6, s3, a1
                  lui          t6, 224585
                  ori          a5, ra, 1837
                  blt          t3, s4, 1126f
                  sll          s1, a0, t5
                  and          s8, t4, s3
                  sltiu        t1, s9, -1221
                  bgeu         s2, t6, 1127f
                  nop
                  sra          s8, t3, s2
                  xori         t3, a7, -1702
                  or           s1, zero, a6
                  bne          t3, a4, 1139f
                  xor          t3, t0, a0
1126:             sub          t0, t5, s1
1127:             bge          s10, t2, 1129f
                  la           t5, region_0+1316 #start riscv_load_store_rand_instr_stream_12
                  xor          a2, s3, s4
                  sll          a3, a7, a5
                  sltu         s0, a3, s2
                  lb           s3, -53(t5)
                  lh           zero, -36(t5)
                  slli         a3, a0, 15
                  and          zero, t0, tp
                  lui          a0, 1043966
                  sltu         s8, sp, sp
                  sb           a7, 13(t5)
                  slli         a7, s7, 29
                  srai         a4, a7, 21
                  lui          s3, 316148
                  sub          s4, s1, ra
                  lbu          s1, 23(t5)
                  srli         t4, ra, 8
                  sb           tp, 41(t5)
                  lbu          t4, 19(t5)
                  slti         s7, s11, 310
                  lw           s9, -36(t5)
                  slt          s9, a7, t0
                  and          a0, s4, s10
                  andi         s4, a4, 1903
                  add          s0, t3, a7
                  srai         s5, zero, 28
                  sll          gp, sp, a4
                  slt          s4, ra, s3
                  lb           tp, 46(t5)
                  sh           t2, 0(t5)
                  lb           a1, 29(t5)
                  lb           s6, 2(t5)
                  srai         zero, zero, 27
                  sh           t4, -12(t5)
                  sb           s1, -26(t5)
                  ori          a3, a0, -1655
                  add          zero, a0, a4
                  srl          a7, s9, s1
                  lui          s7, 207997
                  sltu         s4, a4, a5
                  addi         a4, s6, -218
                  lhu          s9, 48(t5) #end riscv_load_store_rand_instr_stream_12
                  sltiu        s1, t5, -54
1129:             sub          tp, s8, tp
                  sub          ra, a2, a5
                  bge          s2, sp, 1139f
                  lui          zero, 145245
                  sub          t4, t5, a0
                  srli         s10, t3, 21
                  sra          a6, t2, a0
                  sll          t1, a6, ra
                  auipc        s10, 345670
                  andi         s5, a4, 1287
1139:             addi         a5, t5, -1624
                  sll          zero, s2, gp
                  addi         s6, s9, 1916
                  blt          s6, t3, 1159f
                  srli         t4, t1, 22
                  or           zero, a2, s10
                  or           a2, s9, a6
                  slli         s6, tp, 9
                  srai         s5, s8, 12
                  andi         ra, s0, 1384
                  addi         s0, s6, 733
                  srli         t2, t4, 20
                  slli         t3, t2, 9
                  sub          gp, s7, zero
                  and          s5, a5, a6
                  sltu         s8, s11, a7
                  bge          s9, a2, 1174f
                  bgeu         tp, tp, 1159f
                  srai         ra, a7, 3
                  bgeu         s7, s9, 1171f
1159:             auipc        s7, 941035
                  auipc        t6, 211669
                  addi         t5, s7, 1769
                  xor          s7, s8, sp
                  bltu         ra, t1, 1175f
                  andi         s5, t3, -335
                  srli         s4, a4, 2
                  sltu         s10, s3, a0
                  blt          a0, a5, 1174f
                  xori         t5, a2, 1909
                  addi         a2, s8, 1269
                  sra          a3, ra, tp
1171:             nop
                  and          t3, sp, a4
                  srl          t2, s1, s9
1174:             and          s3, s3, ra
1175:             sra          a5, t4, t0
                  or           s9, t0, t4
                  bgeu         a0, t1, 1189f
                  nop
                  ori          a0, s4, -1770
                  slli         s8, gp, 30
                  andi         s8, a6, 1944
                  andi         a1, s10, -1953
                  xori         t3, a2, -285
                  xor          a3, s3, ra
                  bgeu         t4, s10, 1189f
                  or           s4, s8, t3
                  sub          t4, s1, a1
                  sra          s1, s5, a7
1189:             bltu         t5, t4, 1190f
1190:             sra          gp, s10, t1
                  andi         s1, gp, -1516
                  addi         gp, tp, 1348
                  sltiu        s7, s3, -1722
                  auipc        s7, 36486
                  srli         t5, a6, 23
                  nop
                  sltu         s1, s11, t2
                  srai         s4, a1, 10
                  add          s7, t2, a1
                  xor          ra, a3, t3
                  srai         zero, zero, 7
                  ori          s8, t3, 1726
                  bltu         a4, t1, 1205f
                  bltu         s4, s2, 1218f
1205:             slli         s0, s3, 20
                  bgeu         s2, s1, 1217f
                  srli         t4, s5, 1
                  sra          t6, s4, a4
                  srai         s10, t6, 26
                  xor          zero, gp, t6
                  sltu         s9, t2, s10
                  sra          a0, s6, s10
                  sub          a0, s5, s4
                  slt          zero, ra, t0
                  blt          ra, a7, 1216f
1216:             bne          s7, zero, 1217f
1217:             sltu         a3, a1, t0
1218:             beq          zero, a5, 1232f
                  xor          a1, s5, t2
                  ori          s4, ra, 1028
                  bgeu         tp, a7, 1235f
                  blt          s10, s9, 1237f
                  sltiu        t3, t2, -1967
                  lui          s4, 412933
                  bge          a7, t3, 1234f
                  bgeu         t1, s1, 1245f
                  sltiu        a1, gp, 504
                  slli         zero, t3, 11
                  sub          a0, zero, sp
                  bne          s4, tp, 1233f
                  and          tp, s5, a0
1232:             andi         t3, t5, -1321
1233:             and          a4, a2, ra
1234:             andi         t5, t5, -999
1235:             nop
                  srl          tp, a7, t2
1237:             ori          t6, s2, 1557
                  lui          a5, 146532
                  add          t1, a7, zero
                  nop
                  and          a7, sp, a1
                  bge          ra, a7, 1257f
                  xor          a3, s11, s9
                  bgeu         tp, s4, 1255f
1245:             bltu         s7, s8, 1258f
                  slt          s6, t5, s8
                  beq          s7, s11, 1266f
                  slt          a3, s1, a6
                  beq          s9, t1, 1266f
                  add          s6, s8, t0
                  sll          t1, s8, s11
                  sra          s3, s10, tp
                  and          s5, t5, s0
                  or           a2, s9, a0
1255:             srl          t5, s11, a7
                  ori          t6, sp, 1305
1257:             lui          t6, 653818
1258:             xor          t3, tp, zero
                  bge          s11, s11, 1262f
                  slti         s8, s3, 396
                  sltu         s7, t5, tp
1262:             sra          s8, t2, t4
                  auipc        t0, 96449
                  sltiu        s10, s0, 591
                  srl          s5, s5, a1
1266:             xori         s1, t4, -1251
                  bge          s5, t0, 1275f
                  xori         s7, a6, -1048
                  ori          a5, sp, -476
                  beq          s6, sp, 1288f
                  sll          s1, gp, s3
                  andi         s1, zero, -434
                  sll          zero, tp, s10
                  xori         s10, sp, -902
1275:             addi         ra, sp, 396
                  slli         s10, s2, 9
                  ori          t3, t3, 1257
                  and          a5, s2, s4
                  xor          a0, s6, s11
                  and          gp, s0, s10
                  slt          t2, t1, a1
                  sub          a0, s8, a6
                  slt          t3, t1, t0
                  bge          s6, t3, 1296f
                  sub          t6, s3, s8
                  or           s8, t1, a6
                  slti         a3, zero, 1195
1288:             add          tp, s11, a5
                  sltiu        t1, tp, -941
                  nop
                  xor          s7, zero, a0
                  lui          t0, 1019257
                  sra          s1, s10, t2
                  sltiu        t0, a6, 1804
                  srl          a4, s1, a5
1296:             and          t3, s9, a4
                  slt          s0, a6, t6
                  lui          ra, 833643
                  srl          s3, s6, a7
                  bgeu         s1, a1, 1308f
                  bge          s9, a6, 1305f
                  sltu         a0, s6, s3
                  bge          s8, t3, 1323f
                  add          tp, t1, s7
1305:             slti         t5, a1, 513
                  srl          tp, s9, t5
                  or           t0, s4, tp
1308:             srl          s5, a6, s0
                  and          t6, t4, a6
                  bge          a7, a1, 1318f
                  bltu         t5, t0, 1323f
                  xor          t0, a2, gp
                  sll          s7, a1, ra
                  add          t1, a6, a0
                  xori         zero, s3, 1316
                  and          a6, a6, t6
                  or           a4, a7, s3
1318:             srai         s10, s9, 18
                  sll          t0, s11, s5
                  slt          t6, s9, a4
                  bltu         s6, a0, 1328f
                  bge          t1, s1, 1330f
1323:             sub          t2, gp, t1
                  auipc        s5, 1021260
                  bltu         s2, t1, 1345f
                  or           ra, t6, s7
                  slli         t0, a5, 24
1328:             sltu         s0, a4, a6
                  and          s5, a7, t4
1330:             nop
                  srai         ra, s4, 31
                  lui          a4, 971266
                  sll          a2, s10, ra
                  sltu         t2, t0, s8
                  sra          s3, a2, s7
                  auipc        t4, 746361
                  blt          a5, t4, 1341f
                  srl          gp, s11, s0
                  slli         s6, s8, 21
                  bltu         t1, s10, 1343f
1341:             srai         a2, s2, 26
                  nop
1343:             slti         s9, a7, 590
                  sub          s0, t2, a2
1345:             srli         s4, s8, 2
                  blt          a7, a5, 1360f
                  and          a3, s11, gp
                  slti         s5, a0, 600
                  add          a3, s5, a7
                  and          s9, a3, gp
                  sltu         s3, a3, a4
                  srli         s5, t5, 20
                  addi         t0, t4, -324
                  and          t5, a6, a1
                  bgeu         a5, t6, 1374f
                  sub          a0, s6, a2
                  sltiu        gp, s1, -27
                  sub          s8, a0, tp
                  slli         a3, gp, 28
1360:             slti         t4, gp, -1710
                  sra          s4, gp, s1
                  sltiu        t3, s11, 722
                  slli         a7, t5, 19
                  sll          ra, ra, a6
                  bltu         t2, s9, 1383f
                  nop
                  bne          s9, s0, 1386f
                  or           t2, a0, ra
                  srai         s4, a6, 25
                  xori         t1, t2, 1706
                  addi         t2, t2, 593
                  sll          t4, a7, t2
                  ori          s1, s5, 1272
1374:             andi         a0, s8, -842
                  and          a2, s11, t1
                  bge          a2, t3, 1387f
                  sll          a3, a7, s2
                  and          a5, ra, t0
                  sra          s8, t3, s8
                  bge          s11, s4, 1397f
                  and          t2, s9, gp
                  srl          a7, a0, s11
1383:             ori          a7, a0, -2007
                  sltu         zero, t4, zero
                  slti         t4, s9, 667
1386:             bltu         t3, a0, 1397f
1387:             slti         tp, s10, 31
                  srli         zero, t1, 3
                  slli         a5, t1, 27
                  slti         a1, ra, -1955
                  ori          a2, s5, -1396
                  auipc        s9, 946863
                  sll          t5, s1, t6
                  sltu         a6, zero, t2
                  srl          a7, a3, sp
                  sub          s0, tp, s5
1397:             xor          a4, a0, a4
                  srli         a3, s3, 0
                  beq          s8, s9, 1402f
                  slli         a5, t3, 19
                  sll          t0, tp, a7
1402:             andi         tp, s3, 1246
                  slli         s3, a0, 7
                  ori          tp, s9, 546
                  xor          s1, t1, s5
                  add          s10, s5, a0
                  sub          ra, a2, sp
                  sll          s3, t3, s4
                  srai         ra, s4, 6
                  blt          t4, ra, 1423f
                  slti         a5, t5, 995
                  ori          a1, t4, 1035
                  srli         a7, a5, 20
                  auipc        s8, 715503
                  nop
                  beq          s5, s7, 1430f
                  bgeu         t5, t3, 1437f
                  srli         a6, t6, 28
                  and          a5, a7, zero
                  bltu         s1, tp, 1422f
                  beq          sp, a5, 1433f
1422:             xor          a2, zero, s11
1423:             addi         s5, a1, -1062
                  sltu         t5, s5, s3
                  srli         s9, s1, 14
                  sra          a1, s5, s7
                  and          t2, s3, t2
                  bgeu         tp, t5, 1443f
                  addi         gp, sp, -1133
1430:             slli         s8, s3, 25
                  andi         tp, a0, 1402
                  and          s0, a0, s6
1433:             sltu         t6, t4, s9
                  slt          a5, a7, t4
                  slt          a0, ra, t1
                  srl          a4, sp, a7
1437:             sra          a6, t4, a5
                  xori         s3, s7, -1318
                  srai         t1, a7, 27
                  bgeu         gp, t3, 1443f
                  add          s0, s11, s7
                  sra          s1, t0, s4
1443:             andi         s1, a2, -991
                  slt          t0, a1, t2
                  or           s0, s11, zero
                  andi         ra, a3, 1151
                  bge          t5, s6, 1451f
                  beq          tp, tp, 1455f
                  addi         s3, s7, -830
                  slt          s1, s3, s7
1451:             sltu         s3, zero, a4
                  sll          a1, s3, s6
                  bltu         a3, s2, 1456f
                  or           s5, ra, t5
1455:             bgeu         gp, a0, 1456f
1456:             sub          s6, a5, s5
                  beq          ra, a3, 1461f
                  sra          a6, a1, s0
                  blt          s11, s9, 1467f
                  srl          a3, zero, tp
1461:             xor          tp, zero, s3
                  slt          a3, sp, t2
                  xori         a2, t0, -1828
                  auipc        t5, 957927
                  nop
                  slli         s5, s11, 5
1467:             srl          a5, t2, t0
                  bne          s5, s4, 1476f
                  beq          s8, a3, 1478f
                  sra          t5, t4, t4
                  sra          a0, a1, s1
                  addi         s5, t5, -1726
                  bge          t3, zero, 1487f
                  bgeu         sp, gp, 1475f
1475:             auipc        a1, 843780
1476:             beq          s1, t4, 1488f
                  add          zero, t4, a0
1478:             bgeu         tp, sp, 1498f
                  sra          t6, ra, a5
                  slti         s3, a0, -594
                  sltu         s3, tp, s7
                  srai         s6, a4, 22
                  srli         a6, s2, 0
                  sltiu        s9, s7, -482
                  srai         t2, a0, 26
                  and          t0, s1, a2
1487:             or           t5, t2, a7
1488:             add          s3, t5, a1
                  nop
                  beq          a4, t2, 1498f
                  bge          a4, a4, 1499f
                  sll          t2, t1, sp
                  nop
                  bne          t1, t2, 1509f
                  sll          a3, s6, a7
                  blt          t2, a5, 1508f
                  srl          t1, t5, tp
1498:             sub          s1, t2, s10
1499:             sltiu        s3, t1, 697
                  srli         t1, s2, 14
                  bltu         a5, s9, 1513f
                  ori          t2, s5, -337
                  bgeu         a5, sp, 1518f
                  auipc        a0, 883085
                  andi         t2, s1, -1095
                  and          a7, s7, s3
                  and          s10, s5, t0
1508:             bltu         s10, t2, 1525f
1509:             bne          a3, ra, 1523f
                  lui          t1, 131989
                  sra          s9, s2, s6
                  lui          s6, 916615
1513:             slti         gp, s10, -195
                  xor          a1, a1, ra
                  sltu         a7, t0, sp
                  bltu         t6, s2, 1536f
                  sll          a1, a6, s2
1518:             blt          s10, tp, 1533f
                  beq          s10, a5, 1523f
                  nop
                  sub          ra, s0, a7
                  slli         s4, a3, 28
1523:             xor          s10, t2, t3
                  sra          a1, s7, a5
1525:             bne          s4, s7, 1529f
                  sltiu        s6, s3, -1044
                  andi         a6, tp, -1647
                  sub          s9, gp, a4
1529:             bgeu         s4, t3, 1538f
                  xori         t4, s8, 334
                  beq          s8, t4, 1544f
                  bgeu         s5, a7, 1546f
1533:             srl          a2, zero, ra
                  addi         s5, a6, 1029
                  sub          s9, zero, a1
1536:             and          s5, a0, s5
                  andi         a3, t2, -879
1538:             and          zero, t5, t2
                  sra          s6, s6, zero
                  xori         t0, s8, -780
                  or           tp, zero, ra
                  bne          a7, a0, 1556f
                  slt          s4, a2, sp
1544:             bge          s1, a5, 1551f
                  sltiu        s7, t5, 1809
1546:             bgeu         gp, zero, 1557f
                  andi         s0, s2, 979
                  xori         t1, t1, -203
                  ori          a0, a1, 1960
                  sra          a5, ra, t1
1551:             ori          a3, tp, -841
                  beq          s1, t4, 1553f
1553:             add          s6, sp, tp
                  slt          a2, zero, t2
                  xori         t1, s4, 1459
1556:             addi         s4, s11, -650
1557:             srl          t1, a6, a6
                  srli         a4, s9, 25
                  sll          a0, gp, a5
                  bge          s1, s10, 1580f
                  srai         zero, a5, 13
                  add          tp, s7, s7
                  addi         s5, a0, 420
                  bge          tp, a2, 1566f
                  and          a7, t2, s4
1566:             xori         s4, sp, 194
                  lui          ra, 348342
                  srai         a3, s4, 23
                  slti         s0, a3, 1494
                  xor          s9, a2, ra
                  srl          a0, a3, a2
                  bne          s10, a6, 1580f
                  andi         s8, ra, 1453
                  srl          t4, s8, s10
                  lui          t2, 649516
                  slli         s6, s2, 3
                  or           s3, a5, s7
                  sra          a4, a0, a6
                  xori         s3, t5, -934
1580:             xor          s1, s10, s1
                  sll          t4, a6, gp
                  blt          s5, t4, 1590f
                  auipc        s0, 659500
                  bgeu         s9, t6, 1585f
1585:             srl          t1, gp, s0
                  and          s0, s4, a5
                  lui          ra, 1000826
                  slli         s0, zero, 3
                  sltiu        a1, s1, -463
1590:             andi         a5, sp, 840
                  srl          a2, s6, tp
                  slti         s0, a6, -932
                  beq          t0, a1, 1596f
                  add          gp, t0, s9
                  sll          zero, a5, s2
1596:             slt          s3, ra, t4
                  srli         t2, a4, 25
                  srai         a6, s1, 14
                  or           s9, s0, t5
                  sltiu        a5, ra, -1543
                  sll          t5, a6, s6
                  bge          t4, s3, 1605f
                  bne          sp, s2, 1611f
                  bgeu         t6, t5, 1622f
1605:             bne          gp, s6, 1608f
                  srai         s9, s10, 17
                  add          a5, s5, s1
1608:             bge          t3, s10, 1619f
                  srai         a2, a3, 7
                  srli         t4, a1, 26
1611:             srli         s10, s11, 20
                  sltiu        a3, a7, -183
                  bge          a6, a3, 1632f
                  lui          s7, 619760
                  lui          s4, 210585
                  andi         t2, s3, -805
                  sltiu        a0, t4, 1986
                  bltu         s4, t6, 1637f
1619:             or           s0, a5, s4
                  ori          a3, s7, -361
                  bge          a6, t3, 1629f
1622:             slti         s10, s10, -484
                  srl          t0, t6, gp
                  bne          a5, s8, 1625f
1625:             add          a4, a0, s7
                  nop
                  nop
                  ori          t5, tp, -1224
1629:             and          s10, sp, s10
                  xori         tp, t0, -268
                  bne          s10, zero, 1650f
1632:             auipc        s6, 372266
                  sll          s6, a1, s2
                  slli         a2, a2, 10
                  xori         s4, s3, -1743
                  auipc        a6, 409861
1637:             lui          t1, 906755
                  bltu         t2, t1, 1653f
                  ori          gp, t2, -802
                  slti         a4, a7, -1541
                  and          t1, zero, s0
                  blt          t5, t6, 1660f
                  sltiu        ra, sp, -838
                  sub          s0, a4, s10
                  andi         a6, t0, -610
                  xor          ra, a5, a5
                  blt          tp, s6, 1650f
                  and          a2, t4, a2
                  xor          gp, s0, a4
1650:             srai         s8, s9, 0
                  xor          a1, a0, t1
                  addi         s0, s9, -1929
1653:             ori          t4, t1, -620
                  slli         a0, s6, 4
                  sra          zero, a0, t0
                  srli         a5, ra, 8
                  auipc        t3, 515306
                  xor          s7, a3, t2
                  or           s6, a1, t4
1660:             or           t1, t1, t3
                  bge          a5, s5, 1663f
                  xor          t0, zero, t4
1663:             srai         a3, t5, 13
                  xori         t1, s5, -1236
                  xori         a3, t1, -1717
                  srai         a0, s2, 30
                  auipc        s9, 232756
                  sltiu        t1, tp, 960
                  xor          t5, a3, a0
                  sub          s3, a0, ra
                  xori         a3, zero, 360
                  blt          a3, a7, 1683f
                  nop
                  nop
                  auipc        s3, 330158
                  xor          t2, s8, s11
                  xori         ra, sp, -301
                  add          s9, s7, t3
                  beq          s1, a4, 1693f
                  or           s1, t0, s2
                  add          s10, t5, t2
                  auipc        s1, 400413
1683:             srl          ra, a3, a7
                  lui          t1, 277195
                  slti         t3, s9, -658
                  auipc        t0, 369920
                  sltiu        t4, t2, 1832
                  srl          a0, sp, a7
                  slti         t6, s0, -1841
                  bltu         ra, t6, 1693f
                  addi         s5, zero, 936
                  bge          s11, s4, 1707f
1693:             nop
                  xor          s4, t3, tp
                  bge          s0, s1, 1707f
                  blt          t4, a2, 1697f
1697:             sltu         a3, t4, s6
                  ori          s5, s6, 1613
                  slli         tp, a1, 22
                  or           a0, s7, s8
                  addi         s1, s9, 716
                  nop
                  srai         s10, ra, 23
                  or           a0, s11, s8
                  lui          t1, 290715
                  sltiu        t3, s7, 342
1707:             slti         s1, gp, 666
                  bge          a4, s1, 1717f
                  srl          s3, a6, a5
                  andi         a6, t5, 597
                  sll          t2, zero, s5
                  srli         zero, a7, 1
                  xori         s8, ra, -1398
                  xor          s8, t2, t3
                  sltiu        zero, s4, -420
                  ori          t3, t6, 1351
1717:             sra          t5, s8, t1
                  blt          s6, ra, 1726f
                  ori          t2, s3, -1827
                  srli         s1, s3, 12
                  sub          s7, a1, s5
                  auipc        zero, 98800
                  sll          tp, s3, s11
                  or           t2, t4, s5
                  bltu         a7, s11, 1729f
1726:             blt          t5, s1, 1739f
                  bgeu         sp, a3, 1738f
                  bne          s3, t4, 1736f
1729:             xori         a3, s6, 1673
                  bgeu         t5, a6, 1737f
                  bge          sp, s10, 1745f
                  nop
                  blt          zero, zero, 1737f
                  bgeu         a6, s5, 1742f
                  or           s9, a5, t1
1736:             srl          tp, t6, a5
1737:             auipc        a3, 1046196
1738:             sll          s8, a7, t1
1739:             sltiu        s1, t1, 1664
                  bgeu         s7, s11, 1748f
                  srai         s0, zero, 0
                  la           t0, region_1+929 #start riscv_load_store_rand_instr_stream_1
                  lbu          tp, 800(t0)
                  lbu          a4, -764(t0)
                  lb           t1, -556(t0)
                  lbu          a6, 411(t0)
                  lb           a6, 888(t0)
                  sub          s1, a4, a5
                  sll          a1, tp, s1
                  sb           a0, -324(t0)
                  lw           ra, 363(t0)
                  lbu          tp, 358(t0)
                  sh           a0, -403(t0)
                  lbu          a3, 1064(t0)
                  andi         a6, s5, -269
                  xori         a1, ra, -710
                  sb           s3, 682(t0)
                  auipc        s10, 32290
                  lbu          zero, 544(t0)
                  sb           a3, 290(t0)
                  sb           s11, 670(t0)
                  lhu          s10, -333(t0)
                  nop
                  addi         s8, a2, -1016
                  lbu          s6, -916(t0)
                  lbu          s6, -260(t0)
                  lh           s1, -307(t0)
                  sra          s10, a3, s9
                  ori          s9, t5, -1210
                  sb           a2, -366(t0)
                  sll          t1, t1, sp
                  sltiu        a3, sp, 1683
                  lbu          a5, 812(t0)
                  lh           zero, -897(t0)
                  lb           zero, -500(t0)
                  lw           s4, -909(t0)
                  lb           a4, 922(t0) #end riscv_load_store_rand_instr_stream_1
1742:             andi         a5, gp, -1508
                  sll          s4, gp, a7
                  nop
1745:             bge          s9, a0, 1759f
                  bge          t0, gp, 1758f
                  or           s6, ra, s10
1748:             or           s9, t6, tp
                  slt          t3, a7, zero
                  addi         s9, s5, -871
                  auipc        s3, 609994
                  srl          s7, a3, s7
                  sra          t6, s2, t2
                  sra          s3, s8, s2
                  blt          s7, s3, 1758f
                  xor          tp, s8, t2
                  ori          t4, zero, -346
1758:             slti         s4, s0, -218
1759:             nop
                  slt          t5, gp, a7
                  xori         s8, s0, -128
                  bge          t3, a1, 1779f
                  sra          gp, t4, t5
                  bltu         t5, t1, 1784f
                  addi         a0, s7, 882
                  andi         ra, a1, 948
                  slti         s4, s3, 1964
                  auipc        s1, 260359
                  slt          a6, t4, tp
                  bge          a6, ra, 1790f
                  sub          s5, t3, t2
                  beq          s3, t6, 1791f
                  srai         a3, s0, 6
                  srli         t2, a0, 3
                  or           s0, s7, a0
                  addi         a2, a7, 1262
                  xori         s4, t3, -1432
                  slli         s3, ra, 11
1779:             bne          s0, a2, 1782f
                  sub          a2, ra, s1
                  srai         s7, gp, 3
1782:             nop
                  slti         a3, s3, -717
1784:             sll          s10, t0, a7
                  addi         t5, a0, 1059
                  sub          s10, zero, a0
                  addi         s7, t6, 1215
                  sltu         s10, tp, s2
                  sll          s7, a6, s1
1790:             srl          tp, s3, a0
1791:             lui          s4, 300607
                  xori         zero, tp, -979
                  bltu         a1, s8, 1810f
                  blt          s7, a3, 1805f
                  srai         t4, t5, 1
                  slli         a2, t3, 2
                  sra          s0, a4, t2
                  sll          s1, s4, sp
                  slti         s9, t1, -1935
                  sltu         a7, s10, s9
                  bne          s2, t6, 1809f
                  add          tp, s4, a7
                  add          a5, s1, t6
                  xor          a4, t2, a4
1805:             addi         a2, zero, -545
                  nop
                  sltu         a3, a6, t0
                  sltu         a5, t1, a5
1809:             lui          zero, 525088
1810:             srli         s10, t1, 12
                  slli         t1, s8, 2
                  lui          t4, 473857
                  xori         t3, s10, -96
                  or           s4, t5, s9
                  auipc        a4, 568754
                  addi         s5, t3, -860
                  srli         a3, sp, 13
                  slt          a5, sp, a4
                  andi         s3, tp, 1571
                  sub          t2, s7, s3
                  sll          a4, s2, a5
                  slt          a6, t2, s11
                  slli         s8, t0, 19
                  blt          s8, a4, 1844f
                  bge          zero, a1, 1828f
                  auipc        s8, 247529
                  auipc        a1, 229768
1828:             auipc        s4, 132226
                  add          a0, s3, t4
                  slt          t5, s11, a1
                  andi         a3, s11, 2045
                  xori         t5, s8, 1327
                  or           s1, tp, a4
                  or           s3, a2, gp
                  beq          s10, s11, 1855f
                  andi         s8, s8, -20
                  xor          s7, t0, s8
                  srli         a7, s5, 25
                  nop
                  or           ra, s8, s0
                  auipc        s8, 825999
                  add          zero, gp, zero
                  bne          zero, s6, 1850f
1844:             sra          a6, s10, a7
                  sll          s3, s7, gp
                  bgeu         t5, s6, 1850f
                  slti         t4, a4, 1806
                  add          gp, s6, s3
                  srl          s7, a0, t2
1850:             sra          t4, a2, sp
                  srli         t3, a0, 13
                  bge          s2, s9, 1856f
                  ori          t4, s2, 259
                  slt          s4, s7, ra
1855:             sll          s4, gp, t3
1856:             sltiu        t5, s9, -1961
                  sub          t0, tp, a0
                  srai         gp, t4, 19
                  and          s1, s7, ra
                  slti         s4, a1, -527
                  sub          a0, t6, s11
                  xori         a0, a5, -1205
                  sra          s9, a7, t6
                  lui          gp, 375667
                  beq          s0, a6, 1879f
                  sltu         s0, a3, a5
                  addi         a6, s5, 60
                  and          a2, zero, s9
                  slti         t1, s0, -1565
                  sltu         a3, s9, t6
                  xor          s5, t3, a1
                  addi         t5, a7, -791
                  andi         t3, s1, 691
                  sll          gp, t3, s5
                  srai         t5, a0, 27
                  sra          s1, s3, a5
                  xori         t4, s10, -895
                  blt          zero, s11, 1893f
1879:             bge          s6, a1, 1882f
                  slli         a4, t5, 13
                  sltiu        ra, s5, -1719
1882:             bgeu         s7, a0, 1883f
1883:             slti         a2, a2, -1564
                  nop
                  beq          s1, ra, 1897f
                  sra          s7, ra, t2
                  bgeu         s4, zero, 1895f
                  andi         a4, sp, -1280
                  slt          a7, gp, s3
                  srl          t3, s7, t4
                  andi         s0, s7, -382
                  or           a1, zero, t5
1893:             srl          s10, s8, a7
                  xori         a0, s5, -1298
1895:             bltu         zero, ra, 1908f
                  sra          t4, t0, a6
1897:             sra          s3, a5, a4
                  and          a5, t1, s1
                  sltu         t0, a0, a5
                  lui          s7, 272636
                  auipc        t6, 250569
                  bge          sp, s7, 1916f
                  nop
                  slli         a2, a1, 28
                  bne          a7, s4, 1924f
                  add          s3, a2, a7
                  xor          t5, t4, a2
1908:             sub          s9, a5, a3
                  srai         a7, a1, 8
                  or           s5, s7, a7
                  sltiu        t6, s5, -834
                  sll          s10, s3, tp
                  auipc        t0, 823587
                  slti         t0, s10, -1889
                  slti         a5, s2, -655
1916:             sltu         tp, a3, s4
                  slli         t5, t4, 10
                  srl          a0, ra, a3
                  srai         a4, a6, 16
                  slti         a6, s0, -2016
                  andi         s9, t3, 1134
                  blt          s11, s6, 1934f
                  addi         tp, t0, -465
1924:             srl          gp, gp, s0
                  and          a4, s11, a1
                  sltu         t0, t6, t0
                  nop
                  nop
                  sra          a1, tp, sp
                  xor          s3, t5, a3
                  xori         t0, s7, 316
                  sltiu        s10, s6, 1130
                  xori         s3, t0, -726
1934:             beq          s11, t0, 1942f
                  bltu         s3, t4, 1950f
                  add          a3, t1, t3
                  and          s6, a6, s3
                  srli         t6, a7, 27
                  bge          s9, t4, 1950f
                  slli         s1, s6, 15
                  beq          t3, s7, 1942f
1942:             srai         t6, s6, 27
                  srai         ra, t3, 31
                  bne          t5, t3, 1953f
                  sltiu        a3, t4, 1802
                  sltiu        a7, s1, -494
                  xor          a1, sp, t1
                  bne          t4, a0, 1950f
                  sltiu        s10, gp, 1157
1950:             sltu         a6, s8, a2
                  sltu         zero, a7, s3
                  blt          a1, s10, 1970f
1953:             blt          s1, s10, 1972f
                  xori         t5, a6, 166
                  slt          s10, a5, a6
                  and          s5, a2, zero
                  bge          a3, a0, 1965f
                  slti         t4, a6, 395
                  srai         a4, a1, 9
                  sltiu        t1, a1, 888
                  sra          a2, s4, t4
                  slt          s3, a0, s1
                  bgeu         gp, t1, 1977f
                  and          t5, a2, t4
1965:             add          a2, s4, s10
                  sltu         t6, s8, s4
                  sll          a3, a7, s2
                  sll          t6, zero, s9
                  or           zero, s3, t1
1970:             slli         s7, a0, 3
                  bltu         s0, s9, 1974f
1972:             slli         a1, t1, 21
                  sltiu        s3, sp, -1848
1974:             sll          s9, a3, a4
                  andi         s1, gp, -450
                  slli         s4, a0, 23
1977:             addi         t0, t1, -1391
                  bne          s4, sp, 1989f
                  and          s6, t0, a7
                  srai         s9, s8, 12
                  xor          a4, s7, ra
                  ori          s3, s2, -420
                  srl          s8, s9, zero
                  and          a6, ra, t3
                  sltiu        s9, a6, -451
                  add          s6, s9, s6
                  sltiu        t4, t4, 1105
                  xori         s10, ra, -955
1989:             srl          zero, t2, t6
                  bne          a4, s11, 2005f
                  and          a5, t0, a5
                  add          s10, a4, a2
                  sltiu        s10, a4, -999
                  slti         s1, a0, -1117
                  bge          s6, s6, 1996f
1996:             or           a4, tp, s9
                  lui          a3, 134776
                  srai         s0, a5, 10
                  slti         s4, t0, -16
                  ori          s8, s2, 883
                  sltu         t0, s8, a2
                  sltiu        a3, tp, -1680
                  xor          a7, s11, t4
                  addi         s1, s6, 1271
2005:             bgeu         s10, s8, 2012f
                  slti         a7, ra, -1329
                  add          t4, s0, t5
                  sltiu        t1, gp, 510
                  auipc        s5, 876838
                  slt          t5, a3, t0
                  sltiu        a5, s7, -1839
2012:             beq          t6, a3, 2024f
                  xor          ra, s8, a6
                  sltu         s0, a7, a3
                  srli         s1, a0, 7
                  blt          a0, a3, 2017f
2017:             srli         s4, s11, 4
                  or           t2, s6, a5
                  sub          s8, a0, zero
                  bge          a7, s0, 2034f
                  and          s5, s1, a2
                  bge          s5, s4, 2042f
                  lui          a6, 385440
2024:             lui          ra, 882855
                  bge          t2, s2, 2028f
                  and          s0, s1, sp
                  add          s6, t1, s9
2028:             slti         a0, tp, 587
                  blt          s3, tp, 2048f
                  or           a3, s5, tp
                  add          a5, sp, s3
                  and          t1, a7, t1
                  srl          s0, s1, s8
2034:             auipc        s3, 49870
                  bltu         a2, s11, 2054f
                  andi         a7, ra, -2011
                  srai         t6, t2, 17
                  blt          a6, s5, 2046f
                  lui          a2, 80686
                  bge          zero, s7, 2048f
                  sltu         t4, s5, a6
2042:             and          s4, s5, t1
                  ori          s4, s7, 1052
                  bltu         s8, t0, 2046f
                  sll          s8, t4, a4
2046:             bge          a6, a5, 2055f
                  or           ra, tp, a4
2048:             srli         a0, s1, 28
                  andi         t5, zero, -835
                  slti         s1, ra, -984
                  bltu         a5, t6, 2059f
                  sub          t1, s4, s7
                  bgeu         t0, a2, 2056f
2054:             slli         a1, s0, 24
2055:             add          s0, t0, zero
2056:             slli         t5, s2, 6
                  and          a0, sp, s11
                  slti         s0, gp, 877
2059:             srli         a5, s11, 20
                  and          s3, s2, s7
                  bge          t3, a2, 2076f
                  or           a5, t6, t6
                  nop
                  auipc        t2, 456827
                  or           a0, s6, s5
                  xor          s7, a2, s1
                  blt          t1, a7, 2084f
                  or           a5, a5, a5
                  ori          a3, t1, -1061
                  slt          s4, a5, t2
                  srli         a0, a3, 0
                  ori          a6, t2, -1850
                  slt          s0, a5, s8
                  lui          t3, 99985
                  add          a2, zero, t0
2076:             and          s4, a2, s5
                  sltiu        zero, t6, 1506
                  slti         gp, sp, -303
                  or           s6, t6, a6
                  slt          s1, s2, zero
                  sltu         s6, a4, t5
                  or           zero, t1, t5
                  beq          s7, a5, 2097f
2084:             srai         a1, a5, 4
                  auipc        a6, 223680
                  bne          tp, s11, 2090f
                  xori         s10, s10, 1869
                  sll          s4, s3, t4
                  blt          s1, s3, 2107f
2090:             bgeu         s2, a4, 2098f
                  beq          a3, s8, 2095f
                  slti         a0, s0, 132
                  nop
                  srai         a5, s0, 11
2095:             auipc        a6, 974261
                  beq          s4, t5, 2108f
2097:             blt          a5, t3, 2108f
2098:             blt          s9, a1, 2111f
                  sltiu        a3, s7, -1638
                  srai         t4, a4, 30
                  sltiu        s4, sp, -1001
                  sll          t0, s7, t1
                  bge          tp, ra, 2123f
                  nop
                  bne          a4, a3, 2119f
                  blt          t6, zero, 2126f
2107:             nop
2108:             sll          a6, sp, a0
                  lui          a3, 552315
                  sub          s8, s6, t5
2111:             xori         t4, t1, -1052
                  beq          s7, tp, 2115f
                  sll          t6, s10, t3
                  ori          a0, s4, -433
2115:             andi         a3, s11, -1517
                  or           gp, s3, a6
                  auipc        t6, 202005
                  and          s9, s1, s11
2119:             or           s3, s2, a5
                  sra          a5, s0, sp
                  or           t5, a0, a4
                  bltu         a5, a5, 2123f
2123:             slt          a4, s7, a5
                  blt          s3, ra, 2143f
                  blt          t0, s10, 2129f
2126:             slt          zero, t5, s10
                  bne          a3, s4, 2140f
                  srl          zero, a0, ra
2129:             slli         s3, s10, 10
                  sra          a0, t6, a6
                  slt          s7, gp, a0
                  sltiu        a5, t5, 834
                  andi         s8, s2, -864
                  bltu         t4, t5, 2142f
                  and          s10, t1, a6
                  nop
                  andi         t0, s8, -2025
                  sra          a5, s6, t1
                  nop
2140:             xor          a6, a4, a3
                  beq          s11, s1, 2144f
2142:             sltiu        s9, a7, 1896
2143:             sll          t1, a1, zero
2144:             or           s3, gp, a1
                  slt          a0, ra, t1
                  bne          a3, gp, 2160f
                  sltu         t5, tp, s4
                  sltu         ra, a2, a5
                  srai         s4, t6, 19
                  slli         s3, t4, 27
                  slt          a4, a0, a2
                  beq          a0, s1, 2156f
                  lui          s9, 204400
                  sra          s7, gp, s9
                  srl          t6, s6, a2
2156:             sltiu        gp, s9, 786
                  lui          s6, 895333
                  auipc        zero, 132053
                  sra          s1, a2, t6
2160:             blt          s2, s11, 2162f
                  addi         s10, a7, 1662
2162:             addi         t6, a6, 1604
                  sltiu        s3, a4, -2014
                  sub          s0, t4, a0
                  bne          s1, t3, 2180f
                  lui          t1, 798064
                  addi         a0, t5, -829
                  beq          t3, s0, 2171f
                  and          a0, gp, s7
                  sltiu        t3, s8, -602
2171:             sub          s6, sp, t2
                  srai         t6, s0, 19
                  or           a2, tp, s9
                  beq          s2, sp, 2182f
                  srai         s7, a5, 25
                  beq          t4, t4, 2185f
                  xor          t5, zero, a0
                  xor          s6, t1, t2
                  bltu         s9, t5, 2193f
2180:             sltu         t3, s6, sp
                  srli         t6, s6, 16
2182:             bltu         s11, a7, 2194f
                  bne          s10, t0, 2201f
                  xori         a5, s11, -2004
2185:             bge          s1, s2, 2196f
                  bne          a4, a6, 2200f
                  ori          s8, s11, -177
                  sll          t5, zero, t0
                  sll          t3, s0, s3
                  bge          a1, t4, 2201f
                  add          a5, s2, s9
                  bgeu         s3, gp, 2199f
2193:             beq          s4, s4, 2208f
2194:             and          a5, t0, t0
                  ori          s5, t3, -942
2196:             slli         s7, ra, 29
                  ori          s0, s9, -1052
                  blt          t2, a2, 2218f
2199:             beq          t4, a2, 2216f
2200:             sltu         t1, gp, a7
2201:             ori          t6, sp, -1017
                  lui          s7, 869195
                  xori         s0, s6, 138
                  nop
                  bne          zero, t2, 2217f
                  slti         a4, t6, 878
                  auipc        a4, 830703
                  slti         tp, a0, 1618
                  auipc        t1, 809474
                  slli         a2, t1, 28
                  la           t2, sub_6
                  addi         t2, t2, -363
                  sll          s8, s8, t4
                  sub          gp, a7, s7
sub_5_j10:        jalr         s10, t2, 363 #jump sub_5 -> sub_6
                  sltiu        zero, t6, -1378
2208:             add          s6, tp, t3
                  sub          t1, t3, a3
                  blt          s8, s5, 2218f
                  bge          s3, s8, 2219f
                  andi         a2, t5, 1194
                  bne          s6, a4, 2232f
                  srl          a5, s6, a6
                  lui          s7, 519650
2216:             sub          s5, s5, t5
2217:             ori          s3, a5, -945
2218:             srl          t0, s4, a5
2219:             sltu         s5, s1, a4
                  and          t3, t0, a3
                  lui          a3, 387879
                  sltu         t0, sp, s1
                  bge          s5, t6, 2224f
2224:             blt          s1, s1, 2243f
                  slti         s3, s0, -473
                  sltu         s0, a3, a4
                  srli         a0, s3, 25
                  xor          s0, t0, s5
                  beq          a1, s1, 2244f
                  slli         s3, a1, 3
                  blt          t2, t4, 2238f
2232:             sub          s5, s8, tp
                  add          a2, tp, s4
                  sltu         t2, s4, t6
                  nop
                  sub          s6, s3, a6
                  sltiu        gp, t5, 89
2238:             slti         a6, tp, -300
                  and          zero, tp, zero
                  srli         ra, s5, 22
                  slt          s8, s4, s0
                  bgeu         s0, t0, 2245f
2243:             and          a2, sp, a0
2244:             add          s4, t4, s0
2245:             sltu         a3, ra, s3
                  bge          s5, a3, 2254f
                  lui          a1, 366367
                  nop
                  or           t5, t3, s3
                  sltiu        t0, a3, -1544
                  slli         s0, s1, 6
                  add          s9, s3, a7
                  sra          a7, s9, t0
2254:             xor          zero, tp, s6
                  lui          a1, 377854
                  auipc        a6, 114802
                  sub          a1, sp, a4
                  beq          s4, t6, 2266f
                  srli         t0, t1, 2
                  blt          ra, t0, 2264f
                  lui          a5, 163756
                  sub          a4, tp, tp
                  srl          a3, tp, s9
2264:             sub          s10, s8, a2
                  bltu         ra, a6, 2273f
2266:             blt          t3, gp, 2268f
                  xori         s3, tp, 18
2268:             add          a5, s0, ra
                  sltiu        a6, a4, 438
                  srl          t1, t0, zero
                  xori         s10, a2, 2026
                  sra          a1, s4, t0
2273:             addi         a1, a6, -552
                  sra          t0, s6, a4
                  ori          s6, t2, -1415
                  xor          s0, a4, t3
                  bne          s11, a6, 2289f
                  blt          s9, t2, 2279f
2279:             sltiu        a7, s5, -632
                  srai         t4, s9, 8
                  and          s8, s10, s7
                  bgeu         sp, a0, 2285f
                  lui          a6, 358017
                  and          t6, s10, ra
2285:             slli         t4, s11, 26
                  addi         s5, a0, 385
                  addi         s7, s3, -1797
                  add          s3, t5, tp
2289:             xor          s3, s9, t2
                  or           a5, a4, a4
                  bltu         tp, ra, 2306f
                  andi         s10, s10, 1856
                  bltu         t2, sp, 2294f
2294:             addi         t2, ra, -426
                  sll          s3, ra, t4
                  srl          t0, t6, zero
                  slli         a3, s0, 30
                  sub          t6, s9, a7
                  addi         s6, zero, -1280
                  ori          t6, s8, -1311
                  xor          s3, sp, s0
                  sub          t4, t5, t0
                  blt          s2, a7, 2317f
                  sltiu        a1, s4, 1172
                  xori         gp, s3, -91
2306:             xor          t3, a5, s3
                  beq          s1, s11, 2319f
                  addi         s8, a7, -1055
                  bgeu         a1, s6, 2323f
                  slti         a5, a4, 1967
                  srl          a0, s6, s2
                  sub          a2, t2, t2
                  auipc        a5, 590971
                  ori          a1, t0, 707
                  slt          t0, s6, s7
                  bne          s5, gp, 2324f
2317:             slt          t6, t0, t0
                  bge          s3, s9, 2331f
2319:             blt          s8, s3, 2330f
                  addi         s1, gp, -680
                  sra          s7, sp, a6
                  sltu         a6, a3, t1
2323:             slli         s4, t1, 13
2324:             bne          s0, s7, 2344f
                  slli         t1, t3, 7
                  xori         s0, ra, -1919
                  and          t4, s2, s8
                  la           s9, region_1+315 #start riscv_load_store_rand_instr_stream_15
                  xori         s8, a5, -1980
                  srai         s6, a5, 20
                  lb           s7, 26(s9)
                  sb           t3, -18(s9)
                  lbu          a7, -4(s9)
                  ori          a7, s2, 207
                  sltu         tp, t5, t0
                  lui          a2, 367657
                  sll          s4, tp, s2
                  lbu          a3, -42(s9)
                  lb           a6, 39(s9)
                  lb           gp, -26(s9)
                  sw           a2, -35(s9)
                  sra          s8, s3, s11
                  lb           s5, 7(s9)
                  sh           t0, 29(s9)
                  sb           s10, -37(s9)
                  andi         zero, s0, 356
                  lb           s1, 25(s9)
                  xori         a3, a7, -550
                  ori          a0, s2, -1118
                  lb           t4, -64(s9)
                  sb           s1, 32(s9)
                  auipc        tp, 918126
                  sb           tp, -58(s9)
                  lb           s8, 40(s9)
                  lb           a2, 22(s9)
                  sltu         a1, s2, s0
                  lbu          a1, -36(s9)
                  lh           tp, 37(s9) #end riscv_load_store_rand_instr_stream_15
                  and          a4, s4, s3
                  sltu         a4, a0, t1
2330:             srl          ra, s9, sp
2331:             xor          s9, a4, a6
                  or           s1, t0, s8
                  beq          a6, s10, 2350f
                  andi         gp, a7, -2014
                  beq          gp, s11, 2355f
                  blt          s2, t3, 2339f
                  auipc        a5, 159731
                  sra          t3, t6, a3
2339:             slti         t1, a7, -968
                  lui          s1, 304531
                  bne          a0, s10, 2355f
                  sub          a1, t4, t0
                  nop
2344:             lui          a6, 25271
                  ori          a6, s2, 1269
                  sltu         t2, s4, s9
                  nop
                  beq          sp, a4, 2367f
                  beq          s9, s11, 2367f
2350:             srli         t0, a1, 20
                  sltu         a5, t1, ra
                  slt          a3, s8, a5
                  or           a7, a3, a4
                  bltu         s9, t4, 2365f
2355:             or           s6, a3, s9
                  bltu         t4, s7, 2360f
                  sll          a6, sp, s11
                  srl          s0, zero, s3
                  sltiu        a0, a5, 473
2360:             ori          a7, tp, -1963
                  sltu         s3, s10, s10
                  auipc        ra, 388224
                  ori          a3, t3, -707
                  lui          a2, 588633
2365:             sltiu        s1, sp, 1295
                  slli         s8, a5, 11
2367:             beq          a3, gp, 2376f
                  xori         a2, a5, 1704
                  bgeu         t0, s4, 2377f
                  xor          s0, s4, a2
                  xor          s8, a6, t6
                  lui          tp, 817644
                  bge          s6, a3, 2376f
                  and          a1, a3, gp
                  sll          s8, t3, s7
2376:             srli         s5, s1, 6
2377:             sub          t3, t6, a0
                  slt          gp, s5, t4
                  sub          a5, a6, t1
                  bltu         s10, t2, 2395f
                  sll          a5, ra, t4
                  lui          zero, 295778
                  bge          a4, t0, 2400f
                  sra          ra, a3, t0
                  sub          s1, s3, t1
                  sub          a6, t3, zero
                  bge          t5, a7, 2388f
2388:             bgeu         zero, ra, 2402f
                  srli         s1, t1, 23
                  bgeu         zero, s1, 2393f
                  lui          s0, 771327
                  slli         a4, zero, 26
2393:             xori         s8, s5, -1637
                  bgeu         t2, s3, 2402f
2395:             bne          sp, s1, 2397f
                  srli         a1, s10, 17
2397:             ori          t4, a1, 1327
                  sltiu        a3, s3, 1339
                  sltiu        a0, ra, 1780
2400:             blt          a2, a4, 2411f
                  bltu         s1, t3, 2421f
2402:             bne          a4, t1, 2405f
                  lui          t3, 91571
                  blt          s9, a0, 2416f
2405:             bge          t4, a3, 2416f
                  ori          t1, s10, -1314
                  andi         t3, a5, -707
                  srai         gp, zero, 29
                  slli         a6, s8, 25
                  slti         s4, t1, -1193
2411:             bne          a4, s7, 2430f
                  bge          s2, sp, 2421f
                  slt          s6, t0, s10
                  xor          s6, t5, a1
                  sll          a0, tp, t3
2416:             add          t6, a2, a4
                  srai         tp, a1, 22
                  slti         s5, a2, -1905
                  bne          s7, s7, 2439f
                  and          s1, s2, s11
2421:             srl          a3, a5, s1
                  add          a3, ra, zero
                  nop
                  slt          t6, a7, a4
                  add          s7, s3, t2
                  and          a3, t4, ra
                  auipc        a7, 78430
                  bne          s8, gp, 2429f
2429:             lui          s5, 245129
2430:             srli         ra, sp, 20
                  add          tp, s9, tp
                  bgeu         t6, t0, 2446f
                  slti         s8, a7, 2045
                  bge          a7, a6, 2442f
                  sra          s4, s7, t6
                  beq          t4, a7, 2444f
                  add          s5, a5, t4
                  sltu         a0, ra, ra
2439:             sll          a7, gp, s8
                  bge          s8, s9, 2444f
                  add          a2, t2, s6
2442:             bgeu         a7, sp, 2457f
                  add          s7, s6, a2
2444:             add          t3, t0, s7
                  nop
2446:             lui          t2, 1015852
                  slti         a3, t5, -1387
                  blt          s8, zero, 2466f
                  sub          s10, s9, s3
                  andi         t1, s1, -1947
                  bltu         s0, sp, 2458f
                  slt          a2, s8, a6
                  sltu         t0, a2, a1
                  xori         a1, zero, 1441
                  bge          a7, s4, 2469f
                  slt          t2, s1, s11
2457:             xor          s5, a5, s10
2458:             slli         s7, a0, 1
                  slti         ra, s6, -632
                  add          gp, s11, a2
                  or           a0, t1, zero
                  slli         s3, s1, 22
                  srai         t1, a7, 19
                  auipc        s9, 869087
                  srl          t1, s3, a3
2466:             sltiu        s3, s5, 24
                  addi         ra, t5, 1974
                  blt          t5, s5, 2481f
2469:             beq          s11, s6, 2488f
                  sra          a3, s8, s1
                  la           a2, region_0+1272 #start riscv_load_store_rand_instr_stream_4
                  or           t4, a4, s5
                  lb           a6, -811(a2)
                  lb           s3, 511(a2)
                  sltu         s10, s7, a6
                  sh           t1, 154(a2)
                  lb           a1, -906(a2)
                  sh           s0, -776(a2)
                  add          a6, s1, s2
                  slli         s9, a0, 26
                  lh           s10, -654(a2)
                  add          tp, a7, t0
                  and          s1, s3, a7
                  sb           a3, -1033(a2)
                  lbu          s6, 594(a2)
                  lbu          t5, -745(a2)
                  auipc        a5, 124471
                  slti         a3, s2, 1526
                  lhu          s4, -1246(a2)
                  nop
                  sw           t5, 456(a2)
                  lhu          a5, -134(a2)
                  lui          t3, 391338
                  sb           t3, 717(a2)
                  lb           s6, 31(a2)
                  lb           a3, -867(a2) #end riscv_load_store_rand_instr_stream_4
                  bltu         a2, t2, 2483f
                  bgeu         s9, s8, 2476f
                  andi         s1, s8, -1263
                  nop
                  sltiu        zero, zero, -1465
2476:             blt          s10, gp, 2480f
                  bge          s5, t0, 2480f
                  sltu         t2, a0, s3
                  sltiu        s0, s9, 637
2480:             bne          s9, zero, 2483f
2481:             bltu         t1, t1, 2499f
                  srli         a1, a2, 5
2483:             slt          s6, s9, a7
                  bltu         a0, a6, 2499f
                  srli         a0, t0, 13
                  or           s1, a4, s11
                  sltiu        a3, s5, 1494
2488:             lui          s5, 998047
                  sra          a2, a2, tp
                  bgeu         sp, s6, 2491f
2491:             srai         a4, s8, 27
                  sra          s1, t0, s9
                  sll          a6, a4, s6
                  lui          a0, 903169
                  auipc        s0, 644664
                  lui          t4, 945803
                  ori          a4, s5, -814
                  and          a7, gp, s5
2499:             bgeu         a4, s5, 2507f
                  blt          s8, a4, 2508f
                  xori         s10, tp, -1920
                  slt          a1, s5, s10
                  and          a2, t5, s5
                  ori          gp, t0, 745
                  sltu         gp, t0, a3
                  and          s1, t4, a7
2507:             xori         a2, s2, 753
2508:             srli         s7, ra, 23
                  addi         a5, s0, -1510
                  bne          s4, t4, 2530f
                  srl          t6, t4, s6
                  addi         s9, zero, -924
                  xori         a5, t2, 1900
                  sltiu        s10, s0, -689
                  srl          s3, a0, t6
                  andi         t1, s7, 1333
                  srli         s1, ra, 15
                  and          t1, a7, s8
                  srl          a4, tp, t2
                  bne          s0, a6, 2522f
                  bne          s5, t4, 2534f
2522:             bltu         a5, t1, 2534f
                  add          t3, tp, zero
                  sra          t5, a3, t2
                  xori         s10, t0, 242
                  sub          s9, a1, a7
                  bge          s0, t1, 2542f
                  xor          t4, a4, s7
                  sltiu        s1, s0, 2036
2530:             xori         s5, t6, 697
                  and          s8, gp, s7
                  sra          t4, s6, s1
                  bne          s10, a1, 2547f
2534:             addi         gp, s11, -1023
                  bltu         t2, a7, 2552f
                  srl          t5, s9, a4
                  srli         t5, t3, 12
                  slt          a3, t1, t2
                  ori          t6, t3, -1090
                  xor          a3, a1, a4
                  beq          s7, zero, 2548f
2542:             srl          s3, a6, zero
                  bge          tp, a2, 2552f
                  srli         a6, t5, 12
                  sltu         s3, s4, t6
                  slti         s9, a5, -1042
2547:             and          a4, t4, tp
2548:             add          a4, s1, s9
                  beq          t0, a5, 2563f
                  nop
                  xori         a7, s5, 1108
2552:             bgeu         s10, s0, 2553f
2553:             xor          ra, a6, s4
                  xor          t3, s5, a5
                  bge          s3, s8, 2574f
                  bgeu         s5, a7, 2567f
                  bge          a7, s11, 2561f
                  blt          a2, a3, 2572f
                  srl          s6, sp, t3
                  srli         gp, a0, 13
2561:             srli         s1, gp, 19
                  and          a1, t4, s2
2563:             bge          a3, s10, 2583f
                  blt          s3, a0, 2572f
                  ori          s7, s3, -876
                  or           s1, gp, s6
2567:             bne          a3, zero, 2586f
                  nop
                  sltu         s9, a3, s5
                  bge          t5, s9, 2582f
                  andi         zero, s7, 1458
2572:             bgeu         s0, t2, 2580f
                  srai         t0, s10, 28
2574:             srli         tp, s8, 9
                  srli         a4, s8, 9
                  xor          a3, t6, gp
                  auipc        t6, 874024
                  srl          t0, ra, s8
                  xori         a1, s0, -13
2580:             nop
                  sltu         s0, s3, t6
2582:             and          a2, s11, tp
2583:             and          s1, s10, s9
                  addi         tp, s4, -275
                  bne          a7, t6, 2596f
2586:             bne          s3, s5, 2589f
                  srl          s3, t4, s0
                  nop
2589:             sltiu        a4, a1, -444
                  andi         t0, a6, 80
                  and          s5, ra, a1
                  sra          s9, ra, t4
                  slti         s6, a3, -742
                  sltu         s9, tp, t3
                  slt          t2, s0, sp
2596:             bne          t5, s7, 2615f
                  sll          a4, a3, a2
                  sub          a6, s2, t3
                  nop
                  sra          a4, a7, s7
                  srl          s4, a7, a1
                  and          a0, t6, t6
                  addi         tp, t1, -1301
                  bgeu         ra, sp, 2615f
                  xori         s4, tp, -81
                  slti         t3, s10, -1540
                  sltiu        t6, t4, 443
                  nop
                  sltiu        s7, a3, -124
                  slli         a0, t3, 3
                  srli         a3, t5, 2
                  sub          t5, a3, t5
                  slt          a2, s1, s5
                  bne          a3, s6, 2617f
2615:             sub          t5, ra, zero
                  sll          t0, s4, s9
2617:             or           t1, s1, t1
                  auipc        t6, 827012
                  beq          t5, s7, 2627f
                  slli         s8, gp, 28
                  add          a6, t5, a5
                  andi         s7, tp, -738
                  xori         zero, t6, -1523
                  add          a0, s2, tp
                  and          t2, zero, a7
                  bne          s8, s5, 2643f
2627:             slli         tp, t2, 9
                  or           tp, s6, t1
                  xor          s0, s0, t2
                  sll          t3, a7, a5
                  add          a0, s8, t5
                  bltu         a2, sp, 2647f
                  slt          t4, a4, a0
                  and          s1, s6, zero
                  slt          s6, s10, a2
                  bne          s1, a3, 2655f
                  srai         s9, t5, 10
                  slti         s9, t0, -1732
                  lui          a7, 747983
                  sub          s3, s2, s4
                  sub          a7, t5, sp
                  srli         s6, t3, 2
2643:             xori         zero, s0, 1136
                  bgeu         s2, s7, 2658f
                  add          t4, sp, a2
                  nop
2647:             addi         s6, t5, -1839
                  srli         t5, s6, 27
                  srai         a6, s0, 6
                  xori         a4, a6, -119
                  add          a5, s2, s1
                  addi         s4, a6, -1150
                  bgeu         s9, s6, 2657f
                  slti         a1, zero, -1951
2655:             srai         t3, t0, 21
                  sra          t3, s4, sp
2657:             sltu         a7, a6, sp
2658:             sll          s7, t5, a5
                  and          t3, s5, s11
                  nop
                  lui          a1, 406510
                  andi         s6, a3, -34
                  sub          s1, a7, gp
                  sltiu        s6, a6, 798
                  addi         a1, s1, -28
                  sub          s0, t1, a6
                  bgeu         s5, s7, 2679f
                  ori          t1, gp, -1943
                  srl          s3, a6, a5
                  slt          t2, t0, a2
                  xori         s7, tp, 1071
                  sltiu        s9, gp, -274
                  xor          ra, a5, t6
                  sub          a6, s4, a6
                  srai         a5, s2, 5
                  sra          a4, s10, t5
                  slli         t2, s9, 30
                  xori         s7, t5, 1327
2679:             slt          s7, t6, t1
                  andi         s10, s6, -807
                  lui          a3, 839920
                  blt          s10, a0, 2693f
                  andi         a0, s6, 1526
                  srl          a2, t0, a2
                  sltu         s1, a1, s5
                  auipc        a7, 715360
                  nop
                  and          s10, t2, ra
                  xori         t6, t0, 1006
                  sltiu        t6, a2, -1077
                  srli         gp, t5, 5
                  and          a4, a4, t1
2693:             srli         gp, s9, 10
                  xori         s0, s6, -800
                  and          a3, a1, s11
                  bltu         a0, a0, 2698f
                  beq          s6, a6, 2701f
2698:             add          t0, t0, a3
                  srai         s7, tp, 29
                  sra          ra, s9, a4
2701:             auipc        ra, 66781
                  bgeu         t4, s8, 2722f
                  andi         s3, t6, 569
                  slli         a6, t1, 27
                  and          tp, s1, s2
                  slli         a0, t3, 9
                  addi         s5, a1, 183
                  add          t4, a7, t5
                  bltu         t6, t5, 2710f
2710:             srl          s3, s8, a1
                  sltiu        t1, s9, -1389
                  slti         a0, a3, 1869
                  bge          a4, s8, 2731f
                  blt          a7, s0, 2726f
                  slt          zero, tp, a0
                  lui          t5, 333003
                  slli         s3, s0, 31
                  slti         s10, s7, 1254
                  xor          a7, ra, a4
                  auipc        s7, 46991
                  sra          tp, t5, s6
2722:             slti         a7, ra, 256
                  srl          s8, s1, gp
                  bge          s9, a1, 2732f
                  srl          a3, a4, a3
2726:             srai         ra, zero, 10
                  bne          s2, sp, 2740f
                  nop
                  bne          s9, t4, 2749f
                  auipc        a6, 998344
2731:             bgeu         t6, t1, 2732f
2732:             bgeu         t5, a3, 2735f
                  and          t3, tp, a2
                  nop
2735:             sltu         t4, s11, t5
                  sub          s3, zero, a7
                  slt          t5, s5, s10
                  srl          t3, s0, s8
                  andi         t1, t2, -1634
2740:             nop
                  or           s10, s11, t5
                  or           t5, s1, s1
                  beq          t1, sp, 2757f
                  bne          zero, s11, 2751f
                  or           s10, tp, s2
                  add          tp, a5, a2
                  ori          s9, a4, -404
                  beq          gp, t0, 2756f
2749:             ori          s7, t5, -1206
                  beq          a1, t5, 2764f
2751:             or           t1, t5, a7
                  slti         s3, zero, -265
                  bge          s6, t1, 2768f
                  sll          s7, t2, a4
                  addi         s8, ra, 1661
2756:             slti         s5, t3, 1493
2757:             bltu         a7, s3, 2760f
                  bgeu         a7, a5, 2767f
                  bne          t6, s3, 2767f
2760:             slli         a0, t3, 12
                  slli         s10, t4, 25
                  xor          a4, t5, a1
                  or           s9, s6, s9
2764:             nop
                  bge          a6, t0, 2773f
                  sub          t2, s6, ra
2767:             andi         s10, s10, 342
2768:             addi         t0, t3, -974
                  blt          a7, tp, 2782f
                  add          t5, t0, s4
                  bgeu         a6, s10, 2779f
                  add          s5, a4, t2
2773:             slli         s4, s0, 18
                  or           zero, t2, t3
                  nop
                  slti         ra, a7, -1552
                  bgeu         s4, t2, 2780f
                  bltu         a0, tp, 2796f
2779:             slt          zero, s2, sp
2780:             xor          s4, s2, gp
                  xori         a7, t6, 324
2782:             slt          a6, s0, a1
                  srl          s1, t2, t4
                  sltiu        s9, s6, 399
                  sltu         s5, s11, sp
                  bltu         a2, s5, 2798f
                  sra          s10, s4, s5
                  lui          a2, 868055
                  bltu         a3, s6, 2806f
                  sltiu        a7, t5, 378
                  blt          s10, s5, 2805f
                  add          t3, t2, s11
                  bne          s10, s7, 2812f
                  lui          a5, 264836
                  nop
2796:             sra          a0, sp, a3
                  addi         s10, s1, 958
2798:             ori          t1, a2, -1005
                  add          a2, s5, t6
                  sltiu        s5, s0, 1387
                  sltu         t3, a0, zero
                  slli         ra, t1, 18
                  slli         t4, t3, 7
                  sub          a6, a6, a0
2805:             srai         a4, a6, 22
2806:             sll          s9, s5, zero
                  sltu         a2, s7, zero
                  lui          t0, 393984
                  sll          ra, s7, a6
                  or           s9, s8, s10
                  sub          a2, a5, a7
2812:             sra          s3, sp, a6
                  sub          a5, t1, ra
                  bne          a2, s2, 2829f
                  or           tp, s3, a4
                  xori         a4, t0, -266
                  xor          a3, t5, a5
                  sll          s8, t0, t4
                  blt          s4, s0, 2839f
                  srai         t6, s11, 28
                  sra          a4, a0, t4
                  bltu         gp, zero, 2833f
                  xor          tp, t5, a4
                  bgeu         a5, s4, 2838f
                  ori          a5, a7, 2020
                  xor          a1, t1, t2
                  add          a0, t3, s3
                  bgeu         tp, a1, 2837f
2829:             bgeu         s6, t5, 2837f
                  sra          s3, t0, a2
                  slli         t4, a1, 10
                  slti         a7, a6, -220
2833:             sub          tp, a7, a2
                  sra          a1, s0, a1
                  slli         t2, s5, 1
                  bge          a3, a1, 2856f
2837:             addi         t3, s1, 124
2838:             sltiu        ra, t0, -1108
2839:             ori          a5, s4, 1183
                  srai         tp, t3, 27
                  andi         s7, t4, -2006
                  or           s4, s9, s0
                  add          s5, t6, sp
                  xori         s9, a5, 1087
                  beq          s4, sp, 2859f
                  sra          t5, s11, tp
                  bgeu         a4, a4, 2854f
                  and          a7, a5, s0
                  addi         tp, t0, -268
                  sra          s9, s8, ra
                  sltiu        gp, a0, 396
                  andi         t5, t2, 570
                  nop
2854:             and          t4, gp, s2
                  slli         t0, a4, 13
2856:             xor          t1, t0, s10
                  xori         a6, a7, 968
                  xori         a3, a3, -1666
2859:             addi         t5, t2, -177
                  blt          a6, s0, 2868f
                  srai         s5, a3, 21
                  slli         t5, s6, 27
                  srl          t4, zero, a4
                  slti         zero, t5, 247
                  bne          s5, s8, 2868f
                  sltiu        tp, a3, -977
                  srai         s0, zero, 1
2868:             srai         a4, a7, 25
                  slt          s4, s3, a4
                  srai         gp, s9, 3
                  la           s0, region_1+242 #start riscv_load_store_rand_instr_stream_16
                  xor          a6, a7, t5
                  sub          t4, a5, s2
                  slt          zero, s9, a1
                  and          a3, s10, s3
                  sb           a0, 21(s0)
                  slti         s10, t6, -102
                  sra          s6, a4, a1
                  lbu          a3, -47(s0)
                  sb           s6, 0(s0)
                  sltiu        gp, s0, -102
                  srl          t4, s3, tp
                  lb           t3, 29(s0)
                  srl          a5, zero, s2
                  lhu          s10, 52(s0)
                  addi         t5, t2, 592
                  lui          s10, 148323
                  and          a2, s2, s3
                  or           t6, s4, s4
                  sltiu        t2, s0, -882
                  sb           s3, 0(s0)
                  srl          a0, s6, s7
                  slt          s3, zero, s3
                  sh           s4, 52(s0)
                  addi         a0, a5, -1585
                  lw           t1, 62(s0)
                  lhu          t5, 50(s0)
                  lb           a7, -57(s0)
                  ori          s8, s4, 384
                  lbu          t1, 6(s0)
                  or           s9, a4, s8
                  add          t4, a4, a3
                  sb           tp, -39(s0)
                  sra          a1, s0, s0
                  sb           a6, -41(s0)
                  sra          zero, a6, a6
                  sh           s5, 44(s0)
                  srl          t4, a7, zero
                  lb           t5, -28(s0)
                  srai         t2, a4, 14
                  or           a5, a6, s11
                  srl          s8, tp, s6
                  auipc        s10, 1001212
                  ori          a0, gp, 908
                  or           t0, a4, zero
                  sb           a0, 44(s0)
                  lhu          a6, -34(s0) #end riscv_load_store_rand_instr_stream_16
                  bgeu         a3, s6, 2890f
                  xor          s5, a0, a3
                  lui          a0, 279946
                  sra          a4, t4, t2
                  addi         t4, zero, 690
                  sll          t2, a6, s4
                  bne          ra, t5, 2889f
                  sltu         a0, a1, s5
                  bge          t5, t4, 2894f
                  and          s9, a1, a7
                  lui          s6, 573771
                  slli         a1, s10, 12
                  sltiu        s1, t5, 1320
                  nop
                  auipc        t6, 195445
                  addi         zero, t4, -1863
                  bne          s10, s0, 2889f
                  andi         t1, a2, -1228
2889:             sltu         a6, s9, a7
2890:             sub          s6, t6, s2
                  bgeu         t6, a2, 2892f
2892:             xori         t5, a7, 1138
                  beq          s7, s2, 2894f
2894:             or           a2, a7, s7
                  sub          a2, s2, t2
                  bge          s6, s2, 2900f
                  slti         a5, s4, -1309
                  bltu         sp, zero, 2901f
                  lui          a2, 31139
2900:             slt          s9, a4, sp
2901:             lui          t4, 869867
                  andi         a7, t5, 1379
                  addi         s3, s4, -659
                  srl          a4, a3, s5
                  beq          s9, gp, 2909f
                  slt          s9, t3, s4
                  srai         a7, t2, 22
                  bltu         t0, s7, 2919f
2909:             addi         s0, a1, -1583
                  andi         a2, t1, 1918
                  bgeu         ra, tp, 2919f
                  bne          s8, t4, 2931f
                  sltu         s7, s2, tp
                  sltu         s0, s0, s5
                  srai         t4, s5, 24
                  xori         s6, t3, -1903
                  auipc        s6, 962491
                  and          a3, a6, s5
2919:             xori         s7, t4, 1356
                  sltu         a2, s6, s2
                  srli         a6, t4, 2
                  bne          a6, tp, 2934f
                  lui          s4, 793665
                  ori          a6, a7, 1996
                  slt          t6, a5, s9
                  add          tp, s6, s5
                  add          zero, s0, s6
                  sltiu        s9, t0, 1847
                  blt          s5, s0, 2933f
                  or           tp, s3, t5
2931:             sltu         ra, a2, t2
                  beq          t4, a1, 2951f
2933:             andi         s3, t4, -523
2934:             addi         gp, a2, 1311
                  slt          a5, s2, a2
                  xori         s8, gp, 451
                  or           t5, s1, t4
                  xori         s9, zero, 40
                  auipc        s3, 27855
                  ori          s10, s8, -161
                  xori         t1, s3, 862
                  nop
                  beq          a2, s7, 2951f
                  slti         a6, a4, 475
                  sub          t5, s8, s4
                  add          a5, t1, a2
                  srai         a0, a3, 26
                  ori          s7, t3, 366
                  xor          s3, a5, t5
                  srl          a3, s4, a2
2951:             srai         s8, s8, 26
                  nop
                  sub          s0, t4, a4
                  sltiu        zero, gp, 1632
                  bge          t6, s0, 2972f
                  blt          ra, t5, 2976f
                  or           s7, a4, t0
                  xori         a1, t5, -897
                  sltu         gp, t0, sp
                  addi         t4, t3, -542
                  sub          s9, a1, sp
                  slti         s8, t3, -1077
                  addi         s3, t1, -953
                  bltu         s0, a2, 2979f
                  srl          t5, a4, tp
                  beq          s2, s7, 2979f
                  slti         t3, s10, 306
                  bne          s8, s4, 2972f
                  sll          t2, a6, s10
                  bge          t6, s2, 2973f
                  bltu         t3, sp, 2985f
2972:             bge          t5, s7, 2974f
2973:             add          tp, s9, t3
2974:             srli         a6, a4, 7
                  ori          a2, s7, 354
2976:             add          a0, s5, t6
                  sub          t6, a4, zero
                  bgeu         t0, s3, 2987f
2979:             bge          s11, t0, 2994f
                  xor          t0, tp, tp
                  slti         s8, sp, 1537
                  blt          ra, s0, 2989f
                  sra          t2, a6, a4
                  xori         s0, tp, 1824
2985:             sra          ra, s9, tp
                  xor          a1, s1, t1
2987:             or           s1, s11, ra
                  sub          t2, t3, a4
2989:             sltu         t2, s10, t3
                  add          a6, t0, tp
                  andi         zero, ra, 882
                  and          s9, a2, tp
                  slli         s5, a4, 31
2994:             sltiu        s5, t2, 1793
                  sub          a6, t5, s4
                  lw           s10, 4(sp)
                  addi         t2, t2, 1743
                  sra          t3, s2, ra
                  lui          t6, 372261
                  addi         sp, sp, 24
                  sll          a7, s1, a7
                  lui          t5, 758873
                  slt          t4, s0, t1
                  srai         s5, s4, 23
                  xor          s3, a0, a3
                  auipc        a4, 884600
3927:             addi x24, x26, 0
3927:             jalr x24, x24, 0
sub_3:            nop
                  addi         sp, sp, -16
                  xori         a2, s7, 1437
                  srl          t0, s8, t0
                  sltu         s6, s10, s3
                  srai         a4, a0, 2
                  slt          a5, a0, a0
                  slti         a0, sp, -545
                  sw           s10, 4(sp)
                  srai         gp, a3, 17
                  sub          s4, a3, s9
                  sltu         a2, s9, s5
                  sltiu        ra, s11, -858
                  sltiu        s4, ra, 821
                  bge          t1, s4, sub_3_j7 #branch to jump instr
                  xor          a6, s9, a0
                  slli         s4, t3, 28
sub_3_j7:         jal          s10, sub_5 #jump sub_3 -> sub_5
                  slti         a0, a0, 581
                  auipc        s7, 627515
                  blt          tp, s6, 10f
                  ori          t6, a3, 25
                  bltu         s7, t1, 11f
                  xor          gp, a1, a7
                  add          ra, zero, t4
                  lui          a7, 129449
                  add          s1, s5, s7
                  auipc        t2, 86466
10:               andi         a4, a4, -9
11:               auipc        t6, 218729
                  slt          t5, s2, t4
                  lw           s10, 4(sp)
                  addi         sp, sp, 16
                  ori          s8, t4, -2000
                  lui          s3, 363345
                  xor          s6, s8, s3
                  addi         gp, s8, 1603
                  srai         t3, t4, 28
                  andi         a4, s1, -459
                  sub          t0, s5, t6
                  nop
41:               addi x6, x26, 1
41:               jalr x6, x6, 0
sub_7:            xor          a5, a6, t3
                  addi         sp, sp, -44
                  srai         s7, s3, 26
                  sw           s10, 4(sp)
                  srai         s7, t2, 8
                  auipc        t5, 616065
                  ori          a7, s6, 1129
                  slt          s9, a1, s7
                  xori         a5, sp, -541
                  slli         s1, a4, 31
                  addi         a5, a1, -1261
                  sra          s9, t5, s3
                  blt          a5, s8, sub_7_j11 #branch to jump instr
                  andi         t3, a3, -1123
sub_7_j11:        jal          s10, sub_8 #jump sub_7 -> sub_8
                  xori         s8, a4, 1726
                  ori          ra, a4, 683
                  slli         t4, t5, 24
                  srai         s5, a7, 7
                  ori          s0, t0, -1194
                  xor          s5, a3, s11
                  sltu         s5, s10, s5
                  sub          s3, zero, t4
                  add          tp, gp, s10
sub_7_j12:        jal          s10, sub_8 #jump sub_7 -> sub_8
                  nop
                  blt          tp, a1, 9f
                  lui          a0, 1046905
                  xor          a5, a4, s3
                  bge          tp, s5, 6f
                  nop
6:                sll          t4, s2, s6
                  slt          a1, s6, t1
                  bne          t5, a5, 9f
9:                srl          t2, ra, s9
                  lw           s10, 4(sp)
                  sub          t1, s6, s7
                  addi         sp, sp, 44
                  srli         a6, gp, 3
                  andi         t2, tp, 1905
                  srai         s6, t1, 10
41:               addi x30, x26, 0
41:               jalr x30, x30, 0
sub_4:            slt          t2, s11, a3
                  lui          zero, 456524
                  addi         sp, sp, -40
                  slti         a7, s1, 884
                  auipc        s9, 414727
                  ori          s8, s8, 1603
                  andi         t4, s1, 1867
                  sw           s10, 4(sp)
                  sub          a4, a5, a2
                  add          s8, t0, a6
                  la           ra, sub_6
                  slli         s1, s5, 26
                  xori         s6, tp, 352
                  addi         ra, ra, 232
                  sll          s7, gp, s7
                  sltu         gp, s8, t3
                  bgeu         s8, a2, sub_4_j8 #branch to jump instr
                  sltiu        s3, t1, 1391
                  sltiu        t3, t4, -870
                  xor          t5, s7, s11
                  sll          a4, a5, t3
                  srai         s8, t5, 31
sub_4_j8:         jalr         s10, ra, -232 #jump sub_4 -> sub_6
                  la           s5, sub_7
                  slt          s10, t3, a1
                  addi         s5, s5, 632
                  ori          a7, sp, 1429
                  nop
                  blt          tp, tp, sub_4_j9 #branch to jump instr
                  slt          t0, ra, a0
                  nop
sub_4_j9:         jalr         s10, s5, -632 #jump sub_4 -> sub_7
                  sll          t0, t6, sp
                  beq          gp, s9, 12f
                  ori          zero, a0, 162
                  srai         t1, a0, 27
                  add          a6, tp, t3
                  blt          t5, s7, 25f
                  andi         s10, t4, 130
                  sltu         s7, t0, s10
                  and          ra, s2, a7
                  sll          t2, s7, s9
                  slti         s9, s7, 1588
                  and          ra, t5, s11
12:               srai         s5, a7, 0
                  slti         a0, s4, 1237
                  srli         s8, t6, 25
                  addi         s8, t2, -34
                  andi         s4, t6, 564
                  sltu         t5, a3, t2
                  addi         t0, tp, 1568
                  slli         t2, s5, 23
                  ori          a0, a3, -1468
                  sub          zero, s11, gp
                  srl          s0, s10, sp
                  sltu         s6, s4, t5
                  lui          s8, 734148
25:               auipc        t6, 630606
                  bgeu         a2, s11, 38f
                  bge          t0, s11, 39f
                  sub          t3, s1, t1
                  bgeu         a0, gp, 36f
                  sltu         s3, gp, s7
                  xor          tp, gp, s8
                  and          a5, t6, a1
                  addi         gp, s9, 1560
                  srai         a6, s3, 1
                  or           s7, s3, t5
36:               xori         s4, t5, -1975
                  sll          a6, t5, s5
38:               srl          t1, t6, t6
39:               srli         t3, a6, 24
                  bge          a4, s6, 51f
                  slli         ra, a2, 28
                  sltu         s1, ra, tp
                  xor          t2, t3, a7
                  bltu         s5, gp, 47f
                  add          s8, s3, gp
                  add          s3, s2, s10
47:               srli         t3, a7, 5
                  slli         t0, t2, 19
                  slti         t6, gp, -992
                  andi         s9, s9, 1442
51:               sll          a6, sp, s3
                  or           t5, s11, t0
                  sll          ra, t4, t3
                  ori          t5, s6, 892
                  sra          t5, sp, t0
                  add          a1, zero, a1
                  sub          s6, t2, s4
                  bltu         tp, t3, 62f
                  bne          t5, ra, 68f
                  lui          s10, 105853
                  and          t5, s11, zero
62:               sll          s1, t1, t5
                  xor          gp, s11, tp
                  add          s9, gp, a3
                  add          s4, a4, s10
                  slt          a1, t4, t2
                  beq          t4, zero, 69f
68:               add          a0, s11, s9
69:               or           t0, t6, s1
                  bgeu         s10, a5, 82f
                  sll          t3, s4, gp
                  add          t0, sp, t5
                  andi         s9, s2, -498
                  srli         t3, t3, 5
                  xor          s8, t6, s5
                  addi         s6, s5, 1531
                  bltu         t1, s4, 81f
                  slli         a4, t1, 6
                  sub          a4, s10, a0
                  slti         s9, a2, 559
81:               srai         a4, a2, 8
82:               sra          s3, sp, t1
                  bge          a2, s1, 97f
                  srl          t0, ra, gp
                  sub          t3, zero, s7
                  slti         s5, t1, 686
                  and          s0, t3, zero
                  xor          t5, t0, t1
                  xor          a6, t1, s10
                  auipc        a6, 778321
                  auipc        s6, 325370
                  bne          sp, s8, 97f
                  bltu         t5, t0, 97f
                  beq          a6, a5, 97f
                  andi         s8, t6, 2039
                  sltu         tp, s10, t1
97:               srli         s7, s7, 21
                  auipc        a7, 112862
                  nop
                  addi         tp, t5, -902
                  srl          t6, s2, gp
                  lw           s10, 4(sp)
                  addi         sp, sp, 40
                  auipc        a4, 146133
                  sra          t6, s6, t0
                  sra          a2, a2, sp
139:              addi x5, x26, 0
139:              jalr x5, x5, 0
sub_6:            and          s3, t0, a0
                  addi         s7, s6, 651
                  addi         sp, sp, -28
                  sltu         t1, s7, s5
                  add          tp, s7, a1
                  sw           s10, 4(sp)
                  auipc        a3, 498337
                  auipc        t5, 733384
                  srli         s5, sp, 22
                  and          a7, s7, a2
                  slt          t5, a0, t5
                  and          t0, s7, tp
                  bgeu         s4, s2, 10f
                  blt          zero, s7, 10f
                  slli         a1, s6, 15
                  srai         gp, a4, 23
                  beq          a4, a4, 10f
10:               srl          a6, s0, t2
                  slt          a5, tp, s4
                  xori         a4, t2, -1738
                  lw           s10, 4(sp)
                  slli         s7, s2, 13
                  addi         sp, sp, 28
                  slti         t3, a1, -212
                  sra          a5, s1, s8
                  slt          a1, s4, s0
                  srl          s5, t0, s4
27:               addi x13, x26, 0
27:               jalr x13, x13, 0
sub_9:            xor          gp, s3, t4
                  bne          a1, a5, sub_9_stack_p
                  srl          a7, t4, s2
sub_9_stack_p:    addi         sp, sp, -32
                  xor          a7, gp, s2
                  sw           s10, 4(sp)
                  sltiu        s3, a2, 1708
                  and          s3, a1, s11
                  la           a7, region_1+1621 #start riscv_load_store_rand_instr_stream_0
                  andi         t1, zero, 202
                  sb           a1, 76(a7)
                  sb           a5, 86(a7)
                  lbu          a4, 155(a7)
                  srai         s1, ra, 27
                  auipc        a5, 310073
                  and          s10, a5, zero
                  sw           s9, 151(a7)
                  lb           s3, -72(a7)
                  sb           s2, 222(a7)
                  andi         s1, s0, -1928
                  sub          a5, s8, gp
                  srl          s4, t6, a2
                  srli         a2, s3, 22
                  lhu          s4, -145(a7)
                  lbu          a1, -255(a7)
                  lbu          tp, -41(a7)
                  lb           s4, -68(a7)
                  lbu          t3, 30(a7)
                  sb           s4, -255(a7)
                  slt          s0, a5, t2
                  sb           s9, -193(a7)
                  xori         a1, s5, -1347
                  lbu          t1, 106(a7)
                  lh           tp, 137(a7)
                  srl          s3, s3, a4
                  lb           gp, -196(a7)
                  slt          a4, a0, s9
                  lb           s4, 189(a7)
                  lbu          s4, 226(a7)
                  srli         s9, s9, 11
                  lbu          a5, -119(a7)
                  nop
                  auipc        t4, 541038
                  sh           a1, -35(a7)
                  lb           a1, 10(a7)
                  lbu          tp, -215(a7)
                  sb           s5, -73(a7)
                  lbu          a3, -214(a7)
                  sb           s1, -98(a7)
                  sh           a4, -185(a7)
                  slt          s10, t4, gp
                  srli         a1, sp, 6
                  lw           s6, 43(a7)
                  lbu          a5, 176(a7)
                  slti         a0, s11, -61
                  lhu          s5, 247(a7) #end riscv_load_store_rand_instr_stream_0
                  lui          a0, 972244
                  auipc        a6, 718277
                  srl          s4, a6, a2
                  srli         s6, s10, 24
                  sra          s4, t3, t3
                  slli         s3, t5, 21
                  sltu         a5, a5, a0
                  bltu         a5, ra, 23f
                  blt          gp, t3, 27f
                  andi         t1, s7, 459
                  bltu         s3, t4, 27f
                  nop
                  nop
                  lui          s7, 590793
                  sub          s7, tp, s3
                  slli         a3, a2, 25
                  srai         t1, gp, 29
                  sll          t3, t6, gp
                  blt          a1, a3, 26f
                  blt          t1, ra, 26f
                  sub          a5, a4, a4
                  slli         s0, a5, 5
                  bgeu         tp, t3, 29f
23:               sub          t0, t0, sp
                  and          s3, a5, s2
                  sltu         t3, s7, t4
26:               or           a6, s6, s1
27:               srai         a3, tp, 10
                  bgeu         s7, zero, 35f
29:               and          ra, s7, a2
                  and          s1, a3, s0
                  xor          tp, s10, a4
                  andi         s1, s7, 380
                  bne          t2, gp, 52f
                  andi         t6, t2, -1219
35:               sll          t0, a4, s10
                  xor          tp, s0, t4
                  slt          s9, t0, t3
                  sub          tp, a4, t4
                  bgeu         a5, gp, 43f
                  ori          a6, a0, -241
                  bne          s0, a0, 46f
                  sra          s6, t4, t6
43:               srai         a4, s8, 28
                  srl          t5, t2, a3
                  nop
46:               addi         s5, t1, -780
                  nop
                  auipc        a2, 285602
                  blt          a0, gp, 52f
                  slti         t6, s0, -1147
                  ori          s0, t3, 1007
52:               nop
                  nop
                  xori         s9, s2, 48
                  and          zero, t1, s0
                  bltu         s1, a6, 65f
                  slt          s6, s3, ra
                  add          a1, a4, t2
                  blt          s10, a2, 67f
                  bgeu         s0, s6, 72f
                  or           s9, s8, s5
                  sub          a7, t4, sp
                  bltu         zero, a3, 77f
                  lui          tp, 898965
65:               srl          s10, a3, t4
                  srl          s1, s6, a3
67:               srl          a6, s8, s5
                  srli         a1, s3, 14
                  srai         a0, zero, 11
                  bgeu         a2, s11, 88f
                  sll          t1, a0, s8
72:               srli         s8, a0, 25
                  bgeu         s9, t3, 81f
                  xori         s10, a1, 1989
                  auipc        t1, 385483
                  bge          t1, s9, 77f
77:               srli         a2, s1, 13
                  or           t4, a5, s10
                  nop
                  sub          s9, t5, gp
81:               xori         zero, a7, 537
                  add          a2, s7, zero
                  and          t0, s3, s3
                  slti         t1, a7, -26
                  addi         a7, a2, -975
                  slli         a5, t3, 21
                  lui          a7, 740564
                  lui          s1, 435125
                  xor          a2, s0, s9
sub_9_j14:        jal          s10, sub_10 #jump sub_9 -> sub_10
                  slt          t4, t0, a5
                  and          t5, s10, tp
                  sra          s9, s10, t6
                  sll          s1, t5, s11
                  or           t3, s11, a0
88:               srl          zero, s0, s2
                  nop
                  beq          s0, s6, 99f
                  bne          gp, a6, 109f
                  srai         a6, s3, 20
                  lui          s7, 740438
                  sra          a1, s10, s10
                  nop
                  srl          a6, a0, t0
                  srl          a0, a1, t0
                  bge          s10, s4, 116f
99:               nop
                  slt          a7, t0, a5
                  bne          s8, t2, 103f
                  nop
103:              add          a5, s2, s11
                  srli         a4, s11, 1
                  xori         s6, ra, -1764
                  sltiu        a5, s8, 43
                  or           t6, a1, ra
                  lui          t3, 247092
109:              or           t5, t1, t2
                  sll          s4, t1, s7
                  auipc        t0, 783810
                  srl          a0, s10, t6
                  sll          s10, t1, s2
                  srl          s9, t1, sp
                  bge          t4, ra, 128f
116:              ori          s1, s1, -364
                  srl          t3, s9, a5
                  or           s10, tp, t5
                  or           s4, t3, t0
                  sltu         a6, t4, s0
                  bge          zero, t2, 134f
                  andi         a7, t6, 1327
                  andi         a4, a7, -611
                  sub          ra, a7, t1
                  slli         s6, a3, 24
                  sltu         t2, s10, s11
                  srli         a1, s11, 22
128:              slli         a6, t6, 11
                  beq          ra, t3, 142f
                  bge          a0, a3, 146f
                  srai         t0, t2, 28
                  xor          t2, a7, ra
                  bge          s9, tp, 145f
134:              lui          s8, 556856
                  bltu         t5, a5, 153f
                  sll          zero, s7, a5
                  slti         t3, s8, -1074
                  srl          t6, t0, t3
                  bgeu         a2, a1, 154f
                  blt          t1, a2, 151f
                  sra          s6, s4, a5
142:              sra          s3, t6, s3
                  srl          s6, s2, a2
                  nop
145:              auipc        t5, 197390
146:              sltu         a0, s4, a1
                  beq          zero, t1, 156f
                  bltu         s3, t3, 164f
                  xori         s0, a7, -984
                  bge          tp, a0, 162f
151:              auipc        zero, 232483
                  srai         a3, a1, 3
153:              bltu         t1, zero, 168f
154:              sltiu        s0, a2, 1253
                  lui          a5, 193300
156:              lui          t3, 762945
                  lui          a0, 347445
                  bgeu         t0, a7, 161f
                  slti         t4, a6, 1945
                  sra          s7, s3, gp
161:              xori         a3, ra, 408
162:              srl          a4, gp, zero
                  addi         s7, a5, 941
164:              sll          t4, a4, s2
                  xor          tp, s8, t6
                  andi         t4, s9, -702
                  beq          t0, t3, 184f
168:              bgeu         gp, s1, 175f
                  xori         a4, t3, -434
                  and          s8, gp, s6
                  add          t3, a3, gp
                  ori          a4, s6, -1646
                  or           a2, t4, t2
                  andi         a4, t4, -222
175:              bltu         s2, t1, 184f
                  beq          a7, s0, 184f
                  beq          a6, a7, 184f
                  lui          a2, 559584
                  xor          a0, a3, sp
                  beq          s8, t3, 184f
                  and          a7, s6, a5
                  srl          t0, t0, t6
                  bltu         a6, s4, 184f
184:              sltu         s3, s0, a1
                  slt          a3, s4, s0
                  sll          s9, a6, a7
                  and          t4, sp, t6
                  lui          ra, 841932
                  addi         s3, a3, -1879
                  lui          s8, 624650
                  lw           s10, 4(sp)
                  addi         sp, sp, 32
                  srli         t4, tp, 30
258:              addi x3, x26, 0
258:              jalr x3, x3, 0
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_2:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_3:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_4:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_5:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_6:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_7:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_8:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_9:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_10:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_11:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_12:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_13:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_14:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

mmode_intr_vector_15:
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
                  add x27, x2, zero
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 0x1f
                  beqz x13, 1f
                  j mmode_intr_handler
                  1: la x18, test_done
                  jalr x0, x18, 0

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
                  add x27, x2, zero
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x21, 0x3 # BREAKPOINT
                  beq x13, x21, ebreak_handler
                  li x21, 0x8 # ECALL_UMODE
                  beq x13, x21, ecall_handler
                  li x21, 0x9 # ECALL_SMODE
                  beq x13, x21, ecall_handler
                  li x21, 0xb # ECALL_MMODE
                  beq x13, x21, ecall_handler
                  li x21, 0x1
                  beq x13, x21, instr_fault_handler
                  li x21, 0x5
                  beq x13, x21, load_fault_handler
                  li x21, 0x7
                  beq x13, x21, store_fault_handler
                  li x21, 0xc
                  beq x13, x21, pt_fault_handler
                  li x21, 0xd
                  beq x13, x21, pt_fault_handler
                  li x21, 0xf
                  beq x13, x21, pt_fault_handler
                  li x21, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x21, illegal_instr_handler
                  csrr x21, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x2, x27, zero
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
                  add x2, x27, zero
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
                  add x2, x27, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x2, x27, zero
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
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x2, x27, zero
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
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x2, x27, zero
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
