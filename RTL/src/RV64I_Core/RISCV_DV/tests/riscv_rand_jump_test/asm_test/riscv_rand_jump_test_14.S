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
                  li x24, 0x40000100
                  csrw 0x301, x24
kernel_sp:        
                  la x15, kernel_stack_end

trap_vec_init:    
                  la x24, mtvec_handler
                  ori x24, x24, 0
                  csrw 0x305, x24 # MTVEC

mepc_setup:       
                  la x24, init
                  csrw 0x341, x24

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x24, 0x1800
                  csrw 0x300, x24 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x2
                  li x3, 0x0
                  li x4, 0xa
                  li x5, 0x7
                  li x6, 0x0
                  li x7, 0x9c647ee8
                  li x8, 0x2b43347d
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xfa7b6353
                  li x12, 0x80000000
                  li x13, 0xecc4c7a2
                  li x14, 0xf2ccc67f
                  li x16, 0x0
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0x7
                  li x21, 0x80000000
                  li x22, 0x80000000
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x4
                  li x27, 0x9
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xf7ff5197
                  li x31, 0xf7b51bde
                  la x17, user_stack_end
main:             la           t3, region_0+877 #start riscv_load_store_rand_instr_stream_0
                  lb           a0, 167(t3)
                  ori          s7, t0, -1153
                  lh           tp, 101(t3)
                  sb           s5, -60(t3)
                  ori          s6, s4, 1601
                  sb           gp, 42(t3)
                  sra          s0, t6, s5
                  sb           s0, 139(t3)
                  slt          t5, s10, zero
                  lw           sp, -29(t3)
                  slt          a4, s4, s6
                  sltu         s9, tp, a3
                  srai         tp, a4, 28
                  sub          t5, a0, t6
                  lhu          s11, 157(t3)
                  slt          s9, a6, a6
                  sb           s0, 18(t3)
                  lb           s6, -72(t3)
                  nop
                  lbu          s7, -202(t3)
                  sra          s3, s9, s5
                  addi         zero, t6, -230
                  sb           s6, -30(t3)
                  sltiu        gp, t3, -883
                  nop
                  lhu          a6, -49(t3)
                  xori         s7, s6, -721
                  sb           t3, -225(t3)
                  lbu          zero, 7(t3)
                  add          s8, s5, s1
                  lb           t4, 1(t3)
                  lbu          s1, -58(t3)
                  srli         s1, a5, 25
                  or           ra, t4, zero
                  slli         s1, tp, 25
                  add          t0, s0, a2
                  lhu          a3, -243(t3)
                  lb           s11, 4(t3)
                  lb           a1, 89(t3)
                  xor          s2, a5, a2
                  slt          sp, zero, a5
                  lbu          ra, -83(t3)
                  sb           s10, -238(t3)
                  lbu          s5, 202(t3)
                  lb           t6, -52(t3)
                  lbu          t6, 220(t3)
                  lbu          a0, 80(t3)
                  sh           t5, -131(t3)
                  or           s1, a3, t2
                  nop
                  lb           s3, -62(t3) #end riscv_load_store_rand_instr_stream_0
                  ori          gp, s2, -1671
                  auipc        gp, 43087
                  xori         s9, s1, 1253
                  xori         a1, t1, -486
                  la           t0, sub_1
                  sltiu        a0, zero, 1050
                  srl          t5, t4, s2
                  addi         t0, t0, -689
                  slt          t4, s9, s0
                  and          zero, tp, s11
                  slti         t3, a2, -1822
                  add          a3, a0, a1
                  sltu         tp, t2, t4
main_j1:          jalr         ra, t0, 690 #jump main -> sub_1
                  srl          t2, s5, s10
                  bltu         sp, s4, 12f
                  bne          t1, t3, 8f
                  sll          t4, s9, s1
8:                auipc        s1, 545037
                  beq          t5, t6, 12f
                  addi         t4, t5, 953
                  bltu         a7, s5, 12f
12:               sub          s11, s1, t5
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_6:            addi         a7, a7, -52
                  srl          s6, a1, s10
                  or           s2, sp, gp
                  ori          s8, s2, 410
                  lui          s5, 1044525
                  or           s7, a6, a5
                  srl          t5, t3, a7
                  xori         s9, s4, 184
                  sw           ra, 4(a7)
                  or           s9, ra, a7
                  srai         t3, sp, 22
                  la           sp, region_0+1839 #start riscv_load_store_rand_instr_stream_28
                  sb           ra, 4(sp)
                  xori         ra, t1, -1379
                  addi         gp, a0, 119
                  slti         s4, gp, 1704
                  addi         s3, a1, 1741
                  lbu          a6, -12(sp)
                  xor          ra, s10, a3
                  auipc        t6, 430809
                  lbu          s5, -1(sp)
                  add          s1, a1, a5
                  lb           s0, 2(sp)
                  and          tp, gp, ra
                  srli         s2, a3, 15
                  and          a6, t6, s4
                  lbu          s5, 16(sp)
                  and          t5, a7, t2
                  and          t4, s0, s9
                  sb           t3, 2(sp)
                  lb           ra, -16(sp)
                  lb           ra, -5(sp)
                  and          zero, s4, s7
                  add          s2, s1, s9
                  srai         s11, t4, 18
                  lbu          s8, 0(sp)
                  sb           a7, -4(sp)
                  sb           a5, -9(sp)
                  lbu          t5, 14(sp)
                  sw           s10, 1(sp)
                  lhu          a3, 7(sp)
                  srai         t5, a3, 8
                  sw           s1, 1(sp)
                  lhu          s6, 3(sp)
                  sub          gp, s9, t5
                  add          s8, zero, s0
                  sb           a7, 16(sp) #end riscv_load_store_rand_instr_stream_28
                  la           sp, region_0+498 #start riscv_load_store_rand_instr_stream_24
                  andi         tp, s6, -79
                  srli         a6, s8, 24
                  lbu          s8, -219(sp)
                  lb           t6, -220(sp)
                  lhu          zero, -226(sp)
                  srl          t3, a4, tp
                  lb           s8, -99(sp)
                  sltiu        t1, t0, 2019
                  sb           s3, -10(sp)
                  srl          t4, s11, s4
                  sra          s0, s5, s9
                  sra          t5, t2, t3
                  or           s2, s5, a1
                  andi         s8, t1, -1518
                  lbu          s2, 138(sp)
                  add          s3, tp, s7
                  lbu          s0, 213(sp)
                  slli         s6, s1, 16
                  lb           a4, -115(sp)
                  ori          s3, s9, -1443
                  or           s2, a0, zero
                  srli         s3, s0, 20
                  lui          t1, 355770
                  lui          s5, 776547
                  xor          t1, t4, a5
                  lh           zero, 48(sp)
                  sb           t6, -21(sp)
                  nop
                  ori          a1, t3, 1990
                  sub          t6, s9, a1
                  lbu          s5, -71(sp)
                  xori         s0, a4, 1729
                  xor          s0, s0, s1
                  lbu          s7, -39(sp)
                  srli         a4, t4, 6
                  slli         a6, s11, 16
                  sb           t4, -109(sp) #end riscv_load_store_rand_instr_stream_24
                  la           s9, region_0+398 #start riscv_load_store_rand_instr_stream_19
                  sh           zero, 702(s9)
                  slli         t3, a7, 15
                  sltiu        s3, s7, -1992
                  sb           t5, 131(s9)
                  lh           s3, 576(s9)
                  xor          s3, a1, s4
                  srli         a6, s0, 12
                  slt          zero, t5, s7
                  add          t6, a4, s10
                  addi         s0, tp, -1300
                  xor          t3, t2, a4
                  lbu          s6, 417(s9)
                  sltu         s5, s1, t6
                  sb           s8, 521(s9)
                  slt          s6, t2, sp
                  lhu          t5, 694(s9)
                  lb           a3, 729(s9)
                  sb           s5, -99(s9)
                  srai         s3, a7, 8
                  lui          tp, 301576
                  addi         sp, zero, -144
                  sltu         t4, ra, a5
                  sb           tp, 689(s9)
                  lui          t3, 85895
                  sb           a4, 936(s9)
                  lb           t0, 1487(s9)
                  srl          gp, t5, gp
                  ori          sp, a6, -89
                  lb           gp, -103(s9)
                  sh           a3, 772(s9)
                  or           s7, s1, zero
                  sb           s10, 1145(s9)
                  sh           a6, 512(s9)
                  sltu         s7, s4, a5
                  lbu          s6, -216(s9)
                  sh           s7, -360(s9)
                  lb           t4, 1335(s9)
                  srl          tp, zero, gp
                  srl          s4, gp, s7
                  srli         a1, a4, 14
                  lbu          sp, -353(s9)
                  lui          s2, 713610
                  sub          t5, s10, s6
                  lbu          s0, -25(s9)
                  sll          tp, s6, s11
                  lb           s11, 373(s9)
                  lbu          tp, 169(s9)
                  andi         s2, t0, 1951
                  lb           s11, 1199(s9)
                  lh           s3, 1388(s9)
                  andi         tp, s5, -2027
                  sb           ra, 761(s9)
                  lb           s8, 1293(s9)
                  lbu          a4, 1002(s9)
                  sb           s5, 1057(s9)
                  andi         s3, a4, -941
                  lw           ra, 386(s9) #end riscv_load_store_rand_instr_stream_19
                  la           s4, region_1+686 #start riscv_load_store_rand_instr_stream_18
                  lb           a1, 203(s4)
                  sb           s4, 109(s4)
                  or           tp, a1, s3
                  lhu          s3, -44(s4)
                  lb           s2, -133(s4)
                  lb           s2, 95(s4)
                  nop
                  srl          sp, s8, s9
                  lbu          sp, -110(s4)
                  slt          a1, s5, a1
                  lb           a3, -80(s4)
                  lb           s0, 145(s4)
                  ori          s6, a1, -1125
                  add          zero, s2, s6
                  lhu          s0, 152(s4)
                  slli         s2, ra, 14
                  slti         a6, a3, 1688
                  lui          tp, 1012953
                  sra          s11, s2, s9
                  lbu          ra, 55(s4)
                  lhu          zero, 136(s4)
                  lb           s8, 163(s4)
                  add          sp, zero, a2
                  and          sp, s3, t3
                  add          s9, s0, s4
                  lh           a3, -200(s4)
                  lbu          a4, -135(s4) #end riscv_load_store_rand_instr_stream_18
                  la           a6, region_1+1128 #start riscv_load_store_rand_instr_stream_25
                  lhu          t1, 816(a6)
                  srli         a3, a1, 19
                  slli         t6, t5, 4
                  srli         s6, s1, 17
                  sltu         t6, s5, tp
                  srl          s3, s10, zero
                  lb           t0, -1039(a6)
                  sub          a4, zero, t2
                  sh           s0, 64(a6)
                  sh           s0, -326(a6)
                  sb           s1, -569(a6)
                  lbu          s3, -622(a6)
                  sb           t3, -737(a6)
                  lhu          s5, -264(a6)
                  sh           t2, -280(a6)
                  lb           ra, 340(a6)
                  sltu         a3, t3, s2
                  lbu          sp, 28(a6)
                  sub          a3, a1, s1
                  sw           s9, -12(a6)
                  lbu          s0, -875(a6)
                  srli         s2, zero, 7
                  lbu          t2, -1035(a6)
                  lhu          a3, 802(a6)
                  slli         s3, s10, 26
                  sb           s4, 491(a6)
                  and          t6, t1, s5
                  lhu          s1, -690(a6)
                  srli         t6, a2, 12
                  sra          s11, zero, s11
                  lbu          s6, 285(a6)
                  lbu          zero, 31(a6)
                  lbu          a1, 188(a6)
                  lb           tp, -158(a6)
                  sll          s4, zero, t3
                  sll          s4, s3, ra
                  lui          s1, 126502
                  srai         s11, a1, 6
                  lbu          ra, 592(a6)
                  sh           sp, -518(a6)
                  lh           a1, 516(a6)
                  add          s3, a4, s7
                  sb           a2, 841(a6)
                  lb           t3, 757(a6)
                  andi         s6, ra, -1954
                  lb           s11, -1048(a6) #end riscv_load_store_rand_instr_stream_25
                  la           t5, region_0+1341 #start riscv_load_store_rand_instr_stream_3
                  lui          a1, 682118
                  sb           s6, -646(t5)
                  auipc        s7, 1005504
                  sb           t1, -1161(t5)
                  andi         s2, s2, -1252
                  nop
                  lh           a1, -939(t5)
                  auipc        a2, 879677
                  lbu          t4, 89(t5)
                  lbu          t3, 176(t5)
                  xori         t6, s2, 1375
                  sra          s3, ra, zero
                  xori         tp, t3, -413
                  sb           a4, 460(t5)
                  lb           t2, -1339(t5)
                  auipc        s2, 246045
                  lbu          s9, -1282(t5)
                  lh           a3, 477(t5)
                  lbu          s8, -246(t5)
                  and          s1, s0, sp
                  sh           tp, -603(t5)
                  lb           s5, -413(t5)
                  and          s1, s6, ra
                  andi         a6, a4, -1781
                  sb           s1, -1258(t5)
                  sw           s8, -285(t5)
                  sb           s7, -911(t5)
                  sub          s8, a4, t3
                  ori          t6, t4, -1366
                  lbu          a1, -863(t5)
                  lbu          a1, -724(t5)
                  sb           a4, 128(t5)
                  lhu          s8, -183(t5)
                  sb           zero, 344(t5)
                  lbu          t2, -166(t5)
                  lb           s4, 509(t5)
                  sb           ra, 428(t5)
                  lbu          s1, 425(t5)
                  lhu          s3, 309(t5)
                  lb           s7, -374(t5) #end riscv_load_store_rand_instr_stream_3
                  la           a2, region_0+678 #start riscv_load_store_rand_instr_stream_29
                  lbu          a4, -29(a2)
                  sll          a1, s0, s10
                  lb           t6, 21(a2)
                  sub          ra, t4, s5
                  lbu          s0, 49(a2)
                  lh           s7, 8(a2)
                  sh           a1, 16(a2)
                  and          s4, t4, zero
                  sll          ra, sp, s5
                  srl          ra, s0, t2
                  lh           s7, 28(a2)
                  sh           t5, -4(a2)
                  lhu          s8, 4(a2)
                  sb           a5, -8(a2)
                  lbu          s2, 39(a2)
                  srai         a0, s9, 15
                  lbu          t2, -2(a2)
                  sh           a0, 2(a2)
                  lh           s0, 36(a2)
                  addi         s3, s2, 1031
                  srai         s8, s3, 5
                  slli         s6, t4, 6
                  sub          s8, a2, s6
                  sb           s5, 21(a2)
                  ori          s5, s10, 303
                  sltu         s5, t0, t5
                  add          tp, a5, sp
                  andi         t3, s1, -1952
                  lb           s6, -34(a2) #end riscv_load_store_rand_instr_stream_29
                  la           sp, region_0+1553 #start riscv_load_store_rand_instr_stream_16
                  sb           a7, 38(sp)
                  lbu          ra, -1026(sp)
                  nop
                  lbu          ra, -1412(sp)
                  sb           sp, -195(sp)
                  lh           t3, -811(sp)
                  slli         a3, s0, 16
                  and          s0, s9, t1
                  lbu          a0, -909(sp)
                  sb           t2, -1168(sp)
                  xor          a6, a5, s1
                  lb           a2, -700(sp)
                  srli         s11, s0, 3
                  xori         s11, s9, 602
                  sb           a0, -54(sp)
                  sra          t2, a0, a7
                  sltiu        a1, s1, -1393
                  lh           t5, -625(sp)
                  lb           s7, 172(sp)
                  or           tp, s6, a0
                  sra          t3, a4, s3
                  ori          ra, t4, -446
                  sra          a2, a4, s0
                  lb           s11, -358(sp)
                  or           s9, s4, a6
                  slli         t4, t0, 13
                  lh           s0, -621(sp)
                  sh           s6, 437(sp)
                  slt          s8, t6, a2
                  srli         a4, s2, 31
                  slt          s8, s6, zero
                  xor          s3, t0, gp
                  sub          s8, t2, a7
                  sltu         gp, s11, tp
                  ori          zero, a1, 1126
                  lbu          a0, -186(sp)
                  lb           t1, 22(sp) #end riscv_load_store_rand_instr_stream_16
                  la           tp, region_0+169 #start riscv_load_store_rand_instr_stream_6
                  ori          ra, a3, 230
                  ori          s1, s4, -564
                  nop
                  lb           ra, -19(tp)
                  lb           t0, -52(tp)
                  auipc        s11, 70135
                  lbu          a1, 34(tp)
                  sra          s11, t5, a7
                  lhu          ra, 17(tp)
                  slt          a3, s10, t2
                  sb           zero, -18(tp)
                  sra          a3, s3, ra
                  addi         s9, a5, 1647
                  andi         sp, s11, -882
                  lb           a2, 191(tp)
                  srai         s11, t0, 12
                  lb           t0, -57(tp)
                  lb           a2, -156(tp)
                  sra          s7, s7, tp
                  lbu          s9, 59(tp)
                  sb           s1, -151(tp)
                  sltiu        s5, t6, 2018
                  lb           s1, -29(tp)
                  sh           a3, -129(tp)
                  lbu          s3, 184(tp)
                  sb           zero, 104(tp)
                  lh           sp, 189(tp)
                  sb           a6, 201(tp)
                  addi         s4, s3, 472
                  nop
                  lb           a6, 253(tp)
                  lb           t5, -7(tp)
                  srl          a4, ra, t0
                  xor          a3, a2, t2
                  lbu          sp, 27(tp)
                  lh           t2, 21(tp)
                  sll          a6, sp, a1
                  lb           zero, -166(tp)
                  sb           s11, -16(tp)
                  sb           tp, 192(tp)
                  slli         a6, s5, 21
                  and          s2, gp, a4
                  lb           t1, -132(tp)
                  add          s2, zero, a5
                  lh           s1, 89(tp) #end riscv_load_store_rand_instr_stream_6
                  la           a1, region_1+274 #start riscv_load_store_rand_instr_stream_14
                  lh           s1, -16(a1)
                  lui          t3, 478138
                  sw           a5, 10(a1)
                  lb           s0, 15(a1)
                  sb           a7, 6(a1)
                  sw           t6, 2(a1)
                  slti         s1, tp, 1478
                  lb           s0, 9(a1)
                  lhu          a4, -12(a1)
                  sb           tp, 1(a1)
                  sb           s10, 9(a1)
                  sub          t3, t4, a5
                  lbu          t3, 15(a1)
                  lhu          s9, 0(a1)
                  sub          s7, gp, s2
                  lb           s1, 14(a1)
                  addi         a4, ra, -1763
                  sb           t3, -10(a1)
                  lh           a6, 2(a1)
                  lw           s9, -2(a1)
                  ori          a6, t1, -1683
                  sh           s4, 14(a1)
                  lb           t5, -13(a1)
                  sb           s0, -5(a1)
                  lbu          gp, 2(a1)
                  lbu          s2, -15(a1)
                  sltu         s7, s4, s11
                  sll          a2, a4, s5
                  addi         a2, t3, -1391
                  lhu          t1, -12(a1)
                  lb           s5, 7(a1)
                  xor          s2, tp, t2
                  lb           t4, 7(a1)
                  sb           s5, 8(a1)
                  lui          t2, 715859
                  sb           s1, 3(a1) #end riscv_load_store_rand_instr_stream_14
                  la           s11, region_0+35 #start riscv_load_store_rand_instr_stream_21
                  or           gp, s2, t1
                  slt          gp, a0, zero
                  nop
                  lb           s2, 14(s11)
                  auipc        tp, 578654
                  add          tp, a6, s2
                  sw           a3, -15(s11)
                  sh           gp, 11(s11)
                  lb           s8, 5(s11)
                  lbu          a3, 2(s11)
                  lbu          s6, 8(s11)
                  add          t1, s4, s8
                  sh           a4, -13(s11)
                  sb           sp, -1(s11)
                  lb           tp, -8(s11)
                  lbu          t6, 0(s11)
                  sh           tp, 3(s11)
                  sh           s2, -3(s11)
                  sb           t1, -12(s11)
                  lbu          tp, -3(s11)
                  lb           sp, -4(s11)
                  lw           a0, 1(s11)
                  lhu          s7, 11(s11)
                  sll          gp, a0, t5
                  lb           gp, -10(s11)
                  lbu          gp, 4(s11)
                  lbu          a0, 10(s11)
                  lb           s9, 4(s11)
                  lhu          gp, -5(s11)
                  or           s1, a6, s4
                  lh           t6, -5(s11)
                  lbu          s9, 13(s11)
                  sltiu        t5, s4, 201
                  srl          t2, t4, s4
                  lh           t1, -11(s11)
                  lh           s0, -5(s11)
                  lb           a3, -2(s11)
                  lb           s8, -4(s11)
                  lb           ra, -8(s11) #end riscv_load_store_rand_instr_stream_21
                  la           sp, region_0+1613 #start riscv_load_store_rand_instr_stream_26
                  slli         t1, s11, 14
                  sb           t5, 5(sp)
                  lbu          tp, 3(sp)
                  nop
                  lbu          s8, 6(sp)
                  sltu         tp, a6, t2
                  auipc        a2, 875537
                  lhu          s0, -7(sp)
                  sb           s9, 14(sp)
                  sltu         a0, zero, t6
                  slli         s9, s6, 16
                  sltu         t3, s1, gp
                  lb           s4, -11(sp)
                  nop
                  lbu          t6, 14(sp)
                  sb           s3, 13(sp)
                  lh           a2, -7(sp)
                  srai         zero, zero, 28
                  slt          a4, t6, s9
                  and          a0, s2, gp
                  srai         a2, s5, 5
                  sh           a0, 15(sp)
                  srai         t4, ra, 14
                  xori         s6, s1, 415
                  slti         a0, zero, -1416
                  sb           gp, -10(sp)
                  lh           a3, 9(sp)
                  or           a4, s7, s7
                  srli         t5, s7, 4
                  lb           t5, -6(sp)
                  lb           s8, -9(sp)
                  lhu          t3, -9(sp) #end riscv_load_store_rand_instr_stream_26
                  la           t4, region_0+1786 #start riscv_load_store_rand_instr_stream_10
                  sub          t0, a3, a1
                  slt          t3, a1, s1
                  and          a4, a5, a7
                  auipc        s1, 315851
                  lbu          t5, 54(t4)
                  and          t3, tp, a5
                  lbu          a3, 42(t4)
                  lh           s7, -10(t4)
                  sw           t2, 38(t4)
                  sll          ra, t6, t5
                  slt          s7, s7, a2
                  lbu          s6, 45(t4)
                  lbu          s11, -20(t4)
                  slti         a4, s8, 115
                  nop
                  sub          s3, a2, t6
                  lb           zero, 3(t4)
                  lb           s4, 43(t4)
                  lh           s6, -30(t4)
                  sra          a3, a6, s2
                  slli         s0, tp, 12
                  lb           t6, -25(t4)
                  add          t1, a5, s2
                  or           a1, a7, a6
                  sw           a4, -2(t4)
                  lb           t2, 36(t4)
                  sb           t4, -9(t4)
                  sll          s6, t5, a7
                  sw           t2, 10(t4)
                  slti         t6, s10, 391
                  sh           ra, 4(t4)
                  or           a2, s0, a4
                  add          a1, tp, a7
                  and          a4, zero, t6
                  lbu          t3, 47(t4)
                  sltiu        tp, s11, -1837
                  sb           tp, -25(t4)
                  lbu          gp, -12(t4)
                  lb           s11, -58(t4)
                  or           t5, s5, t0
                  sub          t1, a4, ra
                  sw           s5, -22(t4)
                  add          s6, a1, t5
                  slt          a1, a3, a3
                  sb           s7, 41(t4)
                  sb           a1, -63(t4)
                  lb           a3, 23(t4) #end riscv_load_store_rand_instr_stream_10
                  la           t3, region_0+379 #start riscv_load_store_rand_instr_stream_32
                  nop
                  slt          t2, t2, a5
                  lb           gp, 1236(t3)
                  lh           s6, 379(t3)
                  sb           s5, 1155(t3)
                  slli         s2, a3, 5
                  lbu          s0, 1556(t3)
                  slli         gp, s11, 2
                  slti         gp, a0, -240
                  lb           a0, -92(t3)
                  and          s6, t1, s2
                  lbu          t5, 1414(t3)
                  sb           ra, 150(t3)
                  ori          s4, s1, 1377
                  lb           sp, 1443(t3)
                  xor          tp, s0, s0
                  sra          s3, gp, s3
                  slt          t6, a4, s0
                  slli         gp, a6, 17
                  ori          s7, a0, -1849
                  slti         s8, s11, -1175
                  srli         s0, a3, 6
                  lbu          t5, 120(t3)
                  lhu          s7, 713(t3)
                  sb           s9, 348(t3)
                  srl          s6, a5, a4
                  slt          t5, s1, ra
                  lbu          a0, 1180(t3) #end riscv_load_store_rand_instr_stream_32
                  la           s2, region_1+1234 #start riscv_load_store_rand_instr_stream_0
                  slt          s9, a0, t2
                  sb           tp, 224(s2)
                  sb           t6, 233(s2)
                  sll          s4, a6, s8
                  slti         t2, s7, -166
                  slt          zero, s11, s9
                  slti         s6, a6, -913
                  lb           a4, -245(s2)
                  sb           t4, 51(s2)
                  srai         zero, a5, 15
                  or           a1, s10, t2
                  slt          a0, a7, s1
                  lb           s4, 36(s2)
                  lhu          s9, -254(s2)
                  lh           tp, 128(s2)
                  sh           a2, -12(s2)
                  slli         a2, a1, 13
                  srl          s3, s10, s3
                  lb           t1, 15(s2)
                  auipc        a2, 292080
                  lb           a2, -211(s2)
                  sltu         s4, sp, tp
                  lb           s9, 237(s2)
                  sb           t2, 125(s2)
                  sub          gp, sp, zero
                  sb           a1, -55(s2)
                  sltu         t1, a0, s0
                  lb           a6, -202(s2)
                  sll          tp, s5, a0
                  srli         t5, t1, 21
                  slli         s4, zero, 10
                  ori          a0, t3, -74
                  nop
                  lh           s11, -92(s2)
                  sltiu        s1, t2, 1910
                  ori          s8, t2, -1974
                  sb           s4, 65(s2)
                  slti         s9, t5, -866
                  sb           s0, 239(s2)
                  addi         a3, ra, -1887
                  srai         s5, s2, 1
                  nop
                  sltiu        s0, s6, -899
                  lw           s7, 242(s2)
                  lbu          tp, -61(s2)
                  lbu          t4, -225(s2)
                  sb           ra, 73(s2)
                  lh           t3, -222(s2)
                  lb           s4, 230(s2)
                  lb           a3, -31(s2) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+511 #start riscv_load_store_rand_instr_stream_15
                  add          a2, t4, s5
                  srli         gp, s2, 30
                  lb           sp, -10(t4)
                  lb           s7, -8(t4)
                  lb           a1, -16(t4)
                  xor          a1, s5, s6
                  sltiu        s5, ra, -1320
                  ori          s6, a0, -99
                  sb           sp, -12(t4)
                  lb           s1, 9(t4)
                  sll          t5, s1, s4
                  sw           t2, -7(t4)
                  lw           s4, -15(t4)
                  sb           ra, -12(t4)
                  lb           s7, 10(t4)
                  slti         zero, s6, 1746
                  add          gp, a6, s11
                  sltiu        a4, a4, -689
                  auipc        a0, 46235
                  sra          s9, a1, tp
                  lb           s8, 2(t4)
                  lb           s1, -7(t4)
                  sltu         zero, s4, a0
                  sb           s3, -4(t4)
                  sb           t2, -16(t4)
                  sltu         gp, s3, s4
                  xori         sp, s7, -549
                  sltu         s8, s4, s10
                  addi         t3, a7, 1806
                  sb           s5, -6(t4)
                  and          s5, t1, sp
                  lui          a0, 771319
                  slti         s0, t4, 979
                  sub          s3, s9, tp
                  sb           t2, -10(t4)
                  sh           s7, -5(t4)
                  lbu          s11, -16(t4)
                  lbu          s7, -14(t4)
                  or           a6, s10, s2
                  lui          sp, 309386
                  lh           gp, -7(t4)
                  lb           t2, -16(t4)
                  lb           t0, 5(t4)
                  add          zero, s8, t3
                  sb           s2, 2(t4)
                  lb           t6, 12(t4)
                  sb           a7, -10(t4)
                  lh           sp, -9(t4)
                  ori          s4, a5, 1447
                  sub          s8, a4, sp
                  xor          tp, t2, t1
                  lh           s7, -1(t4)
                  lb           a0, 10(t4)
                  xor          a3, t4, s1
                  slti         t6, s6, -970
                  lh           t6, 7(t4) #end riscv_load_store_rand_instr_stream_15
                  la           s0, region_1+1301 #start riscv_load_store_rand_instr_stream_22
                  sb           a6, 16(s0)
                  lbu          s8, 3(s0)
                  srai         a4, s1, 23
                  slt          ra, a7, a6
                  sh           s10, -5(s0)
                  lbu          a2, 12(s0)
                  lb           t3, 6(s0)
                  slt          t5, zero, a3
                  srli         t6, t6, 0
                  lb           t6, -3(s0)
                  lbu          t4, 5(s0)
                  lb           a2, -15(s0)
                  lw           t6, -1(s0)
                  lui          t0, 162567
                  lbu          t4, 9(s0)
                  lb           ra, -13(s0)
                  lw           t5, -5(s0)
                  lb           a3, 0(s0)
                  lbu          a2, -6(s0)
                  sll          zero, t6, t5
                  sb           gp, 0(s0)
                  lbu          gp, -6(s0)
                  lb           t3, 1(s0)
                  sb           s10, 1(s0)
                  sb           s2, 8(s0)
                  lui          a0, 377629
                  lbu          sp, 2(s0)
                  sltiu        t6, a5, 418
                  lbu          t2, -4(s0)
                  nop
                  sub          s6, t1, t5
                  slt          a1, a2, t1
                  sb           s0, -12(s0)
                  lbu          zero, 3(s0)
                  sltu         s6, sp, s10
                  sb           s4, -1(s0)
                  ori          s7, s8, -1689
                  lbu          s11, 12(s0)
                  lb           s5, 16(s0)
                  lb           sp, 16(s0)
                  sltu         ra, a4, t0
                  lhu          s4, 3(s0)
                  sra          sp, s5, t4
                  auipc        a6, 268763
                  sw           s0, 15(s0) #end riscv_load_store_rand_instr_stream_22
                  la           ra, region_0+1286 #start riscv_load_store_rand_instr_stream_4
                  lhu          t1, 62(ra)
                  and          s1, gp, ra
                  lhu          s6, -18(ra)
                  slli         a2, t4, 23
                  sb           s9, -31(ra)
                  xori         t6, s0, -1557
                  lbu          s2, -56(ra)
                  lbu          s3, 5(ra)
                  lb           t6, -60(ra)
                  add          gp, s0, s10
                  lh           a0, 10(ra)
                  sll          s4, a6, s6
                  lb           tp, 21(ra)
                  sub          t6, s9, s2
                  xori         t6, s8, 1717
                  auipc        s0, 762718
                  sub          a3, gp, s9
                  sltu         t2, s1, t6
                  lb           s8, 33(ra)
                  lbu          s1, -17(ra)
                  slti         s2, zero, -1601
                  lbu          a3, 64(ra)
                  ori          t5, s2, -975
                  sll          s3, s3, t5
                  and          t2, a0, s1
                  lb           t2, -4(ra)
                  sb           a2, -18(ra)
                  lbu          t2, -21(ra)
                  sltu         t3, s5, t0
                  add          a2, s6, s9
                  auipc        s0, 828697
                  ori          s4, t1, 1927
                  sltiu        a4, t0, 1162
                  lh           t5, 64(ra)
                  sub          s2, a4, ra
                  slli         sp, s3, 25
                  slti         t6, s7, 1632
                  addi         s2, s6, -1293
                  lbu          a0, -28(ra)
                  ori          s8, a3, -874
                  lbu          t4, -16(ra)
                  or           t2, s4, s11
                  lbu          s8, 61(ra)
                  lb           s8, 46(ra)
                  sb           ra, -7(ra) #end riscv_load_store_rand_instr_stream_4
                  la           s1, region_1+115 #start riscv_load_store_rand_instr_stream_27
                  sb           a7, 64(s1)
                  srai         s5, a1, 3
                  lb           t2, 47(s1)
                  lhu          t0, -97(s1)
                  srai         s6, zero, 10
                  sll          t4, s5, ra
                  lw           s3, 21(s1)
                  sltu         t2, t1, t4
                  sltiu        s6, sp, 1329
                  slti         sp, s10, 22
                  lbu          s0, -70(s1)
                  srl          t2, t6, t4
                  lbu          t3, 198(s1)
                  lbu          sp, 174(s1)
                  auipc        tp, 707718
                  lb           s0, 186(s1)
                  lui          s0, 486082
                  lbu          s5, -57(s1)
                  sb           a5, 82(s1)
                  lbu          s5, 79(s1)
                  srai         a6, zero, 14
                  add          a0, s10, t1
                  srli         ra, t4, 9
                  auipc        t5, 918534
                  sltiu        tp, sp, -1254
                  slti         zero, s6, -366
                  nop
                  lbu          s8, -78(s1)
                  lbu          s4, -100(s1)
                  srl          gp, zero, a6
                  lbu          s2, 136(s1)
                  sb           zero, 84(s1)
                  srai         s9, s8, 18
                  sra          a3, a4, a1
                  lbu          s0, -114(s1)
                  slt          s9, s11, s3
                  auipc        gp, 939921
                  lb           t4, 222(s1)
                  add          s3, a6, a4
                  lb           sp, 190(s1)
                  sll          s4, s4, t4
                  lbu          tp, 93(s1)
                  or           t3, sp, a5
                  lbu          ra, 227(s1)
                  srli         t0, s4, 29
                  lb           a3, -50(s1)
                  sub          t6, tp, a4
                  lbu          s2, 150(s1)
                  sh           a4, -5(s1)
                  sh           a7, 39(s1)
                  sw           t6, -107(s1) #end riscv_load_store_rand_instr_stream_27
                  la           sp, region_0+266 #start riscv_load_store_rand_instr_stream_17
                  slli         s6, s4, 8
                  lhu          s11, 16(sp)
                  sltiu        s9, a5, 1588
                  andi         s0, t5, 1922
                  ori          s11, s10, 854
                  srl          s6, s0, t3
                  ori          t0, zero, 1726
                  srai         tp, a3, 11
                  lbu          s1, 15(sp)
                  lbu          s6, -2(sp)
                  xor          s1, s11, s9
                  or           s3, a0, a1
                  addi         s3, tp, 1744
                  lh           s5, -2(sp)
                  lhu          s5, -10(sp)
                  auipc        t0, 293804
                  sw           s4, 14(sp)
                  lw           s2, -6(sp)
                  lhu          t0, 12(sp)
                  srl          zero, a0, t5
                  srai         a2, t5, 21
                  lh           a6, 10(sp)
                  lb           t0, 11(sp)
                  srai         t6, a3, 20
                  sb           s6, -6(sp)
                  slt          t2, s11, a0
                  sra          t0, s1, t4
                  slt          s7, a3, a6
                  slti         a1, gp, 307
                  lh           s8, 8(sp) #end riscv_load_store_rand_instr_stream_17
                  la           sp, region_1+1847 #start riscv_load_store_rand_instr_stream_12
                  addi         t4, t1, 334
                  lh           t6, -5(sp)
                  and          a1, zero, zero
                  nop
                  srli         t2, s6, 20
                  sh           s10, -1(sp)
                  ori          s6, a6, -969
                  lhu          s2, -13(sp)
                  lbu          s8, -16(sp)
                  ori          t1, s6, 1969
                  lb           t0, 11(sp)
                  sra          s5, s1, s6
                  sll          s11, s7, s3
                  sb           s11, 16(sp)
                  lbu          a3, -8(sp)
                  sb           a4, -8(sp)
                  srli         tp, a3, 6
                  sb           s9, 3(sp)
                  sltiu        a3, s7, -885
                  sll          t0, t0, a4
                  ori          s3, s10, -1240
                  sltiu        s11, sp, -1073
                  xori         s1, s3, -695
                  sb           s5, -16(sp)
                  lh           s4, 11(sp)
                  lb           t6, -14(sp)
                  slli         s0, s8, 12
                  sltu         a1, s2, s9
                  lb           s11, 12(sp)
                  sb           t1, -12(sp)
                  lbu          s0, 0(sp)
                  srai         ra, a0, 14
                  lb           s4, 9(sp)
                  slt          t3, t5, s4
                  sh           t3, -5(sp)
                  addi         a0, t4, -273
                  sb           gp, 7(sp)
                  lbu          s9, 16(sp)
                  srli         ra, t3, 11
                  srai         t3, t4, 29
                  slli         s2, a3, 9
                  sb           s2, 10(sp)
                  slli         t6, s5, 0
                  lbu          s7, 11(sp)
                  sb           s10, -2(sp)
                  sra          t4, tp, a5
                  sb           t0, 10(sp)
                  lbu          s5, -15(sp) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1481 #start riscv_load_store_rand_instr_stream_2
                  sh           tp, -147(sp)
                  xor          t4, t5, t6
                  lb           ra, -145(sp)
                  srli         a3, s0, 18
                  sh           t4, 229(sp)
                  sub          zero, s11, a3
                  lb           s8, 236(sp)
                  lb           t2, -111(sp)
                  lbu          a3, 18(sp)
                  ori          ra, s3, 1522
                  lbu          a2, 110(sp)
                  nop
                  lbu          gp, 15(sp)
                  sub          t5, t1, s8
                  lhu          a2, 71(sp)
                  sb           a5, 88(sp)
                  or           s0, a7, t5
                  lb           t1, 30(sp)
                  slli         a0, s5, 25
                  sb           a2, 50(sp)
                  slt          tp, s0, t0
                  sltu         s3, a6, t5
                  sb           a0, -212(sp)
                  sh           a1, 189(sp)
                  and          t6, s6, s6
                  sltu         s1, a2, ra
                  and          ra, s9, gp
                  srai         s7, t1, 17
                  sll          t5, t4, zero
                  lw           t2, -205(sp)
                  slli         s8, s6, 20
                  sb           s3, -178(sp)
                  sb           a7, 122(sp)
                  add          a6, t0, a5
                  add          s8, a5, s9
                  add          s9, t2, a6
                  lb           ra, 237(sp)
                  lb           a2, 211(sp)
                  lhu          t5, -217(sp)
                  lh           t0, 163(sp)
                  lbu          t1, 110(sp) #end riscv_load_store_rand_instr_stream_2
                  srli         s7, a3, 10
                  xori         s7, zero, 1161
                  nop
                  sltiu        t3, sp, 276
                  srai         a6, a6, 4
                  blt          s8, a6, 16f
                  add          t3, ra, sp
                  or           a1, s8, a0
                  or           ra, t6, s10
                  nop
                  sra          a4, sp, t1
                  or           s4, a6, s1
                  slli         s9, a1, 25
                  slt          gp, a0, t1
                  addi         s6, s10, -1600
                  andi         sp, zero, 1255
