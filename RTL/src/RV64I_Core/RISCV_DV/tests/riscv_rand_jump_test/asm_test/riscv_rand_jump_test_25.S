.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x28, h0_start
jalr x0, x28, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 0
                  csrw 0x305, x4 # MTVEC

mepc_setup:       
                  la x4, init
                  csrw 0x341, x4

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x4, 0x1800
                  csrw 0x300, x4 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0x0
                  li x6, 0x80000000
                  li x7, 0x0
                  li x8, 0xf7055052
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x86ecdc75
                  li x12, 0x8
                  li x13, 0x69d3db69
                  li x14, 0xb1b4890d
                  li x15, 0xe1214bc
                  li x16, 0xfc520420
                  li x17, 0x80000000
                  li x18, 0xa
                  li x19, 0x80000000
                  li x20, 0x8
                  li x21, 0x0
                  li x22, 0xf626d8c8
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0xf
                  li x27, 0x6
                  li x28, 0x80000000
                  li x29, 0x80000000
                  li x30, 0xc1313ede
                  li x31, 0xf6152322
                  la x26, user_stack_end
main:             la           sp, region_0+1907 #start riscv_load_store_rand_instr_stream_1
                  srai         t4, sp, 11
                  xori         s0, t2, -1453
                  lb           s5, -152(sp)
                  sb           t2, 53(sp)
                  lb           a2, -98(sp)
                  lbu          tp, 61(sp)
                  lbu          zero, 74(sp)
                  srli         gp, s2, 25
                  lbu          a3, 26(sp)
                  lbu          a5, -240(sp)
                  lbu          s2, 42(sp)
                  sra          s8, t1, gp
                  lbu          a2, -158(sp)
                  and          s0, a4, s4
                  auipc        s8, 692909
                  sb           a2, -242(sp)
                  lui          a1, 920134
                  lb           s8, -254(sp)
                  lb           s3, 70(sp)
                  lb           t6, -15(sp)
                  lb           a5, 32(sp)
                  addi         s3, tp, 1422
                  sw           s2, 21(sp)
                  ori          zero, s1, -1770
                  sra          a3, s3, t2
                  srl          gp, s6, a3
                  lh           s3, -161(sp)
                  xori         s6, s6, -1710
                  sh           s6, -153(sp)
                  lb           t5, -126(sp)
                  ori          s8, t5, -1272
                  nop
                  lbu          a5, -218(sp)
                  nop
                  sltu         a6, a4, s0
                  sra          s5, s9, zero
                  lb           a2, -184(sp)
                  lhu          s3, -25(sp)
                  sltu         s7, gp, s6
                  lb           s11, 80(sp)
                  xor          tp, s4, tp
                  sb           s7, -110(sp)
                  add          a6, s1, s2
                  lb           s9, -134(sp)
                  lb           t1, -42(sp)
                  lbu          a5, -132(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+563 #start riscv_load_store_rand_instr_stream_16
                  lb           s4, 156(sp)
                  srl          a3, t5, tp
                  sb           t3, 108(sp)
                  slti         s7, s3, -714
                  add          s9, a2, s10
                  sb           t3, 39(sp)
                  sb           a3, -36(sp)
                  lb           a4, 112(sp)
                  addi         a4, a1, 1207
                  lb           s11, 230(sp)
                  nop
                  lui          a0, 744962
                  sb           t6, 216(sp)
                  sub          s8, s3, t0
                  lbu          t2, -228(sp)
                  sb           gp, 88(sp)
                  auipc        ra, 545798
                  lbu          t1, 163(sp)
                  andi         t2, a0, -1066
                  andi         s2, s10, 1896
                  sltiu        gp, s7, -705
                  lbu          t4, -184(sp)
                  lbu          a2, -248(sp)
                  and          s7, t3, s8
                  sltiu        t6, s3, 962
                  xor          t1, s8, s8
                  sra          s8, a5, t2
                  sb           a2, 99(sp)
                  lui          t5, 1031873
                  srli         s5, a6, 30
                  sltiu        a1, s0, 1802
                  sb           a7, -130(sp)
                  add          gp, s1, tp
                  sb           s10, 32(sp)
                  sb           ra, -27(sp)
                  auipc        t6, 40796
                  lhu          s8, -95(sp)
                  sh           t3, 109(sp)
                  lbu          s3, -78(sp)
                  lh           s6, 227(sp)
                  sll          s1, a7, zero
                  lb           s11, -81(sp)
                  slli         s8, ra, 14
                  and          a3, a2, s8
                  addi         s3, a6, -1538
                  lh           s3, -99(sp)
                  addi         tp, s0, -235
                  lw           s9, 41(sp)
                  sltiu        t2, gp, -69
                  lbu          t5, -217(sp)
                  sltiu        s0, s1, 1159
                  lbu          t2, -22(sp)
                  sltu         s9, s0, s1
                  sh           a4, -61(sp) #end riscv_load_store_rand_instr_stream_16
                  la           sp, region_0+484 #start riscv_load_store_rand_instr_stream_10
                  sb           a3, 5(sp)
                  sltu         ra, t5, t0
                  srli         t6, zero, 28
                  lb           a7, -9(sp)
                  addi         a6, s3, 1334
                  lb           a1, -11(sp)
                  srli         s5, ra, 24
                  lbu          a7, 15(sp)
                  sub          a6, gp, tp
                  sltu         a6, s11, tp
                  ori          s2, zero, -481
                  sltiu        ra, t4, -257
                  sub          t1, gp, s6
                  slt          s4, zero, a1
                  srl          a1, a5, t4
                  lbu          s1, 2(sp)
                  sb           a1, 7(sp)
                  slti         s8, tp, -1192
                  nop
                  sra          t1, s11, s4
                  lb           tp, -11(sp)
                  sra          a4, t3, s6
                  srai         s9, t6, 11
                  lb           ra, -5(sp)
                  sb           a4, 6(sp)
                  lbu          t5, 12(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+1762 #start riscv_load_store_rand_instr_stream_13
                  sw           sp, -14(sp)
                  sb           s11, 15(sp)
                  lbu          t1, -3(sp)
                  lh           ra, 12(sp)
                  sra          s0, tp, a6
                  sw           s11, -14(sp)
                  sb           s11, -5(sp)
                  lb           a5, -8(sp)
                  sb           s3, -9(sp)
                  lb           zero, 2(sp)
                  sb           s11, -6(sp)
                  lbu          s3, -9(sp)
                  ori          t2, s6, 1184
                  sll          s3, a0, t5
                  slli         s7, t2, 14
                  lb           tp, 15(sp)
                  slli         a7, s10, 10
                  addi         s5, s0, 1488
                  sb           t6, 4(sp)
                  sw           s2, -10(sp)
                  nop
                  sra          tp, a1, s8
                  sltu         t6, s0, a3
                  lbu          s9, 7(sp)
                  lbu          a0, -15(sp)
                  sltu         t5, s10, t3
                  slli         s3, t1, 24
                  slt          s3, t2, s11
                  lbu          s5, 4(sp)
                  andi         t1, t2, 1822
                  slti         s8, s7, 1915
                  sb           a3, 7(sp)
                  srai         zero, t1, 2
                  lb           s7, 1(sp)
                  lhu          a5, -14(sp)
                  sw           t4, 14(sp) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_0+1181 #start riscv_load_store_rand_instr_stream_0
                  addi         s1, a0, -739
                  addi         a6, s11, 239
                  add          t2, s8, t5
                  sh           a5, -9(sp)
                  xori         a2, s2, -255
                  sltu         gp, t1, s6
                  lui          t2, 644048
                  sw           s1, 15(sp)
                  sw           s9, 15(sp)
                  nop
                  srai         t1, t4, 20
                  sll          gp, t6, a6
                  srai         t4, t4, 2
                  srl          a1, s4, t3
                  lbu          a4, 0(sp)
                  slli         ra, sp, 17
                  sltiu        s8, s5, 479
                  srai         s6, t3, 15
                  slti         t4, zero, -1413
                  lb           s5, -12(sp)
                  lbu          s0, -6(sp)
                  lui          a4, 875450
                  sub          zero, sp, s0
                  sra          s11, zero, a1
                  lb           a1, 12(sp)
                  ori          s0, a5, 1554
                  addi         s3, s9, -1257
                  add          s8, a4, tp
                  lb           a6, 2(sp)
                  or           tp, sp, a6
                  sb           a0, 3(sp)
                  addi         s4, s11, 1505
                  andi         zero, s3, -620
                  and          t1, s10, s9
                  sb           s2, 1(sp)
                  auipc        a4, 1000910
                  srai         s1, s6, 16
                  sb           t2, 10(sp)
                  slti         s11, s8, 1797
                  sltiu        s3, t0, 1444
                  auipc        t4, 195299
                  lh           t4, 11(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_1+981 #start riscv_load_store_rand_instr_stream_11
                  lbu          a5, 889(a7)
                  lhu          tp, -207(a7)
                  lbu          s9, -820(a7)
                  add          t5, a3, a4
                  add          a0, s5, zero
                  lb           a3, 811(a7)
                  lb           a3, 66(a7)
                  add          s2, zero, a4
                  sh           t3, -509(a7)
                  lh           t4, 639(a7)
                  sb           s7, 533(a7)
                  and          s2, t5, sp
                  slli         sp, s5, 28
                  sra          s5, a3, s9
                  or           gp, a7, s10
                  srli         a1, t6, 29
                  lbu          a5, 350(a7)
                  slti         gp, a2, -2013
                  lbu          a2, 144(a7)
                  srli         t6, a6, 5
                  lb           s0, -514(a7)
                  lb           s11, 1003(a7)
                  sll          a2, t3, s9
                  xori         s9, s7, 528
                  sb           s5, 508(a7)
                  sh           a4, 751(a7)
                  lb           a2, -530(a7)
                  lhu          t4, -375(a7)
                  sb           s8, -18(a7)
                  lh           t2, -155(a7)
                  lbu          t5, -324(a7)
                  lhu          a5, 887(a7)
                  slti         a1, s3, -1112
                  addi         a6, s9, -1990
                  sb           s7, -362(a7)
                  lb           sp, -134(a7)
                  lbu          a2, -668(a7)
                  lb           t1, 534(a7)
                  lb           s1, -192(a7)
                  xori         s6, s3, -1429
                  ori          a4, a0, -1458
                  auipc        zero, 615683
                  xor          a4, s9, t3
                  andi         ra, a2, 1271
                  sb           a2, 394(a7) #end riscv_load_store_rand_instr_stream_11
                  la           s9, region_0+1307 #start riscv_load_store_rand_instr_stream_14
                  lh           a7, -57(s9)
                  lb           sp, -116(s9)
                  or           t5, s4, a2
                  ori          a4, s9, 1040
                  lhu          gp, 61(s9)
                  sb           t5, -201(s9)
                  sltiu        s11, s9, 1867
                  srl          a7, t2, t4
                  lbu          t2, -128(s9)
                  add          a7, t3, a6
                  sb           s11, -225(s9)
                  sltiu        s0, s10, -825
                  srai         t2, s7, 14
                  srl          t6, a1, a6
                  srai         s6, t2, 30
                  xori         a4, a2, -1345
                  sh           a2, 47(s9)
                  lw           s3, 61(s9)
                  lbu          a5, 66(s9)
                  ori          zero, a7, -75
                  ori          t2, a7, -1439
                  lbu          a0, 244(s9)
                  lbu          sp, 54(s9)
                  auipc        a7, 945797
                  sltu         gp, t5, zero
                  xor          a2, t2, s11
                  sltu         a3, s9, s1
                  sb           a4, -187(s9) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_1+514 #start riscv_load_store_rand_instr_stream_12
                  sb           t3, 91(sp)
                  srli         t6, s1, 9
                  lbu          s7, 1005(sp)
                  slti         t2, t5, 67
                  lbu          t2, 1077(sp)
                  lb           gp, 585(sp)
                  sb           t0, 409(sp)
                  auipc        t4, 52567
                  lb           t6, 729(sp)
                  or           s5, s3, s0
                  sh           gp, -28(sp)
                  sll          a7, s3, sp
                  add          t1, s8, s5
                  sub          t2, t4, s7
                  xori         s3, a4, -580
                  xor          ra, ra, tp
                  auipc        s11, 718905
                  lbu          s3, 923(sp)
                  lbu          a6, 118(sp)
                  lbu          s5, 424(sp)
                  lb           s0, 113(sp)
                  xor          s9, t4, s7
                  addi         s6, s5, 1679
                  slli         a1, a1, 9
                  lw           s2, 1042(sp)
                  lbu          a4, 1071(sp)
                  nop
                  lbu          ra, 916(sp)
                  sb           zero, 1039(sp)
                  srai         s1, s9, 2
                  sb           ra, 138(sp)
                  lh           t6, 968(sp)
                  lb           t6, 937(sp)
                  lbu          s2, 1469(sp)
                  lbu          s2, -315(sp)
                  sub          t5, a1, s0
                  srl          a7, a5, a5
                  add          a7, t4, t3
                  srl          t2, tp, a5
                  xori         t2, a4, 1262
                  xor          s8, s10, a5
                  lui          s7, 1010075
                  and          a3, t2, ra
                  sh           a6, 346(sp)
                  addi         ra, a7, 1945
                  xori         zero, sp, 175
                  sra          t5, a5, t3
                  add          s11, s3, zero
                  lbu          s5, 412(sp)
                  sb           a2, -503(sp)
                  sltiu        a3, s5, -851
                  slti         a3, a1, 691
                  sh           t4, 1400(sp) #end riscv_load_store_rand_instr_stream_12
                  la           s0, region_0+297 #start riscv_load_store_rand_instr_stream_7
                  xori         s5, s3, -1212
                  lw           t5, 51(s0)
                  sll          s4, t1, a6
                  sll          s6, t3, gp
                  lbu          s11, 12(s0)
                  lbu          t5, 13(s0)
                  xori         t1, t3, 81
                  sb           s9, 35(s0)
                  sra          t5, s6, t0
                  ori          ra, t4, -881
                  lbu          ra, 8(s0)
                  sltu         t1, a6, s1
                  lui          s2, 979142
                  sb           s8, -20(s0)
                  lbu          ra, -24(s0)
                  lb           a5, -42(s0)
                  lb           t2, 4(s0)
                  or           a5, s9, a6
                  sra          t6, a7, t3
                  sltiu        s8, a3, 833
                  sltu         a1, t1, a4
                  xor          s11, a6, ra
                  sb           t1, -47(s0)
                  andi         a0, s10, 851
                  lhu          s7, -17(s0)
                  lb           s7, -44(s0)
                  slti         a5, s4, -593
                  sb           a4, -13(s0)
                  srli         t5, s0, 29
                  srl          s2, a0, a0
                  xor          a6, t6, t4
                  sb           s1, -34(s0)
                  add          t4, a7, a1
                  add          s9, a0, a1
                  lh           s3, 29(s0)
                  nop
                  lbu          s11, -42(s0)
                  sb           s1, -49(s0)
                  sltiu        a5, s7, 1189
                  sh           a4, 17(s0)
                  auipc        t5, 801639
                  xori         s7, zero, 1751
                  sb           t1, 38(s0)
                  sb           s4, -60(s0)
                  sb           t4, -59(s0)
                  andi         s4, s8, -1577
                  sb           tp, -24(s0)
                  sb           s5, -48(s0)
                  slti         a7, zero, -556
                  ori          s9, t2, -93
                  slti         s6, t2, 495
                  sb           tp, 18(s0)
                  sltiu        s6, t5, 557
                  lb           ra, 42(s0)
                  sb           s10, 63(s0)
                  add          s4, s2, s2
                  sb           t4, 52(s0) #end riscv_load_store_rand_instr_stream_7
                  la           t6, region_1+1955 #start riscv_load_store_rand_instr_stream_8
                  sll          s5, s10, ra
                  lhu          s1, -1311(t6)
                  sw           sp, -1867(t6)
                  nop
                  addi         s1, s2, -627
                  lbu          t2, -467(t6)
                  sb           s0, -204(t6)
                  sub          s8, s4, zero
                  addi         s5, zero, 2035
                  lb           a6, -1083(t6)
                  sll          a1, a7, a6
                  sb           s9, -689(t6)
                  nop
                  xor          s2, a2, s5
                  sltu         a2, t4, s1
                  lb           s9, -139(t6)
                  add          s2, a2, a2
                  lbu          s5, -1280(t6)
                  sb           a1, -1110(t6)
                  sb           t2, -1099(t6)
                  slt          zero, t3, sp
                  lb           s7, -1900(t6)
                  lb           a7, -788(t6)
                  sb           sp, -734(t6)
                  sh           s8, -991(t6)
                  lhu          a4, -1329(t6)
                  ori          s1, gp, 1634
                  sb           s10, -1921(t6)
                  sb           s1, -1457(t6)
                  lh           a7, -801(t6)
                  or           a4, ra, s10
                  lh           s1, -641(t6) #end riscv_load_store_rand_instr_stream_8
                  sltu         ra, s5, a7
                  andi         a0, t3, -2010
                  sra          t4, s6, s0
                  ori          s2, sp, 1837
                  bne          a3, s3, 20f
                  lui          s5, 948006
                  la           tp, region_1+1332 #start riscv_load_store_rand_instr_stream_5
                  sb           s1, 30(tp)
                  and          s9, s10, a2
                  sltu         a0, a6, a5
                  lb           a7, -129(tp)
                  slti         t4, sp, 732
                  lbu          s7, -96(tp)
                  addi         t4, t6, 1864
                  add          t2, a2, tp
                  andi         s0, a7, -1468
                  ori          a0, a7, -1377
                  lb           gp, -1(tp)
                  and          a3, ra, t5
                  andi         a2, sp, 478
                  sb           a2, -28(tp)
                  sltu         t2, a2, t3
                  srl          s5, a7, t0
                  sb           s0, 242(tp)
                  sltu         s1, ra, t6
                  sll          s6, s11, a1
                  sb           s6, -215(tp)
                  srl          t5, a3, s2
                  sll          a7, t2, t1
                  sll          a4, s6, s2
                  lb           s3, -230(tp)
                  ori          t5, s1, -1916
                  lb           a5, -148(tp)
                  slli         t1, t2, 16
                  sll          s5, s8, s10
                  and          a6, zero, t0
                  and          s1, gp, t6
                  xor          s11, a4, t3
                  andi         s6, a6, -837
                  lbu          s0, -85(tp)
                  xor          sp, zero, t4
                  xor          a4, s5, t6
                  srai         s5, a4, 7
                  slt          s6, a3, t5
                  lbu          s6, 141(tp) #end riscv_load_store_rand_instr_stream_5
                  sltu         zero, a3, s9
                  or           t1, a7, s2
                  bltu         a1, t4, 28f
                  beq          s8, a2, 11f
                  slti         a4, t2, 1121
11:               xor          s5, t3, t3
                  xori         t4, t0, 1437
                  sltiu        a3, s5, -338
                  xor          t6, a2, s8
                  beq          t0, a6, 34f
                  bgeu         t5, s8, 30f
                  sub          s4, s3, zero
                  srli         s7, s3, 22
                  xori         a5, t5, -115
20:               slli         s8, s7, 0
                  lui          sp, 628927
                  slti         s7, s9, -237
                  auipc        s0, 593537
                  bge          t2, s3, 25f
25:               sltiu        a0, a1, 1828
                  bgeu         s8, a3, 29f
                  beq          tp, t6, 44f
28:               or           s6, s7, a1
29:               xori         t6, s11, 233
30:               bge          a1, s2, 37f
                  and          tp, a7, t2
                  srli         a1, a1, 0
                  sltu         t6, s10, s7
34:               bltu         t4, s2, 51f
                  srai         s4, a7, 26
                  sra          s1, s6, t4
37:               bgeu         t5, s10, 53f
                  add          zero, tp, s7
                  add          a5, zero, gp
                  sra          ra, s2, t5
                  bltu         sp, t3, 45f
                  or           tp, t5, s8
                  slli         s6, a1, 11
44:               addi         tp, a1, 1936
45:               auipc        gp, 703224
                  srl          s7, t3, s5
                  sra          a6, t6, a1
                  beq          s3, a3, 68f
                  bge          s1, s8, 67f
                  andi         s1, t0, 498
51:               nop
                  sub          a3, s0, s10
53:               sra          t4, a0, gp
                  slt          a5, s0, s6
                  srai         zero, zero, 19
                  xori         tp, t2, -876
                  sltu         s6, a7, t4
                  srai         a4, zero, 14
                  xor          a4, a2, t4
                  srl          s4, zero, t4
                  andi         ra, s1, 44
                  ori          a0, a6, -1543
                  addi         sp, t5, 1550
                  auipc        t5, 991538
                  addi         gp, s9, 1077
                  bge          t1, t5, 67f
67:               lui          s1, 835589
68:               and          s6, s3, s4
                  addi         gp, t4, -848
                  add          t4, s1, s1
                  bne          tp, s10, 76f
                  slli         gp, s10, 6
                  bne          a4, s1, 85f
                  srl          t1, a3, ra
                  sub          s8, s7, s3
76:               add          a3, a2, t0
                  sub          a2, a7, t3
                  add          a0, s0, t4
                  sltiu        ra, a1, 907
                  xori         s8, gp, 1816
                  srl          t1, t2, t6
                  nop
                  srl          a4, s5, s8
                  slt          t4, t3, s9
85:               sltu         t1, a0, t5
                  srai         t5, s1, 0
                  srli         zero, ra, 8
                  slti         a0, s5, 1969
                  sub          s8, s8, t1
                  andi         t2, s3, 887
                  slli         s1, s11, 25
                  slti         s2, a2, -146
                  sra          s0, a3, a1
                  lui          s1, 573103
                  xori         s4, t4, -1253
                  sll          tp, ra, s10
                  add          sp, a7, s7
                  xori         a5, s5, -114
                  srai         a6, s0, 27
                  bge          zero, s10, 111f
                  slti         t6, s4, 1355
                  sub          a3, s10, t2
                  lui          a7, 815518
                  bge          ra, s11, 120f
                  xor          s4, s10, a4
                  bge          t4, s10, 108f
                  ori          a4, s7, -1727
108:              blt          s7, gp, 128f
                  bgeu         a2, s1, 113f
                  auipc        s2, 91968
111:              sll          a5, sp, t4
                  xori         a5, s5, 1825
113:              bne          a2, a5, 129f
                  or           t5, a2, sp
                  bge          a3, sp, 133f
                  bgeu         t4, t4, 129f
                  ori          a4, s7, 1175
                  sltu         s6, sp, s3
                  sltiu        a2, zero, 918
120:              lui          t4, 984766
                  bltu         a1, s10, 139f
                  srl          t5, t3, t6
                  slli         s0, t6, 14
                  sltu         a4, zero, t2
                  blt          a7, a5, 139f
                  sra          s3, ra, s10
                  bltu         a3, t5, 131f
128:              beq          s2, s2, 129f
129:              srai         a3, s4, 24
                  sra          a4, a3, a5
131:              andi         s3, s4, -496
                  slt          s3, t2, t6
133:              sltiu        ra, t2, 1004
                  blt          a5, s9, 147f
                  lui          s9, 557045
                  ori          s2, s3, 531
                  bne          t5, s1, 138f
138:              srli         t6, s9, 8
139:              sll          s1, a7, t6
                  bge          t6, s6, 158f
                  srl          t5, s3, s0
                  srl          t5, tp, a6
                  blt          s7, s6, 144f
144:              auipc        s6, 679099
                  srai         s9, s4, 7
                  addi         t2, s3, 1993
147:              bge          t5, zero, 151f
                  srli         s2, a7, 5
                  blt          a3, s6, 151f
                  blt          t5, s8, 164f
151:              slli         s0, s0, 11
                  andi         s2, s0, -1393
                  sltiu        s8, s9, -1395
                  bgeu         s11, s9, 170f
                  la           s4, region_0+1250 #start riscv_load_store_rand_instr_stream_15
                  sb           t6, 99(s4)
                  sb           a2, 15(s4)
                  sra          s1, s2, s8
                  add          a5, s3, a4
                  lbu          s2, -25(s4)
                  lbu          s1, 87(s4)
                  lbu          s11, -145(s4)
                  sltu         s2, s0, s7
                  lbu          s3, -9(s4)
                  andi         a7, t0, 1966
                  sub          ra, s2, s6
                  slti         s2, sp, -29
                  lbu          tp, -99(s4)
                  xor          a2, a4, s5
                  addi         sp, t4, -520
                  srl          s5, ra, a6
                  lhu          a2, 250(s4)
                  sb           a7, -157(s4)
                  slti         gp, a7, 125
                  xori         t4, a2, 992
                  andi         a7, t3, -1453
                  slli         s5, s2, 19
                  slt          a6, a6, a6
                  lb           a6, 68(s4)
                  sw           gp, -198(s4)
                  lbu          s1, -137(s4)
                  srai         a4, s11, 22
                  sltiu        a0, s11, 1074
                  lhu          s5, -100(s4) #end riscv_load_store_rand_instr_stream_15
                  slti         zero, s6, -710
                  slt          s0, t5, s6
                  srl          s8, a0, t6
158:              and          s11, t6, t5
                  sra          s5, s10, t1
                  sll          s7, a0, a7
                  sll          s0, s1, t0
                  add          s5, s5, a4
                  xor          t5, t3, s3
164:              ori          a0, s11, -229
                  blt          a1, a3, 167f
                  nop
167:              blt          tp, a4, 179f
                  slti         a0, s11, 61
                  bge          zero, a1, 173f
170:              beq          t5, s11, 183f
                  srl          s5, sp, t1
                  auipc        sp, 773779
173:              sltu         s9, s4, s6
                  sltiu        s5, gp, 67
                  xori         ra, s0, 410
                  auipc        s5, 617752
                  beq          t4, s6, 182f
                  or           t2, s11, ra
179:              auipc        t4, 609306
                  or           a7, a5, t1
                  bge          t6, t6, 197f
182:              lui          t5, 917915
183:              and          s1, s4, a6
                  auipc        s0, 344474
                  addi         gp, a2, 1079
                  bge          a7, sp, 206f
                  bge          t0, s11, 188f
188:              slli         a6, sp, 15
                  sltu         sp, a5, tp
                  or           s5, s3, s7
                  sub          a2, t0, t3
                  auipc        t2, 744775
                  auipc        s2, 899657
                  lui          t5, 474867
                  add          s4, s5, a2
                  lui          s5, 508945
197:              slti         a6, ra, -301
                  xori         s4, a6, 1829
                  add          s1, t3, s11
                  andi         t1, t5, 365
                  ori          tp, s6, -951
                  slli         s4, t1, 3
                  slti         s8, s10, -237
                  or           zero, s0, t1
                  blt          s8, t0, 222f
206:              or           s6, s8, a6
                  xor          s9, t3, t4
                  blt          a2, s7, 222f
                  and          s11, s11, t3
                  nop
                  and          ra, t0, s3
                  blt          zero, t6, 223f
                  sra          ra, tp, zero
                  bge          s0, s4, 221f
                  sll          a2, s5, a3
                  addi         s1, s6, -1703
                  sra          zero, s6, t1
                  sra          s0, t0, s10
                  lui          s1, 478825
                  add          a5, a3, t1
221:              auipc        t2, 425813
222:              or           t6, tp, s11
223:              srl          t5, t3, s10
                  auipc        s7, 207469
                  srai         s8, a2, 23
                  sll          s8, t1, s10
                  beq          t1, s2, 247f
                  sltiu        a2, t1, 500
                  beq          zero, t2, 245f
                  bne          a0, a1, 248f
                  ori          s4, s7, 1437
                  slt          a2, t3, t1
                  sll          a0, sp, t4
                  srli         s5, s6, 4
                  or           a1, a3, s4
                  srli         t5, tp, 30
                  xori         ra, t1, 104
                  bge          s6, a1, 255f
                  sltiu        s1, t2, -348
                  srl          ra, s8, a3
                  sltu         a1, t5, t6
                  srli         s8, s11, 9
                  add          s4, s7, s8
                  bge          a0, a5, 263f
245:              srl          s11, sp, s0
                  sll          a4, sp, s11
247:              lui          s9, 534701
248:              or           s9, s5, a2
                  xor          s8, ra, a5
                  slti         a2, a2, 1339
                  blt          s7, sp, 254f
                  bltu         t6, s1, 272f
                  xor          s3, s9, s9
254:              slt          s8, s9, t3
255:              srai         a3, t3, 16
                  slti         gp, t5, -804
                  and          a2, s10, a1
                  sltu         tp, a2, s8
                  srl          a3, t4, a5
                  srl          s5, s1, t1
                  lui          t5, 1029722
                  slt          sp, s8, s1
263:              slli         s1, s3, 0
                  bltu         s10, a3, 268f
                  addi         a5, s8, -1262
                  sltiu        a0, a7, -846
                  nop
268:              addi         sp, s7, -1499
                  bge          a2, s7, 287f
                  xori         a4, t4, 1951
                  xor          a4, s6, a0
272:              bne          t1, t1, 288f
                  bge          t4, s3, 286f
                  bne          ra, t1, 275f
275:              bne          gp, s4, 293f
                  sltu         s7, a1, sp
                  sub          t4, a7, a0
                  lui          sp, 1006959
                  slti         sp, a7, 608
                  add          t5, t3, zero
                  auipc        s0, 462505
                  sltiu        a1, t1, 767
                  bltu         gp, s0, 284f
284:              beq          t6, t6, 297f
                  slti         t5, s6, -348
286:              srl          zero, t2, sp
287:              srli         s4, s6, 16
288:              sub          t2, a1, t4
                  auipc        s3, 1041802
                  bltu         a6, s7, 306f
                  sub          s6, s0, t6
                  bne          gp, a0, 312f
293:              bgeu         s5, ra, 306f
                  blt          t5, a7, 296f
                  srl          s2, s8, a7
296:              xor          a2, t4, a7
297:              addi         a0, s5, -115
                  sltu         t4, a4, s4
                  slt          s5, a7, t3
                  or           s11, a7, a5
                  andi         s0, t5, -154
                  la           sp, region_1+1567 #start riscv_load_store_rand_instr_stream_4
                  slt          a3, s9, s5
                  lb           t5, -432(sp)
                  nop
                  lbu          a3, -280(sp)
                  sh           sp, -757(sp)
                  and          tp, s3, s5
                  lui          gp, 42942
                  srli         a2, t2, 15
                  sub          a2, t4, s0
                  sb           t6, -690(sp)
                  sltu         t4, s5, a7
                  lb           s5, 58(sp)
                  srai         zero, t5, 1
                  lhu          s1, -391(sp)
                  slti         a7, t3, -415
                  slli         s1, zero, 20
                  lb           s3, -648(sp)
                  lbu          s9, -544(sp)
                  xori         t5, t6, 176
                  add          a6, s8, t1
                  and          a7, s8, s2
                  sb           s10, -418(sp)
                  lb           gp, 194(sp)
                  sll          tp, s2, gp
                  sltiu        tp, t0, -195
                  sra          a1, t5, a6
                  sll          t1, s0, t6
                  and          t5, s5, a3
                  lb           a4, -1073(sp)
                  slti         s0, s2, -1204
                  add          a0, a2, s11
                  lbu          s11, -1030(sp) #end riscv_load_store_rand_instr_stream_4
                  auipc        t1, 582421
                  addi         a4, t1, 993
                  sltu         t2, a4, s2
                  slli         tp, a2, 14
306:              add          t1, t2, zero
                  beq          gp, a5, 311f
                  ori          a7, sp, 337
                  srli         a0, s2, 13
                  add          a6, s7, a1
311:              or           tp, a0, a1
312:              slt          s7, s1, s6
                  ori          s9, s8, -940
                  bgeu         a0, s6, 328f
                  add          s5, a4, s4
                  bge          t5, ra, 317f
317:              slt          s5, s1, s1
                  nop
                  srli         tp, s11, 9
                  sll          t5, a1, a0
                  beq          t5, sp, 337f
                  lui          sp, 292503
                  or           s3, s6, s11
                  lui          s7, 687591
                  bgeu         a6, t4, 344f
                  ori          t2, s5, 76
                  slt          s7, a6, zero
328:              sltu         s4, a0, a0
                  and          sp, s5, gp
                  srl          zero, sp, s0
                  srai         s4, a6, 26
                  nop
                  and          a1, a2, s10
                  slli         t4, s5, 31
                  or           a6, a3, t2
                  sltiu        a2, t4, 314
337:              bge          a3, s3, 351f
                  and          a3, s10, t1
                  auipc        s8, 960736
                  sltu         s3, s3, a1
                  srli         a6, s1, 23
                  sll          t5, a5, s2
                  bge          a0, sp, 348f
344:              slt          s0, t5, a6
                  sra          ra, t3, a6
                  slt          sp, t5, a3
                  slt          s3, t4, s3
348:              or           t6, zero, ra
                  add          a1, s6, s8
                  sltiu        t5, s9, -12
351:              blt          s6, s8, 367f
                  xori         s6, t1, 1599
                  addi         s7, a3, 1979
                  slt          a4, s1, t3
                  slli         t1, sp, 31
                  sltu         s3, a6, s2
                  bne          t0, t3, 377f
                  blt          s8, ra, 362f
                  sltiu        ra, s8, -1079
                  andi         zero, t5, 1335
                  add          t1, s1, a2
362:              bge          s4, t4, 380f
                  slt          s7, s10, t5
                  srli         t4, a2, 16
                  andi         a2, ra, -1512
                  srai         t4, a3, 22
367:              or           s7, s11, a6
                  slt          t2, s10, s11
                  xor          s11, s5, t5
                  sltu         a4, a7, a5
                  sra          s7, sp, s2
                  auipc        s7, 578789
                  bgeu         gp, t5, 393f
                  bltu         a6, ra, 392f
                  bltu         s6, s4, 378f
                  ori          s1, a4, -260
377:              bltu         a3, s8, 381f
378:              nop
                  srai         s5, t3, 29
380:              bne          s9, a0, 387f
381:              bge          s11, t5, 383f
                  bge          s8, a6, 394f
383:              bne          sp, s2, 400f
                  bne          s11, t1, 395f
                  bgeu         s4, s9, 401f
                  xori         t6, s1, 178
387:              bne          s6, ra, 404f
                  sltu         t2, s3, s10
                  sll          a0, s2, s0
                  add          t2, s8, sp
                  blt          a0, a3, 408f
392:              bgeu         zero, sp, 406f
393:              sub          sp, a1, tp
394:              sll          t5, s7, s1
395:              xori         zero, t0, -475
                  and          s2, s11, gp
                  and          a3, s3, a7
                  bgeu         a6, a4, 411f
                  slli         s8, s1, 17
400:              andi         s2, ra, 1984
401:              bltu         s4, t5, 419f
                  addi         zero, zero, -1871
                  sub          a7, s5, s9
404:              or           a1, s1, t4
                  slti         sp, s0, -1476
406:              srl          s6, ra, a3
                  or           t5, tp, s8
408:              add          ra, t1, zero
                  srai         s5, a5, 19
                  slt          a2, a6, sp
411:              xori         t1, t6, -1347
                  and          sp, t0, s1
                  bltu         t6, a6, 417f
                  beq          s7, zero, 430f
                  srai         t5, t4, 2
                  xor          s6, a0, s1
417:              bne          ra, zero, 435f
                  xor          s1, s8, a6
419:              xor          zero, gp, sp
                  bgeu         t0, s9, 427f
                  xor          a2, sp, s4
                  and          a0, t2, s1
                  sltiu        s2, a4, -1077
                  sll          a6, a5, a1
                  addi         gp, s7, 805
                  slti         tp, a5, -1919
427:              slli         s9, tp, 4
                  srli         t6, a6, 30
                  nop
430:              and          a3, t0, s5
                  sltiu        s5, a0, 1551
                  bgeu         s7, s2, 448f
                  slt          a3, s4, s5
                  auipc        t2, 476132
435:              and          s6, s8, a4
                  or           s7, s4, sp
                  blt          gp, s2, 439f
                  srai         a7, s9, 9
439:              addi         gp, s3, -1158
                  and          s2, s2, tp
                  or           t5, s5, tp
                  blt          tp, s8, 445f
                  addi         s1, a5, 303
                  andi         gp, s4, -1537
445:              and          a7, t6, s4
                  sub          s4, a1, s2
                  lui          a1, 27395
448:              blt          t3, s4, 452f
                  bne          t0, t6, 465f
                  slti         a0, s3, -1439
                  sra          a6, ra, ra
452:              bltu         t1, s10, 463f
                  sltiu        ra, s6, -1351
                  sra          tp, a4, a6
                  sll          a2, s4, s2
                  slti         a6, zero, -354
                  srli         sp, s0, 17
                  or           t6, s6, t3
                  bne          a3, a4, 473f
                  srai         s2, s10, 29
                  sltiu        t4, a2, -935
                  sra          s4, s0, s8
463:              sltu         a6, t6, s3
                  srli         gp, a3, 1
465:              ori          a6, s3, 1108
                  slti         ra, gp, 1144
                  blt          t5, t6, 480f
                  xor          s2, gp, t3
                  sltu         a1, a5, t3
                  beq          gp, s7, 482f
                  auipc        t4, 42779
                  sltu         a6, s4, sp
473:              blt          a3, t1, 477f
                  sltu         t6, s11, sp
                  bne          s1, a7, 495f
                  sub          a6, t4, s0
477:              sll          s4, s9, s10
                  sltu         s8, gp, s7
                  andi         a0, a1, -904
480:              andi         a6, tp, 1508
                  beq          t1, a1, 499f
482:              bne          a2, s5, 499f
                  sra          a7, ra, t1
                  srli         s5, s0, 27
                  beq          t3, a1, 486f
486:              andi         a4, gp, -1768
                  sltiu        s5, t6, -924
                  or           t1, a3, t1
                  sra          s5, a3, s7
                  andi         t2, a0, -1978
                  sll          a2, t0, s1
                  lui          sp, 911800
                  sra          t4, sp, a3
                  bge          s9, a2, 495f
495:              srli         t2, s1, 28
                  blt          a3, ra, 497f
497:              slt          sp, a2, ra
                  xori         zero, a4, -671
499:              slti         s5, s5, -1842
                  bltu         s9, s1, 520f
                  srl          a0, a2, s3
                  sub          t4, a1, s0
                  andi         a2, a2, -1022
                  srai         ra, s9, 28
                  la           sp, region_1+353 #start riscv_load_store_rand_instr_stream_9
                  sub          a5, s0, a5
                  xori         s4, t2, 294
                  addi         s6, s8, -1059
                  ori          a3, a2, -868
                  srl          s1, s0, t0
                  slt          a0, zero, t1
                  lb           a7, 1094(sp)
                  lh           a5, 1637(sp)
                  andi         s3, t0, -876
                  lb           s9, 1168(sp)
                  ori          a3, a4, -1068
                  lui          s3, 976945
                  lbu          a7, 192(sp)
                  slli         a6, t3, 17
                  and          tp, s4, s10
                  sh           s6, 153(sp)
                  addi         s5, s2, 298
                  or           a5, a0, s4
                  lh           a6, 57(sp)
                  slt          t5, s7, s6
                  sh           sp, 1317(sp)
                  and          t2, a6, a6
                  slt          ra, s2, t6
                  lb           t4, 289(sp)
                  sb           ra, 1565(sp)
                  slti         t6, a4, -742
                  lbu          t4, 934(sp)
                  lh           a0, 493(sp)
                  lui          s2, 975683
                  srl          tp, a4, t6
                  add          s1, zero, s10
                  srl          s7, a1, s10
                  xor          s9, t4, a6
                  auipc        t4, 643146
                  slti         t5, a2, -742
                  sra          s6, s7, sp
                  sll          s7, t1, s1
                  add          t5, a2, zero
                  xor          s7, s4, s2
                  lb           t4, 500(sp) #end riscv_load_store_rand_instr_stream_9
                  lui          s7, 531534
                  slt          a5, t1, s10
                  sub          ra, s7, a6
                  auipc        a7, 908001
                  slti         sp, a4, -70
                  srai         s0, t1, 15
                  and          a4, a6, s7
                  add          s6, t0, t3
                  srli         t6, a7, 29
                  auipc        a4, 253027
                  nop
                  slti         a3, sp, -1104
                  beq          zero, t1, 522f
                  lui          s9, 360609
                  slt          t4, a7, t5
520:              sltiu        ra, a6, -327
                  auipc        a6, 671624
522:              srl          s7, t4, a1
                  xor          ra, s10, s10
                  andi         s1, a4, -1233
                  ori          gp, tp, 160
                  auipc        a2, 508043
                  sub          s4, s8, t0
                  slli         a7, s9, 4
                  srl          s6, ra, ra
                  srli         a5, a7, 23
                  srai         ra, t4, 5
                  sra          zero, t2, s7
                  slli         s11, t6, 28
                  andi         a7, s4, -1537
                  sra          s2, a5, zero
                  addi         zero, a6, -1830
                  sltu         a1, a2, t1
                  sra          s3, a2, t6
                  slli         t1, tp, 12
                  srli         s2, s7, 23
                  xori         s4, a2, -1224
                  slt          s8, a0, s8
                  sltu         t2, t5, s7
                  sra          s6, t1, t5
                  slti         s8, s8, 551
                  nop
                  andi         zero, a7, 145
                  bgeu         s6, s11, 550f
                  slt          t6, a0, s6
550:              add          s0, t2, t6
                  sltu         tp, s1, a7
                  slti         s8, s5, 998
                  xori         a7, a3, 254
                  beq          s11, t4, 570f
                  or           s2, a1, s8
                  sra          s1, a5, t2
                  andi         a7, s6, 1708
                  slt          s2, s8, t3
                  sub          s5, s6, a7
                  and          a2, s11, tp
                  sltiu        t5, s7, 1916
                  bne          a1, t5, 582f
                  slt          a4, a2, t0
                  or           a3, s6, s1
                  and          t2, a1, s0
                  bltu         zero, a6, 585f
                  andi         ra, a1, 24
                  slti         s0, a3, -1577
                  bltu         t2, s8, 580f
570:              addi         zero, s1, -1499
                  sltu         s1, s0, sp
                  nop
                  bne          a4, sp, 593f
                  bge          tp, t6, 591f
                  or           zero, gp, a7
                  bgeu         s4, s5, 594f
                  srl          t5, t6, t6
                  andi         a2, t6, -1889
                  slli         ra, a1, 30
580:              srl          t2, t6, t5
                  or           t4, a2, s9
582:              add          s6, t1, t6
                  or           s8, zero, t4
                  bgeu         t1, t4, 602f
585:              beq          a6, a3, 589f
                  beq          a5, a1, 602f
                  sll          sp, s8, s0
                  addi         a6, s5, 39
589:              ori          a6, zero, 1560
                  lui          s4, 636992
591:              ori          s1, s11, 1853
                  slli         a3, a4, 30
593:              sra          s4, tp, a0
594:              srai         sp, s11, 21
                  add          s5, s6, t4
                  srl          zero, s3, a1
                  xor          zero, gp, a5
                  bge          s9, a0, 600f
                  slti         a1, s10, -377
600:              sltiu        a4, t4, 1352
                  bltu         s6, a0, 617f
602:              or           a4, s10, tp
                  bgeu         s0, s4, 621f
                  sra          t4, t2, a5
                  sll          s2, s6, a7
                  sltu         a2, s11, a7
                  sub          a7, t2, tp
                  sltiu        s6, s7, -1995
                  sltu         t4, a1, t0
                  bne          t6, s10, 627f
                  andi         a6, a0, 346
                  lui          t5, 494366
                  addi         s2, t4, -1727
                  slt          s1, a2, s0
                  add          ra, a4, zero
                  andi         t2, tp, 1938
617:              nop
                  srai         t6, a5, 26
                  lui          t4, 828968
                  bltu         gp, a2, 621f
621:              add          s9, s7, s11
                  srai         s6, a7, 15
                  xor          s5, s8, a7
                  srl          a4, s2, s7
                  andi         tp, s11, -2009
                  addi         t2, ra, 17
627:              or           s9, t4, zero
                  sra          s1, t3, s8
                  slli         s0, s3, 13
                  bgeu         a0, s6, 646f
                  slti         t2, s2, -216
                  auipc        s1, 1015599
                  bge          t0, t5, 652f
                  sll          s6, s8, tp
                  ori          s4, tp, -489
                  sltiu        tp, s6, 282
                  srli         s1, t2, 0
                  lui          a4, 845684
                  srai         ra, s6, 27
                  nop
                  slt          s4, gp, sp
                  bne          a3, s10, 646f
                  srl          tp, sp, t6
                  xori         s0, a0, -1680
                  bge          s7, zero, 661f
646:              srai         sp, ra, 8
                  sltiu        a4, s7, 1052
                  and          s1, a7, a7
                  xori         s4, s8, 600
                  sra          sp, a2, t6
                  and          tp, a0, zero
652:              lui          s6, 876147
                  sll          a2, s8, a5
                  sra          a3, ra, s7
                  slli         a4, s10, 17
                  sub          a2, a0, gp
                  slti         tp, a1, 876
                  xori         s6, gp, 1180
                  and          a1, t1, tp
                  add          a2, tp, a1
661:              sltiu        t1, a1, -8
                  sltiu        a2, ra, -653
                  or           a0, t6, a7
                  sll          s1, t4, s6
                  sltiu        s1, t6, 1138
                  bltu         a1, ra, 679f
                  add          a3, ra, tp
                  sltiu        sp, t6, 1026
                  srl          t5, zero, t6
                  blt          a3, t1, 675f
                  lui          s6, 214499
                  slt          s11, s4, ra
                  sltiu        s4, zero, 1399
                  slt          s11, gp, tp
675:              slt          a2, s4, a4
                  blt          a1, a0, 690f
                  blt          s6, s10, 691f
                  beq          s6, tp, 681f
679:              srl          a4, tp, t2
                  srai         gp, s8, 6
681:              beq          t0, a3, 685f
                  srai         s11, s5, 14
                  bgeu         s1, s4, 684f
684:              srai         a2, a7, 2
685:              xori         a7, a0, 254
                  bgeu         s8, s8, 698f
                  addi         s2, gp, 79
                  bgeu         ra, t0, 708f
                  add          a4, a6, t4
690:              or           t6, s10, a3
691:              addi         t5, t0, 1881
                  srai         a4, s1, 31
                  nop
                  andi         a6, a0, -921
                  blt          s7, a6, 708f
                  slt          sp, s0, a3
                  and          t4, ra, s1
698:              srli         s6, t0, 15
                  sltiu        t1, s9, -1017
                  slt          a2, t0, s3
                  and          s4, t6, s8
                  srai         a0, a1, 6
                  slti         a2, ra, -398
                  blt          t3, s3, 705f
705:              sltiu        t2, a7, -1837
                  slti         a1, zero, -898
                  and          s1, a6, s3
708:              srai         a4, s3, 3
                  srli         t6, t2, 23
                  xor          ra, s7, t4
                  srai         s7, a4, 18
                  sra          s11, s7, gp
                  auipc        t5, 836186
                  bge          a7, zero, 721f
                  or           a2, a1, s0
                  xor          s6, s4, s3
                  bge          t1, s4, 719f
                  bge          s4, t5, 738f
719:              andi         zero, a6, -466
                  xor          s9, gp, t5
721:              bgeu         s6, a0, 722f
722:              bge          a2, t5, 736f
                  srli         tp, s7, 5
                  xori         s4, a2, -1692
                  auipc        a2, 611717
                  sltiu        gp, sp, 1244
                  andi         s11, t3, 620
                  srl          s11, t4, a3
                  or           s0, ra, s6
                  addi         a5, s3, 344
                  bne          a2, zero, 747f
                  slti         s11, sp, 226
                  xor          t4, s10, a6
                  srai         s9, t6, 3
                  sll          s6, t2, t5
736:              srai         gp, t6, 30
                  lui          a7, 231543
738:              blt          a7, s3, 756f
                  auipc        s4, 835397
                  srl          s7, sp, s7
                  and          s1, s9, s9
                  srli         t6, t4, 29
                  blt          s8, s11, 745f
                  bne          s0, t6, 748f
745:              srai         s8, a5, 13
                  bne          s0, s9, 763f
747:              blt          a0, s3, 767f
748:              lui          s2, 460939
                  blt          t6, t3, 766f
                  bgeu         t5, s2, 754f
                  srl          a4, s8, a3
                  xori         s2, t5, 1621
                  sll          s3, s7, t5
754:              slt          tp, a2, a0
                  slt          s0, t4, t1
756:              auipc        s7, 763052
                  sra          s0, sp, s9
                  xor          a7, a3, t6
                  slti         s6, s9, 1730
                  sll          tp, s5, tp
                  xori         s3, s1, 53
                  slt          t2, t3, a7
763:              srl          t6, t4, zero
                  slti         s7, t4, 1316
                  xori         t2, sp, -1708
766:              bltu         ra, gp, 780f
767:              blt          ra, t6, 769f
                  srli         s8, a5, 12
769:              sltu         t4, s1, a1
                  bge          a6, s6, 790f
                  beq          s1, a5, 787f
                  srl          a0, s6, a1
                  nop
                  sra          t2, gp, s2
                  bne          s4, t2, 793f
                  lui          ra, 417190
                  sltu         t2, s6, s0
                  nop
                  slli         s5, t2, 6
780:              add          s7, s4, gp
                  bne          t1, a6, 794f
                  beq          s6, s3, 798f
                  nop
                  nop
                  ori          a0, tp, -1568
                  srai         a6, t5, 10
787:              slt          a0, s6, s1
                  slt          s6, a5, sp
                  bltu         s9, s5, 790f
790:              sll          s4, a3, s11
                  ori          s4, t3, 558
                  lui          s3, 428889
793:              sra          s9, a5, gp
794:              slli         s6, a1, 30
                  xori         s9, s0, 1867
                  srai         s2, s7, 12
                  beq          t1, a0, 816f
798:              lui          a4, 622647
                  addi         gp, s6, -1268
                  xori         a1, s11, -1689
                  or           zero, t1, s0
                  andi         ra, s11, 694
                  lui          a4, 172251
                  sll          s2, s2, a6
                  nop
                  andi         s2, s6, 1857
                  beq          a2, a4, 808f
808:              sltu         t4, s7, s3
                  blt          s10, a4, 821f
                  sltu         s5, s5, s4
                  slti         ra, t4, -908
                  slti         a5, s1, 1799
                  slt          a2, s4, s8
                  sltiu        t2, s4, 1423
                  bne          t3, a0, 835f
816:              sltu         t6, a5, t5
                  auipc        a1, 551941
                  beq          t2, s6, 834f
                  lui          a6, 59321
                  bgeu         s2, s11, 823f
821:              bltu         s11, a4, 839f
                  srl          a4, s7, sp
823:              bltu         s7, s1, 830f
                  bltu         s1, t4, 835f
                  add          a0, s6, a0
                  xor          s1, ra, a6
                  xori         s1, s2, -1457
                  and          s8, t4, tp
                  sub          s1, s9, s4
830:              lui          t1, 397259
                  bne          gp, a4, 844f
                  or           s11, s11, a3
                  srai         s3, t0, 16
834:              bne          s10, a1, 838f
835:              nop
                  bne          t0, s2, 841f
                  sltu         s3, t6, t0
838:              bne          s1, s3, 843f
839:              slt          s2, s11, a6
                  bne          sp, t0, 857f
841:              srl          a4, a1, t2
                  srli         a1, t6, 28
843:              andi         a5, t2, -40
844:              slti         a7, s1, 1003
                  and          s2, s0, s3
                  bne          s7, s2, 862f
                  sub          tp, a6, s9
                  xor          t2, a3, t4
                  la           a0, region_0+1531 #start riscv_load_store_rand_instr_stream_2
                  lui          tp, 73583
                  addi         a7, a7, 1119
                  srai         s5, zero, 22
                  auipc        t1, 527927
                  lbu          gp, 16(a0)
                  xori         zero, s1, -1190
                  sh           a2, -5(a0)
                  lb           s9, 11(a0)
                  lb           a7, -3(a0)
                  sll          s3, s10, t2
                  lui          a3, 512131
                  sb           s0, -1(a0)
                  lb           s0, -9(a0)
                  lhu          a1, 13(a0)
                  slli         t5, s9, 1
                  sb           zero, 2(a0)
                  sb           a0, -12(a0)
                  sra          a5, s3, a6
                  addi         t6, a6, -1919
                  lb           t2, 15(a0) #end riscv_load_store_rand_instr_stream_2
                  srai         s1, s10, 1
                  srai         t4, zero, 16
                  or           a7, a7, sp
                  and          s2, s8, zero
                  srli         t5, a7, 7
                  srl          ra, t0, s1
                  xori         s8, s5, 1293
                  add          sp, s6, ra
857:              add          gp, a1, s4
                  lui          a5, 734434
                  xor          a3, t2, s9
                  sll          s1, t3, s0
                  auipc        s7, 492462
862:              sltu         s4, s9, s2
                  ori          a4, s5, 736
                  bge          tp, t5, 878f
                  blt          t0, a1, 885f
                  addi         t5, s11, -1678
                  add          t1, s7, a6
                  xori         s4, a7, -273
                  add          a2, a2, t0
                  sltu         a0, s10, t3
                  sltu         ra, t6, gp
                  xor          t4, t4, a4
                  srai         s3, t2, 23
                  sltiu        a4, t5, -1607
                  bgeu         t4, t2, 888f
                  ori          s11, a2, -1532
                  srli         t4, s10, 20
878:              srl          t1, t3, s4
                  sll          t6, t5, t3
                  sll          s11, s8, sp
                  bge          s0, t0, 899f
                  srai         a0, sp, 15
                  beq          t2, t5, 897f
                  slti         a1, s2, 790
885:              add          s11, s1, t5
                  sub          s1, s5, s1
                  xori         s3, t6, -1068
888:              or           t6, t2, s1
                  sub          a5, a7, sp
                  addi         a4, s5, 169
                  srl          s6, s9, a1
                  bltu         s6, s11, 908f
                  srl          s6, t5, s2
                  sub          s8, s0, t1
                  bge          a7, t3, 898f
                  srai         sp, s11, 6
897:              bne          t2, t0, 908f
898:              sra          s6, s0, s0
899:              bltu         zero, t1, 919f
                  blt          s9, s0, 916f
                  slli         a2, t5, 4
                  bne          tp, sp, 906f
                  bge          tp, s8, 910f
                  srli         t1, s5, 9
                  sltiu        zero, s6, -1730
906:              xor          gp, a5, a3
                  slti         a2, a4, 1298
908:              lui          t6, 59105
                  sll          s3, zero, t2
910:              and          s4, t6, s0
                  blt          gp, s10, 929f
                  srl          s1, sp, t3
                  srl          t2, a3, s7
                  sll          s2, s10, a4
                  sra          a2, s2, s1
916:              xor          t5, a0, t0
                  add          t1, a5, s1
                  sltu         s0, s4, a7
919:              slli         t2, s9, 21
                  sll          s8, t4, a1
                  auipc        s0, 870626
                  blt          a5, t5, 923f
923:              slti         a5, s0, 48
                  srai         sp, t1, 4
                  srl          gp, a5, a2
                  lui          t1, 831394
                  sltu         s7, s2, t0
                  xori         a0, s8, -786
929:              sub          t5, gp, a3
                  and          ra, s0, s8
                  slt          a1, a3, s4
                  srli         a0, s10, 14
                  sltu         a0, s10, t6
                  beq          tp, t3, 946f
                  ori          a2, ra, 1174
                  auipc        t5, 916777
                  bltu         s11, gp, 938f
938:              nop
                  bne          a6, t5, 958f
                  sltiu        a2, a5, -1153
                  nop
                  bne          s3, s10, 958f
                  sll          t5, s10, s4
                  ori          t2, ra, 660
                  slli         t1, a6, 14
946:              slti         a5, sp, -560
                  blt          s1, a6, 951f
                  sltu         t4, a4, t0
                  ori          zero, s9, -1761
                  xori         t1, s1, 1132
951:              srli         s4, a0, 16
                  blt          s0, sp, 954f
                  sll          t6, s2, s3
954:              srli         s7, ra, 26
                  xori         s1, s0, -1299
                  srli         t6, s6, 20
                  addi         t2, a6, 1419
958:              xori         a6, t6, 1461
                  sub          s9, tp, t2
                  slt          s11, s1, s8
                  bge          s5, s8, 963f
                  or           s9, a1, t0
963:              add          s5, a3, a6
                  sltiu        t2, t3, 1104
                  bge          s8, t5, 985f
                  and          a4, s7, t6
                  beq          s6, s5, 980f
                  bltu         a6, a6, 969f
969:              sub          a2, s2, a0
                  sub          a0, s6, a1
                  auipc        sp, 200471
                  and          sp, s0, s2
                  srai         t2, s9, 12
                  auipc        tp, 797307
                  sltu         s6, a4, gp
                  andi         s3, zero, 867
                  slt          s4, a0, t5
                  blt          zero, a2, 982f
                  bne          t3, a7, 996f
980:              sltu         s4, s9, a1
                  lui          a6, 1016316
982:              bltu         t2, s2, 1000f
                  bne          s8, t0, 987f
                  ori          a4, t1, -463
985:              andi         a6, t0, 5
                  lui          ra, 898001
987:              slt          a2, a2, tp
                  andi         s1, t4, 1729
                  auipc        a5, 799405
                  srli         t1, a0, 27
                  add          t4, a2, a7
                  srli         s3, t1, 2
                  bge          t2, a5, 1009f
                  blt          t1, t4, 1012f
                  sub          a5, s0, a4
996:              slt          s4, s3, t6
                  xor          t5, t0, s11
                  srai         a6, s7, 3
                  blt          s3, t2, 1001f
1000:             blt          s0, t5, 1002f
1001:             lui          s3, 206057
1002:             bge          a0, gp, 1005f
                  srai         s0, a4, 23
                  ori          s1, a3, 1054
1005:             srai         s9, gp, 14
                  srai         ra, a2, 18
                  bltu         ra, t6, 1026f
                  slli         a4, t0, 27
1009:             srai         t1, a2, 25
                  blt          t4, a5, 1027f
                  xor          s2, zero, s0
1012:             sltu         zero, s10, gp
                  xori         a3, a3, 1189
                  sltu         a4, a4, s10
                  slli         a1, s6, 11
                  sltu         s6, t4, gp
                  srai         a1, gp, 4
                  xori         a0, a2, -434
                  slt          sp, s2, a6
                  beq          s5, t0, 1040f
                  slli         a0, s7, 26
                  ori          t5, gp, -255
                  sltu         s2, t1, t5
                  slti         a3, zero, -1894
                  srl          sp, a4, s3
1026:             slt          gp, sp, ra
1027:             and          s11, a1, a2
                  bgeu         t1, s8, 1029f
1029:             slt          gp, gp, a7
                  sltiu        s0, a6, 1595
                  sll          s9, s11, s9
                  slti         a1, s3, 809
                  auipc        a2, 339072
                  bne          s0, ra, 1035f
1035:             slti         s6, s7, -1315
                  slli         s1, a3, 27
                  sltiu        t4, sp, 78
                  bgeu         s7, s9, 1045f
                  sub          a4, s1, t3
1040:             lui          t5, 132849
                  slli         s0, a5, 15
                  ori          a1, a4, 815
                  sra          ra, a7, t2
                  bge          a6, s7, 1048f
1045:             sltu         a4, a2, s7
                  srai         s7, a3, 12
                  bgeu         a2, t4, 1058f
1048:             and          s1, a7, s1
                  addi         t2, t0, -1877
                  andi         ra, t5, 1874
                  bge          tp, s11, 1071f
                  andi         t4, s0, -681
                  addi         a5, s10, 1433
                  addi         t1, t2, -1546
                  sll          ra, gp, a4
                  sra          ra, s11, a1
                  slt          t5, s5, t6
1058:             xori         s9, zero, 653
                  slti         ra, s8, -48
                  bltu         t6, a5, 1080f
                  bltu         s5, s1, 1066f
                  bgeu         t0, t1, 1078f
                  sltu         s7, zero, s10
                  xor          a6, s2, a3
                  andi         t4, t4, 1884
1066:             xori         sp, gp, -946
                  slli         a3, a1, 9
                  or           s5, a3, a2
                  sra          s7, t0, t5
                  andi         ra, a3, 311
1071:             bltu         s4, s10, 1075f
                  srli         s11, t2, 1
                  sltiu        t2, a5, 895
                  slli         t1, s5, 20
1075:             srli         a7, a7, 7
                  sltiu        a4, s1, -1937
                  lui          a3, 8795
1078:             slti         ra, s1, -1103
                  srl          s8, s6, a1
1080:             nop
                  beq          t1, a0, 1095f
                  bltu         s1, s2, 1098f
                  addi         s4, a4, 1193
                  slti         a1, a2, 1542
                  sra          sp, s4, gp
                  auipc        s0, 206458
                  nop
                  sltu         sp, a1, ra
                  ori          t4, s2, -747
                  beq          s10, ra, 1106f
                  bgeu         t5, t1, 1104f
                  sub          ra, s10, t2
                  beq          t1, t2, 1111f
                  bne          t0, t1, 1095f
1095:             srai         a2, t0, 9
                  srl          sp, s4, s10
                  sub          a6, tp, a3
1098:             xor          s5, t4, tp
                  bgeu         t2, s9, 1111f
                  slli         s5, s0, 20
                  xor          a6, s8, s4
                  andi         s6, t1, 666
                  sltu         s5, s11, t6
1104:             andi         a3, t3, -1321
                  xori         t5, s0, 2006
1106:             sub          s6, s8, s10
                  xor          s8, zero, t6
                  xori         t5, a5, -1282
                  srl          a6, t5, zero
                  lui          a7, 825790
1111:             slti         a6, s2, -595
                  sra          a0, a3, s2
                  and          s0, t5, zero
                  slt          a3, a1, t3
                  beq          s10, s6, 1128f
                  srli         t5, a3, 25
                  srli         a3, s10, 31
                  bgeu         t1, a4, 1136f
                  nop
                  or           a3, a0, t1
                  bge          t5, a0, 1135f
                  addi         sp, a7, 1755
                  sltiu        s1, ra, 222
                  auipc        a2, 100989
                  and          a1, zero, t6
                  andi         s5, t5, 1185
                  nop
1128:             and          s11, t2, s9
                  add          s3, zero, t5
                  slti         s5, t2, -51
                  srli         zero, sp, 29
                  bgeu         s7, s1, 1149f
                  sll          a5, t4, tp
                  sub          a4, a2, a2
1135:             sub          ra, s0, s8
1136:             slt          a4, s8, s4
                  xori         s2, s9, 595
                  bge          ra, a2, 1154f
                  sll          s4, zero, a5
                  sub          tp, s1, s3
                  bne          t6, a7, 1146f
                  or           t4, s0, s4
                  srl          t5, s2, s9
                  bne          s7, sp, 1160f
                  srli         s11, a0, 10
1146:             sra          s8, t4, s3
                  srli         a0, s3, 1
                  ori          a6, t4, -985
1149:             beq          ra, t0, 1150f
1150:             slli         a1, s5, 1
                  or           s1, s9, s7
                  add          t1, s11, a7
                  bne          a6, s1, 1171f
1154:             bgeu         a5, s1, 1168f
                  xori         s11, gp, -382
                  sub          a3, s2, s9
                  lui          t4, 690798
                  sltiu        a0, tp, 75
                  sltu         s1, s11, t4
1160:             bltu         s11, gp, 1180f
                  slti         s7, s2, -576
                  beq          s0, a4, 1175f
                  nop
                  slli         a0, s5, 25
                  beq          s6, s11, 1183f
                  xor          s0, s6, s11
                  sltiu        t1, t5, 1979
1168:             or           a2, t3, t6
                  slli         s9, sp, 23
                  nop
1171:             addi         ra, s4, -1498
                  srai         a2, s0, 4
                  and          s9, a7, s10
                  addi         a7, s7, -1220
1175:             xor          t6, a5, t1
                  sltiu        t1, s4, -1718
                  srl          s7, s1, s5
                  srli         t5, sp, 29
                  andi         s2, a0, 1404
1180:             bgeu         s1, a6, 1200f
                  xori         tp, s10, 750
                  blt          t1, zero, 1198f
1183:             nop
                  slti         t1, s6, 1321
                  slt          t6, s5, a6
                  srli         a1, s3, 8
                  or           a5, sp, ra
                  slti         a5, s3, -1061
                  sll          s7, tp, t0
                  srl          a5, a6, s11
                  beq          s1, s3, 1195f
                  add          a3, s4, s1
                  bgeu         a6, t4, 1200f
                  sltiu        a1, t1, 1988
1195:             auipc        t6, 1002917
                  lui          t4, 207860
                  ori          s8, t4, 38
1198:             ori          a6, gp, 1402
                  bltu         t0, s5, 1201f
1200:             nop
1201:             bgeu         s4, s11, 1212f
                  slti         t5, s9, -933
                  auipc        s9, 367998
                  addi         zero, a2, -1494
                  sra          a2, s10, s3
                  nop
                  slli         a4, s8, 27
                  andi         s3, a6, -286
                  srl          s9, ra, a4
                  xori         s11, t4, 291
                  xori         a6, ra, 816
1212:             ori          a0, s9, -1257
                  ori          s9, s6, -29
                  bge          ra, s5, 1218f
                  srli         a6, s11, 28
                  bne          t5, gp, 1228f
                  srli         s5, s2, 14
1218:             sra          a2, a4, s6
                  lui          a4, 960309
                  and          t6, a5, a4
                  and          t2, s8, s4
                  xori         a5, s10, 40
                  andi         s5, zero, 644
                  and          gp, gp, a5
                  srli         s11, s5, 30
                  add          a7, a0, sp
                  bgeu         s10, t5, 1241f
1228:             and          t2, s8, a0
                  bge          t6, s9, 1242f
                  slt          s2, a5, s4
                  auipc        a4, 35460
                  srli         s11, s5, 16
                  blt          a2, t0, 1253f
                  add          t5, a1, s2
                  or           a2, s5, s6
                  sltiu        a7, s4, -1904
                  or           s8, a1, sp
                  beq          t3, a7, 1255f
                  beq          t4, a2, 1256f
                  bgeu         s6, s3, 1241f
1241:             slli         s4, a0, 9
1242:             sra          a5, a2, a5
                  andi         zero, t3, -1482
                  slli         a1, a7, 9
                  sra          tp, t1, sp
                  and          a6, t6, t6
                  sltiu        a6, gp, 1053
                  xor          s4, a0, s3
                  srli         a4, tp, 30
                  bltu         s0, s0, 1252f
                  srl          zero, t1, a4
1252:             sltiu        s1, s1, 884
1253:             auipc        s4, 607446
                  srli         a1, s1, 31
1255:             sub          a7, t5, ra
1256:             sltiu        gp, t4, 1907
                  srai         t4, a0, 15
                  sltiu        t2, s9, 754
                  slt          a3, t4, ra
                  bne          t1, tp, 1261f
1261:             slt          tp, zero, s5
                  add          a3, zero, a3
                  srl          t4, a3, a5
                  add          sp, t6, ra
                  addi         t5, a2, -827
                  sltiu        sp, s1, 1536
                  sub          a3, s10, ra
                  sll          zero, a1, s9
                  sra          a7, a0, s10
                  add          s0, a2, a6
                  andi         s5, t2, -1246
                  andi         t1, s10, -1684
                  xor          t1, s3, a5
                  andi         t5, a6, -438
                  add          s4, zero, t0
                  beq          s1, s0, 1295f
                  xori         s3, s10, -1259
                  srai         a1, a2, 2
                  srai         zero, s4, 12
                  slt          s1, t2, s8
                  bgeu         a4, a3, 1284f
                  lui          s4, 337406
                  lui          a4, 174272
1284:             sll          tp, a2, s10
                  lui          sp, 235477
                  lui          s1, 65549
                  xor          s0, a2, s7
                  and          s7, s3, s4
                  bge          s6, gp, 1307f
                  slt          zero, tp, s6
                  slli         s1, t5, 1
                  and          s8, zero, s3
                  sltu         s9, s2, s1
                  bne          s3, t5, 1298f
1295:             bge          s1, gp, 1311f
                  xori         s3, s10, 1791
                  addi         a3, s8, 1114
1298:             addi         s6, a0, 14
                  beq          t4, a2, 1318f
                  sub          s0, sp, s8
                  xor          s8, s7, a3
                  slli         s11, sp, 27
                  slti         a0, a0, 1104
                  la           sp, region_1+1347 #start riscv_load_store_rand_instr_stream_3
                  srai         s6, a6, 15
                  lui          s0, 526774
                  sh           t2, -3(sp)
                  sltu         s9, t2, s10
                  srai         s1, s0, 14
                  lbu          a7, -16(sp)
                  sb           a7, -12(sp)
                  sll          t5, s6, s9
                  xor          s2, s9, a0
                  sh           s11, -1(sp)
                  sb           s2, -3(sp)
                  lbu          s5, 13(sp)
                  lh           zero, 1(sp)
                  sb           s7, 9(sp)
                  lb           s11, -4(sp)
                  lb           s4, -14(sp)
                  sub          a6, s3, s3
                  lb           a5, 10(sp)
                  lbu          t6, 15(sp)
                  lhu          a7, -11(sp)
                  slli         s8, s3, 21
                  andi         a7, s10, -1972
                  andi         gp, t5, -912
                  lb           a3, 12(sp)
                  lh           s7, -3(sp)
                  lh           ra, -15(sp)
                  slt          a3, t2, t0
                  sb           tp, 4(sp)
                  lh           t5, 7(sp)
                  ori          t1, t0, -1984
                  srl          a7, a3, t0
                  lb           s2, -10(sp)
                  sh           s4, 3(sp)
                  lb           a7, 6(sp)
                  lb           s1, -16(sp)
                  srl          a6, a0, a1
                  sltiu        s11, t0, 2040
                  sltiu        s3, t6, -1102
                  lbu          s1, -12(sp)
                  xor          s6, sp, t4
                  lh           t2, 7(sp)
                  nop
                  sb           s6, 14(sp)
                  sh           s7, 3(sp)
                  sb           t6, -16(sp)
                  sb           a6, -5(sp) #end riscv_load_store_rand_instr_stream_3
                  sltu         t1, t2, a0
                  srli         s2, tp, 31
                  add          s4, a7, tp
1307:             sltu         zero, a6, a0
                  addi         t5, s0, 1946
                  addi         t4, s9, 0
                  ori          ra, s8, 1513
1311:             beq          s2, ra, 1323f
                  add          s7, a1, s2
                  lui          zero, 245086
                  sub          s11, s6, gp
                  sub          s7, s3, zero
                  slli         t4, s5, 1
                  bltu         t1, sp, 1331f
1318:             slli         a1, t0, 16
                  bge          s0, a0, 1337f
                  srl          a5, gp, s8
                  sll          a5, t6, s7
                  sltiu        s3, a7, 1264
1323:             blt          a3, a1, 1339f
                  blt          a2, a7, 1337f
                  bge          s1, s9, 1339f
                  nop
                  xor          sp, t2, s3
                  bne          ra, a5, 1329f
1329:             srl          gp, zero, s3
                  srai         t4, t3, 15
1331:             or           a0, a5, a0
                  srli         t2, s1, 16
                  add          t4, t2, a7
                  nop
                  nop
                  auipc        tp, 383221
1337:             addi         gp, a0, -1654
                  srli         t4, s8, 28
1339:             slli         s11, a4, 8
                  slti         s1, a7, -1771
                  sltiu        s11, t3, 1603
                  xori         s11, gp, -1146
                  lui          s0, 116348
                  sltu         ra, t3, a0
                  srl          s4, a1, zero
                  slli         s4, s1, 14
                  xor          gp, t2, s8
                  slti         a5, s1, 75
                  blt          a1, s8, 1369f
                  add          a5, a5, zero
                  xori         tp, t5, -217
                  slti         tp, s1, -17
                  auipc        a7, 67282
                  and          a1, t3, t4
                  sub          a2, a4, s6
                  bltu         gp, a1, 1373f
                  slti         t4, s7, 764
                  srai         t1, zero, 23
                  srai         s8, s7, 29
                  sltu         s9, zero, t3
                  bltu         s8, a3, 1364f
                  slti         gp, tp, 918
                  andi         a1, t2, 1496
1364:             blt          s7, a0, 1371f
                  blt          tp, a0, 1367f
                  slli         s5, a3, 2
1367:             bltu         t0, s3, 1369f
                  xor          tp, zero, t0
1369:             srl          s6, sp, t2
                  xori         t1, s11, -1109
1371:             bge          s8, s5, 1391f
                  add          a0, t5, s0
1373:             beq          a2, s5, 1389f
                  bltu         a4, t3, 1392f
                  slli         a6, s7, 28
                  beq          s0, a3, 1380f
                  blt          t4, t6, 1393f
                  sll          tp, s2, tp
                  ori          s1, s5, 612
1380:             addi         a0, s2, -1988
                  bge          t6, a4, 1399f
                  ori          t4, s9, 263
                  sub          s4, a0, s0
                  sub          a4, s9, t6
                  slt          a4, a4, s7
                  sltiu        s0, a0, 1710
                  xor          t5, a2, s5
                  srl          s9, s5, t4
1389:             srli         a5, a2, 28
                  addi         a5, a1, 1578
1391:             slt          tp, s8, t1
1392:             srai         a5, s4, 28
1393:             srli         s7, a1, 14
                  srai         s3, t4, 25
                  srl          a5, t3, ra
                  sltu         zero, s10, s6
                  sll          a6, s2, a4
                  ori          ra, t5, 1335
1399:             bge          a1, s3, 1400f
1400:             blt          s6, t3, 1401f
1401:             bge          t6, s0, 1418f
                  bltu         a0, s11, 1406f
                  sra          s4, sp, t1
                  bgeu         t4, t2, 1409f
                  and          s4, t0, a0
1406:             addi         s8, t3, 1151
                  slli         tp, s4, 20
                  add          gp, t3, a0
1409:             beq          s4, a6, 1420f
                  sltu         a3, t5, s3
                  xori         s0, s8, -925
                  slli         t2, s1, 21
                  slli         tp, t1, 9
                  srl          a4, s4, s2
                  bltu         a6, a0, 1428f
                  sltiu        s11, a7, -745
                  sra          s11, a7, s8
1418:             sra          s2, s0, t3
                  andi         a0, t3, -1231
1420:             xori         a1, a0, -351
                  srli         s1, t5, 26
                  sltiu        a0, t3, -475
                  andi         gp, t0, 1078
                  srli         gp, zero, 12
                  nop
                  slt          a0, s0, gp
                  sltiu        a0, s2, 895
1428:             slti         a1, t3, 1095
                  srl          s7, t3, s4
                  andi         a6, t0, -1788
                  sra          gp, s6, s9
                  andi         t1, s3, -1818
                  addi         a2, s6, 340
                  sra          a0, s11, t6
                  srli         s7, t1, 23
                  srli         s9, a7, 11
                  sub          s6, s8, t6
                  ori          s6, a6, 373
                  srai         zero, t0, 7
                  slti         s3, t2, 1274
                  ori          gp, tp, 87
                  bgeu         t6, s11, 1462f
                  and          s8, s2, a0
                  srai         gp, s9, 27
                  sra          s4, gp, a0
                  slti         s6, s6, 1529
                  bgeu         tp, s9, 1451f
                  xor          s0, s10, a3
                  bltu         t5, t2, 1465f
                  sll          a5, a1, a7
1451:             sra          s1, a4, ra
                  andi         a3, s7, -1851
                  auipc        tp, 524949
                  sll          a7, t6, s3
                  auipc        s7, 191769
                  srl          t4, zero, a7
                  srl          t6, t6, tp
                  and          t4, tp, a3
                  la           s1, region_1+586 #start riscv_load_store_rand_instr_stream_6
                  sb           s4, 269(s1)
                  lbu          t4, -125(s1)
                  lb           ra, -328(s1)
                  sb           a1, 738(s1)
                  lb           s11, 239(s1)
                  auipc        a4, 572145
                  and          s4, s6, s7
                  auipc        zero, 362429
                  srli         a5, t4, 0
                  xori         ra, s2, 1648
                  sltu         t6, a5, t5
                  lb           t6, 473(s1)
                  lbu          t5, 414(s1)
                  sll          s2, a2, a3
                  lb           a6, 907(s1)
                  lb           s2, -566(s1)
                  nop
                  sub          s6, t5, s10
                  lbu          s7, 1207(s1)
                  srai         ra, a6, 14
                  slt          a5, a7, a4
                  sll          s2, s11, sp
                  srl          s8, s8, t1
                  lb           s7, 19(s1)
                  lbu          s0, -48(s1)
                  sltu         a5, s11, t2
                  lh           sp, 814(s1)
                  lb           a1, 1274(s1)
                  sb           s3, 911(s1)
                  sb           a0, 991(s1)
                  sb           t1, 383(s1) #end riscv_load_store_rand_instr_stream_6
                  andi         tp, s9, 549
                  blt          t0, s4, 1462f
                  bgeu         s0, a5, 1479f
1462:             ori          gp, s3, 157
                  and          t2, s10, t0
                  auipc        a3, 963711
1465:             bgeu         s0, zero, 1466f
1466:             slt          sp, sp, s5
                  xori         s7, a0, -520
                  sra          s6, a3, t5
                  slti         t4, t1, 357
                  blt          s0, t2, 1489f
                  slt          a5, s5, tp
                  lui          a4, 676175
                  and          t2, t4, a7
                  blt          t5, a4, 1485f
                  slli         ra, tp, 20
                  sra          a4, a4, t2
                  la           a5, sub_1
                  andi         s4, a6, -1243
                  slt          a7, s4, s8
                  sra          a6, a1, s6
                  slti         zero, t2, 1013
                  addi         a5, a5, 884
                  slti         sp, zero, -248
                  lui          s0, 539854
main_j1:          jalr         ra, a5, -884 #jump main -> sub_1
                  andi         t4, s3, -879
                  bne          a1, a4, 1484f
                  xori         s1, gp, 743
1479:             srli         s0, s4, 31
                  lui          t1, 145868
                  sltu         s2, s9, s9
                  xor          t5, s1, s10
                  and          zero, a4, s3
1484:             ori          s4, ra, -1481
1485:             lui          s4, 96877
                  addi         s9, t6, 427
                  bne          t2, a6, 1504f
                  bge          s11, tp, 1500f
1489:             or           gp, t3, a4
                  addi         t1, s7, -541
                  sltu         t2, a5, t0
                  ori          a5, t2, 555
                  auipc        s6, 1034616
                  bge          s7, a7, 1495f
1495:             srai         s3, t4, 9
                  sltiu        s3, s10, 1909
                  blt          s1, s3, 1517f
                  slti         s11, a4, 1332
                  srl          a4, a2, a3
1500:             bltu         a6, ra, 1518f
                  xori         s9, a2, 1063
                  blt          t1, a5, 1522f
                  srli         gp, t4, 11
1504:             xor          s5, t1, a2
                  bne          a7, a6, 1509f
                  beq          a1, tp, 1519f
                  or           ra, a2, s4
                  auipc        a1, 981713
1509:             or           t4, s6, s11
                  srli         t5, s2, 18
                  srl          zero, ra, s2
                  xor          t6, s7, t0
                  xor          t2, a1, a3
                  add          zero, a1, s8
                  beq          s1, s7, 1531f
                  add          a3, sp, t4
1517:             auipc        t1, 474479
1518:             andi         s8, s1, 763
1519:             xori         s8, t2, 1033
                  sub          zero, a6, t1
                  sra          s1, s6, s9
1522:             sll          s4, t0, s0
                  auipc        t4, 293880
                  slli         s7, t0, 1
                  and          t5, sp, s8
                  beq          sp, a2, 1530f
                  xori         t2, a3, 1371
                  andi         s0, a4, -1174
                  slt          a7, zero, sp
1530:             sll          s2, a7, zero
1531:             sub          s0, t1, a1
                  slti         s5, t1, -847
                  srli         a0, t3, 12
                  srl          zero, s1, a2
                  lui          a4, 986369
                  lui          s8, 656622
                  sra          a7, s0, s8
                  blt          zero, s6, 1551f
                  xori         a3, a6, 1376
                  auipc        a5, 760279
                  addi         t5, s6, -1856
                  andi         s5, s3, 869
                  ori          s3, s5, 1571
                  blt          s6, t5, 1545f
1545:             nop
                  sltiu        a6, zero, 393
                  addi         t4, a4, -575
                  addi         s2, s2, 1123
                  slt          s7, s1, s3
                  or           s8, s3, zero
1551:             bltu         a4, t1, 1569f
                  bltu         t4, t3, 1566f
                  srli         a1, t2, 7
                  srli         s4, s7, 24
                  sltu         ra, s10, a1
                  sltiu        s8, t5, 1338
                  auipc        s2, 36829
                  slli         s6, s11, 23
                  bltu         s2, a2, 1575f
                  auipc        a6, 973686
                  xor          t1, s9, a5
                  lui          s2, 937647
                  addi         a6, a2, 663
                  sltiu        s0, t6, -319
                  and          t2, a6, s6
1566:             slt          s9, t0, t0
                  srl          s3, t0, t5
                  andi         s8, sp, 949
1569:             srli         s7, a1, 17
                  andi         s6, t4, 575
                  add          t2, t6, a5
                  nop
                  and          t4, a6, s1
                  srl          s3, zero, a3
1575:             bltu         a6, a6, 1577f
                  srai         s0, a1, 12
1577:             xor          s6, a4, a4
                  auipc        t6, 428729
                  add          t2, a3, t1
                  andi         a4, t3, 1135
                  sltiu        a1, a5, 1173
                  bgeu         a0, a4, 1596f
                  sltu         t4, a3, s9
                  sll          s7, a3, t1
                  slt          s3, gp, s4
                  ori          sp, s0, 1324
                  lui          s11, 1036314
                  lui          a5, 1047429
                  bne          t4, s8, 1592f
                  sll          sp, t0, s4
                  blt          s1, a6, 1607f
1592:             ori          s6, a3, 468
                  sll          t6, s6, s3
                  bne          a2, t3, 1598f
                  ori          a1, ra, -105
1596:             ori          s5, a5, 1583
                  xori         gp, t6, -218
1598:             nop
                  sltiu        a6, t3, -1343
                  bne          t2, a4, 1620f
                  nop
                  lui          s6, 713996
                  bgeu         s1, a7, 1619f
                  sltu         t2, s8, ra
                  lui          a7, 671264
                  and          gp, ra, a3
1607:             slt          sp, gp, s11
                  addi         zero, s3, -1612
                  add          gp, a7, tp
                  xor          s8, tp, ra
                  srli         a5, s5, 13
                  slli         gp, s1, 0
                  sll          a3, a6, t4
                  xor          s11, a7, tp
                  beq          s0, t0, 1620f
                  beq          s10, a6, 1633f
                  auipc        s5, 878129
                  bge          a1, a3, 1637f
1619:             add          s9, s7, a5
1620:             nop
                  srl          a3, zero, t1
                  srl          s8, t1, t1
                  bne          ra, t6, 1637f
                  srli         t6, t5, 16
                  auipc        s1, 383363
                  addi         s11, zero, -1110
                  nop
                  andi         t1, t0, -1200
                  add          s2, s7, a6
                  bne          t4, a1, 1642f
                  or           t2, s7, tp
                  auipc        sp, 78646
1633:             ori          tp, gp, -1554
                  bne          s0, s7, 1650f
                  addi         a4, gp, -1692
                  srli         a6, ra, 30
1637:             sub          a1, zero, a6
                  and          t6, t6, t1
                  sub          s2, t6, s2
                  bge          a1, s4, 1644f
                  addi         s4, gp, -264
1642:             xori         s4, t5, -615
                  bge          s11, t1, 1646f
1644:             sll          t6, sp, a5
                  bgeu         s5, gp, 1650f
1646:             xori         t4, ra, 1272
                  sltu         a4, s6, t1
                  slti         t1, s5, 619
                  sub          a4, sp, s4
1650:             addi         s11, sp, -1169
                  srai         t1, s7, 25
                  auipc        ra, 466328
                  xor          s2, a4, a7
                  sltiu        s0, s11, -726
                  srli         gp, a4, 5
                  srl          s11, a1, t0
                  xori         s0, s2, -1733
                  bgeu         s1, s8, 1671f
                  slt          a0, gp, t5
                  sltiu        a2, s7, -866
                  bne          t0, a3, 1681f
                  add          a0, a2, a7
                  slti         t6, a7, -742
                  sra          s2, s9, t5
                  slli         sp, s11, 30
                  srl          s11, s4, zero
                  addi         t6, t6, 1092
                  blt          t5, t2, 1688f
                  sltiu        a3, a7, -1415
                  srl          s2, tp, ra
1671:             sltu         s5, a4, s8
                  srli         a6, a2, 26
                  sll          a6, t2, s6
                  bne          gp, a0, 1675f
1675:             slti         t6, t5, 84
                  addi         t1, t6, 114
                  srai         a0, s3, 0
                  sltiu        a3, s1, 1025
                  blt          ra, a4, 1697f
                  and          s4, t6, s10
1681:             and          s7, a4, s10
                  srai         a5, a1, 16
                  lui          s9, 302946
                  auipc        a4, 434495
                  slti         s6, s0, -78
                  and          s4, sp, t4
                  sra          a6, s0, s5
1688:             xori         a3, tp, 1094
                  andi         a7, t5, 1151
                  bltu         gp, s0, 1706f
                  bltu         s9, s5, 1693f
                  slti         gp, t3, -40
1693:             slli         tp, zero, 27
                  bgeu         tp, a4, 1695f
1695:             sub          s5, zero, a3
                  auipc        s6, 695056
1697:             addi         s1, s0, 738
                  srl          s9, tp, gp
                  ori          s11, t4, 687
                  sltu         a6, tp, zero
                  bltu         s8, gp, 1703f
                  srl          s3, s2, tp
1703:             sll          a3, s7, s6
                  srai         gp, a2, 7
                  add          a4, a4, s11
1706:             xor          a4, zero, t0
                  slli         s1, s5, 0
                  srl          a2, t5, zero
                  slt          a3, s7, gp
                  and          a2, t3, t4
                  srai         t6, t2, 12
                  lui          a3, 251687
                  sll          s6, ra, t6
                  sub          a6, a5, s11
                  xori         s11, s7, -2021
                  xor          a0, a1, ra
                  srli         t2, t4, 20
                  sll          tp, s2, t0
                  lui          t4, 993701
                  xor          a3, a3, zero
                  slt          s8, t6, t4
                  bltu         gp, t6, 1726f
                  nop
                  slli         s9, t5, 22
                  sltu         t5, s3, s9
1726:             bltu         zero, s7, 1743f
                  srli         t4, t2, 16
                  or           s8, t3, t5
                  add          s5, s6, a3
                  slti         a2, a6, -955
                  beq          t4, t0, 1748f
                  bgeu         a6, t2, 1736f
                  beq          s4, t1, 1740f
                  bge          s8, a7, 1748f
                  slti         a2, s7, 1815
1736:             sub          t1, a6, s6
                  slli         s9, s3, 3
                  or           s0, t6, s8
                  xor          t5, t4, s1
1740:             xor          a6, a7, zero
                  bltu         sp, s11, 1757f
                  srli         s7, a7, 30
1743:             or           t6, a6, zero
                  beq          s11, s5, 1757f
                  slti         sp, s7, -796
                  srai         a0, s6, 22
                  or           t1, s8, s9
1748:             bge          t2, sp, 1766f
                  sub          s1, sp, a0
                  slti         s4, s1, -1580
                  xor          s4, s9, s5
                  slti         s5, s7, -1379
                  addi         gp, a3, 1252
                  lui          t5, 864506
                  beq          s11, t3, 1756f
1756:             sub          gp, a0, tp
1757:             sll          s1, sp, s2
                  sll          a6, a2, t6
                  andi         a5, t2, 45
                  bltu         a5, t5, 1780f
                  and          a7, gp, s1
                  sra          t1, a3, t4
                  add          a2, zero, ra
                  srl          a3, ra, a0
                  sltu         t1, s5, s9
1766:             andi         s2, s3, 324
                  sltiu        zero, a2, 843
                  srl          s1, a3, ra
                  bltu         a7, t4, 1785f
                  beq          a4, s11, 1788f
                  slli         s0, s4, 7
                  bne          a6, tp, 1783f
                  add          gp, t0, a4
                  blt          s11, s4, 1792f
                  ori          sp, a0, 657
                  xor          s7, t0, t6
                  sub          s1, gp, gp
                  beq          s5, a0, 1798f
                  sltiu        a5, s5, -2020
1780:             srl          a6, s1, zero
                  srai         s4, t5, 3
                  sra          s11, t1, s8
1783:             nop
                  xori         a1, a7, 951
1785:             blt          s9, t4, 1801f
                  srai         s9, a7, 0
                  sltiu        s1, a4, 713
1788:             sll          tp, s10, t4
                  beq          s4, a7, 1802f
                  sra          s3, t5, a5
                  andi         s8, a2, -1515
1792:             srl          t6, a4, t4
                  bge          t6, s4, 1797f
                  xori         a5, t4, -1690
                  andi         s7, t5, 241
                  ori          t6, s10, 1225
1797:             sll          a1, a0, s10
1798:             addi         sp, a3, 1015
                  slli         a4, s0, 26
                  sltiu        a6, t2, -1656
1801:             ori          s0, s0, 668
1802:             slli         tp, t6, 24
                  bge          t1, tp, 1807f
                  or           s11, s0, s10
                  add          a6, s4, tp
                  or           ra, s3, t5
1807:             add          s7, t0, ra
                  sra          s5, s0, s0
                  srl          tp, a4, a3
                  auipc        s3, 1042388
                  bltu         a7, gp, 1831f
                  nop
                  sub          s2, a6, t3
                  bgeu         t5, s1, 1832f
                  add          s8, a4, tp
                  srl          ra, zero, s8
                  srai         a2, a7, 7
                  bgeu         gp, s9, 1825f
                  bltu         a6, tp, 1835f
                  slt          zero, s2, gp
                  sltiu        a3, t5, 1115
                  srli         t5, a7, 2
                  beq          a7, t5, 1825f
                  bltu         a6, gp, 1828f
1825:             addi         t4, s8, -1430
                  bltu         s8, s11, 1843f
                  bne          t4, gp, 1841f
1828:             andi         a3, a5, 1725
                  lui          s3, 348291
                  andi         a5, a6, -1051
1831:             or           s4, sp, a5
1832:             sltu         t6, a4, tp
                  srl          t5, a2, t1
                  srli         s9, s7, 3
1835:             ori          t5, a5, -435
                  add          s6, ra, s11
                  addi         t5, s3, 1730
                  slt          a7, sp, t0
                  lui          a2, 290376
                  slt          ra, a6, a2
1841:             srli         s4, s10, 20
                  blt          s4, s7, 1843f
1843:             bgeu         s8, a6, 1859f
                  auipc        a7, 489733
                  andi         s8, s1, -1435
                  bge          s11, t2, 1865f
                  nop
                  sll          s5, s0, s1
                  srl          a3, t1, s5
                  sub          t4, s10, a7
                  or           s5, s9, t0
                  addi         a5, s4, -1823
                  sub          a0, ra, a2
                  bge          zero, s7, 1855f
1855:             addi         a3, t6, -840
                  add          a3, a1, s3
                  bge          t0, a7, 1859f
                  add          s2, a1, t4
1859:             slt          s7, s1, s2
                  addi         gp, s7, -819
                  srl          t2, a7, s1
                  sll          gp, t0, a6
                  slt          t1, a4, t6
                  srl          s9, a3, s11
1865:             sll          a4, s1, s9
                  or           s11, zero, s1
                  auipc        s3, 906636
                  xori         tp, s1, 1118
                  srl          a4, s8, a5
                  bltu         a2, zero, 1871f
1871:             and          a2, s7, a7
                  and          a0, s10, s5
                  andi         t2, ra, -180
                  srai         sp, tp, 0
                  lui          a5, 958656
                  bge          s2, t1, 1888f
                  sltu         a7, a2, sp
                  auipc        s4, 63906
                  bltu         a5, t4, 1890f
                  beq          s4, s6, 1900f
                  srli         t6, s0, 24
                  slt          a2, s6, s1
                  sub          s11, a0, a7
                  slti         gp, zero, -265
                  beq          s0, s6, 1899f
                  andi         t4, s7, -1410
                  or           s9, a0, s5
1888:             beq          s8, a4, 1891f
                  srl          t5, a0, t5
1890:             srl          s5, s2, a2
1891:             xor          a5, s4, s6
                  addi         s8, a1, -324
                  slti         a1, sp, -1404
                  slli         s9, a3, 30
                  nop
                  bne          a6, t2, 1909f
                  srai         sp, sp, 9
                  sltu         s3, s9, s10
1899:             sub          a0, t6, s9
1900:             bge          ra, s3, 1918f
                  bgeu         t4, sp, 1906f
                  or           ra, s4, a2
                  add          s1, a4, gp
                  nop
                  bge          s2, t1, 1921f
1906:             bgeu         s7, a2, 1923f
                  sll          t6, s11, tp
                  slli         a7, a1, 3
1909:             srl          s9, a7, sp
                  slti         gp, t1, 1437
                  bne          gp, a2, 1925f
                  sub          t1, gp, a7
                  xori         s4, a0, -108
                  andi         s11, s7, -1253
                  sltu         a3, s2, s0
                  sub          t6, a1, sp
                  lui          s0, 914813
1918:             slti         s8, a5, 1968
                  slti         t1, s6, 311
                  bgeu         t2, a4, 1932f
1921:             bge          a7, s2, 1941f
                  srli         t4, a0, 13
1923:             bge          a5, a5, 1941f
                  and          s11, t1, s9
1925:             ori          a6, zero, 2
                  bne          t3, a6, 1943f
                  srli         s1, s0, 0
                  bne          t3, s1, 1944f
                  slti         s6, gp, 470
                  andi         a1, s0, -227
                  bgeu         s10, s10, 1947f
1932:             sll          t4, s0, t6
                  bgeu         a4, s8, 1937f
                  sltu         a0, sp, gp
                  nop
                  xor          t1, s10, t5
1937:             or           t2, t0, sp
                  srli         s3, t6, 22
                  add          s4, t0, t6
                  or           a3, t3, a6
1941:             xori         s9, s11, -132
                  beq          s7, s5, 1946f
1943:             bne          s10, s6, 1959f
1944:             slli         t1, s0, 5
                  beq          t6, zero, 1962f
1946:             ori          s4, zero, -699
1947:             sltiu        t2, a4, 1318
                  sub          a7, a3, s9
                  srl          ra, a4, a0
                  or           ra, s0, a5
                  and          t2, zero, sp
                  and          a7, tp, s7
                  or           a5, s5, a3
                  srli         sp, a7, 20
                  bltu         zero, tp, 1956f
1956:             addi         s3, a7, 1738
                  addi         t5, t6, 1807
                  xor          zero, s4, t4
1959:             srl          a5, s10, t5
                  addi         t6, s7, 1026
                  slti         t2, s11, -1461
1962:             srl          gp, s3, t1
                  bltu         s4, t1, 1979f
                  ori          zero, s5, 58
                  slt          a2, s10, s8
                  sra          s2, t2, gp
                  and          s8, sp, a6
                  andi         a3, a7, -1712
                  slt          s0, a7, s4
                  andi         t2, zero, -595
                  add          t6, a4, t5
                  xori         zero, a6, -340
                  and          t5, s2, s10
                  beq          t3, a2, 1992f
                  bge          t4, a3, 1982f
                  ori          a1, s10, 644
                  addi         s11, s4, 223
                  lui          a5, 577715
1979:             bltu         t6, a3, 1992f
                  sltiu        tp, zero, -125
                  and          s6, gp, a7
1982:             sltu         a1, t0, t5
                  addi         a2, s5, -668
                  srai         a2, s6, 4
                  slti         a3, a1, 864
                  sub          s1, s0, s7
                  addi         a1, a4, 750
                  xori         s6, a4, -1895
                  bgeu         s9, sp, 2009f
                  lui          s4, 707348
                  blt          t1, s8, 2004f
1992:             sltiu        t5, s7, 489
                  andi         s9, s4, 58
                  slli         a7, s5, 21
                  auipc        s9, 683492
                  ori          t2, s4, -39
                  xor          sp, t6, ra
                  lui          s2, 356102
                  bne          t2, s0, 2010f
                  addi         a3, ra, -1078
                  bltu         s3, s10, 2003f
                  auipc        s4, 468489
2003:             sltiu        s4, s5, 581
2004:             addi         s9, t6, -236
                  xori         s6, ra, 1502
                  bge          tp, s11, 2020f
                  bge          a3, t2, 2008f
2008:             nop
2009:             or           t6, s11, gp
2010:             add          s8, s1, t3
                  beq          t3, s6, 2030f
                  slti         tp, t0, -1309
                  sub          sp, a1, ra
                  srl          s7, s11, a0
                  add          t1, s2, a4
                  andi         s9, s10, -1839
                  xor          a6, s4, t1
                  sra          a5, a6, s10
                  or           s2, a1, t6
2020:             auipc        t2, 538079
                  bne          s10, s8, 2025f
                  xor          zero, a2, t6
                  auipc        s6, 16831
                  addi         ra, a0, 539
2025:             sltiu        a6, t4, -484
                  bge          s9, t1, 2044f
                  sll          ra, zero, gp
                  sub          s8, a4, a3
                  bne          s2, s6, 2034f
2030:             sltiu        gp, s8, 1463
                  srl          s5, t5, s2
                  sra          ra, t0, s10
                  or           t5, a2, s2
2034:             xor          a3, a4, s0
                  add          t2, s3, tp
                  beq          s2, t1, 2056f
                  sra          s1, gp, s3
                  or           t1, s10, t2
                  sub          gp, s5, a4
                  or           s1, a3, s11
                  sltu         s8, a0, t5
                  srl          s6, s9, gp
                  addi         a3, a3, 811
2044:             slli         a6, t5, 20
                  slt          t2, s3, zero
                  slli         s3, gp, 7
                  auipc        s11, 657764
                  ori          a3, s8, -678
                  sltu         gp, s0, tp
                  auipc        a4, 449308
                  slti         s4, t3, -850
                  bltu         a2, sp, 2053f
2053:             sra          s7, s9, s11
                  blt          s1, s5, 2057f
                  lui          s7, 626197
2056:             sltu         tp, a5, s1
2057:             xor          tp, t1, s2
                  sub          s2, a5, t5
                  sltu         s5, s11, a7
                  xor          a2, t5, s11
                  beq          s6, sp, 2063f
                  bne          s5, a0, 2075f
2063:             sltu         t5, s5, a2
                  xor          t2, t3, t3
                  bgeu         s3, s8, 2082f
                  slli         a0, t4, 9
                  bge          s2, s9, 2086f
                  srai         sp, t3, 31
                  beq          t4, tp, 2070f
2070:             slti         a1, s4, -963
                  bge          s1, s2, 2073f
                  nop
2073:             sltu         gp, a7, s10
                  slli         s0, s4, 12
2075:             sltiu        s0, s11, -587
                  beq          s6, s3, 2088f
                  sltu         s1, s3, a4
                  sra          a4, s2, sp
                  beq          a4, s8, 2082f
                  slti         a6, a5, -300
                  ori          s7, s7, 901
2082:             beq          s2, a4, 2096f
                  or           t5, a5, a4
                  nop
                  ori          a4, sp, 305
2086:             slti         t5, a3, 1434
                  sltiu        s7, a5, 350
2088:             bgeu         t1, sp, 2104f
                  add          gp, gp, t6
                  sra          s3, s6, sp
                  blt          a1, t0, 2107f
                  bge          s8, ra, 2112f
                  addi         s11, a1, 181
                  slt          a4, sp, a0
                  sub          s8, a7, tp
2096:             srli         s9, s4, 13
                  add          s5, a3, s0
                  slli         s4, t2, 23
                  auipc        t6, 244599
                  slti         gp, s6, -1008
                  bltu         s2, t1, 2114f
                  ori          s4, s9, -1101
                  slli         ra, ra, 13
2104:             auipc        s6, 196917
                  beq          s10, s11, 2123f
                  srl          s8, a1, s10
2107:             beq          a4, a0, 2127f
                  ori          a5, t2, 680
                  srl          t5, a5, s7
                  bgeu         s5, a5, 2111f
2111:             bge          t1, s7, 2115f
2112:             bgeu         s9, t2, 2128f
                  sra          gp, tp, t1
2114:             xori         t5, s8, 375
2115:             bge          s3, zero, 2132f
                  xori         t1, s8, 1943
                  sub          a3, a3, gp
                  andi         zero, a6, 143
                  slli         a4, s8, 30
                  sltu         s4, a4, s0
                  srli         s6, sp, 24
                  xori         a2, t2, 1782
2123:             sltu         a4, tp, tp
                  andi         gp, t0, -1030
                  beq          s0, zero, 2136f
                  nop
2127:             add          ra, s1, s5
2128:             or           s3, s3, gp
                  add          s5, s4, s11
                  beq          t3, s11, 2135f
                  auipc        s8, 847856
2132:             sltiu        t5, s7, 552
                  sra          sp, tp, s10
                  bge          t0, s3, 2152f
2135:             xor          s6, a4, s6
2136:             nop
                  bltu         t3, s0, 2155f
                  sra          tp, s1, s9
                  srl          s3, s7, a2
                  blt          a2, s6, 2147f
                  sra          s6, t4, a5
                  sll          t4, t4, s11
                  lui          ra, 974985
                  sltu         sp, s2, ra
                  or           s11, t3, a2
                  bne          t4, s9, 2150f
2147:             sra          s2, tp, t0
                  slt          a3, s1, a7
                  lui          t4, 331787
2150:             srai         a7, gp, 31
                  bgeu         s11, s5, 2155f
2152:             bgeu         s7, s5, 2172f
                  or           zero, zero, s1
                  or           s5, a2, t3
2155:             bltu         a6, s7, 2156f
2156:             addi         a2, s2, 551
                  sra          a6, t6, s0
                  srai         ra, a6, 11
                  auipc        s2, 297344
                  andi         a3, s9, -1902
                  slt          gp, s9, t6
                  slli         s9, t1, 12
                  sll          s0, s1, s2
                  sra          s9, a0, s0
                  sltu         s7, a1, s11
                  slli         s4, s7, 25
                  xor          a2, s5, s9
                  blt          a4, sp, 2179f
                  slli         s4, a4, 4
                  add          a6, s6, tp
                  slt          s1, s9, t0
2172:             bge          zero, t5, 2174f
                  beq          s10, s10, 2179f
2174:             sll          s2, t6, s5
                  bltu         s10, t3, 2179f
                  sltiu        tp, gp, -158
                  blt          a4, s1, 2179f
                  sub          s8, s9, s1
2179:             sll          tp, s5, a7
                  la x28, test_done
                  jalr x0, x28, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            addi         s10, s10, -48
                  and          s7, s3, t4
                  slt          s5, sp, a5
                  sw           ra, 4(s10)
                  slli         s11, s5, 17
                  addi         s3, t2, 1560
                  sltu         s0, t5, ra
                  sltiu        a4, a5, -557
                  sltu         s6, s1, s8
                  lui          t5, 624615
                  slli         a0, s3, 14
                  srai         a4, a1, 17
                  la           t1, sub_9
                  slt          tp, s10, t1
                  nop
                  addi         t1, t1, -126
                  bne          sp, a4, sub_8_j11 #branch to jump instr
                  xor          a3, a2, s8
                  sra          ra, s1, a4
                  add          a1, t3, a6
sub_8_j11:        jalr         ra, t1, 126 #jump sub_8 -> sub_9
                  sltiu        sp, zero, 1867
                  slli         a4, s9, 31
                  nop
                  lui          s5, 259173
                  addi         t2, t0, -1
                  add          t1, s7, a4
                  sltiu        a7, a6, -7
                  slli         s1, s0, 5
                  sub          tp, t5, s7
                  srl          a3, a4, t3
sub_8_j12:        jal          ra, sub_10 #jump sub_8 -> sub_10
                  la           s8, region_1+868 #start riscv_load_store_rand_instr_stream_1
                  andi         s0, s3, -1174
                  lw           a7, 60(s8)
                  sh           t4, -28(s8)
                  lb           s7, 99(s8)
                  addi         t2, s9, -236
                  sb           a3, -212(s8)
                  lb           a2, 212(s8)
                  slt          s7, s7, t6
                  add          a2, t5, zero
                  lw           s3, -240(s8)
                  xori         s9, a4, 1052
                  srl          t4, a1, a5
                  xori         t4, s3, -1504
                  add          s5, s10, s10
                  lbu          t1, 135(s8)
                  sb           s9, 243(s8)
                  lhu          t4, 182(s8)
                  xori         s0, sp, 304
                  sub          s4, gp, s3
                  and          t6, a1, s6
                  lb           a3, -171(s8)
                  sltiu        sp, s9, -942
                  ori          a7, s6, -1007
                  nop
                  sb           a3, -109(s8)
                  sll          s3, a7, tp
                  lh           t6, -18(s8)
                  lh           a2, 168(s8)
                  lh           t6, 22(s8)
                  sltu         s9, a7, t5
                  lbu          tp, -249(s8)
                  sltiu        s7, gp, -1600
                  sb           t1, -111(s8)
                  lb           s11, -179(s8)
                  lbu          t6, -243(s8) #end riscv_load_store_rand_instr_stream_1
                  la           tp, region_1+224 #start riscv_load_store_rand_instr_stream_0
                  lbu          s2, -177(tp)
                  sll          a6, t4, t3
                  ori          a7, tp, 1729
                  lhu          t1, -34(tp)
                  lb           s8, 1029(tp)
                  lhu          t5, 254(tp)
                  lbu          a6, 578(tp)
                  lhu          t6, 1578(tp)
                  sb           s2, 1092(tp)
                  slt          t1, s7, s8
                  addi         s9, s10, 1593
                  lb           gp, 110(tp)
                  lh           s0, 1164(tp)
                  or           a5, s7, a7
                  lbu          s2, 1619(tp)
                  addi         t2, t4, -3
                  sb           tp, 1247(tp)
                  sltu         s7, s9, s0
                  lb           sp, 1763(tp)
                  lb           a6, 1721(tp)
                  lbu          sp, 636(tp)
                  lbu          a4, 832(tp)
                  slt          s8, t6, a0
                  ori          s9, t0, 258
                  sb           a5, -95(tp)
                  sb           t6, 1010(tp)
                  sw           s2, 1116(tp)
                  xor          ra, s11, s11
                  sll          t6, sp, s6
                  sb           a2, 1641(tp)
                  lbu          zero, 245(tp)
                  sh           t0, 902(tp)
                  sb           s7, 1683(tp)
                  sub          zero, s7, t6
                  lbu          a3, 1037(tp)
                  lbu          a3, 1077(tp)
                  lbu          a3, 1298(tp) #end riscv_load_store_rand_instr_stream_0
                  srli         t2, t6, 28
                  bgeu         t4, s1, 16f
                  xor          s11, s0, a3
                  addi         gp, s9, 1732
                  srli         s9, a1, 16
                  bge          t0, s3, 13f
                  add          sp, s9, sp
                  lui          s8, 1020894
                  beq          a4, s1, 25f
                  slt          s9, t4, s7
                  slt          s8, sp, s5
                  ori          tp, t3, -1716
                  or           a2, a5, s5
13:               nop
                  nop
                  bgeu         s10, tp, 35f
16:               nop
                  sub          s3, a6, s10
                  srli         s1, a4, 4
                  lui          s0, 26175
                  beq          t4, s4, 23f
                  beq          t4, s6, 24f
                  addi         s0, t2, -1708
23:               bgeu         a3, s6, 34f
24:               beq          a4, s8, 38f
25:               srl          s5, t1, s11
                  sub          t6, s7, t6
                  slt          a2, ra, a4
                  slli         t6, t1, 5
                  slli         s6, a2, 11
                  srl          zero, sp, tp
                  bltu         s9, t4, 32f
32:               sll          a6, s3, t0
                  srai         a3, s0, 9
34:               bgeu         a5, a0, 51f
35:               xor          s4, s9, s0
                  sltiu        a1, s1, 1213
                  slti         a0, a0, 471
38:               beq          s10, s9, 55f
                  slt          s0, s3, s7
                  andi         a0, t0, -754
                  srli         s5, a7, 8
                  add          a4, t2, s7
                  sltiu        s7, t3, -1949
                  slli         s0, s5, 31
                  sub          a7, a5, s6
                  srai         t2, s0, 4
                  beq          tp, t1, 61f
                  bgeu         s9, s1, 57f
                  bgeu         s6, a4, 58f
                  sltu         a3, s11, t0
51:               blt          zero, tp, 59f
                  and          tp, a2, s2
                  slli         s0, t6, 8
                  slt          t5, t1, s5
55:               sra          s11, t1, s6
                  bge          s8, s7, 59f
57:               auipc        s4, 28188
58:               bltu         t6, t5, 59f
59:               bltu         s4, t6, 70f
                  xori         tp, sp, 315
61:               lui          gp, 505058
                  slt          s6, a4, s0
                  addi         s4, t2, 1381
                  sltu         gp, a5, a6
                  sltu         a4, a5, tp
                  lui          s7, 275827
                  ori          a0, ra, -93
                  slli         s2, a3, 9
                  sub          a1, t3, s3
70:               srl          zero, a1, s10
                  srl          gp, t3, ra
                  add          t4, s0, s8
                  xor          s9, gp, s9
                  srl          s2, a3, t5
                  sltu         t1, a3, a4
                  bltu         s6, s0, 89f
                  andi         sp, s4, -1751
                  and          t1, s4, s10
                  add          gp, s2, s4
                  or           s6, t1, a2
                  sltiu        s8, gp, 528
                  sra          s2, t5, s0
                  add          a5, t1, a7
                  add          a5, t6, s5
                  lui          s1, 622717
                  sll          s11, a4, s7
                  slti         a2, s11, -1744
                  lui          a7, 539224
89:               auipc        a5, 229852
                  auipc        a3, 512425
                  andi         s7, s9, 1693
                  andi         t2, s11, -428
                  ori          sp, a6, 1438
                  xor          t4, s8, a1
                  bltu         sp, a6, 111f
                  andi         s1, a2, 971
                  blt          a2, s1, 112f
                  addi         a6, a6, 1262
                  beq          t0, ra, 112f
                  beq          s4, a0, 109f
                  sltiu        s5, s4, -398
                  slli         s7, tp, 5
                  ori          zero, tp, 1048
                  slt          s8, s7, s7
                  addi         s4, s2, 725
                  sub          a1, gp, t3
                  or           s7, s9, sp
                  sub          t2, zero, a3
109:              slt          ra, s11, s4
                  lui          s8, 1015225
111:              sltu         gp, a6, s9
112:              beq          ra, t3, 132f
                  sub          tp, s10, s9
                  auipc        a6, 972651
                  bgeu         t5, t4, 133f
                  andi         gp, gp, 282
                  beq          gp, a7, 127f
                  sra          s4, zero, sp
                  srli         t1, s8, 8
                  srai         t1, s6, 4
                  and          a2, s5, s7
                  xor          a3, t2, s11
                  sltiu        t1, tp, -1029
                  xor          a0, a3, zero
                  sra          a4, s8, a2
                  nop
127:              beq          a5, s5, 140f
                  lui          t6, 264297
                  bltu         tp, ra, 146f
                  addi         s6, s6, 1348
                  srli         s3, s4, 31
132:              srl          s5, s11, s9
133:              srai         t5, t5, 10
                  slli         s5, s3, 2
                  sra          s1, t2, t6
                  or           a1, s2, s8
                  bge          a7, a6, 145f
                  or           a7, t2, s7
                  sltiu        s11, t1, 1582
140:              sltiu        s3, s9, -1750
                  sltu         s4, s9, s5
                  srli         gp, a0, 10
                  nop
                  xor          t1, a4, s8
145:              srl          s5, ra, s1
146:              sll          a5, ra, sp
                  bgeu         s4, s7, 153f
                  ori          s1, s7, -646
                  auipc        a5, 850606
                  sll          s7, gp, s5
                  slli         sp, t3, 16
                  slti         a5, sp, -139
153:              and          a5, t0, sp
                  sra          s1, a6, sp
                  beq          ra, a4, 156f
156:              srl          a6, t1, gp
                  blt          s0, s3, 175f
                  srli         s2, s2, 25
                  bge          a1, t5, 160f
160:              or           s2, t0, a2
                  beq          s11, a3, 178f
                  slt          a1, s1, t1
                  slti         zero, t0, -1555
                  srli         s11, s4, 30
                  sra          t4, s2, t6
                  srl          t6, t4, s4
                  bne          s3, a6, 181f
                  srl          zero, s4, a0
                  xor          t4, a0, a5
                  bne          a2, a5, 179f
                  srai         tp, t4, 28
                  slli         t4, s6, 9
                  or           t6, t2, a1
                  slt          s1, t0, a4
175:              slti         s1, s6, 1628
                  blt          t1, ra, 196f
                  bltu         a7, t6, 193f
178:              sra          a3, s8, s6
179:              and          t5, s2, s11
                  beq          s11, s8, 197f
181:              sub          a5, s5, s3
                  auipc        s4, 649794
                  sra          a5, a1, t1
                  sra          a5, a6, t6
                  bne          s2, a3, 195f
                  sra          t6, tp, t5
                  srl          gp, s7, a4
                  add          ra, s1, s4
                  xori         sp, s0, -49
                  sra          ra, s0, gp
                  slti         s5, s0, -546
                  slti         a5, t6, 1920
193:              ori          s6, a7, 612
                  bgeu         a4, s6, 214f
195:              bltu         ra, s11, 212f
196:              srl          t4, ra, s4
197:              addi         t5, a0, 1244
                  lui          s9, 692432
                  slli         s3, zero, 21
                  srai         zero, gp, 4
                  slti         a4, a5, -888
                  blt          s10, t4, 210f
                  bge          s2, s1, 214f
                  xor          s7, s8, s8
                  bne          a6, a1, 213f
                  addi         ra, a7, -1026
                  addi         a3, t5, 1561
                  sll          gp, s5, a3
                  xori         a4, s4, -1165
210:              sltu         s1, a1, t0
                  andi         a6, s10, 1480
212:              bne          t3, t4, 215f
213:              bge          zero, s9, 230f
214:              nop
215:              sll          t6, s5, sp
                  ori          s7, t6, 202
                  sub          a2, s8, t1
                  sub          s5, s6, t4
                  addi         a0, tp, -1284
                  bltu         t6, s1, 223f
                  sra          sp, t4, t1
                  add          a0, s3, sp
223:              bge          s10, t1, 226f
                  lui          gp, 796276
                  xor          s6, t5, t5
226:              and          s2, t0, s9
                  bgeu         s3, a4, 235f
                  slt          t5, s8, s3
                  ori          a3, t1, -1032
230:              bltu         s3, s0, 239f
                  beq          s9, s9, 244f
                  xor          s0, s4, s10
                  xor          t5, s8, ra
                  ori          sp, s10, 1083
235:              sltu         s1, t1, s2
                  sll          a3, a3, a4
                  slti         s9, s6, -1997
                  ori          t1, t0, 1661
239:              xor          t5, t4, t2
                  bltu         t1, tp, 251f
                  auipc        a6, 99170
                  add          sp, s3, s6
                  add          a0, s5, t3
244:              sra          t5, s5, t1
                  auipc        s7, 359486
                  or           tp, s4, t2
                  sltiu        t6, t5, -1824
                  lui          t6, 783302
                  beq          s3, s9, 258f
                  or           s8, a4, a7
251:              sltiu        t6, t3, -1329
                  sra          s9, s6, a2
                  sub          s6, gp, t5
                  sub          t1, a0, a0
                  slli         t1, s3, 17
                  lui          s3, 526131
                  and          a3, s5, s4
258:              add          zero, a0, s4
                  bne          zero, ra, 273f
                  srl          s11, t0, t3
                  nop
                  bne          s8, a7, 268f
                  sll          s3, a1, s2
                  srl          a2, a7, a1
                  sltu         t5, s6, s1
                  sra          zero, s5, s10
                  bge          zero, s10, 282f
268:              slt          zero, s9, t2
                  sltiu        s5, t4, 1925
                  sltiu        s5, a7, -1310
                  bltu         s2, s9, 284f
                  nop
273:              ori          s11, s9, -520
                  xori         a6, s10, 1767
                  sub          s9, zero, a2
                  xori         s11, ra, -196
                  bgeu         a6, t6, 290f
                  beq          s7, s7, 293f
                  sub          s4, tp, s7
                  addi         a0, t3, -783
                  slti         t2, t3, 149
282:              or           sp, t1, s6
                  ori          tp, s11, -1776
284:              andi         ra, s4, 1159
                  sltiu        t2, ra, 1556
                  srai         a3, s5, 5
                  sltu         t4, a7, s2
                  bgeu         s0, s11, 297f
                  xori         s3, t2, 1898
290:              bge          t5, a1, 293f
                  add          sp, a1, s2
                  add          gp, a7, a0
293:              slli         gp, t0, 4
                  sub          t2, s8, sp
                  bltu         ra, s10, 296f
296:              sub          a4, tp, t2
297:              srai         s4, s11, 27
                  slti         s2, s9, 1665
                  slt          a2, s2, a5
                  lui          a1, 1035921
                  lw           ra, 4(s10)
                  addi         s10, s10, 48
                  srli         zero, a6, 6
                  srli         s1, t0, 5
                  sub          s0, t5, s5
                  sltiu        s9, s2, -1028
                  and          a0, t3, t2
414:              addi x18, x1, 0
414:              jalr x18, x18, 0
sub_4:            slli         s4, t1, 8
                  addi         s10, s10, -16
                  andi         a1, a0, -1627
                  slli         s6, zero, 5
                  sw           ra, 4(s10)
                  srli         s0, s3, 29
                  addi         t1, t5, -459
                  add          t5, s8, a1
                  auipc        s4, 1031228
                  slti         s7, t5, 1131
                  sll          a1, t4, s4
                  slti         s9, a0, 1828
sub_4_j7:         jal          ra, sub_7 #jump sub_4 -> sub_7
                  sltiu        s6, t4, -979
                  bge          s11, s4, sub_4_j8 #branch to jump instr
                  srai         a6, gp, 17
                  slti         s0, a2, 1595
                  and          a5, s2, s10
                  sra          a7, a6, t5
                  add          a1, t3, a5
                  or           s8, t1, s5
sub_4_j8:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  slt          a6, a5, t0
                  bge          gp, tp, 15f
                  addi         t5, tp, 1106
                  bne          t5, t1, 4f
4:                srli         s4, sp, 28
                  slt          s0, s2, a6
                  blt          t0, a6, 21f
                  and          t2, gp, s3
                  slti         s2, t4, 387
                  beq          s5, a6, 22f
                  srli         zero, t3, 29
                  sltiu        a1, zero, -365
                  blt          s7, s9, 30f
                  blt          t0, t4, 28f
                  sll          s9, s3, tp
15:               slli         t1, a0, 20
                  srl          a1, t6, a7
                  slt          t4, a4, tp
                  beq          a2, t1, 33f
                  and          t5, t2, a2
                  beq          tp, t5, 24f
21:               bge          s11, s6, 27f
22:               bge          s2, s9, 25f
                  xor          s9, t5, zero
24:               sltu         sp, t5, s8
25:               bge          s0, a5, 35f
                  slt          a4, s4, t2
27:               ori          t1, s11, -1674
28:               srl          t5, a7, s6
                  bge          s4, s9, 35f
30:               slti         a3, a6, 1445
                  slt          s1, s0, t0
                  sra          a2, gp, a1
33:               bltu         s4, a0, 35f
                  beq          t4, t6, 35f
35:               addi         a2, t3, 2023
                  xori         s6, t6, 1157
                  slt          tp, t6, s6
                  xori         s5, a4, 1222
                  lw           ra, 4(s10)
                  xor          a5, zero, a6
                  addi         s10, s10, 16
                  andi         s1, t4, 211
65:               addi x30, x1, 0
65:               jalr x30, x30, 0
sub_1:            sltu         s2, t4, s10
                  sltiu        a7, s3, 1339
                  bge          s7, a7, sub_1_stack_p
                  xori         s5, t3, 225
sub_1_stack_p:    addi         s10, s10, -40
                  sltiu        s5, s6, 958
                  sw           ra, 4(s10)
                  ori          a4, a5, 532
                  sltu         a3, tp, s1
                  add          a6, t0, s7
                  slti         t6, a5, -24
                  sll          a6, gp, a0
                  sll          a2, tp, s0
                  sltu         zero, a7, s5
                  sra          tp, t3, s5
                  la           a1, sub_2
                  sltu         s6, t2, gp
                  sra          s8, zero, a6
                  addi         a1, a1, 668
                  xori         s3, a5, 1081
                  sltu         s3, s11, a2
                  srl          gp, a0, ra
sub_1_j2:         jalr         ra, a1, -668 #jump sub_1 -> sub_2
                  xori         a3, s11, -1225
                  nop
                  add          a5, zero, s6
                  nop
                  bgeu         zero, tp, sub_1_j3 #branch to jump instr
                  srai         t1, t0, 6
                  sra          s0, a5, t3
sub_1_j3:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  ori          a4, t5, -283
                  addi         t5, a0, 2008
                  sub          s7, a7, a0
                  la           t6, sub_3
                  add          s3, s7, s11
                  auipc        a7, 186166
                  or           a4, t3, tp
                  xor          s8, a5, s5
                  ori          s9, s4, 1321
                  addi         t6, t6, -24
                  andi         a3, a5, -435
sub_1_j4:         jalr         ra, t6, 25 #jump sub_1 -> sub_3
                  xori         ra, a7, -1625
                  sltiu        a6, s7, 1177
                  and          s7, t3, a1
                  add          s3, a0, a5
                  addi         a1, tp, -1891
                  slti         s5, a7, 1546
                  nop
                  xori         a0, zero, 1798
                  sll          a3, t4, s10
sub_1_j5:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  add          s1, s2, a7
                  auipc        a7, 83925
                  sltiu        a7, t3, -1188
                  sltu         s5, a0, t0
                  beq          s2, s11, 9f
                  and          ra, s4, t4
                  srli         s1, s1, 18
                  sltiu        a5, tp, 1249
                  sltiu        s0, s8, 1258
9:                ori          a3, s6, -355
                  andi         tp, a6, 1037
                  bgeu         a6, a5, 21f
                  bgeu         ra, t5, 30f
                  bltu         s7, a3, 17f
                  bne          a3, a2, 25f
                  sltiu        s2, s3, 1823
                  slti         t1, s6, -605
17:               sltiu        t5, ra, 49
                  srl          t2, a4, t4
                  slti         t4, s4, 1299
                  bgeu         t2, s6, 25f
21:               and          t4, t0, s0
                  ori          s7, ra, 2044
                  and          t2, s3, a1
                  bgeu         s2, a2, 29f
25:               sltiu        a5, s4, 997
                  lui          a7, 837951
                  ori          s6, a0, 1175
                  xor          s4, s3, s10
29:               xori         s9, s5, 1937
30:               slli         s9, a3, 30
                  xori         gp, sp, 1941
                  beq          s11, s3, 49f
                  slti         a7, a0, 22
                  beq          a2, zero, 49f
                  beq          s7, tp, 49f
                  addi         tp, s11, 1474
                  and          a5, t5, s2
                  blt          t4, s5, 49f
                  slt          a2, gp, s10
                  srli         s11, a4, 27
                  slti         s11, t6, -1351
                  addi         tp, a6, -1456
                  sltiu        a0, s7, 1803
                  beq          t4, a7, 46f
                  srli         a0, s1, 22
46:               slli         tp, t0, 14
                  slti         a4, t2, -442
                  sub          s8, sp, s9
49:               slti         s4, t5, 1549
                  slt          s3, s5, s10
                  srli         t2, sp, 16
                  slt          zero, a7, tp
                  lw           ra, 4(s10)
                  ori          s3, a4, 867
                  addi         s10, s10, 40
                  srai         t6, a1, 6
110:              addi x23, x1, 0
110:              jalr x23, x23, 0
sub_5:            andi         sp, s7, -1500
                  slti         s7, s6, -1578
                  auipc        s7, 858397
                  bne          a2, t5, sub_5_stack_p
                  sltiu        s5, s5, 1911
                  srl          t1, a5, a6
                  srli         s4, s9, 31
                  lui          a0, 966437
                  sltu         t1, s1, tp
sub_5_stack_p:    addi         s10, s10, -64
                  sw           ra, 4(s10)
                  ori          s5, s7, -1773
                  slli         s3, s2, 7
                  slt          ra, a4, t6
                  slt          t2, s3, s2
                  blt          a3, a1, 9f
                  slt          s11, s7, a4
                  slt          s2, a7, s5
                  or           ra, t1, gp
                  auipc        a1, 152702
                  sra          a2, s7, s7
                  andi         ra, ra, -1117
9:                sltiu        a4, zero, -1749
                  lw           ra, 4(s10)
                  sll          t4, s8, s5
                  nop
                  addi         s10, s10, 64
                  slt          s6, s8, sp
                  xori         a2, s1, 1274
                  slli         s4, s7, 6
                  and          s1, a3, t1
                  sltu         t6, t6, a4
                  andi         s3, a2, 1155
33:               addi x11, x1, 0
33:               jalr x11, x11, 0
sub_9:            xor          zero, t3, s0
                  blt          s6, t3, sub_9_stack_p
                  ori          sp, t0, 580
sub_9_stack_p:    addi         s10, s10, -48
                  sw           ra, 4(s10)
                  xori         a3, a0, -1175
                  la           sp, region_1+1296 #start riscv_load_store_rand_instr_stream_1
                  sll          s1, a6, t6
                  slli         t5, t4, 5
                  sb           t1, 16(sp)
                  slt          a4, ra, a3
                  sra          a7, gp, a1
                  sb           a3, -1(sp)
                  lbu          a5, -7(sp)
                  lhu          s1, 0(sp)
                  sll          t4, t4, gp
                  sb           s9, 5(sp)
                  lbu          t2, -13(sp)
                  sh           t2, 16(sp)
                  lbu          a5, -13(sp)
                  sh           s0, -10(sp)
                  slli         a6, a2, 28
                  srai         a6, t0, 29
                  xori         s7, tp, -1807
                  nop
                  sltu         s4, a4, zero
                  srl          s9, tp, s5
                  sb           a3, -3(sp)
                  sb           s4, -10(sp)
                  lb           s4, -9(sp)
                  auipc        a7, 612787
                  lbu          ra, -5(sp)
                  lbu          a2, 4(sp)
                  nop
                  xori         s7, a0, -183
                  add          zero, s1, ra
                  sb           s11, -13(sp)
                  lhu          tp, -2(sp)
                  lw           zero, 12(sp)
                  sltiu        s11, s5, 1977
                  lb           tp, 1(sp)
                  sh           a4, 0(sp)
                  sltiu        s9, t2, 169
                  lb           s5, -13(sp)
                  nop
                  lb           a3, 1(sp)
                  lbu          s7, -2(sp)
                  sb           t5, -9(sp)
                  lb           t6, -1(sp)
                  lui          t4, 638320
                  sb           t6, 9(sp)
                  xor          a1, a4, tp
                  lbu          s9, 2(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t5, region_0+504 #start riscv_load_store_rand_instr_stream_0
                  sub          a6, s6, s10
                  lb           t4, 109(t5)
                  add          s1, ra, s3
                  lui          s1, 364889
                  sltu         s11, s2, s7
                  srl          a0, s5, sp
                  lw           s11, 84(t5)
                  srl          a3, s1, a3
                  ori          s8, a3, 1798
                  auipc        s0, 830064
                  lh           a4, -140(t5)
                  or           a6, s6, ra
                  ori          ra, zero, -1927
                  andi         t6, a3, 86
                  addi         s5, s6, -1591
                  sub          s7, a5, s9
                  srai         s3, a3, 26
                  lb           a6, 125(t5)
                  lhu          zero, 150(t5)
                  lbu          s0, 177(t5)
                  lh           a3, -162(t5)
                  sb           s1, 47(t5)
                  srai         tp, a0, 16
                  srai         a7, a6, 7
                  sh           a7, -58(t5)
                  srl          a0, t2, t1
                  sw           t5, -220(t5)
                  lbu          a2, -39(t5)
                  sltu         s0, a4, s6
                  lhu          s7, -104(t5)
                  lbu          a6, 33(t5)
                  xor          zero, t6, s2
                  sh           s10, -174(t5)
                  lb           s0, -256(t5)
                  srli         a1, ra, 2
                  lh           a3, 240(t5)
                  srli         a3, gp, 5
                  sh           a4, 2(t5)
                  slti         s1, sp, -2009
                  addi         s3, s10, 450
                  sra          a6, s11, t3
                  slli         t4, t2, 13
                  sb           a3, 88(t5)
                  slli         a3, t5, 25
                  sltiu        s0, s4, 877
                  lhu          zero, 28(t5)
                  lbu          a0, -74(t5)
                  lhu          s8, -142(t5)
                  lb           a7, -227(t5)
                  lb           s1, -91(t5) #end riscv_load_store_rand_instr_stream_0
                  bge          s9, tp, 11f
                  sra          a6, gp, t0
                  add          tp, s3, a5
                  xori         s3, t6, 1433
                  addi         a4, sp, -411
                  srli         s4, tp, 15
                  sra          a5, t0, s9
                  slli         s8, t0, 26
                  sll          tp, tp, s0
                  auipc        a6, 545759
                  sll          tp, t3, t1
11:               bgeu         s11, t5, 13f
                  auipc        s3, 853884
13:               auipc        s11, 245090
                  sra          sp, a1, s0
                  add          t2, s10, gp
                  bge          s6, s11, 23f
                  slt          a2, s0, a5
                  ori          s2, t0, 965
                  slti         s3, t2, 163
                  srai         s2, a6, 2
                  sltu         t5, s5, s9
                  bltu         a5, s1, 30f
23:               slti         s3, s10, 1981
                  sll          s7, s9, s9
                  sll          t4, sp, t3
                  ori          a4, a6, -1481
                  bgeu         s11, a0, 45f
                  xor          a1, t0, s6
                  ori          a3, s4, -1672
30:               srl          s3, s7, s4
                  and          t4, sp, zero
                  slli         sp, sp, 20
                  xori         t1, a4, 811
                  sltu         a2, a4, sp
                  lui          t6, 581419
                  srl          s11, a6, ra
                  slt          sp, sp, t4
                  xor          a4, t1, t6
                  bge          s9, a3, 43f
                  slli         s0, tp, 14
                  nop
                  bge          s7, s5, 56f
43:               bgeu         a5, s11, 49f
                  nop
45:               sub          s5, t2, t3
                  add          a5, a0, t5
                  andi         t5, a0, 342
                  sub          a6, a1, sp
49:               bne          a6, tp, 60f
                  slti         s6, tp, 1234
                  lui          s11, 438993
                  or           t6, s11, t6
                  addi         a4, s2, 626
                  sll          s0, s3, s3
                  and          a3, t5, t1
56:               add          s8, t3, a1
                  blt          t3, s2, 67f
                  andi         a6, t1, 748
                  or           s3, a3, a0
60:               ori          s0, a2, -1837
                  la           s4, region_1+36 #start riscv_load_store_rand_instr_stream_2
                  or           a7, tp, a5
                  ori          s8, a2, -1122
                  lbu          zero, 48(s4)
                  and          s7, t4, tp
                  addi         a7, gp, -590
                  sll          s9, t1, t0
                  srli         s6, s4, 29
                  lb           tp, 63(s4)
                  xori         a6, s3, -1268
                  lhu          s5, 64(s4)
                  lui          t6, 882579
                  xor          sp, t0, t3
                  auipc        gp, 374431
                  lw           s8, -8(s4)
                  xori         ra, a1, 1509
                  lui          s0, 836174
                  lb           a2, 5(s4)
                  and          t4, s6, a0
                  lui          a4, 762578
                  xor          s6, a2, t5
                  lui          s6, 324306
                  lui          t6, 241369
                  lb           t5, 5(s4)
                  slt          t2, a7, t1
                  srai         s5, s3, 2
                  lb           ra, 7(s4)
                  lh           a7, -26(s4)
                  ori          s11, t0, -1581
                  ori          a6, a5, -1292
                  nop
                  srli         sp, s11, 3
                  lbu          sp, 3(s4)
                  lb           a6, 48(s4)
                  lb           sp, 18(s4)
                  auipc        s3, 769053
                  srl          s8, s7, sp
                  lbu          gp, -18(s4)
                  sltu         t2, s10, t5
                  srl          s0, s5, s5
                  lbu          a3, 63(s4) #end riscv_load_store_rand_instr_stream_2
                  nop
                  blt          s0, s7, 82f
                  sra          s0, s1, ra
                  srl          s11, t0, zero
                  bgeu         t2, a1, 81f
                  addi         s5, t4, 1299
67:               or           t6, s0, s4
                  sll          s3, t1, tp
                  sra          ra, a3, t2
                  sub          a7, a3, s4
                  srli         t1, s6, 7
                  srli         t1, t4, 21
                  or           s5, t1, t1
                  sll          s3, t4, tp
                  sra          t5, t5, tp
                  srli         s1, s8, 29
                  xor          s3, s5, sp
                  srli         t4, a3, 2
                  xor          t1, zero, s10
                  andi         s7, a3, 787
81:               lui          a3, 765627
82:               sra          a3, a4, a5
                  srai         s7, s9, 5
                  or           sp, s10, t6
                  srli         s7, s3, 16
                  sltu         a6, ra, a2
                  sll          a2, a4, s2
                  srli         zero, s8, 10
                  bne          a0, t2, 98f
                  srli         s2, s2, 0
                  bltu         tp, s10, 97f
                  lui          s0, 1037757
                  sltu         sp, s10, a4
                  add          tp, s0, t5
                  bltu         s8, a1, 110f
                  srli         a5, t5, 8
97:               add          a0, s0, zero
98:               andi         a0, a7, 693
                  srl          a6, a3, a6
                  ori          s6, a5, 838
                  slli         a0, t1, 13
                  add          a6, s9, s3
                  sll          t2, s9, tp
                  lui          s2, 891118
                  srli         a1, s7, 29
                  addi         t4, ra, -1466
                  sll          s8, a6, tp
                  slti         s3, a0, -1888
                  xori         s0, sp, -1474
110:              add          s5, s3, ra
                  xor          s1, s4, a4
                  xori         a7, s11, -392
                  add          s0, a2, gp
                  andi         tp, s0, -469
                  sll          s1, t3, s10
                  auipc        a2, 451072
                  andi         s7, s0, -586
                  bgeu         s3, a5, 124f
                  slli         s6, s6, 17
                  sra          s1, s8, a6
                  auipc        s8, 781856
                  lui          s3, 685087
                  sra          s4, s11, s0
124:              lui          s8, 707275
                  bge          s6, gp, 126f
126:              xori         s0, s2, -948
                  sll          s3, s11, s9
                  sll          s7, s11, a1
                  blt          a1, t6, 144f
                  srli         a1, t6, 13
                  srli         a5, t1, 2
                  srli         a5, s11, 8
                  srli         a4, t6, 4
                  xori         t2, a4, -1592
                  xor          s5, s3, s6
                  slti         ra, s0, 362
                  bltu         s0, a5, 143f
                  sltiu        s1, s6, -1383
                  ori          zero, s4, -1590
                  sub          a6, a0, s6
                  slti         a1, tp, -177
                  lui          s5, 547154
143:              srli         a5, s5, 16
144:              srai         s7, s10, 29
                  sra          a7, s4, a3
                  srli         s3, gp, 17
                  bgeu         a2, a6, 153f
                  xori         s2, t5, -1824
                  slli         a7, s7, 4
                  bgeu         t5, s6, 165f
                  bltu         t0, t0, 161f
                  bge          t3, t4, 163f
153:              xor          t1, s9, a6
                  sltu         s9, ra, t4
                  slt          a0, sp, a7
                  xori         gp, ra, -877
                  bltu         ra, s2, 173f
                  add          s8, a0, s4
                  addi         s3, gp, 643
                  sra          tp, t2, s4
161:              beq          tp, t3, 171f
                  lui          zero, 696121
163:              sll          a0, s9, zero
                  sub          tp, t1, s10
165:              addi         sp, t4, -1993
                  slli         s6, a6, 28
                  sltiu        t6, t6, -1639
                  sltiu        a4, gp, 1984
                  blt          ra, t5, 177f
                  xori         a0, t3, -2026
171:              bne          a1, s10, 181f
                  bgeu         s5, t3, 191f
173:              addi         t1, tp, 1066
                  xori         a3, t1, 1066
                  addi         a5, s8, -1277
                  slt          a4, sp, s8
177:              auipc        s8, 899016
                  beq          gp, t5, 193f
                  sll          s11, s5, s8
                  srli         s7, t0, 15
181:              slli         s6, s5, 26
                  sltu         t2, t4, s6
                  bltu         s4, s11, 198f
                  blt          a2, t2, 194f
                  slti         t4, s5, 1741
                  bgeu         sp, s0, 196f
                  slli         s0, tp, 23
                  bne          t5, s7, 199f
                  bge          s0, tp, 205f
                  bgeu         t1, s0, 200f
191:              add          gp, zero, a4
                  sll          s5, s0, s0
193:              slti         sp, s0, 1719
194:              slli         s3, a7, 24
                  sll          a3, s9, s10
196:              or           a3, s11, s2
                  andi         tp, s7, 346
198:              bge          t3, t4, 212f
199:              or           t4, t6, s11
200:              sra          t4, t2, zero
                  srli         s4, ra, 23
                  bltu         t6, s4, 217f
                  andi         s0, s1, 1396
                  slt          s5, t0, a0
205:              sltu         gp, s2, a2
                  sll          a6, t6, t2
                  add          tp, s6, s4
                  and          t5, s1, a7
                  bltu         s11, a0, 224f
                  sll          s9, s5, s10
                  sll          a0, t4, a5
212:              xor          s1, a2, ra
                  addi         a5, s9, 675
                  and          s8, s6, a2
                  auipc        a0, 483222
                  sltu         gp, s1, s10
217:              ori          s7, a6, 861
                  bne          gp, a6, 233f
                  auipc        s0, 891133
                  bltu         s5, s4, 228f
                  nop
                  and          t2, sp, s6
                  xor          s3, t0, t6
224:              add          sp, t0, s1
                  andi         s0, s4, 24
                  blt          s1, s7, 236f
                  xori         t1, s5, -228
228:              sll          a6, s8, zero
                  and          s9, s3, s6
                  sra          t5, t5, s3
                  sub          s11, s2, a2
                  or           sp, s10, s2
233:              srai         ra, tp, 5
                  srli         a0, s10, 18
                  xori         s5, a1, 728
236:              beq          t0, gp, 247f
                  slli         s9, zero, 21
                  sra          s0, s2, a6
                  ori          s0, t4, -1789
                  and          s0, s3, t3
                  andi         tp, s5, 1205
                  srai         tp, s6, 21
                  bne          s8, s3, 249f
                  sub          a7, s9, s8
                  blt          s2, s2, 251f
                  ori          s4, a4, 1958
247:              or           s4, t0, s3
                  sub          a5, s2, t2
249:              ori          sp, s1, -840
                  slt          s5, a4, s0
251:              ori          s11, t5, -334
                  bne          tp, t2, 272f
                  sltu         s11, t1, a4
                  auipc        s3, 140629
                  srli         a7, t4, 30
                  lui          a2, 129302
                  nop
                  addi         tp, t0, 1544
                  add          s2, t0, s11
                  slt          a5, s9, s3
                  andi         tp, tp, -317
                  lui          s5, 963972
                  and          gp, tp, a0
                  bge          t5, a2, 273f
                  ori          ra, a7, 2010
                  sltiu        s9, s7, -2042
                  bgeu         t6, s7, 278f
                  beq          gp, a6, 274f
                  sll          ra, t5, a3
                  slli         a1, zero, 7
                  ori          t4, ra, 1814
272:              srl          s1, a1, t5
273:              sll          t4, t2, t6
274:              srl          t5, t5, s3
                  sra          sp, t0, s3
                  bgeu         a6, t4, 294f
                  srli         ra, t1, 30
278:              slli         gp, a7, 18
                  addi         s7, t6, 1258
                  bge          a2, s6, 284f
                  bltu         a5, s11, 297f
                  or           tp, s10, a0
                  slti         t4, s11, 1364
284:              sltiu        gp, s8, 905
                  sltu         sp, a2, s8
                  sra          a4, a4, s1
                  bne          t6, gp, 306f
                  sra          a1, t6, t4
                  sub          ra, gp, a3
                  srai         s1, a1, 11
                  add          a1, s7, s4
                  bltu         a5, tp, 307f
                  nop
294:              sltiu        zero, t0, 12
                  sltu         t6, a3, a6
                  bge          t6, s7, 298f
297:              blt          s9, a5, 303f
298:              sltiu        t5, s7, -1590
                  ori          s8, zero, -1600
                  sub          s3, s10, t5
                  nop
                  bgeu         s9, s4, 309f
303:              andi         s9, a5, 722
                  add          a0, s9, s2
                  andi         t5, t2, 445
306:              ori          s2, s2, 215
307:              bltu         t4, s6, 308f
308:              and          s11, a2, zero
309:              sltiu        s9, a5, 939
                  slli         s0, a1, 9
                  and          a0, s7, a4
                  sltu         a7, a2, a3
                  addi         a3, t3, 1512
                  xor          a3, t5, a1
                  addi         t1, a3, -1524
                  xor          s5, s1, s11
                  srli         ra, t2, 29
                  sltiu        a4, t1, -1788
                  and          t2, a5, a6
                  xori         a3, s2, 186
                  bne          s2, t6, 327f
                  srl          s6, s6, t4
                  beq          s11, s6, 331f
                  bgeu         s4, s6, 339f
                  slt          s2, s7, t5
                  addi         a0, s4, -249
327:              xori         a7, s10, 21
                  add          s3, s5, a7
                  addi         a5, a2, 1984
                  xori         t1, a5, 1109
331:              sll          t4, s8, s0
                  srli         t6, s6, 31
                  lui          s4, 767826
                  sltu         gp, t2, a7
                  slt          s8, zero, a7
                  add          s0, a6, a4
                  sltiu        a1, a1, -719
                  srai         zero, t5, 24
339:              sltu         s8, t0, s1
                  srli         s6, s4, 17
                  sll          gp, a3, a5
                  bltu         t0, a0, 358f
                  sltu         sp, tp, s7
                  slti         s1, t6, -49
                  sltiu        a4, zero, 613
                  or           sp, s11, s4
                  addi         a4, zero, -1105
                  sltiu        s11, gp, 544
                  add          a7, s3, a0
                  slli         s3, sp, 0
                  sltu         ra, s4, t4
                  sub          s8, s9, s8
                  xor          sp, a4, a4
                  beq          t1, t6, 373f
                  and          t4, a6, a4
                  bge          s8, s2, 376f
                  andi         s1, t2, 932
358:              add          s6, t5, t0
                  sltiu        a1, a5, -1538
                  ori          a3, t1, -824
                  xori         ra, s8, -209
                  slt          a4, tp, s6
                  sra          t6, s5, a3
                  andi         s6, tp, 806
                  sltiu        s9, s5, -165
                  or           a1, s1, t0
                  srai         s3, a7, 0
                  sltu         tp, t3, t4
                  andi         s9, a5, -63
                  xori         a0, a0, -1614
                  bne          s2, s7, 381f
                  srai         s7, t1, 6
373:              srli         a1, s3, 26
                  srai         tp, ra, 28
                  addi         s5, t0, 647
376:              xori         a2, s2, 864
                  bgeu         s2, gp, 379f
                  slt          t4, s3, a6
379:              or           ra, a7, s8
                  bltu         a3, a3, 388f
381:              ori          sp, s1, -204
                  slli         a3, t3, 7
                  sra          s1, s5, zero
                  auipc        a6, 446012
                  bltu         s0, t0, 395f
                  srli         a3, gp, 13
                  xor          s6, t5, t6
388:              xori         s5, s9, 1818
                  bltu         s2, s0, 404f
                  xor          s11, t2, a1
                  sltu         a3, a3, s0
                  ori          s2, s8, -1336
                  ori          a5, ra, -2022
                  auipc        a6, 227491
395:              sub          a2, a3, s1
                  addi         ra, a7, -1549
                  beq          a3, a3, 412f
                  or           s4, s2, tp
                  or           a1, s2, sp
                  addi         t2, t1, 1617
                  auipc        a0, 743345
                  and          t5, a0, s6
                  and          s0, s1, a3
404:              srai         zero, s7, 17
                  ori          t2, a6, -1039
                  andi         t1, a4, -767
                  bltu         a2, s2, 418f
                  lui          s4, 578508
                  sra          ra, s2, s9
                  nop
                  lui          a0, 529616
412:              sltiu        s8, s9, -1822
                  beq          a4, s0, 414f
414:              bgeu         s5, a1, 422f
                  add          a5, a6, a7
                  slli         sp, tp, 7
                  slli         a4, a1, 10
418:              bgeu         t1, s5, 433f
                  beq          s3, t0, 434f
                  add          a2, t5, s2
                  xor          t2, a5, a6
422:              bgeu         a7, sp, 428f
                  srli         s5, t0, 31
                  bne          sp, a7, 434f
                  xori         t1, a5, -978
                  blt          t5, a7, 432f
                  and          ra, t6, t4
428:              bgeu         s9, t2, 432f
                  sub          t6, s10, t0
                  sltiu        gp, s9, 1010
                  lui          s9, 146868
432:              sltu         s4, s4, t5
433:              and          s7, a1, a1
434:              bltu         t0, s6, 440f
                  slt          s6, s0, s10
                  andi         t4, a6, 1623
                  slti         t2, t2, 395
                  srli         s0, gp, 18
                  addi         a4, sp, -1481
440:              or           a6, a4, sp
                  sll          s1, ra, t3
                  and          t5, gp, s2
                  bltu         gp, s11, 461f
                  addi         s9, t0, -201
                  slt          s8, s10, s9
                  bltu         s7, zero, 457f
                  srli         s11, s0, 19
                  srai         s3, s11, 2
                  and          s8, s2, a4
                  add          a0, s7, gp
                  sll          s6, s10, t6
                  sltu         s2, t1, a4
                  bge          s3, t6, 468f
                  sltiu        s3, s0, -1066
                  sltiu        zero, t3, -750
                  bltu         a7, t5, 467f
457:              sub          s0, s6, s3
                  xori         a6, a0, -708
                  srli         s6, s4, 6
                  lui          gp, 192231
461:              srai         s4, s6, 25
                  bge          sp, a6, 468f
                  beq          gp, zero, 469f
                  slti         s3, t0, -1451
                  bne          s11, s3, 472f
                  sltiu        a2, t3, -881
467:              slli         s1, t6, 4
468:              or           a2, t1, ra
469:              bge          a2, t3, 479f
                  sltu         s3, a4, a4
                  nop
472:              sll          s8, t5, a0
                  bge          gp, s10, 484f
                  srl          a0, s7, t2
                  lui          sp, 448415
                  srli         a7, s8, 6
                  xor          s9, sp, zero
                  nop
479:              sltiu        t1, s3, 253
                  srai         tp, a4, 23
                  bltu         a1, sp, 484f
                  srai         zero, s11, 18
                  xor          t6, gp, a7
484:              sra          s11, s7, zero
                  srai         a5, t4, 18
                  or           s11, t6, s5
                  ori          s2, t6, 1087
                  or           s3, a0, a6
                  slt          gp, a7, a6
                  nop
                  srli         s1, t3, 31
                  sra          sp, s4, ra
                  lw           ra, 4(s10)
                  addi         s10, s10, 48
                  ori          s7, s7, 1314
                  slli         sp, t1, 4
642:              addi x17, x1, 0
642:              jalr x17, x17, 0
sub_6:            bgeu         t5, a5, sub_6_stack_p
                  andi         t6, t6, -1116
                  lui          s0, 649734
sub_6_stack_p:    addi         s10, s10, -28
                  sltu         a3, a4, s0
                  auipc        a2, 587980
                  or           t5, tp, s0
                  lui          a0, 380297
                  sw           ra, 4(s10)
                  lui          s8, 918053
                  slti         s4, a4, -1446
                  sltu         a1, s10, a6
                  sltu         s2, s1, a7
                  addi         s8, t4, -44
                  nop
sub_6_j9:         jal          ra, sub_8 #jump sub_6 -> sub_8
                  beq          s6, a5, 2f
                  auipc        ra, 131714
2:                bltu         a7, gp, 6f
                  blt          s6, a7, 4f
4:                blt          a1, a6, 6f
                  blt          a0, s9, 6f
6:                lui          s11, 253882
                  or           sp, s5, a5
                  lw           ra, 4(s10)
                  andi         s7, ra, 17
                  addi         s10, s10, 28
                  lui          s9, 620403
                  nop
                  xori         t6, t5, -1735
                  or           zero, t2, a4
                  xor          a7, s2, a1
                  nop
                  xori         s0, s0, -365
34:               addi x16, x1, 1
34:               jalr x16, x16, 0
sub_2:            slli         t5, t2, 1
                  bgeu         s1, gp, sub_2_stack_p
sub_2_stack_p:    addi         s10, s10, -20
                  sw           ra, 4(s10)
                  sll          a0, s8, ra
                  ori          s7, s1, -1412
                  la           sp, region_1+1264 #start riscv_load_store_rand_instr_stream_0
                  lb           a6, 87(sp)
                  lb           t6, -61(sp)
                  lbu          t1, 231(sp)
                  lbu          s0, 125(sp)
                  lhu          a4, -254(sp)
                  sb           zero, -119(sp)
                  lbu          s8, 45(sp)
                  addi         a6, s9, -738
                  lb           gp, 81(sp)
                  sll          t2, zero, t3
                  lw           s3, 68(sp)
                  lb           a7, -97(sp)
                  or           s3, t5, s6
                  sb           a3, 193(sp)
                  srai         s5, t5, 5
                  sb           a3, 134(sp)
                  lbu          a3, 126(sp)
                  lb           a4, -168(sp)
                  lb           t5, 156(sp)
                  srl          ra, sp, a2
                  lb           s0, 185(sp)
                  srl          a1, t5, s10
                  nop
                  lb           s5, -229(sp)
                  sltiu        t1, a4, 1355
                  lb           t1, 63(sp)
                  lh           a2, -34(sp)
                  lbu          s6, -201(sp)
                  lui          s1, 607371
                  nop
                  lh           s7, 68(sp)
                  sltu         s1, ra, a4
                  lhu          a1, 82(sp)
                  lhu          s11, -70(sp)
                  sb           s1, -2(sp)
                  sb           zero, 215(sp)
                  sll          ra, s8, a1
                  sra          s6, s10, t4
                  lbu          a5, -253(sp)
                  or           a7, ra, t3
                  lb           t2, 199(sp)
                  lb           gp, -63(sp) #end riscv_load_store_rand_instr_stream_0
                  sltiu        t5, s6, 516
                  slti         s6, t3, -543
                  bgeu         s2, t4, 20f
                  bge          s1, s4, 8f
                  auipc        t1, 426455
                  beq          zero, a5, 10f
                  slt          a2, t1, t1
                  sub          s7, a3, ra
8:                xor          s3, s6, t1
                  and          s11, t2, s6
10:               sll          a5, a0, s8
                  xori         s9, s0, -544
                  ori          gp, s8, 190
                  andi         a5, s4, 525
                  srai         a7, s10, 19
                  auipc        tp, 298671
                  andi         a7, t3, 1334
                  xor          t6, s10, t5
                  slli         s8, t4, 8
                  sll          s0, s10, s8
20:               and          a0, s1, ra
                  srl          s1, t5, s9
                  bne          zero, tp, 42f
                  sll          s5, sp, t5
                  add          t4, ra, zero
                  add          s7, s6, a7
                  slt          a5, a5, a5
                  srl          gp, t5, s0
                  xor          s11, t5, s0
                  and          tp, t6, s8
sub_2_j6:         jal          ra, sub_6 #jump sub_2 -> sub_6
                  lui          a7, 1014392
                  add          t1, gp, a1
                  srli         a1, a4, 3
                  bge          a3, t6, 29f
                  andi         s7, gp, 724
                  sltiu        a6, a0, -3
29:               andi         gp, ra, 510
                  add          a3, s1, s4
                  xor          a6, a2, a7
                  sra          t5, s6, s6
                  blt          t0, gp, 48f
                  srli         s0, t5, 1
                  srli         s3, s11, 10
                  add          s9, sp, s4
                  nop
                  sltiu        t5, s1, 1321
                  bgeu         s6, t0, 52f
                  sra          t1, s6, zero
                  and          a3, s10, s9
42:               or           a6, sp, s2
                  beq          s5, s10, 46f
                  sra          s3, a3, ra
                  bge          s8, s7, 54f
46:               nop
                  sltiu        a1, gp, -1875
48:               xor          a3, t6, ra
                  slt          a7, a5, s1
                  bgeu         a5, a1, 64f
                  sltu         a2, s11, a2
52:               beq          s9, s10, 62f
                  nop
54:               auipc        t6, 597456
                  blt          s6, t5, 63f
                  srl          s8, gp, a3
                  slt          a5, t0, t0
                  sll          tp, t4, gp
                  slti         s1, sp, -811
                  sub          gp, gp, s0
                  sub          t5, s9, s4
62:               bgeu         s2, s8, 82f
63:               srai         s6, s7, 0
64:               sltiu        a7, s2, 1223
                  srai         ra, sp, 11
                  bge          s4, s6, 80f
                  srai         t1, a0, 8
                  sll          s4, a5, s3
                  sub          s8, t2, tp
                  sltiu        t2, sp, 1269
                  blt          s11, t6, 88f
                  bltu         s10, t1, 80f
                  slt          s3, a7, tp
                  srli         s7, s3, 27
                  blt          s10, gp, 79f
                  slt          s5, s10, a0
                  ori          t6, s4, 0
                  sub          t6, s3, s4
79:               andi         a2, s6, 1353
80:               sltu         s6, s3, a0
                  and          t1, sp, s5
82:               lui          s8, 307629
                  bltu         s5, s8, 100f
                  bne          zero, s6, 98f
                  srl          s2, s2, s4
                  add          ra, t1, s11
                  ori          tp, a4, -452
88:               slli         a0, s2, 27
                  sra          s11, tp, s1
                  beq          a3, s3, 103f
                  srli         t2, t2, 13
                  bne          t0, gp, 105f
                  srl          s4, a5, s0
                  bgeu         s11, t4, 95f
95:               bne          s6, s11, 101f
                  srl          t6, t0, gp
                  xori         a7, a2, -1026
98:               srai         t6, ra, 4
                  slli         zero, s8, 5
100:              addi         s7, zero, -1076
101:              ori          t6, t3, -1984
                  bgeu         s4, s8, 117f
103:              nop
                  srli         tp, t1, 18
105:              ori          a3, s8, -947
                  andi         s8, a0, 183
                  nop
                  sra          s4, s9, t2
                  and          t1, ra, s1
                  addi         s4, a0, 1608
                  slti         s5, zero, -1514
                  sll          s11, s7, zero
                  xor          s8, s0, s10
                  bltu         a7, s3, 126f
                  addi         s8, a6, -1607
                  sltu         ra, sp, s10
117:              sll          a3, s1, t3
                  sra          t5, t5, a0
                  slti         s7, t1, -1914
                  blt          t1, a7, 138f
                  blt          a4, t1, 122f
122:              bne          t6, t2, 136f
                  slt          a4, t3, t6
                  xor          s4, t6, t5
                  or           t4, s0, a2
126:              sltiu        a6, s9, -1649
                  or           a4, t4, s5
                  srl          a3, tp, t1
                  srl          a7, a1, s7
                  srl          a1, a3, s2
                  beq          s3, a2, 132f
132:              xor          a7, gp, s2
                  sll          sp, s7, s0
                  add          a6, t6, s4
                  and          s4, ra, ra
136:              bltu         t2, s4, 138f
                  srl          a4, t3, gp
138:              add          s5, t1, a7
                  nop
                  lw           ra, 4(s10)
                  nop
                  sltu         s8, a1, sp
                  sltu         s9, s3, a6
                  xori         s6, s2, 495
                  addi         s10, s10, 20
                  addi         a2, s7, -1655
                  srli         t1, s2, 31
                  srai         s0, s4, 17
                  andi         a6, s6, -1316
207:              addi x17, x1, 1
207:              jalr x17, x17, 0
sub_10:           srli         t5, tp, 15
                  addi         s10, s10, -28
                  sw           ra, 4(s10)
                  or           s9, ra, ra
                  addi         a7, t1, -1722
                  xor          a2, t1, gp
                  bne          s6, s1, 6f
                  blt          s9, s6, 3f
3:                slli         t1, s5, 20
                  sltiu        s9, s9, 1536
                  bge          s10, s11, 12f
6:                srli         ra, s0, 29
                  srli         gp, s11, 23
                  auipc        s9, 346581
                  sra          ra, t6, ra
                  and          a5, gp, gp
                  add          s2, a7, s3
12:               ori          a0, t3, -64
                  srli         a0, t6, 31
                  nop
                  and          a5, s0, t5
                  lw           ra, 4(s10)
                  addi         a6, a4, -1880
                  sltiu        a5, a5, -999
                  addi         s10, s10, 28
                  srl          t6, t5, s10
                  sltu         t1, s5, a2
27:               addi x14, x1, 0
27:               jalr x14, x14, 0
sub_7:            xori         s0, sp, -921
                  slli         t5, s3, 11
                  ori          s0, a4, 663
                  slt          a2, a6, zero
                  bge          t4, s1, sub_7_stack_p
                  and          s0, t2, ra
                  sra          t5, t0, s3
                  srli         a2, s7, 30
sub_7_stack_p:    addi         s10, s10, -60
                  and          a2, t5, s4
                  slli         s2, sp, 14
                  sw           ra, 4(s10)
                  xori         s2, s5, -1716
                  la           a1, region_1+1397 #start riscv_load_store_rand_instr_stream_5
                  srli         s1, zero, 19
                  lb           gp, 109(a1)
                  lh           t6, -89(a1)
                  lh           gp, 47(a1)
                  sh           s8, 159(a1)
                  lbu          a2, -228(a1)
                  and          a4, t5, s7
                  lbu          zero, -61(a1)
                  sb           s8, -123(a1)
                  sltu         tp, t3, t5
                  xori         ra, t3, -320
                  or           a6, a2, a6
                  andi         ra, a6, 1732
                  or           s7, s0, a0
                  xor          t1, t4, t5
                  sltu         tp, zero, s11
                  ori          tp, t5, -1163
                  lbu          zero, 51(a1)
                  sb           t5, -50(a1)
                  sh           s5, 61(a1)
                  and          s7, t1, s1
                  sll          t4, a2, s0
                  and          s1, zero, t5
                  lh           t6, 249(a1)
                  sb           a5, 36(a1)
                  lb           ra, -132(a1)
                  srli         s5, a3, 17
                  sltu         t4, s11, s7
                  srl          s4, a2, t4
                  lbu          a7, -67(a1)
                  sb           s6, -22(a1)
                  lbu          a0, 118(a1)
                  xor          s7, a1, a2
                  lb           t4, -176(a1)
                  lh           t4, 195(a1)
                  lb           s4, 17(a1)
                  slt          s8, zero, a4
                  slli         s2, ra, 5
                  sb           s4, -10(a1) #end riscv_load_store_rand_instr_stream_5
                  la           s3, region_0+216 #start riscv_load_store_rand_instr_stream_0
                  lb           s1, 49(s3)
                  xor          t4, s0, sp
                  sb           ra, 553(s3)
                  lbu          s6, 1765(s3)
                  lbu          a2, -121(s3)
                  add          s8, a0, t6
                  lb           ra, 636(s3)
                  srl          t5, t2, t4
                  sra          ra, a0, gp
                  sb           t2, 537(s3)
                  lhu          a6, 1438(s3)
                  sra          zero, s6, s8
                  sb           a1, 1633(s3)
                  slti         a3, a2, -592
                  lb           a0, 843(s3)
                  srai         ra, s9, 19
                  lui          gp, 191111
                  add          s0, s3, t6
                  andi         t5, t5, -1153
                  andi         gp, s10, -132
                  or           t4, s1, t4
                  srli         t1, a0, 0
                  sub          s5, s9, s8
                  or           a2, s3, s5
                  slli         ra, tp, 27
                  srl          t5, t0, sp
                  lbu          tp, 259(s3)
                  andi         a4, zero, -1548
                  nop
                  xor          s11, s11, zero
                  lui          a7, 833703
                  ori          gp, a1, 370
                  nop
                  srli         ra, t4, 11
                  srl          t4, s10, sp
                  srai         a5, s4, 30
                  srli         s11, s0, 10
                  slti         ra, s1, -830
                  srl          ra, a3, a6
                  ori          a6, a4, -901
                  lb           a6, 1219(s3) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_0+30 #start riscv_load_store_rand_instr_stream_2
                  lb           a5, 81(t1)
                  sb           a1, 187(t1)
                  lh           s0, 164(t1)
                  sb           s10, 223(t1)
                  add          t2, sp, zero
                  add          s3, tp, s9
                  sb           t2, 65(t1)
                  or           s3, a2, t3
                  lhu          s2, 86(t1)
                  lbu          ra, 20(t1)
                  add          a4, a6, s10
                  sll          zero, s0, a0
                  lh           gp, 124(t1)
                  nop
                  lb           s3, 231(t1)
                  sb           s3, 132(t1)
                  sb           zero, 84(t1)
                  nop
                  xori         a6, s10, 1434
                  srai         sp, s0, 21
                  sb           t3, 239(t1)
                  srli         s1, gp, 0
                  srai         gp, s1, 13
                  lb           s6, 228(t1)
                  sb           s2, 69(t1)
                  lui          s11, 15158
                  sh           s5, 26(t1)
                  and          s11, a1, tp
                  sub          gp, t1, a5
                  slti         s2, a0, 13
                  sb           s5, 172(t1)
                  andi         t4, s5, -105
                  lhu          a1, 106(t1)
                  lb           a1, 179(t1)
                  lb           s8, 21(t1) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1998 #start riscv_load_store_rand_instr_stream_4
                  sub          t2, a5, s6
                  lb           a1, -24(sp)
                  sb           s2, -75(sp)
                  slt          a4, sp, a5
                  lbu          s8, -9(sp)
                  or           ra, s3, s4
                  add          s0, sp, a3
                  sb           gp, -175(sp)
                  lhu          s6, -100(sp)
                  srai         gp, ra, 30
                  slli         t1, t5, 16
                  sub          s3, a5, s7
                  lbu          t2, -217(sp)
                  sb           zero, -137(sp)
                  xor          gp, s10, a1
                  sltu         ra, s2, s0
                  sb           s5, -81(sp)
                  lui          t1, 1034570
                  slti         tp, gp, 56
                  or           s2, s10, a7
                  lhu          s5, -124(sp)
                  xor          t5, a2, t0
                  lui          a5, 1010458
                  lhu          t6, -12(sp)
                  sll          tp, a0, a5
                  addi         ra, s3, -1403
                  nop
                  andi         t5, s5, 1396
                  sb           a0, -201(sp)
                  sb           t5, -127(sp)
                  sltu         s9, a7, a5
                  lb           a4, -125(sp)
                  lb           s0, -63(sp)
                  sb           s2, -147(sp)
                  lb           s9, -84(sp) #end riscv_load_store_rand_instr_stream_4
                  bne          t6, t6, 11f
                  slli         s11, s3, 29
                  blt          s0, t0, 9f
                  bge          t6, a7, 20f
                  add          s3, a5, s9
                  auipc        s0, 1038654
                  bltu         a5, a5, 19f
                  slt          zero, s4, s3
                  or           s2, s4, s10
9:                bgeu         s7, a6, 16f
                  bge          tp, ra, 18f
11:               xori         tp, s10, -893
                  sll          s7, s11, t4
                  sra          s6, s4, t5
                  addi         a1, ra, 1351
                  and          t2, s11, s5
16:               ori          s3, a1, -892
                  xor          a5, gp, t5
18:               beq          t3, a4, 20f
19:               sltiu        a6, s9, 826
20:               srli         s6, tp, 9
                  lui          s9, 876553
                  andi         s4, tp, 1524
                  slli         s3, s1, 1
                  nop
                  sltu         s7, zero, zero
                  sub          t1, a1, s1
                  xori         t1, a2, -1821
                  slt          s4, s8, a4
                  addi         gp, a0, -15
                  srai         a6, a4, 9
                  xori         s0, s5, -1815
                  srli         t4, a7, 4
                  bne          t5, t2, 46f
                  bne          gp, a0, 50f
                  sltu         ra, s6, a5
                  bgeu         s9, a4, 50f
                  sltu         t6, t1, a6
                  sltiu        t4, a5, 181
                  srl          a3, t5, s2
                  srl          a5, a1, s11
                  or           tp, sp, sp
                  srai         s4, s0, 4
                  bgeu         zero, ra, 48f
                  srai         t1, s9, 25
                  nop
46:               nop
                  srl          t1, a4, tp
48:               srli         a2, t2, 18
                  or           sp, s3, t5
50:               bgeu         sp, a3, 64f
                  auipc        s11, 814996
                  add          a2, s8, a4
                  sub          s3, ra, s8
                  srli         a5, a2, 26
                  beq          s7, a1, 67f
                  srai         t6, tp, 28
                  add          t2, a0, s7
                  and          a3, s5, s6
                  slli         gp, t4, 27
                  bne          s7, s11, 61f
61:               bne          s7, s10, 80f
                  and          s9, a5, t4
                  bge          t2, a6, 82f
64:               bge          a6, tp, 70f
                  srai         s6, s5, 20
                  and          s3, a1, s5
67:               srl          ra, s4, t2
                  andi         s9, zero, 46
                  auipc        sp, 503207
70:               sltiu        s4, a7, -2014
                  slti         s2, a4, 1224
                  xor          a3, s3, a3
                  sub          s5, ra, s4
                  xori         s1, a1, -1296
                  blt          s8, s8, 82f
                  sub          t2, t3, gp
                  xor          t4, a5, ra
                  srl          s8, a4, s2
                  beq          t4, a6, 89f
                  slli         a3, s9, 6
                  la           t6, sub_8
                  addi         t6, t6, -173
                  sra          s6, s3, s7
                  sll          s0, t5, a5
                  or           a1, t5, a1
                  srai         t1, t3, 20
                  sub          tp, s2, s7
                  bge          t2, ra, sub_7_j10 #branch to jump instr
                  sll          s5, s1, s6
                  slti         a0, s10, 1422
                  slli         a7, t1, 7
                  srl          s1, s2, s2
sub_7_j10:        jalr         ra, t6, 174 #jump sub_7 -> sub_8
80:               srl          a5, s10, s10
                  beq          s11, a6, 92f
82:               sltiu        s2, a7, 49
                  xori         sp, a2, -591
                  nop
                  blt          a1, s5, 93f
                  xori         a4, t5, 1293
                  slt          s8, t4, gp
                  slti         s2, sp, -1985
89:               bge          a6, s2, 96f
                  bge          t1, t5, 94f
                  bltu         t3, t0, 97f
92:               sub          t2, t5, s6
93:               srai         sp, s1, 31
94:               ori          a4, a7, -61
                  xor          s9, a2, t3
96:               srli         tp, t4, 27
97:               add          t5, t5, gp
                  or           a2, s3, t4
                  andi         s4, s7, 1279
                  nop
                  or           gp, a1, ra
                  or           a7, zero, a5
                  addi         ra, a7, 381
                  auipc        s2, 348196
                  ori          a4, a1, -488
                  slti         a3, a6, -850
                  slt          a3, a6, sp
                  slt          s3, s3, s4
                  sltiu        t1, ra, -525
                  or           a5, a1, a6
                  slti         t5, zero, -1920
                  sltu         a0, t6, s7
                  srl          a3, a2, s2
                  and          t5, t5, t2
                  andi         s7, s0, -1088
                  sra          ra, s3, s0
                  srl          t6, s4, a1
                  addi         a4, s6, -743
                  sltiu        s4, t0, -1262
                  andi         t1, a4, 716
                  bne          t0, s8, 135f
                  bgeu         s3, s5, 130f
                  addi         a4, s0, 1596
                  xori         t1, a4, 1912
                  add          s0, t3, s1
                  bne          sp, a1, 139f
                  srai         a4, a7, 29
                  srl          a4, s0, t4
                  andi         s3, s9, -444
130:              slt          t5, a7, t0
                  and          s9, s3, gp
                  andi         s5, gp, -632
                  bne          a0, a7, 150f
                  addi         ra, tp, 299
135:              ori          a0, s8, -1205
                  sll          a0, t3, zero
                  bge          a6, t5, 152f
                  ori          a4, s11, 1491
139:              blt          a5, s9, 152f
                  ori          t5, a2, -135
                  blt          t6, t6, 154f
                  addi         a3, a6, 1101
                  sub          s11, sp, a0
                  slt          a0, zero, t3
                  beq          gp, t6, 159f
                  sll          s3, s2, ra
                  auipc        zero, 21454
                  slli         s7, a4, 23
                  blt          t6, a1, 162f
150:              slti         s9, t2, 396
                  addi         a4, s8, 5
152:              srli         s6, s5, 9
                  bne          s9, s8, 167f
154:              blt          a5, s3, 161f
                  srai         a3, t6, 22
                  addi         t5, a6, 1724
                  and          a2, sp, a2
                  srli         sp, s1, 19
159:              addi         s0, s7, -1622
                  bge          a7, zero, 171f
161:              sltiu        t1, t4, -2010
162:              addi         t1, ra, 885
                  sub          a5, s10, s11
                  xor          s5, a1, s5
                  bgeu         s8, a0, 184f
                  sltiu        s5, a5, -774
167:              slli         s9, a7, 17
                  slti         t5, t6, 1988
                  lui          a2, 1010971
                  sll          t4, ra, s7
171:              bgeu         t0, s11, 175f
                  bgeu         s8, a3, 178f
                  slli         a5, t6, 26
                  auipc        a4, 204129
175:              sll          a4, s7, s8
                  xori         zero, t5, 309
                  blt          s4, t2, 184f
178:              bgeu         s9, s6, 191f
                  sub          a1, a5, a6
                  auipc        s0, 437139
                  sub          a2, s6, s1
                  la           sp, region_0+506 #start riscv_load_store_rand_instr_stream_1
                  sltu         s8, s0, tp
                  auipc        a6, 460359
                  sh           tp, -14(sp)
                  lb           a3, -14(sp)
                  lui          tp, 607355
                  slti         s6, a4, 1799
                  lb           s5, 15(sp)
                  slti         gp, ra, -939
                  lbu          a7, -5(sp)
                  lw           gp, -6(sp)
                  nop
                  lb           s5, 4(sp)
                  lb           t2, -14(sp)
                  slli         t6, s3, 27
                  slli         a1, s2, 1
                  sll          s9, a7, a4
                  lhu          s5, 16(sp)
                  sll          s7, zero, t5
                  srai         a5, t1, 28
                  sb           a0, 3(sp)
                  add          s7, t2, t3
                  lh           tp, 16(sp)
                  srl          t5, s1, ra
                  sh           s1, 14(sp)
                  sb           s10, -11(sp)
                  lbu          a7, 6(sp)
                  andi         tp, s5, 1212
                  lb           s4, -2(sp)
                  sub          s6, t3, zero
                  sw           t3, -10(sp)
                  sb           a1, 5(sp)
                  lhu          s2, -10(sp)
                  sb           a0, 2(sp)
                  sh           tp, -6(sp)
                  sb           tp, 15(sp)
                  and          s5, a5, a0
                  auipc        s1, 515129
                  sb           a5, 15(sp)
                  sh           s7, 16(sp)
                  lb           t2, -13(sp)
                  srai         a6, a0, 23
                  lui          a3, 743383
                  sb           zero, -3(sp)
                  lui          a3, 367684
                  lh           s8, -6(sp)
                  andi         t1, s6, 709
                  lh           t4, 2(sp)
                  lb           a5, 0(sp) #end riscv_load_store_rand_instr_stream_1
                  auipc        a1, 465593
                  and          s1, s5, s9
184:              bltu         t0, a5, 198f
                  sltu         s5, a7, t3
                  srli         a0, t0, 14
                  srai         s7, a1, 16
                  sltu         t4, zero, t1
                  sra          t1, a2, a3
                  add          a6, s0, s8
191:              srli         s5, s1, 8
                  lui          s9, 972045
                  xor          gp, s7, t2
                  srli         a7, a5, 17
                  xori         a2, a1, 566
                  sltu         t4, s11, tp
                  ori          t5, a0, 1999
198:              and          a6, a5, gp
                  sra          a0, t4, t6
                  ori          zero, a5, 1761
                  xor          a7, a5, a2
                  and          s11, s8, s7
                  sltiu        t5, ra, -1150
                  xor          a7, t2, t3
                  slli         s6, a4, 31
                  auipc        zero, 860613
                  lui          s8, 151517
                  sub          zero, t1, s6
                  lui          a1, 524269
                  bltu         a6, s6, 211f
211:              addi         t5, s8, -808
                  bgeu         s2, s8, 219f
                  sll          a5, s2, s6
                  nop
                  bge          t1, s6, 227f
                  and          t5, a0, s5
                  xori         s8, s4, -1714
                  auipc        t5, 716782
219:              srli         s6, gp, 13
                  sltiu        s3, s0, 2018
                  beq          s7, t3, 229f
                  sra          t6, s8, s8
                  sra          s0, a6, s6
                  and          zero, t2, s4
                  sll          t2, s5, s9
                  srai         s4, t2, 24
227:              sltiu        a5, t3, 1943
                  andi         a5, s6, -1380
229:              bne          a5, a1, 231f
                  nop
231:              slli         s0, s2, 3
                  sltu         sp, a4, s9
                  srl          a1, a6, a0
                  srai         s3, t5, 15
                  or           s11, a4, gp
                  ori          t1, gp, 1347
                  addi         s9, s11, -1071
                  bne          s5, t4, 243f
                  auipc        ra, 344314
                  srl          a4, s10, s4
                  bge          t0, s10, 260f
                  bne          s3, s5, 250f
243:              xor          s1, s11, a3
                  auipc        s8, 20286
                  andi         s8, s4, -1858
                  beq          s10, t4, 256f
                  xor          a1, t1, s2
                  bne          s6, s1, 265f
                  slti         s0, zero, -1333
250:              srl          s11, a0, s3
                  xor          gp, a6, t0
                  sll          tp, s8, a1
                  or           s0, a3, s5
                  sub          ra, s10, ra
                  sra          sp, s9, s5
256:              sltiu        t4, t6, -1627
                  sub          a6, t3, zero
                  sub          s6, a3, a7
                  slli         s0, tp, 11
260:              sll          s2, s9, s2
                  slti         a5, s6, -1227
                  andi         s0, s2, -561
                  nop
                  slli         a7, s11, 1
265:              and          t4, s8, s2
                  nop
                  blt          a3, t4, 284f
                  slt          tp, s5, t0
                  auipc        s9, 762182
                  sub          s7, t0, s3
                  andi         t4, a4, -1220
                  sra          zero, a4, t6
                  la           t1, region_1+1298 #start riscv_load_store_rand_instr_stream_3
                  slt          s2, a0, s7
                  lb           s9, -17(t1)
                  lb           t6, -231(t1)
                  lb           s1, -208(t1)
                  lbu          a7, -85(t1)
                  lb           zero, -229(t1)
                  sh           s3, 188(t1)
                  lui          a5, 941620
                  or           t6, a5, s1
                  lbu          t6, -227(t1)
                  lbu          s5, -113(t1)
                  sh           t3, 40(t1)
                  sb           s9, -86(t1)
                  lbu          s2, -107(t1)
                  auipc        tp, 61758
                  sb           t4, -159(t1)
                  lh           a7, -208(t1)
                  lbu          a7, 103(t1)
                  andi         s2, a2, -63
                  sll          s8, t4, t0
                  or           s0, s1, s10
                  sub          s6, s1, a3
                  sub          gp, sp, a4
                  sb           s5, 4(t1)
                  sb           s6, -25(t1)
                  lh           a6, -28(t1)
                  sh           a1, -30(t1)
                  srli         tp, t6, 2
                  lbu          t6, 85(t1)
                  lb           a4, 92(t1)
                  lb           a3, -123(t1)
                  lui          t5, 442269
                  and          t6, sp, t0
                  lbu          s1, -219(t1)
                  lh           s5, 80(t1)
                  lbu          s4, -147(t1) #end riscv_load_store_rand_instr_stream_3
                  sltu         a2, s11, t3
                  addi         t2, gp, -334
                  srli         sp, s11, 15
                  srai         a5, s9, 15
                  sll          s1, s4, a6
                  slti         s9, s4, 779
                  blt          s1, t5, 286f
                  xori         gp, s9, 1472
                  bne          a6, tp, 297f
                  srai         t6, t4, 20
                  slli         t1, s3, 4
284:              sra          zero, a4, t3
                  srai         s1, t1, 21
286:              and          s7, t3, a2
                  sra          t2, s6, a6
                  xori         ra, sp, -1131
                  srai         t4, s4, 1
                  bltu         s4, t4, 301f
                  bne          a6, tp, 299f
                  bgeu         s4, a3, 307f
                  sra          a4, t4, tp
                  bge          zero, s10, 307f
                  srli         t5, a3, 10
                  bltu         s8, s1, 302f
297:              blt          a6, a4, 303f
                  slti         s9, ra, -19
299:              ori          a3, s6, 1424
                  bltu         a1, t3, 316f
301:              or           a6, s2, s9
302:              sub          a7, tp, a0
303:              sll          ra, a0, a6
                  srai         a0, a5, 29
                  sra          a1, s1, t4
                  sub          sp, a6, s1
307:              sltu         t5, tp, t1
                  bltu         s11, s9, 316f
                  auipc        t1, 380489
                  addi         a6, t0, 970
                  sltu         s7, a4, s3
                  nop
                  add          s4, s8, t6
                  sll          a7, a7, s10
                  bgeu         s2, s9, 325f
316:              bge          a4, s11, 330f
                  or           a7, s9, tp
                  auipc        tp, 975594
                  sra          ra, s10, t0
                  slt          t4, t4, sp
                  addi         gp, a4, -1933
                  slti         a6, a7, 1787
                  andi         s2, a1, -659
                  andi         s8, t5, 1547
325:              srli         a3, a5, 5
                  addi         s5, s5, 638
                  blt          s6, sp, 333f
                  andi         zero, a6, -1503
                  nop
330:              xori         tp, a2, -1213
                  sll          s2, zero, s3
                  bge          s11, s0, 334f
333:              sub          s2, s7, t4
334:              andi         tp, gp, -943
                  sltu         s7, s5, t0
                  slli         s7, s6, 23
                  blt          zero, a0, 351f
                  auipc        s5, 901937
                  auipc        s7, 377944
                  slti         ra, s4, -1296
                  bgeu         sp, t0, 356f
                  srai         sp, s3, 11
                  slti         a3, s5, -1196
                  nop
                  andi         s8, gp, -1096
                  nop
                  and          t1, t0, s2
                  bne          a6, tp, 362f
                  bge          t2, a0, 357f
                  beq          t6, s4, 361f
351:              ori          s4, s9, 1782
                  lui          s8, 302551
                  slt          s11, a7, s1
                  nop
                  blt          s0, s4, 366f
356:              beq          ra, s8, 369f
357:              addi         a7, s1, -375
                  auipc        tp, 786369
                  ori          t2, a4, -1475
                  slli         a3, a6, 17
361:              sltiu        tp, t4, 1955
362:              bltu         a0, t0, 381f
                  sra          s4, sp, t1
                  sltiu        s6, s3, -734
                  sub          s6, t1, t6
366:              sll          s4, t2, s6
                  lui          sp, 453338
                  xori         a4, ra, 649
369:              addi         tp, zero, -726
                  bge          t6, s1, 387f
                  sll          a0, s3, a6
                  addi         ra, s6, -585
                  auipc        s7, 860053
                  sltiu        t4, s3, -1206
                  nop
                  srai         s1, s5, 21
                  andi         a0, s6, 27
                  add          a7, s2, s4
                  sub          s7, s1, a4
                  slti         t6, s3, -1181
381:              bge          t0, s0, 388f
                  bgeu         a1, t1, 387f
                  srli         a3, a2, 7
                  addi         a1, s9, -812
                  add          gp, s10, zero
                  sub          a1, s2, a6
387:              sll          s9, s4, gp
388:              auipc        s5, 717799
                  beq          s4, gp, 401f
                  nop
                  sll          a3, s0, s0
                  sub          s3, s8, ra
                  lui          s7, 676054
                  andi         a5, a3, 677
                  or           t4, a0, s9
                  auipc        t1, 582000
                  sub          s5, s9, t4
                  bge          s3, t5, 417f
                  slli         s11, ra, 12
                  blt          s5, a0, 413f
401:              and          s1, s9, a7
                  bge          t1, a2, 403f
403:              sub          s6, s4, s3
                  nop
                  or           s9, a2, s1
                  sll          tp, t3, s8
                  srli         s1, t3, 3
                  bgeu         s10, s6, 416f
                  addi         s9, zero, -499
                  slli         t2, ra, 10
                  lui          zero, 358785
                  bne          s0, a6, 429f
413:              slt          s5, s8, a3
                  slti         a5, s4, 1502
                  srai         a3, a0, 22
416:              sll          t2, s10, s2
417:              xori         a7, t6, 1151
                  auipc        s6, 31138
                  sra          s11, ra, s6
                  or           a1, s10, a1
                  xori         t6, a7, -172
                  add          a2, zero, a4
                  sll          gp, s11, zero
                  bne          s0, t5, 428f
                  bgeu         s11, s6, 432f
                  slti         s8, t0, 924
                  ori          s11, t4, 1976
428:              sll          s3, s5, sp
429:              and          a2, a3, t0
                  sll          t1, t4, t2
                  sltiu        a6, t5, 1638
432:              auipc        s4, 590204
                  and          t6, sp, s11
                  srl          t4, a2, a2
                  srl          a7, a0, s8
                  and          s2, a1, t1
                  blt          a4, t3, 450f
                  xori         s6, t3, -1738
                  add          t5, s8, s1
                  slt          sp, t4, s0
                  slli         t1, t4, 23
                  sra          s0, s9, a7
                  xori         s0, s9, -1825
                  sub          tp, s6, a6
                  add          a0, sp, s4
                  sltiu        a5, tp, 1195
                  ori          a2, s5, 157
                  srai         s11, s11, 14
                  lui          a0, 391128
450:              and          t5, t5, gp
                  bgeu         s5, a2, 458f
                  blt          s5, gp, 459f
                  lui          s11, 772366
                  sltu         a0, t4, s4
                  xor          a1, t0, s6
                  sra          a6, sp, t1
                  ori          a7, a0, -941
458:              slli         s4, s9, 28
459:              or           s7, tp, zero
                  srl          s5, s10, t5
                  bltu         t2, s7, 474f
                  nop
                  sra          tp, t2, a1
                  slti         t1, t4, -1338
                  add          s4, s3, a5
                  srl          s2, t6, s9
                  srl          tp, s6, a0
                  srl          s2, s5, a5
                  slt          a3, a1, s2
                  xor          t2, t1, s9
                  auipc        s9, 907255
                  bne          s3, t2, 485f
                  or           s3, t0, t0
474:              ori          t4, ra, 241
                  bne          zero, a5, 489f
                  sra          s5, s6, a7
                  xor          a3, s9, s9
                  sll          s11, zero, s4
                  and          a0, t3, gp
                  beq          s1, a5, 481f
481:              bltu         s3, s6, 489f
                  blt          a7, ra, 496f
                  lui          s11, 1002889
                  srli         a0, a2, 31
485:              sub          s5, s6, s6
                  sltiu        t4, s11, 1837
                  srai         s5, s3, 21
                  nop
489:              sltiu        tp, s0, 1450
                  slli         s8, a1, 11
                  or           gp, ra, t0
                  bge          a6, s3, 498f
                  bgeu         s0, a2, 510f
                  beq          t6, a2, 504f
                  xori         t4, a2, -18
496:              srai         a4, a2, 25
                  bltu         t5, s1, 505f
498:              or           s0, a5, a1
                  srl          a5, a2, t5
                  bltu         zero, tp, 508f
                  and          zero, t6, s7
                  nop
                  beq          s0, a6, 507f
504:              slti         t5, a1, 526
505:              sltiu        t5, t3, 746
                  srli         sp, t6, 16
507:              srli         a7, a4, 26
508:              sra          t6, a3, t5
                  bge          a7, sp, 520f
510:              srai         s7, a5, 10
                  slt          t6, a2, a5
                  srai         s1, sp, 0
                  add          gp, a3, s10
                  xor          t5, s8, s3
                  sltu         a3, s7, s3
                  bgeu         a0, sp, 523f
                  sltiu        t2, a0, 756
                  sll          a0, t3, t5
                  sll          t2, s3, a6
520:              andi         t6, gp, 1751
                  auipc        t2, 388324
                  auipc        t6, 682087
523:              beq          s11, s6, 536f
                  sra          a0, a3, t6
                  sra          t5, zero, a4
                  ori          a5, a4, 1709
                  bltu         a5, s2, 533f
                  bge          a4, a1, 542f
                  addi         a3, a7, 1677
                  add          a4, a3, s6
                  sll          a7, s5, ra
                  xor          sp, a3, s8
533:              nop
                  sll          a1, s6, s5
                  bge          t2, s4, 548f
536:              andi         s2, s0, 1698
                  lui          s7, 496729
                  slt          s3, t3, t6
                  or           s7, tp, gp
                  srli         a0, tp, 11
                  slti         a4, t4, -18
542:              ori          a2, s7, 110
                  blt          a0, a7, 554f
                  lui          a1, 1036109
                  andi         a6, s7, 503
                  bne          sp, s4, 553f
                  sltu         s5, s3, a5
548:              slti         a1, a6, 25
                  srli         s11, ra, 30
                  xori         tp, s5, -153
                  addi         s4, t1, 35
                  slt          a0, t6, t2
553:              sra          a5, s4, s5
554:              sra          zero, gp, s11
                  sltiu        t1, s4, -252
                  srl          t2, s11, t5
                  slti         s2, a1, 1472
                  sub          gp, tp, ra
                  bgeu         zero, t2, 575f
                  slt          s0, t4, sp
                  slt          t4, t5, s11
                  and          sp, s1, s1
                  bne          t4, s3, 575f
                  addi         s3, a7, -59
                  slli         s1, s4, 10
                  slli         a2, a1, 25
                  sra          gp, s11, gp
                  slt          a2, ra, s2
                  srli         a0, s6, 21
                  sll          a5, s11, t3
                  beq          a3, t4, 586f
                  and          t1, t0, sp
                  or           t2, s11, s0
                  bne          a6, s8, 593f
575:              nop
                  sll          gp, zero, zero
                  xori         s7, s7, 706
                  xor          a0, a7, a5
                  xori         a0, a2, -1141
                  bltu         a7, a4, 593f
                  blt          tp, a0, 598f
                  addi         ra, tp, 380
                  sltiu        zero, s9, 391
                  slti         t2, t2, -1020
                  sra          s4, a1, s10
586:              srli         a5, s9, 20
                  ori          a3, a1, -398
                  srli         sp, t2, 10
                  and          a6, s0, t6
                  srli         a1, t1, 19
                  addi         a2, zero, 1891
                  sltu         a3, tp, a3
593:              slt          s1, a0, a3
                  ori          s2, s3, -1973
                  slti         t5, t5, -665
                  beq          t5, a3, 598f
                  srli         t5, ra, 16
598:              slti         a3, zero, 1743
                  slli         zero, sp, 19
                  sltu         zero, t6, t5
                  andi         a5, s11, 136
                  slt          a4, t4, a1
                  or           s8, s1, a3
                  sra          s0, s2, s6
                  bne          s10, a3, 612f
                  andi         a1, a0, -1119
                  add          a1, s11, tp
                  xori         tp, zero, -166
                  srai         a7, s3, 6
                  srai         s3, s9, 15
                  bltu         s7, s3, 630f
612:              lui          s1, 499587
                  and          t2, s11, a2
                  sltiu        a4, s6, 1379
                  lui          s3, 388462
                  lui          s7, 313145
                  slt          s5, s8, a4
                  bgeu         s0, a2, 623f
                  sub          s11, ra, a6
                  lui          s3, 1043511
                  bge          t2, s6, 628f
                  add          s4, a4, t1
623:              bltu         t5, s2, 640f
                  bge          t2, s1, 635f
                  sll          ra, a6, s8
                  slt          a0, zero, sp
                  slt          t2, s6, a5
628:              srli         a2, t4, 22
                  and          s0, s2, s1
630:              slt          s1, s0, a4
                  sll          s8, s7, a4
                  or           s6, s10, sp
                  srl          s8, ra, gp
                  or           s6, a2, s11
635:              and          gp, t2, t6
                  addi         t5, a6, -1997
                  slt          a2, a7, a3
                  bltu         gp, sp, 639f
639:              lui          t4, 188075
640:              sra          s6, s4, s10
                  addi         s7, s6, -1039
                  slt          t4, s6, a5
                  ori          a5, a7, 931
                  lui          a3, 265294
                  beq          ra, ra, 652f
                  blt          a0, a4, 660f
                  beq          s6, s5, 649f
                  lui          zero, 719055
649:              bltu         t3, s1, 663f
                  srai         s9, sp, 1
                  nop
652:              beq          s5, s0, 660f
                  bne          a3, a0, 672f
                  sub          a5, t6, zero
                  addi         t4, s6, 1657
                  sub          zero, t3, a3
                  srai         s1, s11, 27
                  add          s1, t4, gp
                  slti         s3, s11, -1301
660:              sub          tp, s5, ra
                  sltu         s4, t6, sp
                  lui          t1, 966789
663:              lui          ra, 583712
                  sll          t4, gp, s1
                  sra          sp, a6, s9
                  add          a5, s9, tp
                  addi         tp, a2, 583
                  andi         s7, s5, 287
                  or           s0, a4, a6
                  srl          s6, t3, a3
                  addi         a7, s2, 351
672:              slt          t6, s0, s0
                  sltu         t2, s3, a1
                  xor          s8, a5, a3
                  sltu         a0, a5, t4
                  bltu         t1, s0, 689f
                  bge          a4, a1, 693f
                  slti         sp, t4, 1516
                  bltu         s9, zero, 692f
                  auipc        ra, 872752
                  srai         a4, s4, 8
                  xor          a5, a6, s4
                  bltu         t5, s9, 694f
                  nop
                  sltiu        t6, t2, 1104
                  nop
                  and          a1, gp, a2
                  sltu         a1, s0, a2
689:              xori         t6, zero, 1890
                  and          gp, t0, s1
                  sltiu        ra, zero, -1972
692:              srl          ra, gp, t6
693:              andi         a7, s10, 1659
694:              and          t4, sp, a6
                  slt          a2, t3, t1
                  bne          a6, a7, 702f
                  bne          s4, a3, 703f
                  addi         t5, gp, -1184
                  srli         s6, a1, 19
                  bge          s9, s1, 713f
                  nop
702:              lui          a7, 176320
703:              srli         gp, s3, 28
                  sra          s1, s7, t2
                  sll          t5, s0, t1
                  or           s3, a3, gp
                  slt          s4, s7, a2
                  and          t2, s1, s0
                  beq          a6, s6, 724f
                  add          a7, t3, t5
                  addi         s11, ra, 1869
                  add          s9, gp, tp
713:              bne          a5, a3, 721f
                  slli         s9, t1, 9
                  blt          s8, sp, 732f
                  sra          t5, s4, sp
                  blt          a0, s4, 731f
                  srl          a0, a5, s2
                  xor          zero, a7, s8
                  slti         gp, s1, 1148
721:              auipc        s1, 3449
                  bne          zero, a7, 726f
                  sra          t2, s9, s7
724:              slli         a5, a0, 4
                  lui          a3, 977828
726:              xor          t6, t2, t5
                  slti         s0, a3, -1587
                  srl          a4, s4, a4
                  xor          a2, s4, sp
                  xor          a1, t2, s7
731:              srai         s1, ra, 2
732:              srai         a0, a5, 29
                  bgeu         s11, a4, 743f
                  srl          t2, a4, s6
                  slti         tp, t5, -862
                  ori          s6, s11, 481
                  sltiu        t1, t6, -1177
                  sub          ra, a2, s3
                  sub          s5, s2, tp
                  srli         t2, t4, 2
                  bgeu         s4, a5, 753f
                  nop
743:              slli         t5, s2, 10
                  blt          t6, a3, 751f
                  srli         s1, s5, 12
                  bltu         s10, a1, 753f
                  sub          s11, zero, a7
                  bge          t6, t6, 753f
                  or           a6, t1, t4
                  nop
751:              beq          ra, a2, 753f
                  sltiu        a2, a6, -2005
753:              slt          ra, a2, zero
                  and          s1, s5, t2
                  slt          s2, a6, t1
                  sltu         s0, s0, tp
                  slli         s3, s8, 4
                  lw           ra, 4(s10)
                  addi         s10, s10, 60
                  sltiu        a3, s4, 1882
                  sll          s5, a0, s5
1029:             addi x30, x1, 1
1029:             jalr x30, x30, 0
sub_3:            and          s5, s10, s5
                  srl          t4, tp, a2
                  beq          sp, s9, sub_3_stack_p
                  sub          s1, s6, t3
                  sltiu        s9, s2, -1472
                  sra          t6, t0, s9
                  srl          s3, t2, zero
                  ori          s9, a7, -740
sub_3_stack_p:    addi         s10, s10, -64
                  sw           ra, 4(s10)
                  auipc        a1, 676426
                  xor          s3, a7, s4
                  la           a1, region_1+1156 #start riscv_load_store_rand_instr_stream_3
                  srli         a3, t6, 10
                  lb           s0, -3(a1)
                  xor          s2, a4, t3
                  lh           zero, 8(a1)
                  sb           s4, -7(a1)
                  sb           a6, -13(a1)
                  lbu          gp, 14(a1)
                  lbu          a0, -15(a1)
                  nop
                  lui          s4, 646007
                  slti         s3, a0, -1808
                  sra          s3, tp, tp
                  auipc        a6, 409348
                  lb           tp, 9(a1)
                  sh           a7, -12(a1)
                  add          a6, t6, s1
                  add          a2, s1, a3
                  lui          a3, 414350
                  sb           s3, -15(a1)
                  lb           t6, -1(a1)
                  srai         s9, ra, 6
                  addi         s7, s3, 26
                  lh           t5, -14(a1)
                  lhu          s9, -14(a1)
                  lb           tp, 7(a1)
                  xori         a5, s3, -1367
                  slt          ra, s5, t4
                  srai         s2, a7, 12
                  lh           s7, 6(a1)
                  lbu          s3, 11(a1)
                  srai         zero, t6, 0
                  lb           a5, -1(a1)
                  and          t1, s8, t3
                  lw           ra, 4(a1)
                  ori          a7, s5, 1774
                  xor          gp, a5, t5
                  lbu          s0, -9(a1)
                  sb           tp, -1(a1)
                  nop
                  lh           a6, 16(a1)
                  lb           s9, 8(a1)
                  lb           zero, 5(a1)
                  sltiu        zero, s1, -405
                  srai         a7, tp, 0
                  lhu          a3, 0(a1)
                  addi         ra, t5, -1505
                  sb           a2, 3(a1) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+359 #start riscv_load_store_rand_instr_stream_1
                  lbu          zero, 5(sp)
                  srli         s7, tp, 2
                  sltu         s6, s0, a7
                  sw           a7, 21(sp)
                  sw           a0, 21(sp)
                  lbu          t4, -14(sp)
                  sra          t1, t6, a6
                  lh           gp, -55(sp)
                  srai         a4, s3, 9
                  auipc        a3, 489538
                  sh           t3, -37(sp)
                  lb           s11, 14(sp)
                  sb           tp, -50(sp)
                  and          s7, s7, tp
                  lb           a1, -37(sp)
                  lbu          s2, 18(sp)
                  sra          a5, t0, a3
                  sltiu        a3, s1, -1617
                  sb           s5, -50(sp)
                  lb           s1, -49(sp)
                  sll          t1, t3, a5
                  auipc        t2, 60794
                  lbu          a4, 16(sp)
                  lb           s4, -36(sp)
                  lb           ra, -29(sp)
                  sltu         gp, a3, s4
                  and          s8, a2, a7
                  sll          s7, t1, t2
                  lh           s0, 19(sp)
                  srli         s8, t4, 16
                  and          s5, t5, ra
                  srl          a0, gp, t6
                  lh           s8, -17(sp)
                  sltu         s3, ra, tp
                  slli         a1, t6, 12
                  lbu          a3, 17(sp)
                  ori          s11, s4, 569
                  ori          a1, t6, 825
                  lh           s5, 47(sp)
                  lbu          s8, -64(sp)
                  lbu          a3, 13(sp)
                  lb           s8, 12(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s8, region_1+917 #start riscv_load_store_rand_instr_stream_4
                  sb           s9, -62(s8)
                  lhu          t5, -41(s8)
                  lhu          t5, 17(s8)
                  srl          a2, ra, s3
                  sltiu        a0, s4, 227
                  srl          sp, t0, t2
                  lb           ra, -31(s8)
                  xor          gp, a7, a7
                  lb           s11, -43(s8)
                  lw           s6, -33(s8)
                  add          ra, t0, zero
                  lb           a5, -26(s8)
                  sltiu        s9, t3, 1555
                  lbu          t4, 28(s8)
                  srl          sp, zero, a3
                  lb           t5, -42(s8)
                  lb           t5, -2(s8)
                  sb           s7, 55(s8)
                  sltiu        a4, a0, 2001
                  lbu          t4, 48(s8)
                  sb           a4, -8(s8)
                  auipc        a7, 298974
                  sll          s4, t4, a4
                  andi         a0, t6, 1380
                  or           s11, s4, s11
                  lb           a5, 62(s8)
                  slt          s11, t0, s9
                  lb           ra, -38(s8) #end riscv_load_store_rand_instr_stream_4
                  la           a0, region_0+26 #start riscv_load_store_rand_instr_stream_0
                  sh           s2, 10(a0)
                  addi         s0, s0, -830
                  lhu          ra, 4(a0)
                  lh           s5, -6(a0)
                  or           s3, gp, s11
                  slli         a5, s6, 18
                  lb           s6, 7(a0)
                  xori         t1, gp, -2034
                  sltiu        a1, a3, -135
                  slli         a5, t3, 25
                  sltu         sp, s10, s0
                  add          gp, s9, a7
                  lb           sp, -14(a0)
                  sb           zero, -16(a0)
                  sltu         a1, s5, a6
                  lb           s2, -1(a0)
                  slt          a7, a7, s5
                  sb           t6, 7(a0)
                  sll          s0, s8, a5
                  sb           a2, 13(a0)
                  xor          s2, a5, a1
                  andi         a5, a5, 1964
                  lb           t4, 11(a0)
                  lb           a6, -11(a0)
                  sb           s3, 1(a0)
                  andi         t4, s2, 1844
                  slt          a4, s6, s7
                  ori          s6, sp, 1682
                  sb           t5, -11(a0)
                  lb           t6, -12(a0)
                  addi         s8, a6, 523
                  lhu          a7, 0(a0)
                  sub          a2, t2, t0
                  or           t6, s7, s8
                  sh           ra, 4(a0)
                  sb           a5, -5(a0)
                  sb           s9, 1(a0)
                  sb           s0, 11(a0)
                  lbu          s0, -9(a0)
                  xori         t6, s8, -1351
                  sltu         s2, s2, s9
                  lb           ra, 11(a0) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_0+1092 #start riscv_load_store_rand_instr_stream_2
                  lb           t1, -249(ra)
                  lb           a7, -65(ra)
                  lhu          a3, -220(ra)
                  lui          s6, 237263
                  lw           a7, 128(ra)
                  lb           a0, 28(ra)
                  lb           s3, -249(ra)
                  slt          t2, a4, a6
                  sb           ra, 83(ra)
                  lb           s5, -223(ra)
                  sb           s0, 179(ra)
                  sltu         t2, s3, a1
                  xor          s2, s11, sp
                  lb           s3, 52(ra)
                  lb           s2, 211(ra)
                  add          s9, a2, s5
                  add          s2, tp, t4
                  lbu          s1, 69(ra)
                  ori          a0, s1, 1796
                  lb           zero, -238(ra)
                  slli         sp, t4, 26
                  sb           tp, 100(ra)
                  slt          a0, t3, sp
                  lb           s9, -225(ra)
                  sb           a1, 46(ra)
                  srli         t5, t1, 23
                  andi         s11, s6, -591
                  lbu          t6, 121(ra) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_0+1089 #start riscv_load_store_rand_instr_stream_7
                  lb           a7, -51(s1)
                  sll          a6, a7, sp
                  sb           a4, 114(s1)
                  sb           s0, 125(s1)
                  or           zero, s2, tp
                  lb           s5, -155(s1)
                  lb           gp, -126(s1)
                  sltiu        a4, a5, -1533
                  lh           t2, -79(s1)
                  lb           ra, -110(s1)
                  add          a5, a4, a7
                  lb           t5, -144(s1)
                  sb           s11, -236(s1)
                  lui          t6, 652672
                  lhu          a7, -127(s1)
                  sb           t2, 210(s1)
                  lb           a6, 186(s1)
                  auipc        a6, 643689
                  lhu          t2, 7(s1)
                  lb           a5, 221(s1)
                  sb           s0, 34(s1)
                  lbu          a5, 186(s1)
                  lbu          s5, 177(s1)
                  nop
                  sub          t2, a2, t3
                  lbu          a4, 184(s1)
                  lb           t2, 163(s1)
                  lbu          gp, 25(s1)
                  srl          a4, a5, s8
                  add          a5, gp, s4
                  xori         ra, s4, 148
                  lw           t6, 43(s1)
                  lh           a0, -3(s1)
                  srl          a0, s7, a0
                  auipc        a2, 471622
                  sb           s1, 2(s1)
                  add          a7, a0, s10
                  add          s2, s4, s6
                  or           a7, s3, s5
                  lbu          s6, -190(s1)
                  lhu          s9, -111(s1) #end riscv_load_store_rand_instr_stream_7
                  la           s1, region_0+570 #start riscv_load_store_rand_instr_stream_5
                  sra          s7, sp, a5
                  sh           gp, 14(s1)
                  sh           s10, 14(s1)
                  lb           a3, -8(s1)
                  lbu          gp, 15(s1)
                  lbu          t1, -15(s1)
                  lbu          a5, -13(s1)
                  lbu          a0, -8(s1)
                  sltiu        sp, s2, 1481
                  sra          s11, a2, a7
                  lb           s5, 5(s1)
                  nop
                  and          gp, t3, s11
                  sb           t0, 12(s1)
                  sb           t0, -4(s1)
                  andi         s11, s8, 787
                  sb           ra, -1(s1)
                  sb           tp, -5(s1)
                  srl          tp, sp, s5
                  xori         s5, s5, -233
                  sh           zero, -4(s1)
                  lb           t2, 4(s1)
                  lb           ra, 15(s1)
                  lbu          s4, -1(s1)
                  sltiu        a3, t6, 2008
                  lbu          gp, 11(s1)
                  slti         s8, t6, 315
                  lbu          t5, 7(s1)
                  sw           t3, 2(s1)
                  sb           a1, -9(s1)
                  srai         s5, a0, 17
                  lbu          a4, 9(s1)
                  lb           ra, -11(s1)
                  lw           tp, -6(s1)
                  lh           s8, -10(s1)
                  slt          s2, t4, tp
                  sub          t5, a6, a5
                  lhu          s2, 16(s1)
                  sb           zero, 1(s1)
                  auipc        s2, 172792
                  lb           a2, -11(s1)
                  lb           s9, 15(s1) #end riscv_load_store_rand_instr_stream_5
                  ori          t5, gp, -1509
                  srli         a0, t1, 8
                  bne          s3, t5, 3f
3:                sra          s4, a2, s5
                  slli         zero, ra, 15
                  sltu         s2, t0, s6
                  ori          t2, t2, 1401
                  sra          a5, t3, t2
                  andi         a4, a3, 1084
                  addi         s7, a3, 1439
                  addi         s5, a6, 1780
                  sltu         a7, s9, a2
                  sub          sp, t0, s11
                  ori          a4, s2, 641
                  add          s8, ra, a7
                  sltiu        a5, s3, 1960
                  andi         zero, t2, -479
                  bge          a3, s9, 32f
                  srai         a6, s6, 15
                  bltu         s10, t4, 39f
                  slti         a0, a6, 1525
                  sub          a2, s8, t4
                  srai         t1, a3, 23
                  bltu         a6, s0, 42f
                  ori          t4, s5, 1136
                  nop
                  slti         t6, t3, 1283
                  add          a1, s4, s2
                  bge          a7, s4, 33f
                  slti         a4, sp, -1483
                  bgeu         a0, s6, 45f
                  beq          s0, t4, 35f
32:               andi         t6, t0, 1210
33:               slt          s7, a7, a4
                  srai         s4, t0, 24
35:               srli         s2, zero, 1
                  srli         s7, t0, 3
                  andi         s1, s3, 31
                  xori         s0, t2, -535
39:               slt          s9, a5, s10
                  srl          s6, s3, gp
                  sltu         a4, s1, tp
42:               sra          t5, a0, s10
                  auipc        a6, 765040
                  slti         ra, gp, -806
45:               srai         s7, t6, 10
                  nop
                  slli         s7, t5, 9
                  sra          tp, s4, s6
                  sltiu        tp, t4, -660
                  or           sp, a7, s5
                  or           s2, s6, zero
                  sra          s0, s1, tp
                  ori          t6, s10, -1075
                  ori          s1, s5, 1944
                  or           a3, a3, t3
                  bltu         s10, t4, 67f
                  bgeu         a2, t1, 73f
                  srl          s3, s11, zero
                  add          a7, s1, a1
                  srli         s7, a4, 24
                  bge          a6, a7, 70f
                  auipc        s9, 61570
                  andi         s11, zero, -681
                  bgeu         s5, s2, 74f
                  add          s2, s6, a6
                  bgeu         t4, a2, 74f
67:               lui          a7, 511090
                  srai         gp, a3, 29
                  bltu         s8, s7, 70f
70:               or           s9, s10, t4
                  slti         s5, t2, 1766
                  srai         s3, a3, 29
73:               srl          t4, s11, gp
74:               bne          t6, s1, 82f
                  sltu         a7, a5, s7
                  blt          a2, s10, 95f
                  xor          ra, s10, a2
                  slli         s8, t0, 25
                  slli         s6, t4, 0
                  sltiu        s4, s11, 1888
                  beq          s3, a3, 96f
82:               xor          a3, s3, s11
                  ori          t4, t6, -446
                  blt          sp, t1, 99f
                  add          a3, s6, a2
                  slli         a6, a3, 9
                  sub          s3, t2, t0
                  bltu         t5, s4, 89f
89:               sltiu        s1, s0, 1702
                  sra          s2, s3, s7
                  sltu         t6, s10, tp
                  srai         s7, t3, 9
                  and          s8, s8, a6
                  and          ra, s10, s6
95:               beq          t2, s5, 115f
96:               sltu         s9, tp, s1
                  sra          s4, a4, s9
                  srli         s11, t3, 14
99:               sltu         s9, s1, s2
                  srli         t2, a7, 16
                  sltu         t4, t4, sp
                  xori         a0, s7, -1187
                  bge          t2, t5, 107f
                  add          t4, zero, t5
                  auipc        s9, 494902
                  bge          t0, s8, 109f
107:              xori         s6, s0, 1590
                  add          t1, a2, s10
109:              bgeu         s3, t5, 126f
                  bge          t4, s5, 122f
                  bgeu         t2, a5, 127f
                  xor          s5, s6, s8
                  and          t6, s2, s1
                  slt          a4, a2, s7
115:              xori         zero, t3, 1674
                  srli         t4, a2, 3
                  beq          s5, s11, 126f
                  srai         t2, s3, 19
                  ori          t2, a1, -1013
                  xori         s3, gp, 597
                  bne          t6, s10, 125f
122:              nop
                  auipc        t1, 403501
                  auipc        t1, 782215
125:              xori         a2, s9, -1731
126:              add          s1, s11, t2
127:              and          a4, s3, s7
                  sll          t2, s5, a3
                  bgeu         s3, s5, 135f
                  bltu         a1, a0, 134f
                  slti         s7, s1, 319
                  srli         a1, a2, 24
                  srl          s8, gp, t5
134:              add          t6, t0, t6
135:              bgeu         a2, s0, 153f
                  srai         a2, a1, 12
                  bne          s11, s5, 152f
                  ori          t1, s8, 493
                  sub          s9, sp, a2
                  sra          t4, a3, a0
                  xor          s7, s11, t0
                  addi         s3, tp, -1857
                  xori         a4, a1, -1638
                  bgeu         t0, s7, 164f
                  auipc        a0, 294747
                  bne          zero, s6, 155f
                  srl          s11, zero, a3
                  sltiu        t6, s6, 619
                  xori         t1, t0, -1794
                  sub          zero, a5, s3
                  srl          a6, s2, t3
152:              addi         s4, sp, -44
153:              add          t5, t6, gp
                  auipc        a1, 400386
155:              bltu         a0, s9, 172f
                  sll          a4, s2, a7
                  addi         a2, t3, 890
                  sltiu        s6, t3, -317
                  sub          s1, a2, t1
                  sltiu        a7, s0, -62
                  and          a4, t4, t1
                  bgeu         s8, t5, 177f
                  sub          tp, t4, t6
164:              andi         ra, t4, -736
                  lui          a6, 799140
                  sll          zero, s1, s11
                  xor          s5, a6, t3
                  sltu         tp, t4, t3
                  auipc        s7, 477770
                  sra          ra, s9, s11
                  addi         tp, t0, -1473
172:              or           s8, a7, s10
                  bltu         s8, t4, 189f
                  sll          t6, a4, t2
                  slti         s7, s9, -1279
                  srl          s7, t5, a4
177:              xori         s9, s11, -1047
                  auipc        a1, 329331
                  lui          a2, 38473
                  sll          s11, s8, s0
                  bne          sp, s1, 201f
                  bne          a1, zero, 197f
                  bgeu         gp, a5, 184f
184:              add          s3, tp, s3
                  beq          s11, s9, 191f
                  bltu         gp, sp, 190f
                  sra          s6, t4, s8
                  xor          a5, a6, s8
189:              bgeu         t3, gp, 204f
190:              beq          a2, t1, 194f
191:              add          t2, t0, t3
                  sltiu        s1, a1, -1769
                  srl          a7, s9, s10
194:              sltu         s7, s9, s4
                  slt          tp, s0, t2
                  and          ra, zero, a2
197:              srli         t5, s2, 12
                  srli         zero, zero, 12
                  slt          s4, a2, t4
                  bgeu         a7, s5, 215f
201:              bgeu         a5, s5, 202f
202:              blt          a1, s10, 203f
203:              sltu         t1, s7, s9
204:              nop
                  sll          s8, sp, tp
                  sltu         s1, a7, s0
                  srai         tp, s1, 7
                  slti         tp, s1, 1119
                  and          a1, s1, s6
                  or           zero, s4, a4
                  bge          tp, s1, 230f
                  lui          s3, 314264
                  or           s1, s10, t1
                  ori          s7, t6, 722
215:              beq          gp, a7, 231f
                  bgeu         a4, gp, 234f
                  sub          s9, t2, s7
                  lui          a0, 364705
                  sra          a0, s6, t6
                  addi         s4, s0, 469
                  and          s1, a4, gp
                  auipc        s8, 976923
                  blt          a0, t1, 227f
                  or           s9, s0, a6
                  sltu         s3, gp, s0
                  srl          a1, s4, t3
227:              srl          s5, t2, a4
                  bne          t4, a3, 239f
                  or           ra, a3, t5
230:              sltiu        gp, s0, 1541
231:              ori          tp, a7, 1940
                  andi         s3, t3, -1609
                  bgeu         a4, s6, 236f
234:              srai         s5, a0, 9
                  slti         t2, a7, 40
236:              lui          s9, 183342
                  blt          t5, sp, 245f
                  xori         ra, t6, -587
239:              srli         a2, a6, 4
                  srli         tp, gp, 9
                  sra          s4, ra, a3
                  slti         a1, s9, -1691
                  bltu         s5, t2, 248f
                  sltu         s0, a2, t3
245:              ori          a5, a2, -778
                  blt          s5, s9, 256f
                  andi         a3, s7, 1973
248:              sltiu        ra, t6, -1963
                  sll          a3, t4, t3
                  blt          s7, s0, 265f
                  nop
                  slli         s11, t5, 1
                  or           s7, t3, a1
                  and          a0, s9, a7
                  bltu         a0, t2, 263f
256:              srli         sp, a3, 14
                  slt          a1, a1, tp
                  bge          t1, s7, 262f
                  bne          s11, a1, 268f
                  srli         a7, s8, 11
                  lui          zero, 631605
262:              sll          s3, zero, s0
263:              slti         a6, s5, -1664
                  srai         tp, s8, 2
265:              xor          a1, t0, s2
                  blt          s5, a2, 278f
                  sra          t2, t1, s3
268:              srai         a7, s11, 20
                  bge          a6, t1, 288f
                  xori         a5, s5, 1303
                  srli         s2, s0, 23
                  or           tp, s10, a3
                  add          s8, t3, s5
                  auipc        a4, 18100
                  auipc        s1, 195483
                  auipc        ra, 929944
                  sltiu        a0, t1, -1262
278:              sub          a7, s3, s5
                  auipc        a0, 383755
                  xor          s5, s6, s0
                  srl          s8, s5, s7
                  sltu         a5, s5, a2
                  xor          s6, s2, a5
                  slt          s0, a1, t2
                  ori          a3, a1, -2037
                  slli         a1, s11, 20
                  bltu         t6, s3, 295f
288:              sll          s2, zero, s0
                  srli         s5, t2, 8
                  andi         t5, s3, 1307
                  addi         a3, t2, -1877
                  srai         t2, t4, 22
                  xor          s2, a7, a5
                  slt          a5, s11, t3
295:              blt          a7, s9, 311f
                  blt          a3, t1, 302f
                  xor          a5, a2, gp
                  or           s2, t3, a3
                  sub          s11, t4, s1
                  bge          s6, a4, 318f
                  nop
302:              andi         s8, a1, 1650
                  slti         a0, s11, 1870
                  blt          t3, t4, 312f
                  bgeu         a6, s6, 320f
                  and          t2, s9, t0
                  bltu         s11, s8, 311f
                  lui          a5, 520323
                  srai         a1, t3, 26
                  xor          t5, s2, s2
311:              nop
312:              slli         s0, a3, 23
                  blt          a6, t3, 318f
                  slt          s0, ra, a1
                  sub          s2, t6, t1
                  sltu         a3, a5, s1
                  xor          sp, t6, s7
318:              addi         s8, s1, -417
                  bgeu         t6, a7, 335f
320:              xori         a6, s6, 820
                  beq          sp, a7, 336f
                  lui          s2, 214081
                  sub          s0, t3, s0
                  sub          s4, zero, t3
                  srl          a2, s1, t4
                  srli         s2, ra, 14
                  add          tp, gp, s1
                  xori         t6, s11, 1366
                  nop
                  beq          zero, a0, 339f
                  addi         s9, t5, -104
                  srl          s2, a3, s10
                  bge          s8, s8, 353f
                  slt          s11, s9, a4
335:              add          s3, s8, t4
336:              srli         a7, a0, 9
                  sltiu        a6, a2, 1838
                  nop
339:              xor          a1, t0, tp
                  andi         a2, s8, 513
                  add          a0, s3, zero
                  sra          s4, s4, t5
                  srli         zero, t0, 26
                  xori         a4, s3, -1757
                  bne          s3, ra, 346f
346:              sub          a0, s10, s2
                  sub          a5, a6, s8
                  blt          ra, s4, 352f
                  and          s11, a6, a1
                  bgeu         a6, a4, 365f
                  add          gp, a0, s10
352:              addi         t1, s1, 868
353:              and          t2, s2, s1
                  ori          s2, s10, -625
                  blt          s10, s2, 358f
                  blt          a2, s2, 357f
357:              xor          a7, s2, t3
358:              srli         s6, s9, 24
                  nop
                  sltu         a5, s2, t6
                  ori          a2, t4, -1103
                  nop
                  bltu         ra, t6, 374f
                  ori          gp, s9, 1228
365:              sll          t5, zero, t1
                  slli         s5, a7, 4
                  lui          t4, 483413
                  blt          t5, a5, 383f
                  sltiu        tp, s8, 1685
                  bne          t3, s5, 385f
                  nop
                  srai         t4, t2, 25
                  bge          s7, s1, 392f
374:              xor          a4, tp, gp
                  sra          s0, a0, a6
                  and          s2, t3, a1
                  add          s4, t4, a1
                  sll          s6, t6, zero
                  auipc        s8, 500632
                  xor          t2, s7, s7
                  srli         t5, a3, 28
                  sltiu        s0, s6, -1454
383:              sll          s3, a4, a6
                  lui          s6, 1013816
385:              xor          a4, s6, a5
                  ori          a2, t5, 1542
                  auipc        s5, 196027
                  bltu         a0, sp, 389f
389:              bne          t6, t6, 409f
                  sltiu        a0, s0, 1104
                  addi         gp, s3, 504
392:              slt          t5, s0, gp
                  sll          s8, ra, s8
                  srli         s1, s3, 18
                  and          a1, a2, zero
                  slli         t2, t3, 26
                  nop
                  srai         a1, t1, 19
                  srai         a5, t3, 31
                  slt          s11, a1, t3
                  srli         t1, a7, 22
                  auipc        a4, 904172
                  slt          t1, tp, s2
                  srli         t4, s9, 3
                  sltu         a3, s6, t4
                  sub          ra, s7, a2
                  srl          ra, a4, s3
                  sub          s1, s7, zero
409:              blt          gp, s2, 419f
                  addi         a6, s3, 1514
                  bgeu         s10, s7, 415f
                  slt          t5, a1, t4
                  xor          a0, t3, gp
                  slti         s0, a2, 86
415:              bge          s11, t4, 424f
                  sll          t2, t2, t1
                  andi         s7, a6, -1651
                  slli         zero, a0, 26
419:              lui          a1, 655787
                  beq          s6, t4, 437f
                  sra          t5, s0, a7
                  andi         a5, t6, 911
                  bge          s10, s4, 435f
424:              srai         a5, a2, 28
                  nop
                  beq          s4, a7, 430f
                  add          s3, s4, s9
                  or           a2, t1, s3
                  bge          s10, gp, 448f
430:              blt          a7, a7, 439f
                  and          s3, s2, s8
                  beq          a5, s7, 435f
                  blt          a5, s11, 449f
                  blt          s11, s8, 451f
435:              slli         s3, a0, 2
                  sltu         a1, ra, s6
437:              sltu         a2, a3, a5
                  auipc        a6, 166722
439:              blt          s1, s3, 440f
440:              sltiu        s4, s7, 1376
                  slti         a3, sp, 218
                  xor          a7, ra, s4
                  srai         s8, s10, 25
                  sll          s3, zero, zero
                  bltu         t0, t0, 464f
                  beq          s9, a0, 466f
                  xor          a4, s9, t1
448:              sltu         tp, s10, t1
449:              sll          s7, t6, sp
                  slt          tp, sp, s5
451:              sub          gp, t1, ra
                  andi         s8, a0, -89
                  blt          s2, t0, 463f
                  blt          a5, a4, 469f
                  andi         a6, s0, 193
                  or           s7, gp, s8
                  slti         s3, t2, -94
                  slli         s7, gp, 30
                  slli         s3, t5, 27
                  slti         s9, gp, -955
                  andi         t1, sp, 1574
                  sub          s9, a0, s7
463:              sll          s9, s5, t6
464:              slli         s8, s5, 31
                  srai         s6, t0, 27
466:              lui          t2, 961793
                  slti         s5, s7, -1205
                  sltu         a3, s5, t3
469:              lui          a0, 1017777
                  sub          s8, a7, t2
                  xori         s11, t5, -1333
                  addi         a0, s11, 513
                  andi         s4, s3, 1576
                  nop
                  slti         zero, s8, -1608
                  and          s6, s7, t6
                  lui          s9, 26282
                  or           a4, a0, a5
                  sltiu        s7, s7, -363
                  bne          sp, a0, 488f
                  sll          s11, t3, s1
                  xori         t2, s2, -20
                  andi         a5, a1, 797
                  srai         t4, a1, 9
                  add          s7, a5, s1
                  sltiu        a0, a4, 866
                  add          a7, tp, a5
488:              srli         s0, t6, 21
                  xor          s7, a2, t5
                  slti         s9, tp, -1273
                  auipc        s6, 804164
                  bgeu         s3, a0, 496f
                  andi         a5, s10, -525
                  bne          s2, zero, 505f
                  nop
496:              bne          s11, t4, 511f
                  srai         a5, s6, 11
                  add          a4, a2, a5
                  lui          gp, 1023390
                  xor          a0, a5, s8
                  sra          t2, zero, sp
                  and          a7, s0, a1
                  sll          t1, s8, zero
                  slti         tp, a2, -283
505:              andi         tp, zero, 1536
                  sra          s0, a5, a6
                  sll          a0, t5, a4
                  sub          a1, s4, zero
                  auipc        sp, 837086
                  add          s5, t4, a5
511:              add          a1, tp, zero
                  xor          a3, s5, tp
                  bltu         tp, a4, 517f
                  ori          t1, s9, -734
                  sra          s0, s4, sp
                  and          a1, s8, s2
517:              lui          s7, 61352
                  bge          zero, gp, 530f
                  andi         s7, s5, 1438
                  bne          s3, s0, 521f
521:              slt          t1, s4, t6
                  lui          s9, 465660
                  sltu         s5, t5, s8
                  srli         s6, s9, 20
                  add          a2, zero, s0
                  and          a5, a7, t0
                  or           s4, s0, s2
                  sub          s11, t1, s10
                  addi         s11, t2, 413
530:              srl          s0, s0, zero
                  sll          t1, a6, gp
                  auipc        s6, 916423
                  xori         t5, t0, -241
                  slti         s4, t5, 1259
                  blt          s5, a2, 544f
                  bgeu         ra, s9, 556f
                  slli         s6, gp, 26
                  add          s2, s0, t4
                  beq          t4, s10, 543f
                  srli         t5, s11, 24
                  sltu         tp, s8, s5
                  srl          ra, t6, a2
543:              bge          t1, a1, 551f
544:              or           gp, s4, a4
                  xori         t2, t4, 1800
                  xori         ra, a1, 799
                  xori         gp, s3, -929
                  nop
                  srai         t1, s8, 22
                  bgeu         t3, sp, 566f
551:              and          a7, tp, zero
                  sll          a3, gp, gp
                  addi         s5, s9, -1550
                  slt          a0, t6, a4
                  sll          tp, s0, a5
556:              auipc        t2, 116810
                  lui          a7, 582814
                  ori          s4, s2, -232
                  sll          s1, ra, tp
                  sltiu        zero, t6, 595
                  bne          a1, s0, 579f
                  or           tp, t5, t5
                  xori         s1, a5, -1706
                  add          s5, a0, s9
                  xor          a4, a6, s11
566:              lui          s1, 52725
                  sra          s2, t2, s10
                  slli         t2, a1, 19
                  add          a1, s1, t4
                  slli         s8, a5, 0
                  beq          t3, s4, 575f
                  sub          s8, s1, a2
                  auipc        a6, 438943
                  sltiu        a1, s3, -376
575:              sra          t1, s10, a6
                  add          t1, s5, a1
                  slti         a7, s5, 1219
                  bltu         s10, a7, 584f
579:              ori          s2, a4, -1693
                  srli         s5, s5, 3
                  sra          t5, a6, t5
                  xor          a5, sp, a5
                  sll          zero, t0, a5
584:              xor          s2, a4, a7
                  bne          s2, s5, 600f
                  sltiu        s5, s10, -1918
                  auipc        s7, 903660
                  bgeu         tp, a2, 593f
                  or           s6, zero, a4
                  slt          s2, s11, s7
                  slt          a0, a6, tp
                  slli         t6, s8, 31
593:              srai         t4, s6, 25
                  slti         gp, t3, 1169
                  srli         s9, a7, 22
                  blt          t4, t4, 597f
597:              nop
                  slti         s8, s11, 433
                  xori         a5, a5, 1617
600:              addi         a1, s4, 1739
                  sltiu        a1, a2, -618
                  sub          s4, a0, a5
                  ori          a4, a1, -2009
                  sll          s6, s10, tp
                  xori         s2, s8, -1198
                  beq          ra, s8, 621f
                  lui          t2, 507556
                  bne          a3, s8, 627f
                  sra          s6, s1, t4
                  ori          t5, sp, -1551
                  andi         s4, zero, 1857
                  lui          s4, 870269
                  beq          s7, t4, 628f
                  andi         s7, sp, 1726
                  lui          sp, 254172
                  slli         gp, t4, 13
                  sltu         s6, s7, a6
                  slti         a0, a1, 163
                  beq          s8, s10, 634f
                  srli         s11, s5, 15
621:              bne          ra, t2, 636f
                  beq          t5, a3, 628f
                  bgeu         a3, s2, 643f
                  addi         t4, a6, 398
                  lui          sp, 939520
                  xori         t1, t2, 704
627:              add          t6, t6, t0
628:              slti         t6, a5, 1388
                  sub          t1, a0, s1
                  sltu         s7, s10, a4
                  and          s11, a6, t6
                  bne          t1, s9, 635f
                  bgeu         t3, s7, 634f
634:              beq          s8, a1, 653f
635:              or           s6, t5, a1
636:              slt          s11, a4, a2
                  xori         a6, t2, 1298
                  ori          s0, s10, 1354
                  blt          s5, s6, 658f
                  beq          a7, a5, 641f
641:              bge          a2, a3, 649f
                  andi         s2, a7, 115
643:              xor          a0, s0, a6
                  addi         a5, a7, -1110
                  nop
                  beq          t5, s7, 661f
                  bne          t2, s11, 648f
648:              xor          s6, t5, a1
649:              srl          tp, a0, s5
                  addi         zero, s8, -1848
                  nop
                  srl          s3, s5, tp
653:              andi         tp, a7, -1576
                  sll          sp, t5, gp
                  nop
                  add          tp, s2, gp
                  srai         zero, s4, 24
658:              sll          s4, tp, a6
                  bne          a7, t5, 669f
                  andi         s4, t1, 2
661:              sll          s7, a2, t0
                  or           a1, s11, s10
                  srl          a5, tp, gp
                  addi         s0, ra, -769
                  andi         gp, a0, 1483
                  addi         a4, s10, -455
                  bgeu         t6, a6, 672f
                  slli         sp, s0, 2
669:              andi         a7, t1, -1111
                  xori         a6, a4, 652
                  beq          a2, s2, 675f
672:              xor          a2, s1, t0
                  srai         s11, ra, 22
                  andi         s6, s6, -1376
675:              bltu         s11, s2, 691f
                  xori         s4, s2, -1935
                  addi         a5, gp, -2007
                  bne          t5, a1, 694f
                  srli         s3, s0, 5
                  or           s5, s9, t0
                  sra          t2, t5, a0
                  srai         sp, s11, 28
                  nop
                  sub          s0, a4, a1
                  slti         a5, s3, 744
                  ori          a6, tp, 739
                  srli         a4, t6, 28
                  nop
                  ori          a6, t1, 933
                  beq          s10, s6, 701f
691:              andi         gp, s5, 1065
                  bltu         s0, a6, 701f
                  bne          s9, tp, 710f
694:              srli         s8, t4, 9
                  sltiu        s0, zero, 1129
                  slt          a4, a1, s9
                  slt          t5, s7, a4
                  ori          s7, a2, -1569
                  and          a2, a6, t0
                  srli         t2, ra, 5
701:              sub          t6, t1, s0
                  bgeu         s8, s10, 706f
                  add          s6, s10, t0
                  sra          t5, t4, zero
                  lui          t1, 169161
706:              andi         zero, s9, -1883
                  bge          a5, s5, 722f
                  add          a4, t6, t3
                  bge          t0, zero, 727f
710:              ori          a3, t3, 9
                  addi         a7, s5, 314
                  srl          a5, s3, a4
                  slti         t5, t1, -1222
                  andi         s6, s6, 1914
                  bgeu         a2, s3, 727f
                  ori          s2, a4, -1377
                  slli         t6, a1, 8
                  add          a1, zero, a6
                  xori         a5, s9, -676
                  srai         a7, t4, 3
                  addi         a1, s0, 1421
722:              xor          zero, s3, t3
                  slli         s6, s1, 26
                  bgeu         ra, s10, 744f
                  srai         s8, t4, 4
                  bge          s5, a7, 730f
727:              slli         a3, gp, 1
                  srai         t6, t3, 29
                  la           a3, region_0+1680 #start riscv_load_store_rand_instr_stream_6
                  auipc        s6, 369163
                  addi         s9, t1, 1299
                  xori         gp, t6, -914
                  and          zero, a1, s2
                  sll          t4, t4, t0
                  slli         tp, s9, 6
                  sltiu        s11, s1, -568
                  lb           t6, 15(a3)
                  xor          t6, a5, t1
                  sb           gp, 0(a3)
                  srai         a2, s8, 6
                  lbu          s4, 1(a3)
                  slti         a2, s0, -2005
                  sb           sp, -9(a3)
                  sltiu        s9, tp, 1123
                  srai         s6, t1, 15
                  ori          tp, s9, -442
                  srli         s3, t4, 19
                  sh           t2, -10(a3)
                  sb           s8, 2(a3)
                  sltiu        s4, gp, -1468
                  slti         sp, t0, -1690
                  sb           a5, 5(a3)
                  sh           t5, 10(a3)
                  addi         s0, t1, 1704
                  lb           a2, -3(a3)
                  ori          gp, s9, -1116
                  xor          ra, t3, t1
                  lbu          t2, -10(a3)
                  xori         t4, a5, -1540
                  sb           s4, 15(a3)
                  auipc        s11, 988165
                  lhu          s8, 16(a3)
                  sltiu        tp, s3, -1685
                  sb           s1, -2(a3)
                  sh           zero, 4(a3) #end riscv_load_store_rand_instr_stream_6
                  andi         a1, t0, -186
730:              slli         zero, gp, 6
                  bne          s0, s3, 746f
                  sub          a1, a7, a5
                  srl          a6, tp, a3
                  and          s6, a3, a5
                  and          tp, a3, s4
                  xor          s2, a0, s0
                  srli         s8, t6, 5
                  andi         zero, sp, 1030
                  srli         ra, s5, 11
                  bgeu         t1, s6, 748f
                  addi         t1, s1, -775
                  bge          t6, a6, 746f
                  nop
744:              bgeu         s5, a7, 753f
                  srl          s4, s0, a1
746:              slti         s7, t5, -383
                  ori          s11, s8, -1217
748:              ori          s4, s5, 2025
                  sub          t6, t3, s7
                  srai         a4, a4, 1
                  xor          s2, t5, gp
                  slti         s7, a5, 1685
753:              sra          a5, s9, s5
                  bge          t6, t5, 769f
                  srai         t5, s11, 5
                  srai         a5, s2, 16
                  slt          s2, a0, t0
                  bgeu         a5, a5, 775f
                  sra          a0, s9, a7
                  addi         s2, sp, 725
                  bne          s3, s4, 762f
762:              bltu         t0, s11, 780f
                  slti         a1, s7, -1685
                  sltu         s11, zero, t4
                  sll          s8, zero, s0
                  xor          a5, a7, t4
                  nop
                  bne          t6, s0, 784f
769:              srli         t2, a3, 30
                  beq          s3, s3, 785f
                  auipc        a2, 845876
                  xor          t5, a5, a6
                  addi         t4, t5, -1869
                  bgeu         s3, s7, 778f
775:              bge          s8, s8, 795f
                  beq          t0, zero, 780f
                  bgeu         t2, s8, 782f
778:              slt          s3, a3, s11
                  bgeu         sp, t3, 790f
780:              srai         s0, t5, 9
                  auipc        a5, 979979
782:              slli         a3, tp, 2
                  slt          a2, s8, s9
784:              bltu         t5, s0, 799f
785:              sltu         s6, s3, t2
                  slti         a4, a2, -1602
                  bltu         a4, s6, 803f
                  xori         s0, a6, -1420
                  xori         gp, t3, -1289
790:              slt          t1, a1, s4
                  sltu         s8, ra, s3
                  lui          t5, 388404
                  slli         tp, a7, 5
                  add          a0, t6, t4
795:              bltu         s7, t0, 810f
                  srli         s11, s8, 1
                  nop
                  sltiu        s9, zero, 1266
799:              slt          s4, s1, a4
                  lui          ra, 503394
                  xor          ra, a3, a3
                  sub          s8, a3, s10
803:              nop
                  nop
                  sltiu        t2, s5, 134
                  sub          s3, t5, ra
                  add          s4, s11, s10
                  sll          a2, zero, t5
                  srl          t6, s4, a7
810:              xori         zero, ra, 756
                  srl          ra, s2, s3
                  and          s11, tp, a0
                  bne          s9, s1, 814f
814:              add          a1, a2, a4
                  slt          t6, t3, s10
                  lui          a5, 408589
                  and          a2, gp, t6
                  srai         a1, s2, 25
                  and          s8, a1, t5
                  bne          t3, s5, 828f
                  addi         sp, s7, 1635
                  lui          zero, 651499
                  sltiu        s1, tp, 241
                  addi         a6, s1, 1756
                  bltu         s5, a6, 833f
                  bne          a2, s11, 830f
                  slt          sp, a3, t4
828:              sra          s4, a6, t3
                  andi         s11, a1, 873
830:              ori          a7, a1, 780
                  bge          s7, t3, 840f
                  slli         zero, t0, 16
833:              blt          ra, a7, 839f
                  andi         s3, s5, 1192
                  bltu         a1, s4, 836f
836:              xori         s7, s1, 1175
                  xor          t1, t0, s8
                  sll          s0, a6, tp
839:              sra          ra, a2, sp
840:              bge          s8, a5, 859f
                  lui          sp, 980220
                  and          a6, a5, tp
                  and          tp, t4, t4
                  add          a5, s8, a6
                  ori          t1, a3, -1619
                  ori          t2, s5, 1115
                  or           a0, zero, a3
                  lui          t4, 1005266
                  xor          s6, t6, s10
                  bge          t6, a4, 859f
                  bge          t2, a7, 861f
                  xori         t6, s2, 1050
                  xor          gp, t4, t2
                  slti         a5, s4, 109
                  slti         s1, a0, -159
                  srai         zero, s4, 29
                  sub          ra, a4, sp
                  blt          s11, s7, 861f
859:              slli         t5, t3, 5
                  xori         a1, s2, -498
861:              sltu         s0, t2, t5
                  andi         s3, zero, 388
                  auipc        a0, 332352
                  addi         a3, t6, -1397
                  nop
                  sltu         s1, ra, a2
                  lui          s0, 130203
                  or           a0, s8, zero
                  lui          gp, 166645
                  add          ra, a2, gp
                  srai         s6, t3, 23
                  auipc        s8, 702863
                  auipc        tp, 497549
                  sll          s11, a1, s5
                  lui          t2, 636102
                  nop
                  bgeu         sp, zero, 896f
                  xor          a0, t3, a1
                  blt          s10, s11, 899f
                  slli         a4, s4, 15
                  addi         t4, t6, -239
                  or           t6, a1, gp
                  add          zero, s0, s7
                  sltiu        a5, a0, -1519
                  sub          ra, s0, a3
                  bne          a7, t6, 898f
                  sll          t4, a3, s3
                  slti         zero, t4, -227
                  lui          a2, 109934
                  bgeu         a6, ra, 905f
                  addi         s11, s8, -1159
                  sll          s3, a6, s2
                  auipc        s1, 460537
                  or           a6, s10, t1
                  addi         t2, t1, 573
896:              andi         tp, s1, -1823
                  lui          s11, 921447
898:              or           a3, s1, s0
899:              bgeu         t3, s6, 903f
                  xor          ra, a1, a1
                  auipc        s7, 45758
                  sltiu        s0, a1, -1346
903:              auipc        s0, 200741
                  bgeu         s8, a3, 920f
905:              bge          s6, ra, 915f
                  slli         gp, a5, 2
                  sra          s6, zero, t0
                  sltiu        a1, t1, -1124
                  addi         s2, zero, 1665
                  srl          gp, sp, t0
                  srl          s1, s9, a1
                  sltu         t5, s5, a1
                  bgeu         a4, zero, 929f
                  xori         a6, s10, -105
915:              sra          gp, a5, s10
                  slli         zero, s4, 25
                  or           a4, gp, t1
                  srai         gp, s11, 4
                  bgeu         t3, tp, 934f
920:              bge          s9, a7, 928f
                  srl          s1, t2, s9
                  and          t6, a7, sp
                  slli         gp, s2, 4
                  srli         a3, a7, 23
                  xori         s9, s5, -2038
                  bge          t1, s2, 946f
                  sll          gp, a4, a1
928:              srai         a2, s5, 15
929:              blt          s4, a7, 948f
                  andi         s8, a1, 1006
                  srli         s11, s9, 24
                  or           zero, s8, tp
                  sltiu        s0, zero, 2022
934:              srli         s2, s9, 0
                  sub          a2, s6, t6
                  xori         a6, s2, -269
                  sll          s4, t1, a7
                  ori          s0, s3, -1819
                  and          a6, a0, t0
                  or           a2, t6, s4
                  auipc        s4, 465791
                  sltu         s8, a3, a1
                  beq          a5, s10, 946f
                  beq          ra, a7, 950f
                  sltiu        s0, t2, -1046
946:              add          a5, s5, sp
                  addi         s6, t5, 879
948:              or           tp, t3, s0
                  addi         s5, t3, -148
950:              slti         s5, a1, 1555
                  and          s4, t4, s5
                  srli         s0, s3, 29
                  srli         s0, s11, 21
                  beq          gp, t0, 959f
                  lui          t6, 648804
                  auipc        t2, 661521
                  slli         tp, s8, 6
                  ori          a6, s7, 643
959:              bge          a0, a0, 963f
                  sltu         a2, t1, s2
                  slti         t1, a4, -1217
                  auipc        t4, 365627
963:              andi         a0, s2, 1770
                  xor          sp, s7, a4
                  or           a3, a4, s8
                  sltu         t1, t0, s5
                  ori          s0, s11, 1183
                  srli         a5, s0, 18
                  sltu         t4, s6, tp
                  sub          a3, a4, t0
                  bltu         t3, a3, 986f
                  bgeu         s0, t3, 973f
973:              slti         zero, s1, -1415
                  srli         tp, s4, 9
                  sltu         s7, s9, a2
                  xori         tp, s11, 22
                  slli         s7, a7, 19
                  srli         ra, s6, 6
                  bne          s1, a7, 994f
                  blt          ra, t4, 981f
981:              ori          s3, t5, 1561
                  bltu         t0, t0, 991f
                  bge          t6, s4, 984f
984:              srli         a6, tp, 27
                  bgeu         s9, t5, 1005f
986:              slt          s4, s4, t1
                  sltu         s7, t6, s8
                  ori          t6, s5, 1998
                  sll          gp, a5, t2
                  nop
991:              blt          a6, s1, 1003f
                  bne          t4, s10, 1001f
                  sub          s7, t0, t0
994:              beq          s9, ra, 998f
                  ori          s6, a1, 1534
                  slti         s7, a5, 1396
                  sra          t1, s10, s6
998:              add          t2, s5, ra
                  add          t1, a2, a3
                  andi         tp, a4, 1568
1001:             bgeu         s4, t6, 1019f
                  andi         s8, zero, -367
1003:             nop
                  slt          sp, a0, t3
1005:             sub          s7, t4, gp
                  nop
                  sub          t1, t3, s2
                  sltu         gp, t5, s8
                  slti         tp, s3, 178
                  andi         s6, a0, -827
                  lui          s7, 293138
                  auipc        t5, 510613
                  addi         ra, s9, 1433
                  lui          s0, 222045
                  blt          s8, t5, 1019f
                  or           a5, t0, t1
                  sra          s0, a2, sp
                  nop
1019:             slli         sp, a1, 26
                  addi         a0, s8, 1458
                  lui          s1, 943440
                  andi         gp, a0, -104
                  lw           ra, 4(s10)
                  addi         s10, s10, 64
                  srl          s2, t1, s10
                  slt          t4, s7, s0
1353:             addi x12, x1, 1
1353:             jalr x12, x12, 0
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
.word 0xd142f121, 0x9f71d4a9, 0x6572b0d7, 0xbbc4c475, 0x734c7a57, 0xc3db32ea, 0xbfe0c8ba, 0x6c17edfb
.word 0xb1b2141a, 0x66a093cf, 0x45411cc2, 0xcffe2240, 0xa267eb10, 0x606f4329, 0x03b063af, 0x8bfd04da
.word 0x1d1fbb8c, 0x01a0e00b, 0xaac5811f, 0xea2968fd, 0x82552143, 0x0e636dc9, 0x11d295a3, 0xfe15576e
.word 0x02fa6476, 0xa1af520e, 0x753270e9, 0x5b231fc9, 0x278ba4cb, 0xdc64b53f, 0xad5de835, 0x01217601
.word 0x77d2c94d, 0xebdf15a5, 0xa257821d, 0x57d9d91a, 0x7644b052, 0x679b1d12, 0x02423331, 0x17fb46ea
.word 0x24d432de, 0xf7c012ca, 0xc8ace453, 0x830ad4b3, 0x6952600f, 0x1c17579d, 0x32ed5a59, 0x2dc2158d
.word 0xbe8e9204, 0xfd78de64, 0xea4ff23a, 0xf1ec384a, 0xf803bbd1, 0xeb2ed9ed, 0x8df411ee, 0xf3a9fd3f
.word 0x3452ab3c, 0x726c2f76, 0xcdc12b85, 0x2636aca3, 0xd104d1aa, 0x83fb53a0, 0xa7287972, 0x39c4d451
.word 0x7b14f8bb, 0xe2f2b9be, 0x7f57cf76, 0xa0884512, 0x8962b04a, 0xd663f437, 0xe3570c56, 0x1700ecf0
.word 0xd54bfe50, 0x4305153e, 0x49703b4f, 0xe59aa9c6, 0x25b119b3, 0x26b67b92, 0xcaa60864, 0x3baf5b23
.word 0x6e524bfa, 0xc9f8e22a, 0x8b0cf4ac, 0x10dca684, 0xe7315332, 0x18074ebb, 0xe6c1d4fd, 0x74efcdb7
.word 0x43518836, 0x62405be0, 0xc278f7cc, 0x535798c9, 0x8cb5ddba, 0xf417e920, 0x9271f19d, 0x4400a670
.word 0x5607bbed, 0x201e1c61, 0x9fd09d8a, 0x0629eb07, 0x6f905a0d, 0xbf0bf504, 0x38d198f8, 0x880e58f0
.word 0x74d64358, 0x20aeff78, 0x46105350, 0x41642cd4, 0xea96dce3, 0x539d586b, 0x6246ad94, 0x6c6d2320
.word 0xe378d68b, 0x7cef195a, 0x80ee0353, 0xe6ca7ab6, 0x613d5903, 0xcaad6f7d, 0x57565ce4, 0xe1730586
.word 0x67edf99e, 0xd28e3143, 0x2c52e777, 0x40a0cca0, 0x9c1d7ffa, 0xf9b40cca, 0x9a420ef0, 0xeed219fe
.word 0x08a6e9c0, 0x953b7ecc, 0xa58a0465, 0x56ac5809, 0xce26c2a8, 0x167ba906, 0x1076e8ec, 0xf8f93ee2
.word 0x6e088331, 0xffc93967, 0xc9cc9f25, 0xd9a2bb22, 0xf6738fc8, 0xbb076564, 0xfdd064d5, 0xe8c707cc
.word 0xa4706068, 0x5d91e72d, 0x963a2d2b, 0x1404f588, 0x3c469f65, 0xdc942811, 0xf88e9e06, 0xfc5e25e0
.word 0xe937a173, 0x3f53a60b, 0xee34c830, 0xbacfa4df, 0x591ef561, 0xc46e146b, 0x011e1109, 0xe3693231
.word 0x53f9288d, 0x582403aa, 0x0f8441cb, 0x4d7c9110, 0xdc599613, 0x28b60ba2, 0x187e4d3a, 0xae794184
.word 0x92fe03c1, 0x2d0e2e0b, 0x3c411d11, 0x9edfb900, 0x1859f576, 0xac58f468, 0x05833168, 0x6ed06113
.word 0x5357ee08, 0x4ca06bd1, 0x6d4ab0ac, 0xd9b19204, 0x26c9b848, 0xf6756d2e, 0x86b0db52, 0xf21ea435
.word 0x6be1dcc7, 0x3a8185a9, 0x9b400be3, 0x5a151f89, 0x170c8a4f, 0x837a3b58, 0x33a20805, 0x1a0eafde
.word 0xb1cb23e6, 0xa2ab875a, 0xc124195d, 0x2b052640, 0xe6c177e7, 0x2a07c1e6, 0x0f3e4a47, 0x6244ff79
.word 0xaf940ac4, 0x71be7637, 0xcdd6f3fd, 0x15f54f8c, 0x4489dda9, 0x9550398a, 0x0de7e65f, 0xb668c8ec
.word 0xf82cf704, 0xdd1aceaa, 0xa7b57dd9, 0xeaf021cc, 0xa7d15ab7, 0x9230c86b, 0xf53f1d0b, 0xa057f6e3
.word 0xe5ec9357, 0xb7b8349b, 0xf15f18b0, 0x922d556f, 0x1f01691b, 0x658eb8df, 0xaaf74f7d, 0xda65302e
.word 0xb2bff047, 0xd083d58d, 0x27ec6069, 0x4ee7dff1, 0x4d04cdba, 0x1f1bf6b7, 0xe97770bf, 0xa46938dc
.word 0xe266dd6d, 0xe2edc5e3, 0xc5274b3a, 0x2cdb350d, 0x654dadb3, 0xcda6684f, 0xd478af2e, 0x6cefcd3d
.word 0x9e78298c, 0x12fd9871, 0x085bd761, 0xfab2a9a3, 0x460486d8, 0xdb01d66c, 0x08318314, 0x307eea81
.word 0xff46d426, 0xf8905730, 0x6fe09f6c, 0x774d9135, 0x68017224, 0x607fc78f, 0x0af006a7, 0xf53e962b
.word 0x1884ee0f, 0xdac106f7, 0xa1be462d, 0xa7568a98, 0x207ac191, 0xda0f033f, 0xa10304cb, 0xf9855763
.word 0xdb4bc970, 0x3f9c138e, 0x24f23869, 0x3069e19d, 0x5fd8fa46, 0x1f659a66, 0x97512f4e, 0x9d9c2c23
.word 0x97f2e3e0, 0x7ef5bf91, 0xb666bd14, 0xee9fca69, 0x6c830bda, 0xd54934e4, 0xfb5e9a21, 0x816c0b75
.word 0xeaccc65c, 0x13225465, 0xbf7beb72, 0x4fdf6198, 0x2e12086b, 0x0c4eac16, 0x1cef435f, 0x9d7414c7
.word 0x61b40d73, 0x99c54674, 0xa5e2622d, 0x371e6c2d, 0x5f693111, 0x44eef8d0, 0xcf48538f, 0x9af2f998
.word 0x542502f9, 0xdeb0438c, 0x7cfe0bfc, 0xefc129ba, 0xc5051b00, 0xcf4058d0, 0x2c5dde0a, 0x3ef72fa6
.word 0xdf03c8c1, 0xedefca24, 0x7aea104a, 0x2a1ae602, 0x3ea37e6f, 0x154466a0, 0x5181d200, 0x7c7fbb36
.word 0x971dfe3b, 0xae3e14ac, 0x3991da0e, 0xe0530b95, 0x85bc5caf, 0x28705013, 0xb79c4b3b, 0x18f740df
.word 0x833b9d70, 0x1ad87277, 0xbf625b71, 0x3241e8d1, 0x4dd05108, 0x446467a9, 0x497a64ba, 0x4378b1a7
.word 0xcb99a2ca, 0xa5352d07, 0x8fd9f1fb, 0xf3c07b6e, 0x2a080444, 0xaf68cef6, 0xccbba43d, 0xf40716a8
.word 0xf8b79e22, 0x3352e9e1, 0x66eb5beb, 0xa52f32e4, 0x75f0bbc7, 0xb2b55a65, 0xc6d47fcf, 0x86eed44e
.word 0x61e3ca9d, 0x4d1e2a6f, 0xd0f85306, 0x1b6b9458, 0xe00ab590, 0x798dd9af, 0xce888380, 0x3ad1679a
.word 0x3bf778b3, 0xad7f48ee, 0x192c88a3, 0x61fd26d0, 0x29d97160, 0xbf9c6210, 0xef96e9a3, 0x9c2fb9cd
.word 0xbcac7bb8, 0x57a239a2, 0x6d6ff4a0, 0x98c8a7ee, 0x953bbddc, 0xfcab45bb, 0x4c568f74, 0x0445ff27
.word 0x23a46b89, 0x5bdc95ad, 0x016076d7, 0xfb71c5e0, 0x635adec8, 0x97b13b42, 0x913b3280, 0x6fd37631
.word 0x5d254a32, 0xf276205d, 0x33662950, 0xdf1773de, 0x42eb3a71, 0xfe2862fe, 0xaea8f014, 0xae144309
.word 0xbd022196, 0x8e9c8019, 0xfd5d31de, 0xabbbf99a, 0x8ec647f1, 0xf2c2b219, 0x2129def0, 0x88b8bfac
.word 0x7bd5376c, 0xf99c664d, 0x6df7093e, 0xc8a06fc1, 0xed3b29c1, 0x99169b1d, 0x3c64445e, 0xa2dc77ee
.word 0x529b4d5f, 0x889a3bd9, 0xdd8dd2ce, 0x732454bd, 0x84719781, 0xd1c7516c, 0xcc479287, 0xb9b66b87
.word 0x6be2cb83, 0x75f373aa, 0x806fe10c, 0x1cd05977, 0xb2fd0bb5, 0xc4578210, 0xad462b67, 0x6b217076
.word 0x68068be8, 0x94339114, 0x19582402, 0x33f576bb, 0xe63b6226, 0x28c85398, 0xba1cfb65, 0xf8fe2f8b
.word 0xa327d42d, 0x04168423, 0x51d9d151, 0xf92beb44, 0x3b84ef1a, 0x7aa786a8, 0xfe4897f7, 0x8f6f9bd5
.word 0xbbda044f, 0x6506d05d, 0x831e076a, 0x566e8e60, 0x8599b8f1, 0x7567c385, 0xcf9528c4, 0x61886ec9
.word 0x3223965c, 0x04e18f3b, 0x718bd18a, 0xf3aef104, 0x67bd8a70, 0x31450f90, 0x38a9620b, 0x05d1285a
.word 0xbdfcc949, 0x4af98866, 0x8c68e6ea, 0x1949e6bb, 0x69301a91, 0xd120879a, 0x6965abd2, 0x15f0db97
.word 0x2f2fd1bc, 0x7bc96285, 0xb8109669, 0x838d51b6, 0xc85e787a, 0xfaca39eb, 0x862b7350, 0x14db12e7
.word 0x352116d8, 0x61a96824, 0x79acee1d, 0xae0048f5, 0xa8779223, 0x59f8b3c4, 0xb450f7cc, 0x0dbc16df
.word 0xa04f8997, 0xd32d170e, 0xa5fb7124, 0xa1dbcf96, 0x38cd6039, 0xfe7fa29f, 0xe2e77a49, 0x906c1277
.word 0xb1d39351, 0x81bec118, 0xb641e631, 0x7a0ccb03, 0x1f199e1f, 0xe4d263ad, 0xb872499e, 0x4c0bbdfc
.word 0x37e09d8f, 0x0a8968fb, 0xc6fb559e, 0xdff74d76, 0x582c1979, 0x90a302be, 0xccd41ff4, 0x31247c0a
.word 0x69b18722, 0x314ae6c6, 0x49222c4c, 0xda9dff50
.section .region_1,"aw",@progbits;
region_1:
.word 0xaf6472ae, 0x335e782f, 0x3d8ba782, 0x629f339c, 0x71a597fb, 0x37037752, 0xbbd0a9fe, 0xf7d49628
.word 0x4695864f, 0xb6ffd60b, 0x92af26b3, 0xc92ce64d, 0x42acfe2a, 0x25a83e27, 0x32604fb9, 0xc29cf8e7
.word 0x5a901105, 0xb48fd712, 0x0e717eee, 0x112840d2, 0xfdd20073, 0xb65a332b, 0x42889151, 0xdb5928d4
.word 0xf4c9dd2f, 0x216cb575, 0x22f205cd, 0x3571014b, 0x79e47bbb, 0xd150ae0b, 0xa570f9cc, 0xf71ee6d1
.word 0x070a56ac, 0x9a7a3604, 0xa0c66b85, 0x35e2e887, 0xa5e0799f, 0x602fa75a, 0x3d2de263, 0xaaf2dd6b
.word 0xfb1b11e8, 0xa1244d0c, 0x628f9b25, 0x21855013, 0xf66d82ba, 0x89a9fd3d, 0x95f98a18, 0x799941d0
.word 0x24752a07, 0xcdde8d2a, 0x6712545b, 0x4278297e, 0x5e4779ba, 0x2b46d8a8, 0x966df5e6, 0xeb3380c2
.word 0xbc39d7dd, 0x4647e88d, 0x02e7d39f, 0xac71fb3d, 0x12d40617, 0x92d3c15f, 0xd0b47857, 0x6b47d568
.word 0x4ddd0b59, 0xab808304, 0x436a6908, 0x66f887c6, 0x9f9104c9, 0x73c96743, 0xa36c8408, 0x14570232
.word 0x3bc99b99, 0x84b9c37a, 0xeab1b71c, 0x5226ba1c, 0x2e704374, 0x403763d7, 0xc4f926d3, 0x9c109efd
.word 0xb53cf139, 0x40aa5644, 0x9a3a038d, 0xdd039ffb, 0x07ec8c2f, 0x0aa9cd76, 0x67e065ed, 0xdd369863
.word 0xba90def2, 0xfbfa8ee9, 0x22817968, 0x6e0c8d23, 0xdf0f8343, 0xa36359d1, 0xfddcd357, 0x8db9efb2
.word 0x466f39d9, 0x9883e495, 0xd84b685d, 0x754e2f41, 0x5c59565d, 0x04b59a74, 0x75e948d9, 0x9a3c8443
.word 0xe3470a79, 0x33a1ce72, 0x4072525c, 0x8667c58b, 0xfc7eba25, 0xc9c051b8, 0xed3e08d8, 0x4e42bcd5
.word 0x1b004764, 0xa2192cbc, 0x5aeb46b2, 0xdc3829cb, 0x57e5a8ef, 0x1c537899, 0xc757a0fc, 0xe1437628
.word 0x9b6b6d5c, 0x8bbf47bc, 0x4dd6ef86, 0xc8ddc53f, 0xb2179bfa, 0x68689d8e, 0x12e58435, 0x1f6d3e9a
.word 0xef078063, 0x1a845676, 0xb39d98a1, 0xbf7bc4df, 0xaa5589a6, 0x5129669b, 0x9439d255, 0x8aca09e9
.word 0xfa437c56, 0xdae45674, 0x0e7565a4, 0x530cd127, 0xf8de8e63, 0x5a0c1fa3, 0xb5a2432d, 0x19b8e98d
.word 0xb5b3b41e, 0xb37dd5d1, 0x443e4325, 0x38fed050, 0x8d5cda11, 0x69274529, 0x9c5dd063, 0x56f85c8b
.word 0x9e94893b, 0xeee024a3, 0x271b7e4e, 0xeb3d321d, 0x6136bbc3, 0x13d0ab96, 0x4c76b93d, 0x1ad98ee3
.word 0x7c34b15d, 0x8858e7a1, 0xda88e01e, 0xcdbf1efb, 0xfb63f372, 0xbaf32b16, 0xfe9fcdda, 0x68500199
.word 0x702ec3a1, 0x7872a370, 0xfc336e0e, 0x7c0ffc03, 0x44d32955, 0x3b37973d, 0xb18d8458, 0xd655c3f6
.word 0x72551f7b, 0x20da0ef9, 0xb1fa7eb7, 0x009480d7, 0xf729e2bc, 0x9bb9fe19, 0x899d2939, 0x2705d6d3
.word 0x783798ef, 0x21325456, 0xe647d332, 0xcfb263a6, 0xf34fca1a, 0xdadfd148, 0x3416906c, 0xb7468c59
.word 0xb0a95f2e, 0xf03893d5, 0xf1b7a3ce, 0x3453fd16, 0x74549c80, 0xe3782aab, 0xb3c05a35, 0x3cbae19e
.word 0x1aa403bc, 0xf413d0fb, 0x055f20c9, 0x2a5167ed, 0x6e53bfb0, 0xb83b6cd2, 0xb0ce8be3, 0xe07c4396
.word 0x488dd06e, 0x3c9a96f3, 0x63fb34a0, 0xf4c5aa2e, 0x2419d54b, 0xfb613901, 0x3f26c79a, 0x3e3afe6c
.word 0xb60142fd, 0x004b1793, 0xee4ee373, 0xcba4b6bf, 0x49275146, 0x343f894a, 0xc8fba8b4, 0xd033da9c
.word 0x6fdea3b0, 0xcdc748e7, 0xdd15d29c, 0xe29308b0, 0x227d4774, 0x438ff735, 0x9920efd6, 0xdf0ad422
.word 0xf2df7b3a, 0xa7166b71, 0xeccce169, 0x887ca09d, 0x0437e66b, 0xfec66f14, 0x9695cec3, 0x422791b3
.word 0xed4bb64e, 0x8596e751, 0x80795840, 0x3d4fe64d, 0xd5bdeda5, 0x5cf5fccc, 0x65c37609, 0x5cdac541
.word 0x50f16417, 0x0cb57aaa, 0x6976c85b, 0x72c81fdd, 0x3212879a, 0xf0a0b421, 0x585845c1, 0xbbbbf014
.word 0x7aa7bffd, 0x48c27a21, 0xb7e8579a, 0xc524a0ce, 0xb29d9f08, 0x6fd28e85, 0xcfea34ac, 0x1f669be3
.word 0x99fa178f, 0xc78110d9, 0xb2ca1759, 0x3406deac, 0x2ae9254a, 0xf726deba, 0x5973e196, 0xfb23fb04
.word 0x62786c7f, 0xe2ea7150, 0x6281af7a, 0xacb56d6c, 0x89667728, 0x51e2b723, 0xed30bff9, 0x61f92caf
.word 0x08400b6c, 0x90e54d55, 0xe19be083, 0x1b703475, 0x1838b29c, 0x6b15983a, 0xd906b871, 0x482d6d13
.word 0x793ced0c, 0xf98ede0b, 0xe8c99a83, 0x3bb2f879, 0x8f2ea2db, 0x43b159fa, 0x8272af3c, 0x904583cf
.word 0x2343720b, 0xf9860308, 0x4dd87036, 0xc3176bb9, 0x27b9dcaf, 0xfd751048, 0xa9fb26d9, 0x31cf3cdf
.word 0xaef1b9ab, 0xe9f7cfe1, 0xa70ebfe8, 0x4f3442fc, 0x116ecadf, 0x1f1ba57e, 0x7ba237be, 0xf1654584
.word 0xe60badcb, 0xfb0c6faa, 0x2f7b611d, 0x54bd4615, 0x1ec88217, 0xc5e56ebc, 0x87596246, 0xfc80e70d
.word 0x9006b4a1, 0x30f84668, 0xa293d667, 0x46b1f5bf, 0xea48c4e9, 0x09bac148, 0xa4fcca77, 0xa14c5f99
.word 0xe09c6404, 0x270705e9, 0x1dc7c13c, 0xf3139892, 0x803b4076, 0x1773e131, 0x2d84a474, 0x6423ae9b
.word 0xf7a84464, 0x06cf789c, 0xa0358d14, 0xe40e9964, 0x85cdb96b, 0x196311b3, 0x8a88e743, 0x80eea60a
.word 0xa39dbddb, 0x850e1788, 0xa4019f6a, 0x8f92639c, 0xe2bce21b, 0xdc3494bc, 0xc384b76e, 0xa4632c21
.word 0x764c5c78, 0x9307e80e, 0x6b223e57, 0xbd5ee45e, 0xd379bc18, 0xf0a9261b, 0x38c20874, 0xdfa2678a
.word 0x351236a8, 0xb345b739, 0x85a3bd0b, 0x5febb443, 0x30156c2b, 0xf4dd6734, 0x67da1665, 0x50be231c
.word 0x404d0117, 0x787c7ba0, 0x9d016d1b, 0x25100a74, 0x5958cab9, 0x04102cb3, 0x2c525924, 0xafa71639
.word 0xb9281923, 0xa4dec270, 0xfc0e936c, 0x11bc58cf, 0x3f19bf85, 0x6bcbbde0, 0x510b74aa, 0xfc022b80
.word 0xa220397b, 0x266be808, 0x4de35780, 0xe28ecaef, 0x267bfce4, 0xe0a4d019, 0xa697c902, 0x07d4c983
.word 0x34a5121a, 0xea9adcdb, 0x7cf54d88, 0x47e74b4c, 0x3ea19221, 0xdc2b071c, 0x362f1870, 0xb0faa9c9
.word 0x72e0a2e4, 0x348e0f64, 0x1732f3d4, 0x24e5c2ab, 0xb44e4250, 0xdf80b498, 0x379d4d50, 0x1871b86b
.word 0x49f28220, 0x1b689c00, 0x158efd0a, 0xb7910b4f, 0x42b02653, 0x895cc548, 0x24d32f4f, 0x90bfd6ec
.word 0x7000682b, 0xc7ff2bff, 0xec272e44, 0x65ce38c9, 0xd8f29306, 0x4d18c8de, 0x7c6c2c45, 0xbf296eb4
.word 0x13536507, 0x658fd301, 0x9a042088, 0x6174e118, 0x1ebf8be6, 0x39202926, 0x0810cdd2, 0x413175c3
.word 0x58484dd5, 0x8b6e4d58, 0x8a09696c, 0xfac05bc5, 0x014e6cb1, 0x46482c5c, 0x1cb55f6b, 0xab8f75db
.word 0x15f11667, 0x52c87f0b, 0xa06b432a, 0x2de9cec7, 0x8c74b27b, 0xd54731f6, 0x0664cde3, 0xa67f7e1e
.word 0x0dcabecf, 0x3129b189, 0xf4669ede, 0x2d16ff6a, 0x479ccd2a, 0xb8d59f7b, 0x24bc3e0c, 0x9317a8f7
.word 0x52437f15, 0xf8f40c55, 0x226e127a, 0x3d506dc3, 0x4b9f81f2, 0xb2d606d2, 0x17d1127c, 0x87ac7453
.word 0x983edf10, 0x86da470b, 0x04e6707a, 0x5f843cd4, 0xaed2fddf, 0x8d2f8a2f, 0x0fdd4d00, 0x93fe4141
.word 0xf3b73fdc, 0x6752a5af, 0x35960820, 0x41441179, 0xe8cd4b91, 0x263c1c08, 0x983a05ec, 0xc5eaf247
.word 0x8f7d0c8c, 0x084d4ab6, 0x928866e1, 0x7774a092, 0xc83feb65, 0x09907807, 0x6d623b36, 0xee32fe38
.word 0xdf0cdfbd, 0xa8cb0548, 0xb77072e3, 0x7adf2a49, 0xc3c2a67f, 0x73479def, 0x77620942, 0x2e37f138
.word 0xbb301d95, 0xa665f2d0, 0xfec69149, 0x8590ff0c
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
                  addi x26, x26, -128
                  sw  x1, 4(x26)
                  sw  x2, 8(x26)
                  sw  x3, 12(x26)
                  sw  x4, 16(x26)
                  sw  x5, 20(x26)
                  sw  x6, 24(x26)
                  sw  x7, 28(x26)
                  sw  x8, 32(x26)
                  sw  x9, 36(x26)
                  sw  x10, 40(x26)
                  sw  x11, 44(x26)
                  sw  x12, 48(x26)
                  sw  x13, 52(x26)
                  sw  x14, 56(x26)
                  sw  x15, 60(x26)
                  sw  x16, 64(x26)
                  sw  x17, 68(x26)
                  sw  x18, 72(x26)
                  sw  x19, 76(x26)
                  sw  x20, 80(x26)
                  sw  x21, 84(x26)
                  sw  x22, 88(x26)
                  sw  x23, 92(x26)
                  sw  x24, 96(x26)
                  sw  x25, 100(x26)
                  sw  x26, 104(x26)
                  sw  x27, 108(x26)
                  sw  x28, 112(x26)
                  sw  x29, 116(x26)
                  sw  x30, 120(x26)
                  sw  x31, 124(x26)
                  add x5, x26, zero
                  csrr x4, 0x300 # MSTATUS
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 31
                  bne x4, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x4, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x4, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x4, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x4, x16, ecall_handler
                  li x16, 0x1
                  beq x4, x16, instr_fault_handler
                  li x16, 0x5
                  beq x4, x16, load_fault_handler
                  li x16, 0x7
                  beq x4, x16, store_fault_handler
                  li x16, 0xc
                  beq x4, x16, pt_fault_handler
                  li x16, 0xd
                  beq x4, x16, pt_fault_handler
                  li x16, 0xf
                  beq x4, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
                  1: la x28, test_done
                  jalr x1, x28, 0

ecall_handler:    
                  la x4, _start
                  sw x0, 0(x4)
                  sw x1, 4(x4)
                  sw x2, 8(x4)
                  sw x3, 12(x4)
                  sw x4, 16(x4)
                  sw x5, 20(x4)
                  sw x6, 24(x4)
                  sw x7, 28(x4)
                  sw x8, 32(x4)
                  sw x9, 36(x4)
                  sw x10, 40(x4)
                  sw x11, 44(x4)
                  sw x12, 48(x4)
                  sw x13, 52(x4)
                  sw x14, 56(x4)
                  sw x15, 60(x4)
                  sw x16, 64(x4)
                  sw x17, 68(x4)
                  sw x18, 72(x4)
                  sw x19, 76(x4)
                  sw x20, 80(x4)
                  sw x21, 84(x4)
                  sw x22, 88(x4)
                  sw x23, 92(x4)
                  sw x24, 96(x4)
                  sw x25, 100(x4)
                  sw x26, 104(x4)
                  sw x27, 108(x4)
                  sw x28, 112(x4)
                  sw x29, 116(x4)
                  sw x30, 120(x4)
                  sw x31, 124(x4)
                  la x28, write_tohost
                  jalr x0, x28, 0

instr_fault_handler:
                  add x26, x5, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

load_fault_handler:
                  add x26, x5, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

store_fault_handler:
                  add x26, x5, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x26, x5, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x26, x5, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x26, x5, zero
                  lw  x1, 4(x26)
                  lw  x2, 8(x26)
                  lw  x3, 12(x26)
                  lw  x4, 16(x26)
                  lw  x5, 20(x26)
                  lw  x6, 24(x26)
                  lw  x7, 28(x26)
                  lw  x8, 32(x26)
                  lw  x9, 36(x26)
                  lw  x10, 40(x26)
                  lw  x11, 44(x26)
                  lw  x12, 48(x26)
                  lw  x13, 52(x26)
                  lw  x14, 56(x26)
                  lw  x15, 60(x26)
                  lw  x16, 64(x26)
                  lw  x17, 68(x26)
                  lw  x18, 72(x26)
                  lw  x19, 76(x26)
                  lw  x20, 80(x26)
                  lw  x21, 84(x26)
                  lw  x22, 88(x26)
                  lw  x23, 92(x26)
                  lw  x24, 96(x26)
                  lw  x25, 100(x26)
                  lw  x26, 104(x26)
                  lw  x27, 108(x26)
                  lw  x28, 112(x26)
                  lw  x29, 116(x26)
                  lw  x30, 120(x26)
                  lw  x31, 124(x26)
                  addi x26, x26, 128
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