16:               bge          s9, tp, 27f
                  xori         t2, a3, 631
                  xori         a4, s9, 281
                  srli         s4, t2, 2
                  add          ra, s9, gp
                  beq          s4, sp, 23f
                  sltu         t4, ra, t5
23:               srl          t3, t0, t6
                  ori          t1, tp, 1030
                  srli         a2, t3, 16
                  sll          a1, s10, s3
27:               sltu         zero, sp, sp
                  add          s8, t6, t0
                  sll          s6, s8, a7
                  andi         a3, s4, -603
                  blt          t2, s10, 46f
                  nop
                  srli         s1, ra, 22
                  lui          t2, 130997
                  add          s3, s3, ra
                  bne          t2, s2, 46f
                  bne          t6, t6, 38f
38:               lui          s5, 410445
                  sll          a3, s10, zero
                  srl          s0, a4, gp
                  srli         t5, s2, 21
                  srl          s6, a0, t1
                  sll          s11, s8, zero
                  auipc        zero, 563862
                  slli         zero, a7, 18
46:               addi         t4, t2, -1141
                  lui          s11, 518882
                  bge          s9, sp, 56f
                  lui          s0, 152345
                  beq          s8, t4, 54f
                  add          s9, t1, s4
                  srai         t5, s9, 22
                  xor          s1, s9, s3
54:               xori         s1, t1, -1255
                  blt          s2, a6, 65f
56:               addi         t4, zero, -1939
                  add          zero, s3, s5
                  bne          t3, a5, 73f
                  beq          s2, t6, 73f
                  auipc        s6, 805732
                  srli         s4, s4, 23
                  beq          s10, s4, 82f
                  srli         s7, a1, 23
                  bltu         s0, t2, 69f
65:               bgeu         a7, t4, 73f
                  slti         a6, tp, 110
                  sra          ra, s10, t0
                  sll          tp, s8, s9
69:               srai         s11, t3, 2
                  slti         t6, a0, 87
                  lui          t5, 566371
                  bltu         t4, s9, 86f
73:               add          s6, t3, s5
                  ori          s3, s7, 1243
                  bgeu         s4, t0, 83f
                  auipc        a0, 197666
                  slt          s9, a6, s2
                  beq          s0, s2, 92f
                  beq          s1, a4, 88f
                  and          s9, s6, a4
                  srl          s4, s9, sp
82:               add          tp, s3, tp
83:               slti         zero, s0, -1019
                  nop
                  sll          t4, a6, t5
86:               andi         a6, s1, 484
                  slti         s11, s7, 474
88:               lui          s7, 557637
                  srai         s6, sp, 7
                  srai         s9, zero, 19
                  blt          s11, a1, 93f
92:               sltu         a1, s11, a4
93:               bgeu         a6, a5, 103f
                  ori          s8, t0, 320
                  sltu         s8, s2, s6
                  blt          ra, gp, 108f
                  sll          t0, a5, a4
                  bne          a2, sp, 100f
                  add          a2, s9, s5
100:              slti         t6, t0, -1283
                  srli         s0, t0, 29
                  beq          t0, s10, 112f
103:              srl          a4, s5, ra
                  and          s9, t0, a1
                  bltu         t4, t1, 120f
                  bne          s4, a2, 124f
                  or           s9, a6, zero
108:              andi         s8, t6, -244
                  sra          t0, a7, t3
                  slti         tp, gp, -781
                  srl          gp, tp, a0
112:              or           s4, s7, a7
                  sltu         t4, a2, s11
                  bne          t4, gp, 119f
                  la           sp, region_0+1011 #start riscv_load_store_rand_instr_stream_30
                  auipc        s8, 59899
                  sub          t5, a2, a2
                  sh           a7, 673(sp)
                  sh           s8, 339(sp)
                  lb           t5, 614(sp)
                  srl          s0, t4, s7
                  srli         a0, a5, 21
                  lw           a4, 165(sp)
                  lb           s0, -248(sp)
                  xori         a3, ra, 232
                  lbu          a1, -1009(sp)
                  lbu          s4, 723(sp)
                  addi         a3, t2, 1900
                  sh           t3, -787(sp)
                  lbu          t1, -421(sp)
                  or           a3, a5, s4
                  lbu          s3, -42(sp)
                  sb           a3, -73(sp)
                  sltiu        s2, s0, -1613
                  xor          s5, a7, a6
                  lb           t5, 846(sp)
                  lhu          t4, 451(sp)
                  srl          s2, s10, s5
                  nop
                  nop
                  sw           s7, 781(sp)
                  sb           t5, 386(sp)
                  srl          s1, s0, zero
                  lui          gp, 382576
                  lbu          t5, 462(sp)
                  or           t2, ra, a7
                  lbu          tp, -249(sp)
                  or           s1, t6, s3
                  srai         t2, a3, 3
                  and          s3, ra, a3
                  sb           s10, 736(sp)
                  nop
                  sra          t2, a0, t0
                  ori          t5, a4, 120
                  slli         ra, t1, 30
                  sub          t6, s11, s10
                  lbu          a1, -200(sp) #end riscv_load_store_rand_instr_stream_30
                  xor          ra, s10, zero
                  xori         t1, s4, -1741
                  xori         tp, s10, -1966
                  add          t0, ra, s10
119:              slti         a4, zero, 1664
120:              nop
                  sll          s0, t1, s1
                  blt          s2, a4, 130f
                  sub          s7, s9, sp
124:              srli         s5, s8, 9
                  srai         sp, t3, 18
                  slli         t5, s4, 8
                  sltiu        s4, t3, 1293
                  addi         s3, s1, 332
                  srl          s3, s10, t2
130:              sltu         s3, t1, t6
                  and          a6, t4, a3
                  srai         s3, t1, 9
                  sra          gp, s9, zero
                  srli         t4, s9, 20
                  or           s1, a4, s9
                  andi         t6, a7, -235
                  add          s1, sp, s3
                  sra          gp, a3, s5
                  or           t1, s3, a0
                  bgeu         s6, a1, 143f
                  ori          s6, s3, -1170
                  add          s5, s2, s6
143:              sltu         s4, s6, s4
                  sltiu        a6, t1, 1890
                  ori          s6, t3, 1280
                  or           a6, t3, s9
                  bge          tp, t4, 159f
                  nop
                  andi         a4, ra, -375
                  bne          a2, t2, 167f
                  blt          gp, a6, 159f
                  ori          a0, s11, 1323
                  sra          a6, s8, t6
                  srl          s6, s2, s6
                  sltiu        gp, t0, 750
                  srli         a2, a5, 16
                  nop
                  sra          t5, s4, tp
159:              blt          s0, a3, 169f
                  slti         a6, a1, 1404
                  sll          a6, a1, t6
                  sll          a6, s2, s9
                  or           s9, t1, s0
                  srli         zero, s7, 31
                  sltu         s9, a6, s11
                  and          t5, t5, a6
167:              andi         ra, t4, -752
                  slt          a6, s7, s6
169:              and          s9, a0, gp
                  sltiu        s5, s9, -2013
                  sltu         a0, t2, a1
                  bltu         t3, a6, 174f
                  addi         t5, s11, 457
174:              sltiu        t5, t3, 976
                  addi         t0, s3, 361
                  bltu         t4, ra, 181f
                  blt          ra, t2, 188f
                  bge          a0, t2, 192f
                  srl          s4, t4, s10
                  andi         s5, s3, 871
181:              lui          a3, 809758
                  bge          t0, t4, 193f
                  and          a1, s8, t0
                  auipc        t6, 349171
                  sltiu        a6, a3, -339
                  slt          zero, t3, s1
                  addi         s2, s3, 1202
188:              addi         t1, s9, -1439
                  sltiu        t3, a2, 1595
                  sll          a1, zero, a3
                  and          s7, zero, s7
192:              lui          s4, 786989
193:              srai         t6, s3, 26
                  blt          a1, zero, 214f
                  add          s7, zero, a0
                  bltu         t6, sp, 208f
                  xori         t5, s2, -1584
                  auipc        sp, 788364
                  bgeu         tp, s8, 213f
                  nop
                  lui          a2, 272899
                  beq          t0, s8, 204f
                  slli         t5, s6, 3
204:              srai         gp, s7, 9
                  slti         t6, a1, -251
                  xor          s8, s11, s3
                  andi         t0, a1, -365
208:              sra          sp, s6, s3
                  srli         t4, s9, 8
                  xori         s11, sp, -785
                  and          t0, t5, sp
                  sltu         sp, s5, t0
213:              ori          t0, a2, -1620
214:              nop
                  addi         sp, s1, -895
                  add          zero, a6, s7
                  sltu         t4, s11, t1
                  slt          s8, s4, a7
                  add          a6, zero, a7
                  slt          s5, s7, a0
                  sll          t4, s10, s2
                  bltu         ra, s7, 230f
                  or           t2, t1, t5
                  nop
                  auipc        sp, 744498
                  or           s7, s8, s2
                  bne          s10, t6, 237f
                  sll          s9, a7, t0
                  srli         sp, t1, 19
230:              and          s11, a3, zero
                  slli         s8, a0, 23
                  bgeu         s9, s2, 242f
                  slt          s8, a7, s11
                  andi         t2, a0, 1188
                  blt          a7, s8, 236f
236:              slti         s2, a7, 2036
237:              sltiu        s9, gp, -1167
                  srai         zero, s11, 18
                  slli         t3, s0, 21
                  bne          s4, a4, 248f
                  ori          s3, tp, 2013
242:              sltu         a3, s10, t0
                  bltu         a4, s3, 247f
                  sltu         s3, a2, tp
                  bgeu         t6, a6, 260f
                  sll          tp, s6, t6
247:              bltu         a3, ra, 259f
248:              ori          s0, sp, 405
                  sltu         t4, t6, s10
                  srl          s9, t3, s3
                  srl          a3, s6, a5
                  andi         s5, s4, -1623
                  srl          t4, t0, s5
                  sra          a6, s1, tp
                  xori         gp, t0, 150
                  sltiu        s5, s8, -800
                  nop
                  lui          a0, 597412
259:              bgeu         a7, t5, 261f
260:              and          a3, s0, tp
261:              sltiu        t4, a2, 827
                  slli         tp, s3, 24
                  slli         a2, a1, 0
                  and          a1, s6, t0
                  bgeu         a5, a3, 283f
                  addi         a2, ra, 579
                  slt          gp, gp, s11
                  slli         t4, s2, 29
                  addi         tp, a6, -901
                  bgeu         s0, t1, 284f
                  srai         tp, t3, 13
                  slt          sp, a5, a1
                  andi         s3, s9, 713
                  andi         t3, gp, 1221
                  blt          gp, s6, 284f
                  bgeu         s4, tp, 293f
                  bgeu         gp, sp, 282f
                  bge          s4, a5, 288f
                  and          t5, t4, t1
                  xor          a1, a1, t6
                  xori         s8, s7, 910
282:              and          a1, gp, a4
283:              sub          t2, t2, tp
284:              add          zero, t4, a2
                  slt          s4, a7, a1
                  srai         zero, a1, 6
                  auipc        zero, 272964
288:              slti         t2, a3, -1318
                  addi         s7, s2, -1814
                  slti         s8, t6, 193
                  sll          s5, s10, s5
                  sub          s5, a6, tp
293:              addi         a1, a6, 5
                  sra          t4, a6, a0
                  beq          s0, a4, 298f
                  xori         s2, a1, 402
                  sub          a6, s6, s2
298:              addi         s11, s11, 978
                  bne          s1, s9, 314f
                  srai         t0, a5, 1
                  sub          t6, t6, s9
                  srl          sp, s3, a6
                  sub          a4, sp, s1
                  nop
                  xori         t5, s8, -217
                  bge          a2, t2, 314f
                  bltu         sp, t5, 322f
                  sltiu        s5, t0, 1973
                  lui          s6, 222393
                  slt          s6, a1, a7
                  sltiu        a3, s2, 620
                  and          s4, a2, s5
                  xor          s6, s5, s8
314:              srli         s6, s10, 27
                  addi         s6, a2, 1914
                  nop
                  slt          t4, a0, a4
                  add          sp, t0, t3
                  sra          s3, t6, gp
                  bgeu         s4, t1, 335f
                  bne          s1, s4, 336f
322:              ori          a3, a3, 405
                  auipc        s9, 218481
                  bne          t4, a4, 334f
                  xori         s6, tp, -1848
                  srl          t1, tp, s9
                  andi         gp, a7, 180
                  srai         s2, a6, 17
                  ori          s8, s11, 864
                  srai         a3, gp, 3
                  srl          t4, t6, s6
                  bgeu         s2, a3, 344f
                  xor          t2, tp, ra
334:              slt          s11, tp, s2
335:              andi         t0, a1, -1663
336:              slt          a0, a1, a2
                  bge          t2, t1, 357f
                  srai         t4, s1, 17
                  bge          sp, a6, 357f
                  srl          s1, a5, gp
                  sltu         s3, a7, gp
                  sltu         t4, s8, s9
                  add          gp, s9, a0
344:              bgeu         ra, t1, 346f
                  slti         s5, a2, 291
346:              nop
                  bltu         t3, t6, 355f
                  andi         s8, s3, -1158
                  sub          a3, s2, t2
                  nop
                  nop
                  ori          s3, s1, 1148
                  sub          s2, a2, s1
                  and          s11, a1, t3
355:              sll          a2, sp, ra
                  sra          t1, t1, s3
357:              sll          a3, s7, t3
                  lui          a2, 641457
                  la           t6, region_1+1022 #start riscv_load_store_rand_instr_stream_23
                  add          s1, s1, a6
                  lhu          a2, -662(t6)
                  addi         s11, a0, -578
                  srai         s8, t0, 12
                  lb           a2, -948(t6)
                  sb           ra, 422(t6)
                  lb           t1, -899(t6)
                  lb           ra, 65(t6)
                  sll          s6, t3, s5
                  lh           ra, -444(t6)
                  sltu         s4, a6, s8
                  slli         t3, s0, 30
                  sub          sp, s4, s2
                  and          s6, s10, s11
                  lh           s9, -830(t6)
                  sh           t6, 182(t6)
                  lbu          s4, -245(t6)
                  sb           t3, 279(t6)
                  sltu         a2, t5, t5
                  lbu          t1, 496(t6)
                  sub          s11, s2, s11
                  or           s7, t1, s4
                  nop
                  lbu          gp, -526(t6)
                  lb           zero, -445(t6)
                  sb           a6, 256(t6)
                  lb           t0, 838(t6)
                  sh           tp, 408(t6)
                  addi         a6, s8, -199
                  sra          t3, a3, s2
                  xori         t5, s10, -1744
                  lb           a3, 152(t6)
                  andi         a3, s4, -1671
                  lh           t1, -550(t6)
                  lbu          s5, -313(t6)
                  add          s4, a7, a6
                  lbu          zero, 857(t6)
                  sb           t0, -554(t6)
                  srai         t2, t6, 18
                  sw           a0, -558(t6)
                  sb           t0, 699(t6)
                  lbu          a0, -511(t6)
                  ori          t2, t2, -457
                  addi         a1, ra, 84
                  lbu          s1, 727(t6)
                  lb           t0, 65(t6)
                  sb           s9, -205(t6)
                  lh           a3, 24(t6)
                  lbu          a6, -39(t6)
                  lhu          s0, -586(t6) #end riscv_load_store_rand_instr_stream_23
                  bge          s7, ra, 364f
                  sub          s0, gp, t4
                  sll          a2, sp, a6
                  sub          s8, gp, s0
                  bge          s10, s11, 371f
364:              xor          a0, a4, a6
                  slt          t2, s11, t1
                  andi         s7, s4, 1024
                  slt          tp, gp, s7
                  srl          sp, s2, ra
                  bge          a2, t4, 384f
                  addi         ra, s6, -1564
371:              sltu         s11, sp, a2
                  sub          t3, tp, s8
                  slli         t4, a7, 28
                  add          s8, t5, s0
                  srli         t0, a3, 5
                  or           s1, a5, s11
                  beq          t6, sp, 387f
                  add          s2, s2, s7
                  srai         s6, s2, 20
                  auipc        s1, 294956
                  sll          t2, s7, s3
                  bge          t6, a3, 385f
                  xori         s0, a3, 263
384:              ori          s1, zero, 1345
385:              addi         s3, s10, 196
                  slti         gp, gp, -1631
387:              auipc        s5, 298525
                  slli         s6, s10, 17
                  bge          s4, a5, 399f
                  slli         s0, sp, 23
                  beq          s10, s9, 405f
                  slti         t0, gp, 1484
                  bgeu         s7, t5, 397f
                  auipc        s5, 1009222
                  bne          s11, tp, 405f
                  srl          s2, a1, s2
397:              and          a0, a7, a7
                  slti         t5, a0, 632
399:              srai         t0, sp, 27
                  srl          s11, zero, s9
                  sltu         s6, s7, s1
                  sra          a3, gp, s8
                  auipc        s0, 758955
                  bge          t0, a0, 418f
405:              sra          s4, a4, zero
                  or           s9, a1, zero
                  auipc        s5, 540759
                  sub          t6, s4, s0
                  srai         t4, s0, 7
                  srai         s3, a0, 8
                  bgeu         t4, gp, 412f
412:              srai         s5, a1, 22
                  or           t0, t2, s10
                  xori         t0, gp, 725
                  sub          s4, s5, s0
                  lui          gp, 105504
                  and          zero, zero, gp
418:              xor          t4, s2, s5
                  slt          ra, s5, s9
                  auipc        a4, 864181
                  sltu         t1, a3, a5
                  beq          t4, s0, 439f
                  srli         a1, s6, 24
                  slli         s6, t5, 12
                  srli         t6, t4, 0
                  lui          sp, 781320
                  add          t6, s5, zero
                  or           zero, a0, s2
                  add          t6, s0, t3
                  beq          s3, a2, 438f
                  sltu         gp, s3, t2
                  blt          s0, gp, 446f
                  or           a6, a5, t0
                  or           s4, a1, a3
                  bgeu         t1, s5, 444f
                  ori          s9, t2, 1214
                  sll          a1, s9, a7
438:              srl          t4, s5, t3
439:              xor          t0, s5, gp
                  srl          t5, t5, t4
                  bgeu         gp, a5, 449f
                  sltu         s0, s7, a0
                  or           s8, zero, t0
444:              srl          s7, s11, s0
                  xori         s6, s3, -1354
446:              sub          t4, a2, a6
                  lui          gp, 11046
                  beq          a4, a0, 459f
449:              sll          t2, ra, s3
                  srli         s0, a2, 29
                  srli         a4, a3, 11
                  sra          a3, a1, t1
                  auipc        s2, 671960
                  or           gp, zero, tp
                  bgeu         t5, t4, 457f
                  bne          s2, s4, 458f
457:              bltu         a0, s0, 462f
458:              sra          t5, ra, a6
459:              add          a0, s3, t3
                  srli         a2, gp, 24
                  sltiu        a3, t4, 1644
462:              addi         tp, s7, -122
                  srli         t6, t3, 17
                  bgeu         s11, s6, 476f
                  nop
                  beq          s4, ra, 477f
                  slt          t1, s8, s8
                  bge          s5, s2, 476f
                  bne          t0, sp, 479f
                  beq          s3, s4, 487f
                  lui          t1, 588185
                  xor          s3, s11, s3
                  bgeu         tp, s0, 485f
                  sltu         zero, t0, s8
                  ori          s0, t3, -464
476:              sub          a2, t1, a3
477:              sra          a4, t2, t1
                  bgeu         s3, sp, 493f
479:              slli         s11, s9, 29
                  srl          s9, a2, s11
                  add          s9, a4, a3
                  slti         t6, t6, 718
                  and          s8, a2, s8
                  sltu         ra, a6, a0
485:              addi         a4, gp, -924
                  srai         s4, a4, 2
487:              addi         s7, s8, 1589
                  sub          t2, t5, t1
                  bltu         t2, t3, 500f
                  slti         a3, zero, -1015
                  xor          t4, s1, t3
                  andi         s11, s4, -1912
493:              slli         ra, t2, 23
                  bge          a3, s10, 508f
                  slli         a0, s10, 0
                  xor          ra, t2, ra
                  xor          a1, s6, s4
                  ori          ra, a3, -722
                  srli         a3, t1, 20
500:              sltiu        t2, a4, 974
                  xor          gp, s5, a4
                  bltu         zero, gp, 504f
                  bgeu         t3, zero, 505f
504:              sltu         t4, s11, s6
505:              sll          t5, tp, a0
                  addi         s7, gp, -1782
                  xor          t3, gp, t4
508:              slt          ra, s1, zero
                  sltiu        s2, s0, -1447
                  beq          s8, tp, 524f
                  xor          s4, t5, t1
                  slli         s0, s8, 1
                  slti         s1, s4, 251
                  sltu         a2, s1, a5
                  blt          t0, t0, 527f
                  beq          s6, s5, 519f
                  bne          s3, a5, 528f
                  bne          sp, t0, 538f
519:              bge          s7, a6, 521f
                  blt          s2, s7, 521f
521:              blt          a4, s8, 525f
                  sub          s7, a2, s6
                  slt          zero, s8, s8
524:              andi         s9, t2, -1352
525:              addi         a0, t5, 1488
                  and          t1, s9, s3
527:              beq          t5, gp, 535f
528:              sll          t5, s8, s7
                  addi         a1, t4, -1390
                  slli         t6, s8, 28
                  beq          sp, s9, 540f
                  bltu         s0, s11, 547f
                  or           s4, a4, a1
                  addi         t0, t2, 1014
535:              sra          t0, t5, s5
                  auipc        a0, 817385
                  or           zero, t6, s3
538:              xor          s2, a0, a1
                  sra          s3, tp, s3
540:              beq          s7, t5, 548f
                  sll          s7, a7, s5
                  sub          tp, t5, t5
                  bgeu         s6, t4, 553f
                  sra          tp, s5, s3
                  ori          t5, s1, 1005
                  slti         s2, s0, 479
547:              xor          s6, s9, a7
548:              xor          t4, s7, s3
                  bge          a4, a4, 554f
                  ori          t4, gp, -1729
                  add          s9, a4, s9
                  blt          s7, s7, 570f
553:              slti         s4, t6, 1223
554:              slti         t3, zero, 1490
                  slt          zero, t0, zero
                  add          s6, s8, a0
                  addi         s8, s5, 1289
                  sll          a3, a1, a7
                  addi         a6, s3, 663
                  xor          s7, t1, sp
                  lui          s3, 296164
                  andi         s9, t6, 235
                  andi         t4, s8, 1992
                  addi         s0, s2, 1102
                  sll          s9, tp, sp
                  lui          s7, 527624
                  beq          s5, zero, 572f
                  bne          t4, t2, 576f
                  srl          s8, t5, t6
570:              beq          a6, s5, 585f
                  bge          a2, s7, 581f
572:              sltiu        a3, a7, -1054
                  bltu         a1, sp, 587f
                  slli         s3, s7, 23
                  bltu         a1, s0, 585f
576:              blt          t0, s2, 585f
                  sll          s2, s3, s4
                  sub          sp, s5, zero
                  auipc        a4, 449832
                  srli         a3, a4, 13
581:              and          sp, a2, s9
                  addi         sp, a6, -1923
                  sll          s5, tp, a5
                  sltiu        t4, a6, 2001
585:              or           s8, t3, t4
                  xori         s9, gp, -229
587:              srai         a2, t2, 11
                  and          a1, gp, t0
                  andi         tp, s4, 316
                  slti         a1, s5, 552
                  addi         s3, t3, 249
                  or           t0, s4, s6
                  nop
                  auipc        s2, 422189
                  sll          tp, a7, s9
                  add          t5, s10, a1
                  andi         a3, t5, 428
                  lui          s2, 845820
                  bge          zero, s0, 607f
                  blt          s2, t2, 601f
601:              sub          a6, s5, s10
                  and          t6, a5, t1
                  and          s7, a4, t2
                  sll          a0, s11, t4
                  srli         s6, s3, 7
                  srai         t6, s5, 4
607:              bltu         t3, s0, 622f
                  and          t4, a7, s1
                  lui          zero, 846966
                  srl          t6, s0, s5
                  bge          ra, s8, 629f
                  nop
                  sra          a1, t2, zero
                  andi         t2, s1, 4
                  lui          s2, 686408
                  xori         s5, s8, -760
                  or           s5, s7, s0
                  sll          s2, a0, t4
                  xori         ra, s4, -87
                  srl          s1, s1, t3
                  andi         t5, s8, 1018
622:              bne          t5, s7, 630f
                  slt          s7, s7, a7
                  ori          s8, s2, 1169
                  sltiu        t4, a4, -855
                  andi         gp, a4, 554
                  bgeu         s2, s1, 641f
                  srl          tp, a6, s5
629:              ori          t1, s1, 804
630:              bge          t1, s6, 640f
                  bge          gp, a7, 645f
                  la           s4, region_0+759 #start riscv_load_store_rand_instr_stream_7
                  sh           s5, -519(s4)
                  sltiu        gp, a0, -1581
                  sb           a3, -396(s4)
                  sw           s4, 37(s4)
                  lbu          t3, 912(s4)
                  lw           s5, -599(s4)
                  auipc        s9, 851392
                  lhu          t6, 599(s4)
                  lbu          s6, -748(s4)
                  sltu         a1, s11, a2
                  sb           t1, -410(s4)
                  or           t3, a6, s3
                  lhu          sp, 1099(s4)
                  lb           s2, 783(s4)
                  sb           s10, 896(s4)
                  sh           a5, 595(s4)
                  sh           tp, -539(s4)
                  slti         ra, s8, -1326
                  ori          a6, a1, 471
                  sb           a1, -653(s4)
                  sb           s1, -504(s4)
                  lb           a0, -103(s4)
                  slt          t1, zero, t4
                  sb           ra, 390(s4)
                  lhu          a3, 489(s4)
                  sh           s4, 533(s4)
                  srl          t1, s6, t0
                  lbu          ra, -560(s4)
                  sb           ra, 50(s4)
                  lh           s3, -551(s4)
                  sb           t3, 478(s4)
                  srli         t4, s5, 6
                  lb           t2, 825(s4)
                  sb           s5, 348(s4)
                  sra          ra, s5, a3
                  sb           s10, 601(s4)
                  lb           s6, -31(s4) #end riscv_load_store_rand_instr_stream_7
                  auipc        tp, 682739
                  andi         t5, tp, -1725
                  xor          a0, s7, a5
                  bltu         s3, gp, 655f
                  lui          s5, 171588
                  auipc        s6, 385284
                  beq          s5, s9, 650f
                  auipc        s1, 349722
640:              bgeu         s4, a3, 655f
641:              lui          t0, 86135
                  srai         s11, s0, 17
                  sra          s5, s9, a2
                  lui          s11, 553937
645:              sll          s4, gp, s4
                  xori         s11, t4, -437
                  slli         a3, a4, 4
                  sltu         s8, a7, s6
                  add          t4, s11, a0
650:              addi         t1, tp, 1446
                  or           t0, a2, t0
                  add          gp, s1, s4
                  srl          s11, s2, t2
                  blt          t5, a4, 659f
655:              slt          s9, s9, t4
                  slti         t1, t3, -880
                  xor          s11, t3, tp
                  slti         a3, s5, 1811
659:              sltu         a3, s7, t2
                  beq          a5, ra, 662f
                  add          t5, sp, a5
662:              xori         ra, s6, 2010
                  addi         t1, gp, -1157
                  bne          gp, t3, 666f
                  blt          t2, s8, 682f
666:              bge          s8, s0, 677f
                  xor          s8, t0, s6
                  lui          s8, 674323
                  bge          a7, gp, 684f
                  andi         s0, a7, -1591
                  srl          ra, s3, tp
                  sltiu        a3, a4, -1592
                  addi         a4, s4, 164
                  lui          t3, 935785
                  lui          a1, 69491
                  srli         s7, s0, 16
677:              auipc        t0, 139264
                  srai         t0, gp, 19
                  sra          t4, s10, s2
                  lui          s3, 451662
                  and          s4, tp, gp
682:              beq          a4, t5, 690f
                  xor          zero, t6, s3
684:              bgeu         s2, ra, 696f
                  blt          t0, a3, 695f
                  slli         t1, s11, 22
                  nop
                  bne          s0, a1, 702f
                  blt          s8, tp, 692f
690:              srli         a1, s11, 4
                  srli         s9, s9, 4
692:              auipc        s9, 324618
                  sltu         s1, ra, t2
                  addi         a6, s8, -1200
695:              sub          s0, a4, a2
696:              sltiu        ra, sp, 1059
                  andi         s9, t1, -1109
                  bne          t1, zero, 703f
                  slt          sp, t1, s10
                  sra          s0, s5, a7
                  bltu         s8, a0, 711f
702:              sra          s7, a0, t0
703:              auipc        s0, 6451
                  sltu         t1, s6, a4
                  srli         a4, s5, 20
                  ori          t0, s9, -1628
                  slt          s6, a0, a5
                  slli         t6, t5, 7
                  sra          s8, s6, s2
                  bltu         s5, s6, 720f
711:              blt          a4, a3, 713f
                  bgeu         s8, t2, 716f
713:              lui          a6, 105837
                  xor          s1, s4, a3
                  srai         t3, a0, 3
716:              slli         s8, a3, 29
                  nop
                  or           s3, s6, a4
                  sltiu        t4, s1, 852
720:              xor          a0, t1, s2
                  xor          a2, a6, sp
                  slli         t0, a0, 25
                  auipc        sp, 277622
                  sltu         t2, a7, a3
                  sltu         t6, s7, tp
                  sltiu        a6, s8, -138
                  bge          t1, s1, 735f
                  bne          t2, t1, 739f
                  slti         a1, s10, 852
                  sra          s0, s9, gp
                  ori          tp, s1, -914
                  slli         a1, s7, 29
                  andi         t2, t1, 704
                  addi         sp, s8, -1298
735:              slt          s3, s0, t2
                  bne          s5, a2, 744f
                  srai         t2, a0, 28
                  sltiu        a1, s9, -288
739:              srli         a1, s10, 14
                  add          ra, a1, tp
                  add          t5, t0, zero
                  srli         s9, s10, 14
                  addi         t1, s2, -1611
744:              sra          a3, s8, ra
                  beq          a1, ra, 755f
                  blt          t4, s9, 761f
                  or           s0, s2, t5
                  or           t2, s2, a4
                  and          t3, t1, s6
                  blt          s3, s0, 753f
                  and          s11, s2, gp
                  addi         tp, ra, 617
753:              slli         t4, t4, 28
                  andi         s8, t5, 1920
755:              auipc        s2, 651524
                  xor          s0, s8, t4
                  slli         s4, t1, 16
                  and          s7, t3, sp
                  nop
                  sub          s1, a1, t3
761:              beq          s7, t2, 769f
                  addi         a0, s11, 1241
                  andi         s3, a0, -1713
                  or           zero, a2, gp
                  nop
                  slti         s6, a5, -206
                  auipc        t3, 685988
                  srli         a1, s8, 17
769:              bltu         t4, t1, 783f
                  auipc        sp, 912419
                  srai         t1, a7, 18
                  add          tp, a0, sp
                  slt          s8, t0, a2
                  lui          s5, 797916
                  srl          s1, s4, gp
                  andi         a2, s10, 152
                  bge          tp, s3, 782f
                  lui          s3, 178951
                  nop
                  xori         a2, t6, 2003
                  addi         s5, t6, -1979
782:              slti         s6, a1, 626
783:              xori         ra, t3, 1170
                  sub          s11, s7, t0
                  and          tp, t4, a7
                  srl          a0, t6, ra
                  slli         a1, s5, 6
                  beq          s7, gp, 798f
                  srai         t0, s7, 11
                  ori          a0, sp, -1699
                  beq          t1, s9, 806f
                  bge          a5, a3, 794f
                  sltu         a3, a7, s8
794:              addi         a1, s0, -1636
                  ori          gp, s5, 684
                  and          s0, a4, s7
                  bltu         a0, s8, 807f
798:              srli         a6, gp, 0
                  srai         a1, a4, 7
                  beq          a3, s5, 808f
                  slt          a0, s2, a7
                  andi         s2, s11, 883
                  sltiu        a1, a2, 1004
                  andi         a6, s8, -1467
                  beq          s3, a1, 807f
806:              auipc        a6, 310285
807:              bgeu         s7, gp, 824f
808:              sltiu        t1, a0, -1859
                  sub          t5, ra, s9
                  sra          s0, gp, a2
                  sltiu        s11, a3, 1100
                  add          a1, gp, s1
                  sltu         gp, a0, gp
                  xor          s4, t2, s7
                  srli         s2, s9, 28
                  xori         t4, s4, 1765
                  slli         a4, a1, 11
                  slti         s6, a5, -470
                  sltu         s2, a0, a5
                  lui          s4, 286067
                  bltu         s10, s4, 836f
                  srai         zero, s4, 30
                  blt          s1, a7, 841f
824:              bge          s1, s8, 828f
                  add          s0, s10, s11
                  add          zero, t2, a1
                  srl          t3, a1, s5
828:              nop
                  blt          t6, a1, 840f
                  addi         a3, s3, -1993
                  andi         t0, gp, -90
                  slti         a3, t4, 1345
                  bltu         s0, s9, 835f
                  bltu         s6, a7, 835f
835:              slli         s3, t5, 26
836:              srai         s11, a7, 4
                  beq          ra, s9, 849f
                  blt          a4, t6, 849f
                  bne          a1, a0, 844f
840:              sll          a1, s6, a0
841:              bltu         t0, t2, 853f
                  bgeu         t0, a3, 856f
                  slt          t0, t5, a3
844:              lui          sp, 454212
                  sra          t3, s0, s5
                  blt          s3, s9, 866f
                  bge          s10, s10, 856f
                  slt          a4, s5, a2
849:              lui          s4, 614306
                  bgeu         t2, s10, 864f
                  bltu         a1, tp, 859f
                  srai         t6, a0, 25
853:              lui          ra, 254765
                  ori          s2, s11, 1925
                  srl          s6, t6, s7
856:              xor          t1, s7, s5
                  slt          sp, a4, s2
                  srai         s7, tp, 16
859:              beq          s8, t2, 869f
                  andi         s4, gp, 62
                  addi         t6, s6, 1928
                  la           sp, region_0+1873 #start riscv_load_store_rand_instr_stream_5
                  lb           t4, 64(sp)
                  auipc        s2, 877949
                  lb           s2, 6(sp)
                  lbu          s7, 64(sp)
                  lb           a6, 18(sp)
                  sh           a3, -51(sp)
                  lb           t0, -41(sp)
                  lbu          tp, -6(sp)
                  sltu         s1, t6, s8
                  auipc        s6, 1016624
                  lb           ra, 7(sp)
                  add          ra, s3, a0
                  sll          s4, s8, t6
                  sra          t2, s7, a7
                  xori         a2, gp, 662
                  sh           s6, 49(sp)
                  lh           s0, 57(sp)
                  lui          s7, 3561
                  lb           t3, -24(sp)
                  lbu          s3, -10(sp)
                  sh           s1, -63(sp)
                  slt          t1, s5, gp
                  sra          s9, s3, a7
                  sh           s10, -51(sp)
                  lw           t4, 59(sp)
                  lb           s9, 53(sp) #end riscv_load_store_rand_instr_stream_5
                  xori         s4, t6, 519
                  ori          s8, t4, -484
864:              slti         a4, t6, 1041
                  sll          a3, a5, t5
866:              and          t5, s9, zero
                  andi         s6, s5, 1079
                  andi         ra, t6, -1155
869:              slti         s3, a7, 1435
                  xori         a1, ra, 1807
                  bne          a7, t3, 880f
                  slt          t3, s1, t2
                  slt          t6, t4, a4
                  srai         t0, a6, 1
                  sltiu        s9, a2, 50
                  sra          sp, a7, s8
                  xori         t4, ra, -448
                  srli         s11, t2, 18
                  srai         t0, t1, 7
880:              andi         s8, a1, 1155
                  xori         s1, tp, -1866
                  lui          a1, 893640
                  slli         t4, t6, 14
                  nop
                  blt          a6, a3, 888f
                  slt          s0, a1, t2
                  slt          zero, a2, s8
888:              slt          ra, gp, tp
                  srai         t1, t3, 21
                  bgeu         s10, a5, 900f
                  slli         tp, a2, 19
                  nop
                  slti         s11, a4, 66
                  or           zero, gp, ra
                  slti         t6, s10, -1639
                  srli         a3, a1, 11
                  ori          tp, s7, -746
                  sltu         s0, a6, a4
                  blt          s6, a1, 916f
900:              andi         a3, s10, -1478
                  bne          s7, s5, 911f
                  lui          t1, 254932
                  srli         tp, tp, 2
                  slt          a2, a7, a4
                  add          ra, a1, a3
                  add          a4, s2, ra
                  sltiu        s8, s2, 737
                  srl          a6, s2, t6
                  sra          s0, zero, t3
                  addi         s7, a5, -367
911:              auipc        t1, 998638
                  xori         s5, s2, -1973
                  sll          t1, ra, t6
                  nop
                  bne          s8, t6, 925f
916:              auipc        s0, 847874
                  blt          t0, gp, 929f
                  andi         s9, a4, 1896
                  nop
                  auipc        a0, 1016612
                  lui          s5, 959226
                  lui          a2, 353290
                  sll          tp, ra, t1
                  add          a4, t4, t5
925:              and          s9, ra, a4
                  sll          t0, t2, s5
                  blt          s0, a2, 941f
                  slti         ra, a1, -1421
929:              slt          t3, s9, a3
                  sltu         s7, s9, sp
                  srl          s7, s2, t2
                  and          s0, s7, t1
                  bge          a4, s9, 937f
                  xori         zero, a0, -1566
                  slt          t0, t0, s1
                  xori         s6, s0, 1338
937:              beq          s10, a0, 938f
938:              srai         t1, a4, 29
                  srli         t3, a4, 15
                  srl          ra, a1, s5
941:              srl          s4, s2, s3
                  slt          s4, a6, t3
                  slti         sp, s2, 1502
                  lui          s2, 474831
                  sra          tp, s8, t5
                  xori         ra, sp, 414
                  and          gp, a0, t2
                  bltu         t0, a2, 956f
                  sltiu        s8, s2, 1220
                  lui          s7, 534853
                  xori         a3, t2, -896
                  bge          s5, t0, 964f
                  or           s2, t1, a4
                  bgeu         s11, a6, 969f
                  bgeu         t4, t4, 957f
956:              auipc        s8, 994665
957:              nop
                  lui          s9, 715664
                  or           s6, a0, a1
                  sub          s7, s8, s5
                  sra          a4, t6, s2
                  slli         t3, a4, 18
                  bge          t2, s4, 974f
964:              xori         s11, s1, 738
                  or           s7, s7, t6
                  srli         t5, s5, 4
                  sltu         ra, t0, a1
                  add          s7, s8, s8
969:              blt          s4, s11, 987f
                  sra          t3, t3, s3
                  xori         s5, s7, -1140
                  srai         s2, a3, 22
                  srli         s5, tp, 14
974:              sra          zero, s6, a4
                  srl          t5, s11, t4
                  xor          s5, gp, t4
                  sll          s2, zero, s6
                  sltu         s1, t6, t2
                  beq          a4, t6, 987f
                  srl          zero, a5, t3
                  slti         t3, a6, -297
                  sra          a2, s10, t5
                  srli         t2, t1, 4
                  sltiu        sp, t0, 1915
                  addi         t6, a5, 787
                  bge          s10, a0, 1001f
987:              nop
                  lui          t3, 624411
                  nop
                  slt          a2, t5, gp
                  sltu         zero, zero, s8
                  sra          a1, a0, a2
                  bltu         a3, a0, 1003f
                  xori         t2, a1, -460
                  add          gp, s2, s6
                  slli         zero, s11, 28
                  slli         t5, a3, 7
                  or           sp, a7, a0
                  blt          tp, a2, 1001f
                  slt          s2, a3, s6
1001:             or           s3, t6, t6
                  add          t3, s7, s7
1003:             lui          s7, 676802
                  lui          ra, 374163
                  sub          a3, a1, s3
                  sltiu        t4, sp, -756
                  andi         t2, s10, -518
                  and          gp, s6, a2
                  beq          gp, a7, 1029f
                  sra          gp, t5, a4
                  slt          a2, s3, a3
                  bgeu         t5, t6, 1014f
                  andi         t5, t3, 1419
1014:             blt          s6, s7, 1028f
                  sra          zero, s3, s1
                  sll          s7, tp, gp
                  auipc        tp, 996831
                  slli         s0, t4, 21
                  or           a2, t3, a2
                  add          zero, a7, s4
                  slti         t0, t2, 539
                  xor          t6, t4, a1
                  andi         ra, s0, -380
                  xori         a2, a3, -1893
                  sra          t1, s10, s10
                  slli         a3, a3, 17
                  srl          t3, s6, t4
1028:             lui          a4, 32487
1029:             bne          sp, t2, 1040f
                  auipc        a3, 7449
                  srli         tp, s8, 8
                  sra          s9, t6, s8
                  slt          s1, a7, a1
                  add          s0, s2, s4
                  addi         gp, t3, 1116
                  nop
                  slt          ra, s11, gp
                  sltu         t0, a7, s9
                  sll          s2, t1, a4
1040:             blt          s1, a7, 1045f
                  bgeu         t2, s0, 1049f
                  bltu         s3, s9, 1047f
                  srai         a0, a1, 3
                  srai         sp, t4, 18
1045:             srli         gp, s2, 22
                  andi         t4, t6, -320
1047:             or           s2, a5, a3
                  xor          a3, a2, ra
1049:             slt          t1, a7, s1
                  sub          a0, gp, a6
                  sll          zero, s9, t5
                  sra          s2, s5, s9
                  addi         sp, s2, -1470
                  bltu         gp, s7, 1068f
                  auipc        t2, 995661
                  addi         s6, s8, 93
                  bltu         a6, s6, 1072f
                  addi         s6, gp, 1154
                  andi         s9, s11, 1347
                  sll          a1, zero, s7
                  sltiu        s9, tp, -1687
                  slti         a2, s3, 404
                  lui          a1, 109439
                  srai         ra, s6, 21
                  srai         tp, s10, 11
                  ori          s3, a5, -221
                  slli         s11, s5, 29
1068:             slti         s5, s1, 184
                  sltu         tp, s10, t1
                  andi         t6, a3, -1872
                  srl          a0, s2, a7
1072:             bltu         zero, s9, 1080f
                  srli         t1, s0, 13
                  ori          ra, a2, 483
                  and          a4, s8, s0
                  xori         ra, s10, -1689
                  auipc        a4, 367283
                  nop
                  ori          gp, t0, -372
1080:             slti         a3, t5, -981
                  sltu         zero, s3, zero
                  blt          t5, a2, 1092f
                  srai         s8, a3, 15
                  bge          s7, s2, 1098f
                  lui          t5, 414241
                  add          s11, s7, t5
                  auipc        s11, 757369
                  xor          a1, zero, s3
                  ori          a3, s0, -1877
                  or           a4, ra, s5
                  lui          s6, 705083
1092:             slti         t4, a0, 252
                  slt          tp, t5, a3
                  sub          t5, t3, t0
                  xori         s7, tp, 829
                  addi         t6, a0, -274
                  beq          t5, sp, 1105f
1098:             slli         zero, t2, 26
                  lui          t2, 844933
                  sub          s6, s4, a6
                  add          s3, a5, s8
                  lui          s3, 889585
                  bge          s9, s7, 1121f
                  xori         a2, tp, -344
1105:             xori         a2, a1, -1576
                  bgeu         a0, s11, 1114f
                  bge          s0, t6, 1118f
                  andi         t2, s8, 1139
                  beq          t4, s7, 1123f
                  xor          zero, s2, zero
                  slt          t3, t0, gp
                  bne          t2, a3, 1129f
                  lui          s9, 1016279
1114:             or           t1, a6, t5
                  slli         a2, t0, 8
                  or           a1, s10, a4
                  xor          t2, a2, s5
1118:             bltu         s3, s10, 1133f
                  bltu         s0, s11, 1121f
                  xor          zero, s6, a1
1121:             sltiu        tp, t1, 1819
                  nop
1123:             bge          gp, s4, 1134f
                  srli         gp, s3, 18
                  lui          sp, 966441
                  bltu         a1, ra, 1131f
                  andi         s4, s9, -1957
                  srl          s2, ra, s4
1129:             xor          s4, s4, tp
                  slli         a2, t6, 2
1131:             and          zero, a5, t6
                  nop
1133:             ori          s5, tp, -706
1134:             sub          s7, a7, t2
                  and          s8, tp, t1
                  slti         s1, s2, 1636
                  bltu         gp, t4, 1141f
                  xori         s1, s5, -102
                  slli         s1, gp, 13
                  auipc        a3, 193562
1141:             srl          tp, s8, t2
                  bge          t1, a5, 1143f
1143:             blt          gp, s5, 1152f
                  bne          s9, s0, 1159f
                  slti         ra, zero, -347
                  ori          zero, a2, 1693
                  beq          s4, s8, 1157f
                  bgeu         s8, t3, 1163f
                  or           s5, t1, t5
                  sra          t5, s0, t3
                  add          s9, ra, t1
1152:             add          s1, gp, s1
                  slt          s7, s2, s11
                  sltiu        t4, a4, 554
                  xori         t4, t4, -867
                  xori         s7, a0, -818
1157:             srli         a4, s8, 28
                  xori         ra, tp, -983
1159:             xor          s1, s8, zero
                  sll          s1, a2, t2
                  slti         s7, t0, -877
                  slt          t0, t4, t6
1163:             srai         s7, s1, 14
                  addi         gp, a3, -30
                  sub          t1, gp, s4
                  blt          a3, t2, 1176f
                  srai         gp, a7, 16
                  xori         t0, t0, 1600
                  lui          s1, 304805
                  srai         s5, s10, 5
                  slti         s11, t0, 1100
                  and          t6, s11, s10
                  sll          a0, s3, sp
                  srai         s6, a5, 16
                  slti         sp, a2, -88
1176:             sll          ra, t3, s9
                  slti         t0, a6, -676
                  slt          s4, a7, s6
                  xori         zero, t5, -695
                  nop
                  sltiu        s8, gp, 1655
                  slt          s2, a2, s6
                  srl          s0, sp, sp
                  nop
                  sra          s11, a7, s5
                  sltiu        t6, t4, 1354
                  bne          s3, t1, 1190f
                  sra          t0, s4, t5
                  ori          a4, a2, -1080
1190:             and          t6, a6, t5
                  srli         s2, t4, 27
                  slli         s3, a6, 13
                  add          s0, s1, t6
                  bne          gp, a6, 1202f
                  nop
                  addi         t3, a1, 311
                  or           t6, sp, s0
                  slt          t4, s8, zero
                  blt          t4, s2, 1219f
                  lui          tp, 185200
                  srli         tp, t3, 17
1202:             auipc        a1, 784570
                  beq          t6, s0, 1215f
                  slt          gp, a7, a1
                  sltiu        s8, ra, -40
                  srl          ra, a2, s1
                  srai         s3, zero, 25
                  sub          t4, tp, s4
                  xori         s9, a4, 1146
                  slti         s1, s6, 323
                  bne          s6, s5, 1213f
                  beq          s9, a3, 1214f
1213:             andi         t1, a2, 1078
1214:             srl          s11, s2, a1
1215:             xor          t6, a3, s6
                  blt          s6, t3, 1228f
                  auipc        s8, 894946
                  slti         t0, ra, 1949
1219:             srli         s5, s3, 13
                  beq          a2, s8, 1230f
                  beq          t2, s1, 1226f
                  andi         s11, s8, -1234
                  sub          t3, t3, a4
                  bltu         t6, a5, 1232f
                  sub          gp, s3, a2
1226:             bltu         s11, s5, 1240f
                  nop
1228:             srli         s11, s8, 26
                  auipc        s3, 746688
1230:             srai         s9, tp, 28
                  sll          a6, a5, s3
1232:             srli         tp, t1, 0
                  nop
                  sltu         s3, s10, s7
                  blt          tp, s5, 1243f
                  auipc        s9, 866453
                  blt          a1, a6, 1247f
                  lui          t5, 486222
                  ori          s9, ra, 1191
1240:             lui          s8, 872350
                  nop
                  slt          a4, t2, t1
1243:             ori          t1, s0, 1634
                  srli         t4, t2, 7
                  addi         sp, t0, -624
                  slli         a2, a2, 6
1247:             sltu         t0, t1, s11
                  bne          s11, a4, 1258f
                  ori          s9, s6, -1603
                  slt          t1, s7, s7
                  beq          a6, s5, 1271f
                  slli         s11, s9, 23
                  srai         gp, s4, 4
                  blt          sp, s9, 1264f
                  andi         t6, s11, -296
                  lui          s7, 668563
                  slt          t6, s1, s5
1258:             andi         a6, a7, 807
                  srl          s4, s8, a2
                  add          t5, a1, s4
                  or           zero, s9, s4
                  xori         s1, t2, 102
                  and          s4, a7, s2
1264:             sll          s3, gp, t4
                  or           s5, t4, s1
                  slt          s0, gp, s3
                  blt          s9, s8, 1272f
                  slti         s11, t2, 1623
                  nop
                  bltu         a6, tp, 1278f
1271:             srai         s2, gp, 7
1272:             slti         t3, s9, 596
                  bge          t5, t1, 1284f
                  slt          t5, s11, s8
                  or           t3, t6, t6
                  bgeu         s4, tp, 1290f
                  bge          t0, s7, 1291f
1278:             slli         zero, t4, 18
                  slti         s6, t3, -1189
                  srai         a2, t5, 14
                  andi         ra, s10, -1240
                  sltiu        s5, s9, 1955
                  sltiu        a0, t3, 1892
1284:             sub          s6, tp, sp
                  beq          s4, s10, 1302f
                  srl          a0, s6, zero
                  sll          a2, t6, t5
                  bgeu         s5, s5, 1303f
                  sub          t1, s2, a0
1290:             sltu         s1, s6, a1
1291:             sll          t5, a6, s1
                  bge          s1, sp, 1303f
                  blt          a1, s6, 1303f
                  xori         a6, ra, -729
                  nop
                  lui          a1, 500590
                  or           s2, a0, s0
                  auipc        gp, 421147
                  nop
                  and          t1, t6, sp
                  and          t6, s10, s8
1302:             xori         t0, a0, 769
1303:             xor          t5, a0, zero
                  and          t4, a3, s0
                  sltiu        s2, s8, -914
                  auipc        a1, 136420
                  auipc        t4, 79700
                  xor          t6, s10, gp
                  srl          tp, s9, s2
                  beq          s10, a4, 1328f
                  bge          t0, zero, 1313f
                  slti         tp, s2, -186
1313:             slli         a4, s6, 1
                  slli         s9, zero, 25
                  ori          s6, s6, 1600
                  sltiu        t1, tp, -357
                  sll          t4, t6, t4
                  sra          s0, zero, sp
                  bltu         a5, s10, 1334f
                  slti         t6, s10, 184
                  srl          s3, sp, a7
                  sltiu        a1, s2, -470
                  srai         zero, gp, 1
                  addi         s6, a2, 775
                  nop
                  srai         t4, s2, 30
                  srl          s9, s7, tp
1328:             bgeu         s6, a0, 1330f
                  sra          a1, s1, s2
1330:             bltu         t5, a1, 1335f
                  slti         t0, t5, -283
                  bgeu         s5, t3, 1340f
                  xor          s4, s2, t6
1334:             or           s9, tp, t4
1335:             sub          gp, t3, s4
                  bge          s1, t1, 1345f
                  bne          s10, t4, 1339f
                  srl          tp, sp, a1
1339:             andi         s11, s8, 68
1340:             bne          s3, t3, 1352f
                  sltu         a4, a4, s11
                  auipc        s7, 1009165
                  sltiu        s7, s1, -1282
                  ori          a2, t4, -1676
1345:             auipc        t4, 382866
                  srai         t6, a4, 18
                  sltiu        s6, a6, -989
                  sll          t0, a4, t2
                  sub          t6, s9, s3
                  sra          a2, a1, sp
                  sra          a2, s1, s7
1352:             sltu         t2, a0, s10
                  sub          sp, s1, s4
                  sra          s5, s7, sp
                  sra          ra, zero, s1
                  slt          t5, t5, t3
                  slt          s1, a5, t4
                  or           a2, s10, gp
                  sltiu        t5, gp, 1456
                  srli         t1, s10, 16
                  or           s8, a2, t2
                  beq          s6, s11, 1376f
                  sltu         s6, ra, s8
                  beq          sp, t3, 1365f
1365:             sltu         a3, a5, s10
                  nop
                  sltu         t1, s8, t3
                  slli         s0, t2, 16
                  xor          s9, t4, a3
                  sltu         t2, a2, a1
                  beq          a5, s10, 1375f
                  sub          t2, a5, a7
                  sltiu        s11, tp, -1119
                  xori         a6, a1, -1796
1375:             add          s3, s4, s5
1376:             sub          t3, t1, a3
                  bne          tp, s6, 1385f
                  andi         s4, zero, 101
                  xori         tp, a7, 959
                  sra          t2, tp, s4
                  srl          s3, a7, s1
                  sll          s8, s3, a3
                  srl          a1, s4, s1
                  srai         s4, t3, 20
1385:             or           a2, tp, t6
                  auipc        t0, 140503
                  or           a1, s2, s4
                  blt          s0, zero, 1403f
                  srai         s4, t4, 3
                  nop
                  sll          a3, s11, a3
                  slli         zero, t2, 21
                  srai         t0, t1, 12
                  andi         t1, t0, 559
                  blt          s9, a1, 1407f
                  slli         s6, s2, 26
                  xori         s8, s7, 908
                  bne          a5, a1, 1401f
                  nop
                  or           t5, s3, t2
1401:             sub          s11, t5, s1
                  lui          ra, 36978
1403:             bge          s6, gp, 1418f
                  sltiu        t5, a4, 2005
                  sra          a4, t5, a4
                  bne          a7, tp, 1421f
1407:             sltiu        t3, s10, 1152
                  or           t5, a3, a4
                  sll          t6, t5, a2
                  andi         t2, t0, -366
                  sra          tp, tp, s3
                  bne          s9, s7, 1426f
                  beq          s0, a7, 1428f
                  bge          s7, t3, 1416f
                  bne          tp, a3, 1418f
1416:             bne          gp, t3, 1427f
                  srl          s0, a5, a4
1418:             slt          s11, a3, a5
                  sltiu        t4, zero, 495
                  andi         a1, sp, 1367
1421:             slti         t1, s7, 1869
                  andi         gp, t5, -1079
                  sltiu        s4, t2, 1740
                  auipc        t3, 480955
                  blt          t3, s10, 1435f
1426:             sll          t4, sp, a0
1427:             addi         a1, s4, 79
1428:             bgeu         ra, s2, 1439f
                  lui          a3, 551428
                  slti         a1, a5, 997
                  sltu         t1, a6, a3
                  or           ra, t0, t2
                  slli         s3, ra, 7
                  sll          s2, s0, a3
1435:             sra          a3, sp, a5
                  bne          a7, a5, 1450f
                  xor          s1, zero, ra
                  add          t4, s10, s7
1439:             bgeu         t3, a3, 1443f
                  sltu         a4, t5, a3
                  slti         a1, t0, 1662
                  nop
1443:             lui          t0, 679032
                  slti         s4, s2, -318
                  xor          s1, s4, t2
                  add          sp, gp, s9
                  bltu         s11, s2, 1457f
                  blt          s8, a2, 1457f
                  add          t2, a4, s2
1450:             sub          a3, ra, tp
                  addi         sp, a0, -665
                  sra          zero, t6, s9
                  bltu         s1, t5, 1455f
                  bne          s4, s5, 1474f
1455:             auipc        s4, 506135
                  bltu         s6, a1, 1468f
1457:             ori          s3, t0, -530
                  or           s9, ra, a0
                  sub          t5, s2, s6
                  srai         a6, gp, 20
                  la           s2, region_1+1317 #start riscv_load_store_rand_instr_stream_11
                  srli         a4, s5, 10
                  lhu          a0, 101(s2)
                  lbu          s4, 171(s2)
                  lbu          t6, -8(s2)
                  lbu          s5, 38(s2)
                  lbu          s5, 121(s2)
                  sb           s4, -170(s2)
                  auipc        s9, 212929
                  ori          t4, s4, 1081
                  sb           tp, -110(s2)
                  sltu         a0, a6, a3
                  sra          t5, t2, ra
                  lh           s7, 141(s2)
                  srai         s9, s2, 27
                  add          a3, a2, a5
                  lh           t4, -169(s2)
                  lbu          s7, -193(s2)
                  sb           t5, 89(s2)
                  lb           sp, -86(s2)
                  lbu          t4, -182(s2)
                  andi         ra, zero, -1930
                  xori         a6, t4, 584
                  nop
                  xor          s5, a4, s1
                  srli         s5, tp, 3
                  sh           a1, 93(s2)
                  lb           s3, -37(s2)
                  lbu          s6, 168(s2)
                  lb           a0, 202(s2)
                  sra          t6, a7, s9
                  and          t5, s4, t3
                  lbu          s7, -39(s2)
                  lbu          a4, 138(s2)
                  srai         t4, s7, 27
                  lbu          gp, 11(s2)
                  sltiu        s9, sp, -140
                  lhu          a0, -209(s2)
                  sb           gp, 64(s2)
                  ori          sp, s2, -13
                  xor          s1, a4, s0
                  lhu          s6, 233(s2)
                  lb           s0, 0(s2)
                  lbu          s6, 78(s2)
                  lb           t2, 29(s2)
                  sb           s6, 80(s2) #end riscv_load_store_rand_instr_stream_11
                  sltiu        s11, a3, 330
                  and          s5, s4, s2
                  bgeu         sp, t1, 1471f
                  sra          s0, t3, s10
                  auipc        a6, 350440
                  sub          s3, a3, t6
                  sra          s2, t0, t4
1468:             slli         a1, s11, 16
                  bltu         s1, gp, 1470f
1470:             xor          zero, a0, s7
1471:             slli         gp, t0, 12
                  blt          a4, s5, 1480f
                  nop
1474:             srai         tp, t6, 23
                  slli         a4, t1, 5
                  auipc        t5, 585093
                  slt          s11, a7, s8
                  bge          a1, ra, 1488f
                  srl          s9, ra, s6
1480:             srli         zero, t6, 3
                  slt          t1, s9, s4
                  sltu         s3, ra, t2
                  bgeu         t2, a1, 1488f
                  nop
                  bne          s3, gp, 1499f
                  bgeu         ra, t2, 1491f
                  sub          s2, a1, a5
1488:             bgeu         s6, t0, 1496f
                  nop
                  blt          s1, s10, 1498f
1491:             blt          s3, t6, 1501f
                  beq          s6, tp, 1509f
                  bne          a1, t4, 1495f
                  sltu         s8, zero, t1
1495:             slt          t4, a0, s10
1496:             srl          t5, s6, t1
                  srai         s2, a4, 22
1498:             blt          t5, a1, 1510f
1499:             andi         s0, a1, -692
                  add          s11, t4, t1
1501:             nop
                  add          a3, sp, t3
                  or           t3, s7, gp
                  xori         t1, s10, 1424
                  sltu         t0, t6, s7
                  bgeu         tp, s5, 1524f
                  xor          t3, tp, ra
                  or           s8, t1, tp
1509:             sra          s0, s9, s10
1510:             sll          sp, gp, s9
                  andi         a4, a5, 748
                  sll          a2, a3, zero
                  or           zero, s11, s11
                  sra          a6, a5, s10
                  xor          t2, s6, t5
                  bne          s9, ra, 1530f
                  sra          sp, a2, s9
                  slt          t6, s2, gp
                  addi         a4, tp, -1219
                  sll          s5, a5, a2
                  blt          t6, s6, 1531f
                  srai         ra, s4, 6
                  or           s11, s2, s11
1524:             xori         t2, s7, 994
                  sltiu        a4, s3, 225
                  and          t6, t1, t3
                  srli         s1, s5, 23
                  beq          s10, t4, 1543f
                  slli         t1, s6, 20
1530:             lui          t0, 551233
1531:             bgeu         a4, t2, 1551f
                  srl          t1, s8, sp
                  sltu         s2, s7, s3
                  ori          gp, s11, 1185
                  auipc        a0, 848817
                  auipc        t6, 835124
                  srai         t6, s0, 21
                  add          t2, s11, a4
                  sltiu        t1, sp, -795
                  sltu         t3, s11, a3
                  xor          a3, t3, a7
                  blt          t0, a0, 1554f
1543:             xor          s6, s1, a5
                  slt          s6, s5, s3
                  bgeu         s9, t2, 1557f
                  slt          s9, t1, a5
                  addi         s9, zero, 1992
                  sltiu        t4, s6, 1043
                  slt          gp, t4, s8
                  bgeu         s5, ra, 1553f
1551:             srli         s5, t3, 21
                  srli         t2, a4, 18
1553:             or           a4, s8, s5
1554:             sltu         a2, s9, s1
                  addi         t6, t6, 1830
                  sltiu        a3, s4, -1536
1557:             sub          s3, tp, s2
                  addi         a6, ra, -768
                  nop
                  auipc        s5, 463176
                  blt          s1, s4, 1570f
                  sltu         t1, a0, a6
                  xor          s8, a5, ra
                  bltu         a2, s7, 1574f
                  add          t2, t0, s0
                  bge          t3, a3, 1581f
                  lui          t2, 775375
                  srl          s2, t1, s0
                  slt          gp, a4, s11
1570:             lui          a4, 687946
                  sll          s6, s1, s10
                  slti         s0, gp, 1331
                  bne          s1, s4, 1575f
1574:             bne          s8, s8, 1575f
1575:             slli         s6, s11, 20
                  xori         a1, s7, 1200
                  slli         t1, s10, 23
                  sll          s7, sp, zero
                  bgeu         s8, s6, 1583f
                  srli         s11, sp, 7
1581:             bge          s9, t4, 1589f
                  sltiu        t0, s5, 1981
1583:             andi         a2, s4, 1115
                  blt          a0, s10, 1598f
                  beq          t6, ra, 1595f
                  srli         s9, zero, 1
                  srai         a3, t2, 14
                  sub          s11, a7, s7
1589:             addi         ra, a5, 2031
                  add          gp, s9, s8
                  slt          t2, s5, t0
                  sra          ra, s7, s10
                  auipc        t4, 104424
                  sll          zero, s6, t5
1595:             srli         t0, s9, 7
                  andi         s5, zero, -1406
                  nop
1598:             slli         t3, t6, 21
                  beq          a4, s7, 1610f
                  ori          a4, s2, 1530
                  sltu         s4, s11, s9
                  blt          s1, ra, 1604f
                  or           a3, s2, s2
1604:             bgeu         s1, t0, 1609f
                  srai         s1, s7, 11
                  sltiu        s9, s9, -204
                  sub          s1, tp, t5
                  srli         t6, a7, 15
1609:             add          s5, s6, t1
1610:             srli         s6, s4, 1
                  sra          t2, a0, sp
                  lui          ra, 882126
                  addi         gp, s2, -559
                  addi         a6, sp, 995
                  bltu         sp, ra, 1623f
                  slli         sp, a5, 1
                  add          zero, a3, a4
                  sub          a6, t3, zero
                  ori          s1, a5, 1891
                  slli         t6, a2, 10
                  sltu         a6, s11, ra
                  auipc        a1, 575544
1623:             beq          s3, a1, 1638f
                  add          zero, a1, a2
                  bgeu         s6, t0, 1636f
                  srl          s8, a5, s7
                  ori          a1, a3, 1589
                  slt          a2, gp, s1
                  slt          s4, sp, s8
                  srl          ra, ra, t2
                  bltu         s10, s10, 1648f
                  bge          s5, t5, 1646f
                  bne          s2, s8, 1651f
                  add          zero, s10, t2
                  sra          s4, s7, sp
1636:             srl          t0, s0, s3
                  slt          s8, t1, t6
1638:             blt          gp, s10, 1646f
                  lui          ra, 596317
                  sra          s9, s2, t0
                  andi         s4, a4, -1789
                  nop
                  sltu         gp, s0, t0
                  sltiu        t0, a5, 932
                  bltu         a7, t5, 1655f
1646:             sltu         s0, sp, s9
                  sll          zero, a4, s4
1648:             bltu         s3, a2, 1650f
                  blt          s1, s5, 1654f
                  la           sp, region_1+1304 #start riscv_load_store_rand_instr_stream_13
                  andi         a0, s0, -1107
                  auipc        a1, 384719
                  add          s9, t5, s4
                  srai         tp, t0, 27
                  xor          a3, s8, a2
                  auipc        a4, 948992
                  ori          t6, s3, 1416
                  andi         s6, s2, -822
                  lui          s1, 782708
                  lb           a0, -41(sp)
                  srli         a3, a0, 13
                  ori          t3, t2, -1624
                  lh           t5, 26(sp)
                  sll          t0, a4, a4
                  addi         t5, s1, 1706
                  sh           s0, -32(sp)
                  add          a1, t0, a5
                  lbu          t3, 15(sp)
                  xor          s0, s0, s10
                  srai         s9, t4, 16
                  sb           s3, 4(sp)
                  lui          s1, 999879
                  slli         t0, a1, 12
                  nop
                  and          s3, t6, s5
                  xori         s9, gp, -197
                  lb           zero, 39(sp)
                  sltu         a4, a1, s7
                  lbu          t3, -7(sp)
                  sra          tp, t5, zero
                  lhu          t1, 36(sp)
                  srli         t5, a5, 12
                  srl          a3, a2, a0
                  sw           s7, 20(sp)
                  addi         tp, s10, -1640
                  sb           a4, -33(sp)
                  sb           ra, -4(sp) #end riscv_load_store_rand_instr_stream_13
1650:             addi         ra, sp, 1741
1651:             srai         s6, a0, 6
                  srli         t1, t2, 26
                  srli         s8, a3, 8
1654:             bne          a0, t0, 1662f
1655:             add          t0, t0, a4
                  bltu         t3, s3, 1673f
                  sra          ra, t1, s5
                  xori         s0, a0, -156
                  blt          s7, tp, 1669f
                  sltiu        s2, gp, -1839
                  lui          ra, 591134
1662:             andi         s8, a0, -1254
                  srai         s11, s10, 7
                  beq          t2, s11, 1684f
                  xori         t6, t3, 339
                  or           zero, a7, s9
                  beq          a4, s8, 1669f
                  blt          s10, a6, 1669f
1669:             or           s2, t0, a1
                  slti         s9, t3, 1255
                  sltiu        s4, t5, -1650
                  bgeu         s7, t0, 1687f
1673:             ori          a4, s4, -1058
                  ori          a2, zero, 541
                  andi         t0, a4, -312
                  sltu         sp, a3, gp
                  sub          a2, s1, a2
                  bne          s1, t0, 1693f
                  sltu         t2, t3, a2
                  bge          s8, s5, 1694f
                  sra          sp, t5, s8
                  xori         sp, t0, -180
                  sll          s3, a1, s1
1684:             andi         s2, t2, 334
                  slt          a2, gp, a0
                  sll          t5, tp, s11
1687:             nop
                  bltu         t4, s11, 1696f
                  ori          t3, t2, -1486
                  xor          t2, a5, sp
                  addi         ra, t6, -1293
                  bge          s5, a0, 1695f
1693:             slti         sp, t0, 806
1694:             srai         s5, s7, 13
1695:             sra          tp, zero, a1
1696:             srai         s6, s4, 12
                  sub          a0, gp, ra
                  sra          a2, ra, sp
                  sra          s11, a6, s1
                  bge          a2, s11, 1714f
                  slti         t6, t2, 1742
                  srl          t0, s2, tp
                  srai         s8, a4, 24
                  andi         a6, a5, 237
                  beq          s2, t2, 1710f
                  ori          t1, zero, 90
                  beq          a5, a1, 1717f
                  bne          a3, t0, 1718f
                  sltu         s1, ra, a5
1710:             bge          a0, s0, 1728f
                  blt          s7, a5, 1721f
                  nop
                  bne          t1, a2, 1715f
1714:             andi         a6, a6, -734
1715:             sra          a6, t1, a7
                  sll          t2, t4, a0
1717:             srai         s2, s11, 17
1718:             nop
                  and          a3, s4, s11
                  srl          s7, a1, zero
1721:             andi         s6, t0, -961
                  ori          a1, s9, 1662
                  sll          s11, t6, a5
                  slt          t0, s0, t6
                  slti         a0, sp, -326
                  beq          s7, a2, 1741f
                  bltu         a3, a0, 1741f
1728:             add          s7, s1, a6
                  srai         a3, s1, 31
                  ori          s4, s9, 842
                  sltiu        s6, a3, -871
                  or           t0, s7, s3
                  sra          a4, s4, s1
                  srl          s2, t6, sp
                  bltu         a6, ra, 1740f
                  slti         t4, t4, 333
                  beq          t4, tp, 1741f
                  srl          t0, a0, s8
                  add          sp, t4, s11
1740:             bge          tp, t3, 1748f
1741:             add          t2, s4, s3
                  or           t3, gp, s9
                  slli         a2, s10, 10
                  srl          t1, zero, s1
                  sra          s8, ra, s1
                  slli         a4, s9, 15
                  ori          t6, a4, -135
1748:             xor          s8, s10, a1
                  bge          a7, s2, 1760f
                  lui          s4, 696846
                  slli         t4, a4, 17
                  sra          a0, t4, t6
                  addi         a6, a7, 1069
                  auipc        zero, 529830
                  sll          a4, t2, t5
                  bgeu         s4, a2, 1768f
                  lui          s7, 914518
                  slli         a0, a3, 30
                  sub          s0, a7, tp
1760:             or           t3, ra, a6
                  add          a4, t5, t6
                  slti         a3, a3, -347
                  sltiu        t2, s10, 1617
                  ori          a1, a6, 735
                  srai         a3, t5, 17
                  sra          s4, a2, s9
                  auipc        t6, 297372
1768:             bgeu         a2, sp, 1776f
                  bgeu         sp, s11, 1781f
                  slti         sp, a0, -919
                  bgeu         t2, a3, 1780f
                  lui          a2, 542440
                  xori         ra, s10, 1837
                  beq          s6, ra, 1785f
                  lui          gp, 23675
1776:             add          t1, a7, gp
                  blt          a0, zero, 1785f
                  sll          ra, s8, t4
                  beq          s7, s9, 1781f
1780:             xor          s5, a6, s7
1781:             addi         a1, a3, 1009
                  slt          s9, a4, s8
                  beq          sp, gp, 1791f
                  bltu         s10, zero, 1795f
1785:             bltu         s6, zero, 1787f
                  lui          s6, 48827
1787:             sltu         s2, a2, ra
                  addi         a2, s0, -776
                  and          t0, s6, s8
                  bne          s3, a6, 1798f
1791:             xor          a4, a6, t1
                  xori         s2, a3, 1946
                  auipc        ra, 639332
                  slt          zero, s11, ra
1795:             addi         s5, a2, -579
                  bge          s6, a3, 1808f
                  ori          t3, s6, 884
1798:             sltiu        a1, s6, -865
                  ori          a1, zero, -1520
                  xori         zero, s9, 135
                  or           s5, a5, s2
                  blt          a1, a6, 1812f
                  sltiu        s0, sp, 1455
                  slli         a2, t1, 27
                  slt          tp, s0, a1
                  beq          s10, s8, 1826f
                  srai         gp, s7, 29
1808:             srl          s6, t5, zero
                  bge          a4, t1, 1827f
                  sub          s11, zero, tp
                  ori          s4, a4, 708
1812:             blt          tp, zero, 1817f
                  addi         s5, s6, 1148
                  sltu         a0, s2, s3
                  srl          s1, s8, a6
                  add          t6, ra, t6
1817:             xori         s7, t1, 1847
                  nop
                  xor          s2, s1, s4
                  ori          t4, sp, 189
                  auipc        s4, 72364
                  bne          s10, t5, 1832f
                  sltu         t3, s6, s6
                  xor          a2, t2, s11
                  ori          t0, a4, 292
1826:             xori         a1, zero, -725
1827:             sltu         s2, t1, t6
                  srai         a3, s9, 26
                  xor          a4, a6, s8
                  ori          s4, s11, -259
                  srai         t5, s0, 27
1832:             blt          t5, s9, 1847f
                  nop
                  and          t6, s7, t3
                  sltu         s6, a1, s6
                  add          a6, zero, a0
                  addi         t5, s0, 207
                  bne          s7, t0, 1846f
                  xori         s3, sp, -1505
                  auipc        s8, 241712
                  or           t4, t5, t5
                  beq          s10, a7, 1852f
                  add          t4, a4, tp
                  blt          a2, a1, 1854f
                  lui          a0, 1045861
1846:             slti         a4, t4, -233
1847:             add          t5, a0, t4
                  srl          t5, s5, a4
                  xor          s11, gp, t2
                  ori          a1, s0, -18
                  lui          s9, 278113
1852:             slti         t6, sp, -221
                  xori         zero, a0, 1356
1854:             slli         s11, t5, 17
                  nop
                  add          s11, t0, gp
                  slli         s4, s2, 18
                  bltu         t1, ra, 1869f
                  ori          a1, s6, 1655
                  lui          t6, 233274
                  xor          t6, s8, a3
                  blt          t0, a6, 1876f
                  bne          s0, a5, 1865f
                  auipc        tp, 148161
1865:             slti         t0, a6, -1604
                  bgeu         ra, a1, 1881f
                  xori         a4, s1, 1110
                  bgeu         sp, a0, 1873f
1869:             lui          s2, 328831
                  or           t5, a2, s7
                  andi         s3, a5, 1177
                  ori          a2, s6, -567
1873:             lui          t2, 678585
                  sll          t1, s3, a0
                  sltu         t1, a2, s6
1876:             bltu         t5, s6, 1890f
                  or           s0, a7, a1
                  sltiu        sp, a0, 1059
                  srli         s6, gp, 18
                  and          t4, a7, t1
1881:             lui          t5, 806595
                  slti         a3, s5, -1475
                  beq          a0, s6, 1895f
                  andi         t5, zero, 882
                  auipc        t1, 314511
                  srai         s3, s10, 26
                  add          s8, a3, s11
                  sltu         a0, t4, s4
                  bge          a7, s4, 1890f
1890:             sltu         a3, a0, a1
                  blt          s11, s8, 1908f
                  slli         s8, t6, 30
                  bne          a1, s0, 1895f
                  slli         gp, a0, 20
1895:             bgeu         tp, tp, 1903f
                  lui          sp, 442785
                  beq          a5, gp, 1911f
                  srai         zero, s7, 11
                  and          t3, a3, a5
                  srai         s6, t3, 29
                  beq          t5, s2, 1904f
                  sltu         s7, a1, t0
1903:             blt          a5, t1, 1918f
1904:             bge          a3, zero, 1908f
                  blt          s5, a7, 1914f
                  blt          s1, s8, 1920f
                  addi         t1, t2, -1611
1908:             beq          s9, s3, 1918f
                  auipc        s6, 221393
                  and          s3, s0, ra
1911:             xori         tp, s3, -37
                  or           t5, a5, s10
                  add          a1, a4, t0
1914:             bne          a7, s1, 1929f
                  ori          s9, s2, -595
                  ori          s9, s0, -890
                  andi         s7, sp, 1796
1918:             srli         t4, s10, 22
                  slt          s9, s4, s8
1920:             srli         a1, s0, 26
                  slli         a0, s0, 5
                  and          a1, t3, s2
                  or           s1, tp, ra
                  bltu         tp, s2, 1935f
                  sll          s7, a1, s3
                  sll          s9, s3, t2
                  sltu         s9, s9, s11
                  bltu         tp, s2, 1942f
1929:             bgeu         tp, a6, 1944f
                  add          zero, s1, a4
                  slli         a0, s1, 24
                  lui          a2, 5929
                  sra          tp, s0, s9
                  slt          s11, s4, tp
1935:             sll          s7, a4, t4
                  bltu         s1, a6, 1951f
                  sub          zero, t6, gp
                  sltiu        s11, s7, -666
                  bne          a6, t5, 1944f
                  sub          ra, s2, a4
                  sltu         tp, s1, s10
1942:             bgeu         s5, s5, 1947f
                  slli         t0, s3, 23
1944:             srai         s11, s8, 4
                  bltu         t4, s6, 1946f
1946:             sll          a1, tp, tp
1947:             addi         s1, s6, -416
                  nop
                  sub          a4, a6, s1
                  bne          a1, s4, 1958f
1951:             sltiu        ra, a7, -1615
                  and          s9, sp, tp
                  and          s6, t0, s8
                  xor          a6, t2, s0
                  sltu         t4, s10, gp
                  auipc        a6, 127852
                  bge          s11, a5, 1974f
1958:             xor          t1, a7, tp
                  andi         gp, s11, -1454
                  add          s7, t0, s4
                  sll          s6, a1, a3
                  bne          t6, s8, 1972f
                  andi         s5, s3, 1389
                  bgeu         t0, s11, 1968f
                  bltu         t3, s9, 1975f
                  xor          s3, s10, s1
                  add          s6, tp, sp
1968:             andi         a1, t0, 1743
                  srl          s0, s11, a7
                  add          s4, s3, s11
                  ori          s1, s0, -1792
1972:             bgeu         t6, s1, 1984f
                  bgeu         a6, s9, 1991f
1974:             andi         s6, t6, 1775
1975:             lui          s11, 922402
                  slt          t5, a3, t0
                  bltu         t1, a0, 1997f
                  nop
                  srli         gp, s1, 1
                  sub          s5, ra, a3
                  sub          zero, s5, zero
                  sub          ra, s10, a5
                  slti         ra, s6, -836
1984:             blt          gp, s2, 1992f
                  and          s1, t3, s6
                  bne          s0, s3, 1988f
                  bltu         zero, s11, 1999f
1988:             auipc        s8, 914940
                  srl          s8, t0, t1
                  andi         s5, a0, 608
1991:             beq          t1, t3, 1993f
1992:             add          t3, sp, t1
1993:             xori         t6, a4, -2011
                  sltiu        s2, s3, 1358
                  xori         t0, gp, 1682
                  sltiu        s1, ra, 1166
1997:             srli         t6, a7, 20
                  andi         t3, s3, 1571
1999:             and          a4, s2, s5
                  or           s1, a6, ra
                  add          t3, s2, t5
                  blt          a2, a3, 2011f
                  slt          zero, s1, s6
                  slti         t1, s7, 1334
                  or           s0, t4, s6
                  addi         t2, t2, 966
                  beq          s4, a0, 2010f
                  srai         s8, a6, 12
                  srli         t4, t3, 5
2010:             auipc        s11, 70943
2011:             lui          a0, 1030719
                  bltu         gp, t6, 2026f
                  slti         gp, zero, 859
                  lui          s7, 89391
                  slt          t6, s10, s2
                  andi         t5, s0, -1905
                  auipc        t6, 959700
                  addi         t6, sp, -828
                  bgeu         s11, s1, 2021f
                  sll          t1, s10, sp
2021:             beq          t0, sp, 2032f
                  addi         a1, s5, -216
                  sll          a2, a4, s11
                  bge          s3, sp, 2032f
                  srli         t0, zero, 9
2026:             auipc        s11, 667652
                  slti         a6, a3, -558
                  beq          ra, s10, 2036f
                  lui          sp, 145481
                  lui          s7, 662190
                  add          s4, sp, a2
2032:             blt          t6, t5, 2042f
                  lui          a2, 895418
                  bne          t3, s9, 2042f
                  auipc        a1, 163724
2036:             sltiu        s1, s6, 1995
                  and          t6, s8, tp
                  bne          s6, a5, 2043f
                  ori          s6, ra, 1013
                  srl          t4, s11, s8
                  or           t5, s3, a2
2042:             beq          a4, t2, 2051f
2043:             srl          t3, s9, a0
                  sra          ra, a1, a5
                  nop
                  add          gp, zero, t3
                  bgeu         a7, s1, 2061f
                  xor          sp, a5, s1
                  bgeu         s10, a4, 2053f
                  slli         sp, s10, 4
2051:             bltu         sp, zero, 2063f
                  slt          s5, a5, ra
2053:             blt          tp, s10, 2063f
                  andi         s1, s10, -390
                  sltu         s4, a2, s0
                  slti         s6, t4, -1451
                  sub          gp, a1, t6
                  nop
                  bne          a0, s11, 2061f
                  sll          ra, a7, t4
2061:             bltu         s1, t6, 2064f
                  xor          a0, a1, t5
2063:             xor          a3, s4, a4
2064:             beq          zero, t6, 2076f
                  sltiu        s7, s8, 964
                  and          a4, s8, s8
                  slt          a3, a6, sp
                  slli         ra, s1, 15
                  beq          t5, sp, 2071f
                  addi         s6, s4, -179
2071:             xor          sp, a0, s2
                  ori          sp, a4, 704
                  sll          t0, sp, a2
                  sub          s5, a2, s6
                  addi         t1, a3, 1069
2076:             add          s0, t3, a0
                  bge          a5, s2, 2078f
2078:             sltu         s3, t6, a6
                  xor          a0, s11, t1
                  lui          s2, 775848
                  lui          t2, 745151
                  slli         t1, ra, 22
                  xor          t0, t6, t5
                  andi         a0, s0, -918
                  slt          a1, s3, t6
                  slt          a2, a7, s2
                  xori         s11, s8, 1305
                  xori         a6, s11, -678
                  sll          a1, gp, s9
                  lui          tp, 426626
                  nop
                  ori          s6, sp, 1876
                  xor          s2, t1, a5
                  add          t4, t4, a5
                  slli         s7, gp, 19
                  lui          t5, 113762
                  sltu         a2, tp, s11
                  nop
                  xor          s8, a2, s4
                  xor          a3, zero, a5
                  nop
                  sll          s0, a6, a1
                  and          ra, s8, s11
                  bltu         t4, s7, 2114f
                  beq          t4, s2, 2120f
                  sub          a2, ra, s7
                  lui          t6, 747147
                  ori          t6, s1, -1837
                  add          t5, t1, s1
                  or           s6, t2, t5
                  sll          s1, s11, s5
                  srli         s0, s5, 4
                  sub          zero, a1, s10
2114:             bne          s10, s10, 2129f
                  srl          a6, t2, tp
                  xori         s7, s4, 1544
                  add          a4, t0, a0
                  ori          a2, t4, 1105
                  slt          s11, tp, a4
2120:             sub          t4, s2, a2
                  sltu         s9, a4, t4
                  slt          t5, ra, s2
                  sub          s11, s0, s2
                  or           tp, a3, a5
                  andi         s11, zero, 974
                  auipc        a1, 759509
                  blt          t6, s9, 2138f
                  blt          t2, s10, 2139f
2129:             bgeu         s8, a5, 2137f
                  sra          t5, s0, s4
                  srli         a0, t4, 14
                  bne          a3, a2, 2134f
                  xori         t6, s3, -182
2134:             srai         s5, t0, 13
                  sub          s2, s1, a3
                  srli         t5, a4, 23
2137:             slt          a6, a3, s4
2138:             bgeu         s9, s4, 2146f
2139:             andi         a3, ra, -1007
                  bltu         a6, t5, 2154f
                  slti         t5, t1, 442
                  srai         t3, a7, 27
                  slti         s4, t2, -147
                  xori         s6, t0, -638
                  sub          sp, a0, s10
2146:             blt          a2, a6, 2164f
                  bgeu         a0, t0, 2157f
                  auipc        s9, 659331
                  beq          t0, a5, 2169f
                  xori         zero, a0, -783
                  blt          s2, a5, 2165f
                  sub          s2, s9, s8
                  srli         a3, a7, 10
2154:             auipc        a0, 107610
                  bge          gp, s0, 2165f
                  bne          s6, s2, 2171f
2157:             sra          a6, a7, s3
                  ori          s5, s3, -979
                  add          gp, s4, s8
                  beq          s1, s5, 2165f
                  slt          a6, a0, s11
                  bge          s11, s7, 2170f
                  bne          t2, s8, 2180f
2164:             or           s11, s2, gp
2165:             slli         t1, s5, 9
                  slli         a0, a6, 30
                  or           a3, a4, s8
                  nop
2169:             or           s6, ra, a1
2170:             sra          a1, sp, s4
2171:             slli         a6, s3, 11
                  bne          s0, s10, 2182f
                  bge          a0, s6, 2175f
                  and          s5, t0, t0
2175:             auipc        t6, 1022707
                  and          t5, a3, gp
                  blt          a7, a0, 2181f
                  srl          t3, s7, ra
                  nop
2180:             addi         sp, t6, -709
2181:             sll          sp, t2, s10
2182:             sll          sp, s4, t5
                  sll          a0, a4, t2
                  sltu         ra, s7, t5
                  bgeu         a1, s10, 2193f
                  srai         t5, tp, 29
                  beq          t6, t2, 2201f
                  slti         a0, s5, 1575
                  andi         a3, s6, 1239
                  bge          a1, ra, 2193f
                  sra          t0, s8, t0
                  and          s6, s9, s11
2193:             sltu         gp, zero, a7
                  andi         s11, s2, 979
                  or           t6, s7, s4
                  bgeu         t5, a1, 2211f
                  addi         s4, s3, -1894
                  ori          t2, a1, 557
                  ori          tp, s7, 395
                  and          s4, s8, t4
2201:             auipc        gp, 38736
                  sltu         tp, t0, t4
                  xor          s8, a2, s7
                  auipc        a0, 956633
                  auipc        t5, 218002
                  bltu         t3, t2, 2211f
                  beq          s6, s4, 2221f
                  sll          t6, s7, t4
                  srli         s0, s9, 22
                  sra          s5, tp, t4
2211:             add          a4, s6, a2
                  sll          t3, t4, a5
                  andi         s8, tp, 24
                  add          s0, t2, gp
                  or           t4, s1, t2
                  xor          t1, t5, s2
                  sra          s1, a3, s8
                  sltiu        t5, t5, 8
                  srl          a0, t5, a6
                  ori          s2, ra, -290
2221:             bne          s10, zero, 2233f
                  beq          a4, s10, 2231f
                  xori         s1, sp, -45
                  bgeu         a1, t0, 2239f
                  ori          t0, s7, 302
                  beq          s1, t5, 2240f
                  srai         a2, s8, 19
                  sltiu        s2, s7, -244
                  add          t1, a1, s8
                  auipc        s8, 243358
2231:             bgeu         tp, s0, 2241f
                  bgeu         s7, s6, 2243f
2233:             auipc        t5, 797277
                  add          t4, t3, t1
                  xor          s8, s1, t2
                  or           a3, s8, s5
                  xor          t5, sp, s2
                  bne          t6, a3, 2248f
2239:             srl          tp, t3, t6
2240:             and          zero, t4, zero
2241:             slt          a4, tp, s5
                  beq          s0, s7, 2253f
2243:             lui          s11, 215472
                  srl          t4, a5, a3
                  sltu         t3, s6, s5
                  ori          t6, s3, -1278
                  beq          s7, a0, 2264f
2248:             srli         a2, a1, 16
                  sltiu        s5, ra, 173
                  srli         t1, a3, 23
                  slt          a1, s1, a4
                  or           sp, a2, a5
2253:             bgeu         s3, zero, 2258f
                  addi         t5, s10, -1040
                  add          a4, a1, tp
                  bltu         a5, ra, 2264f
                  bne          s5, a5, 2275f
2258:             beq          t4, s11, 2260f
                  srl          t3, t3, gp
2260:             bge          t0, s10, 2261f
2261:             beq          s5, s10, 2269f
                  nop
                  beq          zero, s3, 2275f
2264:             srai         s0, t4, 29
                  blt          a5, s6, 2280f
                  xori         s2, a1, -363
                  lui          s4, 226726
                  beq          a0, a7, 2288f
2269:             lui          s7, 840247
                  xori         zero, a3, 720
                  slt          a6, t6, a2
                  sltiu        t3, s5, 1513
                  auipc        s11, 44876
                  xori         a6, a2, 778
2275:             sub          a2, s3, a7
                  bge          t0, s7, 2278f
                  xor          t4, a7, a7
2278:             srai         s11, a5, 0
                  srai         s3, zero, 22
2280:             auipc        a4, 899392
                  bltu         a1, t4, 2291f
                  addi         s1, gp, 1289
                  sltu         s11, a7, sp
                  slli         zero, s11, 8
                  bge          t0, s9, 2293f
                  ori          a4, t3, 790
                  srai         t3, ra, 10
2288:             lui          sp, 10350
                  bne          a1, s0, 2307f
                  sub          t5, a5, s6
2291:             slt          s5, tp, s8
                  sll          t6, s9, a0
2293:             bge          t3, a0, 2304f
                  bne          s8, a0, 2296f
                  addi         t3, a3, -2006
2296:             and          s5, s0, s10
                  srl          s3, a6, s8
                  add          t0, s4, s6
                  andi         t2, gp, -2030
                  srli         s0, a7, 18
                  sra          s6, a0, s6
                  or           tp, a0, a0
                  sub          s6, s2, s10
2304:             srai         s3, t3, 27
                  sub          t6, s10, s8
                  lui          t4, 388015
2307:             sltiu        s8, s4, -1397
                  lui          s4, 368261
                  lui          sp, 396561
                  and          a6, a0, s6
                  bgeu         t5, s9, 2312f
2312:             sra          s4, ra, tp
                  srai         t5, s1, 22
                  slti         s3, s0, -1057
                  addi         a1, a2, 1912
                  sll          gp, a4, a1
                  addi         s1, s5, -707
                  auipc        zero, 492735
                  addi         ra, s11, -1374
                  beq          t0, a5, 2328f
                  srai         zero, a6, 7
                  slt          a3, s2, gp
                  addi         s4, a6, -1267
                  sltiu        a3, ra, -2043
                  srl          zero, a6, s1
                  la           t2, region_1+1993 #start riscv_load_store_rand_instr_stream_1
                  lbu          s9, -66(t2)
                  lw           t6, -221(t2)
                  lb           sp, -175(t2)
                  lb           a3, -86(t2)
                  add          s11, a2, a6
                  lh           t1, -115(t2)
                  lb           s3, -233(t2)
                  lbu          t6, -103(t2)
                  slt          t1, a4, s9
                  sra          t4, s0, s8
                  srai         a0, s8, 2
                  xori         a0, t2, 1787
                  slli         t4, a2, 12
                  lh           t4, -199(t2)
                  lw           gp, -45(t2)
                  ori          a1, t5, -456
                  sw           a3, -53(t2)
                  sw           zero, -77(t2)
                  xori         t3, tp, -1431
                  xori         s8, a0, -1732
                  sh           a3, -161(t2)
                  slti         t3, s3, 967
                  sb           t1, -251(t2)
                  sub          gp, s5, tp
                  slt          t0, a1, t1
                  sb           t1, -33(t2)
                  sll          s0, zero, s8
                  lbu          tp, -44(t2)
                  lbu          s9, -27(t2)
                  sw           gp, -41(t2)
                  lh           sp, -139(t2)
                  xori         a4, sp, 981
                  add          t5, s10, t6
                  sll          ra, a2, s5
                  lbu          t0, -222(t2)
                  sw           tp, -245(t2)
                  and          s1, zero, a7
                  sb           s5, -172(t2)
                  lbu          t0, -98(t2)
                  sub          s5, gp, a2
                  lhu          tp, -235(t2) #end riscv_load_store_rand_instr_stream_1
                  ori          gp, t2, 1679
                  add          s11, tp, t6
2328:             bgeu         a0, a6, 2331f
                  or           s8, s8, a4
                  slt          a6, s5, a5
2331:             srli         ra, s7, 12
                  srli         s7, s1, 31
                  addi         t4, s4, 1797
                  sltiu        s4, s9, 1041
                  ori          t3, t4, 1100
                  srai         s0, s4, 4
                  sub          t4, t0, t2
                  bge          s8, s11, 2350f
                  srl          s4, a0, t1
                  auipc        sp, 51305
                  beq          s10, s10, 2343f
                  bge          s3, s8, 2350f
2343:             nop
                  sub          zero, t1, t5
                  or           gp, t6, tp
                  lui          s6, 765531
                  bgeu         t2, t3, 2367f
                  andi         s7, t2, -659
                  sub          s6, tp, a4
2350:             and          t1, s4, s4
                  auipc        zero, 317614
                  slli         gp, t1, 5
                  bge          t0, s2, 2367f
                  slti         a3, tp, 511
                  sltu         s5, a1, t1
                  sltu         s4, a5, t2
                  nop
                  xori         s6, a1, 84
                  sll          s2, s11, a3
                  bgeu         t5, tp, 2362f
                  blt          s4, a7, 2371f
2362:             bgeu         a6, s9, 2370f
                  nop
                  srai         s1, t2, 21
                  sll          t6, s6, t2
                  srl          s3, s0, a7
2367:             sll          s0, s9, a4
                  slti         t2, t3, 2022
                  sll          t6, t5, sp
2370:             sll          s11, s7, s11
2371:             bgeu         s4, s2, 2381f
                  auipc        s9, 669637
                  blt          s8, s9, 2383f
                  srai         t0, gp, 11
                  srai         s9, a4, 24
                  beq          a5, s9, 2391f
                  srli         a6, a6, 25
                  sra          s9, s7, zero
                  sltiu        s1, a4, -1597
                  or           t5, s8, t3
2381:             bgeu         s5, gp, 2386f
                  and          s9, ra, t0
2383:             sltu         s5, t2, t1
                  sltu         s4, t1, t5
                  add          a1, s8, s9
2386:             sll          s2, a7, s6
                  bgeu         t5, a3, 2401f
                  bne          s7, s3, 2393f
                  bltu         gp, a4, 2403f
                  sltiu        sp, a0, -342
2391:             bne          t2, a1, 2406f
                  slli         s3, s7, 30
2393:             xor          t1, ra, t2
                  sra          s7, ra, a0
                  sub          gp, s2, a0
                  sll          tp, a7, a2
                  srai         a1, s5, 7
                  srai         s5, t6, 21
                  lui          t3, 480782
                  slti         a2, a0, 831
2401:             slli         s9, s7, 16
                  srai         t5, s1, 21
2403:             sll          s8, s10, t1
                  nop
                  bltu         s6, t4, 2417f
2406:             blt          t3, t4, 2410f
                  beq          gp, s11, 2418f
                  sll          a2, s4, a0
                  slt          s0, s0, s2
2410:             sltiu        s9, s2, 1542
                  slti         a3, a7, -535
                  bne          s10, a2, 2420f
                  auipc        zero, 263445
                  or           s8, t2, t0
                  andi         ra, s2, -1610
                  srl          s5, s8, t6
2417:             nop
2418:             sra          s3, t0, t4
                  bltu         s6, s4, 2428f
2420:             sltiu        t3, a3, 1394
                  sltu         t0, s0, t5
                  srli         s8, s11, 4
                  auipc        s9, 725646
                  xori         ra, t2, 799
                  sltiu        t6, a1, -1934
                  xor          t6, ra, s0
                  bne          tp, a5, 2442f
2428:             bge          s8, s7, 2438f
                  sltu         s1, s8, a4
                  bge          s8, t3, 2447f
                  slli         a0, a5, 18
                  slti         s0, s5, 58
                  srl          s3, s11, s8
                  bgeu         t2, a6, 2439f
                  srli         a2, tp, 29
                  sub          s6, s0, s5
                  slti         t0, a6, -576
2438:             bgeu         t5, a1, 2442f
2439:             addi         t4, a2, -1756
                  addi         t0, t1, 1399
                  xori         s6, s2, 1390
2442:             ori          a6, zero, 1805
                  srai         a6, t4, 29
                  bgeu         ra, sp, 2453f
                  nop
                  sltiu        s11, s1, -957
2447:             slli         t6, t0, 31
                  nop
                  sra          s2, zero, t5
                  slli         t3, s8, 3
                  sltiu        s9, t5, -1252
                  xori         a6, s7, -1758
2453:             lui          s5, 1026181
                  xori         gp, a6, 1913
                  add          ra, t4, t2
                  srl          s8, s3, s8
                  beq          t2, a6, 2468f
                  bltu         s11, s7, 2472f
                  auipc        ra, 341842
                  sub          t4, gp, a7
                  slli         gp, a4, 12
                  sll          tp, s6, s9
                  or           s4, ra, a1
                  sll          t0, sp, a5
                  sll          s0, t6, a7
                  sll          sp, a0, s5
                  blt          s3, a7, 2468f
2468:             xori         gp, s4, -1278
                  sra          t2, sp, a7
                  ori          a1, s6, 698
                  slli         a4, t6, 2
2472:             sltu         a3, t5, tp
                  xor          a0, s7, gp
                  and          gp, ra, sp
                  slti         s4, s5, -717
                  sltiu        t5, s6, 1100
                  nop
                  slli         s0, s9, 26
                  nop
                  sll          sp, t2, s7
                  srli         s7, a0, 26
                  srai         gp, zero, 26
                  srli         s1, a3, 15
                  and          s2, t2, s10
                  sub          t0, a0, t2
                  srai         t1, t4, 19
                  nop
                  sra          t4, t3, a1
                  slti         s7, s2, -1488
                  and          a1, s0, gp
                  sltiu        t2, s7, -1718
                  nop
                  bltu         t4, a1, 2507f
                  slt          a3, s9, t6
                  bge          s9, ra, 2498f
                  add          ra, s5, s10
                  sra          t2, s9, a6
2498:             andi         t3, t1, 1226
                  and          tp, s6, s2
                  add          t0, s5, s9
                  bltu         ra, t3, 2511f
                  sltu         t6, s7, s2
                  slt          a4, a0, tp
                  srl          t3, s7, gp
                  sra          zero, t1, a1
                  bltu         s9, s9, 2524f
2507:             sll          s2, gp, a3
                  or           s9, t1, a0
                  srl          a3, s0, a2
                  xor          s7, s2, t1
2511:             bne          t2, zero, 2526f
                  addi         zero, gp, 636
                  bne          sp, t3, 2523f
                  srl          tp, t4, gp
                  sll          s2, s8, s7
                  sub          a1, s11, ra
                  xor          s1, t3, a7
                  blt          s3, gp, 2523f
                  lui          s6, 439938
                  srl          sp, s5, t6
                  andi         t6, t2, 583
                  addi         gp, a7, 1669
2523:             slli         t1, s3, 28
2524:             blt          t1, t3, 2526f
                  sll          s11, sp, a5
2526:             or           s7, s4, s1
                  sltu         a3, a4, t6
                  add          t2, s7, t5
                  sll          s9, tp, s7
                  slli         gp, s2, 11
                  sll          s8, s10, s9
                  or           zero, s11, a1
                  auipc        t6, 809433
                  auipc        a6, 336294
                  sub          a0, t3, s8
                  sub          s2, t2, s7
                  and          a6, t6, t3
                  bge          s3, s8, 2546f
                  sltiu        s3, tp, 878
                  sll          a6, a6, a3
                  slli         t5, s1, 3
                  bne          t4, s11, 2544f
                  bge          s3, a0, 2553f
2544:             xor          t1, zero, a1
                  lui          s3, 553854
2546:             bge          t1, s11, 2561f
                  xori         gp, s3, -1503
                  srl          zero, sp, zero
                  sra          t4, t6, sp
                  bne          t3, t6, 2561f
                  nop
                  bge          a5, s6, 2572f
2553:             and          t2, s9, gp
                  andi         s2, s6, -1810
                  srl          t4, t6, t6
                  sltiu        s4, ra, -556
                  blt          s4, s9, 2569f
                  slli         a2, s1, 30
                  bge          a1, s2, 2567f
                  srl          zero, s11, a2
2561:             auipc        sp, 752282
                  sll          tp, a3, a7
                  andi         s2, s9, 639
                  lui          a1, 898934
                  ori          s11, t5, -1553
                  srli         s8, t2, 4
2567:             lui          zero, 196993
                  bge          t4, a2, 2576f
2569:             bne          s6, a7, 2583f
                  sll          s1, tp, t6
                  beq          a0, t4, 2581f
2572:             bge          sp, s11, 2589f
                  lui          s7, 572777
                  beq          a7, a0, 2582f
                  xor          s9, s1, a0
2576:             bge          s11, s3, 2588f
                  xor          s3, t2, t5
                  andi         s3, s7, 1528
                  sll          s7, a6, a1
                  beq          s3, t6, 2582f
2581:             sub          s4, s8, zero
2582:             slti         s2, s5, 705
2583:             bne          zero, s5, 2598f
                  sltu         sp, s9, a3
                  bne          s10, s2, 2599f
                  bgeu         zero, gp, 2597f
                  andi         s0, t4, -867
2588:             auipc        a1, 851976
2589:             add          t5, ra, s11
                  or           a1, t4, s3
                  sltu         gp, a2, ra
                  add          s7, t5, t2
                  slli         ra, t3, 26
                  bltu         s9, s8, 2603f
                  srli         s2, a5, 20
                  beq          s10, s9, 2608f
2597:             srai         s7, t5, 14
2598:             and          a4, s5, s10
2599:             bne          s6, t3, 2603f
                  ori          sp, a4, 842
                  lui          s3, 827260
                  nop
2603:             sra          ra, s1, gp
                  xori         a3, s4, 1440
                  addi         s2, t1, 1449
                  sltiu        s8, s4, -592
                  xori         s3, t4, 1142
2608:             xori         s2, a4, 772
                  nop
                  bne          t2, t6, 2618f
                  beq          s10, s9, 2623f
                  bgeu         t1, s9, 2629f
                  sltu         s1, t6, t3
                  add          t5, a6, t4
                  nop
                  sltiu        t5, gp, 1663
                  sll          s11, a5, s11
2618:             srl          s5, s1, s7
                  xor          s3, t0, t5
                  slt          s8, a3, a5
                  bgeu         s0, s4, 2631f
                  or           tp, t6, t5
2623:             bge          s1, s8, 2633f
                  beq          s11, a3, 2639f
                  or           gp, sp, t0
                  addi         s11, a1, 326
                  xori         sp, a1, -1722
                  slti         s7, tp, 1161
2629:             sltiu        t1, a0, 1651
                  sll          s9, t5, a6
2631:             lui          s2, 936112
                  srai         a2, s5, 18
2633:             srl          tp, t5, s7
                  sub          a2, a1, s10
                  bge          zero, gp, 2649f
                  sltu         a6, s8, a7
                  xori         t6, sp, -388
                  and          s11, a0, s9
2639:             sltu         s0, a6, t4
                  blt          gp, s7, 2650f
                  beq          t6, ra, 2649f
                  srai         s4, a1, 30
                  andi         s3, ra, 484
                  slli         t0, a4, 19
                  bgeu         a2, s9, 2653f
                  auipc        s4, 770974
                  srli         a2, s9, 2
                  lui          a1, 410944
2649:             slt          t0, a0, s1
2650:             slt          t3, a6, s6
                  and          s6, a4, ra
                  beq          s2, tp, 2663f
2653:             bne          s8, t2, 2656f
                  srai         gp, s10, 14
                  sub          s0, gp, a0
2656:             blt          s10, s10, 2666f
                  srli         t2, gp, 30
                  bne          gp, a0, 2676f
                  bge          s10, s0, 2664f
                  blt          t3, s1, 2675f
                  xor          s8, a5, t3
                  xor          t6, s8, t1
2663:             sltu         a1, a1, a7
2664:             and          s8, s8, a7
                  srli         s2, s3, 12
2666:             and          a1, s5, t3
                  sltu         s2, s11, a0
                  xori         tp, s2, 538
                  lui          s3, 922674
                  nop
                  slti         t0, s5, -1679
                  bltu         ra, t1, 2686f
                  slti         gp, ra, -357
                  bge          a5, t2, 2675f
2675:             nop
2676:             ori          a1, s4, -1742
                  slt          s7, s3, a6
                  srai         a2, t4, 1
                  srai         a6, sp, 0
                  addi         ra, a5, -885
                  xor          a6, s10, t5
                  ori          s0, gp, -1374
                  sltiu        tp, sp, 110
                  sra          s7, ra, a3
                  auipc        a1, 82773
2686:             bgeu         t2, a5, 2706f
                  lui          t6, 528333
                  srli         s2, t0, 14
                  lui          s9, 854346
                  bge          a3, s2, 2692f
                  srl          tp, s11, s5
2692:             bgeu         gp, s3, 2700f
                  nop
                  andi         s7, s0, 931
                  xori         t5, a1, 333
                  addi         zero, t0, -956
                  sub          t6, a0, s2
                  srli         s6, s4, 27
                  lui          s7, 948378
2700:             slti         s1, s3, 411
                  slli         t2, t4, 5
                  srl          s1, s11, s10
                  sltu         zero, a3, a1
                  sltiu        s11, gp, -1837
                  slti         s11, t3, 594
2706:             bne          a0, a3, 2708f
                  xor          tp, a4, gp
2708:             slti         s0, s5, 206
                  srli         zero, a7, 0
                  auipc        t4, 336013
                  lui          ra, 778431
                  xori         sp, a0, -162
                  bne          t2, s6, 2715f
                  bge          t5, s10, 2719f
2715:             bne          s2, s0, 2730f
                  andi         t5, t0, 1281
                  srai         t2, t6, 26
                  add          s9, s9, s6
2719:             bltu         a2, s9, 2727f
                  blt          sp, t3, 2737f
                  bgeu         s4, a6, 2722f
2722:             add          gp, s7, a1
                  andi         t5, t4, -851
                  sub          s4, s9, a7
                  xor          s5, t5, s2
                  slt          a6, gp, tp
2727:             bgeu         gp, t5, 2747f
                  slti         s7, s8, -1651
                  sltu         s5, s0, a7
2730:             auipc        s0, 143018
                  nop
                  sltiu        tp, a2, 335
                  srli         s1, t0, 8
                  slt          t5, a0, a4
                  slli         s7, a0, 30
                  srli         s6, s3, 9
2737:             bge          t2, s9, 2748f
                  beq          t1, sp, 2753f
                  sra          s2, tp, s0
                  addi         a6, s4, -76
                  xor          gp, t5, a5
                  bne          s7, s5, 2750f
                  sra          gp, s7, sp
                  srai         t6, a4, 17
                  addi         a2, a1, 1327
                  lui          s3, 187690
2747:             bge          t2, a3, 2752f
2748:             blt          s7, s11, 2758f
                  sltu         t3, t0, s2
2750:             sll          sp, a1, s5
                  nop
2752:             andi         a0, s3, 446
2753:             bge          s11, s5, 2755f
                  blt          s3, s4, 2759f
2755:             slli         s1, s3, 29
                  xori         t5, a5, -1309
                  slli         s2, s7, 11
2758:             ori          a6, s9, -1001
2759:             srli         ra, a2, 13
                  slt          gp, s4, s7
                  bge          a0, a1, 2763f
                  nop
2763:             sub          sp, t6, gp
                  srai         t1, s6, 11
                  xor          s4, ra, s0
                  slli         t0, a7, 21
                  sltiu        s2, s10, 1259
                  add          a6, s2, t5
                  srli         ra, s4, 10
                  slti         s1, s11, 1084
                  sltiu        s1, s6, -144
                  auipc        zero, 428036
                  srl          s6, s5, a1
                  lui          t5, 724545
                  sltiu        s1, s10, 796
                  bne          a6, s5, 2780f
                  or           t5, tp, s5
                  slt          t1, t0, t0
                  sra          t1, a0, t6
2780:             sub          s5, s3, zero
                  sltu         s6, a5, t0
                  bge          a5, gp, 2792f
                  sltiu        zero, a4, -200
                  lui          t6, 664985
                  blt          s8, t1, 2794f
                  slt          zero, s11, t2
                  srl          t5, t4, s10
                  blt          a4, t1, 2802f
                  or           s1, t3, t4
                  slt          s4, a0, t2
                  sra          sp, zero, a5
2792:             srl          gp, s6, s2
                  nop
2794:             or           a0, a3, a1
                  bge          s4, t6, 2809f
                  beq          a4, s8, 2807f
                  slt          s0, gp, a6
                  srli         a2, ra, 26
                  andi         s2, sp, 1650
                  sll          zero, s1, tp
                  sltu         t1, s5, t6
2802:             lui          s1, 400167
                  xor          sp, s3, s8
                  xori         t2, t4, 723
                  ori          a6, s4, 1983
                  xori         a0, s0, 1086
2807:             lui          s9, 662870
                  addi         s11, s8, 146
2809:             andi         a3, a7, -1617
                  xori         tp, t2, -1651
                  srli         tp, t0, 21
                  sltu         zero, a5, t3
                  addi         zero, a2, -1315
                  bgeu         a0, s0, 2817f
                  bgeu         t1, t0, 2827f
                  or           ra, s10, s11
2817:             or           t2, s4, t6
                  sltiu        a3, tp, -1593
                  srli         s1, t4, 22
                  sub          zero, t2, s11
                  sltiu        t2, s2, -1985
                  bltu         a7, t5, 2837f
                  bne          t3, a2, 2837f
                  slt          s4, s0, a6
                  nop
                  ori          t3, t1, -574
2827:             blt          s10, s3, 2829f
                  sltiu        s5, s0, -966
2829:             nop
                  or           zero, s3, a5
                  sltu         t5, gp, a3
                  auipc        t0, 513585
                  beq          s5, a2, 2843f
                  sub          ra, s5, sp
                  sltu         s9, s11, s5
                  andi         s5, s9, -16
2837:             and          s8, s4, t0
                  or           s1, t2, s6
                  or           s7, a3, s10
                  sltu         t5, ra, t2
                  add          t5, s9, tp
                  nop
2843:             bge          sp, a0, 2861f
                  and          s6, t1, t0
                  srli         s2, a5, 28
                  or           a6, s10, ra
                  srli         zero, a2, 22
                  auipc        gp, 877472
                  slli         a4, s9, 31
                  srli         sp, a7, 0
                  bge          zero, a2, 2859f
                  ori          s7, s2, -1104
                  ori          ra, a3, 2040
                  sll          s3, t3, t2
                  sltiu        s2, s11, 202
                  slti         a4, tp, -1643
                  bne          s5, a0, 2872f
                  sltiu        t2, s8, 1985
2859:             ori          s11, s0, 1374
                  sra          t6, s10, s2
2861:             srai         s0, s0, 23
                  and          a0, t4, t3
                  ori          s9, a3, 1636
                  bltu         s3, sp, 2876f
                  sub          s6, gp, s0
                  auipc        t1, 770644
                  ori          t0, s10, 769
                  bge          a5, sp, 2876f
                  bltu         t5, s11, 2879f
                  slti         a4, s7, -1632
                  xori         s4, tp, -1005
2872:             sra          a0, s0, s9
                  srl          a2, a2, s8
                  andi         a2, s10, -1544
                  add          a3, sp, s3
2876:             srai         a1, a3, 26
                  sltu         sp, s2, t6
                  srai         a0, t4, 13
2879:             srai         s1, gp, 8
                  beq          a2, s3, 2895f
                  or           a0, ra, t4
                  or           a3, s0, t3
                  sltiu        a2, s0, 1617
                  andi         a0, a5, 817
                  sra          s7, t2, a5
                  bge          s7, s9, 2896f
                  xori         s11, a7, -126
                  xori         a2, t6, -202
                  blt          t2, a4, 2890f
2890:             slti         s9, a4, -477
                  blt          a0, s6, 2894f
                  sltiu        t0, a2, 1589
                  lui          s4, 270921
2894:             and          s8, s10, s11
2895:             lui          t1, 993992
2896:             bltu         tp, s11, 2907f
                  nop
                  nop
                  bne          s4, a4, 2911f
                  slt          a1, t2, t3
                  ori          s0, s5, -1746
                  xor          a1, t1, a5
                  sub          a2, a7, t4
                  andi         t0, a5, 1055
                  auipc        ra, 853928
                  and          t6, s2, a2
2907:             bgeu         a5, s0, 2909f
                  xor          t1, t5, t6
2909:             xor          s8, a6, a3
                  bne          s2, t4, 2925f
2911:             bne          a4, t2, 2928f
                  addi         ra, s0, 394
                  srli         zero, a4, 13
                  sub          s11, a7, s1
                  blt          s9, a1, 2923f
                  ori          s5, s0, -1144
                  xor          s3, s8, s0
                  sra          zero, t1, s9
                  addi         ra, s2, 905
                  slli         s3, s4, 31
                  andi         a4, a5, -617
                  slt          zero, t2, s0
2923:             blt          s0, s6, 2934f
                  or           s8, t4, a4
2925:             bne          s3, a0, 2943f
                  ori          t3, a0, -1649
                  xori         a3, tp, 458
2928:             sltiu        ra, s2, -1080
                  srl          s3, t5, s6
                  slli         ra, gp, 31
                  slti         t0, ra, 310
                  srli         s4, a7, 12
                  xor          t4, t1, s5
2934:             bge          s9, t3, 2948f
                  bltu         a6, a0, 2940f
                  xori         t1, a1, 1189
                  add          s4, s1, a3
                  auipc        a1, 525744
                  auipc        t1, 945406
2940:             bltu         ra, ra, 2952f
                  sltiu        sp, s9, -1576
                  add          s7, a6, s6
2943:             add          a4, a4, s3
                  auipc        s9, 626007
                  slt          s8, t2, s8
                  sll          t4, a5, ra
                  bge          s0, t2, 2961f
2948:             or           t5, a1, sp
                  sll          t4, s6, ra
                  sltu         t3, a5, s10
                  bgeu         t5, s0, 2959f
2952:             sltiu        s8, ra, -2039
                  sltu         gp, a1, a7
                  bge          a5, t3, 2962f
                  or           t3, s2, sp
                  bltu         sp, t1, 2966f
                  xori         s6, gp, 1586
                  bltu         t6, a0, 2978f
2959:             slti         s3, t3, 254
                  blt          a0, t5, 2975f
2961:             sltu         tp, t6, t1
2962:             blt          t1, s5, 2972f
                  or           t0, ra, a4
                  bgeu         s9, s10, 2968f
                  slt          s7, a7, s6
2966:             sltiu        s9, s0, -33
                  sltiu        a1, t5, -866
2968:             sub          a2, a2, gp
                  bgeu         a5, zero, 2974f
                  nop
                  slti         t1, s11, 680
2972:             sltu         s1, s1, s10
                  add          s9, a7, s6
2974:             ori          t2, t4, -406
2975:             slti         gp, t4, -1023
                  add          t1, s3, t1
                  la           s1, region_0+1521 #start riscv_load_store_rand_instr_stream_31
                  lb           t0, 304(s1)
                  ori          sp, s2, 1699
                  sh           a4, -401(s1)
                  lui          s2, 384074
                  lbu          zero, -484(s1)
                  lh           t5, 365(s1)
                  add          t5, s6, a1
                  auipc        s3, 511597
                  sh           t3, -771(s1)
                  lbu          tp, 124(s1)
                  nop
                  lbu          s6, -819(s1)
                  lhu          a0, 271(s1)
                  lbu          s11, -576(s1)
                  add          a6, ra, a6
                  sw           a4, -5(s1)
                  or           t2, s4, a6
                  sh           s9, -443(s1)
                  andi         t4, s2, 902
                  nop
                  lbu          s5, 196(s1)
                  sra          s3, t0, sp
                  sb           s11, -1316(s1)
                  lbu          zero, 474(s1)
                  sh           t1, 449(s1)
                  lb           s9, -368(s1)
                  sh           s6, 101(s1)
                  sltiu        zero, s2, -853
                  sb           gp, -1316(s1)
                  slli         t6, s9, 3
                  sb           s9, 202(s1)
                  lb           a3, -52(s1) #end riscv_load_store_rand_instr_stream_31
                  blt          a5, t6, 2985f
2978:             lui          s9, 399422
                  bgeu         ra, gp, 2993f
                  sltiu        a1, s2, -1223
                  addi         t1, s6, 2001
                  bltu         a6, a0, 2984f
                  bge          s1, s6, 2985f
2984:             auipc        s8, 1040524
2985:             bge          s1, s3, 2995f
                  bltu         s10, s9, 2995f
                  sub          tp, s1, s5
                  bgeu         t1, t0, 2991f
                  slt          t2, a3, t6
                  or           t3, t3, t3
2991:             slt          t4, s4, t4
                  or           s8, t2, t3
2993:             srai         s1, t1, 22
                  bltu         t6, gp, 3009f
2995:             ori          a3, a7, -1410
                  srl          s4, s8, s6
                  nop
                  srl          s4, ra, s3
                  sltiu        a1, s7, -646
                  nop
                  srai         s3, t0, 7
                  xori         a3, s4, 402
                  sltiu        a2, t3, 1331
                  blt          a7, t3, 3012f
                  xor          ra, a4, a1
                  xori         s9, s9, 1484
                  srli         a4, t3, 10
                  sra          ra, s9, s11
3009:             add          s11, s1, s4
                  srl          s4, s1, s7
                  bge          a6, gp, 3031f
3012:             sub          a0, s2, s2
                  bgeu         s7, s10, 3027f
                  sub          s6, s0, a6
                  lui          s8, 572984
                  addi         sp, t3, 603
                  bltu         s11, a6, 3019f
                  bge          t6, t3, 3022f
3019:             auipc        s6, 917263
                  sltu         a3, a7, a5
                  auipc        t3, 32093
3022:             sltiu        s11, sp, 806
                  nop
                  slt          t4, s11, a2
                  sub          s8, a5, s11
                  xori         s7, s7, 377
3027:             srai         s6, s3, 30
                  slti         s4, s7, 82
                  xor          a3, s1, s5
                  la           sp, region_1+567 #start riscv_load_store_rand_instr_stream_20
                  sub          s2, s8, t3
                  xori         s3, s8, 249
                  sll          s9, a3, sp
                  slti         a6, a1, 1387
                  lh           t0, -11(sp)
                  lhu          ra, 15(sp)
                  lh           a1, -13(sp)
                  lui          ra, 189107
                  lb           t4, -10(sp)
                  lb           a3, -4(sp)
                  nop
                  add          t0, t5, a3
                  sb           sp, 16(sp)
                  lb           a1, -4(sp)
                  sra          t4, a2, a6
                  srl          a3, gp, t1
                  lbu          s8, 10(sp)
                  add          a2, t0, zero
                  lb           ra, 2(sp)
                  sb           a2, -16(sp)
                  addi         t2, a4, -1705
                  auipc        s5, 149769
                  slti         a3, t1, -152
                  sb           s3, 1(sp)
                  srai         a4, a3, 2
                  sh           s8, -3(sp)
                  srai         t3, s1, 2
                  lui          s1, 646002
                  sw           t0, 13(sp)
                  lbu          zero, -13(sp)
                  lbu          s7, -7(sp) #end riscv_load_store_rand_instr_stream_20
                  sltu         a1, s7, t6
3031:             slti         s0, t1, 254
                  srai         a4, a1, 23
                  and          zero, t0, t4
                  bne          ra, a0, 3046f
                  addi         s7, s6, 1993
                  or           t6, t6, a1
                  ori          s0, s6, 1613
                  srli         s0, t6, 26
                  blt          s9, a3, 3051f
                  slt          a1, a3, a7
                  ori          a2, s3, 661
                  andi         s8, t2, 1090
                  srai         gp, t3, 13
                  lui          t0, 532811
                  sltiu        s4, t2, -500
3046:             ori          s0, t1, -1555
                  srl          s2, a5, sp
                  ori          s8, a2, -1321
                  srl          t4, a4, a5
                  xor          s6, s10, s7
3051:             beq          s8, a2, 3056f
                  or           ra, s2, a1
                  auipc        s9, 421840
                  srai         a1, s6, 22
                  xori         t6, s9, -1320
3056:             lui          s9, 618268
                  ori          s0, s5, 1382
                  and          s6, s4, s11
                  blt          s4, tp, 3061f
                  srl          tp, s1, a3
3061:             srai         sp, t1, 7
                  auipc        s5, 631989
                  ori          tp, ra, 1348
                  sltiu        tp, ra, 358
                  srai         s7, a4, 11
                  sub          s7, a2, a6
                  or           t6, s7, t4
                  ori          zero, a3, 1964
                  beq          zero, s10, 3074f
                  bne          t1, a1, 3088f
                  or           t0, s6, ra
                  slt          s7, s6, s3
                  srai         zero, a5, 18
3074:             add          a0, s10, tp
                  lui          a3, 857896
                  sll          tp, a7, a5
                  sra          s5, s5, s4
                  xori         s7, a3, -555
                  add          a3, s5, t0
                  or           s2, s7, s11
                  sll          t2, a3, a5
                  andi         s0, s10, 1517
                  xor          s6, t1, gp
                  slt          gp, s1, a7
                  slt          a2, s5, a4
                  nop
                  xor          a0, tp, s10
                  la           t4, region_1+1495 #start riscv_load_store_rand_instr_stream_33
                  lbu          a0, 401(t4)
                  lb           a1, 82(t4)
                  sltu         t2, t4, s3
                  sb           s8, -1102(t4)
                  sub          ra, a4, s10
                  nop
                  lb           t6, -991(t4)
                  ori          s6, s5, 909
                  addi         t1, gp, 1170
                  sb           s2, 147(t4)
                  lb           ra, -756(t4)
                  lbu          a4, -366(t4)
                  srai         t0, t3, 9
                  andi         s8, t0, 208
                  xor          t2, t0, t4
                  sb           tp, 188(t4)
                  lui          a4, 64247
                  sb           sp, -490(t4)
                  xori         s4, a5, 1026
                  slli         s3, t2, 14
                  sb           t6, 441(t4)
                  and          t5, s9, s0
                  lhu          t6, -569(t4)
                  lb           s5, 398(t4)
                  lbu          sp, 110(t4)
                  sb           a5, 443(t4)
                  lhu          a3, -505(t4)
                  lbu          sp, -326(t4)
                  lbu          t6, -19(t4)
                  sb           a6, -915(t4)
                  sb           s7, -987(t4)
                  lb           t1, -688(t4)
                  lbu          a2, 352(t4) #end riscv_load_store_rand_instr_stream_33
3088:             andi         t1, t2, -718
                  bne          t5, tp, 3098f
                  bge          a0, s11, 3098f
                  ori          a0, s11, 165
                  add          zero, t2, a5
                  srli         t1, t3, 20
                  slt          s1, s7, a6
                  nop
                  add          s9, a2, s7
                  bgeu         sp, s1, 3107f
3098:             lui          s4, 243870
                  bge          s3, a5, 3109f
                  lui          s6, 138204
                  slti         a4, tp, -1641
                  sll          s0, s2, a7
                  slli         tp, a1, 31
                  nop
                  srai         gp, s8, 18
                  bgeu         t6, s3, 3108f
3107:             auipc        s3, 1040760
3108:             srai         s6, s11, 21
3109:             lui          a6, 896997
                  bgeu         zero, a2, 3124f
                  and          a3, ra, t3
                  slt          ra, s2, s1
                  sub          t4, t5, s3
                  bge          s4, s0, 3122f
                  slti         s8, a6, -1671
                  xor          t1, ra, a7
                  bgeu         a4, s1, 3134f
                  sub          s6, zero, s4
                  bge          s9, t0, 3133f
                  slt          a0, a1, s9
                  slti         t4, gp, 1536
3122:             sra          sp, s3, s4
                  xor          t3, s3, s11
3124:             or           ra, t1, s4
                  blt          t5, a1, 3140f
                  srl          s4, s5, a0
                  sub          s5, t4, gp
                  beq          t0, t0, 3143f
                  sll          a2, s8, s10
                  bltu         s10, s7, 3138f
                  bltu         t2, s3, 3132f
3132:             addi         s7, s8, 43
3133:             sll          s2, t1, t5
3134:             blt          t5, a0, 3144f
                  sltu         s9, t4, t3
                  sltu         s0, a6, s11
                  beq          s4, a1, 3148f
3138:             slti         ra, a4, 1822
                  sltu         sp, t0, s2
3140:             srl          s0, s9, s1
                  bge          s6, s8, 3152f
                  beq          t2, s8, 3152f
3143:             srai         ra, a4, 30
3144:             ori          a0, s1, -579
                  bltu         t1, s2, 3159f
                  blt          t3, a5, 3154f
                  sltu         s4, a5, s3
3148:             add          t2, zero, s6
                  add          a3, a7, s5
                  bltu         t4, s4, 3158f
                  sltu         a2, gp, s10
3152:             srl          t1, t5, s8
                  addi         s0, s10, -804
3154:             or           s0, s6, a2
                  xor          t1, s5, a7
                  beq          a4, s2, 3158f
                  slti         s5, zero, -1170
3158:             sll          a4, a4, t2
3159:             ori          t4, s11, 1354
                  addi         a1, s8, -1987
                  lui          t3, 385773
                  xori         s6, s10, 2001
                  slli         a6, t6, 13
                  sltiu        s2, zero, 1204
                  xor          zero, s11, t6
                  blt          s7, t0, 3181f
                  srl          t5, t5, s0
                  blt          a2, s4, 3169f
3169:             nop
                  slt          s2, s4, ra
                  or           ra, t3, s0
                  and          a2, t5, s3
                  xor          s3, t3, a4
                  xor          sp, a2, t1
                  beq          tp, t3, 3186f
                  bge          t5, gp, 3191f
                  lui          a1, 81284
                  bge          a7, s4, 3188f
                  sra          a0, s7, t5
                  beq          a3, a3, 3182f
3181:             nop
3182:             slti         t1, t2, -11
                  xori         gp, s4, 1708
                  srai         tp, s0, 28
                  srli         gp, a4, 23
3186:             xor          t3, t5, s1
                  beq          t3, a4, 3201f
3188:             beq          s2, s11, 3196f
                  andi         a2, a4, -1186
                  or           gp, a4, s7
3191:             sll          a4, s2, a7
                  xor          t0, s7, s10
                  add          s6, t6, a7
                  slt          gp, a5, zero
                  srl          s1, a0, gp
3196:             slli         t6, s8, 19
                  ori          s3, t1, -349
                  bltu         s7, t2, 3202f
                  andi         s11, a5, 1757
                  ori          s6, zero, 272
3201:             sltu         t2, t1, zero
3202:             srli         a1, s8, 29
                  sll          ra, t1, a0
                  bne          a1, t5, 3214f
                  addi         s8, t3, 1639
                  bltu         a1, s0, 3221f
                  sra          s7, a0, s3
                  addi         t2, a1, 961
                  sltu         t0, s2, t1
                  xor          gp, t0, ra
                  srai         zero, a0, 6
                  slt          t5, t1, t3
                  auipc        tp, 510443
3214:             srli         t2, a7, 20
                  sltu         ra, a2, a2
                  blt          t0, s3, 3228f
                  xori         a2, s9, -1746
                  bge          t2, s10, 3228f
                  nop
                  srl          a3, s11, s7
3221:             bge          sp, t4, 3232f
                  sra          s8, s4, s4
                  bltu         s5, s4, 3241f
                  blt          s9, a7, 3234f
                  srli         t4, s11, 16
                  slt          s0, s10, s8
                  and          sp, s4, s10
3228:             andi         s1, sp, -478
                  and          s1, a4, a5
                  srli         a2, s2, 19
                  blt          a2, s4, 3245f
3232:             nop
                  sll          s1, s5, ra
3234:             nop
                  sll          a2, zero, ra
                  bne          sp, s3, 3248f
                  bne          s11, s10, 3245f
                  sll          s3, s6, gp
                  sub          ra, s5, s1
                  sltiu        zero, t5, -826
3241:             bge          a6, t0, 3250f
                  xor          s4, s5, s5
                  sra          t1, s10, s3
                  add          a4, t6, zero
3245:             slli         a4, s6, 2
                  bne          s5, s10, 3251f
                  slti         t1, t5, -1037
3248:             nop
                  sltiu        s4, s8, -363
3250:             xori         a6, t6, 1890
3251:             sll          a4, t5, t3
                  srl          t1, a6, a0
                  sltu         s4, s4, s6
                  auipc        ra, 596841
                  sra          t6, s0, a7
                  sltu         s4, a4, a1
                  sltu         s5, t1, a4
                  slli         t0, a4, 29
                  srai         s5, t5, 8
                  addi         s1, s11, -1014
                  nop
                  bgeu         t1, a1, 3264f
                  sltu         a0, s5, gp
3264:             and          s0, s4, s7
                  slli         s4, a1, 9
                  bne          a3, a3, 3286f
                  nop
                  andi         s7, sp, 781
                  sltu         a2, s5, gp
                  and          zero, t4, t0
                  bge          a1, t2, 3288f
                  xor          s6, t0, a5
                  lui          s4, 1003663
                  sltiu        s4, s0, 218
                  slti         gp, s5, -1006
                  xori         t4, zero, -169
                  auipc        t3, 107492
                  sll          s6, s5, ra
                  ori          sp, s5, 338
                  auipc        gp, 893633
                  srl          a0, t0, s6
                  and          sp, a5, t2
                  sll          s0, s4, s4
                  sltu         t0, a3, t0
                  addi         t6, t2, 1881
3286:             sltiu        a3, zero, -1593
                  slt          t1, s5, a2
3288:             andi         s4, s10, 1276
                  slli         t0, a2, 13
                  and          tp, s2, s5
                  addi         s7, t5, -1610
                  srli         zero, s2, 25
                  xor          t5, a1, a4
                  sra          a1, zero, s1
                  bge          a4, t4, 3298f
                  sra          t0, t2, sp
                  srai         a0, a0, 20
3298:             bne          ra, s11, 3303f
                  sltu         s3, s4, t5
                  sra          a4, zero, gp
                  bge          t1, t4, 3321f
                  sll          a3, sp, s10
3303:             bge          s11, a1, 3315f
                  srli         a6, a6, 25
                  lui          s11, 1046683
                  slt          tp, t0, s0
                  blt          s0, sp, 3319f
                  srai         t3, t4, 10
                  srl          a3, a6, s2
                  addi         t3, s7, -1416
                  ori          s7, s2, 1518
                  srli         t6, s6, 25
                  or           t5, zero, a5
                  sltiu        a1, t4, 303
3315:             slli         a6, zero, 1
                  sra          gp, a3, t1
                  srli         s1, s0, 1
                  ori          s4, s11, -432
3319:             sltiu        s4, zero, 952
                  bne          t2, sp, 3325f
3321:             slli         s8, a1, 31
                  slli         gp, t4, 7
                  slti         s1, tp, -692
                  srai         ra, sp, 6
3325:             slli         s11, t0, 6
                  beq          s3, s7, 3343f
                  srli         a0, a1, 23
                  srl          a6, s9, t6
                  blt          s3, s0, 3339f
                  bltu         s0, t2, 3348f
                  xor          a3, a5, t2
                  andi         a1, a4, 1905
                  addi         s5, ra, 88
                  or           t1, t0, sp
                  sltiu        t0, t0, -360
                  sra          a6, gp, zero
                  sltiu        s8, a2, -1363
                  bgeu         s9, gp, 3340f
3339:             slli         t0, s4, 8
3340:             srai         a2, t3, 2
                  slt          a1, sp, t5
                  andi         s8, gp, -1037
3343:             or           t2, a0, s5
                  srli         a2, s0, 13
                  andi         s7, s4, 1352
                  nop
                  bgeu         s0, s7, 3352f
3348:             xori         s8, a4, -494
                  sltu         t3, s1, a6
                  slt          t0, a7, s0
                  slti         a0, s6, -2031
3352:             xor          s5, a5, s11
                  slli         zero, t6, 10
                  sll          t2, s11, zero
                  sra          a0, t1, s8
                  and          t3, s6, a2
                  blt          s6, a5, 3365f
                  sll          s9, s7, s5
                  xori         s8, s6, 1
                  sra          t3, s8, a3
                  nop
                  slli         a0, t2, 11
                  bgeu         t5, t0, 3373f
                  blt          s5, a0, 3378f
3365:             xor          t4, s1, s1
                  srli         t5, ra, 9
                  xori         a1, s1, 388
                  add          s7, a7, s11
                  bltu         s5, s10, 3383f
                  sltu         t4, a1, a5
                  lui          s6, 516375
                  or           s5, s2, t2
3373:             sll          a3, s6, a1
                  nop
                  slti         gp, tp, 1458
                  slt          gp, s11, ra
                  auipc        s1, 548956
3378:             srl          s11, s6, s2
                  nop
                  bge          s7, s2, 3388f
                  slt          s0, t6, t1
                  ori          s8, tp, 1482
3383:             xori         a3, t1, -1761
                  sltiu        sp, t1, -1751
                  sub          a6, t1, s2
                  srli         sp, t2, 9
                  bne          s0, s3, 3390f
3388:             slt          t4, s9, s1
                  or           s7, t3, sp
3390:             or           a1, t3, a4
                  or           gp, a4, a6
                  lui          a6, 396130
                  sub          s6, t4, tp
                  sltiu        a1, t4, 1808
                  auipc        t6, 585110
                  bne          s6, a1, 3398f
                  auipc        s0, 788172
3398:             bgeu         s1, t2, 3413f
                  sltu         t3, s1, s9
                  addi         t2, s7, -427
                  or           s1, t6, s10
                  xori         t3, s11, -1084
                  bge          t3, t4, 3404f
3404:             beq          gp, s10, 3419f
                  bltu         tp, s0, 3414f
                  or           a1, s3, s6
                  xor          t5, s5, ra
                  srai         t3, a7, 14
                  beq          t6, t5, 3419f
                  sltiu        t6, s11, 1494
                  slli         tp, a4, 1
                  or           s1, t1, t2
3413:             sll          sp, t5, s6
3414:             beq          s7, a5, 3425f
                  bgeu         s5, a2, 3419f
                  xor          ra, s4, zero
                  sltiu        t4, t4, 1634
                  slli         s5, s2, 5
3419:             bltu         s9, s10, 3433f
                  xor          zero, t5, a6
                  ori          s9, t1, -671
                  sltiu        s4, zero, 823
                  bgeu         s11, a7, 3431f
                  and          s4, zero, t6
3425:             bgeu         t2, tp, 3440f
                  xori         a4, ra, -649
                  nop
                  bne          t5, s7, 3436f
                  add          t3, s8, zero
                  bne          sp, a6, 3441f
3431:             bgeu         a2, a6, 3433f
                  beq          tp, s9, 3442f
3433:             bltu         t6, s2, 3444f
                  beq          a2, ra, 3442f
                  ori          s11, t3, 995
3436:             andi         t5, s9, 718
                  srai         t0, a1, 30
                  bltu         s1, ra, 3453f
                  andi         tp, ra, 73
3440:             sra          s5, t3, zero
3441:             and          s4, t5, s0
3442:             ori          s4, t1, -1909
                  srli         s5, a7, 30
3444:             blt          zero, t5, 3454f
                  sra          s9, t4, t5
                  srl          a3, s1, s10
                  srai         t3, t1, 27
                  slt          t1, a4, t5
                  srl          t2, s8, s9
                  nop
                  xor          s8, s0, s4
                  bge          a0, tp, 3457f
3453:             sub          s6, a0, s10
3454:             bltu         s10, a1, 3471f
                  srai         s2, s8, 3
                  sra          a4, t6, t1
3457:             bgeu         t1, s2, 3475f
                  auipc        s6, 348549
                  srai         t4, t3, 3
                  addi         s8, s4, -251
                  and          t1, t5, t3
                  srai         a4, s4, 24
                  ori          s1, s3, -1013
                  nop
                  xor          sp, s10, a6
                  sltiu        a1, s9, 1699
                  srai         a6, a7, 19
                  srl          s7, a0, t0
                  lui          a4, 444482
                  slli         s2, t5, 13
3471:             addi         s0, t6, -409
                  nop
                  sltiu        zero, s1, 1615
                  bne          s7, t2, 3484f
3475:             andi         t1, a3, -1626
                  srai         t2, s6, 21
                  lui          s3, 920633
                  sra          s4, t0, t3
                  srai         gp, s0, 18
                  sltiu        t3, t5, 912
                  xor          s2, a2, tp
                  slli         s5, s1, 13
                  sltu         s1, s9, a5
3484:             and          s7, a5, ra
                  ori          a2, s0, -327
                  slti         s0, a7, 1674
                  xori         a6, zero, -1114
                  slli         s7, s3, 28
                  srli         s9, s5, 13
                  srai         s5, t2, 14
                  slt          t2, s5, s8
                  bge          t4, s7, 3500f
                  sub          s6, a7, a2
                  sltu         t3, a0, gp
                  or           gp, s0, a6
                  sltu         t6, sp, a5
                  slt          zero, t0, s0
                  bgeu         s0, t0, 3506f
                  srli         s5, s3, 2
3500:             beq          t6, a7, 3501f
3501:             sll          a6, s2, sp
                  sll          tp, s4, t3
                  auipc        a6, 392597
                  srl          t1, t3, tp
                  andi         s8, s10, -1620
3506:             sltiu        s8, t4, 524
                  ori          s9, a2, -30
                  sra          t3, ra, s7
                  bgeu         s11, a5, 3518f
                  slli         s8, s4, 16
                  sub          a2, s2, ra
                  slt          s8, ra, t5
                  andi         s4, t0, 198
                  slti         t2, s10, -1620
                  beq          a0, ra, 3525f
                  or           s7, s3, s1
                  srl          a3, a4, s7
3518:             blt          s4, a3, 3532f
                  andi         t0, t4, -189
                  add          s2, t4, s8
                  lui          s8, 38147
                  slt          ra, s11, zero
                  addi         s0, t5, 710
                  bgeu         a5, a5, 3529f
3525:             sub          t0, gp, a5
                  lui          t0, 814595
                  sll          tp, s5, a6
                  auipc        a0, 412569
3529:             sltu         s0, t5, a3
                  andi         t4, t0, 446
                  slti         s1, t1, -761
3532:             slli         a3, s0, 19
                  sltiu        s8, t5, -895
                  blt          a5, gp, 3554f
                  ori          s0, s8, -1706
                  slli         zero, s1, 2
                  nop
                  add          ra, a7, a0
                  add          s11, tp, s5
                  bgeu         s6, s1, 3554f
                  bge          a7, s3, 3556f
                  bltu         s4, s11, 3544f
                  sltiu        a0, s7, -946
3544:             srl          a3, a0, tp
                  xori         s4, a7, 1609
                  sltu         a4, a7, a1
                  slt          s6, s3, ra
                  add          a6, s10, s9
                  sll          gp, a6, a4
                  bgeu         sp, zero, 3562f
                  addi         t0, s8, -864
                  ori          s6, t1, 1212
                  ori          s4, s2, -688
3554:             sub          t2, s5, s9
                  beq          t6, s11, 3558f
3556:             xori         a3, s6, 1173
                  auipc        s8, 251419
3558:             bltu         s3, t1, 3562f
                  nop
                  beq          t4, s0, 3574f
                  sra          s3, a6, s1
3562:             srai         t2, s9, 3
                  auipc        t2, 419318
                  srl          s0, t5, a0
                  bltu         t6, s9, 3573f
                  sub          t4, tp, t4
                  nop
                  nop
                  sltu         gp, s3, a5
                  add          t4, a3, s3
                  beq          a0, s2, 3582f
                  blt          t2, s3, 3584f
3573:             bge          s9, a3, 3583f
3574:             sra          a0, s7, s3
                  addi         s4, gp, -703
                  slti         t2, sp, 332
                  sra          s8, s7, sp
                  xor          sp, ra, tp
                  sltu         t3, tp, s2
                  blt          t4, t0, 3595f
                  bgeu         s6, a3, 3583f
3582:             sub          s0, s4, s6
3583:             bgeu         s5, t0, 3585f
3584:             xori         s4, s6, 109
3585:             ori          zero, a0, -865
                  sltu         s8, t0, t0
                  or           a4, t4, gp
                  blt          s4, s4, 3603f
                  sll          s6, gp, s11
                  sub          a1, t3, s10
                  sltu         gp, s8, s3
                  slti         tp, a7, 373
                  slli         zero, s9, 0
                  add          a0, t4, zero
3595:             sltiu        sp, t1, -553
                  bne          a6, s4, 3601f
                  sltiu        s9, s7, -1395
                  lui          zero, 915581
                  or           s11, a0, s9
                  bgeu         t2, a2, 3617f
3601:             srai         a0, s2, 3
                  sub          zero, s2, a6
3603:             blt          tp, a5, 3611f
                  addi         t4, s6, 530
                  sll          s6, s10, t6
                  slli         s0, s1, 17
                  sltu         t1, gp, a1
                  sll          t4, gp, s11
                  xori         s9, ra, -1724
                  addi         tp, s6, 1809
3611:             beq          s6, a1, 3625f
                  xori         s3, s8, -984
                  auipc        t6, 113865
                  blt          s9, s7, 3619f
                  beq          s2, s4, 3623f
                  sub          t0, gp, a4
3617:             beq          a2, a4, 3632f
                  slli         a1, s0, 25
3619:             slti         t4, s5, -687
                  slt          s4, t2, s4
                  lui          t2, 794216
                  beq          gp, a7, 3626f
3623:             slti         s3, a2, -508
                  sra          a0, a0, t5
3625:             bge          a0, s5, 3637f
3626:             andi         s7, a2, 811
                  sra          gp, sp, ra
                  xor          s6, s6, a4
                  ori          zero, s6, -1694
                  nop
                  bge          s1, t5, 3643f
3632:             srai         gp, a2, 25
                  bltu         s5, t0, 3635f
                  bge          s4, t1, 3652f
3635:             add          t4, t5, a6
                  xori         zero, a5, -1035
3637:             auipc        a4, 522713
                  andi         s1, s4, -1423
                  xor          s9, ra, ra
                  beq          sp, a5, 3650f
                  sub          s8, ra, t6
                  or           a3, a0, s0
3643:             bge          t6, s4, 3657f
                  addi         t2, s8, 1098
                  add          t5, a2, t1
                  sub          a4, gp, t6
                  nop
                  xor          a2, s7, t2
                  xor          tp, t6, a0
3650:             sll          a2, t2, s9
                  srai         s1, a6, 20
3652:             auipc        a3, 349419
                  slti         a2, t4, 776
                  bgeu         s4, tp, 3662f
                  auipc        s7, 760814
                  blt          t3, t5, 3657f
3657:             sll          a3, s6, a0
                  sra          t3, s7, a0
                  andi         a0, ra, 1294
                  sltiu        s9, tp, -1883
                  and          a0, s8, t4
3662:             slli         s2, sp, 5
                  xori         t3, sp, -1539
                  xori         gp, s11, 1502
                  bltu         a6, a3, 3674f
                  sub          s6, a4, s5
                  beq          a5, t4, 3669f
                  srli         s7, a4, 28
3669:             nop
                  bge          a1, s11, 3681f
                  slti         a1, s9, 871
                  bne          zero, t2, 3682f
                  blt          t5, t1, 3687f
3674:             sltiu        s1, a0, -605
                  sltiu        t1, s3, 119
                  sltiu        s4, t1, -1218
                  and          s5, tp, a3
                  xor          s3, s1, a3
                  sub          t0, t3, s3
                  and          s1, zero, t0
3681:             bge          t0, a5, 3701f
3682:             bge          a2, s11, 3692f
                  srl          s7, s8, s9
                  auipc        sp, 667613
                  sll          sp, s5, s3
                  addi         a3, s8, 1258
3687:             andi         t5, t3, 1433
                  srl          t2, s5, s1
                  bge          t4, t2, 3700f
                  sll          s3, s2, s0
                  sub          s0, t3, s1
3692:             xori         s0, s3, 1929
                  bge          s7, a4, 3696f
                  sra          tp, t1, s8
                  slli         a6, a3, 4
3696:             auipc        t4, 142374
                  addi         s6, a3, -1784
                  bgeu         s10, a4, 3706f
                  addi         ra, t3, 628
3700:             beq          sp, s10, 3702f
3701:             bge          a6, s1, 3711f
3702:             bgeu         gp, a0, 3717f
                  ori          a6, t4, -195
                  slli         t4, a3, 5
                  sltu         s6, t1, s11
3706:             auipc        tp, 847353
                  nop
                  auipc        s1, 305104
                  sub          a0, a2, zero
                  srl          ra, s7, a0
3711:             auipc        s2, 414990
                  sltiu        ra, gp, 324
                  bltu         gp, s4, 3733f
                  nop
                  srli         s3, zero, 24
                  sra          a6, a3, a7
3717:             sltiu        ra, a1, 80
                  slli         a6, t3, 0
                  bne          s8, a5, 3727f
                  sltu         s6, s3, a1
                  srl          a4, t1, zero
                  xori         s1, sp, 1964
                  bge          s6, s4, 3735f
                  sltu         t1, s5, s10
                  blt          s0, sp, 3736f
                  bgeu         t3, s6, 3744f
3727:             andi         s9, t4, -1685
                  lui          s11, 966718
                  and          tp, s7, a2
                  slt          a4, a0, s9
                  bne          s0, t0, 3739f
                  bge          t6, a7, 3742f
3733:             beq          tp, s9, 3747f
                  and          s1, zero, s4
3735:             sltiu        a1, gp, 157
3736:             srli         t0, s7, 4
                  sll          ra, a3, zero
                  sub          t6, a3, tp
3739:             slti         sp, t3, -1649
                  bgeu         s4, t2, 3752f
                  beq          a3, s9, 3749f
3742:             slti         a6, s4, -1103
                  slti         s1, s8, -497
3744:             sltu         s9, s2, s6
                  sll          s4, t2, s4
                  auipc        gp, 212301
3747:             sra          t4, ra, s1
                  bgeu         s10, zero, 3751f
3749:             sltu         a2, s2, s11
                  and          sp, a4, t6
3751:             srli         a4, t3, 18
3752:             bgeu         t0, t1, 3757f
                  and          ra, t2, a1
                  ori          s5, s6, 1244
                  sltiu        a0, t3, 142
                  sltiu        s3, s9, 12
3757:             beq          s4, a3, 3767f
                  lui          t1, 135682
                  and          t2, a4, a7
                  bne          s2, t3, 3768f
                  beq          t2, s5, 3775f
                  sltu         zero, a3, t4
                  slti         t4, t2, 185
                  beq          a5, s6, 3768f
                  bgeu         tp, a2, 3766f
3766:             bge          ra, a6, 3768f
3767:             or           s3, tp, a7
3768:             or           t4, a0, a5
                  bgeu         t2, a4, 3771f
                  slti         s7, s3, -680
3771:             andi         s8, zero, -303
                  sra          t2, s10, a2
                  srli         s0, a3, 7
                  slt          zero, a2, s9
3775:             lui          a3, 173237
                  xor          s0, gp, t2
                  sll          t4, t1, a3
                  bgeu         a5, s0, 3780f
                  sra          t3, t4, s4
3780:             xori         s9, t1, 495
                  bgeu         s9, t1, 3790f
                  slti         s3, a1, 1886
                  add          a4, t3, s11
                  srl          a1, s11, ra
                  add          s11, a4, a6
                  or           s4, t0, s6
                  srl          s5, a7, a6
                  slli         s6, a7, 10
                  srli         a0, t4, 6
3790:             nop
                  srai         s11, gp, 27
                  bgeu         a7, ra, 3806f
                  srli         s0, a3, 9
                  srai         s8, s7, 5
                  srai         s2, a4, 6
                  and          sp, t3, s5
                  lui          t3, 362006
                  bne          s6, a6, 3813f
                  or           a0, a5, a6
                  andi         ra, a4, -197
                  nop
                  andi         a1, t2, -1273
                  sltiu        s9, t1, -1054
                  and          tp, a3, t2
                  blt          a7, t0, 3815f
3806:             sub          s5, s11, s6
                  srli         s2, s8, 28
                  sub          s4, s5, s8
                  slt          a3, a1, t3
                  slti         s9, t2, 1000
                  xori         ra, tp, -1644
                  beq          s9, a2, 3827f
3813:             and          t0, s11, s3
                  sub          s5, ra, t6
3815:             add          t5, sp, s8
                  bltu         sp, t4, 3821f
                  bltu         t1, a1, 3832f
                  srai         s7, gp, 23
                  slli         ra, s3, 19
                  srai         a4, a2, 12
3821:             bgeu         s10, s2, 3838f
                  bgeu         a3, gp, 3832f
                  addi         t4, a1, -285
                  auipc        s7, 974691
                  add          t1, t5, tp
                  and          t2, s11, s7
3827:             xor          s9, s9, a2
                  add          s0, s5, s2
                  bltu         s1, s2, 3840f
                  or           s0, s6, ra
                  and          s7, s6, s0
3832:             srl          s3, s2, t5
                  andi         tp, s6, 896
                  bne          a4, t0, 3849f
                  auipc        a4, 368651
                  slt          a0, sp, a4
                  or           s11, zero, a5
3838:             xori         t3, a0, 58
                  slti         gp, a4, 485
3840:             blt          s11, zero, 3841f
3841:             and          a1, a7, t1
                  sll          a0, s2, t2
                  sub          s11, sp, a4
                  ori          t2, s5, 560
                  or           zero, a7, t0
                  auipc        t6, 21516
                  auipc        s7, 741069
                  addi         t0, a6, -729
3849:             sltu         a1, s1, s9
                  bgeu         tp, a3, 3858f
                  sltu         a1, s7, t1
                  bge          t5, t5, 3856f
                  bgeu         a5, a1, 3873f
                  blt          a3, ra, 3857f
                  lui          a6, 710330
3856:             slt          tp, sp, s4
3857:             bltu         t3, t0, 3868f
3858:             slt          t4, s6, sp
                  xori         s6, t2, -759
                  sltu         s6, s1, t6
                  ori          s2, sp, -897
                  xor          t6, gp, a4
                  bgeu         s3, s6, 3872f
                  add          s9, t2, s0
                  slt          t4, s3, a0
                  beq          zero, s10, 3878f
                  srl          a3, s2, t1
3868:             xori         t6, a3, 876
                  blt          t6, s11, 3879f
                  beq          t1, t1, 3878f
                  add          s2, s2, s5
3872:             andi         a3, t5, 681
3873:             nop
                  bltu         s6, sp, 3882f
                  blt          sp, s8, 3885f
                  and          t1, s4, s3
                  addi         t6, a0, -1106
3878:             beq          a6, t3, 3880f
3879:             beq          t6, s1, 3893f
3880:             srl          s7, tp, s3
                  bge          gp, ra, 3892f
3882:             or           tp, s1, t5
                  auipc        a1, 683645
                  slli         t1, a4, 30
3885:             beq          t5, s2, 3899f
                  bltu         s4, t0, 3896f
                  sub          s4, a4, t4
                  auipc        a3, 727076
                  slt          s3, s5, s5
                  slti         zero, sp, -1280
                  addi         s3, s9, 1374
                  la           sp, region_0+1600 #start riscv_load_store_rand_instr_stream_8
                  ori          s0, a0, -262
                  add          t6, t0, a1
                  auipc        s2, 347278
                  sh           s1, -108(sp)
                  xor          s9, a1, a5
                  sub          zero, s0, a4
                  sb           t1, -169(sp)
                  and          t5, ra, a4
                  lbu          ra, -66(sp)
                  lb           gp, -36(sp)
                  sb           s2, 72(sp)
                  sll          t4, a6, a3
                  lb           t5, 3(sp)
                  auipc        a1, 43546
                  lb           gp, 167(sp)
                  lb           zero, 115(sp)
                  sh           s6, 170(sp)
                  and          a3, ra, s7
                  lbu          s4, -219(sp)
                  srl          a4, s11, s7
                  lb           a1, 158(sp)
                  slli         s4, gp, 28
                  sra          t4, s8, t3
                  lb           s0, 185(sp) #end riscv_load_store_rand_instr_stream_8
3892:             slt          a1, tp, s3
3893:             nop
                  ori          zero, a4, -44
                  beq          a0, sp, 3910f
3896:             xor          a3, s9, sp
                  bgeu         s10, s3, 3914f
                  add          s5, sp, a4
3899:             sra          s7, s6, a3
                  addi         s11, s8, 105
                  bge          a1, a5, 3903f
                  slli         s9, t0, 27
3903:             srli         a1, s0, 0
                  bge          a2, a5, 3906f
                  xori         a2, t6, -1846
3906:             sltiu        t5, s2, 992
                  or           t4, t6, t3
                  bge          s3, zero, 3923f
                  add          t5, s4, s10
3910:             sltiu        s6, t1, -21
                  srli         s2, t2, 31
                  slt          t0, tp, s8
                  sra          a1, a5, a4
3914:             lui          s0, 697212
                  sltu         s7, zero, s3
                  lui          s3, 584387
                  and          a1, s9, s1
                  add          a1, t3, t0
                  add          t5, a2, t6
                  lui          s7, 165737
                  andi         gp, a0, -1217
                  or           a4, ra, ra
3923:             srli         t0, a4, 23
                  xor          sp, t6, s3
                  sltu         tp, s8, a6
                  andi         t3, a4, -766
                  slli         s6, t5, 28
                  andi         t2, s4, 995
                  lui          a0, 731941
                  auipc        a3, 489319
                  blt          t3, t6, 3943f
                  slti         s6, t5, 1106
                  auipc        a6, 173461
                  slti         a6, a5, 1220
                  sub          s9, s1, a4
                  xori         t1, t4, -250
                  or           a0, s10, s11
                  xor          a2, s3, a2
                  blt          s7, a3, 3953f
                  sltu         a6, s8, t2
                  bltu         t2, t0, 3946f
                  srl          sp, t2, s1
3943:             andi         a0, t0, 74
                  sub          tp, s2, s6
                  beq          s1, a6, 3963f
3946:             bgeu         a5, t1, 3954f
                  sra          a3, s8, t6
                  sltu         a0, t4, t1
                  la           s4, region_0+1993 #start riscv_load_store_rand_instr_stream_9
                  xor          s0, t4, t3
                  sb           s3, -194(s4)
                  lbu          sp, -71(s4)
                  sub          s6, s4, zero
                  sb           a7, -14(s4)
                  srl          t4, s3, tp
                  sb           t6, -221(s4)
                  sb           t2, -220(s4)
                  addi         a4, gp, 393
                  lui          s6, 653181
                  lb           s1, -156(s4)
                  lb           t2, -215(s4)
                  srai         s2, a7, 2
                  sb           s0, -110(s4)
                  sb           zero, -188(s4)
                  lb           s6, -2(s4)
                  lh           a2, -5(s4)
                  slt          t4, t6, t1
                  slti         s3, a5, 1973
                  sh           s5, -171(s4)
                  srli         t1, ra, 6
                  sll          t2, a7, t6
                  lh           s9, -23(s4)
                  sb           zero, -160(s4)
                  lb           ra, -67(s4)
                  lb           t4, -17(s4)
                  lb           zero, -176(s4)
                  lhu          a4, -229(s4)
                  lbu          a1, -86(s4)
                  lh           s11, -211(s4)
                  sb           a4, -236(s4)
                  lb           a0, -193(s4)
                  sb           tp, -22(s4)
                  sb           a5, 1(s4)
                  lui          s5, 103153
                  sll          s9, t2, s4
                  lui          s5, 203466
                  lbu          s7, -68(s4) #end riscv_load_store_rand_instr_stream_9
                  bne          s11, s6, 3954f
                  slt          a6, s5, s2
                  sra          s6, gp, s6
                  sll          a1, t0, s9
3953:             blt          s5, tp, 3963f
3954:             sll          t4, s7, s5
                  bne          t2, s3, 3960f
                  bne          s7, t6, 3964f
                  and          s5, ra, s10
                  and          a0, s2, t5
                  sra          a0, sp, s3
3960:             blt          ra, zero, 3974f
                  beq          sp, s0, 3981f
                  slli         s0, t4, 24
3963:             nop
3964:             sub          s7, t6, s4
                  srai         s7, t0, 11
                  andi         a0, t3, -1704
                  addi         s8, s8, 874
                  sra          s2, t2, s1
                  add          s4, gp, s6
                  bne          ra, t5, 3980f
                  nop
                  and          tp, s2, t4
                  ori          s1, t3, 1006
3974:             ori          t6, t1, -960
                  nop
                  lui          a3, 406288
                  sll          s9, sp, s2
                  andi         ra, a2, -247
                  bgeu         t3, a4, 3989f
3980:             lui          zero, 194286
3981:             ori          a2, t5, -921
                  slli         t5, s4, 24
                  lui          s7, 248594
                  andi         s2, s8, 1202
                  addi         t2, t4, -391
                  lui          t0, 987209
                  slt          a1, a4, s8
                  sll          t6, a3, a6
3989:             slti         s0, ra, -576
                  sll          t1, zero, t6
                  beq          tp, a0, 3993f
                  srl          t0, sp, t5
3993:             srli         t5, s7, 8
                  sltiu        t3, s5, -1917
                  bgeu         s5, s10, 4010f
                  srl          s7, s11, t0
                  add          s11, s10, s7
                  or           s5, t1, t6
                  xor          a4, a5, tp
                  srai         s5, s3, 0
                  ori          a2, a0, -1737
                  nop
                  srai         gp, s4, 16
                  nop
                  or           a0, t2, s7
                  slli         a6, a1, 13
                  slti         s7, sp, -151
                  bne          a1, a5, 4016f
                  beq          s2, t0, 4011f
4010:             nop
4011:             sltiu        s4, s4, -881
                  xor          s3, gp, s6
                  beq          a7, s0, 4028f
                  beq          a1, s4, 4018f
                  sll          a4, tp, t3
4016:             nop
                  ori          s1, a2, -2030
4018:             andi         s4, s10, -354
                  bge          tp, ra, 4028f
                  srl          a2, s3, a4
                  and          s1, s0, t4
                  xori         s6, s6, -418
                  lui          a4, 261945
                  bltu         s1, a2, 4041f
                  xor          ra, t5, a2
                  slt          s9, s8, t0
                  bge          zero, a6, 4037f
4028:             beq          s2, s9, 4036f
                  bne          s1, t5, 4041f
                  xori         a4, ra, -409
                  xori         a1, s2, -1149
                  lui          t6, 708604
                  sltu         sp, s5, t5
                  bgeu         s1, zero, 4035f
4035:             slt          t6, a7, s1
4036:             sll          s3, ra, a1
4037:             bne          t4, gp, 4040f
                  sltiu        t4, a2, -1440
                  slt          gp, t3, a0
4040:             slli         t6, zero, 10
4041:             srli         s4, s8, 20
                  bne          s1, s7, 4056f
                  bltu         s9, s6, 4054f
                  srl          a3, s6, gp
                  srl          a1, t0, t2
                  beq          t1, a0, 4054f
                  bgeu         ra, s0, 4059f
                  add          s4, t4, t5
                  bne          a1, t3, 4051f
                  and          s11, s6, a5
4051:             sltu         s7, s10, s8
                  bge          zero, a0, 4062f
                  addi         a2, s0, -830
4054:             slli         t5, t5, 6
                  sub          a0, s5, s3
4056:             lui          t0, 367100
                  slli         s9, t2, 24
                  lui          ra, 728479
4059:             sra          s9, s11, s0
                  xori         s5, s0, 1169
                  xori         s11, a2, -1981
4062:             blt          t1, sp, 4073f
                  or           s7, tp, gp
                  slti         a2, s0, -707
                  andi         t4, t6, -1367
                  slli         t6, s3, 27
                  sll          t2, a1, a6
                  bne          a5, gp, 4083f
                  beq          s9, a3, 4074f
                  blt          a1, ra, 4088f
                  addi         s9, s11, 1294
                  sub          a4, zero, s9
4073:             auipc        tp, 308809
4074:             slli         s9, t5, 22
                  srli         s6, t1, 25
                  bne          t2, t0, 4090f
                  ori          a1, s5, -2023
                  xori         s8, a4, -1583
                  addi         a2, t0, -113
                  or           t6, a6, a5
                  srli         s0, a5, 5
                  auipc        a0, 861241
4083:             sltiu        gp, t4, 1476
                  lui          s4, 100801
                  or           a2, s9, s11
                  andi         sp, s6, -22
                  blt          s1, s1, 4102f
4088:             auipc        tp, 226429
                  lui          s2, 524625
4090:             slt          a2, s9, a1
                  xor          s7, s4, s9
                  xori         ra, a3, 2001
                  nop
                  add          gp, s9, a5
                  srl          s9, t0, tp
                  slt          t4, ra, t2
                  and          s7, t3, s5
                  sub          ra, s8, a4
                  slli         sp, a2, 29
                  bgeu         sp, a2, 4105f
                  bne          t1, t1, 4119f
4102:             sll          t5, t6, a7
                  sub          gp, a6, t2
                  slli         t2, a1, 1
4105:             blt          t2, t3, 4119f
                  add          t5, s1, s7
                  beq          a4, t0, 4119f
                  add          a4, s2, t4
                  nop
                  bge          a0, t3, 4121f
                  addi         t6, ra, -758
                  or           t0, t0, gp
                  bltu         s8, a4, 4133f
                  and          s11, a2, a0
                  bge          a7, t1, 4126f
                  lui          t1, 738857
                  sltu         s2, a1, s2
                  blt          a5, s0, 4120f
4119:             or           s8, s3, s5
4120:             bltu         s2, s2, 4122f
4121:             xor          t2, s1, s3
4122:             and          ra, a1, s6
                  srai         a4, ra, 9
                  bgeu         a1, a1, 4132f
                  xori         t2, a2, 187
4126:             ori          s2, ra, -1628
                  beq          t6, a5, 4136f
                  xor          t1, s2, zero
                  srai         s9, a3, 3
                  beq          a0, zero, 4138f
                  sll          a1, s1, s4
4132:             sltu         sp, ra, t5
4133:             sub          a2, t2, s0
                  or           t3, a6, s11
                  or           t3, gp, s8
4136:             and          t0, s11, a4
                  bne          s8, a2, 4152f
4138:             lui          s7, 47608
                  xori         s5, t5, -94
                  addi         s6, s9, -7
                  add          s5, tp, zero
                  sra          a4, t1, zero
                  sll          t4, ra, gp
                  blt          a7, t1, 4154f
                  bltu         s4, s6, 4159f
                  sltu         s0, a2, t5
                  xori         a4, t2, 875
                  add          s9, tp, s8
                  add          a0, s0, a6
                  bltu         tp, s11, 4160f
                  srai         s2, zero, 28
4152:             srai         t0, s1, 22
                  xori         tp, a2, -594
4154:             slti         s0, s6, -335
                  slti         a6, tp, -1913
                  xor          s8, s4, t5
                  srai         s7, t1, 27
                  slti         gp, s0, 1389
4159:             srai         s2, a0, 5
4160:             slt          s4, t3, t4
                  xori         a0, t0, -715
                  srli         s3, s4, 10
                  nop
                  lui          s3, 719019
                  blt          a5, t3, 4182f
                  slli         tp, s2, 26
                  addi         zero, t1, -1638
                  lui          s0, 456261
                  sll          sp, a6, a2
                  sltiu        s1, a3, -131
                  bge          s6, a5, 4181f
                  lui          s5, 787127
                  sll          a3, sp, s2
                  xor          s8, s7, s7
                  srl          s6, s1, s11
                  blt          t2, t5, 4180f
                  bne          s4, s5, 4182f
                  bltu         t3, a3, 4179f
4179:             srli         a1, s9, 10
4180:             auipc        a6, 1035924
4181:             bltu         s9, s7, 4193f
4182:             slli         t0, s10, 21
                  xori         t3, tp, 216
                  andi         s2, s5, 17
                  slti         s3, t6, 1977
                  slti         s5, gp, -1552
                  bne          a5, a7, 4202f
                  slli         sp, zero, 18
                  ori          gp, a1, -1127
                  sll          s0, s10, a3
                  slti         s7, s10, -693
                  srli         t5, s0, 27
4193:             srli         s11, t4, 28
                  blt          a3, tp, 4202f
                  and          s8, a6, sp
                  beq          s11, s4, 4198f
                  srai         t0, s2, 19
4198:             bne          t5, s1, 4208f
                  sra          gp, s7, s3
                  add          a1, t4, t3
                  nop
4202:             addi         a6, s10, 1235
                  bltu         s4, t1, 4211f
                  blt          t6, a5, 4207f
                  xori         s7, t5, -1919
                  nop
4207:             sltu         a4, a2, zero
4208:             srli         s9, s9, 15
                  sll          a2, s2, s7
                  srl          s2, ra, t1
4211:             bge          s2, a1, 4225f
                  bne          s1, t5, 4224f
                  srai         t2, t1, 11
                  bne          a2, s3, 4215f
4215:             nop
                  addi         s4, a2, 1624
                  nop
                  ori          t6, t0, 655
                  bge          t0, s10, 4233f
                  beq          sp, s2, 4230f
                  lui          a6, 140960
                  andi         s4, tp, -1046
                  sub          s0, t0, s8
4224:             ori          t6, s6, -895
4225:             srli         zero, a2, 6
                  addi         a6, t2, 428
                  beq          s7, s2, 4242f
                  sltu         s4, sp, a1
                  sltu         a2, a6, a7
4230:             bge          a5, s3, 4234f
                  ori          s0, a4, -574
                  sra          a6, s5, a2
4233:             srl          tp, t6, a2
4234:             or           s1, a6, t3
                  blt          a5, s7, 4245f
                  srai         a6, s6, 21
                  srai         s8, s2, 26
                  sll          t2, a7, t3
                  slti         s5, sp, 1059
                  slti         gp, t6, 574
                  and          s5, ra, a3
4242:             xor          s3, t5, t0
                  bne          t5, s6, 4253f
                  slti         t4, s3, 20
4245:             ori          t0, s0, -1717
                  xor          s2, s4, ra
                  bltu         s8, gp, 4262f
                  srai         t0, a1, 20
                  slt          t5, a6, s0
                  srl          t2, t0, t5
                  sra          t1, a3, t2
                  bgeu         s9, a1, 4254f
4253:             blt          a1, t6, 4268f
4254:             or           t0, t2, s3
                  sll          s9, a7, t1
                  addi         a3, s0, -889
                  auipc        t4, 816824
                  add          ra, sp, s4
                  srai         gp, t0, 17
                  addi         t0, t6, 894
                  blt          t6, s5, 4279f
4262:             and          ra, sp, s3
                  bge          s0, s6, 4275f
                  auipc        t2, 255268
                  sra          s7, zero, zero
                  bltu         s8, a1, 4275f
                  srai         t0, gp, 30
4268:             auipc        s5, 345259
                  slt          s3, s8, s8
                  blt          zero, sp, 4272f
                  bne          a1, s6, 4282f
4272:             slt          s3, s0, a0
                  or           sp, s7, gp
                  srai         s3, a0, 14
4275:             bgeu         a7, a6, 4283f
                  andi         zero, s4, -307
                  nop
                  add          s7, a0, a7
4279:             xori         s3, tp, 1284
                  beq          a6, a7, 4288f
                  add          s5, s3, s1
4282:             xor          s7, t4, s3
4283:             add          a2, a7, s9
                  or           s2, a3, a5
                  beq          t2, gp, 4295f
                  sll          s0, s3, tp
                  sra          t4, s1, s10
4288:             lui          t1, 207544
                  bgeu         ra, s7, 4292f
                  blt          s8, tp, 4304f
                  or           sp, s1, s0
4292:             and          s5, zero, s9
                  xori         t3, s1, 1186
                  xori         s7, s3, 559
4295:             lui          s7, 493031
                  xor          tp, tp, s11
                  slli         a0, a6, 15
                  addi         t0, sp, 892
                  sll          t5, tp, s5
                  slli         sp, a2, 26
                  auipc        t6, 474032
                  srli         t5, a2, 21
                  nop
4304:             bgeu         s8, zero, 4307f
                  sub          gp, t6, a2
                  bne          a5, s2, 4307f
4307:             srli         a1, gp, 18
                  and          s0, s9, s4
                  lw           ra, 4(a7)
                  lui          s11, 434195
                  sltu         t2, a1, s3
                  addi         a7, a7, 52
                  srai         a6, sp, 18
                  slt          s9, s0, a4
                  add          t5, a7, a6
5698:             addi x8, x1, 1
5698:             jalr x8, x8, 0
sub_10:           blt          a1, a7, sub_10_stack_p
sub_10_stack_p:   addi         a7, a7, -56
                  sub          tp, s4, a6
                  sw           ra, 4(a7)
                  sub          t5, t0, sp
                  slti         s8, s9, 1751
                  blt          sp, s8, 5f
                  bge          t1, t1, 9f
                  add          ra, gp, s2
                  ori          a2, a4, -549
                  blt          gp, s6, 7f
5:                slli         s3, s1, 24
                  slt          s9, a7, t5
7:                sltu         t0, a4, s6
                  addi         t2, a0, 1920
9:                srl          tp, s7, s7
                  lw           ra, 4(a7)
                  srai         s7, s3, 24
                  sra          a2, s9, a4
                  lui          s0, 1005826
                  srli         t1, s4, 19
                  slt          t5, t4, tp
                  andi         s1, t3, -1543
                  and          t4, gp, zero
                  addi         a7, a7, 56
                  sltiu        s4, s7, -892
26:               addi x27, x1, 1
26:               jalr x27, x27, 0
sub_1:            addi         a7, a7, -36
                  slti         sp, s4, 1148
                  slt          s1, t3, s11
                  slli         t4, s2, 10
                  andi         a6, t3, -1354
                  srai         t2, t5, 14
                  or           a6, t4, t1
                  sw           ra, 4(a7)
                  auipc        a2, 180489
                  srl          t5, a1, ra
                  xori         a6, t2, -218
                  sub          t4, t1, a1
                  add          a6, t2, t6
                  sub          t2, s11, sp
                  and          t1, a2, s10
                  sll          s8, s6, ra
                  lui          a0, 740267
                  auipc        t0, 318307
                  blt          s8, a7, sub_1_j2 #branch to jump instr
                  auipc        t2, 243606
sub_1_j2:         jal          ra, sub_9 #jump sub_1 -> sub_9
                  andi         t4, t4, -1832
                  lui          tp, 311019
                  lui          s11, 739308
                  xori         s2, a1, 973
                  srl          s2, t4, tp
                  andi         a3, a4, -494
                  or           a1, a1, s8
                  and          s3, a6, ra
sub_1_j4:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  xor          a3, sp, a5
                  la           s9, sub_6
                  add          s8, zero, a4
                  sra          a6, t4, s3
                  addi         zero, t4, 632
                  sub          a1, s5, s0
                  slti         s5, a6, -156
                  sra          a3, a5, a1
                  addi         s9, s9, -691
                  srl          t1, t4, t1
                  xori         t6, s9, -1033
sub_1_j6:         jalr         ra, s9, 692 #jump sub_1 -> sub_6
                  srli         gp, t3, 14
                  bltu         s1, t0, sub_1_j7 #branch to jump instr
                  sub          a2, s4, s5
                  xori         s5, ra, 1942
                  sltiu        a1, a6, -1326
                  slt          t0, s6, s10
                  ori          tp, a3, -158
                  lui          t3, 869819
                  sra          sp, sp, gp
                  or           s6, s4, t6
                  ori          s4, s9, -275
sub_1_j7:         jal          ra, sub_6 #jump sub_1 -> sub_6
                  srli         ra, s1, 12
                  la           sp, sub_10
                  xor          s8, sp, t3
                  sltu         a4, s8, s9
                  xor          t3, a4, s6
                  addi         sp, sp, 289
                  srai         ra, s3, 4
                  andi         s6, a5, -1357
                  bgeu         s9, a5, sub_1_j8 #branch to jump instr
                  or           s8, s3, s6
                  slti         tp, t6, -731
                  and          t1, s11, a4
sub_1_j8:         jalr         ra, sp, -288 #jump sub_1 -> sub_10
                  xor          t5, s4, gp
                  la           s7, sub_7
                  xori         a4, a0, 131
                  lui          s4, 806594
                  sll          a3, s9, a4
                  lui          t4, 510317
                  slti         t3, t4, -1439
                  sra          s5, t1, a3
                  addi         s7, s7, -739
                  ori          a3, gp, 326
sub_1_j10:        jalr         ra, s7, 740 #jump sub_1 -> sub_7
                  slt          t1, s10, t3
                  xor          t2, s0, s2
                  srl          s5, s3, s4
                  xori         zero, t0, -1910
                  la           gp, sub_8
                  add          s4, s4, s2
                  addi         gp, gp, -689
                  or           t4, s4, s0
                  ori          zero, a3, -482
                  slt          s5, t0, a2
                  addi         s2, a4, -280
sub_1_j11:        jalr         ra, gp, 689 #jump sub_1 -> sub_8
                  la           s7, region_1+201 #start riscv_load_store_rand_instr_stream_1
                  lbu          t2, 1107(s7)
                  slti         gp, s9, -655
                  sb           a3, 1238(s7)
                  slti         s8, s7, 1464
                  lb           s2, 1584(s7)
                  or           gp, tp, a6
                  ori          t2, a6, 696
                  ori          t3, a0, -1422
                  sb           s9, 820(s7)
                  srai         a6, a6, 3
                  sltu         s8, s10, sp
                  andi         s8, a2, 1494
                  srli         t1, t4, 28
                  sb           a6, 1052(s7)
                  lb           a3, 1622(s7)
                  sb           t1, 1006(s7)
                  sra          s2, t4, s4
                  lb           sp, 348(s7)
                  sb           a4, 130(s7)
                  lui          s8, 227325
                  sb           t1, 1265(s7)
                  and          s3, t5, sp
                  srai         t1, s0, 5
                  xor          s9, gp, ra
                  sh           tp, 975(s7) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_1+74 #start riscv_load_store_rand_instr_stream_0
                  lui          t2, 1019840
                  ori          a1, gp, -477
                  lw           tp, 6(s11)
                  srli         zero, a3, 21
                  sub          t4, a4, s9
                  sll          s8, a7, t0
                  auipc        s9, 51106
                  lb           a1, 120(s11)
                  addi         s9, gp, -1593
                  sb           a6, 137(s11)
                  and          a3, t2, s9
                  lbu          sp, -28(s11)
                  slli         a6, a3, 25
                  lb           t5, 212(s11)
                  xor          s1, s6, t4
                  ori          t2, s10, -793
                  srai         t1, t0, 18
                  sll          a6, sp, s6
                  lb           a4, -40(s11)
                  slti         a6, s0, -208
                  srl          t0, s8, sp
                  lbu          a6, 142(s11)
                  addi         s8, a6, -1136
                  sw           t0, 78(s11)
                  sb           t1, 46(s11)
                  sltiu        gp, s4, -1286
                  sltiu        s1, s3, -1855
                  lb           s9, 61(s11)
                  lb           a1, -21(s11)
                  sb           s6, 249(s11) #end riscv_load_store_rand_instr_stream_0
                  bge          s1, tp, 9f
                  or           a3, ra, ra
                  xor          s4, t4, zero
                  bgeu         s8, s6, 11f
                  bge          s8, s8, 12f
                  add          s4, t0, s7
                  auipc        s8, 29073
                  sra          t0, s4, t2
                  sll          s1, s1, s9
9:                sub          tp, s4, t5
                  sub          t5, s8, s1
11:               ori          a6, t2, 2011
12:               slli         t5, t5, 31
                  slt          a1, ra, s6
                  slli         t5, s2, 1
                  beq          a4, s5, 31f
                  bge          a1, t3, 26f
                  slt          a4, a4, t3
                  sltiu        t5, a5, -945
                  bge          t6, t3, 23f
                  ori          s9, ra, 278
                  and          a3, t1, a3
                  auipc        s8, 740536
23:               sltiu        s1, s9, -1886
                  blt          s4, t3, 30f
                  add          a6, s2, s8
26:               srai         a3, s10, 1
                  sll          s6, s0, a3
                  sltu         s2, s0, s1
                  sltu         gp, a0, t2
30:               bne          s0, t0, 33f
31:               ori          a2, a5, 1589
                  ori          t5, gp, -1616
33:               lui          s9, 128713
                  ori          s4, t6, 1132
                  and          a2, a0, t0
                  lui          s11, 234781
                  add          t5, t0, t2
                  sra          ra, sp, ra
                  slti         gp, s3, -23
                  sll          a1, t0, s9
                  srl          t3, s5, a0
                  sll          a0, s9, ra
                  srli         s0, a4, 4
                  sra          s2, a3, a0
                  slli         a6, a4, 10
                  slt          s11, s10, s8
                  add          s2, s6, s0
                  or           s11, s6, t6
                  srai         ra, t0, 30
                  addi         a0, s9, -1623
                  or           s0, a1, sp
                  la           s7, sub_4
                  srl          s11, t0, t1
                  addi         s0, ra, 932
                  addi         s7, s7, -593
                  add          s6, t0, t0
sub_1_j3:         jalr         ra, s7, 594 #jump sub_1 -> sub_4
                  andi         zero, a2, -186
                  srai         a3, s9, 25
                  andi         s5, a5, 904
                  srl          a2, a7, s10
                  nop
                  slli         s3, s5, 10
                  slli         t3, a4, 0
                  sltu         s6, s6, a7
                  nop
                  bltu         a3, t1, 70f
                  sub          gp, a2, t5
                  bge          sp, a4, 68f
                  slti         s2, s0, -1524
                  sub          t3, s2, s4
                  blt          a5, s3, 77f
                  sll          s3, s1, s6
                  and          s5, gp, s4
                  ori          s1, gp, 901
68:               nop
                  auipc        t1, 1006810
70:               xori         a6, a1, -468
                  nop
                  lui          t1, 213502
                  slti         t6, a7, -1503
                  sub          t0, s1, a4
                  srl          s11, a4, t0
                  nop
77:               bge          s9, t0, 78f
78:               auipc        gp, 799875
                  beq          a7, s0, 85f
                  sltu         sp, s7, a4
                  srl          t4, s6, t2
                  andi         t4, tp, -293
                  bgeu         a7, ra, 98f
                  sra          t4, t6, a0
85:               blt          s0, a2, 86f
86:               or           t3, t3, ra
                  slt          s6, s3, t1
                  auipc        a6, 258184
                  sub          s9, t5, a3
                  beq          s5, a2, 104f
                  sll          a4, t0, t3
                  bgeu         a5, a1, 93f
93:               bne          s7, t1, 98f
                  beq          a7, s3, 105f
                  addi         t0, a0, -1171
                  bgeu         s4, a5, 103f
                  xor          a3, a2, a3
98:               sltiu        tp, s8, -1648
                  srai         t2, s4, 26
                  xori         sp, s11, -72
                  addi         t2, t5, -1661
                  nop
                  slt          s3, a2, a0
                  nop
                  blt          ra, ra, sub_1_j5 #branch to jump instr
                  nop
                  sll          s5, a2, a7
                  ori          t0, s2, -852
sub_1_j5:         jal          ra, sub_5 #jump sub_1 -> sub_5
103:              srl          s1, s11, t2
104:              bltu         s7, s7, 123f
105:              xor          t2, s6, s7
                  sltiu        t2, s6, -1399
                  bge          s6, ra, 121f
                  sub          a1, t2, s2
                  bgeu         t3, t0, 112f
                  sltu         t6, gp, s9
                  blt          t3, a4, 121f
112:              sltiu        a0, a7, -1041
                  slt          t3, t3, a2
                  nop
                  bne          s6, s10, 117f
                  sra          sp, s4, s4
                  add          s7, a4, s0
                  addi         t0, a6, 2036
                  la           a3, sub_2
                  add          s8, s8, t1
                  xor          sp, s4, a5
                  nop
                  addi         a3, a3, -931
                  ori          t6, t1, 49
                  sub          t2, t0, zero
                  auipc        s4, 257289
                  srai         s7, t1, 12
sub_1_j9:         jalr         ra, a3, 931 #jump sub_1 -> sub_2
117:              slti         s4, s1, -1147
                  bne          t3, s0, 130f
                  bne          t6, s7, 125f
                  xor          gp, tp, s2
121:              srli         a3, a2, 19
                  or           ra, a3, t6
123:              srl          s6, s7, s9
                  beq          t2, s1, 138f
125:              xor          a3, s10, s9
                  bgeu         a3, s11, 129f
                  bgeu         t2, s10, 142f
                  sub          t6, t4, s3
129:              xor          t0, s0, gp
130:              blt          a2, t2, 131f
131:              slti         a1, a5, -92
                  srl          a4, s9, tp
                  addi         s4, s6, -1648
                  slti         a3, s4, 1134
                  ori          s2, s9, 431
                  slt          a2, a0, t6
                  add          t5, tp, s11
138:              auipc        t5, 529423
                  bltu         zero, a3, 158f
                  beq          t2, s11, 149f
                  sub          s4, s0, a6
142:              slli         s6, s1, 18
                  bne          sp, s0, 158f
                  beq          a1, t0, 150f
                  slt          t1, a0, a1
                  or           gp, s5, s0
                  beq          a5, s7, 158f
                  slli         s7, tp, 5
149:              and          a4, tp, t5
150:              srai         s3, s2, 13
                  slt          s1, t3, s9
                  and          a1, a6, s5
                  or           gp, tp, a5
                  sll          a2, s10, s1
                  slti         t1, a7, -1516
                  or           s4, zero, t6
                  srli         a6, s0, 21
158:              lui          s3, 208039
                  bge          t2, ra, 160f
160:              sub          a6, s10, t6
                  nop
                  sltiu        s6, s5, -1212
                  sub          a6, t1, a3
                  srl          t0, s1, s1
                  sub          t4, zero, a0
                  srl          s3, a3, s7
                  slt          a2, zero, s0
                  lui          t3, 288166
                  blt          s6, s1, 179f
                  sltu         s8, s3, sp
                  srai         s9, s7, 15
                  bgeu         zero, s8, 185f
                  sub          t4, a6, a0
                  xori         t1, t1, 771
                  and          t5, s3, sp
                  srai         gp, a2, 7
                  srli         s11, a0, 18
                  slt          s1, t2, s9
179:              srai         t4, s0, 0
                  auipc        s5, 353230
                  srai         t4, gp, 14
                  sltu         t0, tp, a4
                  bge          s8, s1, 188f
                  srai         a6, s2, 16
185:              blt          t0, s7, 199f
                  xori         s9, a3, -1551
                  addi         s8, t6, 1422
188:              add          s4, a1, t2
                  srl          s11, t1, t2
                  and          s1, t4, t6
                  and          s8, t6, s6
                  bne          s4, s0, 195f
                  bne          gp, a0, 200f
                  lui          sp, 1036771
195:              bne          s0, a1, 209f
                  ori          s3, gp, 295
                  sll          a3, sp, t2
                  srai         a2, t6, 24
199:              srai         t4, s8, 27
200:              and          s7, a6, a7
                  xor          s8, s5, s2
                  srli         t0, s6, 8
                  sra          s0, s0, a6
                  blt          zero, a0, 205f
205:              andi         s8, s5, -490
                  blt          zero, a7, 221f
                  xor          s7, s8, tp
                  andi         s3, a2, -394
209:              sub          t4, s4, s7
                  bltu         s9, s7, 217f
                  bgeu         t4, ra, 217f
                  andi         a2, t5, 570
                  beq          s1, a2, 225f
                  and          t3, a5, t2
                  and          t4, tp, s6
                  lui          s5, 564199
217:              addi         t5, s9, 2029
                  and          t0, a5, t6
                  xori         s0, a2, 1809
                  auipc        s3, 35041
221:              ori          s8, t4, 1667
                  srl          a0, ra, a5
                  srli         a0, zero, 4
                  srli         sp, s3, 0
225:              sltu         a4, s8, t3
                  bgeu         s11, ra, 229f
                  xori         s0, t3, 92
                  blt          a1, a1, 230f
229:              xori         a0, tp, 1686
230:              srli         a4, a6, 9
                  ori          t3, a1, -496
                  sra          t4, a5, s11
                  auipc        a0, 917834
                  ori          s6, s10, 311
                  beq          s2, zero, 245f
                  srai         zero, s4, 25
                  addi         t3, t0, -890
                  or           zero, t6, s1
                  bgeu         s6, t6, 255f
                  or           t5, ra, gp
                  beq          s9, s0, 249f
                  xor          s8, s9, gp
                  sltiu        a3, s7, -784
                  srl          a4, sp, t1
245:              sll          a6, s7, s3
                  addi         t5, s4, 907
                  add          s2, ra, t0
                  addi         a6, a1, -1930
249:              add          a6, s2, sp
                  and          t5, s3, s10
                  sra          s11, t3, a2
                  nop
                  sub          t6, s7, a4
                  blt          s3, sp, 258f
255:              srli         s2, s6, 1
                  bltu         a7, s0, 262f
                  sra          zero, a2, a3
258:              andi         a2, s5, -1194
                  add          t1, a2, a7
                  sub          gp, t5, s5
                  slt          t5, t3, s5
262:              or           sp, t1, a0
                  sub          sp, a6, zero
                  srai         zero, s0, 4
                  sra          t5, a5, t6
                  lui          a2, 116974
                  sll          a0, t1, t5
                  slt          s11, a2, a1
                  beq          t5, a0, 277f
                  andi         t2, t5, -518
                  srai         s8, s10, 13
                  bgeu         s5, s2, 283f
                  lui          a4, 64032
                  and          t4, t1, sp
                  or           s0, s10, s3
                  slli         t6, ra, 27
277:              add          t0, t2, s11
                  srli         ra, s4, 18
                  slli         sp, t3, 30
                  sub          s5, sp, s7
                  xori         t3, t3, 722
                  beq          t3, ra, 285f
283:              xori         t5, t0, 109
                  slt          s8, s9, t2
285:              ori          s9, t0, -336
                  sltu         a6, s9, s5
                  auipc        t1, 835606
                  sub          t3, a7, s6
                  nop
                  andi         s7, s6, -132
                  srl          a4, s9, t5
                  slli         a6, sp, 31
                  add          a2, t3, s6
                  lw           ra, 4(a7)
                  sltiu        s8, ra, 925
                  addi         a7, a7, 36
                  sltiu        tp, t2, 599
                  andi         t6, s5, -718
473:              addi x21, x1, 0
473:              jalr x21, x21, 0
sub_7:            slt          zero, gp, s9
                  nop
                  srli         s7, s8, 7
                  addi         a7, a7, -20
                  sw           ra, 4(a7)
                  xori         t3, tp, -753
                  sll          a1, s8, t3
                  slt          s0, a7, t4
                  or           t1, t5, s2
                  andi         s9, zero, 79
                  xori         a6, a1, -1619
                  addi         ra, t4, 680
                  xori         a1, s6, 1670
                  or           t5, s6, a5
                  sll          s5, gp, t0
                  bgeu         s0, s9, 16f
                  xor          s8, t6, t5
                  bge          t4, s5, 18f
                  addi         tp, a3, -1578
                  auipc        s0, 169260
                  srli         t4, t6, 5
                  ori          s0, a5, -384
16:               slli         s1, s4, 30
                  nop
18:               sll          s1, s3, a0
                  sra          ra, s4, ra
                  slt          s2, s0, a5
                  sltu         s8, a1, s3
                  blt          a6, a3, 24f
                  sra          s6, s11, s11
24:               addi         t0, s0, -645
                  andi         s0, a2, -1107
                  srl          s1, a5, a4
                  sltu         a2, s10, s9
                  auipc        s2, 597749
                  sltiu        s11, t2, 472
                  xori         t5, s7, 986
                  srl          s1, s7, tp
                  lw           ra, 4(a7)
                  sltiu        s8, s5, -1168
                  addi         a7, a7, 20
                  sub          t1, t5, s1
42:               addi x21, x1, 0
42:               jalr x21, x21, 0
sub_5:            beq          s9, t0, sub_5_stack_p
                  or           s5, t4, s1
                  auipc        t2, 989591
                  srai         a6, s4, 17
                  ori          a0, s0, 360
sub_5_stack_p:    addi         a7, a7, -36
                  sw           ra, 4(a7)
                  xor          s3, s11, a3
                  srli         a4, s1, 8
                  sltu         a1, gp, s11
                  beq          t4, a6, 16f
                  sub          t4, s4, ra
                  add          a1, s10, zero
                  xor          gp, t0, t2
                  sll          s1, t0, s7
                  bge          a4, a5, 12f
                  addi         ra, t1, -1869
                  xori         s3, a7, -1205
                  nop
                  xori         s3, a4, 1851
                  sltiu        ra, s4, 955
                  srli         tp, a3, 29
12:               sltiu        t6, s6, -457
                  nop
                  sltu         a0, sp, s5
                  blt          gp, s2, 22f
16:               bgeu         a6, t4, 17f
17:               and          a2, gp, s8
                  srl          t1, s10, a5
                  add          t5, sp, s0
                  sltu         s5, s7, s5
                  sltu         s4, a1, tp
22:               slti         s4, s7, -1793
                  sltu         a0, s0, s1
                  srli         a2, s2, 30
                  nop
                  blt          s3, a4, 34f
                  srai         a1, s9, 25
                  sll          zero, tp, s5
                  sub          t3, s8, a1
                  srl          t1, zero, ra
                  sra          ra, s11, sp
                  add          s6, a0, t5
                  sub          zero, s11, tp
34:               slt          sp, t1, s4
                  srai         s0, s5, 31
                  sltu         zero, a0, s7
                  sll          zero, ra, t6
                  lw           ra, 4(a7)
                  and          t1, a2, s6
                  slt          s2, s9, t6
                  addi         a7, a7, 36
                  ori          t0, sp, 1660
                  srai         a1, t5, 18
54:               addi x22, x1, 0
54:               jalr x22, x22, 0
sub_9:            ori          s2, s5, 338
                  addi         a7, a7, -12
                  andi         s9, s2, 1150
                  xori         s9, zero, 244
                  srl          s11, s7, ra
                  sll          s7, s6, s0
                  auipc        t0, 742101
                  sw           ra, 4(a7)
                  add          t2, sp, t3
                  xor          a2, s0, s3
                  xor          s1, s0, tp
                  xori         a2, t3, 1091
                  bltu         gp, sp, 23f
                  or           a4, ra, s2
                  bge          a2, t1, 13f
                  bgeu         t0, a7, 15f
                  add          a2, t0, a1
                  and          s3, s8, t3
                  bne          a4, s9, 17f
                  ori          tp, a1, -102
                  bltu         a1, t2, 24f
                  xor          s7, s5, s7
13:               sub          a1, s2, s6
                  ori          t3, a6, 647
15:               sub          s11, tp, a3
                  bgeu         a0, s7, 24f
17:               ori          tp, t5, 1761
                  and          s7, tp, a3
                  nop
                  bgeu         s1, s10, 23f
                  andi         zero, s0, -1601
                  or           s4, a1, s9
23:               srai         t2, s4, 28
24:               andi         t0, s10, -1935
                  srl          t5, s7, tp
                  lw           ra, 4(a7)
                  addi         a7, a7, 12
                  ori          s9, zero, -1527
                  sltiu        t2, t6, 396
                  and          t2, a7, t3
40:               addi x11, x1, 0
40:               jalr x11, x11, 0
sub_3:            bne          s5, t1, sub_3_stack_p
                  srl          gp, s6, t0
                  lui          a4, 595905
sub_3_stack_p:    addi         a7, a7, -16
                  and          tp, tp, a4
                  slli         zero, a7, 15
                  ori          s11, s8, 1691
                  sub          s9, ra, s4
                  sw           ra, 4(a7)
                  or           t5, t6, t5
                  xor          s6, t0, s11
                  sll          a6, a1, s5
                  beq          tp, s9, 8f
                  bne          a3, s11, 6f
                  xori         t4, a2, 336
                  bne          a3, a1, 9f
6:                and          s8, s3, zero
                  auipc        t2, 410262
8:                slli         ra, a0, 23
9:                xori         a2, a1, 1124
                  sll          t4, a6, t6
                  lw           ra, 4(a7)
                  lui          s4, 212456
                  addi         a7, a7, 16
                  slt          s11, s11, a1
25:               addi x1, x1, 0
25:               jalr x1, x1, 0
sub_4:            nop
                  addi         a7, a7, -28
                  sw           ra, 4(a7)
                  sltu         a6, zero, s0
                  slti         s2, t2, -107
                  bgeu         s1, t6, 5f
                  sll          a0, s3, zero
                  sub          zero, t0, s8
                  nop
                  srai         a2, s4, 10
5:                blt          s5, t6, 7f
                  slli         s7, a7, 21
7:                add          t5, tp, ra
                  srl          zero, sp, a5
                  bge          s9, zero, 18f
                  sub          s8, zero, s9
                  and          ra, t6, s5
                  andi         s7, t6, 1340
                  bge          s0, s5, 22f
                  bne          s0, tp, 22f
                  lui          s5, 61918
                  slli         s4, s6, 10
                  bne          s3, a7, 22f
18:               sltiu        s0, t5, -1177
                  bge          s8, s1, 22f
                  xori         a3, a7, 625
                  ori          a4, t0, 1762
22:               sra          a0, s3, a4
                  addi         s2, a2, -1694
                  lw           ra, 4(a7)
                  addi         t3, t1, -1450
                  addi         a0, a4, -514
                  slti         s0, s5, -1590
                  addi         a7, a7, 28
                  slti         s0, t6, 425
                  xor          a3, zero, a7
36:               addi x16, x1, 1
36:               jalr x16, x16, 0
sub_2:            srai         t5, s7, 21
                  or           s3, a4, s10
                  addi         sp, t2, -1994
                  sltiu        zero, s10, -1727
                  bltu         s3, sp, sub_2_stack_p
                  sltiu        t4, s0, 851
sub_2_stack_p:    addi         a7, a7, -32
                  sltu         t1, t6, s9
                  sw           ra, 4(a7)
                  ori          s2, t6, -714
                  srli         s2, s7, 15
                  or           tp, t1, ra
                  blt          t6, t3, 3f
3:                srai         a6, a2, 12
                  sll          s0, s0, s3
                  bge          a7, a6, 10f
                  lui          t3, 828854
                  and          s4, a6, sp
                  xori         s0, t6, 1381
                  bgeu         s3, t0, 16f
10:               andi         a4, t2, -1227
                  slti         a1, s10, 769
                  lui          a4, 865195
                  sra          a3, t0, ra
                  slli         s6, s1, 23
                  auipc        s9, 1035847
16:               bgeu         t2, s10, 22f
                  bne          s2, a0, 28f
                  slt          a3, a4, t4
                  slti         t2, a1, -379
                  slli         s1, a0, 2
                  srli         s7, s4, 29
22:               addi         t0, a6, -1021
                  auipc        t3, 349813
                  bltu         s0, s1, 44f
                  slt          a1, zero, s11
                  add          t4, gp, a3
                  xori         t1, a3, -1483
28:               sltu         s3, a1, s9
                  srl          a3, s0, a1
                  slli         s2, a6, 15
                  slt          t3, s0, t3
                  and          s2, s2, t3
                  addi         t5, ra, 969
                  lui          s11, 217110
                  sltu         s1, s8, a7
                  sltiu        t2, a4, 565
                  srai         t2, t1, 6
                  lui          s0, 324652
                  addi         t4, a0, 1673
                  xori         gp, a2, -1542
                  and          s2, t2, s1
                  nop
                  lui          t1, 137944
44:               sll          s11, a6, s0
                  blt          s7, sp, 55f
                  xori         t1, t2, 1062
                  lui          s4, 581748
                  or           t2, t2, s5
                  slti         ra, s7, 376
                  beq          a2, s5, 67f
                  bne          t6, a0, 58f
                  and          s7, s1, s11
                  add          t5, s1, gp
                  beq          a2, a0, 64f
55:               auipc        t0, 358317
                  nop
                  blt          sp, s3, 63f
58:               auipc        tp, 94235
                  sub          s5, s7, s9
                  ori          gp, s7, 682
                  xor          s9, t3, t1
                  xor          a2, gp, s2
63:               lui          a2, 737829
64:               auipc        a1, 900693
                  or           s7, a5, s5
                  andi         s3, sp, -1533
67:               slti         t4, a7, -837
                  sll          s8, a3, s1
                  and          t4, s5, a6
                  xor          a1, a7, a4
                  srl          s0, s6, t6
                  bgeu         t0, s7, 90f
                  auipc        a0, 407855
                  slti         s11, a5, 313
                  srai         s3, t6, 18
                  andi         t4, t0, -1134
                  and          t6, s5, a4
                  blt          s3, t5, 84f
                  or           t4, t1, s2
                  slti         s5, s0, 1712
                  srl          s0, s5, s6
                  la           a2, region_1+1992 #start riscv_load_store_rand_instr_stream_0
                  sb           t2, -103(a2)
                  lhu          sp, -242(a2)
                  sh           s4, -196(a2)
                  ori          s6, t1, -696
                  or           s1, a1, s8
                  lbu          sp, -9(a2)
                  sh           t1, -80(a2)
                  lbu          s8, -75(a2)
                  andi         t2, a3, 1760
                  nop
                  or           s5, s6, a4
                  srl          tp, a6, t4
                  sltiu        a4, s8, -210
                  lw           gp, -64(a2)
                  sltiu        ra, zero, 1018
                  lw           t6, -176(a2)
                  sh           a5, -44(a2)
                  sra          s1, s10, t3
                  lh           s9, -144(a2)
                  lbu          zero, 5(a2)
                  sb           s7, -231(a2)
                  and          t1, s11, s11
                  lb           t5, -165(a2)
                  sub          s6, s3, ra
                  xori         t1, s10, 36
                  sra          t5, a5, t1
                  sw           t1, -4(a2)
                  lhu          zero, -124(a2)
                  auipc        t4, 778019
                  auipc        t4, 446227
                  lh           a1, -230(a2)
                  slli         s9, a4, 17
                  addi         s5, s9, 692
                  lbu          t5, -9(a2)
                  lb           a3, -7(a2)
                  srl          gp, s4, s10
                  sb           a1, -75(a2)
                  sltiu        ra, s6, -459
                  sltu         t3, a2, s1
                  srai         a6, s5, 11
                  lw           t4, -116(a2)
                  lb           s8, -55(a2)
                  lh           s3, -196(a2)
                  sll          s7, t4, t2
                  sb           s0, -183(a2)
                  sb           s11, -105(a2)
                  sb           gp, -37(a2)
                  lhu          s8, -72(a2)
                  sra          tp, s6, t4
                  lui          t4, 492580
                  sh           s2, -44(a2)
                  sb           s6, -131(a2) #end riscv_load_store_rand_instr_stream_0
                  nop
                  srai         s2, s11, 24
84:               srai         gp, t5, 20
                  and          a6, t1, t5
                  xori         a4, s4, -425
                  beq          a0, s6, 89f
                  nop
89:               xori         t0, s3, 1841
90:               bge          a5, tp, 92f
                  add          s0, a6, s8
92:               srai         s7, a0, 1
                  slt          s11, t0, s2
                  lui          s1, 349699
                  srl          a6, s1, zero
                  sltu         s9, s7, s9
                  slti         a6, t6, -2013
                  blt          s8, ra, 106f
                  slti         sp, gp, -883
                  beq          t1, t5, 115f
                  sll          t2, ra, s2
                  sub          s5, s2, s6
                  sll          a1, s0, a2
                  sll          a1, t4, gp
                  xor          s4, ra, a1
106:              beq          t5, a0, 121f
                  xori         t2, t2, 1177
                  or           s0, s5, s10
                  beq          sp, t0, 114f
                  beq          a7, s3, 130f
                  nop
                  beq          t1, a1, 117f
                  blt          s1, s6, 114f
114:              slti         s6, s9, 1927
115:              sra          t5, a2, a4
                  blt          s1, s0, 123f
117:              beq          a1, s10, 124f
                  lui          a2, 251465
                  srl          a4, s11, s11
                  srai         s2, gp, 27
121:              srai         t1, t4, 24
                  xori         s0, s5, 759
123:              or           tp, a3, a6
124:              ori          s8, t1, 1287
                  add          s0, a2, s7
                  sltiu        s3, a7, 1585
                  beq          a1, s3, 135f
                  blt          s9, sp, 148f
                  sra          zero, s5, a5
130:              blt          t0, s2, 131f
131:              sltu         t0, sp, s4
                  add          s1, s11, s2
                  add          a3, a2, tp
                  slli         t1, a4, 29
135:              xori         s3, s11, -2010
                  sub          a1, s11, tp
                  slt          s11, tp, t5
                  slt          s11, t1, s5
                  bltu         a6, s9, 158f
                  bgeu         zero, zero, 151f
                  beq          t6, t6, 146f
                  or           ra, a2, a2
                  srai         sp, s2, 5
                  bne          a0, t6, 146f
                  sltiu        s8, t3, -1313
146:              andi         sp, s7, 1518
                  sltu         gp, s5, t3
148:              andi         s11, s2, 30
                  nop
                  and          ra, a3, t2
151:              xor          s0, s3, s6
                  sll          a6, s9, a6
                  addi         s6, s2, 1081
                  bge          a3, t2, 169f
                  slt          t1, s1, s10
                  sltu         a0, a6, a0
                  sra          s7, a5, s6
158:              addi         t5, s2, 366
                  slt          t5, s11, a0
                  bge          t2, sp, 168f
                  slt          t6, s5, t1
                  add          tp, s3, s8
                  lui          s8, 739467
                  sll          s8, a6, a4
                  srai         ra, s9, 19
                  ori          t0, a5, 829
                  srai         s5, a7, 7
168:              xori         t2, a6, -566
169:              xori         t0, t0, -760
                  nop
                  sub          a2, a0, t1
                  add          s6, t3, t4
                  slt          a1, t5, ra
                  bgeu         t2, s6, 194f
                  slti         s7, a7, -1176
                  beq          zero, s7, 196f
                  slt          s8, s10, s2
                  lui          gp, 508687
                  xor          s3, sp, t2
                  ori          s3, a3, 1152
                  nop
                  xor          s5, t3, ra
                  add          sp, s11, s1
                  bne          t2, a7, 185f
185:              srai         tp, a5, 20
                  ori          s7, t0, 760
                  xor          a3, t6, t5
                  and          s2, s10, t2
                  slli         a0, t0, 7
                  xor          s6, ra, s7
                  blt          a4, a1, 196f
                  slti         s0, a3, -413
                  sll          t3, a6, s2
194:              auipc        t2, 833946
                  bgeu         t3, s5, 201f
196:              ori          a1, s9, 292
                  addi         t6, t4, -1008
                  sub          t5, t6, s6
                  andi         t4, s6, 1338
                  bltu         a0, a4, 211f
201:              ori          tp, a4, 1927
                  srai         zero, a7, 18
                  sll          a4, a5, s7
                  bne          t0, ra, 205f
205:              srli         t5, a7, 0
                  sltu         t5, s6, s6
                  sra          t6, s7, s6
                  andi         t0, a6, 1835
                  srli         s3, t4, 26
                  ori          t4, a1, -794
211:              lui          t4, 787639
                  sub          s5, a6, s9
                  slli         tp, a4, 11
                  srl          s1, s1, zero
                  lui          t0, 705937
                  slti         tp, a5, -2023
                  slli         s6, ra, 30
                  auipc        t1, 159900
                  add          a6, a2, t6
                  sltiu        t5, a0, 390
                  auipc        t6, 493841
                  sub          a1, s3, a0
                  andi         s5, t3, -515
                  srl          s0, s9, tp
                  nop
                  nop
                  slti         a3, a4, -198
                  srli         t2, sp, 12
                  bgeu         s9, a2, 243f
                  andi         tp, s3, -1982
                  addi         a4, sp, -1983
                  nop
                  bgeu         sp, s1, 240f
                  add          t3, s5, t1
                  ori          s9, s9, -939
                  lui          s6, 440087
                  srl          s0, a4, a2
                  sub          t5, t5, a1
                  slti         s1, s7, 1404
240:              and          s11, a2, s5
                  bgeu         s7, t2, 243f
                  bne          t4, s6, 243f
243:              slti         t1, t5, -1650
                  slti         s1, a7, -719
                  lw           ra, 4(a7)
                  srl          a1, sp, s2
                  sub          s2, t2, a1
                  addi         a7, a7, 32
                  slt          s1, tp, s3
                  andi         s4, a4, -1886
                  sub          a1, s7, zero
                  slt          t0, s6, a2
316:              addi x8, x1, 1
316:              jalr x8, x8, 0
sub_8:            and          s8, s10, t0
                  sltiu        s2, ra, 258
                  bltu         a4, t5, sub_8_stack_p
                  add          s3, t4, t4
sub_8_stack_p:    addi         a7, a7, -24
                  sw           ra, 4(a7)
                  auipc        t4, 826350
                  slli         a0, a2, 1
                  or           s7, a4, s0
                  bne          s4, tp, 6f
                  srai         s2, a5, 5
                  sub          t6, a6, s3
                  sll          tp, s9, zero
                  add          s8, tp, a7
6:                xori         t2, s10, -490
                  srli         a4, s0, 19
                  beq          s6, a4, 10f
                  xor          a2, a3, t3
10:               sra          a3, s1, s6
                  lw           ra, 4(a7)
                  addi         s0, t0, -407
                  xori         a2, s7, -1489
                  addi         a7, a7, 24
                  srai         t3, a1, 2
                  srai         a0, ra, 10
25:               addi x22, x1, 1
25:               jalr x22, x22, 0
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
.word 0x686f07b3, 0x19487398, 0x9da3a0ed, 0xd3d8c3ec, 0x8efd809a, 0x148ae5d5, 0x054a2c42, 0x2f73cc6f
.word 0x01006e41, 0x92ae7318, 0x2f6a0f3d, 0x7add2512, 0xc29aeb4a, 0x5ca1b538, 0x5187a799, 0x3fffe88a
.word 0x26879a3a, 0xe9046820, 0xda42dbf0, 0x0f6289fe, 0x113caa4f, 0xc0f131fa, 0xeecafd2c, 0x137f4bd5
.word 0x12ab4141, 0x30937a9f, 0x05c85b60, 0xd647e284, 0x8d1edc88, 0xc5738621, 0x8ec153e0, 0xb1dfb5a7
.word 0x34da3cc5, 0x803df31b, 0x8b97da20, 0xdb466a55, 0x2e483764, 0xd2f02899, 0x1e8be99d, 0xdca6401c
.word 0x330a05e5, 0x4afb3767, 0x4e60ab3b, 0x81dd35d7, 0xdfa53ed8, 0xcb41b339, 0x153c4469, 0x4521134f
.word 0xb6854dfb, 0x73bb8dd8, 0x2423c728, 0xe5fc3225, 0x1f1fa55c, 0x7e20ecd8, 0xfcb02313, 0x94f7656a
.word 0x1c359f29, 0x2988bacd, 0x2703d52b, 0x45ad79cf, 0x7e7622db, 0x9ed1a826, 0x1b17b6d3, 0x88568ea2
.word 0xd680fcad, 0x180056c1, 0xa8fd2d05, 0xa83f1b5a, 0x1b3262ca, 0x0a408408, 0x2854eb41, 0x68d114ab
.word 0x064030a6, 0xeb010413, 0x941b1329, 0x5ef2e87c, 0x13d3cee7, 0x3d622e21, 0x12b6ac19, 0x8f4f84c4
.word 0x5a8d342d, 0xaf98fb79, 0xae56f763, 0x5484df7a, 0xa8dcf8bd, 0x219f0638, 0xe8c0edb7, 0xf2efd177
.word 0x7d27ef0d, 0x8a6f8e8c, 0x0554b2ed, 0x87f9d7ef, 0xac5ee73e, 0x05b0ff99, 0xc534105b, 0x5bf9e8b1
.word 0xbdcea4bf, 0x236a972a, 0x1b3261e1, 0xc301a0ed, 0x9e37fde3, 0xec83b41d, 0xf29d10d8, 0xa1934cde
.word 0x89cd1add, 0xbee5983f, 0x9cbb1713, 0xc244018f, 0xd6901708, 0x0ab84174, 0xec94ec08, 0xd597b1b6
.word 0x30ee29fb, 0xd5edd5f2, 0x57ae9c03, 0x04f7c7fd, 0x04fccc77, 0x20421ba9, 0x8b259c63, 0x4c37728f
.word 0x2b4b9ac5, 0x304f24e1, 0x0c34f11e, 0xf3ff56ca, 0xaab1dbfb, 0x0afcba79, 0xc6467264, 0xfc07aa24
.word 0x9dea8882, 0x0a8b7c9b, 0x1187144a, 0xabb5bc3b, 0x8e9e4626, 0xc65451da, 0x3940aed3, 0x54bbcbac
.word 0xf2d3f72d, 0x42bbf758, 0x4f1f945d, 0xbc0deb12, 0xf3b7e3d6, 0xa43141e1, 0x6fedebcd, 0xa08cab58
.word 0xc18d51a9, 0x0148e53c, 0xfe71e997, 0xf5630796, 0xccd09203, 0xbc1a92d3, 0xc3bfdb08, 0xc0c4128f
.word 0xddc45606, 0x138b4e0c, 0x6ad24f95, 0x21ea9110, 0xcffe01c6, 0x71c603c5, 0x38f8ae00, 0xa05dbad9
.word 0x4c8887bd, 0xdad99d5e, 0xe9296fc1, 0x9c913a2a, 0x6ec22f0d, 0x536f94b1, 0x7e6a90ab, 0xc97a6ab6
.word 0x2bdbf9d8, 0xeaa71617, 0xa8a138e9, 0xd9bd8682, 0x4242cfb5, 0x5db70dc7, 0x9477c21a, 0x96f39b7c
.word 0x9d3ac8b3, 0x88268555, 0x44a576a8, 0x08b7796a, 0x53da487b, 0x5213989d, 0x72e1b130, 0xa5f32859
.word 0xf26c77de, 0xa5c20612, 0x4d4f59ed, 0x975878f4, 0x525dc7d4, 0x619a5e75, 0x844138b7, 0xfc33f8e6
.word 0x3eb0fad6, 0x21df8a7c, 0x9f0429b9, 0xd7e9701f, 0x1f216492, 0x5ad7ce87, 0xe3224150, 0x225804bb
.word 0x68873784, 0x5e738329, 0xb5a6965a, 0xff5faffa, 0xdefcbd77, 0xe0f32919, 0x00d1227d, 0x6cd01954
.word 0x82f40c36, 0x81f44857, 0x5bff55f3, 0xe782aca9, 0x37451dfe, 0x399f123b, 0x68db56d6, 0x05373070
.word 0x5647ef3b, 0x0240cbae, 0xdc85e2a0, 0x266a555c, 0x1ccbbf35, 0xa0d2e0c5, 0x1042f4e0, 0x67a4583e
.word 0xab4c34a1, 0x1c68b93e, 0xa23d5ac6, 0x903dcfe6, 0xaa8eed8a, 0x1861064a, 0x04004dc3, 0x7488039f
.word 0x1d9ec3bc, 0x249d5816, 0x8c62263e, 0xcc51c050, 0xd28bd73f, 0x191f876e, 0xd7d73b24, 0x93f034c6
.word 0xb463bc6a, 0xfb17725c, 0x161d798e, 0xfc9c3e8a, 0x55535790, 0xd430a1f8, 0x7d208d73, 0x3d7e9fb5
.word 0x91d0613d, 0x35540a95, 0xe2226a5f, 0xbadaa929, 0xf4228203, 0x51141e33, 0x2ae3c503, 0x5304c5b3
.word 0xb9ed1995, 0x6df29c08, 0x97f226a8, 0xab0f64a1, 0x71c3890c, 0x7639ec2c, 0x7eec6624, 0xec2fc2ae
.word 0x0b341e52, 0x734f04b9, 0x93c534aa, 0x1d0d54ac, 0x57e3d48a, 0xc0b6043e, 0x178370bc, 0xd0c5c227
.word 0x0d37d762, 0x61483a21, 0xaec1daf8, 0xf7047f1d, 0xbdbfa18c, 0xa60adcf8, 0x8b0ee28a, 0x445ebd4a
.word 0xbf3f806d, 0xf04b583b, 0x3725be98, 0x2a957b79, 0x5187edd6, 0x9333f891, 0xc8b161fc, 0xfa315cb2
.word 0x3ea049f5, 0xb50a6bcc, 0xb03ecfd9, 0x0ba36cea, 0x1e470518, 0x3064ad54, 0x88ca6a48, 0x380f0c55
.word 0x551563c0, 0x0370e3e7, 0xd1c7dcc8, 0x4eb23471, 0x0091a6a6, 0x77fbd44f, 0x1a881959, 0xa1b75337
.word 0x39352cc5, 0x4a36912d, 0x2a11a553, 0x49c6b4c3, 0x26f810d9, 0x1b89f7b7, 0x13ad1b20, 0x57a9458a
.word 0xc9ffc8bd, 0x047a1db8, 0xf0e7531a, 0x085b220c, 0x04e4dce0, 0x010a291a, 0x30745103, 0x5bf93b6e
.word 0x625209a6, 0xde19c2ac, 0x28badc0d, 0xae0c33dc, 0xeeed3ec1, 0x010643a9, 0xc706cc70, 0xfac8028a
.word 0xf2a1f6d9, 0x3832fd9e, 0xcd96cb04, 0x8090a5d7, 0x55cf0aa9, 0x522c7269, 0x193ef323, 0x0f66d43c
.word 0xd0bd791d, 0xd1f68a50, 0x68ae392f, 0xc79d115c, 0xab9ebe60, 0x0ba2d975, 0xaf54a38b, 0x53282d25
.word 0x3ec59e99, 0xbe3ea941, 0x2aa87b39, 0xb63d1ccd, 0x5e4fd84c, 0x72b8b405, 0xad7cda15, 0x153f0f59
.word 0x83e0bb38, 0x5da263de, 0xe0a1b998, 0x0977eebd, 0xb0ac6d09, 0x25ef98f0, 0xe76b8883, 0x40ef6340
.word 0x0576ee80, 0xf25e721b, 0x0bd5ce51, 0x54552585, 0xa90bb3c4, 0x4e2fa8c4, 0xaa2a8549, 0x7dd80a36
.word 0xebeaaace, 0xabe0690a, 0xb2ffd6f7, 0x668ace43, 0x65a39555, 0xae95612d, 0x75ab248f, 0xca709fe0
.word 0xda243910, 0xee376a96, 0x129a2893, 0x27bde0e7, 0x459a9976, 0x26f5f8f7, 0x19d7d836, 0xb332ba63
.word 0x12473242, 0x38935d00, 0x33c3bf3a, 0xcc194b42, 0xeea7aa2c, 0x7053062a, 0xf1287930, 0x66bf5e94
.word 0xd020a0af, 0x4d8989d0, 0x6407d8d9, 0x4c63369a, 0xac464f71, 0xde5be40c, 0x132cb09e, 0x3e4b88a6
.word 0xaf9dc261, 0xb5fa50a9, 0x7d4373be, 0x647294f2, 0xbe5f4edf, 0x4420794c, 0xf74cdb76, 0xdd926531
.word 0xe460bde2, 0x529efc0c, 0x2a2f3017, 0xc2350cdf, 0x8d970569, 0x2cf8e5ca, 0x2594bd8e, 0x15cb1eba
.word 0x0fb0af51, 0x90220125, 0xb1a6debb, 0xd0d717d6, 0x491f83b5, 0xe3d84744, 0x28ea5b42, 0x395b5132
.word 0xca1ef255, 0x9ae6953d, 0xc2c89b12, 0x15b758f2, 0x0a269af5, 0x4db9855f, 0xb24e27f6, 0x0115f094
.word 0xbea0cbb8, 0xc1c1f22d, 0xe85cb7ae, 0x7d2fbcc8, 0x1f7e4798, 0x36cf1b05, 0xe06640b3, 0x1875b9c4
.word 0xd5e2ff8d, 0xce7de99d, 0xfded4e0f, 0x9175722e, 0xdb8a6158, 0x95b6639d, 0x79d3d9eb, 0x306f14de
.word 0x8375611a, 0x62466421, 0x9e61d18b, 0x3c03edcc, 0x6f30a8f2, 0xe8d97e75, 0x6f858cf9, 0xb443c975
.word 0xcf36adec, 0x3c4bc698, 0x3030d7d3, 0x094b1ea3, 0xa40580b0, 0x4b47e524, 0x08634c74, 0x9fd450d1
.word 0x9e54ba0f, 0x348f1ad9, 0x7f3d7958, 0x681848b1, 0x13dda552, 0x8b0943e3, 0xc621c763, 0xef2daf18
.word 0x959d00c1, 0xac955bbe, 0x0a4fd5bd, 0xe750c664, 0x0dfaa215, 0xac96f712, 0xbc5d30cb, 0x5dfb0d0d
.word 0x4fede47a, 0x457ae048, 0x2c8d8b7e, 0x032e5896, 0x88d4c12d, 0x888af1da, 0xe67409de, 0xf611d77d
.word 0x1aad746b, 0x6bf6439a, 0x0c31d27b, 0x7d91377a, 0x5b159407, 0x5fba45f4, 0xd33b6b7f, 0x54fcc31e
.word 0x6d43ca39, 0x4ec2826f, 0x28692bac, 0x4125aaae
.section .region_1,"aw",@progbits;
region_1:
.word 0xd5e2b7f1, 0x6e229397, 0xc5513271, 0xf1c0d49c, 0xe65b16e7, 0xe1390f45, 0xdb376885, 0x60e8c01a
.word 0x371b33ca, 0x2d3d85ac, 0xd0246a74, 0x6a6eaf1c, 0x9a57c965, 0xab88ca14, 0x04b953d6, 0x2099cc7f
.word 0xfb05ba1b, 0xd9c762a5, 0x59da292d, 0xe7068e99, 0x410d6086, 0x73f01615, 0xe211b156, 0x967b6168
.word 0x4f1980bd, 0x6a3c30bd, 0xb600ec15, 0x5217fc7e, 0x557a0657, 0xf2915f1a, 0x152c5898, 0xd196befc
.word 0x54266309, 0x628289dd, 0xe09a5aa1, 0x972c8433, 0x76069391, 0x73df44a1, 0x8d8405fd, 0xabd70d15
.word 0x96d3c324, 0x5b3705fa, 0x17558a65, 0x1eb81fc0, 0x4304dd61, 0x5c2b4490, 0x37c781af, 0xb98d2572
.word 0x3be54b25, 0xc41d5a32, 0x033a91ad, 0x3f226675, 0xe432e265, 0x28c54138, 0xb0a246cc, 0x4b8f5bf9
.word 0xa4a7b789, 0xfe278440, 0x975e6d94, 0x91f2b9bd, 0x2d2026cf, 0x87fa3d77, 0xe39b5995, 0x210dc3b3
.word 0xde91f1e4, 0x14c61426, 0x8d55f3f0, 0x1faf9395, 0xfff016a6, 0x30b12b93, 0xc49ad463, 0x86391805
.word 0x16aa74b6, 0x48da3eac, 0xc3b42468, 0xe0b14b6c, 0x2e4a2e8e, 0x3e230d1a, 0x4ab9b342, 0xa6f776fd
.word 0xe3cebf64, 0x9839287f, 0xc357e6f4, 0x1d5b0ba1, 0xaa6c2d18, 0xf2a57b97, 0xfe2f40c9, 0x7d89e474
.word 0x2bec146f, 0x45a24f47, 0xc18cb9c0, 0x72c97e9e, 0x9e982f34, 0x1f77bdc0, 0x297e59ab, 0x0cc42a5a
.word 0x69fbca1f, 0xb826a4df, 0xd5e6c1cd, 0x046f8c2d, 0xe0e03398, 0x2204e773, 0x13c319f9, 0xf74c8e8b
.word 0x8698a6c2, 0x5ccfe937, 0xd32fb35a, 0xd109cdcb, 0x5cdc0bec, 0x212e6273, 0x51a4fa64, 0x6cd7bd85
.word 0xe6cdec3a, 0xd759556e, 0xad0a955b, 0x281a44b4, 0x652a0cf5, 0x1d215fbe, 0xd4e3c84a, 0x31a29394
.word 0x11baa4ea, 0x140f29a5, 0xef2a19c8, 0xdbf75f20, 0xe96316ec, 0xebfa37d9, 0x2ec94f9b, 0x20496bd2
.word 0x6edafee1, 0x9a624be2, 0x870ce186, 0x0b994fa3, 0xc71d1030, 0x9de73988, 0x52277b82, 0x1f7cdd38
.word 0x52f254ba, 0xeb6ad6ca, 0xe9c4d303, 0x9258b2cb, 0x442fb1f3, 0xb8fc1a3d, 0x9f915a95, 0x1399c43a
.word 0xa35cd730, 0x14062a87, 0x484103ec, 0xe1bc2ec7, 0xaff27a29, 0x9a66f833, 0x31b1bc15, 0xfd489049
.word 0x60962686, 0x01623ead, 0x57962396, 0x3ed9a0b2, 0xa2c95a43, 0x4728bb97, 0xfa4a5355, 0x574c0985
.word 0x8575a3ae, 0x4e031356, 0x797a111c, 0xc0916790, 0x6c4159f7, 0xb9dbea22, 0x42e0e39c, 0xa8b7b38e
.word 0x38a1e614, 0xca46a22b, 0xac5c089c, 0xeca1788d, 0x8f8517f8, 0x089e1507, 0x3fa9eae1, 0xc7ef2562
.word 0xe5c29591, 0xd411ad83, 0xd77dc5f5, 0xb1e77df2, 0xe85c6f59, 0x75475cf8, 0x122e6129, 0x2b1c3148
.word 0x3e040bd5, 0xebb615c0, 0xf7085c7a, 0x82268fe3, 0x4ab0514e, 0x8d0cffe9, 0x7940b221, 0x1750831d
.word 0x4623c05f, 0xfeaef26b, 0xa8566929, 0xb54dff4d, 0xa21b6af3, 0xcdae5334, 0x6a46eef2, 0xbd25af40
.word 0x30eb2f27, 0xaccafb50, 0x99b1716b, 0x050c5422, 0xe8a8aa34, 0xc85242dc, 0xb51c33f0, 0xcb43eddc
.word 0x32ae52d1, 0xcd36bf5c, 0x5036fe08, 0xfceb7998, 0xd8f26314, 0x90a54873, 0x9c33e48c, 0xf05e7f63
.word 0x8fc8f6d9, 0x37205ff1, 0x7e970c23, 0x9e4ca603, 0x9fb2f7c0, 0xbb0a3c44, 0xfaca9b18, 0x47b6e234
.word 0x6bd292a6, 0x338e9c2c, 0x1f79e8a6, 0xd61689f9, 0x5849bea6, 0xe3e3fa97, 0x04814cf5, 0x984646db
.word 0x050feb2e, 0x7c516248, 0xa75daa31, 0x198adca0, 0x1f4920a2, 0x5d1b13d7, 0xe64e003e, 0x795bdd8c
.word 0xf0c404a9, 0xdc88e82b, 0x052a7ec3, 0x1a414c0e, 0x0033e01d, 0x485b0c49, 0x5c6c7907, 0xc582e4b2
.word 0x3e1d401b, 0x6035fa9e, 0x7f199a9b, 0x3860dfb0, 0x7f7be482, 0xd4d85a90, 0x9d50b479, 0xc42abd90
.word 0x1cf98504, 0x4f63cb3d, 0x1954a905, 0x2c2ad884, 0xaa7eb5b9, 0xad32a2af, 0x08ffab54, 0xbd929ff0
.word 0xfd9e0c0d, 0x870b69d8, 0x1a1a2d90, 0xe0ab8461, 0xf9f13632, 0x958dc42f, 0xfd8215c1, 0x5c5fb517
.word 0x49c15dc5, 0xb03ec66a, 0x58226143, 0xb9dc2274, 0xa58442e8, 0xca3fb803, 0xe2340214, 0x8ab3bd95
.word 0xd6772944, 0xfa6812bc, 0xc638a19c, 0x9251ba3e, 0x7e7b0b56, 0x1d07e1ce, 0xf8ec70e9, 0xd9a1792a
.word 0x20b81d35, 0xa788b3c4, 0x17a32736, 0x7c6d35e9, 0x9e01f918, 0x77e71aca, 0x6ad8e0ec, 0xfff8257f
.word 0x9d378ff0, 0xbf997043, 0x8b07b0ca, 0xa42a9413, 0x411ad3f4, 0xf4b8f9dd, 0x38869396, 0x221d1499
.word 0x330a33f1, 0xb8286b73, 0x50da2c2a, 0xdd8aa414, 0x5ad19ffa, 0xfba44669, 0xa11b226c, 0x1d04fb86
.word 0xb2dccaea, 0x68413b89, 0x8ef57fe2, 0x3c0514f0, 0xbd56a79d, 0x9bb2d9c8, 0x8788ba8a, 0xbab27c03
.word 0xf44cefd4, 0xceda7d66, 0x8ebcdebd, 0xbd9885fd, 0x311efe2b, 0x901d7836, 0x08e7594d, 0x9904a591
.word 0x8c23524b, 0xe638b3ad, 0xa0a979e5, 0x6fe234e7, 0x320ebc25, 0x35068b2d, 0x37f95147, 0xc06b1cc4
.word 0x78619d82, 0xca257393, 0x032ed40e, 0xc7812fcc, 0xc6594b55, 0xf0c433f8, 0x46840b45, 0xc208bbd5
.word 0x79fa351c, 0xe7b4cee7, 0x3965e23a, 0x870fab62, 0xb7f0220e, 0x27e160cb, 0x0d1056ff, 0x8ed87f7b
.word 0x9da57975, 0xe35969ee, 0xd5b0a1dd, 0x091096b1, 0xf2013bdc, 0xfaded4f3, 0xbaa9634a, 0xe36da933
.word 0xf87f3ebe, 0x2106f9dd, 0xe1f10c23, 0xde945fc4, 0x8540a49b, 0x2933df38, 0x3af1d9c6, 0x3ba4a5a6
.word 0xe2f17625, 0x6bbca56e, 0x10051af8, 0x659e84bc, 0x15c31055, 0xa37e2c6b, 0x85752c55, 0x35799dde
.word 0x899b1c82, 0x3eb26f5d, 0x2cfdcb36, 0x82376fad, 0x116ddb19, 0x7d164089, 0x0d16c79f, 0x8241bf99
.word 0x2de6cc85, 0x133a44d3, 0xbc95a716, 0xabd7ce62, 0x7c2b3a7a, 0xfb55fc39, 0x96fb6efd, 0x458cf229
.word 0xeae71294, 0xf94e34d0, 0x36313edc, 0xd763f557, 0xb64be9f6, 0xba1f473c, 0x97f48546, 0xb9be0e30
.word 0x6677764a, 0xabb140c5, 0x5d288a04, 0xbde23048, 0x1d4cf1c0, 0x6aba1a50, 0x17f9b8f6, 0xd6188283
.word 0x7d644e8e, 0x97d6d591, 0x6d1c7e6e, 0x419ff8ae, 0xceb6e139, 0x7b02f1b7, 0x633ac99a, 0xab664691
.word 0x1aaf01ba, 0xe271714c, 0x3123fb81, 0xffbb8fc8, 0xa1f100ac, 0xcfa3ee43, 0x664e83cd, 0x958e47cb
.word 0xc8a0e487, 0x706a4828, 0x86d7be3b, 0xdbe11ff9, 0x6ae05088, 0xa096c05d, 0xcd6973d8, 0x85fddafb
.word 0x116b78d7, 0x6b0e6d86, 0x430212d8, 0x75a7699d, 0xaa154757, 0x445e0e0d, 0x388a6c23, 0xc93a791e
.word 0xd15b6d70, 0x3a3cf4e3, 0xd1d05db3, 0x68750877, 0x20c5735c, 0xe5904115, 0xd8992710, 0xadcdae18
.word 0xb968294e, 0x0419043a, 0xa1d1626a, 0xbed1bfad, 0x94090385, 0x0b073016, 0x2611b02f, 0xa9c4ba8d
.word 0xe95b4c7e, 0xba219791, 0x18530dc7, 0xbf91dc55, 0xfd60fe5b, 0x762b3019, 0x9f89584d, 0xc7a97abe
.word 0x828b7bea, 0x93b855d8, 0x5d9128f2, 0xfcd50432, 0x78080bb5, 0xcfb7352b, 0x8e782a8f, 0xc75fb7ab
.word 0x90a1e908, 0x9a0921a3, 0xcbb1e29e, 0xc6ac3305, 0xad999778, 0x8d5afc09, 0x5b87c695, 0x1e082830
.word 0xfb28db95, 0xa0361bc1, 0xc61260c1, 0x97b60feb, 0x37ab266d, 0xcfee1010, 0xd1c10038, 0xaffd93c7
.word 0x17ef46fb, 0x8ea5fddc, 0xf8d6a90d, 0xaadf18c6, 0x3cf16aca, 0x810e23f2, 0x489d3dfe, 0xe99cc4f9
.word 0x3993adca, 0xf90a870a, 0x3234fe64, 0xb1ae7ac7
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x15, x17, zero
                  csrr x24, 0x300 # MSTATUS
                  csrr x24, 0x342 # MCAUSE
                  srli x24, x24, 31
                  bne x24, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x24, 0x341 # MEPC
                  csrr x24, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x24, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x24, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x24, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x24, x29, ecall_handler
                  li x29, 0x1
                  beq x24, x29, instr_fault_handler
                  li x29, 0x5
                  beq x24, x29, load_fault_handler
                  li x29, 0x7
                  beq x24, x29, store_fault_handler
                  li x29, 0xc
                  beq x24, x29, pt_fault_handler
                  li x29, 0xd
                  beq x24, x29, pt_fault_handler
                  li x29, 0xf
                  beq x24, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x24, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

ecall_handler:    
                  la x24, _start
                  sw x0, 0(x24)
                  sw x1, 4(x24)
                  sw x2, 8(x24)
                  sw x3, 12(x24)
                  sw x4, 16(x24)
                  sw x5, 20(x24)
                  sw x6, 24(x24)
                  sw x7, 28(x24)
                  sw x8, 32(x24)
                  sw x9, 36(x24)
                  sw x10, 40(x24)
                  sw x11, 44(x24)
                  sw x12, 48(x24)
                  sw x13, 52(x24)
                  sw x14, 56(x24)
                  sw x15, 60(x24)
                  sw x16, 64(x24)
                  sw x17, 68(x24)
                  sw x18, 72(x24)
                  sw x19, 76(x24)
                  sw x20, 80(x24)
                  sw x21, 84(x24)
                  sw x22, 88(x24)
                  sw x23, 92(x24)
                  sw x24, 96(x24)
                  sw x25, 100(x24)
                  sw x26, 104(x24)
                  sw x27, 108(x24)
                  sw x28, 112(x24)
                  sw x29, 116(x24)
                  sw x30, 120(x24)
                  sw x31, 124(x24)
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x17, x15, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x15, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x15, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x17, x15, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x24, 0x341
                  addi  x24, x24, 4
                  csrw  0x341, x24
                  add x17, x15, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x24, 0x300 # MSTATUS;
                  csrr  x24, 0x304 # MIE;
                  csrr  x24, 0x344 # MIP;
                  csrrc x24, 0x344, x24 # MIP;
                  add x17, x15, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
