.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x17, h0_start
jalr x0, x17, 0
h0_start:
                  li x4, 0x40000100
                  csrw 0x301, x4
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x4, mtvec_handler
                  ori x4, x4, 1
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
                  li x1, 0x1
                  li x2, 0x39fd5fd
                  li x3, 0xd58a5adb
                  li x4, 0x80000000
                  li x5, 0x80000000
                  li x6, 0x0
                  li x7, 0x7d410362
                  li x8, 0xfed6c4a0
                  li x9, 0x80000000
                  li x11, 0xf069f2ff
                  li x12, 0x0
                  li x13, 0xb8a9057c
                  li x14, 0x0
                  li x15, 0xfd742ecf
                  li x16, 0x80000000
                  li x17, 0xf4400340
                  li x18, 0x0
                  li x20, 0xec9ab007
                  li x21, 0x366a509
                  li x22, 0x472167cf
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xfa87d53c
                  li x26, 0x0
                  li x27, 0xf
                  li x28, 0xf238ece1
                  li x29, 0xf1fc8384
                  li x30, 0x0
                  li x31, 0x0
                  la x19, user_stack_end
main:             la           s8, region_0+1481 #start riscv_load_store_rand_instr_stream_6
                  lbu          t1, 72(s8)
                  lb           zero, -190(s8)
                  sb           a3, -136(s8)
                  sb           a1, -242(s8)
                  sra          s11, s1, tp
                  xori         t2, s3, 1320
                  lui          t4, 299246
                  sltiu        s6, t4, 1427
                  addi         t4, a2, 802
                  srli         s4, s2, 25
                  lb           a1, 55(s8)
                  xor          s10, a7, ra
                  sb           t1, 207(s8)
                  sb           s1, -174(s8)
                  sb           s9, -230(s8)
                  lbu          s5, 108(s8)
                  lh           s2, -239(s8)
                  slti         s0, s8, -1039
                  ori          t2, a7, -1074
                  lb           s0, -190(s8)
                  lbu          s5, 204(s8)
                  or           s11, s1, a7
                  and          s0, gp, a1
                  lbu          t5, -116(s8)
                  lui          a4, 63514
                  lbu          a2, -56(s8)
                  sll          s7, t6, a6
                  lbu          a3, -236(s8)
                  sh           a2, -215(s8)
                  or           a6, s3, t0
                  sb           a1, -188(s8)
                  sb           t2, -73(s8)
                  addi         t2, gp, -1484
                  addi         a2, s11, -1633
                  sb           a7, -193(s8)
                  sh           s9, 105(s8)
                  lb           tp, -40(s8)
                  lh           t2, -101(s8)
                  sb           sp, 24(s8)
                  srl          a6, s4, a0
                  lh           t3, -71(s8)
                  lhu          s11, 43(s8)
                  xori         s11, s4, -603
                  and          s10, a7, a3
                  ori          s9, a6, -906
                  auipc        t3, 453002
                  lui          t3, 582923
                  xor          s6, gp, s5
                  lhu          t0, -157(s8)
                  slli         s2, t4, 25
                  srai         t5, a4, 24
                  sb           a3, 218(s8)
                  sub          a6, s9, a1
                  sb           t5, 86(s8)
                  lhu          s5, 21(s8)
                  nop
                  lhu          a6, -1(s8) #end riscv_load_store_rand_instr_stream_6
                  la           s0, region_1+1637 #start riscv_load_store_rand_instr_stream_7
                  sb           gp, 8(s0)
                  andi         t2, a5, 1925
                  srl          s7, s11, t0
                  lbu          s6, -9(s0)
                  sb           t3, 36(s0)
                  sb           a2, 36(s0)
                  srl          t1, a3, t3
                  lw           a4, -45(s0)
                  sb           s10, -16(s0)
                  lw           s2, 15(s0)
                  sb           zero, 0(s0)
                  andi         s9, t6, -666
                  lw           s7, -29(s0)
                  auipc        t6, 487475
                  srli         zero, a5, 23
                  lh           s1, -53(s0)
                  lbu          gp, -14(s0)
                  lb           s9, -15(s0)
                  lbu          s2, 59(s0)
                  nop
                  lbu          t4, -50(s0)
                  xori         s6, s6, -853
                  lb           a1, -19(s0)
                  lhu          s7, -9(s0)
                  nop
                  xor          t6, s2, s2
                  lbu          t0, -50(s0)
                  lb           t6, -10(s0)
                  lhu          ra, 59(s0)
                  xori         a3, ra, 1404
                  xori         a5, t1, -1425
                  sb           s9, -4(s0)
                  srai         t6, t5, 7
                  lb           gp, 23(s0)
                  andi         s1, s10, 514
                  lbu          s6, 61(s0)
                  srl          a5, t0, t6
                  sb           s11, 9(s0)
                  lb           a5, -30(s0)
                  sb           a3, 64(s0)
                  lb           t0, -12(s0) #end riscv_load_store_rand_instr_stream_7
                  la           t0, region_1+1862 #start riscv_load_store_rand_instr_stream_10
                  andi         s1, a4, -859
                  srli         s10, t2, 14
                  sub          ra, s8, t4
                  srl          s8, s8, s11
                  sltu         t5, s9, a1
                  add          t3, t2, t0
                  lhu          s6, 16(t0)
                  lhu          s7, 26(t0)
                  xori         s2, t0, -314
                  ori          s5, a3, -627
                  nop
                  sltu         a5, t4, t1
                  sh           s9, -64(t0)
                  xor          s10, t6, t2
                  sltiu        t5, a7, -1738
                  sh           s1, -2(t0)
                  addi         s9, sp, -1407
                  lb           a2, 46(t0)
                  lbu          sp, 16(t0)
                  slti         tp, s3, 2017
                  slti         t5, s6, 1779
                  lbu          s6, 13(t0)
                  sb           t4, -46(t0)
                  or           a6, s7, s10
                  sltiu        s7, gp, 1002
                  srli         t6, s7, 1
                  sll          t2, s5, a7
                  andi         a5, s11, 1695
                  lbu          a4, -8(t0)
                  ori          t3, gp, 1717
                  sb           gp, 10(t0)
                  slti         s8, s7, 1353
                  sll          s11, s8, a7
                  lb           s8, 26(t0) #end riscv_load_store_rand_instr_stream_10
                  la           s11, region_0+1844 #start riscv_load_store_rand_instr_stream_4
                  xor          s6, a5, s3
                  nop
                  lbu          s5, 35(s11)
                  sh           a5, -166(s11)
                  lhu          a3, 14(s11)
                  lhu          tp, 16(s11)
                  srai         s7, s6, 4
                  sltiu        tp, sp, -1440
                  sb           a4, 69(s11)
                  lb           t5, 25(s11)
                  lb           sp, -101(s11)
                  sb           s10, 137(s11)
                  lbu          a3, -149(s11)
                  lb           t4, -149(s11)
                  sb           a5, -250(s11)
                  lb           s0, 95(s11)
                  srl          a6, s10, t3
                  sb           s8, 85(s11)
                  or           t0, ra, s9
                  sb           zero, -85(s11)
                  sh           sp, 134(s11)
                  slt          s4, t0, s3
                  sb           s3, -237(s11)
                  srai         sp, s3, 28
                  auipc        s0, 569819
                  sw           zero, -24(s11)
                  sb           a0, -43(s11)
                  lbu          t2, 111(s11)
                  lbu          t6, -79(s11)
                  sb           a6, -17(s11)
                  sb           t4, 13(s11)
                  xori         tp, s4, 1385
                  srli         s9, s11, 6
                  xor          tp, t4, t1
                  auipc        a5, 314422
                  add          t5, s5, sp
                  lbu          s0, -170(s11)
                  andi         s1, s0, -1015
                  lbu          t6, -226(s11)
                  lb           s1, 23(s11)
                  or           t1, s4, a0
                  lhu          s4, 118(s11)
                  lbu          s6, -208(s11)
                  nop
                  sb           a2, -141(s11)
                  lb           s10, -127(s11) #end riscv_load_store_rand_instr_stream_4
                  la           tp, region_0+1079 #start riscv_load_store_rand_instr_stream_3
                  or           s7, s0, t4
                  sltiu        zero, a0, -1755
                  xor          ra, s1, s7
                  or           s0, t4, t3
                  lh           a1, -37(tp)
                  sb           a7, 50(tp)
                  nop
                  nop
                  slli         s6, ra, 27
                  lhu          s2, 27(tp)
                  lb           s6, -32(tp)
                  auipc        ra, 409553
                  sb           s3, 12(tp)
                  srl          s0, a5, t6
                  lb           s1, -14(tp)
                  sltu         t4, s9, t6
                  lw           t2, -35(tp)
                  sb           s7, -23(tp)
                  srl          s0, a2, a7
                  lb           s9, 25(tp)
                  lbu          s4, 57(tp)
                  lbu          s10, -38(tp)
                  lui          s10, 440549
                  sll          ra, s9, zero
                  lbu          a3, 12(tp)
                  lb           t2, 1(tp)
                  sub          sp, gp, s1
                  sb           a3, -2(tp)
                  xori         sp, tp, 749
                  sb           a4, 2(tp)
                  sub          s5, ra, a0
                  lb           s9, -46(tp)
                  lbu          s10, 21(tp)
                  sub          t0, tp, a1
                  lbu          s4, -17(tp)
                  and          s7, a4, a0
                  lhu          t5, -35(tp)
                  lbu          t4, 30(tp)
                  addi         a5, a1, 577
                  add          t4, a1, t3
                  sra          t3, t5, s7
                  srai         t2, s1, 24
                  slli         ra, s5, 15
                  slti         t6, s2, -966
                  sb           s9, 6(tp) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_0+675 #start riscv_load_store_rand_instr_stream_8
                  sub          t4, a5, t1
                  sb           a6, -50(s9)
                  lb           t2, 50(s9)
                  lhu          s1, -37(s9)
                  and          s10, a2, ra
                  ori          t5, tp, 139
                  lb           sp, 8(s9)
                  sh           s0, 15(s9)
                  lw           a3, 1(s9)
                  sb           a2, -30(s9)
                  andi         t3, s1, 917
                  lbu          t6, 38(s9)
                  or           t3, a0, t6
                  lb           s11, -54(s9)
                  or           gp, a7, t3
                  lbu          s0, -54(s9)
                  and          s4, t3, t3
                  lb           t0, -29(s9)
                  srai         a4, s11, 11
                  lw           s10, 45(s9)
                  lhu          s10, 31(s9)
                  lb           s1, -5(s9)
                  lbu          s7, 32(s9)
                  sb           s11, -27(s9)
                  sw           a2, -47(s9)
                  and          zero, a4, zero
                  sh           s7, -13(s9)
                  sltu         a5, s4, s7
                  slti         a6, ra, -2041
                  slli         ra, a4, 19
                  sh           t2, -25(s9)
                  sb           ra, 57(s9)
                  lhu          zero, -47(s9)
                  lhu          tp, -17(s9)
                  lbu          a6, -49(s9)
                  sb           s10, -10(s9)
                  lhu          s5, -43(s9) #end riscv_load_store_rand_instr_stream_8
                  la           a3, region_1+1703 #start riscv_load_store_rand_instr_stream_9
                  or           s0, a0, s1
                  sub          s1, s7, a5
                  sb           s5, 30(a3)
                  lh           a2, 41(a3)
                  addi         tp, a4, 111
                  srl          t4, s4, t2
                  sw           a3, -31(a3)
                  sltiu        tp, sp, -1163
                  andi         t5, t2, -1181
                  sub          t6, s0, a3
                  sb           zero, 28(a3)
                  srai         t0, tp, 4
                  sh           a5, -63(a3)
                  slli         s6, t0, 7
                  sw           t4, -51(a3)
                  sb           s0, 20(a3)
                  srai         zero, s3, 2
                  sb           a1, 48(a3)
                  lh           a2, 63(a3)
                  sb           a5, 38(a3)
                  sh           s8, -3(a3)
                  lb           a5, -26(a3)
                  lb           t2, -43(a3)
                  sra          s2, zero, t2
                  addi         s5, gp, -468
                  lh           s2, 47(a3)
                  lhu          t6, 47(a3)
                  sh           s8, 53(a3)
                  srli         t6, t4, 16
                  lw           a4, -43(a3)
                  lb           s9, 49(a3)
                  add          a1, a5, gp
                  lui          s7, 174460
                  sb           a5, -54(a3)
                  xori         a2, s8, -1013
                  or           t2, t2, t5
                  lui          ra, 347096
                  and          s4, s2, gp
                  add          zero, s11, a7
                  lb           s5, 42(a3)
                  lb           ra, 35(a3)
                  slti         t4, s4, -1110
                  sb           s4, -18(a3)
                  lb           s8, -1(a3)
                  lb           s0, -16(a3)
                  sb           s0, 22(a3)
                  srai         sp, s2, 3
                  lw           s1, -27(a3)
                  srl          a4, t3, tp
                  andi         s7, ra, -1238
                  lb           t3, -18(a3)
                  sub          s11, gp, ra
                  sw           s0, 1(a3)
                  slt          t4, s2, a5
                  lb           t2, 60(a3)
                  lbu          t0, -64(a3) #end riscv_load_store_rand_instr_stream_9
                  la           a3, region_1+1622 #start riscv_load_store_rand_instr_stream_1
                  lb           t1, -1433(a3)
                  lw           s0, -1538(a3)
                  lbu          a2, 67(a3)
                  sb           s9, 350(a3)
                  lbu          t1, -1165(a3)
                  xor          gp, s10, s9
                  sub          s6, a4, t0
                  lbu          t0, -372(a3)
                  sb           s5, -1273(a3)
                  sb           ra, -673(a3)
                  add          sp, t5, a0
                  lb           s2, -609(a3)
                  srai         t0, s1, 21
                  sb           s11, -1023(a3)
                  srl          t6, s5, s11
                  sb           s6, -1551(a3)
                  add          s1, t4, t5
                  xori         s6, zero, 82
                  lh           s0, -1284(a3)
                  lb           t3, -668(a3)
                  sb           a7, -657(a3)
                  lh           zero, -842(a3)
                  addi         s2, t3, 1309
                  ori          s1, t6, 1189
                  lbu          s11, -895(a3)
                  lw           t5, -186(a3)
                  sll          s11, s9, sp
                  lui          s9, 475652
                  sb           t5, -1541(a3)
                  sra          s4, gp, ra
                  sb           ra, -568(a3)
                  lb           t2, -854(a3)
                  and          s1, s3, a2
                  lbu          s7, 61(a3)
                  sll          s11, a2, s5
                  lb           a6, 131(a3)
                  srli         s11, s9, 21
                  srli         s9, s0, 14
                  xori         t5, a3, 1627
                  lhu          s1, -1334(a3)
                  sltiu        t3, s0, -1318
                  lh           t6, -1082(a3) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_0+1915 #start riscv_load_store_rand_instr_stream_2
                  lb           s10, -1806(gp)
                  lb           t1, -104(gp)
                  lb           s2, -1386(gp)
                  sb           t0, -450(gp)
                  lb           t0, -1464(gp)
                  sll          a4, zero, a5
                  slti         a2, a1, -1987
                  lh           s1, -1053(gp)
                  sb           s1, -1746(gp)
                  sub          s6, a7, sp
                  sw           s9, -1735(gp)
                  slli         t4, t5, 3
                  sw           t2, -1359(gp)
                  sb           t1, -108(gp)
                  sw           s8, -1051(gp)
                  sub          tp, zero, tp
                  srli         s7, s10, 11
                  sb           t3, -1167(gp)
                  sh           s5, -1647(gp)
                  auipc        sp, 840256
                  sub          t3, t1, a7
                  sltu         s8, s2, zero
                  sub          t3, t4, t1
                  andi         sp, s5, -103
                  slt          zero, s0, a7
                  nop
                  lbu          t3, -1674(gp)
                  sb           tp, -496(gp)
                  lbu          s6, -1850(gp)
                  lbu          s2, -798(gp)
                  srai         s6, a2, 6
                  lhu          a6, -1125(gp)
                  lb           a6, -1728(gp)
                  lbu          t0, -284(gp)
                  lb           sp, -396(gp)
                  sub          t3, s2, s8
                  lhu          t4, -1191(gp)
                  lbu          s4, -425(gp)
                  lh           s4, 59(gp) #end riscv_load_store_rand_instr_stream_2
                  la           a4, region_0+1646 #start riscv_load_store_rand_instr_stream_0
                  and          gp, sp, s2
                  lbu          a1, 27(a4)
                  srl          t3, s2, t1
                  auipc        tp, 279711
                  sb           s2, 21(a4)
                  xor          t3, a5, s0
                  sb           zero, -4(a4)
                  or           zero, s7, t1
                  andi         a2, t1, 1577
                  addi         s9, a2, 483
                  sub          t3, t2, ra
                  add          s10, s9, a5
                  lbu          s1, 54(a4)
                  lbu          a2, -5(a4)
                  slti         t4, t3, -1152
                  lbu          s10, -18(a4)
                  lhu          s11, 0(a4)
                  sra          s0, s0, a1
                  slti         t3, s8, 1132
                  slti         zero, s6, 105
                  sra          s10, t6, a5
                  sw           ra, -54(a4)
                  lbu          s10, 17(a4)
                  or           s0, a7, ra
                  slti         zero, zero, 627
                  lbu          t6, 11(a4) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_1+1539 #start riscv_load_store_rand_instr_stream_12
                  lbu          a3, 2(s2)
                  lbu          tp, 6(s2)
                  sb           s1, -4(s2)
                  sra          t2, gp, t4
                  add          zero, t3, s4
                  lb           s0, 12(s2)
                  sh           t4, -15(s2)
                  lui          s8, 16947
                  lb           t3, -2(s2)
                  srl          s7, a6, a5
                  xori         zero, t1, 1304
                  sra          ra, a4, a4
                  add          tp, s2, gp
                  sltu         gp, zero, s8
                  lbu          sp, -10(s2)
                  and          sp, s8, s11
                  srl          t0, t3, a4
                  sltu         s8, s7, s5
                  sb           s2, 4(s2)
                  slt          sp, s5, a0
                  auipc        tp, 148483
                  sb           a5, 6(s2)
                  lbu          t6, -4(s2)
                  lbu          t2, -15(s2)
                  addi         ra, t1, 1568
                  lbu          t0, 5(s2)
                  or           sp, s11, s1
                  srli         s9, t5, 19
                  lb           s7, -2(s2)
                  lbu          s0, -5(s2)
                  add          s11, t3, t1
                  lbu          zero, 7(s2)
                  andi         a4, t6, 1016
                  lw           a6, -15(s2)
                  and          sp, t0, t4
                  slt          t6, s5, s8
                  srl          s5, s7, s11
                  sra          s4, s6, t6
                  addi         s1, a2, 1810
                  sltu         s8, s11, s9
                  slti         a1, a5, 604
                  lb           a2, -1(s2)
                  lbu          s4, -13(s2) #end riscv_load_store_rand_instr_stream_12
                  ori          a6, s9, -801
                  andi         zero, gp, 791
                  blt          t0, t2, 20f
                  and          s8, ra, s0
                  bge          a7, t5, 20f
                  xori         t3, a7, -229
                  and          t2, a1, a4
                  blt          s2, s4, 24f
                  srai         zero, s6, 9
                  srai         s2, t3, 8
                  andi         t3, s1, -48
                  xor          s11, s3, a5
                  srli         s8, a6, 24
                  or           t1, s4, a4
                  addi         s10, t2, 350
                  xor          gp, s0, a3
                  bltu         s7, zero, 20f
                  srl          t6, a1, a5
                  srli         t5, a2, 17
                  sltiu        s5, t3, 999
20:               sll          s4, t1, t3
                  slti         s1, tp, -1156
                  bgeu         t2, t2, 42f
                  bge          t5, a7, 32f
24:               sltiu        s8, a2, -1885
                  slli         s9, a4, 7
                  bgeu         s8, t6, 46f
                  auipc        sp, 633467
                  bltu         zero, t5, 41f
                  srai         s10, s5, 24
                  bne          s5, t3, 48f
                  bltu         gp, sp, 51f
32:               blt          s3, t5, 34f
                  xor          a3, t3, s7
34:               nop
                  xor          s7, a7, s5
                  auipc        zero, 142745
                  add          tp, tp, zero
                  sltu         s10, s8, s4
                  add          s7, s7, s2
                  ori          s4, gp, -1376
41:               xori         a3, t0, -1870
42:               srl          zero, s9, t2
                  and          zero, tp, t0
                  srl          a5, s2, s6
                  bge          tp, t6, 54f
46:               ori          sp, tp, 236
                  slli         t2, t0, 10
48:               bgeu         a6, s4, 63f
                  or           s1, s3, t3
                  sltu         a6, t4, ra
51:               beq          s0, s11, 62f
                  xori         t0, s10, 1614
                  xor          a1, s0, ra
54:               sltiu        s9, a5, 225
                  blt          t6, s3, 72f
                  slt          a4, t5, s4
                  slti         ra, s2, 533
                  auipc        t4, 1017801
                  lui          t4, 350374
                  lui          s5, 93401
                  sltiu        s8, t6, 919
62:               bltu         s10, a0, 71f
63:               auipc        t6, 185453
                  andi         s0, t6, 251
                  srli         zero, s10, 21
                  sltu         s10, s8, zero
                  xori         sp, s10, -1848
                  sltiu        s10, s3, 450
                  srl          ra, t0, zero
                  sltiu        s6, a0, 1794
71:               srl          a5, s2, s2
72:               andi         sp, s8, 1464
                  bltu         ra, a4, 79f
                  ori          s10, t4, -298
                  bge          s1, s10, 87f
                  beq          a1, t0, 94f
                  lui          zero, 950
                  sltiu        a2, s7, 1023
79:               srai         tp, s3, 26
                  bne          sp, s3, 85f
                  srai         t3, a7, 19
                  bge          t4, ra, 88f
                  slti         zero, t2, -274
                  sub          s9, s0, a1
85:               srai         s10, t3, 7
                  srai         t4, s8, 4
87:               xori         s4, sp, 1900
88:               blt          t5, s5, 91f
                  bge          t2, a6, 109f
                  bne          a1, t2, 96f
91:               addi         gp, s3, 6
                  beq          a6, s0, 99f
                  sltu         a4, t1, t3
94:               beq          a5, zero, 107f
                  addi         t2, s9, -1973
96:               slti         s9, t4, 35
                  sll          s9, t4, a1
                  slli         t6, t2, 12
99:               bge          s0, t5, 112f
                  blt          t5, s10, 110f
                  sub          s4, t4, s10
                  xori         s4, t0, 657
                  sub          ra, a6, t3
                  andi         gp, s0, -1810
                  or           s8, a3, gp
                  srl          s5, zero, tp
107:              slli         a6, t0, 0
                  auipc        s5, 1020067
109:              xori         t0, s5, 448
110:              sltiu        t6, a2, 467
                  andi         s0, s8, -208
112:              add          s0, t2, s3
                  andi         t2, t0, -1711
                  addi         a5, zero, 1571
                  srli         s0, s11, 16
                  bgeu         t0, zero, 126f
                  srl          s0, s11, s7
                  srai         s9, t5, 5
                  ori          t4, t3, 1124
                  bltu         t3, a2, 122f
                  bge          t2, s6, 126f
122:              sub          a4, a0, a0
                  auipc        t5, 869327
                  sra          s1, s9, t1
                  or           s1, s2, s6
126:              blt          s8, s1, 146f
                  auipc        tp, 112496
                  addi         s10, a2, 1227
                  add          a4, s10, tp
                  bge          zero, s6, 142f
                  slli         tp, t5, 28
                  xor          t0, t3, tp
                  add          sp, a2, ra
                  bge          ra, a0, 152f
                  bltu         a4, a3, 141f
                  sll          s8, s9, a3
                  bgeu         t4, s6, 144f
                  slti         s7, tp, -1692
                  blt          s9, t4, 154f
                  xor          t2, s10, a2
141:              srai         ra, s8, 5
142:              slt          a1, a1, a0
                  nop
144:              sltiu        s6, a2, 1425
                  slli         a4, s6, 1
146:              auipc        tp, 834807
                  srli         s10, s11, 27
                  slt          t6, a1, a3
                  sltu         s10, s6, s2
                  sub          s2, a4, s2
                  lui          s9, 410345
152:              sltu         ra, gp, t1
                  and          ra, s8, s2
154:              add          t5, s1, a5
                  xor          s5, t5, s3
                  xori         s10, tp, 1098
                  slti         t1, t5, 463
                  bltu         s11, sp, 171f
                  bge          a7, s1, 176f
                  sub          s2, s0, t5
                  bgeu         s2, a7, 181f
                  addi         s2, s9, -1431
                  and          a3, t4, a2
                  xori         s10, t0, -1059
                  sll          s11, s9, s0
                  srli         s7, s2, 1
                  beq          t0, s9, 183f
                  sltu         s0, s6, s5
                  blt          s11, a1, 189f
                  and          a2, s8, a4
171:              slt          a1, a1, a1
                  xor          s11, s8, a1
                  bgeu         t1, s11, 182f
                  srli         tp, tp, 11
                  bgeu         s2, s2, 178f
176:              sltu         t2, t6, s3
                  nop
178:              srai         s11, s3, 25
                  ori          s5, s5, -1193
                  sra          a4, a5, s6
181:              ori          s8, s4, 1331
182:              xor          tp, sp, sp
183:              nop
                  bne          s2, t1, 204f
                  andi         s8, ra, 1671
                  slti         t3, a3, -1024
                  xor          s6, s11, s11
                  bge          s9, s1, 197f
189:              srli         s10, a0, 26
                  sltu         t4, s10, t2
                  ori          zero, s5, 1945
                  sub          s5, ra, a2
                  sra          s9, t2, s3
                  xor          ra, s10, a5
                  xori         ra, s9, -974
                  andi         a3, s8, -680
197:              slti         ra, s7, 1320
                  bge          a3, s11, 211f
                  srli         ra, a3, 29
                  slti         gp, gp, -992
                  bne          s10, zero, 214f
                  auipc        s10, 634367
                  slt          t4, sp, a5
204:              nop
                  xor          a1, s9, sp
                  bgeu         s8, t5, 208f
                  bgeu         s9, s3, 213f
208:              bltu         a5, s9, 226f
                  and          t0, a1, t2
                  addi         t3, tp, -177
211:              sra          t2, t6, s3
                  xor          t1, a5, t1
213:              sltiu        t6, s10, 1482
214:              srai         t0, tp, 8
                  slti         s2, gp, -59
                  ori          a4, t0, -787
                  sltiu        s10, t6, -1364
                  xor          t0, sp, s1
                  xori         t1, a1, -1162
                  srai         a5, ra, 27
                  xor          a1, gp, s9
                  addi         s2, s0, -1507
                  nop
                  sll          s2, s7, s3
                  and          a2, s5, s11
226:              slli         s6, a7, 7
                  slli         s1, s1, 28
                  sub          a3, s2, t4
                  beq          gp, s10, 231f
                  bne          s11, t5, 240f
231:              or           s7, s7, t6
                  slt          s9, s1, s5
                  and          s0, s8, a6
                  sltu         a3, a3, s11
                  and          t4, a0, s9
                  and          t6, s11, sp
                  xori         s1, s10, 1897
                  bne          s11, s5, 248f
                  srli         t6, t2, 19
240:              sltu         t3, s0, t1
                  bgeu         t3, ra, 259f
                  ori          t6, a0, -168
                  sltiu        ra, sp, -1519
                  and          gp, s4, ra
                  slli         a1, gp, 16
                  addi         s10, a3, -1731
                  srli         a4, a0, 16
248:              beq          a1, t4, 252f
                  addi         gp, a7, -236
                  slli         t6, s1, 16
                  bne          s11, a4, 257f
252:              blt          a3, s1, 269f
                  bge          sp, t6, 262f
                  beq          a5, t6, 265f
                  sltiu        s6, a6, -674
                  xor          t5, a5, t3
257:              nop
                  bgeu         t3, s0, 276f
259:              srli         s1, s1, 3
                  srai         t5, s8, 20
                  sra          s2, s5, s2
262:              add          t3, a0, s5
                  or           s7, a7, a3
                  and          t3, t4, t2
265:              sltiu        t1, t5, 1111
                  addi         s6, a6, 1887
                  srli         t5, s5, 23
                  sltu         t0, a3, s3
269:              blt          t6, t3, 289f
                  sub          s8, s9, s3
                  bge          zero, s1, 274f
                  add          a1, a2, ra
                  srli         t5, s2, 6
274:              sra          s8, t3, zero
                  nop
276:              andi         a1, s2, -78
                  srl          zero, t4, s11
                  auipc        s0, 595599
                  sll          s2, a4, t4
                  sltu         a3, t2, t6
                  la           tp, sub_1
                  lui          a5, 889903
                  nop
                  and          a3, a4, sp
                  addi         tp, tp, -876
                  auipc        s6, 822585
                  ori          s1, s1, -1028
main_j3:          jalr         ra, tp, 877 #jump main -> sub_1
                  or           a5, a5, s9
                  blt          s1, s10, 295f
                  sll          s1, ra, t1
                  sltu         t4, s11, s1
                  xori         a6, a1, -1727
                  srai         s5, zero, 16
                  sub          t0, t0, s7
                  sub          s2, t4, a7
                  slti         ra, s1, -208
                  addi         a3, t4, -879
                  ori          s4, zero, 1713
                  slt          s9, zero, s5
289:              bge          s1, a2, 299f
                  addi         a3, t1, -614
                  bne          tp, a7, 311f
                  ori          t6, gp, 1786
                  sll          s1, s3, s1
                  bne          a1, s11, 309f
295:              slli         gp, s4, 23
                  sra          a3, t4, t0
                  sltu         a6, a7, t3
                  slli         t4, s4, 12
299:              sub          gp, s0, a0
                  beq          t0, s9, 302f
                  bgeu         s9, t3, 310f
302:              sltiu        s8, gp, -1008
                  lui          a5, 144344
                  sll          zero, t3, a0
                  sra          a2, s6, s2
                  sub          s5, a6, zero
                  and          s2, s10, a6
                  beq          t1, a0, 328f
309:              addi         s5, t1, -112
310:              blt          s10, a6, 315f
311:              slt          t1, a5, a2
                  slt          s1, s3, s8
                  srai         s8, s4, 17
                  addi         t4, tp, 2009
315:              xor          a3, s4, zero
                  sltiu        gp, s1, -802
                  or           t5, t4, a6
                  bgeu         t2, s11, 330f
                  auipc        a4, 781825
                  or           s10, s0, tp
                  srai         a6, t0, 14
                  xori         s6, t1, 94
                  andi         s8, s7, -280
                  add          zero, s7, s9
                  bgeu         gp, s0, 331f
                  lui          t6, 620702
                  bltu         s1, a5, 347f
328:              slt          t4, s9, a5
                  srli         s2, s3, 29
330:              bge          t6, t3, 336f
331:              add          t0, zero, a6
                  and          t2, ra, t6
                  sltiu        s1, a2, -1101
                  beq          tp, a4, 351f
                  slti         t6, s5, -164
336:              bgeu         t1, s7, 349f
                  blt          a1, s6, 348f
                  blt          t2, s1, 356f
                  and          t5, s7, s5
                  bge          a3, tp, 344f
                  sll          gp, s2, a7
                  xori         t1, t5, -1775
                  sra          t2, t3, tp
344:              nop
                  addi         sp, a1, -187
                  slt          tp, s6, s3
347:              xori         sp, t0, 1087
348:              sll          s10, ra, t2
349:              sltiu        a3, a3, 1878
                  xor          t0, s11, t6
351:              sltu         s6, a7, s1
                  sltiu        a1, s5, 1590
                  sll          s8, t0, s3
                  sra          s9, s4, t5
                  srai         a4, t1, 1
356:              sltiu        ra, t1, -1129
                  srai         t0, a5, 19
                  sll          t0, s2, a1
                  auipc        t5, 104729
                  sltiu        t3, t0, 349
                  sll          s7, t6, t5
                  ori          s0, a2, 1814
                  lui          a4, 65609
                  and          t2, s2, t1
                  auipc        s2, 793750
                  sll          s10, t3, t6
                  xori         s1, a2, 815
                  sub          t3, t4, t0
                  bltu         gp, tp, 375f
                  addi         t4, s8, 1275
                  bgeu         ra, s9, 373f
                  slt          s0, a5, ra
373:              xori         s10, s2, -898
                  addi         sp, s2, -1459
375:              add          s4, a4, a5
                  xori         t1, t3, -2033
                  slt          s9, a5, ra
                  xor          t1, zero, s7
                  andi         s0, t0, 455
                  nop
                  bge          sp, s1, 394f
                  ori          s5, t0, -375
                  slt          s4, s11, s10
                  sll          a3, s11, t6
                  auipc        s2, 126241
                  beq          s1, s1, 404f
                  and          s2, a6, s3
                  bge          a2, tp, 395f
                  slt          s1, a7, s7
                  sub          s0, tp, gp
                  slt          s10, t6, a5
                  slli         zero, s11, 7
                  sltu         t6, t2, a0
394:              lui          a6, 236595
395:              lui          s11, 80530
                  add          t6, t3, a6
                  addi         t3, s8, -2007
                  slli         s11, s5, 15
                  addi         tp, s1, 105
                  sltiu        a1, sp, 651
                  auipc        tp, 148115
                  sltu         t2, a0, s2
                  xori         s0, a5, -1949
404:              beq          s2, t3, 417f
                  sltiu        s7, s3, 245
                  or           a4, a1, sp
                  beq          gp, t6, 417f
                  slti         t6, a5, 1962
                  srl          a5, t2, t2
                  lui          t5, 684649
                  sub          s10, s0, s7
                  sltiu        t5, s4, -190
                  xori         s4, a4, -749
                  srli         s9, s10, 4
                  sra          t2, s9, s1
                  slti         s0, t6, 1738
417:              or           t5, s8, s4
                  add          s0, s5, s10
                  sll          s7, tp, s10
                  sub          ra, a0, s10
                  andi         ra, t2, 698
                  auipc        sp, 652809
                  bltu         t1, ra, 439f
                  sra          s5, t0, tp
                  or           s8, t6, s9
                  xori         s1, t1, -1090
                  auipc        s1, 718999
                  andi         s8, gp, -152
                  srli         a4, a2, 17
                  add          s4, a6, s2
                  slli         s5, gp, 22
                  srli         a2, t2, 27
                  xori         t0, s9, 1231
                  slli         s6, s6, 18
                  srli         t6, s10, 15
                  or           t6, s0, s3
                  ori          s5, a3, -693
                  nop
439:              srai         s8, s11, 20
                  srai         ra, sp, 1
                  andi         t1, s11, 1417
                  la           sp, region_1+845 #start riscv_load_store_rand_instr_stream_5
                  srli         t1, t5, 1
                  or           t3, t4, a6
                  srl          a4, s2, zero
                  andi         a4, s2, 1626
                  nop
                  or           s8, s7, a5
                  addi         a6, a1, 1063
                  and          ra, sp, s4
                  slti         s4, s11, -1196
                  lbu          t1, -20(sp)
                  lbu          a3, -45(sp)
                  lb           t0, -37(sp)
                  sub          s8, s9, a1
                  sltiu        a2, t3, 1708
                  sb           t6, 4(sp)
                  add          s0, a1, s11
                  and          s1, a1, s6
                  srai         a3, t1, 22
                  lb           ra, -44(sp)
                  sltu         s4, s1, s7
                  lb           a4, 2(sp)
                  lbu          t3, -46(sp)
                  srli         t2, ra, 6
                  lui          zero, 899264
                  sb           s0, 34(sp)
                  srli         a4, zero, 23
                  sra          s11, t0, s4
                  sll          a4, gp, t2
                  addi         s4, a7, -1147
                  lhu          t6, 27(sp)
                  sltu         t5, s6, s5
                  lbu          t6, 4(sp) #end riscv_load_store_rand_instr_stream_5
                  srai         t3, a0, 11
                  xori         sp, s10, -1158
                  sub          s8, t4, s7
                  srai         a6, t1, 27
                  srai         s1, t4, 27
                  sra          zero, ra, a7
                  sltu         s9, s4, a6
                  and          a6, tp, zero
                  auipc        t6, 718370
                  srai         a1, tp, 0
                  add          gp, s0, s9
                  beq          a6, a4, 462f
                  srl          s11, t6, s10
                  lui          t4, 212640
                  slli         s8, t0, 1
                  srli         s2, a4, 29
                  srl          a1, t5, s4
                  slti         t0, s9, 546
                  slt          s2, sp, s6
                  bltu         s11, s3, 470f
462:              sll          t3, s1, s9
                  sltu         t4, s7, a1
                  slti         t4, s8, -669
                  slli         t3, s10, 29
                  bgeu         a2, t1, 486f
                  nop
                  slti         ra, s6, -1550
                  sltu         t5, t6, s6
470:              xori         sp, zero, -1962
                  nop
                  xor          tp, gp, a3
                  bge          a3, t2, 486f
                  auipc        s11, 627943
                  nop
                  bgeu         t1, t5, 482f
                  ori          a3, a1, 1601
                  nop
                  xor          s6, zero, t3
                  slli         t5, s3, 15
                  lui          t6, 101113
482:              nop
                  bne          t3, a5, 503f
                  bltu         s10, t3, 502f
                  auipc        s6, 735416
486:              bltu         s8, s0, 489f
                  xori         s9, t2, -1703
                  sra          zero, ra, t3
489:              andi         zero, s1, -1580
                  xor          ra, a5, s7
                  xori         a1, s6, 1785
                  sra          a1, s4, s3
                  srli         zero, a3, 30
                  blt          a5, ra, 503f
                  or           a4, a7, a5
                  sll          t0, s9, a1
                  blt          s9, sp, 506f
                  xor          a5, gp, t0
                  and          s4, s1, a4
                  andi         a4, t4, -1605
                  xor          sp, s5, s11
502:              addi         ra, s0, -1459
503:              sub          s8, a4, ra
                  srl          s4, s3, a2
                  beq          s4, zero, 522f
506:              auipc        s11, 897744
                  sltu         a3, a0, t0
                  nop
                  bge          a1, t6, 519f
                  bge          t3, s0, 522f
                  beq          a1, t5, 528f
                  sub          s4, t2, s11
                  beq          s2, a0, 515f
                  la           t0, region_1+432 #start riscv_load_store_rand_instr_stream_11
                  lhu          s11, 144(t0)
                  sh           a4, 50(t0)
                  sh           ra, 22(t0)
                  xor          s1, s5, s9
                  sh           sp, 52(t0)
                  sb           gp, 102(t0)
                  srli         tp, a0, 2
                  addi         sp, s6, 936
                  sh           s4, -202(t0)
                  lhu          a6, 162(t0)
                  lb           s11, -10(t0)
                  or           ra, s7, a4
                  add          a6, t3, t4
                  lbu          gp, 149(t0)
                  srli         t1, a0, 25
                  lb           gp, 243(t0)
                  sll          s11, s1, t1
                  sra          s4, s0, t6
                  lui          t4, 919560
                  sb           s3, 200(t0)
                  xori         s1, a3, 914
                  or           s4, sp, t6
                  slti         s9, s10, 1030
                  lbu          t1, 114(t0)
                  lb           s9, 21(t0)
                  sll          a4, a6, s7
                  lbu          s11, -134(t0)
                  lbu          s11, -76(t0)
                  lbu          a2, 239(t0)
                  slti         a5, t3, -1665
                  lbu          t2, -35(t0)
                  lhu          t6, -4(t0)
                  sh           tp, 208(t0)
                  sh           s0, 14(t0)
                  ori          s6, s5, -1827
                  lh           s2, 10(t0)
                  sub          s5, t5, a6
                  lbu          s8, -168(t0)
                  lb           a3, -149(t0)
                  lbu          s5, -134(t0)
                  srai         t1, s2, 19
                  sh           t0, -138(t0)
                  auipc        a2, 418211
                  sw           s11, -104(t0)
                  sb           s4, -69(t0)
                  sw           a0, 252(t0)
                  xor          t5, s5, sp
                  sltiu        ra, s11, 120
                  sh           a5, -36(t0) #end riscv_load_store_rand_instr_stream_11
                  srl          t5, ra, t4
515:              xori         tp, a0, -756
                  sltiu        ra, s4, 1052
                  slt          a5, t6, a1
                  sub          s5, t5, a7
519:              slli         s5, sp, 6
                  add          s11, a5, zero
                  sra          ra, s1, a5
522:              xori         t4, s9, 1381
                  nop
                  sltu         zero, t1, s4
                  srli         ra, tp, 19
                  srli         s11, sp, 21
                  sra          sp, s11, t5
528:              auipc        s0, 211699
                  add          sp, s2, a6
                  blt          s1, s6, 548f
                  add          a3, t6, gp
                  sra          s6, s7, s6
                  sub          a5, t6, a3
                  addi         s7, ra, -25
                  blt          s3, s4, 548f
                  slt          t6, s1, a4
                  nop
                  blt          s0, s11, 540f
                  xor          s5, ra, t1
540:              slt          t1, a1, s9
                  srl          s8, s10, t2
                  lui          t6, 156896
                  sltu         gp, s9, sp
                  sub          s5, a5, a6
                  sra          ra, sp, a3
                  sll          a6, t3, s0
                  srai         a3, t4, 5
548:              srai         a1, a4, 17
                  srai         s8, t1, 20
                  auipc        s10, 220447
                  lui          t6, 302767
                  bne          s1, a1, 563f
                  andi         s1, gp, 856
                  beq          s4, t0, 560f
                  sltu         s9, t1, sp
                  slli         tp, a2, 7
                  andi         a5, s1, 228
                  sub          s0, zero, s0
                  bgeu         s10, t2, 563f
560:              slti         s9, t5, -309
                  auipc        s2, 792511
                  xori         s9, s8, 498
563:              beq          tp, zero, 583f
                  srai         s10, t1, 3
                  sll          ra, s10, ra
                  lui          t0, 583801
                  or           s11, s8, t6
                  bge          t5, t4, 581f
                  andi         s2, t0, 1532
                  srl          s8, s4, a0
                  xori         s8, zero, -1206
                  andi         s0, tp, 1485
                  srl          s1, s8, a4
                  auipc        tp, 875934
                  sll          t6, t4, s7
                  xori         a6, s3, 1276
                  xor          t4, t2, s6
                  slli         t2, a6, 3
                  and          s6, t2, t0
                  nop
581:              lui          a2, 46569
                  and          s7, a5, ra
583:              bltu         zero, t5, 593f
                  blt          tp, a2, 602f
                  sltu         t0, s7, t2
                  bltu         tp, a4, 601f
                  or           gp, s10, a4
                  bgeu         t3, gp, 594f
                  add          s0, tp, s3
                  sra          a6, a3, s6
                  xori         s9, a2, -692
                  sltu         s4, s4, ra
593:              or           t5, a4, a2
594:              bge          a4, s10, 603f
                  srl          a5, t5, s8
                  slli         s8, t0, 14
                  srli         s0, t2, 24
                  ori          s4, s5, 1562
                  bne          t3, s4, 606f
                  blt          a2, sp, 616f
601:              blt          s11, s11, 606f
602:              xor          s8, t4, a5
603:              or           tp, ra, t1
                  lui          t0, 59899
                  srl          s11, s8, zero
606:              sra          s10, a4, a7
                  andi         t4, s4, 906
                  add          a5, a5, s10
                  bne          a2, a7, 629f
                  or           t4, s5, t5
                  lui          s1, 513331
                  andi         a3, a7, 252
                  slli         s6, t5, 10
                  sltiu        a5, a5, -463
                  beq          s6, s6, 621f
616:              srai         t5, s10, 21
                  slli         sp, gp, 4
                  and          a4, t2, tp
                  sltiu        s1, tp, -660
                  addi         a3, s6, -1044
621:              andi         tp, a1, -1512
                  addi         t3, a4, 535
                  bltu         s5, s0, 625f
                  auipc        a3, 785269
625:              sub          s2, s6, t6
                  andi         s10, gp, -88
                  bltu         t5, a5, 631f
                  srli         t0, t4, 27
629:              slli         gp, t1, 22
                  srai         s1, s9, 3
631:              sll          s6, a5, t5
                  bge          t2, tp, 645f
                  sra          a2, t0, s0
                  slli         a1, s7, 17
                  srl          t5, s10, t0
                  slli         ra, t2, 0
                  addi         s0, s0, 1060
                  srli         t1, s8, 2
                  ori          sp, s8, -2008
                  lui          zero, 83687
                  bltu         s8, s5, 647f
                  add          s10, a2, tp
                  nop
                  xori         a5, tp, -1367
645:              add          s11, s10, s10
                  auipc        t3, 184889
647:              beq          a6, t6, 663f
                  addi         zero, gp, 487
                  bge          t2, t4, 664f
                  or           a5, t0, a5
                  srai         s7, a5, 14
                  srl          s8, t4, s4
                  add          ra, s7, s6
                  and          a6, a2, a1
                  nop
                  nop
                  slli         a3, s9, 6
                  xori         s9, t6, -233
                  slti         s7, s9, 1768
                  bgeu         s6, t4, 673f
                  sltiu        ra, s3, 230
                  sll          s9, s4, s9
663:              add          a4, tp, t2
664:              lui          s2, 657171
                  blt          s8, sp, 678f
                  bne          zero, t4, 684f
                  lui          t0, 965918
                  bge          t5, s10, 677f
                  beq          s7, a6, 679f
                  sra          gp, s9, t5
                  and          a1, t0, s11
                  slli         s1, a7, 8
673:              sltu         t2, s8, sp
                  sub          t0, s9, a0
                  beq          t3, s9, 684f
                  srai         t4, zero, 10
677:              add          a5, a1, a3
678:              addi         a5, s10, -163
679:              andi         sp, t0, 1323
                  slt          a5, gp, a3
                  beq          s8, a3, 686f
                  addi         t1, s1, 852
                  addi         s1, a4, -1608
684:              bge          a6, s10, 702f
                  andi         t1, t0, 1248
686:              slt          t1, t2, sp
                  srl          t5, t2, s9
                  bge          a7, s1, 705f
                  bne          t0, t4, 709f
                  xor          s10, s4, s6
                  ori          s7, a7, 618
                  lui          t1, 953219
                  beq          t4, ra, 704f
                  and          t0, s8, s9
                  sll          t2, a5, a6
                  lui          t6, 354614
                  sra          tp, a5, ra
                  add          s2, t1, a6
                  srai         sp, s7, 2
                  bltu         s6, s7, 706f
                  srl          sp, a4, s3
702:              sub          a1, a2, s6
                  beq          a3, t2, 706f
704:              andi         s0, a0, 1033
705:              xori         s5, s3, -1049
706:              and          a3, t2, t4
                  or           s7, s2, t5
                  srai         t4, t6, 24
709:              xori         s6, a7, 1855
                  sltu         s0, a4, s6
                  bge          a5, t5, 731f
                  beq          a2, t4, 724f
                  ori          t3, a1, -1824
                  slt          a4, t6, s2
                  sll          t0, s2, s5
                  or           s7, s0, tp
                  and          a5, s10, tp
                  bgeu         gp, s8, 738f
                  bltu         s9, s6, 736f
                  bgeu         gp, s11, 729f
                  slt          a3, t3, a6
                  srl          s0, t4, a7
                  srli         zero, t4, 11
724:              bgeu         s0, s4, 726f
                  srli         t0, t4, 21
726:              xori         t3, t5, -726
                  bge          a3, s5, 747f
                  and          s7, t3, s3
729:              sltiu        s4, s5, -345
                  xor          s1, s6, s11
731:              slli         t0, s5, 2
                  ori          s7, t5, 91
                  slli         tp, a6, 25
                  beq          t1, t2, 752f
                  lui          a2, 126015
736:              sub          s9, s0, s5
                  nop
738:              sub          t5, t5, a3
                  bgeu         s1, t0, 746f
                  srai         s9, tp, 5
                  sltu         t6, gp, t0
                  lui          s8, 375752
                  or           a5, gp, t5
                  lui          sp, 972833
                  bltu         zero, t0, 755f
746:              srai         s10, t6, 4
747:              srl          s9, a6, sp
                  sltu         t6, a7, a5
                  bgeu         s10, s8, 762f
                  ori          s4, a3, 30
                  bgeu         a0, a3, 771f
752:              sltu         gp, a1, s2
                  beq          gp, a7, 771f
                  xor          s5, a7, a4
755:              xori         s4, s8, 533
                  add          tp, s0, t5
                  srli         a2, t5, 3
                  lui          sp, 979183
                  sll          s8, a3, s4
                  slli         a5, ra, 25
                  blt          a4, s3, 767f
762:              srai         a5, a4, 1
                  add          t2, s3, t2
                  nop
                  beq          t1, a4, 769f
                  xor          t2, zero, s5
767:              slti         a6, s8, -488
                  sltu         s8, a3, a5
769:              or           a1, a7, s3
                  srai         a4, s9, 26
771:              andi         s1, s8, -570
                  slli         s9, t6, 5
                  bge          s10, s11, 793f
                  sub          s4, sp, s5
                  sll          t6, a7, a3
                  sltiu        a5, t5, -1225
                  bltu         a5, t1, 795f
                  add          a1, a1, s5
                  srai         s0, a1, 0
                  bltu         t5, tp, 789f
                  nop
                  and          t5, s10, a5
                  beq          s9, a6, 790f
                  sltiu        s0, s10, 1476
                  sra          s7, s6, sp
                  bne          s5, t4, 806f
                  slli         s8, t3, 30
                  sub          s2, a7, s6
789:              srli         s0, gp, 1
790:              slt          a2, t6, t3
                  slt          s4, a6, s8
                  ori          s0, a4, -2001
793:              addi         a6, s6, 1889
                  bgeu         s8, s9, 797f
795:              add          s1, t5, tp
                  beq          a7, a2, 816f
797:              sltu         a3, a5, s7
                  beq          s1, t0, 804f
                  blt          a3, a1, 809f
                  sltu         s5, a3, s6
                  sltu         s10, t1, t4
                  beq          t6, s6, 814f
                  xori         tp, t2, 136
804:              bltu         t0, s9, 813f
                  bge          s5, t5, 823f
806:              lui          s9, 190407
                  sll          a6, a0, t6
                  addi         t6, gp, 1150
809:              sltu         s0, t6, a7
                  or           s5, s6, s6
                  slti         s1, s5, 1831
                  xor          s5, t4, t4
813:              andi         t6, a1, 487
814:              lui          s6, 479880
                  addi         s0, a0, 1931
816:              sub          t1, t6, a1
                  slt          s8, s1, gp
                  slli         gp, a6, 19
                  or           s9, a5, zero
                  add          a5, s7, a5
                  xori         zero, a2, -428
                  srli         t1, s5, 24
823:              and          a6, zero, t6
                  and          a4, s5, sp
                  xor          a2, s2, sp
                  andi         a5, a5, -1951
                  sra          s0, t6, a6
                  srl          s0, t2, a1
                  auipc        a1, 931700
                  slti         s5, ra, 1432
                  lui          s0, 405483
                  slli         t0, a2, 1
                  add          s1, a0, s11
                  srl          t3, a2, t6
                  sra          t0, a5, s7
                  beq          s2, s6, 849f
                  xori         a3, ra, -944
                  slt          s4, a5, a2
                  andi         tp, gp, 1359
                  and          ra, s11, a2
                  beq          s5, sp, 858f
                  bne          t5, s5, 844f
                  nop
844:              sltiu        s10, s6, -1590
                  slti         s9, s4, 695
                  andi         s7, a6, -1005
                  beq          sp, s7, 849f
                  slt          s11, t3, a7
849:              auipc        tp, 668601
                  or           s5, t4, a1
                  sltiu        s1, s6, -289
                  and          t1, zero, s4
                  blt          ra, s9, 858f
                  beq          gp, t0, 860f
                  nop
                  beq          a6, t0, 871f
                  or           a4, s6, zero
858:              sll          a3, zero, s7
                  andi         s8, s10, -922
860:              addi         s9, s2, -838
                  srai         a5, gp, 1
                  beq          s3, s1, 875f
                  sub          s4, t4, s1
                  bltu         a3, t3, 874f
                  andi         a3, a4, -629
                  xori         t5, s8, 1612
                  nop
                  xor          a3, a4, t0
                  add          a5, a7, a7
                  and          s0, t3, a3
871:              bgeu         t5, s0, 888f
                  slli         t6, gp, 24
                  xor          ra, a4, t1
874:              xori         a1, a4, -411
875:              or           a5, a2, sp
                  sub          s6, t6, ra
                  bge          s10, tp, 893f
                  auipc        t2, 788988
                  andi         s4, t1, 299
                  addi         zero, s3, -1034
                  bne          t1, t4, 892f
                  sltu         t1, t3, s6
                  beq          s7, s9, 892f
                  bne          s3, t0, 890f
                  xori         tp, t6, -1453
                  slti         s7, a7, 560
                  bge          t5, t0, 896f
888:              xor          s7, t3, s6
                  and          ra, s4, a5
890:              add          a2, zero, s1
                  slli         t5, zero, 16
892:              xor          a6, s9, a3
893:              sub          a2, t2, zero
                  blt          s7, t2, 910f
                  and          a3, a7, zero
896:              srai         t0, s3, 30
                  srai         s8, s10, 4
                  srli         t6, s4, 23
                  bne          gp, s8, 911f
                  lui          ra, 670554
                  or           a2, t3, s6
                  nop
                  lui          t3, 542202
                  blt          s5, s10, 917f
                  beq          a6, a6, 908f
                  blt          t2, s2, 924f
                  srai         s7, t4, 8
908:              lui          s1, 135089
                  blt          t5, s3, 913f
910:              ori          s8, ra, 2015
911:              srli         s5, s4, 26
                  bne          a4, s3, 918f
913:              sll          sp, t6, t0
                  srl          s0, t3, a1
                  auipc        t2, 304339
                  add          t2, s3, t2
917:              sll          t1, s11, t3
918:              sra          gp, s3, a3
                  sltiu        gp, t6, -706
                  blt          sp, s5, 933f
                  bgeu         t2, a2, 931f
                  xori         t1, a0, -1568
                  bne          t4, t5, 925f
924:              auipc        s11, 628347
925:              andi         s1, t0, 903
                  nop
                  bgeu         sp, a6, 947f
                  xori         t6, s4, -1985
                  srl          s8, tp, t5
                  srli         s2, s5, 16
931:              beq          s6, s1, 951f
                  bltu         t3, s11, 943f
933:              srli         s2, a7, 23
                  sltu         s7, sp, s1
                  xori         t1, ra, -1010
                  beq          a4, t2, 953f
                  andi         sp, t5, 435
                  auipc        t1, 278515
                  lui          s7, 598115
                  bltu         s10, a1, 960f
                  xor          zero, a4, s7
                  bne          t6, a7, 944f
943:              slli         s8, t1, 30
944:              srai         a5, s8, 15
                  andi         s11, a2, -752
                  beq          s6, s0, 963f
947:              srli         t6, s6, 25
                  sra          a1, ra, t3
                  ori          s11, t4, 694
                  and          s2, a3, s6
951:              auipc        a2, 112380
                  andi         t2, t2, 1404
953:              nop
                  or           t2, t5, a7
                  xor          a4, t4, s10
                  sltiu        t4, s6, 817
                  bltu         tp, sp, 964f
                  sll          s9, s1, s1
                  srl          t4, a3, t6
960:              and          a5, t3, t4
                  xori         t1, a4, -626
                  ori          ra, t2, -917
963:              or           a6, s5, s10
964:              nop
                  blt          ra, t6, 975f
                  bge          a6, s5, 984f
                  slt          s4, s4, s2
                  bltu         a6, sp, 986f
                  slt          t2, t3, s4
                  lui          s10, 307011
                  sltu         sp, t1, tp
                  srai         zero, s10, 7
                  la           t1, sub_2
                  and          s11, s1, s8
                  xori         s9, a4, -1225
                  ori          a2, t4, 878
                  auipc        t4, 649627
                  addi         t1, t1, 86
                  slli         a3, s2, 19
                  and          t0, s3, s11
main_j1:          jalr         ra, t1, -85 #jump main -> sub_2
                  bge          s7, s0, 975f
                  sll          s7, s11, a3
                  sltu         ra, s4, s7
                  add          s6, s2, s6
                  xor          gp, s8, t1
                  xor          sp, sp, ra
975:              nop
                  xori         s0, a4, 468
                  ori          t6, s11, 1968
                  sltiu        gp, t3, -1018
                  xori         s11, a1, -859
                  nop
                  bge          s1, s7, 1001f
                  sltu         a3, s11, s11
                  beq          ra, gp, 996f
984:              xori         s7, s2, -1710
                  lui          t5, 171703
986:              addi         t1, a3, -1023
                  nop
                  slti         a3, a0, 661
                  srli         s0, t2, 31
                  nop
                  bgeu         s8, a2, 1000f
                  sra          a1, ra, s9
                  nop
                  beq          sp, s6, 1009f
                  add          s8, t3, s6
996:              xor          t1, s0, s6
                  addi         t2, t6, 1834
                  beq          t0, s10, 1003f
                  sub          a1, a4, s10
1000:             srl          t2, a7, a2
1001:             sltiu        s1, t6, 1157
                  auipc        t1, 365526
1003:             add          a6, s5, ra
                  sub          a6, t2, sp
                  sra          gp, a6, t3
                  beq          a3, t2, 1015f
                  bgeu         a4, s2, 1013f
                  sub          zero, t4, s0
1009:             slt          t5, ra, s10
                  xori         a3, a3, -675
                  sltiu        t5, a1, -1441
                  or           t0, sp, a0
1013:             xori         s7, t6, 1213
                  bge          s8, gp, 1017f
1015:             srl          zero, a5, a1
                  lui          t4, 472584
1017:             or           s0, s4, s2
                  slt          a2, s10, t6
                  nop
                  addi         s5, zero, 397
                  sltiu        t2, s8, 2007
                  sra          s11, t6, s9
                  and          a1, s8, s7
                  ori          a2, a7, -2023
                  slli         s8, s2, 27
                  andi         a2, s10, 1121
                  add          a2, s6, t4
                  ori          t4, s10, -1417
                  xor          a3, s6, s7
                  or           t1, s5, t4
                  ori          t6, ra, 1189
                  bne          gp, a7, 1045f
                  add          s11, s1, t4
                  or           s6, a1, t2
                  srl          t0, s10, t5
                  srli         t2, s10, 16
                  bge          t2, s3, 1048f
                  sub          ra, sp, a3
                  bgeu         s4, t4, 1054f
                  addi         zero, tp, -16
                  addi         s0, a2, -46
                  slli         s7, s7, 5
                  bgeu         a6, s8, 1052f
                  lui          t2, 234768
1045:             slli         t1, s3, 21
                  bge          gp, t1, 1053f
                  bltu         s5, s6, 1067f
1048:             sltiu        a4, a2, 1859
                  sll          t2, s10, a0
                  srl          s8, t4, a5
                  sra          sp, t0, s9
1052:             bne          s0, s8, 1070f
1053:             bne          s7, t0, 1070f
1054:             xori         a3, a7, -134
                  srai         ra, zero, 5
                  sltu         sp, t0, a6
                  srl          s1, s3, t2
                  blt          s3, a0, 1060f
                  slt          s10, s0, s0
1060:             or           s9, s1, a3
                  or           s5, s1, a3
                  nop
                  sll          t2, s5, s11
                  sll          s0, s7, a4
                  sra          s4, a7, sp
                  or           s10, s11, s6
1067:             nop
                  srl          a4, t6, t2
                  andi         t2, s2, -34
1070:             bne          a5, a0, 1086f
                  srai         zero, s7, 23
                  sra          sp, a6, s0
                  srli         tp, s11, 6
                  sub          s6, t2, a7
                  sltiu        tp, a6, -1997
                  blt          a4, s8, 1081f
                  sra          a5, s2, s0
                  slli         s0, t4, 2
                  slli         a1, a1, 10
                  auipc        s10, 306559
1081:             lui          s8, 977150
                  blt          t2, t1, 1088f
                  slli         sp, t3, 24
                  add          t4, t4, t2
                  bltu         gp, ra, 1098f
1086:             and          a6, a0, t3
                  bne          s8, sp, 1096f
1088:             bgeu         s3, s2, 1097f
                  bltu         s2, a4, 1102f
                  lui          t0, 1310
                  bge          s1, a0, 1111f
                  bge          a1, t6, 1104f
                  sltiu        s0, s4, -101
                  srli         s4, s4, 21
                  sltiu        a5, s0, 143
1096:             srai         a6, t2, 27
1097:             srl          a5, t0, a0
1098:             sltiu        t0, a4, -1318
                  slli         s1, a4, 27
                  slti         t2, a3, -1209
                  srl          t5, s2, s9
1102:             srai         gp, t4, 3
                  add          s4, s2, s3
1104:             sub          t1, sp, t1
                  srl          a6, a0, tp
                  slt          ra, a1, s2
                  lui          a4, 145071
                  bne          s4, t6, 1125f
                  nop
                  srl          s2, a7, a7
1111:             beq          a4, t5, 1129f
                  and          zero, s3, t3
                  beq          a6, a4, 1131f
                  lui          sp, 460999
                  blt          a3, t2, 1117f
                  slli         s0, sp, 30
1117:             sra          tp, s7, a0
                  bgeu         s11, s8, 1124f
                  ori          sp, s2, 833
                  srai         a6, t6, 1
                  add          t2, s7, a6
                  sltu         t2, s1, s7
                  srl          a5, s11, s2
1124:             ori          a2, gp, -35
1125:             add          t3, s1, gp
                  sltiu        s9, s9, -910
                  sub          s11, s11, t3
                  slti         tp, a3, -489
1129:             srli         gp, a1, 22
                  srli         a1, s11, 3
1131:             xori         s7, t4, -202
                  bgeu         s2, t3, 1142f
                  bltu         s3, zero, 1137f
                  beq          a5, a7, 1154f
                  sra          ra, s11, s4
                  bge          zero, t3, 1156f
1137:             sltiu        a1, s4, 926
                  blt          s10, a2, 1148f
                  auipc        a2, 212519
                  addi         tp, a0, -1273
                  slti         gp, a3, -1594
1142:             slt          s4, a0, a2
                  slt          s1, s3, t1
                  add          a6, tp, s5
                  sltu         a3, a3, tp
                  sub          s8, s11, s5
                  nop
1148:             beq          s2, s5, 1157f
                  sltu         zero, t3, s2
                  andi         s10, t3, 81
                  slt          s5, s0, a3
                  slti         a2, t4, -2036
                  xor          s4, s10, t3
1154:             lui          zero, 326613
                  add          ra, s9, s4
1156:             or           sp, a4, t5
1157:             nop
                  sra          t0, s0, t5
                  lui          t5, 906358
                  and          tp, s3, t6
                  sra          a4, s7, ra
                  bne          s9, s4, 1166f
                  srai         t1, a5, 13
                  sll          t0, s0, s5
                  slt          s8, t5, t0
1166:             ori          s2, s1, 834
                  slti         a3, a7, -1959
                  srli         s10, a2, 10
                  bge          t0, s6, 1189f
                  blt          gp, a0, 1183f
                  andi         s1, s11, -1414
                  sll          a6, s4, s5
                  sll          a1, s11, s8
                  xor          s0, zero, t4
                  andi         t2, s10, -515
                  andi         zero, s2, -1498
                  bge          s10, t0, 1190f
                  sltu         a1, s6, a5
                  add          t3, s0, t5
                  blt          s11, t2, 1190f
                  xori         t1, s1, -1264
                  addi         gp, t5, -598
1183:             ori          a6, t4, -474
                  sra          t3, a0, s3
                  auipc        s9, 272078
                  bge          a0, s2, 1204f
                  srl          sp, a3, s3
                  bltu         t4, ra, 1197f
1189:             sub          t5, s9, a6
1190:             sra          s6, s10, s7
                  andi         a4, a5, 1308
                  lui          t1, 284830
                  bne          s11, s5, 1195f
                  bge          zero, a1, 1214f
1195:             xor          s8, s11, t4
                  xor          s2, zero, tp
1197:             andi         t2, t4, -550
                  xori         a6, t6, -1893
                  add          s10, s5, tp
                  bltu         tp, s3, 1211f
                  auipc        s7, 331965
                  andi         s8, a4, -1957
                  or           s0, a3, zero
1204:             blt          s6, s10, 1224f
                  sra          t2, t5, t3
                  xori         s4, a1, -934
                  sub          t0, s1, a0
                  slti         ra, s5, 1669
                  sra          a2, t1, t4
                  srai         s9, t3, 11
1211:             sltu         t3, zero, t4
                  ori          a5, t6, -57
                  sltu         t5, t3, t2
1214:             ori          t2, ra, -1885
                  sltiu        a4, s9, -1869
                  sll          sp, a1, zero
                  srli         s4, a2, 18
                  bltu         ra, t2, 1230f
                  bgeu         tp, s8, 1224f
                  bgeu         t1, a6, 1230f
                  xor          sp, t5, a4
                  slli         t3, s9, 1
                  bltu         s8, t6, 1241f
1224:             blt          a4, a0, 1230f
                  bge          a0, ra, 1240f
                  xor          t3, t6, a5
                  beq          a4, a6, 1229f
                  sltiu        s10, s1, 1668
1229:             bgeu         a6, s8, 1245f
1230:             slli         s10, t5, 22
                  and          a4, s0, t1
                  bne          s8, s0, 1235f
                  sll          a4, a3, s0
                  add          t0, zero, tp
1235:             addi         s1, a7, 1146
                  nop
                  xori         s8, a5, 1813
                  slti         a1, ra, -1745
                  add          a3, sp, a1
1240:             sltu         s1, s8, s2
1241:             lui          sp, 578417
                  xor          s7, s1, s4
                  lui          s2, 683871
                  srli         s7, s11, 0
1245:             and          t4, s6, t1
                  xori         s4, t2, -1932
                  auipc        s5, 995190
                  sltu         s11, s1, s7
                  nop
                  sltu         a3, s4, a4
                  bne          tp, a0, 1264f
                  slt          gp, t6, ra
                  srai         s9, s9, 0
                  sll          gp, s9, a5
                  bne          t5, tp, 1275f
                  auipc        s0, 919176
                  auipc        s5, 511094
                  ori          sp, a7, 1212
                  srl          t5, s1, s11
                  slli         a2, s1, 31
                  slli         zero, sp, 0
                  bltu         sp, a4, 1268f
                  and          a1, ra, t2
1264:             lui          s5, 129672
                  srai         s11, t4, 29
                  ori          s0, a2, -1043
                  sltiu        a4, a4, -1818
1268:             sra          s5, s4, s10
                  auipc        t1, 862776
                  add          a6, tp, a6
                  slt          a5, a2, s2
                  srli         t4, t6, 9
                  slli         a4, t4, 13
                  add          t0, s6, s1
1275:             bge          s6, s6, 1292f
                  auipc        t4, 362605
                  ori          a1, t5, 568
                  bne          s9, s10, 1287f
                  beq          s10, t2, 1297f
                  sltu         ra, sp, s0
                  srai         zero, s2, 7
                  addi         s4, a0, 1281
                  srli         t3, a0, 14
                  sltu         s2, t4, t4
                  bgeu         a0, t2, 1302f
                  sub          a3, s3, a0
1287:             sll          t6, ra, t2
                  sub          tp, s3, t6
                  add          s8, s7, s3
                  auipc        tp, 1362
                  sub          a1, t4, a6
1292:             bne          s10, gp, 1299f
                  or           s9, s2, t5
                  andi         t6, zero, -949
                  beq          t5, a3, 1301f
                  sltiu        s2, t4, -1870
1297:             slli         a5, a4, 5
                  srai         s2, s5, 3
1299:             bltu         s6, a4, 1301f
                  lui          a5, 390396
1301:             and          t3, t4, s5
1302:             beq          gp, ra, 1312f
                  bgeu         s10, s6, 1323f
                  andi         s1, s1, -79
                  sub          t2, a5, a1
                  blt          t1, a0, 1312f
                  slli         s2, gp, 6
                  andi         s10, t1, -320
                  bge          t1, s7, 1322f
                  slti         s5, s6, 1954
                  ori          a2, t2, 1306
1312:             andi         s2, s7, -2019
                  slt          s4, t1, t5
                  srli         gp, s7, 12
                  addi         a1, s5, 363
                  add          a5, s8, a2
                  slt          s0, t1, zero
                  slli         t5, t6, 6
                  xori         s11, s0, -1081
                  add          s4, a5, tp
                  bne          a6, a2, 1330f
1322:             or           s2, gp, zero
1323:             sltiu        s8, t2, -1356
                  blt          s3, a2, 1341f
                  srl          t1, a4, s9
                  andi         s11, zero, -266
                  srl          s5, s10, s5
                  srai         s7, s6, 3
                  nop
1330:             blt          a3, gp, 1334f
                  sra          s9, a4, s1
                  bge          t5, a4, 1339f
                  nop
1334:             sub          s10, a5, s4
                  srl          t5, a5, s10
                  andi         s9, a0, 183
                  sll          a5, t1, s5
                  auipc        a4, 258224
1339:             or           sp, a0, a0
                  sub          s4, t1, s7
1341:             sub          s7, tp, tp
                  xori         t2, s5, 1440
                  bltu         s10, t1, 1352f
                  and          t5, s3, a4
                  sll          ra, a0, s1
                  sll          a6, zero, s10
                  beq          tp, s6, 1362f
                  or           a1, s0, s6
                  sltiu        a2, a2, -611
                  addi         s0, a0, 1241
                  slli         a5, a5, 30
1352:             or           t3, a5, a0
                  xori         s1, a7, -1677
                  sltu         s5, a3, t5
                  xor          t4, s8, zero
                  srli         gp, gp, 30
                  ori          t0, t6, -871
                  srai         s2, s1, 2
                  bgeu         a1, a5, 1364f
                  ori          sp, t6, -1386
                  or           tp, tp, gp
1362:             beq          t4, t6, 1365f
                  sub          s5, s3, sp
1364:             sll          s10, t3, s9
1365:             and          t4, s10, s11
                  srl          s7, a4, t3
                  nop
                  xor          a2, tp, a6
                  bne          t3, t5, 1389f
                  srli         zero, s6, 7
                  bgeu         s1, a4, 1389f
                  lui          t2, 1037692
                  bgeu         s3, s1, 1386f
                  blt          s10, t2, 1391f
                  lui          s8, 321609
                  srl          zero, zero, s9
                  slti         s7, s0, 1238
                  slli         a3, t5, 3
                  addi         a6, t0, 1936
                  slti         gp, t1, 1991
                  addi         s6, a5, -978
                  slti         s6, a5, -2047
                  lui          ra, 525600
                  nop
                  ori          s4, a2, -935
1386:             beq          zero, s0, 1392f
                  srai         t4, t5, 18
                  auipc        s2, 668721
                  sub          s5, s5, zero
                  la           t0, sub_1
                  nop
                  srai         tp, a3, 1
                  addi         t0, t0, -1023
                  add          a2, t3, tp
                  sltiu        t1, s5, 1226
                  and          tp, zero, a7
main_j2:          jalr         ra, t0, 1023 #jump main -> sub_1
                  xor          s11, s4, s0
1389:             xor          s1, zero, a5
                  sll          a1, a2, a7
1391:             lui          s4, 973565
1392:             bne          s6, a6, 1394f
                  bne          sp, a7, 1402f
1394:             srli         gp, t5, 1
                  nop
                  slt          a5, s4, zero
                  and          s4, t0, s2
                  and          s5, s6, s9
                  sub          t0, t3, s11
                  blt          sp, a6, 1420f
                  slti         s8, a3, -276
1402:             ori          a4, t1, 793
                  nop
                  sra          a5, zero, ra
                  bgeu         a3, zero, 1418f
                  bltu         gp, a3, 1424f
                  sll          a5, a6, s8
                  srl          t5, s5, s6
                  sub          t0, s3, t3
                  xor          a3, s10, a2
                  xor          t1, s8, a3
                  or           t0, a3, a6
                  srai         tp, s6, 26
                  srl          sp, t0, s8
                  srl          a4, gp, s10
                  and          gp, a0, s0
                  and          zero, t5, s8
1418:             ori          ra, s5, 1309
                  bltu         s7, t0, 1431f
1420:             srl          s5, t2, s6
                  bge          zero, s5, 1427f
                  add          s9, s6, s0
                  bge          s6, t0, 1443f
1424:             addi         s8, t3, 482
                  bge          a3, tp, 1441f
                  andi         gp, s8, -1561
1427:             slli         t1, a3, 18
                  xori         t5, s8, 873
                  srai         s6, t4, 22
                  sltu         s5, a2, t0
1431:             addi         s5, a3, 1971
                  andi         t2, s5, -1714
                  blt          s0, s2, 1451f
                  slti         a6, gp, 573
                  srl          t2, t6, a7
                  ori          a6, s0, 1453
                  sll          t4, a7, tp
                  nop
                  add          ra, gp, s10
                  bgeu         sp, a2, 1450f
1441:             blt          s9, s4, 1452f
                  lui          s2, 527023
1443:             bne          sp, a0, 1453f
                  sltiu        s1, zero, 1310
                  add          t2, tp, zero
                  and          s8, sp, s10
                  andi         a1, s3, 2036
                  sltu         t3, s0, s4
                  bgeu         t3, t4, 1466f
1450:             bgeu         s1, s1, 1470f
1451:             xor          t6, a3, t3
1452:             srl          ra, t2, a5
1453:             or           a6, a4, t2
                  add          s6, a4, t3
                  bge          s0, a5, 1458f
                  sll          t1, tp, t1
                  bltu         s8, a3, 1464f
1458:             or           s1, tp, s11
                  slti         a1, t3, -1616
                  sra          s2, gp, t6
                  blt          sp, s10, 1470f
                  ori          a4, t2, 1404
                  ori          s0, s9, -550
1464:             addi         s6, t1, 851
                  srl          t4, zero, ra
1466:             slti         s6, t3, 933
                  auipc        t0, 734754
                  srai         a3, a7, 16
                  bge          tp, s3, 1489f
1470:             srl          t4, zero, tp
                  srai         s5, a3, 23
                  or           a3, s1, t5
                  sub          s4, a5, a3
                  andi         s10, s9, 1635
                  bne          s1, tp, 1495f
                  slti         a4, tp, -2027
                  slti         t2, gp, 612
                  and          t3, t5, s8
                  xori         s8, s2, -950
                  srli         zero, a4, 21
                  bge          tp, a5, 1492f
                  srai         gp, t6, 3
                  andi         s0, tp, 880
                  xor          s7, t1, zero
                  bge          zero, a6, 1502f
                  add          s8, s11, s10
                  and          sp, zero, t0
                  slti         tp, s3, 2018
1489:             bltu         s1, gp, 1498f
                  bne          t5, tp, 1495f
                  srli         a5, gp, 9
1492:             sltu         t6, a1, t1
                  beq          s3, t1, 1502f
                  xor          a5, a6, s0
1495:             sltu         s1, sp, s8
                  xor          s10, s2, s4
                  or           t6, s8, t1
1498:             blt          s2, s0, 1511f
                  and          a1, s5, tp
                  srai         a1, sp, 4
                  nop
1502:             xori         s7, t4, -1124
                  ori          t2, gp, 1128
                  sub          a1, t5, a1
                  bgeu         t0, a0, 1525f
                  xor          t2, s2, a2
                  nop
                  srl          a2, s6, a1
                  sltiu        gp, s5, -1656
                  bgeu         t5, s7, 1514f
1511:             sra          t2, s2, t3
                  bgeu         tp, a7, 1525f
                  bgeu         s2, s9, 1526f
1514:             slli         s8, a5, 23
                  slt          s5, ra, s5
                  bge          gp, ra, 1531f
                  slt          tp, t3, gp
                  sltu         s10, a3, s7
                  xor          t6, t5, a4
                  xori         a4, t4, 1074
                  lui          t5, 813310
                  nop
                  bge          zero, s3, 1533f
                  slli         s11, a0, 23
1525:             nop
1526:             sltiu        s1, s3, 1622
                  srl          t6, s9, s8
                  sltu         sp, s11, s11
                  xor          a2, a1, s1
                  bne          s0, a1, 1548f
1531:             ori          tp, t3, 1369
                  add          t0, a7, sp
1533:             ori          a4, a3, -69
                  ori          s4, s7, -1148
                  or           s7, a2, s1
                  andi         s9, zero, -1510
                  addi         s8, t1, -240
                  slti         s1, s2, 1928
                  blt          s0, s0, 1557f
                  sra          s11, gp, a1
                  blt          t3, a4, 1547f
                  bge          a3, s0, 1548f
                  nop
                  xor          s9, a1, sp
                  sub          s6, a7, s1
                  sra          s7, s7, gp
1547:             slli         s1, ra, 25
1548:             sltu         sp, s6, sp
                  addi         sp, t0, 1225
                  sra          gp, tp, s1
                  lui          s8, 168115
                  andi         s11, s8, 1688
                  blt          t0, s7, 1559f
                  auipc        gp, 431174
                  xor          a6, a0, s7
                  nop
1557:             beq          s0, t6, 1573f
                  sra          s0, a7, a2
1559:             sltiu        s2, s5, -1258
                  slt          sp, t4, t3
                  bltu         s2, s7, 1579f
                  ori          s10, s9, 334
                  bge          a1, s2, 1565f
                  sll          s8, s4, t6
1565:             slt          a4, s11, s4
                  srli         ra, ra, 8
                  sltu         s7, s8, s1
                  ori          s6, a4, -1752
                  andi         a2, tp, -694
                  add          a2, s5, s9
                  srli         t2, a3, 0
                  slti         gp, a7, 170
1573:             beq          sp, a4, 1575f
                  addi         tp, t1, 825
1575:             slli         s2, s5, 14
                  bltu         a4, sp, 1588f
                  srai         s9, s0, 24
                  add          s1, zero, s9
1579:             sub          t5, s5, s4
                  slli         ra, a2, 1
                  slt          s8, t4, a6
                  sltu         a5, t0, s4
                  sra          a2, t5, a1
                  bne          t3, s2, 1591f
                  blt          t3, s5, 1605f
                  ori          a2, s6, -893
                  slli         t0, a0, 5
1588:             blt          s1, s4, 1606f
                  sltiu        tp, s6, -722
                  bne          s10, a7, 1603f
1591:             sltiu        a6, sp, 392
                  beq          tp, s2, 1608f
                  xor          ra, s11, s0
                  addi         a3, s10, -288
                  slli         s9, ra, 4
                  slli         zero, a0, 24
                  srl          s8, sp, a1
                  sub          t1, a5, gp
                  sub          s1, s9, a0
                  add          a3, gp, t1
                  ori          a3, t2, 1527
                  and          t4, s11, t3
1603:             bge          s2, a3, 1612f
                  slti         t3, s8, 1692
1605:             lui          a6, 99816
1606:             xori         t0, zero, 1693
                  bltu         ra, t0, 1620f
1608:             ori          s1, a3, -1897
                  srli         s2, t2, 12
                  sltu         tp, a6, a5
                  sltu         a1, s7, s11
1612:             addi         a1, a5, 1841
                  srli         s10, a0, 0
                  slli         s4, a1, 19
                  xor          t1, a6, s1
                  nop
                  slli         s8, s10, 14
                  slti         s7, s2, -1478
                  bgeu         s6, tp, 1621f
1620:             srli         s4, gp, 7
1621:             ori          s5, s2, -1543
                  add          s1, t3, s2
                  bne          s11, a2, 1627f
                  slti         a1, a2, 685
                  or           a5, t1, s0
                  nop
1627:             srli         s5, s4, 5
                  la x17, test_done
                  jalr x0, x17, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         s3, s3, -40
                  or           zero, t4, t1
                  lui          s8, 531412
                  sra          a4, a7, a7
                  sw           ra, 4(s3)
                  srli         t0, a6, 8
                  srl          s11, s3, tp
                  sll          t1, s8, a1
                  xori         gp, a5, -1104
                  slti         s4, zero, 899
                  srai         s11, a3, 6
                  nop
                  srai         s4, s1, 21
                  srai         s8, a0, 0
                  sub          s9, a2, zero
                  xori         s6, s7, -1579
sub_2_j5:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  la           s9, sub_4
                  sub          gp, s8, t6
                  sub          zero, t0, a2
                  addi         s9, s9, 477
                  sub          sp, s11, a1
                  sltiu        t5, t3, -1868
                  sra          s1, sp, s10
                  auipc        s8, 443007
sub_2_j6:         jalr         ra, s9, -476 #jump sub_2 -> sub_4
                  xor          s2, gp, t2
                  blt          s5, s4, 9f
                  andi         a1, tp, -1196
                  xori         t6, t1, 646
                  sub          t0, a1, s6
                  nop
                  auipc        tp, 190680
                  sra          s7, s9, a4
                  xori         zero, s8, -770
9:                srli         t0, s8, 25
                  xor          t0, a7, tp
                  nop
                  andi         s5, s8, -1596
                  sltiu        tp, s11, 374
                  lw           ra, 4(s3)
                  addi         s3, s3, 40
                  slti         s0, t4, -609
                  srai         s10, a0, 28
                  ori          s2, s9, 1449
45:               addi x1, x1, 0
45:               jalr x1, x1, 0
sub_9:            addi         s3, s3, -60
                  or           s8, s9, s9
                  xor          a4, s2, t5
                  sw           ra, 4(s3)
                  slti         s11, s10, 1650
                  sub          a4, ra, s9
                  la           sp, region_0+372 #start riscv_load_store_rand_instr_stream_3
                  sh           t3, -12(sp)
                  sra          a4, s5, tp
                  lb           t0, 2(sp)
                  sb           a2, -9(sp)
                  sh           a5, -8(sp)
                  lbu          s11, -15(sp)
                  sub          s6, s2, a2
                  sb           t5, 5(sp)
                  nop
                  sub          a4, tp, t5
                  ori          a6, t1, 1423
                  slti         t4, s9, -628
                  addi         zero, t2, -519
                  or           s2, s10, s5
                  or           a6, t3, a0
                  sra          t1, a0, s2
                  sw           t6, 0(sp)
                  ori          s0, s0, -393
                  srli         t1, t6, 26
                  lb           tp, -13(sp)
                  lhu          a1, -10(sp)
                  lb           t4, 11(sp)
                  sh           s8, 12(sp)
                  sh           s8, 0(sp)
                  addi         t3, t6, -1646
                  and          t0, a4, s1
                  slti         s2, s7, -473
                  slli         s2, t4, 19
                  lb           s8, 4(sp)
                  sb           a4, 3(sp)
                  sltu         t2, a1, a1
                  lui          s1, 161166
                  srl          a5, s8, a5
                  srl          a1, s2, s6
                  sll          a1, sp, s1
                  lhu          a2, 6(sp)
                  andi         s4, sp, 1382
                  sltiu        s10, a2, 71
                  sltu         t3, s4, a2
                  lb           a1, -9(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s4, region_0+1932 #start riscv_load_store_rand_instr_stream_2
                  lhu          s11, -1572(s4)
                  xor          ra, s1, a0
                  srli         s11, s4, 2
                  addi         s6, s4, -461
                  sb           a6, -139(s4)
                  sltu         s6, s5, a6
                  nop
                  lb           a5, -416(s4)
                  slt          a4, s6, t0
                  srl          t4, s9, s11
                  srai         zero, a1, 26
                  lb           s9, -1153(s4)
                  nop
                  auipc        a3, 93767
                  sb           ra, -1549(s4)
                  srai         s8, t0, 6
                  srli         tp, s3, 31
                  andi         s11, s1, 1148
                  lb           a6, -1318(s4)
                  or           t6, ra, sp
                  nop
                  lb           s9, -903(s4)
                  lb           s8, -1404(s4)
                  sb           s7, -1425(s4)
                  andi         a4, s10, 1750
                  sra          t5, t5, a7
                  lhu          s8, -522(s4)
                  lw           t5, -1772(s4) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_0+291 #start riscv_load_store_rand_instr_stream_1
                  lhu          t2, 1(a2)
                  sb           a7, -2(a2)
                  sb           s3, 8(a2)
                  lh           s0, -5(a2)
                  sb           t4, -7(a2)
                  sb           a4, 6(a2)
                  lh           s9, -11(a2)
                  srai         s6, t4, 9
                  addi         gp, a5, -36
                  sb           a4, 4(a2)
                  sh           t2, -3(a2)
                  lb           a5, -10(a2)
                  lb           s11, 4(a2)
                  lbu          a6, 12(a2)
                  lbu          s11, -11(a2)
                  sw           t1, -3(a2)
                  lbu          a3, -4(a2)
                  auipc        t6, 720944
                  lb           a4, -2(a2)
                  lb           t2, -10(a2)
                  add          a5, a2, zero
                  lw           s1, -3(a2)
                  srl          s11, t6, a2
                  sb           s4, 3(a2)
                  srai         t5, s1, 1
                  sb           a7, 13(a2)
                  lb           sp, -4(a2)
                  sb           tp, 11(a2)
                  lbu          gp, 6(a2)
                  xor          t1, gp, s5
                  lui          s10, 197766
                  lui          a5, 148938
                  xori         a4, a7, -894
                  lb           s4, -2(a2)
                  ori          sp, t5, 1477
                  lbu          t4, -16(a2)
                  lb           t1, -8(a2) #end riscv_load_store_rand_instr_stream_1
                  la           s4, region_1+26 #start riscv_load_store_rand_instr_stream_4
                  lb           t1, 53(s4)
                  sra          s9, t2, t5
                  sb           s0, 27(s4)
                  sra          a3, s1, s11
                  sb           s7, 105(s4)
                  ori          s1, s5, -734
                  sh           ra, 140(s4)
                  sra          a1, a1, s7
                  sh           s3, 232(s4)
                  lb           s5, 55(s4)
                  sb           ra, 195(s4)
                  sub          a1, s3, s3
                  lbu          t2, 256(s4)
                  ori          tp, t0, -73
                  lw           s1, 54(s4)
                  lbu          t6, 23(s4)
                  lb           zero, 143(s4)
                  sh           s2, 76(s4)
                  lh           s1, -2(s4)
                  lb           s10, 3(s4)
                  lbu          tp, 57(s4)
                  sra          t6, t3, t0
                  lb           t3, -17(s4)
                  add          s7, a2, a5
                  srai         a3, gp, 30
                  lb           t2, 109(s4)
                  sb           s9, 229(s4)
                  lbu          s5, 186(s4)
                  lb           t3, 23(s4)
                  sb           tp, 11(s4)
                  sb           gp, 15(s4)
                  sll          t3, a4, t4
                  xori         s8, s3, -1251
                  lb           ra, -11(s4) #end riscv_load_store_rand_instr_stream_4
                  bgeu         s11, s4, 4f
                  lui          a1, 102060
                  slti         s9, gp, 2040
                  ori          s6, t0, -801
4:                srli         s0, zero, 3
                  srli         a1, s9, 27
                  sltiu        t4, s11, -1218
                  bne          s0, sp, 18f
                  lui          s2, 353110
                  blt          t4, t4, 27f
                  lui          s10, 422817
                  sra          s7, s10, t5
                  sub          a4, zero, a0
                  sltu         s1, a4, a4
                  sub          s6, a2, s7
                  lui          t0, 480819
                  slt          ra, t2, s2
                  xori         sp, zero, 1091
18:               bne          s6, t5, 34f
                  bltu         s9, s9, 31f
                  addi         s6, s8, 1890
                  slli         s11, sp, 4
                  srl          s6, s6, t4
                  slti         s11, a7, 851
                  srl          t0, s8, gp
                  addi         a6, a2, 1723
                  sub          s7, s6, a3
27:               sltu         a1, t5, t4
                  bge          a6, a0, 31f
                  blt          t5, zero, 40f
                  auipc        s6, 950263
31:               sra          t6, a4, tp
                  bge          s8, t3, 46f
                  beq          a4, a6, 44f
34:               bgeu         a0, gp, 36f
                  sltu         t4, sp, s10
36:               xor          t2, gp, s10
                  xori         s10, s1, 765
                  sltiu        t6, s6, 493
                  and          s11, s4, s3
40:               ori          t1, t5, 395
                  ori          s8, sp, -27
                  srai         s0, s7, 14
                  bne          gp, s2, 47f
44:               slli         zero, s10, 6
                  slli         t4, s9, 22
46:               slti         t5, s2, 1413
47:               blt          t0, s6, 61f
                  xor          a2, a2, t4
                  or           t3, a7, a0
                  srl          t4, t4, a0
                  auipc        a1, 205191
                  srli         s9, t4, 23
                  sub          tp, s3, a3
                  xori         s11, s2, 875
                  sltu         t6, a4, s1
                  sltu         s10, t2, a2
                  sltu         a1, s6, a1
                  nop
                  add          s10, s10, t4
                  or           a1, s6, s6
61:               beq          s10, a6, 65f
                  blt          s1, t2, 65f
                  sra          a2, zero, s1
                  ori          t1, s5, -2016
65:               sltiu        tp, s8, 66
                  bgeu         a6, sp, 80f
                  add          s11, s10, s4
                  beq          a2, t5, 82f
                  blt          gp, t5, 76f
                  addi         t6, a5, 23
                  srl          s2, a1, s3
                  ori          a3, s1, -1458
                  blt          a5, t5, 88f
                  lui          t4, 249379
                  and          a6, s1, s1
76:               sll          a1, s11, s8
                  nop
                  bge          t6, t6, 97f
                  sub          t6, a3, tp
80:               slti         s10, tp, 824
                  and          t1, sp, a2
82:               sll          s7, s8, sp
                  andi         s9, tp, 287
                  slt          s4, t0, t2
                  or           gp, a4, a3
                  slli         s6, a4, 7
                  srli         a6, t2, 18
88:               ori          a1, tp, -104
                  lui          a2, 16375
                  sll          t3, t5, s0
                  bne          s8, t4, 102f
                  slt          t6, a3, s0
                  bgeu         a3, s0, 104f
                  sltiu        t6, a3, -180
                  slti         t0, t2, 1362
                  xor          a6, t2, s3
97:               or           s7, t0, t0
                  slt          ra, tp, t6
                  nop
                  or           t3, s4, gp
                  slli         s0, a2, 22
102:              or           a2, s11, s11
                  sub          s0, s5, tp
104:              slt          t4, a4, s1
                  add          s11, s8, t4
                  xor          t3, s9, s4
                  auipc        zero, 58372
                  xor          s2, t0, t6
                  sltu         t1, s6, t4
                  and          a5, t0, a2
                  nop
                  lui          ra, 460671
                  nop
                  srli         t5, s6, 0
                  andi         t1, s10, -1784
                  sltu         t4, s9, zero
                  srai         zero, s8, 16
                  bltu         a0, gp, 135f
                  bge          s9, s3, 126f
                  auipc        s7, 34812
                  auipc        s9, 865726
                  xor          a5, t2, s2
                  sll          s0, a6, s2
                  sub          s10, s9, s7
                  slti         t1, s4, 451
126:              bne          a3, a7, 127f
127:              srai         s4, s3, 27
                  bltu         a4, t3, 138f
                  xori         t2, s10, -1637
                  and          ra, a4, t5
                  add          s9, s10, s7
                  srai         ra, s0, 1
                  bltu         ra, gp, 138f
                  sltiu        t6, s6, 183
135:              srl          a4, t5, a6
                  bne          t4, s5, 148f
                  blt          a5, s2, 139f
138:              slt          t4, a6, s8
139:              beq          s6, s3, 140f
140:              sll          tp, a3, sp
                  auipc        tp, 294190
                  sra          s6, s5, t5
                  sltiu        s6, a1, 1540
                  xori         s11, s6, 410
                  srli         zero, t6, 17
                  xor          s4, s6, s2
                  andi         s1, gp, 1261
148:              auipc        s10, 119810
                  or           s11, s1, a5
                  xor          zero, gp, t3
                  andi         zero, a3, 271
                  sll          t4, t5, sp
                  srl          t5, s8, a4
                  lui          s1, 887720
                  auipc        sp, 725307
                  xor          s7, t4, a0
                  slt          s4, gp, t2
                  add          a3, t1, s4
                  srli         s4, s7, 1
                  srli         a1, a5, 6
                  nop
                  slti         a1, ra, 1145
                  beq          zero, s4, 174f
                  xori         s10, s0, -1183
                  bne          a0, ra, 177f
                  slt          a3, s6, s10
                  sll          a5, gp, ra
                  slli         t6, zero, 20
                  lui          s2, 532234
                  addi         s2, s7, -510
                  slti         s11, s4, -386
                  andi         s0, a3, -63
                  srli         a6, a5, 29
174:              and          t2, a6, t0
                  bge          a6, a4, 191f
                  blt          sp, s11, 193f
177:              sltiu        t1, a4, -1348
                  bgeu         t5, a2, 196f
                  xori         a4, a6, -1008
                  bge          s2, zero, 190f
                  nop
                  lui          s10, 713699
                  sra          a3, t6, s6
                  bne          t0, tp, 188f
                  sub          a3, t4, s9
                  bne          t5, sp, 197f
                  andi         t3, t4, -1437
188:              bltu         s5, s1, 200f
                  bge          s2, s3, 196f
190:              sra          zero, tp, s4
191:              bge          s2, sp, 210f
                  lui          t5, 447145
193:              ori          tp, tp, -273
                  bge          a4, a1, 208f
                  and          t2, s2, s1
196:              xori         t2, s2, -254
197:              sll          s8, t3, s5
                  sltiu        t6, t3, 497
                  sra          zero, t3, a4
200:              nop
                  srl          s4, tp, a6
                  andi         a1, gp, -2027
                  sub          t4, s6, s6
                  lui          s0, 72495
                  sub          tp, s4, s8
                  bgeu         s8, s9, 220f
                  slli         t6, t2, 15
208:              nop
                  sltu         tp, s0, gp
210:              auipc        a1, 205931
                  blt          s0, s10, 225f
                  add          t4, s3, gp
                  srai         t3, s0, 23
                  nop
                  blt          t6, ra, 216f
216:              slli         s6, gp, 23
                  bltu         s11, t0, 228f
                  lui          a1, 948811
                  blt          a6, s5, 222f
220:              sra          t4, sp, a2
                  nop
222:              ori          t6, t0, 1181
                  bne          t6, a5, 234f
                  blt          a1, s6, 238f
225:              sll          s10, s6, zero
                  addi         s1, a2, -933
                  bge          t3, s2, 234f
228:              srl          t3, gp, t1
                  auipc        zero, 641362
                  srli         s9, s3, 29
                  andi         a3, ra, 159
                  bltu         t4, s11, 247f
                  auipc        t1, 684089
234:              srl          s0, t0, a2
                  and          t3, gp, s11
                  srl          t3, s0, t6
                  sra          s6, t2, t6
238:              srl          t6, a1, s0
                  ori          s1, t2, -1279
                  ori          zero, s0, -476
                  ori          t1, t5, -144
                  bgeu         a5, s3, 246f
                  xori         a1, t5, 596
                  or           s9, a3, tp
                  or           a1, a5, tp
246:              srli         s11, a2, 12
247:              andi         sp, t1, 126
                  or           s9, t1, s0
                  sll          t5, a3, a0
                  xori         s0, s0, 861
                  bltu         t1, t1, 253f
                  srai         s0, s0, 10
253:              auipc        s7, 572505
                  srai         s8, a1, 20
                  lui          a3, 256644
                  slt          s11, t3, s0
                  sub          sp, zero, a6
                  sltiu        a2, s7, -1270
                  slli         s6, s7, 21
                  lui          a1, 1041622
                  ori          zero, sp, -1778
                  lui          a5, 979543
                  xor          a6, t1, s11
                  nop
                  srl          s1, a0, sp
                  slt          s7, s6, sp
                  or           t6, a1, ra
                  sll          t6, zero, t2
                  srl          s4, t6, tp
                  lui          s2, 870606
                  bge          a5, t3, 274f
                  blt          a7, t2, 277f
                  bge          a1, s6, 277f
274:              sra          a1, s2, a5
                  auipc        s10, 392866
                  ori          zero, s8, 1355
277:              xor          a1, a2, s10
                  nop
                  bge          t6, gp, 280f
280:              andi         ra, t2, 505
                  sltu         t2, a1, s10
                  addi         s0, a7, -1038
                  add          s8, s2, a6
                  bne          s10, a7, 295f
                  beq          zero, sp, 287f
                  bne          gp, a5, 297f
287:              bgeu         s8, tp, 298f
                  sra          sp, a0, s7
                  or           s6, t2, s2
                  sub          a4, a2, t1
                  andi         a5, s7, 1710
                  beq          t0, s0, 303f
                  slli         s7, t0, 19
                  srai         s5, a6, 24
295:              srli         t2, s2, 11
                  blt          t4, a1, 298f
297:              srai         s7, a2, 3
298:              nop
                  slli         s6, a0, 11
                  bgeu         t0, a5, 301f
301:              sub          t3, t5, a4
                  srli         a2, s2, 28
303:              andi         s7, a4, -1621
                  sltiu        t0, a3, -293
                  bltu         a5, s6, 310f
                  sra          t6, t5, t6
                  addi         s10, a3, 1611
                  beq          s6, ra, 312f
                  slti         s6, a4, -440
310:              or           a6, s9, a2
                  xori         a1, s3, -570
312:              andi         a5, tp, -646
                  addi         s11, s1, 1924
                  andi         a6, s0, -286
                  or           s8, s3, ra
                  sra          t5, s6, sp
                  bge          s4, a6, 328f
                  sltu         a1, t6, s4
                  addi         a1, s5, 315
                  ori          s0, a0, -12
                  xor          t4, a0, s4
                  bne          s7, s10, 325f
                  slli         a4, a1, 26
                  bgeu         a5, s0, 336f
325:              sll          t1, s9, s0
                  ori          a6, a4, -660
                  blt          t6, a7, 337f
328:              and          a3, t5, ra
                  sub          tp, t4, tp
                  srl          s7, sp, s5
                  bltu         a2, s2, 338f
                  addi         t1, t0, 1533
                  slli         s10, a7, 17
                  bgeu         a4, s0, 345f
                  ori          s1, t6, 336
336:              addi         ra, a3, -343
337:              ori          s9, gp, 1352
338:              bgeu         a6, t0, 354f
                  srai         t2, a6, 9
                  slli         s11, zero, 26
                  auipc        t1, 795199
                  srli         t6, s10, 21
                  xor          a4, t3, a6
                  lui          a4, 430733
345:              sub          t5, zero, ra
                  srl          t0, s6, t6
                  srli         s11, s5, 14
                  or           ra, t4, gp
                  srai         s4, t1, 2
                  or           gp, t3, a5
                  xori         a3, s3, -1267
                  andi         t4, a3, 1429
                  bge          a6, tp, 370f
354:              or           t6, ra, s2
                  bgeu         a3, a4, 357f
                  nop
357:              srai         ra, a3, 0
                  slt          s6, a1, s6
                  srl          s4, a7, a5
                  nop
                  or           t2, a0, s7
                  andi         s4, a7, -1590
                  sra          s2, s2, t5
                  bgeu         t0, sp, 378f
                  slt          a3, s7, s11
                  sltiu        sp, a6, 299
                  xor          s1, s11, s5
                  and          s2, a4, t0
                  xori         t4, a7, 1194
370:              addi         t1, t6, 1006
                  slt          s4, t0, gp
                  sll          s8, s1, s6
                  addi         s9, s0, -167
                  sll          s8, t5, s6
                  sltiu        ra, s7, 1248
                  sub          s7, s9, s3
                  sub          s7, a2, s7
378:              sltu         a4, a4, a2
                  beq          s10, s2, 393f
                  nop
                  srai         s7, t0, 30
                  bgeu         t6, s3, 394f
                  bge          s10, t4, 390f
                  srl          t4, a3, s6
                  andi         s11, a3, 56
                  blt          a4, s11, 389f
                  slti         gp, t0, 1363
                  srai         s9, a5, 3
389:              sltu         zero, a0, s11
390:              bge          a1, s4, 409f
                  srai         tp, t2, 10
                  beq          t4, t1, 403f
393:              sltiu        a5, t0, 1992
394:              sub          s7, t4, a7
                  xor          zero, s5, zero
                  srli         s5, sp, 30
                  ori          t4, gp, -724
                  and          s1, t4, t4
                  srli         s2, a4, 11
                  or           a6, a3, s4
                  andi         t5, s9, -366
                  slt          s9, s9, a5
403:              sltu         s7, s1, t0
                  and          s5, a1, a4
                  srai         a4, a0, 9
                  bgeu         s7, s1, 424f
                  and          t6, t6, s3
                  auipc        t1, 127760
409:              blt          s10, s10, 413f
                  bgeu         t0, s3, 421f
                  xori         s7, a5, -931
                  auipc        s8, 99486
413:              sltiu        s9, a1, -2031
                  beq          zero, zero, 425f
                  blt          t2, s5, 419f
                  slli         zero, t0, 6
                  slt          t5, a4, s3
                  auipc        gp, 2344
419:              nop
                  add          t5, t4, a1
421:              ori          t0, s11, -939
                  andi         t3, s3, -1338
                  ori          tp, a6, 390
424:              sll          t1, a5, t3
425:              srai         t4, s0, 22
                  slti         a5, t4, 665
                  xori         zero, sp, -1546
                  and          a5, a2, a5
                  bgeu         a6, t0, 430f
430:              xori         s10, t1, -1835
                  slti         a3, a3, 1511
                  sub          a1, zero, tp
                  addi         tp, s3, -637
                  bltu         a6, s5, 448f
                  nop
                  sub          a5, t4, s5
                  bltu         tp, s6, 452f
                  blt          a7, t4, 452f
                  auipc        s0, 280916
                  sltiu        t0, a3, -1355
                  add          t5, a3, s10
                  auipc        s0, 76626
                  xori         t0, t1, -303
                  sra          s10, a1, a6
                  sll          s8, ra, a3
                  sra          t4, s0, a6
                  ori          sp, a2, -1978
448:              slt          tp, t6, t6
                  add          tp, a4, s1
                  slt          t1, tp, s5
                  bge          s4, t5, 453f
452:              add          s9, a3, ra
453:              beq          t5, ra, 464f
                  srai         s7, t3, 16
                  auipc        s0, 72551
                  blt          t5, s3, 463f
                  and          a5, t2, s11
                  andi         s10, zero, -22
                  bgeu         t6, s4, 476f
                  srli         t3, a4, 28
                  xor          s1, tp, t5
                  srli         gp, s8, 3
463:              sltiu        t0, gp, 1075
464:              addi         s2, s9, -531
                  xor          t4, s6, s6
                  nop
                  srli         t5, s5, 0
                  ori          s6, s6, -1943
                  slt          a6, s1, a6
                  slli         t4, sp, 31
                  lui          s0, 425814
                  srai         t2, s11, 18
                  add          t2, s8, a0
                  sub          s1, t5, a0
                  bge          s4, a0, 489f
476:              srli         s10, zero, 4
                  srai         s4, tp, 26
                  beq          gp, s1, 492f
                  xor          s10, s9, gp
                  sltu         t2, s9, s5
                  sltu         s9, tp, a4
                  slli         a6, zero, 13
                  xori         t2, t5, -300
                  bne          a2, zero, 498f
                  sltiu        t0, t6, 1948
                  srli         s4, s4, 25
                  nop
                  slti         s0, a0, -1112
489:              blt          s3, t3, 508f
                  srl          s1, t2, s6
                  srl          s8, s7, s3
492:              srai         s7, t6, 10
                  and          t3, s7, a6
                  blt          s6, a7, 498f
                  xor          a5, s7, s1
                  sltu         s2, s8, ra
                  ori          s9, t6, 390
498:              addi         t1, s5, -1354
                  srli         a1, sp, 27
                  bgeu         s11, a4, 511f
                  sra          a4, s8, sp
                  addi         s7, t0, 662
                  blt          s2, tp, 519f
                  andi         s1, s9, 1415
                  or           s2, s11, t5
                  slti         a1, t4, 1357
                  lui          t0, 768242
508:              nop
                  sra          s11, a7, a2
                  sltu         s8, tp, gp
511:              slli         s11, a1, 13
                  add          s6, zero, zero
                  auipc        s2, 480692
                  xori         s7, a1, -326
                  sll          gp, s5, t2
                  sltu         s5, s3, a1
                  andi         s7, s6, -567
                  add          a3, ra, a2
519:              addi         s0, t2, -540
                  bltu         t4, t5, 527f
                  andi         a4, s4, 2012
                  sra          a1, ra, s4
                  or           s0, s7, s1
                  nop
                  blt          s0, s11, 530f
                  and          a2, a4, t6
527:              slt          a6, s2, s8
                  xori         s9, s4, -92
                  slt          gp, t3, s7
530:              slli         s4, gp, 12
                  bge          s11, a1, 549f
                  lui          s1, 695678
                  auipc        t2, 684906
                  slt          s8, t2, a0
                  slt          sp, a5, s7
                  xori         t1, s2, 1014
                  srl          s6, a4, t5
                  xori         s4, s2, 1477
                  slt          s4, t1, t1
                  bltu         a5, t0, 541f
541:              xor          t0, a6, s1
                  or           a6, a3, ra
                  bltu         s4, s0, 554f
                  sll          a5, t4, a0
                  nop
                  srli         t4, a5, 7
                  sltu         t1, s11, a6
                  srl          t1, sp, t0
549:              slli         a3, t4, 29
                  sltiu        s7, s5, -604
                  beq          s8, t5, 562f
                  auipc        t2, 759621
                  ori          t1, t0, -1257
554:              bgeu         s2, a6, 555f
555:              beq          s9, zero, 570f
                  add          s7, s2, s5
                  bne          t2, s3, 559f
                  blt          a4, s4, 570f
559:              lui          t3, 856917
                  blt          ra, t1, 572f
                  srai         a1, s3, 26
562:              sra          zero, t0, s10
                  sltu         s5, t0, t3
                  slli         sp, s7, 15
                  srl          t5, s11, s8
                  bltu         t1, zero, 569f
                  xori         s6, s6, 817
                  lui          t1, 1038540
569:              srai         s10, t4, 4
570:              slti         s5, s6, -1176
                  slti         s10, s4, -734
572:              sub          s6, s1, s8
                  sub          s9, tp, s11
                  slli         s8, t4, 23
                  srai         zero, gp, 20
                  blt          a3, s10, 587f
                  and          ra, sp, a7
                  slt          s11, s6, a7
                  sub          s0, t2, a2
                  srl          sp, zero, t3
                  andi         sp, zero, -1573
                  sub          a3, s3, a4
                  and          t4, t6, t1
                  sra          t6, a6, s0
                  bgeu         s5, tp, 599f
                  andi         s4, s3, -423
587:              sub          tp, a0, s7
                  slli         s6, s1, 21
                  xor          s0, t0, t5
                  addi         a6, s1, -1530
                  slt          s5, a7, s8
                  sub          a3, s8, t1
                  srai         s4, s0, 7
                  slti         t3, a5, 1500
                  srai         s11, a2, 15
                  slt          t6, a2, sp
                  slt          s9, t0, s9
                  beq          gp, a0, 608f
599:              nop
                  nop
                  slti         s11, sp, 1048
                  auipc        zero, 275250
                  blt          a4, a4, 614f
                  slli         a4, s9, 0
                  srl          a6, a4, s4
                  srli         t5, a7, 7
                  addi         s4, s5, 55
608:              xor          s0, a6, a2
                  beq          a3, s0, 612f
                  ori          t4, t1, 1965
                  sll          a2, a2, tp
612:              bltu         s8, s3, 616f
                  nop
614:              slti         t1, s9, 406
                  sra          s4, gp, a5
616:              xor          s0, t5, s7
                  addi         gp, s2, 650
                  blt          a5, t4, 622f
                  add          t0, a1, ra
                  lui          t2, 1017238
                  sra          s1, s8, a1
622:              addi         s6, gp, 50
                  andi         t3, s0, 111
                  andi         t3, ra, 1162
                  sll          a5, t0, tp
                  blt          sp, t6, 641f
                  ori          gp, s0, 1972
                  srl          t1, zero, t3
                  srl          s8, a6, s3
                  bne          t2, t2, 641f
                  srai         a4, a5, 14
                  ori          s7, zero, 1255
                  xori         s1, t5, 1054
                  sltiu        a5, t2, 136
                  blt          t6, a0, 646f
                  xori         a5, s2, -1027
                  slli         s11, s9, 2
                  sltiu        s2, t5, -125
                  and          a6, a0, t0
                  lui          t1, 810825
641:              andi         s8, s9, 1495
                  bltu         sp, s6, 659f
                  sra          s11, a5, a5
                  xor          ra, t4, t5
                  xor          s11, t1, zero
646:              slt          s5, s7, tp
                  slti         sp, s8, -606
                  blt          a3, s10, 662f
                  sra          s4, s2, ra
                  bltu         t1, a2, 653f
                  sub          s10, t1, s10
                  srl          a5, a5, zero
653:              sltiu        a3, ra, -561
                  sltiu        t4, a6, 1121
                  srai         zero, zero, 4
                  la           s4, region_0+651 #start riscv_load_store_rand_instr_stream_0
                  sb           a6, -526(s4)
                  srl          s5, s7, a6
                  sltu         zero, tp, t0
                  sh           s1, 279(s4)
                  lbu          t4, 1143(s4)
                  add          tp, t0, t0
                  slli         a4, t0, 4
                  lui          t1, 189150
                  srl          a3, sp, t3
                  sub          tp, zero, sp
                  xor          s5, a3, t4
                  lb           ra, 766(s4)
                  lhu          s1, -637(s4)
                  andi         t4, s6, -1379
                  lbu          gp, 15(s4)
                  or           a3, s1, a1
                  lb           ra, -346(s4)
                  sb           a4, -24(s4)
                  sra          t4, s3, s5
                  ori          gp, a4, 442
                  sb           t0, -505(s4)
                  and          s7, t6, s11
                  xori         a6, s2, -1075
                  lbu          s7, 657(s4)
                  slli         a3, a3, 21
                  sb           a5, -67(s4)
                  andi         a2, sp, -1962
                  slt          t3, s3, s7
                  auipc        a6, 660993
                  lbu          t5, -374(s4)
                  lb           tp, 649(s4)
                  lb           ra, 1186(s4)
                  nop
                  sll          s6, a4, t1
                  nop
                  lhu          s2, 329(s4)
                  and          t4, s11, a6
                  lb           s6, 324(s4)
                  xori         t6, a6, 140
                  srli         tp, a3, 22
                  and          t0, a7, sp
                  lbu          zero, -237(s4)
                  lbu          tp, -74(s4)
                  lb           a6, -144(s4)
                  sb           sp, 1078(s4) #end riscv_load_store_rand_instr_stream_0
                  ori          s5, t6, -1207
                  bltu         zero, a6, 676f
                  ori          a4, s1, -1480
659:              sltiu        s0, s1, 295
                  andi         s9, a1, -114
                  or           a1, t1, s0
662:              bltu         a4, t2, 673f
                  nop
                  sll          zero, t5, gp
                  bge          a0, t2, 676f
                  auipc        t4, 286557
                  srli         a4, a4, 20
                  beq          a0, t0, 669f
669:              slli         a5, sp, 31
                  sll          s11, s8, s3
                  bgeu         s8, t0, 681f
                  srl          sp, t5, s6
673:              slti         s11, s2, -1848
                  nop
                  or           t2, t1, t0
676:              sub          t4, t5, s11
                  lui          a3, 268934
                  nop
                  addi         s1, s9, 411
                  lui          a6, 216413
681:              sltiu        s4, s10, 1079
                  blt          t4, a2, 683f
683:              sll          s2, s3, s6
                  sub          t0, gp, tp
                  srai         s7, a7, 26
                  sub          a5, a1, t5
                  srl          s1, t0, a5
                  sltiu        s11, t6, -578
                  srl          s9, ra, zero
                  ori          sp, s1, 265
                  srl          tp, s10, a4
                  ori          t1, s6, -73
                  add          t4, s3, gp
                  sltu         s2, s10, a0
                  srai         t2, t5, 17
                  srl          t5, s6, a0
                  add          gp, s2, s9
                  sub          s7, a0, a6
                  blt          s0, t6, 711f
                  srl          t5, sp, t2
                  bltu         t4, a3, 708f
                  xor          t1, s8, a2
                  bne          s10, s5, 707f
                  and          tp, s4, s5
                  blt          s2, t1, 707f
                  sub          s11, s5, a2
707:              srli         s6, t2, 11
708:              xor          t4, gp, s4
                  srl          gp, s6, sp
                  sltu         sp, s3, a5
711:              andi         a2, a1, -159
                  lui          s9, 395282
                  slt          s8, s0, sp
                  sltu         s5, tp, s11
                  bge          s6, a4, 719f
                  sub          s2, s1, s2
                  addi         t4, gp, -1517
                  nop
719:              slt          gp, s6, s2
                  beq          a1, s8, 731f
                  or           t4, a1, s7
                  sltiu        a3, s6, 478
                  bne          s0, s4, 725f
                  or           a5, gp, s9
725:              nop
                  sra          s2, gp, a4
                  or           ra, s2, t2
                  sll          s0, a2, a5
                  sub          s9, gp, t4
                  sll          s0, s0, a5
731:              bne          s4, t6, 738f
                  bne          s6, a2, 743f
                  bne          gp, a5, 746f
                  sltiu        t5, a3, -1919
                  bgeu         t4, sp, 746f
                  and          t4, gp, t0
                  slli         s1, s1, 17
738:              blt          s1, a2, 742f
                  slti         t6, t2, 61
                  nop
                  bne          t5, s7, 746f
742:              bne          s8, a5, 745f
743:              nop
                  nop
745:              addi         s0, a7, -1573
746:              lui          a1, 646455
                  lui          s4, 433496
                  lw           ra, 4(s3)
                  addi         s3, s3, 60
                  sll          tp, s11, t1
                  addi         a4, t1, -396
                  auipc        t6, 281680
                  srai         a5, t6, 21
                  slti         a3, s5, -1117
                  andi         a3, t1, -1710
                  slt          a1, t2, ra
                  or           s1, a1, t4
953:              addi x20, x1, 1
953:              jalr x20, x20, 0
sub_10:           bltu         a4, t2, sub_10_stack_p
                  sll          sp, gp, a5
sub_10_stack_p:   addi         s3, s3, -20
                  sub          sp, s8, ra
                  sra          s5, s3, sp
                  sw           ra, 4(s3)
                  auipc        s0, 603911
                  la           t3, region_1+688 #start riscv_load_store_rand_instr_stream_0
                  lhu          tp, 2(t3)
                  lbu          a2, -157(t3)
                  sll          ra, s2, s7
                  srli         s2, s3, 18
                  or           s2, ra, ra
                  srl          gp, a1, a4
                  auipc        s0, 582132
                  lb           a1, -255(t3)
                  lb           s0, 244(t3)
                  sll          s2, t5, s5
                  lb           sp, -157(t3)
                  xor          gp, s7, t2
                  lb           sp, -255(t3)
                  sll          a6, s7, t3
                  sh           tp, -196(t3)
                  xori         s4, s10, 1801
                  or           zero, s10, s9
                  lhu          t1, 50(t3)
                  lhu          s0, -194(t3)
                  srli         s5, a6, 0
                  lh           s7, 44(t3)
                  and          s8, a4, ra
                  lb           s4, 151(t3)
                  lbu          a4, 233(t3)
                  ori          t4, t4, -397
                  sw           t6, -128(t3)
                  lbu          t4, -255(t3)
                  sltu         s8, t1, tp
                  slli         s5, t0, 23
                  sltiu        t1, t6, 1306
                  lh           a5, 164(t3)
                  slt          a4, s3, t1
                  sra          s4, a2, s0
                  lh           s2, -246(t3)
                  sb           t3, 252(t3)
                  sra          s6, s0, s0
                  sb           t5, 201(t3)
                  sb           t2, -182(t3)
                  sb           t3, -137(t3)
                  lui          tp, 373969
                  sb           s2, -161(t3)
                  sra          s1, sp, t3
                  xor          s11, t1, s0
                  sltu         t5, a6, a4
                  sb           gp, 245(t3)
                  add          ra, a7, t1
                  lbu          s8, 254(t3)
                  lb           tp, 31(t3)
                  sb           s5, 141(t3)
                  lw           t2, 116(t3)
                  lbu          a2, 164(t3)
                  lhu          a2, -214(t3)
                  lw           tp, 124(t3) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+1117 #start riscv_load_store_rand_instr_stream_2
                  sub          gp, tp, t3
                  add          a6, s3, tp
                  and          sp, t6, a1
                  lh           sp, 17(a3)
                  lbu          s1, -19(a3)
                  lui          s1, 669630
                  sh           t5, -3(a3)
                  lb           t0, 2(a3)
                  sb           s6, -51(a3)
                  sb           a4, -16(a3)
                  sb           a1, 56(a3)
                  lbu          a2, 41(a3)
                  add          a5, t1, s5
                  andi         a5, t2, -1637
                  lb           sp, 32(a3)
                  lb           s8, 28(a3)
                  sb           a4, -11(a3)
                  srai         t4, a6, 19
                  sb           s0, -26(a3)
                  lbu          t4, 14(a3)
                  xori         t5, s3, 1101
                  lb           tp, 29(a3)
                  sll          s9, t5, s8
                  sra          t2, t2, t1
                  xori         s11, a7, -1458
                  lbu          t3, 10(a3)
                  lbu          s6, -28(a3)
                  lbu          t5, 12(a3)
                  lh           t2, 1(a3)
                  sb           s0, 54(a3)
                  sb           t1, -34(a3)
                  sub          s6, t0, t2
                  lb           s9, 27(a3) #end riscv_load_store_rand_instr_stream_2
                  sll          s9, s4, a0
                  and          tp, s11, t4
                  xori         s4, t0, 945
                  addi         s7, a7, 266
                  nop
                  sltiu        s9, gp, 106
                  and          s0, s2, s3
                  addi         t1, a1, 27
                  sltu         t1, zero, a7
                  beq          a6, t6, 20f
                  and          s5, a1, s2
                  and          s2, s8, t0
                  sll          a1, s9, a3
                  add          s9, t1, s3
                  slli         ra, a3, 19
                  slli         t4, a6, 0
                  xori         t1, s1, 288
                  ori          a3, a2, 35
                  and          t5, s1, t5
                  slt          s6, sp, gp
20:               or           s5, s9, s0
                  slt          t1, t5, a0
                  bne          s9, zero, 38f
                  srli         s0, s8, 12
                  srl          t6, a7, a2
                  beq          a3, a6, 41f
                  xor          a3, t4, a1
                  addi         s6, s4, 119
                  beq          a4, t3, 36f
                  or           t3, s2, t1
                  slt          sp, s3, t1
                  bge          t2, a2, 47f
                  bge          a7, a3, 33f
33:               ori          a6, s7, -1900
                  slti         t2, a5, -1910
                  srai         t0, s4, 15
36:               and          tp, a0, s6
                  slt          s0, a3, a2
38:               addi         a5, s8, -1529
                  bltu         t6, t2, 51f
                  beq          a5, s4, 51f
41:               slt          s4, s1, t1
                  slt          tp, t0, t5
                  sub          t6, ra, s2
                  sub          s2, a3, tp
                  and          t4, a5, a6
                  sra          s1, s6, a2
47:               sra          s0, a6, t0
                  bgeu         s3, tp, 67f
                  srai         t1, s1, 3
                  addi         t5, t0, -48
51:               sra          t3, a5, a2
                  sltiu        s1, t4, -1119
                  auipc        sp, 520592
                  andi         t5, a2, 224
                  srl          ra, s6, zero
                  sll          a5, a4, ra
                  beq          a1, t2, 64f
                  srai         t0, zero, 0
                  andi         tp, s11, -55
                  srli         a1, s1, 11
                  lui          t6, 872772
                  sll          a1, s2, a2
                  sll          a6, ra, a4
64:               sll          t3, t6, s5
                  slli         tp, t0, 22
                  sltu         zero, s1, t4
67:               xor          sp, a5, t6
                  addi         s5, t5, 944
                  srli         sp, s4, 20
                  sra          a6, t3, s7
                  srai         t1, s5, 26
                  srli         s9, t3, 26
                  add          a3, a6, s0
                  slt          s6, t2, s0
                  bne          s3, a0, 81f
                  slli         s5, sp, 20
                  slt          t1, a4, a1
                  srl          t4, t4, t1
                  lui          a3, 853834
                  srai         a1, t2, 12
81:               sll          tp, s6, tp
                  auipc        t3, 455034
                  nop
                  beq          t2, s8, 98f
                  sub          s11, a5, t3
                  or           t5, t5, gp
                  add          gp, tp, a3
                  and          t0, s6, gp
                  lui          s11, 547430
                  ori          a4, s1, 1438
                  slti         gp, t1, -761
                  or           a5, gp, a3
                  slli         s4, s1, 18
                  sra          s0, a4, gp
                  slt          s11, a6, s4
                  bge          sp, t1, 111f
                  lui          s7, 460115
98:               sub          t6, a5, a6
                  add          t0, t1, t5
                  lui          s7, 908804
                  bge          s6, s9, 108f
                  slti         t0, s3, 347
                  nop
                  xor          s10, s6, a4
                  sra          a5, t1, s8
                  add          t3, a7, sp
                  auipc        s1, 518768
108:              xori         s9, t6, 1181
                  srai         s0, zero, 30
                  bge          s11, a4, 118f
111:              sltu         ra, t1, s8
                  bgeu         t5, a0, 113f
113:              nop
                  bgeu         tp, tp, 116f
                  xor          sp, s11, a1
116:              nop
                  srai         a5, a3, 10
118:              slt          a1, tp, a3
                  bgeu         a2, t0, 138f
                  nop
                  sltu         t6, s3, a3
                  sub          s1, s9, a0
                  addi         s4, zero, -1693
                  bgeu         a4, s4, 136f
                  blt          s0, t0, 140f
                  nop
                  nop
                  sltiu        a4, s5, -1171
                  slt          tp, sp, s4
                  srli         t6, a4, 7
                  sltiu        t5, a3, -704
                  sltiu        a5, tp, -1081
                  sltu         sp, s0, t4
                  sltu         a1, tp, sp
                  and          s8, sp, s8
136:              auipc        t1, 339974
                  sltiu        a1, a6, 873
138:              bgeu         s10, s6, 155f
                  sltiu        s0, a1, -974
140:              slli         gp, s9, 29
                  bne          s5, t1, 157f
                  sltu         s8, t4, s10
                  sltu         s9, s2, s3
                  or           t0, a3, s1
                  slti         ra, s11, -1056
                  slti         s1, ra, 723
                  bge          s10, gp, 150f
                  ori          t2, a7, -1144
                  sra          a6, t4, s0
150:              xori         gp, s0, -1735
                  nop
                  lui          s1, 852084
                  slli         s6, s8, 21
                  ori          a2, s4, 1346
155:              sub          zero, s6, s5
                  srl          s1, s3, t4
157:              bge          t6, t2, 169f
                  srai         ra, s8, 19
                  srli         s0, s3, 22
                  bge          t5, ra, 169f
                  sra          sp, s1, a2
                  sll          sp, a6, a2
                  sra          s8, zero, s1
                  blt          s7, a7, 176f
                  blt          s8, t3, 167f
                  blt          s7, zero, 169f
167:              sltu         t4, s8, s10
                  la           s7, region_0+1786 #start riscv_load_store_rand_instr_stream_1
                  srli         zero, a6, 5
                  ori          s6, s0, -6
                  sh           s10, -102(s7)
                  sltu         sp, s7, a4
                  lhu          tp, -210(s7)
                  srl          a1, s7, s9
                  xor          s6, s9, zero
                  lbu          a3, 199(s7)
                  slli         ra, t6, 9
                  add          s6, a6, zero
                  lui          s4, 317847
                  nop
                  sb           a2, 12(s7)
                  sra          tp, t3, t4
                  lb           t5, 0(s7)
                  ori          ra, tp, 1860
                  srl          t6, s1, tp
                  lb           a6, 90(s7)
                  sh           s0, -202(s7)
                  lb           a4, 166(s7)
                  lhu          t1, -76(s7)
                  lb           s8, 165(s7) #end riscv_load_store_rand_instr_stream_1
                  sra          a6, t3, s4
169:              sltiu        s8, s6, -1013
                  or           s7, tp, tp
                  sltu         t3, s10, t1
                  sll          s4, t5, s9
                  srl          s7, s2, t4
                  nop
                  or           s7, t5, t3
176:              addi         s0, t1, -102
                  slli         a6, s10, 22
                  sll          t0, s4, zero
                  bne          ra, s3, 196f
                  or           a5, t4, a6
                  lui          t5, 810384
                  or           zero, t2, s8
                  xor          zero, a6, sp
                  sll          a4, s10, t0
                  nop
                  auipc        s6, 782052
                  sub          t2, s9, s6
                  srl          a6, gp, s4
                  and          t3, s8, a5
                  add          s1, s10, s8
                  sltu         t3, s1, t6
                  xori         s0, s5, 213
                  slt          s7, a7, t0
                  auipc        s9, 272802
                  auipc        sp, 927598
196:              beq          a5, s9, 199f
                  slli         s10, s6, 3
                  add          s9, s8, a4
199:              sll          tp, t2, t4
                  bge          s1, a0, 215f
                  sll          a5, a6, s11
                  beq          ra, a3, 205f
                  sub          s11, t0, a7
                  andi         s8, s11, -735
205:              srli         a6, s0, 15
                  addi         sp, s3, -858
                  slti         s1, s10, 50
                  ori          t4, t1, -1836
                  slti         s9, a1, -935
                  srai         s1, t1, 8
                  sub          s8, a2, s11
                  xori         t2, s8, -224
                  sub          s0, s5, a7
                  blt          zero, a3, 225f
215:              srai         t5, a4, 9
                  bgeu         s10, tp, 231f
                  add          s9, zero, sp
                  xori         t2, s2, -1719
                  lui          s5, 328584
                  srli         s10, gp, 7
                  andi         tp, s6, 1821
                  bltu         a4, t2, 230f
                  sub          sp, a2, t2
                  auipc        s2, 773633
225:              sltiu        a4, t2, -528
                  slt          a4, t3, sp
                  addi         s8, a3, -979
                  sltu         s0, a6, zero
                  srl          s1, t4, a6
230:              xor          t2, tp, s2
231:              lui          t6, 599697
                  and          a4, a2, t4
                  slli         t6, s9, 0
                  bge          a5, s0, 248f
                  srai         a5, t6, 0
                  sub          s7, a4, a4
                  srli         a2, t4, 11
                  xor          a6, t4, s7
                  slti         s5, s0, 708
                  and          t1, t0, a4
                  sltu         a4, a7, ra
                  sra          s4, s5, s8
                  xori         a2, t4, -575
                  srli         s2, a2, 15
                  andi         a2, zero, 402
                  addi         t3, a0, -1886
                  sltu         t2, a1, sp
248:              srai         a1, a1, 13
                  srli         s5, t2, 19
                  slli         sp, s5, 3
                  ori          s9, a7, -304
                  ori          s6, s6, -1414
                  sltiu        s11, a5, 511
                  blt          zero, s0, 270f
                  bltu         t3, t5, 266f
                  andi         s8, t2, -166
                  sra          s4, t3, ra
                  addi         ra, s0, 1242
                  slt          a6, a1, t3
                  xori         s10, s2, -1056
                  sra          t2, ra, t6
                  sll          zero, t0, gp
                  andi         t1, s10, -587
                  slti         t1, t6, 100
                  andi         zero, a6, 791
266:              xor          s9, t3, zero
                  xor          s8, s8, s0
                  bne          sp, sp, 275f
                  sltu         a4, s3, a3
270:              srai         s8, s1, 15
                  srli         gp, a3, 13
                  slti         tp, t3, -271
                  addi         t6, s3, 746
                  or           s9, s9, a5
275:              slli         s1, tp, 4
                  srli         s8, tp, 11
                  nop
                  andi         s11, a7, -494
                  slti         t5, a6, -1144
                  bne          a5, zero, 286f
                  sra          a3, a2, s3
                  or           s11, s8, s7
                  and          gp, a2, s0
                  bltu         s5, a4, 301f
                  add          t0, a7, t0
286:              srli         s11, s0, 25
                  ori          t4, a4, 1833
                  auipc        s5, 484690
                  auipc        t2, 135673
                  ori          a4, t3, -1255
                  srl          a5, t1, t1
                  sll          s9, s6, a1
                  or           s0, a4, ra
                  slti         s7, zero, -1144
                  and          a4, s6, sp
                  or           gp, t3, s7
                  srai         t1, t4, 6
                  sltiu        s0, t3, -1639
                  sra          s0, s11, s8
                  and          t6, s2, s2
301:              sub          s10, t1, a1
                  xor          t5, a4, s8
                  auipc        a1, 144521
                  beq          s4, zero, 321f
                  sub          s7, t1, s4
                  bne          tp, t3, 309f
                  auipc        s7, 575208
                  and          t4, s0, s9
309:              auipc        s4, 666267
                  xori         s2, tp, -1987
                  slli         t6, a1, 17
                  bne          s11, ra, 315f
                  bltu         s3, s3, 315f
                  bne          a1, t1, 315f
315:              sltiu        s4, gp, 1752
                  srai         a4, zero, 27
                  add          s10, a0, s4
                  add          t4, s0, s8
                  sub          s2, s2, s11
                  srli         t5, t3, 31
321:              auipc        t6, 160049
                  add          s6, a5, s10
                  or           s8, a6, gp
                  slti         tp, t6, -1940
                  slli         s11, t0, 30
                  ori          sp, t2, -1874
                  and          s8, ra, a5
                  sll          a1, a5, s7
                  slt          sp, s6, sp
                  sra          s5, a5, s1
                  beq          s4, ra, 340f
                  slli         ra, tp, 18
                  addi         s0, a2, -845
                  bltu         a4, a6, 350f
                  slt          a3, t3, zero
                  bne          a0, a0, 355f
                  andi         zero, tp, 1688
                  sltu         t4, a0, sp
                  xori         s9, s5, -195
340:              slti         tp, t3, 255
                  srai         a5, a1, 12
                  sll          t3, t1, a2
                  beq          zero, t4, 350f
                  xori         t5, a0, -1231
                  srl          a6, s7, s2
                  slt          t3, a5, t5
                  bgeu         s9, t5, 366f
                  nop
                  bgeu         a6, s3, 361f
350:              slli         s11, a4, 12
                  add          s7, t4, t3
                  bltu         a1, gp, 368f
                  blt          t0, a0, 355f
                  addi         t1, s5, -615
355:              bgeu         s0, a0, 371f
                  beq          s4, zero, 364f
                  srai         s9, a5, 10
                  lui          a6, 713747
                  bne          s9, a2, 371f
                  srl          a5, t2, t3
361:              slli         s0, s7, 15
                  sra          t6, t6, a1
                  and          t1, s0, ra
364:              sub          t5, s6, zero
                  and          a4, zero, t4
366:              add          zero, s1, t5
                  srli         s1, s6, 0
368:              slti         sp, a5, -836
                  sltiu        s11, t4, 353
                  sltiu        s4, sp, 2027
371:              xor          s7, a1, a3
                  auipc        s0, 548822
                  nop
                  sltiu        t4, t5, 677
                  andi         s10, t3, 721
                  sltu         s10, s6, s2
                  slli         s4, t5, 10
                  slli         s9, s6, 26
                  beq          s7, a3, 391f
                  xor          s11, a2, s0
                  bge          s0, s5, 393f
                  and          t2, zero, a1
                  xori         s0, s3, -178
                  xori         s4, tp, -1530
                  xor          s10, tp, s1
                  blt          s5, s3, 387f
387:              xor          a2, s8, s3
                  sltu         s6, s0, a4
                  addi         s0, s0, -986
                  sltu         t4, t2, a6
391:              srai         sp, t3, 14
                  srli         s5, sp, 11
393:              auipc        a5, 396638
                  sltiu        s8, s8, 1035
                  srli         t5, s0, 6
                  ori          s7, zero, -858
                  ori          s7, s4, -1980
                  srli         a5, s0, 8
                  nop
                  or           a5, s0, s10
                  srli         t6, a7, 23
                  sltu         tp, s1, s1
                  slti         t5, s6, 1111
                  lui          a6, 787330
                  srl          s2, t6, s3
                  add          zero, tp, t6
                  bgeu         a6, zero, 408f
408:              and          a5, a2, s6
                  andi         s4, t4, 1869
                  sltiu        s1, t0, 1657
                  addi         s6, s11, 1869
                  ori          s6, ra, 1848
                  bltu         t1, s0, 428f
                  sll          s4, a0, a3
                  beq          s5, s11, 418f
                  slti         s8, a7, 1500
                  and          t0, a1, s6
418:              bge          t1, t2, 430f
                  sltiu        a2, s2, 1413
                  nop
                  add          t6, t6, t3
                  sub          a5, s7, s1
                  auipc        tp, 796853
                  or           s4, a2, s7
                  bne          s2, s4, 442f
                  sub          a1, s7, s2
                  xori         a1, s0, -1344
428:              xor          a6, s3, t3
                  sra          s9, a4, s5
430:              slt          s8, sp, t6
                  sltu         s2, s7, s7
                  sltu         t2, s9, s8
                  srli         s11, s4, 12
                  ori          t3, t5, 1090
                  sll          t2, ra, a4
                  slli         tp, s3, 23
                  add          a3, t3, s6
                  bne          s6, t6, 445f
                  bgeu         t5, zero, 458f
                  add          a2, s9, s6
                  ori          a5, sp, -10
442:              andi         ra, s3, -1083
                  bltu         tp, a1, 459f
                  addi         t3, a0, -328
445:              xor          zero, t0, s6
                  beq          s3, s11, 460f
                  slli         s2, t6, 4
                  xori         gp, t4, 986
                  and          t6, t3, s9
                  srai         s5, s8, 4
                  xori         ra, a0, 167
                  sltiu        s0, s8, -1935
                  srl          s7, s9, s4
                  andi         s6, t3, -1957
                  andi         a4, t6, -768
                  addi         s2, a7, -180
                  slt          t3, a5, a5
458:              bne          t5, t5, 474f
459:              srli         s2, a3, 18
460:              sltiu        t0, t6, -749
                  bgeu         s11, gp, 463f
                  sll          t0, t1, sp
463:              srai         t4, a3, 16
                  sltu         s1, t0, a2
                  blt          s4, a2, 472f
                  add          s5, s10, a7
                  ori          ra, t2, 2033
                  sltiu        t5, t3, 1868
                  sll          t4, s3, a2
                  lui          a1, 942962
                  and          t4, s7, a3
472:              srl          t6, s2, a2
                  blt          t0, a1, 484f
474:              sltu         t4, zero, a7
                  ori          gp, s8, -1763
                  bne          s8, t1, 488f
                  sll          t4, a6, s6
                  auipc        s7, 285782
                  bltu         a7, tp, 487f
                  srai         a1, a7, 12
                  bne          s8, t1, 483f
                  bgeu         t3, s7, 488f
483:              slt          s11, zero, a7
484:              xor          zero, ra, t1
                  auipc        a3, 688409
                  srai         s6, a5, 2
487:              sll          a3, a0, a4
488:              slli         a6, s0, 17
                  lw           ra, 4(s3)
                  addi         s3, s3, 20
                  andi         s10, s10, 1945
                  srl          s1, a5, t5
                  sra          t4, s3, s0
612:              addi x11, x1, 1
612:              jalr x11, x11, 0
sub_3:            addi         s3, s3, -8
                  or           s11, a7, s7
                  sw           ra, 4(s3)
                  ori          s11, t0, -1779
                  addi         s11, a7, 351
                  bge          s0, s10, sub_3_j7 #branch to jump instr
                  slt          zero, gp, a2
                  addi         t4, a1, -1271
                  add          s5, s3, t0
                  sll          ra, s2, t5
                  srl          s4, s5, a6
                  add          ra, t6, a4
                  sra          s11, a3, s2
                  sra          t1, s7, a1
                  srai         a3, a3, 25
sub_3_j7:         jal          ra, sub_9 #jump sub_3 -> sub_9
                  ori          gp, s5, -1493
                  la           t4, sub_7
                  srli         a4, ra, 20
                  lui          a3, 981661
                  sltiu        t1, s10, -1186
                  sra          s5, t2, s0
                  addi         t4, t4, 61
                  sltiu        s0, tp, -1289
                  srai         tp, ra, 31
sub_3_j8:         jalr         ra, t4, -61 #jump sub_3 -> sub_7
                  sra          s8, a0, t1
                  slli         ra, a4, 25
                  lui          s8, 428709
                  bge          ra, t2, sub_3_j9 #branch to jump instr
                  sra          a1, tp, t1
                  srai         t1, a0, 29
                  andi         a4, s7, -61
sub_3_j9:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  bgeu         a4, a1, 7f
                  addi         s5, s9, 551
                  bltu         a4, s2, 11f
                  add          t2, s4, s1
                  slt          t0, a1, a0
                  srli         a6, a2, 20
                  addi         a4, t4, -200
7:                sub          s10, s3, s1
                  xori         a6, s9, -338
                  slt          s4, s2, a5
                  blt          s6, a1, 18f
11:               nop
                  bltu         a3, t6, 22f
                  slti         t5, a4, 1258
                  and          s11, s2, t0
                  slt          a1, a0, a0
                  bge          s3, tp, 22f
                  srli         zero, a0, 7
18:               srli         s8, s10, 3
                  andi         t5, t3, 1211
                  srl          s2, t5, s11
                  and          s0, s8, s1
22:               slti         a1, s11, -109
                  auipc        a1, 746585
                  slli         s2, s3, 14
                  lw           ra, 4(s3)
                  srl          t5, a6, a2
                  addi         s3, s3, 8
                  auipc        s7, 723187
                  srli         s7, a1, 12
                  xor          t4, s0, s9
                  and          s0, tp, a1
66:               addi x11, x1, 1
66:               jalr x11, x11, 0
sub_8:            addi         s3, s3, -64
                  srai         s9, a7, 3
                  slti         t6, t1, -30
                  sw           ra, 4(s3)
                  sll          gp, t5, s10
                  auipc        gp, 289670
                  xori         s10, a1, -306
                  addi         s11, t0, 1131
                  beq          t1, s9, 12f
                  and          ra, t6, t3
                  slt          s6, t2, s3
                  slli         ra, a7, 23
                  or           a1, t4, a2
                  ori          a5, t6, -1595
                  slti         a5, tp, -1755
                  bgeu         t5, t6, 23f
                  ori          t6, s4, 1629
                  xor          a1, a7, tp
                  sltiu        a6, a4, 564
12:               blt          t2, s9, 19f
                  xor          s2, a6, a0
                  beq          gp, a3, 34f
                  slt          gp, s7, a6
                  addi         a6, s5, -13
                  sll          sp, s10, s6
                  xor          tp, t0, t4
19:               sra          s7, s9, a5
                  sltiu        s11, s8, 926
                  add          s8, a7, s11
                  slt          s6, a3, gp
23:               slti         s2, s0, 1336
                  lui          sp, 540941
                  sltiu        s9, s1, -743
                  slti         s5, a6, 1814
                  bgeu         tp, s8, 30f
                  and          s10, t0, t3
                  sll          sp, t2, ra
30:               slti         s5, a2, -227
                  auipc        s8, 144940
                  slt          a5, gp, tp
                  ori          t5, s11, -282
34:               bge          a3, t6, 35f
35:               sltiu        tp, ra, -503
                  and          a4, s5, t0
                  ori          t0, a6, -1
                  auipc        a1, 331591
                  addi         s5, a5, 967
                  lui          ra, 311247
                  sll          s9, a1, s5
                  andi         s6, gp, 809
                  lw           ra, 4(s3)
                  addi         s3, s3, 64
                  xori         a5, t2, -707
                  andi         s1, a1, 255
                  slti         t2, t1, -711
                  addi         s9, s11, 1000
                  srai         s2, a0, 28
57:               addi x5, x1, 0
57:               jalr x5, x5, 0
sub_1:            auipc        a4, 44351
                  slti         t0, s3, -727
                  srli         s7, t5, 3
                  blt          ra, gp, sub_1_stack_p
sub_1_stack_p:    addi         s3, s3, -60
                  sw           ra, 4(s3)
                  sll          s4, a1, a4
                  sltu         t2, a0, sp
                  srl          tp, a5, gp
                  srli         s11, s11, 8
                  auipc        s0, 37222
                  srl          gp, a0, s7
                  srl          t6, a3, zero
                  sltiu        t6, s9, 1194
                  srl          s9, a4, s9
                  sub          s6, tp, s8
sub_1_j4:         jal          ra, sub_4 #jump sub_1 -> sub_4
                  la           sp, region_1+1375 #start riscv_load_store_rand_instr_stream_0
                  slt          a4, s11, s9
                  and          a2, t6, s6
                  sb           a0, -36(sp)
                  lui          t3, 170617
                  lbu          tp, -44(sp)
                  lbu          a4, -38(sp)
                  lui          s0, 221976
                  sb           a4, 62(sp)
                  srl          tp, s6, s9
                  lb           s7, 18(sp)
                  sb           s1, -56(sp)
                  sb           a0, -55(sp)
                  srl          a2, a1, gp
                  add          t5, t6, t1
                  lbu          a2, 43(sp)
                  lb           s7, 48(sp)
                  lw           s7, -39(sp)
                  ori          s7, tp, 2019
                  and          t4, a2, s8
                  lh           s2, -47(sp)
                  sra          gp, s7, s0
                  sra          s6, s10, a7
                  sra          gp, ra, a6
                  lbu          s4, -5(sp)
                  lbu          s2, 7(sp)
                  add          t5, s6, s9
                  ori          a5, s8, -987
                  lh           s7, 15(sp) #end riscv_load_store_rand_instr_stream_0
                  sub          a3, s5, a1
                  or           a6, s3, s3
                  addi         s0, t2, 1982
                  and          t3, s0, t0
                  beq          tp, s8, 12f
                  srl          zero, s11, t2
                  slt          s5, s5, s8
                  blt          tp, a0, 10f
                  srl          gp, s1, s10
                  srli         s9, a7, 22
10:               nop
                  slti         ra, t2, -1257
12:               lui          gp, 325293
                  ori          zero, t5, -742
                  sltu         ra, s3, a3
                  srli         t2, s0, 11
                  and          t0, gp, t0
                  andi         t0, s11, -1603
                  sll          s10, s8, s2
                  sra          t6, s1, s6
                  srai         t5, tp, 18
                  sltiu        tp, s7, -1919
                  lui          zero, 899571
                  xor          a3, t6, s6
                  add          s6, s9, s9
                  slt          a5, t1, a7
                  bge          a3, a3, 33f
                  srl          a1, s3, s11
                  srl          t0, a2, s11
                  lui          t3, 304862
                  bge          a2, t4, 49f
                  srli         t4, s10, 23
                  beq          s2, t4, 44f
33:               beq          a5, sp, 53f
                  nop
                  sltiu        s4, a3, 1038
                  srai         s9, s6, 14
                  beq          a4, s4, 53f
                  sra          a4, s3, s2
                  srai         t5, gp, 6
                  add          t4, s0, a0
                  add          gp, a0, ra
                  ori          gp, t4, 29
                  srl          s11, t6, s9
44:               ori          s5, t2, 926
                  add          tp, s10, t5
                  andi         a3, s2, 907
                  addi         s11, t1, -1859
                  or           t4, t1, s7
49:               sltiu        a5, s2, 438
                  srl          s8, tp, t6
                  srai         ra, t5, 18
                  sub          t1, a2, t0
53:               bltu         s3, tp, 69f
                  or           s4, zero, s8
                  srl          s0, tp, a6
                  beq          t6, s3, 66f
                  xor          a5, s1, t6
                  srli         s1, s2, 10
                  and          a2, a1, a3
                  sra          t4, s11, ra
                  addi         t6, s6, 216
                  slt          a2, ra, s7
                  bge          t3, a2, 82f
                  slt          s11, a7, a2
                  xor          a6, t6, a4
66:               slt          a6, a0, s4
                  sra          t5, tp, zero
                  sltiu        s9, a2, 720
69:               blt          t6, t1, 87f
                  andi         t2, s4, 609
                  srli         t2, s11, 31
                  slt          sp, t1, gp
                  sub          s10, t3, t2
                  bgeu         t2, ra, 77f
                  slti         s0, s10, -77
                  srli         s10, a4, 11
77:               bltu         t0, t6, 97f
                  blt          s4, s4, 92f
                  sub          a2, t4, s0
                  slti         gp, t5, 82
                  bgeu         s11, s10, 100f
82:               sra          t4, a1, t3
                  sltu         zero, t4, s4
                  nop
                  auipc        a1, 249134
                  blt          t6, zero, 100f
87:               xori         s6, a6, -25
                  ori          tp, s7, -1030
                  srai         zero, s4, 24
                  and          s5, a1, t4
                  beq          s10, gp, 96f
92:               slti         t2, t3, 1114
                  slti         t3, s6, -1548
                  and          s2, a3, a7
                  xori         a3, s1, 1122
96:               bge          sp, t0, 106f
97:               srai         a1, ra, 25
                  ori          s8, t1, -1598
                  slli         a5, s11, 0
100:              bge          s3, a7, 118f
                  slli         a1, sp, 29
                  ori          s9, t4, -63
                  nop
                  srl          t5, t4, t6
                  beq          t4, s9, 111f
106:              blt          s0, t6, 122f
                  blt          t5, t2, 110f
                  lui          s2, 1000841
                  bltu         a6, a6, 121f
110:              slti         s0, a6, 1126
111:              bge          a2, t6, 128f
                  add          zero, s7, ra
                  nop
                  add          a3, s6, t0
                  bge          s0, a0, 121f
                  bge          a3, tp, 129f
                  slt          s2, t1, s6
118:              sltiu        s9, s8, 136
                  xori         a1, s6, 736
                  lui          t4, 166424
121:              auipc        a2, 112956
122:              bne          a0, s1, 142f
                  andi         s6, s0, -1408
                  xori         a5, a3, -387
                  sltu         s5, tp, a1
                  sll          a2, a7, a1
                  slt          a2, a2, a3
128:              sub          t1, t5, s9
129:              and          s9, s4, a2
                  srl          s1, s5, t5
                  bltu         a3, a2, 132f
132:              sra          a1, t5, s9
                  auipc        zero, 189398
                  nop
                  srai         s7, a0, 13
                  slli         s0, s2, 1
                  bne          t5, s9, 156f
                  xori         a6, sp, -1889
                  sub          a3, s7, t3
                  srai         t6, zero, 3
                  slli         t4, s2, 10
142:              slti         s8, t2, -1398
                  and          s0, s4, s9
                  sltiu        t1, a5, 468
                  sltiu        s2, s4, 311
                  slli         gp, s10, 26
                  auipc        a1, 364453
                  bgeu         tp, s11, 154f
                  sra          s1, s9, t2
                  add          t1, sp, s5
                  bge          t3, a7, 152f
152:              srl          t1, sp, t0
                  srai         s0, t4, 18
154:              auipc        s10, 563548
                  srl          s0, s1, zero
156:              slti         t6, t4, -1687
                  slt          a4, s10, a5
                  slli         s0, zero, 26
                  srl          t1, s7, a4
                  blt          s7, a4, 178f
                  or           s2, a7, s2
                  slti         s10, s6, -38
                  srli         s1, s7, 16
                  sltu         s4, sp, t4
                  bgeu         zero, zero, 179f
                  sltiu        t1, t4, 1385
                  xor          a5, s1, s7
                  or           t4, zero, s8
                  auipc        s7, 658178
                  bltu         s11, a2, 175f
                  or           t1, t2, gp
                  andi         s9, a2, -1034
                  auipc        s0, 826285
                  or           sp, a0, a3
175:              sub          s7, s1, t5
                  slti         ra, a6, -1857
                  slt          s8, s2, t0
178:              blt          t1, s10, 184f
179:              xor          a4, t3, t4
                  srai         zero, tp, 5
                  srai         ra, a0, 18
                  or           t2, t0, s4
                  xor          s2, a3, s5
184:              or           s1, sp, a5
                  addi         s4, a0, 5
                  or           zero, s10, zero
                  sltu         s1, s7, s6
                  slli         a4, s4, 25
                  bgeu         s2, s0, 196f
                  bne          s6, s4, 196f
                  lui          a1, 73011
                  auipc        t3, 41038
                  bgeu         a4, a4, 196f
                  sltu         t1, t0, s9
                  sll          tp, t5, a5
196:              and          t4, s2, s11
                  sltu         s6, s5, a6
                  lw           ra, 4(s3)
                  addi         s3, s3, 60
                  slli         a1, a7, 13
                  slti         s7, s2, 1715
                  add          a2, a0, s5
249:              addi x11, x1, 0
249:              jalr x11, x11, 0
sub_6:            bge          s0, a4, sub_6_stack_p
                  lui          a6, 276574
sub_6_stack_p:    addi         s3, s3, -60
                  xor          a5, t6, s5
                  slt          a2, s1, t2
                  sw           ra, 4(s3)
                  sltu         s7, s2, s0
                  andi         t4, t1, 694
                  la           sp, region_1+1710 #start riscv_load_store_rand_instr_stream_1
                  lb           a5, 7(sp)
                  nop
                  addi         t2, t3, -673
                  sra          s2, a7, ra
                  slti         s11, a2, 1040
                  lh           s1, 16(sp)
                  lbu          s4, -12(sp)
                  slt          t5, a5, tp
                  nop
                  sra          s4, a0, a5
                  sb           s2, 7(sp)
                  sb           t5, -1(sp)
                  addi         t4, tp, -2014
                  ori          gp, s5, 1862
                  lb           t6, 16(sp)
                  auipc        zero, 295116
                  or           a1, a2, s2
                  sb           a0, 2(sp)
                  ori          s9, s8, -693
                  lbu          s4, 3(sp)
                  srl          a5, t1, s8
                  and          a3, a7, a6
                  lhu          t0, 10(sp)
                  srli         s11, t6, 12
                  lbu          s2, 9(sp)
                  sll          a5, a1, s1
                  addi         t3, ra, -1195
                  lui          gp, 644782
                  slt          t0, tp, s6
                  srl          s11, sp, a2
                  slt          t5, zero, s2
                  slli         t4, a3, 11
                  lbu          s0, -16(sp)
                  sltiu        s0, t2, 285
                  sh           t4, -8(sp)
                  lbu          tp, 1(sp)
                  and          s5, s8, s1
                  lh           ra, -4(sp)
                  lbu          s11, 1(sp)
                  slt          t3, t5, s3
                  sb           s4, -13(sp)
                  slt          a4, t6, t6
                  lb           s9, -9(sp)
                  lh           t6, -14(sp)
                  nop
                  and          s10, s7, s9
                  lbu          s5, -5(sp)
                  lh           t3, 16(sp)
                  sb           t1, 15(sp)
                  lb           s4, 9(sp)
                  slt          s8, a1, ra
                  lb           a5, -12(sp)
                  sh           s3, 4(sp)
                  lb           s9, 9(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t1, region_0+1753 #start riscv_load_store_rand_instr_stream_2
                  sll          s0, a0, t6
                  lb           t6, -1580(t1)
                  lw           a1, 59(t1)
                  sb           s5, 148(t1)
                  lb           s11, -1198(t1)
                  lui          s1, 375023
                  lb           ra, -250(t1)
                  andi         zero, s11, 1282
                  sub          t5, s7, a0
                  lbu          tp, -910(t1)
                  nop
                  or           a3, s8, zero
                  slti         s1, s2, -1011
                  sb           s7, -848(t1)
                  sb           a2, -148(t1)
                  lw           a4, 31(t1)
                  and          a3, s4, t1
                  lh           a4, -1419(t1)
                  lh           s1, 45(t1)
                  addi         s7, s4, -1653
                  lb           a4, -1384(t1)
                  sb           s4, 22(t1)
                  lbu          tp, -1390(t1)
                  auipc        t6, 6504
                  slt          s7, t4, a1
                  lw           sp, -453(t1)
                  sltiu        a1, t1, -769
                  lh           t6, -755(t1)
                  sb           ra, -1047(t1)
                  sb           a3, -688(t1)
                  or           a1, tp, a0
                  sb           a7, -1554(t1)
                  lh           gp, 179(t1)
                  lhu          tp, -1405(t1)
                  or           s5, a5, s5
                  xori         s6, s3, -6
                  slti         a5, s7, -772
                  nop
                  add          a2, s6, a0
                  sb           s7, -198(t1)
                  sra          s4, a4, a7
                  ori          sp, tp, 1
                  sb           s5, 104(t1)
                  xor          s0, a4, t5
                  andi         s10, a7, 421
                  lh           sp, -1595(t1)
                  lb           sp, -1(t1)
                  lbu          s9, -1501(t1)
                  lui          a4, 814952
                  lb           a2, -1138(t1)
                  srli         zero, a1, 14
                  lb           s2, -80(t1) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_1+1576 #start riscv_load_store_rand_instr_stream_0
                  lbu          s10, -55(a2)
                  lh           sp, -56(a2)
                  srl          t0, t2, s3
                  sh           s0, 56(a2)
                  lhu          s9, -10(a2)
                  lui          t3, 247767
                  lw           s7, -40(a2)
                  lh           t3, 16(a2)
                  lb           t5, 49(a2)
                  sh           s8, -10(a2)
                  lbu          s8, 22(a2)
                  lbu          a6, -39(a2)
                  sb           a1, -51(a2)
                  sb           s1, 58(a2)
                  lhu          s7, -2(a2)
                  lh           s6, 40(a2)
                  slti         gp, tp, -1767
                  add          tp, a4, s11
                  lh           t0, 56(a2)
                  sh           a2, -64(a2)
                  lhu          a4, -18(a2)
                  auipc        s2, 526681
                  sb           s9, -17(a2)
                  sltu         s10, a1, s7
                  sh           a5, -36(a2)
                  add          sp, a4, a3
                  sw           ra, 4(a2)
                  sb           sp, 13(a2)
                  lh           a6, 28(a2)
                  lb           t5, -51(a2)
                  addi         s8, s2, 1878
                  lb           s5, -45(a2)
                  lui          t5, 896536
                  ori          s10, a1, -1258
                  ori          zero, s8, 1961
                  sb           s0, -41(a2)
                  srai         tp, t3, 16
                  sltu         t6, t5, a2
                  lb           t2, 30(a2)
                  srl          sp, s10, a7
                  lb           s7, -49(a2)
                  xor          t3, zero, zero
                  lbu          zero, -37(a2)
                  addi         sp, a6, -1760
                  sh           a1, 0(a2) #end riscv_load_store_rand_instr_stream_0
                  xor          s10, a5, s11
                  srl          gp, sp, s1
                  addi         t4, sp, -1924
                  blt          t3, s9, 7f
                  sltiu        s5, t2, 1350
                  or           a3, sp, s3
                  bltu         s1, a6, 16f
7:                sltiu        a3, t2, 188
                  sltu         s11, tp, s7
                  xor          zero, a6, s0
                  addi         t5, s3, 321
                  or           a4, t0, gp
                  sub          s7, a1, s2
                  slt          s8, t5, s3
                  slti         s4, s0, 79
                  add          a5, zero, s7
16:               addi         t2, t3, -1274
                  xori         s11, s2, 685
                  sra          ra, a5, s0
                  add          gp, a0, s11
                  srai         s1, s2, 8
                  beq          s10, s0, 34f
                  blt          s4, a7, 39f
                  xori         t6, a0, 1421
                  srl          t3, t0, a2
                  sra          t5, zero, s2
                  blt          a5, a7, 37f
                  sra          s11, a3, t0
                  slt          a4, a4, s3
                  beq          a1, s8, 36f
                  srai         zero, ra, 5
                  srli         a4, t6, 21
                  srl          zero, s8, a0
                  srl          s6, s0, a6
34:               andi         s9, s8, -1022
                  andi         s5, t2, -484
36:               bltu         s5, s7, 50f
37:               blt          a2, a7, 52f
                  slt          a6, t4, a7
39:               sltiu        a5, t3, 1016
                  slti         s10, s11, -1435
                  auipc        s1, 277771
                  sra          s2, t5, a6
                  srli         s7, s6, 9
                  sub          gp, sp, t0
                  beq          t6, a0, 61f
                  slt          a6, s2, zero
                  slt          s5, sp, t5
                  sll          t3, t3, s9
                  sra          a2, s8, s3
50:               nop
                  sub          s9, s3, s9
52:               xor          a4, ra, ra
                  xori         s10, t6, 1418
                  xori         a1, s8, 1964
                  blt          s4, t0, 64f
                  addi         gp, tp, 1709
                  ori          a5, a6, 20
                  and          s9, t0, t1
                  srl          gp, a4, t2
                  xor          t3, s0, s1
61:               lui          s6, 719226
                  slt          s0, a0, zero
                  add          s8, t6, s3
64:               auipc        t1, 83754
                  sll          tp, s5, zero
                  srl          a2, t6, s0
                  or           a1, a6, tp
                  bne          a2, s7, 82f
                  or           s8, s6, a7
                  xori         t6, s11, 632
                  bltu         sp, s11, 77f
                  xor          a2, s11, a7
                  sltiu        t2, a5, 38
                  srl          s9, s6, s0
                  and          s8, s1, tp
                  srl          a3, a5, s0
77:               slt          t6, gp, a0
                  srai         t1, s0, 9
                  auipc        a5, 67590
                  srai         ra, s1, 27
                  bne          a0, a2, 84f
82:               and          a6, s11, a4
                  add          s5, s7, a0
84:               sub          a2, s10, a6
                  srai         t3, s6, 13
                  bgeu         t0, s5, 94f
                  slt          s10, t4, t5
                  sll          zero, gp, s2
                  bltu         s3, a5, 100f
                  or           a3, s10, t2
                  xor          s8, t3, tp
                  xor          zero, s9, zero
                  sltu         s0, a6, tp
94:               add          s1, tp, s1
                  blt          a1, t5, 115f
                  blt          s11, sp, 109f
                  slli         s11, t3, 7
                  bne          s6, ra, 101f
                  andi         t5, a7, -960
100:              bne          tp, t0, 107f
101:              nop
                  sltu         t6, sp, s10
                  lui          s0, 770192
                  add          s11, zero, a7
                  lui          t4, 720267
                  sltu         s10, t0, t3
107:              sltu         a4, t4, t6
                  bltu         s6, ra, 126f
109:              srl          t6, s2, t0
                  slli         a4, sp, 11
                  sra          tp, t5, s2
                  xor          a5, t4, s8
                  andi         s9, a6, -905
                  sltiu        s8, t2, -1501
115:              and          s8, t6, s6
                  bgeu         t1, s0, 132f
                  bne          a6, a2, 122f
                  slt          s10, s9, t1
                  andi         zero, s11, 1140
                  slli         t4, a6, 13
                  srai         a5, s0, 16
122:              beq          s2, a6, 125f
                  slli         tp, s7, 26
                  srli         s9, s0, 28
125:              srli         t2, t0, 11
126:              slti         s8, s9, -1495
                  xori         s8, t5, -911
                  slti         gp, a1, -1564
                  lui          s11, 1045021
                  andi         t1, zero, 532
                  sltu         zero, a7, s4
132:              or           a2, a0, s4
                  sll          a1, s7, a0
                  ori          t0, a4, -666
                  and          a4, s3, ra
                  srli         ra, t5, 7
                  sub          a6, t2, s9
                  slli         ra, s7, 26
                  xori         s5, a7, 1118
                  and          s1, ra, t6
                  and          t2, s7, s0
                  and          t3, tp, a6
                  sltu         s10, s0, t4
                  bgeu         zero, s9, 148f
                  sll          a4, s2, ra
                  lui          t0, 939736
                  srai         t5, a1, 9
148:              srli         t1, a3, 31
                  sltu         tp, s6, tp
                  ori          s11, a0, -1447
                  beq          s10, a7, 162f
                  add          a6, s10, a4
                  lui          a4, 781957
                  slli         a5, s6, 6
                  xori         t6, a4, 1042
                  srai         s1, zero, 6
                  xor          s8, s4, t0
                  srli         s0, t5, 26
                  bne          a5, s5, 171f
                  xori         zero, a4, 282
                  addi         s8, a2, 481
162:              srli         zero, a4, 25
                  blt          t2, ra, 182f
                  bltu         t5, zero, 183f
                  sll          t6, t1, s9
                  ori          a6, s5, -1112
                  and          s0, a3, a4
                  sltiu        zero, s4, -951
                  auipc        s2, 231022
                  lui          a1, 469482
171:              sub          a1, tp, s7
                  srai         sp, a4, 9
                  srl          a4, s10, s8
                  xori         a2, t0, 1252
                  slt          gp, s9, ra
                  sra          s10, t0, t6
                  bne          a6, s9, 193f
                  nop
                  slt          s11, t3, s9
                  sltu         t1, s1, t3
                  slli         s7, ra, 25
182:              or           s1, a2, s10
183:              sub          ra, t6, a2
                  blt          s9, s2, 197f
                  ori          a6, s4, 794
                  sll          t1, t5, s7
                  nop
                  sltu         s9, s4, t6
                  and          tp, ra, t1
                  slt          t1, gp, a3
                  blt          t2, s2, 197f
                  beq          t1, a5, 201f
193:              sra          s2, s5, s6
                  andi         a2, s2, 8
                  bgeu         t4, s11, 209f
                  add          s0, s6, gp
197:              slti         s7, a3, 5
                  slti         a1, s2, 1066
                  sltu         s7, t5, a1
                  bltu         s3, s9, 216f
201:              slt          s6, t0, gp
                  or           t6, t3, s2
                  bltu         s10, t4, 216f
                  ori          sp, sp, -170
                  bgeu         t6, gp, 213f
                  xori         s6, gp, 1203
                  sra          s1, t6, tp
                  bltu         s8, s3, 225f
209:              blt          t5, a0, 225f
                  bge          a0, a5, 215f
                  sub          t3, a7, a1
                  srl          tp, s3, s1
213:              auipc        a3, 58265
                  or           zero, s5, t6
215:              blt          a5, t6, 233f
216:              sltu         s5, s7, s10
                  bgeu         s5, s3, 220f
                  nop
                  xor          tp, tp, t2
220:              lui          a4, 317583
                  bne          s6, s4, 240f
                  bltu         s7, t6, 233f
                  xori         s11, s5, 1089
                  slt          gp, s9, s8
225:              bne          a5, a1, 232f
                  lui          a2, 931849
                  bne          s4, t3, 238f
                  xori         t6, tp, -576
                  sltiu        s1, s7, 677
                  and          s2, a4, s6
                  srl          s5, s7, s0
232:              auipc        s6, 1038250
233:              blt          gp, s7, 252f
                  sltu         t1, s2, ra
                  srli         a6, t1, 26
                  beq          a6, s1, 243f
                  blt          s3, t2, 250f
238:              slti         a2, sp, 1367
                  ori          ra, t6, -1856
240:              slli         s0, s3, 28
                  srai         t0, s2, 22
                  bgeu         a6, t5, 245f
243:              bltu         t0, t0, 259f
                  sltu         t3, a7, s6
245:              auipc        s0, 374417
                  or           s6, a5, s5
                  lui          t0, 539632
                  srl          t3, a5, zero
                  sltu         s7, s1, t5
250:              sra          gp, s1, s11
                  bne          a1, s6, 254f
252:              sra          s1, t4, t4
                  sra          a5, a3, s3
254:              sltu         s1, a1, s9
                  bge          gp, t4, 268f
                  andi         t1, s4, 1926
                  bge          s10, s11, 277f
                  ori          s8, t3, 213
259:              blt          s5, s6, 274f
                  bne          gp, s10, 274f
                  xor          s7, s10, gp
                  blt          s5, s6, 266f
                  bne          a7, s8, 274f
                  srl          s8, gp, a4
                  bltu         gp, s2, 277f
266:              srli         s1, s5, 4
                  blt          s1, t5, 277f
268:              auipc        s7, 688444
                  srl          t1, s6, t0
                  slt          s5, gp, a3
                  srai         tp, a3, 13
                  sll          a5, a0, s2
                  lui          s9, 1025702
274:              auipc        s11, 402266
                  sll          s5, s10, s10
                  slti         s6, s5, -274
277:              sltiu        t0, s11, 1680
                  sll          s5, s0, a3
                  beq          t3, a3, 283f
                  sltiu        a6, a2, -974
                  slli         ra, s3, 2
                  xor          a5, a1, s1
283:              srl          s11, s0, a2
                  bge          t1, s5, 291f
                  bge          tp, a3, 289f
                  slti         tp, t2, -1252
                  auipc        s7, 383922
                  slt          t3, s8, a2
289:              lui          s6, 385188
                  auipc        s7, 1037569
291:              auipc        t2, 898952
                  srli         sp, sp, 14
                  srli         t3, s10, 10
                  slli         t4, s7, 21
                  sltiu        s9, gp, 1406
                  sltiu        a4, s10, -1306
                  sra          s5, s2, a7
                  bne          s9, s0, 315f
                  xori         t0, a6, -337
                  or           a4, a4, a1
                  sra          a6, zero, s3
                  bgeu         zero, a3, 306f
                  blt          s7, a4, 306f
                  bltu         t1, a5, 315f
                  or           s10, a0, s11
306:              auipc        t6, 550633
                  slli         s6, tp, 23
                  sltu         t1, tp, gp
                  srli         s6, a1, 9
                  auipc        ra, 141672
                  ori          a4, sp, -296
                  slt          s8, s0, a6
                  blt          s11, a5, 319f
                  sltiu        a1, t0, 1689
315:              bge          s0, t4, 318f
                  and          sp, t6, t3
                  xor          a5, t1, sp
318:              slli         s11, ra, 27
319:              bltu         s1, a5, 332f
                  bgeu         a7, s3, 336f
                  andi         zero, s7, 1876
                  andi         a3, s9, 920
                  sra          t2, a1, sp
                  sub          t5, s11, a0
                  srl          s8, a4, s0
                  auipc        a5, 365435
                  beq          s2, s4, 338f
                  nop
                  nop
                  sra          t3, sp, a2
                  slti         s4, zero, -648
332:              xori         t5, t4, 937
                  xori         t3, tp, -485
                  bge          t2, a3, 345f
                  andi         s4, t2, -1911
336:              add          tp, a2, ra
                  srai         t5, s7, 14
338:              addi         zero, s5, 267
                  andi         s7, a2, 586
                  xori         s6, a0, -1734
                  beq          s11, a4, 348f
                  sub          s5, s5, t4
                  add          a1, s7, s10
                  bne          s8, gp, 347f
345:              addi         s11, s4, 1220
                  srai         s10, t3, 0
347:              srai         a4, s2, 7
348:              andi         s10, s7, -1039
                  andi         t1, a6, -1417
                  nop
                  sll          a4, t0, sp
                  sltu         t2, t0, a0
                  auipc        ra, 586429
                  and          s0, s7, t1
                  ori          t6, s10, 1321
                  bge          s5, t2, 369f
                  lui          t3, 587063
                  slli         t1, s0, 17
                  beq          s11, a7, 367f
                  auipc        zero, 915146
                  lui          a2, 839767
                  nop
                  srl          s8, zero, t3
                  auipc        a6, 570297
                  xor          s11, s6, s5
                  sll          s7, s10, t0
367:              srl          t1, s8, ra
                  nop
369:              sll          gp, a4, t0
                  blt          a3, a0, 379f
                  xor          a1, t5, ra
                  sltu         t1, s10, t0
                  slti         a4, zero, -97
                  or           a5, zero, a1
                  or           s11, t6, a3
                  ori          a4, a1, 1102
                  bgeu         a4, s1, 391f
                  sll          gp, a2, s7
379:              bne          a3, s9, 395f
                  slli         t4, sp, 4
                  xori         a6, s5, 1505
                  bne          zero, s2, 397f
                  bltu         s1, a3, 397f
                  andi         a4, t4, 686
                  xori         a3, gp, 957
                  bge          gp, t6, 405f
                  bltu         t6, a3, 406f
                  sltiu        s1, s8, 1263
                  srli         t6, s3, 16
                  blt          s9, a7, 403f
391:              add          t6, sp, a1
                  slt          a5, s11, s7
                  andi         s6, s3, 1151
                  bne          s6, s4, 404f
395:              and          s7, s7, t0
                  blt          t0, t0, 414f
397:              sll          ra, t6, s10
                  addi         s9, s3, 771
                  slt          a2, t2, a5
                  sub          t5, t4, a7
                  add          t5, t6, s4
                  bltu         s0, a4, 407f
403:              add          s4, a5, t0
404:              bge          s4, t4, 416f
405:              blt          s9, s3, 421f
406:              beq          a7, s10, 426f
407:              srl          s5, a5, a1
                  auipc        a2, 503793
                  lui          ra, 840293
                  slti         a6, a5, -907
                  bge          tp, s0, 427f
                  srli         a1, s7, 16
                  and          sp, t2, a2
414:              blt          s7, s7, 425f
                  bge          a2, s9, 418f
416:              srl          s1, s2, s6
                  auipc        t6, 106220
418:              bltu         a7, t4, 421f
                  slti         s10, gp, 508
                  beq          s1, tp, 427f
421:              srai         s6, s10, 25
                  nop
                  xor          ra, s4, sp
                  sltiu        a4, s2, -107
425:              bgeu         t6, s9, 431f
426:              sub          tp, ra, a4
427:              sub          t6, a4, s7
                  bne          sp, s4, 448f
                  sub          s10, a5, a0
                  addi         s2, s6, -1312
431:              sltiu        t5, t3, 620
                  bne          s2, a4, 450f
                  la           t1, region_0+942 #start riscv_load_store_rand_instr_stream_3
                  auipc        t5, 176983
                  lb           t6, -109(t1)
                  sh           t3, 224(t1)
                  lb           a5, 215(t1)
                  add          s4, a5, s3
                  lhu          t0, 186(t1)
                  lui          t2, 912250
                  lhu          a5, -44(t1)
                  srl          s0, a3, s8
                  addi         tp, a6, -313
                  sub          s8, s3, a1
                  xor          s9, a7, s11
                  xori         a4, s11, -1320
                  lbu          t6, -236(t1)
                  add          t0, t2, s3
                  sb           s4, -237(t1)
                  lh           t2, -18(t1)
                  slt          ra, s8, ra
                  lbu          s1, -137(t1)
                  sh           t4, 244(t1)
                  sra          a2, a3, a4
                  lb           s5, -241(t1)
                  sltu         s2, t2, s1
                  addi         s0, a4, -179
                  sb           t1, 233(t1)
                  slti         a2, s8, -491
                  lbu          t6, -200(t1)
                  ori          a1, s7, -1528
                  andi         a3, s5, 1747
                  lui          s9, 883293
                  lb           s4, 58(t1)
                  sb           a3, -211(t1)
                  lbu          s1, -249(t1)
                  lh           a3, -178(t1)
                  slt          gp, sp, s10
                  add          s9, t1, t2
                  sra          a6, zero, s8
                  lhu          a5, 126(t1)
                  lh           s0, 90(t1)
                  sltiu        ra, s11, 660
                  lw           s9, 250(t1)
                  xori         s8, zero, 841
                  lb           ra, -91(t1)
                  slli         t3, zero, 4
                  sltiu        s6, s11, 1560
                  slli         a3, s7, 23
                  sb           a4, -23(t1) #end riscv_load_store_rand_instr_stream_3
                  sub          a3, a0, tp
                  blt          s7, zero, 439f
                  bge          a7, a0, 444f
                  slti         sp, a0, -1185
                  srai         a5, ra, 20
                  ori          a4, s4, 354
439:              slli         a4, ra, 13
                  lui          a4, 687028
                  slt          s7, s3, a0
                  xor          a5, sp, s1
                  beq          s5, s1, 447f
444:              srl          a6, t1, s1
                  nop
                  lui          s1, 993101
447:              blt          s4, gp, 455f
448:              and          a2, t1, gp
                  sltu         a3, a6, t1
450:              xori         a6, zero, -999
                  bge          s3, t3, 464f
                  beq          s0, t6, 465f
                  nop
                  add          s7, a2, s1
455:              lui          a3, 115184
                  xori         s10, a5, 378
                  sll          s5, s7, s5
                  sub          s1, s10, s1
                  or           t3, a6, t3
                  add          s10, t2, a4
                  xor          s1, s1, ra
                  nop
                  slt          t6, t1, a5
464:              slli         s10, sp, 22
465:              xor          s1, gp, a5
                  bgeu         t0, a7, 485f
                  addi         a4, tp, 127
                  lui          zero, 572475
                  sub          t0, s1, t0
                  blt          s9, s5, 487f
                  bne          s0, a6, 485f
                  xori         s6, gp, 490
                  srli         t5, t3, 26
                  srai         a3, s3, 24
                  srl          a2, ra, gp
                  and          t6, a1, s7
                  slti         a2, t5, 436
                  sra          a5, t6, gp
                  add          t4, s6, s4
                  slt          a3, a1, a6
                  sub          s5, s7, tp
                  slti         t5, t2, -1080
                  andi         zero, t5, -955
                  srai         s10, s8, 10
485:              sub          s6, a6, a2
                  sll          s6, tp, a0
487:              andi         s1, tp, 923
                  auipc        tp, 812365
                  srl          a5, s10, t3
                  nop
                  bgeu         s1, s0, 501f
                  srl          t0, a0, sp
                  xori         zero, s8, -1070
                  sra          t0, t0, s11
                  bgeu         tp, zero, 506f
                  srli         a5, a7, 0
                  sra          s7, s1, t3
                  and          t3, s7, a7
                  bge          a7, s1, 513f
                  nop
501:              sra          s10, t3, a3
                  addi         s11, s4, -555
                  bge          tp, t6, 507f
                  blt          s9, t5, 511f
                  lui          a3, 865119
506:              bltu         t4, s7, 518f
507:              sltiu        s9, t2, 113
                  andi         t5, gp, -140
                  beq          tp, a0, 520f
                  srl          t0, s5, t6
511:              addi         s11, s9, -427
                  addi         s1, s10, 858
513:              xori         gp, s5, 1506
                  srli         a3, a4, 11
                  slt          t1, s11, t2
                  add          t0, t6, s1
                  andi         gp, a3, -1930
518:              sltu         sp, s4, s4
                  slt          a3, s0, ra
520:              slt          zero, t1, t1
                  blt          t6, t5, 537f
                  sll          t1, a6, a2
                  ori          s0, sp, 1538
                  blt          s0, tp, 537f
                  srai         s9, a5, 16
                  andi         ra, s5, -1143
                  xori         a5, s6, -1731
                  bge          gp, t6, 543f
                  sltu         a5, a6, t1
                  srl          a2, s6, sp
                  xor          gp, s11, s6
                  bgeu         t2, t3, 535f
                  slti         s4, a7, -648
                  auipc        zero, 456708
535:              slt          ra, a0, s10
                  nop
537:              bge          a7, s8, 553f
                  ori          zero, s11, 455
                  sltu         t5, ra, s3
                  lui          zero, 838246
                  sub          s11, t0, t0
                  bltu         s1, s3, 561f
543:              sltu         s4, s1, s2
                  slti         t2, s9, -1259
                  auipc        s2, 996974
                  ori          s10, s8, 1389
                  sra          t1, t6, s5
                  bne          t5, a1, 564f
                  srl          s9, s7, a0
                  bne          t2, a1, 568f
                  auipc        s1, 809211
                  sltiu        t6, s10, 1988
553:              sub          a6, s2, s0
                  slti         s9, gp, -772
                  bltu         ra, a5, 570f
                  lui          t1, 376103
                  srai         t1, a5, 24
                  sll          t0, zero, t3
                  lui          t5, 512232
                  sra          s11, s7, a7
561:              sll          zero, a7, s10
                  sltu         zero, a7, a2
                  addi         s7, tp, 507
564:              srl          t5, t2, a4
                  beq          t0, t0, 584f
                  ori          tp, t0, -1395
                  or           a6, s11, s10
568:              xori         a3, gp, -56
                  srli         t3, t1, 29
570:              bltu         s4, a6, 573f
                  slli         s0, sp, 24
                  xor          tp, ra, s2
573:              slli         t0, s7, 14
                  slti         gp, s5, 1488
                  addi         s0, zero, -317
                  slti         s6, a0, 529
                  auipc        sp, 166633
                  sra          a4, t3, s7
                  auipc        a1, 457473
                  bge          s10, gp, 587f
                  sll          a2, s6, gp
                  srl          s0, sp, tp
                  bltu         t4, t0, 603f
584:              sll          ra, s1, s2
                  add          t5, t2, s7
                  nop
587:              srli         t2, a6, 7
                  beq          s8, s4, 599f
                  srl          t5, t2, t5
                  sll          gp, a5, s2
                  bgeu         a1, s3, 599f
                  or           tp, a5, a1
                  slti         s1, zero, -40
                  slli         a3, zero, 31
                  sub          s2, t0, t3
                  andi         s9, s9, 515
                  bltu         a3, a3, 610f
                  addi         s7, a6, 1203
599:              ori          s7, s3, 1517
                  sll          t3, s10, s0
                  xor          s6, t5, s0
                  and          sp, s11, t4
603:              add          s11, a4, a3
                  blt          s1, t1, 610f
                  addi         a4, ra, 1768
                  and          s8, t1, s5
                  add          t4, s3, s5
                  andi         a4, a0, -1992
                  sub          s1, t3, s6
610:              blt          s0, s6, 617f
                  srai         a1, s9, 29
                  bltu         s5, a3, 621f
                  nop
                  slti         zero, a6, -805
                  sll          t2, zero, a4
                  xori         s11, a3, 1414
617:              or           zero, a6, gp
                  xori         s11, s5, -1451
                  add          s11, s8, a0
                  bge          a0, s6, 623f
621:              bgeu         a7, ra, 623f
                  slti         t5, tp, -1100
623:              sll          s5, t1, t6
                  lw           ra, 4(s3)
                  and          t5, gp, s5
                  addi         s3, s3, 60
                  slt          t5, a1, s1
                  srl          s4, t6, a1
839:              addi x12, x1, 0
839:              jalr x12, x12, 0
sub_5:            bge          a7, s8, sub_5_stack_p
sub_5_stack_p:    addi         s3, s3, -44
                  addi         t5, s7, -1089
                  sll          t2, a6, s2
                  sw           ra, 4(s3)
                  auipc        s7, 217961
                  nop
                  slt          a1, s4, t1
                  sltu         gp, s10, t2
                  sub          t3, t4, ra
                  bge          t0, a3, 9f
                  slti         gp, t1, -351
                  ori          s7, t2, 1305
                  and          t2, gp, a1
                  ori          s11, gp, 1268
                  bne          s10, s11, 9f
9:                sub          s9, a6, tp
                  lw           ra, 4(s3)
                  sltu         t1, t1, s11
                  addi         s3, s3, 44
                  and          t3, a3, a0
                  xori         t4, t1, -1624
                  lui          s0, 383771
                  sll          t5, t1, t2
                  sltu         t1, s0, s6
                  ori          s4, t1, 488
                  slli         s2, t0, 2
27:               addi x31, x1, 0
27:               jalr x31, x31, 0
sub_4:            slli         s4, t5, 25
                  addi         s3, s3, -60
                  slli         s0, a2, 7
                  sra          a5, t6, a4
                  auipc        t5, 206054
                  sw           ra, 4(s3)
                  sub          t3, s7, a4
                  or           tp, s0, a7
                  la           a2, sub_6
                  srl          s1, gp, tp
                  addi         a2, a2, 1006
                  sra          s4, s11, gp
                  nop
                  xori         a6, t4, 1227
                  add          s11, s9, s4
                  xori         a1, s4, -1946
                  addi         s9, ra, -868
                  beq          a1, s7, sub_4_j11 #branch to jump instr
                  srl          zero, s3, tp
                  add          t1, t6, gp
                  srl          a1, s8, t3
sub_4_j11:        jalr         ra, a2, -1005 #jump sub_4 -> sub_6
                  la           s7, region_0+555 #start riscv_load_store_rand_instr_stream_1
                  lui          a3, 286407
                  sll          s11, s11, zero
                  lhu          s5, 13(s7)
                  lw           t5, -19(s7)
                  or           s10, t1, a3
                  lhu          s1, -13(s7)
                  auipc        a4, 821320
                  sb           t6, 61(s7)
                  slli         s4, ra, 14
                  xori         t3, t3, 1506
                  xori         a5, tp, -1965
                  lb           gp, -130(s7)
                  or           a2, s3, s10
                  sh           a4, -213(s7)
                  sb           t6, -64(s7)
                  xori         a5, a1, 13
                  ori          s6, tp, 44
                  addi         s2, a7, 838
                  sh           a5, 253(s7)
                  sb           s6, 136(s7)
                  ori          a2, s0, -1310
                  lh           a1, -207(s7)
                  lui          a5, 650611
                  srai         gp, a7, 5
                  lb           a5, -94(s7)
                  lbu          t0, -151(s7)
                  lui          ra, 575383
                  and          tp, t2, s6
                  xor          s11, tp, s10
                  ori          s5, t6, -917
                  add          s2, a4, zero
                  slli         s1, t3, 0
                  ori          t6, s9, -1200
                  lbu          t6, 28(s7)
                  lb           s5, 130(s7)
                  xori         tp, t0, 1073
                  sltiu        a5, s0, 795
                  slti         t1, sp, -894
                  lbu          s8, 62(s7)
                  lbu          s10, 9(s7)
                  and          s9, ra, a5
                  sll          s5, t3, a0
                  lw           tp, 185(s7)
                  and          a4, t6, sp
                  lh           s0, 75(s7) #end riscv_load_store_rand_instr_stream_1
                  xor          s11, s0, t6
                  sltiu        t0, a7, 1187
                  sltiu        t1, t1, -1706
                  andi         a6, t1, 236
                  srai         s5, t2, 31
                  sra          sp, s6, sp
                  srai         a5, t3, 23
                  bgeu         t2, t4, 17f
                  slt          s0, s7, ra
                  sll          s9, t3, s8
                  srai         sp, t6, 14
                  andi         s11, t4, -1511
                  sra          s11, zero, t6
                  xor          a3, a0, t2
                  blt          s3, a0, 25f
                  srai         a3, s6, 20
                  srai         s0, t3, 28
17:               srai         s10, gp, 4
                  srl          a1, t5, t4
                  and          s8, s8, t5
                  la           gp, region_1+1790 #start riscv_load_store_rand_instr_stream_0
                  or           sp, s1, t5
                  srai         t6, s11, 21
                  or           s5, a5, zero
                  lb           t3, -47(gp)
                  lh           a5, -52(gp)
                  lhu          a5, 32(gp)
                  sb           s6, 58(gp)
                  lbu          t0, -26(gp)
                  lbu          s9, 21(gp)
                  xori         t0, a3, 398
                  sll          s11, ra, s11
                  lui          t4, 410305
                  lui          s9, 887535
                  xori         t1, t0, -192
                  lb           a6, 47(gp)
                  sb           t1, -35(gp)
                  sb           s1, 37(gp)
                  slt          t6, gp, s2
                  addi         t6, tp, 1623
                  slti         t6, s5, 1535
                  xori         t2, s5, 1884
                  sb           a0, 33(gp)
                  lb           s11, -53(gp) #end riscv_load_store_rand_instr_stream_0
                  sra          t0, t0, a4
                  and          t1, sp, t6
                  bne          s10, s9, 25f
                  add          sp, t0, s11
                  sltiu        a5, s11, -1756
25:               auipc        a5, 780129
                  ori          t2, a5, -1811
                  slli         t6, a6, 26
                  slti         t5, a3, -530
                  srl          s8, s11, a0
                  add          a5, a6, t2
                  bne          s5, a7, 36f
                  sltiu        s8, a5, 8
                  bge          s7, a6, 34f
34:               srl          t6, ra, zero
                  srli         a6, s9, 22
36:               nop
                  andi         a2, s6, 1432
                  srl          a5, s2, a0
                  sltu         s0, s4, s4
                  lui          a1, 1013521
                  beq          s4, tp, 52f
                  beq          s11, s11, 47f
                  nop
                  srli         a1, t3, 30
                  or           a1, t1, a5
                  xori         s1, a4, -1971
47:               slt          a4, t5, t1
                  srai         a5, s8, 3
                  sltu         s9, s8, s3
                  xor          sp, t4, ra
                  srli         a2, s6, 27
52:               lui          zero, 449892
                  and          s10, zero, t6
                  bgeu         s7, t3, 59f
                  sltu         s5, a4, t0
                  xor          ra, a1, s5
                  nop
                  slli         zero, t3, 23
59:               bltu         a3, s7, 65f
                  lui          a1, 1032318
                  auipc        a4, 62136
                  bne          a4, s8, 69f
                  xori         s2, a5, 817
                  srai         t5, t4, 27
65:               slt          s6, t4, t6
                  and          s8, a2, s11
                  slt          s4, s0, s10
                  and          s4, t6, t2
69:               or           a2, sp, zero
                  srl          t6, t2, s0
                  lui          s6, 336366
                  xori         sp, t2, -1568
                  or           t5, s4, s6
                  or           s1, gp, a0
                  sra          t2, a4, a5
                  sll          s1, s6, t2
                  xor          a2, s5, a2
                  ori          s2, t3, -889
                  sra          a1, s7, s6
                  auipc        t6, 709050
                  lui          t5, 957392
                  slti         sp, sp, -882
                  xor          a6, t2, a0
                  sltiu        s8, ra, 1342
                  nop
                  lui          a4, 978610
                  auipc        t5, 447027
                  or           a4, t5, a0
                  auipc        a1, 87614
                  lui          t1, 951859
                  or           sp, a1, s10
                  sltiu        t2, t4, -1135
                  sub          a2, s11, s10
                  lui          t1, 365626
                  srai         a3, s5, 10
                  addi         s11, s9, -505
                  sll          s8, zero, s6
                  slt          a2, s2, s0
                  sltiu        s1, s1, 866
                  slli         s7, t1, 27
                  and          s0, a0, ra
                  lui          tp, 160332
                  slti         s2, s0, 1630
                  srl          s4, s5, s10
                  srai         s1, s10, 24
                  srl          s1, s5, a2
                  beq          tp, a7, 125f
                  and          s0, s1, a5
                  sltiu        t5, s7, 70
                  sltu         s5, s8, s10
                  slt          t6, t0, t4
                  bgeu         t3, s8, 120f
                  srli         s1, a3, 22
                  nop
                  srai         s2, t2, 31
                  slt          a2, t4, a0
                  blt          t2, zero, 130f
                  auipc        s10, 255680
                  ori          s2, t5, 948
120:              lui          zero, 34593
                  lui          ra, 471251
                  xori         a5, s1, -1836
                  lui          s8, 543933
                  srl          t4, a2, t6
                  sll          t1, sp, a1
                  xor          a1, s5, sp
                  la           a4, sub_8
                  addi         s6, s10, 539
                  addi         a4, a4, 996
                  and          ra, s8, a2
sub_4_j10:        jalr         ra, a4, -995 #jump sub_4 -> sub_8
                  andi         t4, gp, 1801
                  or           zero, s10, sp
                  sltu         a3, s11, ra
125:              sll          a2, gp, sp
                  sra          s4, s7, s1
                  bne          s0, t2, 140f
                  beq          s11, a0, 130f
                  sll          s2, t3, a2
130:              and          s4, s0, tp
                  slti         s9, t0, 1663
                  srl          s11, s2, t5
                  addi         a3, a7, 726
                  addi         ra, a0, 527
                  slti         a6, gp, 198
                  xori         t2, t2, -191
                  xori         ra, a3, 976
                  bgeu         s10, a0, 154f
                  andi         s8, s9, 492
140:              slt          tp, a0, s4
                  srai         a3, s5, 7
                  auipc        a1, 754908
                  slt          a1, s5, t5
                  slt          t2, t6, s4
                  bgeu         s5, a7, 152f
                  add          t3, s1, s11
                  nop
                  slti         t6, s11, -866
                  xori         ra, t2, -1971
                  andi         s10, a2, -436
                  bge          t3, a7, 152f
152:              sltiu        t0, t1, -357
                  auipc        s1, 237069
154:              xor          s5, ra, t1
                  or           t0, t5, s11
                  srli         t0, s0, 31
                  xori         s10, a3, -1804
                  lui          s8, 459752
                  xor          a3, t3, s9
                  srli         gp, s10, 25
                  bgeu         a5, a5, 162f
162:              and          s0, t4, s7
                  lui          s8, 72695
                  lui          ra, 972688
                  xori         s11, a4, -1100
                  nop
                  sll          a6, t6, a3
                  slli         a1, gp, 25
                  sll          gp, t6, t5
                  slti         a6, ra, 1629
                  lui          a4, 472324
                  blt          t5, t3, 173f
173:              bltu         s7, t1, 181f
                  auipc        a2, 212426
                  sltu         s11, a1, s8
                  sub          s1, s3, tp
                  addi         s4, s3, 175
                  andi         s5, s5, 476
                  beq          a1, s5, 199f
                  slt          s1, tp, zero
181:              ori          s6, t1, 1902
                  xori         s7, t1, -1232
                  srli         s8, a6, 0
                  srli         s4, s6, 30
                  nop
                  andi         a3, t6, -101
                  sub          s1, s6, s9
                  bge          t4, s0, 192f
                  bgeu         sp, a6, 203f
                  xori         s6, s0, 1919
                  srai         s1, t5, 23
192:              sll          t0, s3, a4
                  ori          a1, s7, -674
                  srli         sp, s8, 28
                  and          t6, t2, tp
                  or           t4, zero, a1
                  nop
                  sltu         tp, s0, a4
199:              sra          a2, a3, a4
                  or           t4, t5, a3
                  lui          a6, 104820
                  sub          s5, t3, a7
203:              srai         tp, t0, 16
                  slli         s7, a6, 29
                  slti         s2, a7, -1247
                  beq          s2, a7, 214f
                  slli         t6, a4, 5
                  sub          s10, sp, a0
                  blt          t5, zero, 225f
                  sltiu        t2, a7, -219
                  andi         t1, s6, 839
                  bne          s4, t1, 230f
                  auipc        s10, 90460
214:              sltu         t3, s9, a2
                  sll          t3, a3, s9
                  bltu         ra, s10, 230f
                  sltiu        sp, t3, -986
                  addi         s4, a4, 291
                  slli         sp, s3, 19
                  lui          gp, 185670
                  la           s9, region_0+683 #start riscv_load_store_rand_instr_stream_2
                  lbu          s7, 13(s9)
                  or           s7, a3, t2
                  slt          a1, a5, s1
                  lb           t0, -12(s9)
                  lw           a1, -15(s9)
                  lhu          s2, -3(s9)
                  srl          t5, a0, t5
                  sh           a6, -15(s9)
                  srli         t0, s1, 0
                  addi         a1, ra, -416
                  lh           a1, -5(s9)
                  lbu          t3, 14(s9)
                  sh           a1, 1(s9)
                  lh           t3, -3(s9)
                  lhu          tp, 9(s9)
                  srli         t1, a0, 20
                  lb           a3, 8(s9)
                  lbu          s2, -8(s9)
                  lb           ra, -1(s9)
                  lbu          tp, 0(s9)
                  lbu          sp, 1(s9)
                  lbu          s8, -1(s9)
                  lh           s10, 9(s9)
                  sb           t3, 0(s9)
                  andi         s1, s11, -477
                  sb           s8, -2(s9)
                  or           t2, a5, a2
                  sll          a5, a4, a4
                  sb           s6, -8(s9)
                  lb           t5, -13(s9)
                  lbu          t1, 3(s9)
                  lbu          s0, -16(s9)
                  srl          s2, a5, a3
                  xori         t3, gp, 1817
                  lbu          s8, -8(s9)
                  lbu          gp, 12(s9) #end riscv_load_store_rand_instr_stream_2
                  sll          t0, a7, a0
                  and          tp, s7, a2
                  blt          gp, t2, 226f
                  bgeu         a0, zero, 239f
225:              slli         s4, a6, 18
226:              bltu         a0, t0, 244f
                  slli         t6, s4, 4
                  srli         zero, s4, 11
                  bltu         s5, t6, 236f
230:              bgeu         sp, a5, 235f
                  slti         ra, s9, 587
                  srai         ra, s7, 25
                  xor          s9, s1, s10
                  slli         a2, s0, 2
235:              or           s11, sp, s3
236:              bgeu         s3, a4, 249f
                  sub          t6, a5, s0
                  beq          a1, sp, 249f
239:              bltu         s5, s11, 244f
                  srl          t3, s6, s1
                  nop
                  slt          s10, t0, t4
                  xori         s6, s10, 1953
244:              blt          sp, sp, 245f
245:              slt          t4, s9, t3
                  bltu         ra, a7, 250f
                  nop
                  auipc        a6, 394366
249:              lui          s6, 371375
250:              xori         sp, s2, -1203
                  sub          tp, a0, zero
                  sra          t6, t5, t0
                  slt          s10, t3, s2
                  sra          s0, t0, a5
                  nop
                  beq          ra, t5, 257f
257:              bltu         t1, a5, 271f
                  lui          a6, 612051
                  bne          s0, t1, 266f
                  sltu         s2, t3, s9
                  sll          s0, t3, a2
                  slli         t2, sp, 7
                  sra          t0, s4, sp
                  sub          s0, s11, gp
                  srai         a4, a6, 16
266:              auipc        s5, 162540
                  ori          s6, s7, 1425
                  xor          a6, s4, a6
                  sltu         a3, s4, s8
                  xor          ra, a6, a3
271:              andi         ra, t0, 1949
                  slli         s4, t6, 6
                  sll          sp, s6, s7
                  lui          a5, 126576
                  srai         s10, a7, 1
                  sra          zero, t4, ra
                  slti         s0, tp, 1280
                  and          t4, s1, s10
                  sll          s6, s0, s2
                  srl          s6, a5, t4
                  ori          s7, s8, 1174
                  sll          s11, a6, a2
                  sub          s9, t6, s1
                  bge          a1, s3, 292f
                  xor          s9, a3, a0
                  srli         a5, t5, 26
                  sra          s8, s6, s8
                  bltu         ra, t5, 296f
                  nop
                  bgeu         a6, ra, 308f
                  bge          ra, s4, 293f
292:              bge          a2, s10, 295f
293:              bgeu         a2, a2, 301f
                  addi         a2, t1, 1026
295:              lui          ra, 950805
296:              sltiu        s0, s1, -540
                  xor          t4, t5, a5
                  auipc        t2, 539218
                  auipc        s7, 953972
                  sub          a6, s9, gp
301:              sltu         a2, a3, t0
                  srli         s4, t3, 10
                  and          s5, t2, s4
                  lui          t0, 306238
                  srai         t3, a2, 8
                  blt          s3, s5, 322f
                  add          s10, t5, t3
308:              slli         s0, s8, 0
                  nop
                  ori          a3, s6, -1009
                  srl          a3, a5, t5
                  auipc        zero, 326429
                  sltu         s7, tp, s6
                  bne          s3, a7, 324f
                  and          a6, a2, t3
                  sll          s7, a6, a4
                  sltiu        a1, sp, -1547
                  sltiu        s4, s11, -924
                  srai         a2, t2, 25
                  nop
                  addi         t5, s0, 1587
322:              xor          t1, a6, s4
                  addi         s11, t2, -745
324:              sub          t5, a0, a0
                  bne          s4, gp, 340f
                  bne          a2, a7, 346f
                  or           s5, ra, a2
                  auipc        s10, 694822
                  slt          a4, s10, a4
                  xor          tp, s10, tp
                  xori         t4, a7, -1536
                  sll          s9, t4, tp
                  add          t4, a4, gp
                  xor          zero, t2, t1
                  slti         s9, s0, -1748
                  and          t5, s0, a0
                  sra          a6, s5, zero
                  ori          zero, t4, -1026
                  xor          s6, s6, sp
340:              bltu         s10, t0, 341f
341:              sub          t4, zero, s5
                  addi         ra, s2, -1110
                  lui          t4, 856648
                  sltu         a4, t6, s6
                  slti         gp, a0, 153
346:              blt          t6, s2, 359f
                  auipc        t6, 362166
                  slli         s4, t0, 29
                  auipc        s11, 156340
                  auipc        t1, 313512
                  ori          a3, tp, 1034
                  slli         t0, s5, 27
                  bge          s3, a2, 356f
                  nop
                  sll          s2, s8, t2
356:              lui          t2, 681444
                  beq          t6, s10, 373f
                  blt          s6, s4, 364f
359:              bne          zero, s11, 364f
                  or           s2, a1, t0
                  or           tp, t5, t5
                  bne          s8, sp, 363f
363:              xor          s0, t0, s0
364:              nop
                  srli         a3, a3, 12
                  srl          a2, a3, s9
                  add          t2, s10, s6
                  bltu         a2, t5, 379f
                  bge          t1, a6, 383f
                  addi         s7, sp, -326
                  srai         t3, s10, 29
                  sltu         s0, zero, tp
373:              and          s4, tp, s7
                  bltu         t6, s3, 394f
                  auipc        s2, 354237
                  beq          t4, gp, 384f
                  sltiu        a3, a5, 1859
                  sltu         s9, t5, t3
379:              add          s5, s5, s2
                  xori         s11, s9, -1674
                  addi         t1, s6, 1457
                  sltiu        a4, t3, 33
383:              srli         tp, t4, 6
384:              xori         t4, a2, -1514
                  bgeu         s0, s0, 389f
                  sltu         t6, t5, a2
                  sltiu        sp, zero, -1637
                  add          t3, t0, t0
389:              sltiu        s0, a1, -35
                  bgeu         a6, zero, 392f
                  blt          a5, s9, 396f
392:              andi         s7, s8, -958
                  ori          t6, a7, -654
394:              bltu         s6, a7, 397f
                  sltiu        s8, t5, -715
396:              ori          s9, s5, -1912
397:              or           s11, t5, s9
                  sltu         s6, a1, a6
                  beq          a3, s4, 415f
                  sltiu        t3, tp, 1267
                  or           a4, s9, a1
                  nop
                  sltu         a4, a2, zero
                  slt          t0, s0, t1
                  sltiu        a4, t1, 1289
                  addi         a5, t3, -1301
                  sltiu        a2, s5, -625
                  auipc        s0, 363370
                  srai         s7, a6, 4
                  srli         s5, t5, 22
                  xor          a4, s6, sp
                  slli         a4, s9, 18
                  sra          s1, a2, zero
                  addi         gp, t6, 1147
415:              bge          t2, t5, 420f
                  srl          gp, s5, s5
                  sra          sp, t5, s6
                  or           s10, s0, t1
                  and          s0, s0, s10
420:              beq          t5, t3, 427f
                  bge          a4, zero, 432f
                  or           s1, s9, a1
                  sub          t1, t0, a6
                  bgeu         sp, s11, 432f
                  slti         t4, a1, 1192
                  add          t0, sp, s10
427:              bge          ra, gp, 438f
                  srli         sp, s0, 24
                  xor          a6, gp, a7
                  beq          s11, a1, 440f
                  srl          t3, t2, s2
432:              bgeu         a0, a0, 437f
                  sll          a6, a1, t5
                  or           s8, s5, s5
                  slli         s2, zero, 26
                  xor          s10, s9, s11
437:              slt          tp, t3, a0
438:              sll          a3, a0, a4
                  srli         a6, s0, 10
440:              addi         s9, a3, 555
                  or           s5, tp, s0
                  andi         sp, s1, 2047
                  andi         tp, s10, -855
                  auipc        a2, 1021651
                  beq          a1, s11, 459f
                  blt          a6, t3, 449f
                  ori          a1, ra, -386
                  andi         tp, t1, 704
449:              srai         s7, s0, 7
                  slli         s6, a4, 14
                  blt          a6, t5, 459f
                  sub          t0, s9, a7
                  bgeu         gp, s7, 459f
                  sltiu        s2, tp, 1202
                  srli         a5, tp, 11
                  slti         s0, s2, -826
                  sltu         s7, s6, s11
                  bgeu         t6, s6, 459f
459:              and          a6, s6, sp
                  addi         t3, s1, 20
                  sub          t1, a4, s11
                  lw           ra, 4(s3)
                  sltu         s6, t5, t1
                  lui          t0, 164293
                  add          sp, s6, s5
                  addi         s3, s3, 60
                  sub          s2, s11, t1
                  slt          gp, s6, s0
608:              addi x1, x1, 1
608:              jalr x1, x1, 0
sub_7:            and          s7, s11, a6
                  andi         s4, tp, 1959
                  or           gp, t2, s2
                  slli         a2, t1, 23
                  addi         s3, s3, -56
                  or           s10, a0, s5
                  sltiu        t1, zero, -368
                  sw           ra, 4(s3)
                  xor          s0, s5, s4
                  la           t4, region_0+1766 #start riscv_load_store_rand_instr_stream_3
                  or           s6, t5, s7
                  sltu         a2, s6, t0
                  and          s5, s0, s4
                  lb           s10, -6(t4)
                  lhu          gp, -16(t4)
                  srli         s9, s4, 25
                  slt          a5, a2, a0
                  sb           s3, 27(t4)
                  slli         a5, s0, 17
                  lb           tp, 55(t4)
                  lw           s4, 38(t4)
                  sh           s5, -22(t4)
                  slt          s2, t4, s8
                  sh           t3, 44(t4)
                  sh           a5, 26(t4)
                  sra          s4, a2, tp
                  srl          s4, s10, gp
                  slti         a6, a3, 1323
                  xor          t0, s11, s11
                  slti         t5, ra, 1236
                  lb           gp, 55(t4)
                  srai         gp, a0, 17
                  sb           s5, -63(t4)
                  addi         t2, t2, 466
                  slt          t2, t4, s6
                  sb           t2, 27(t4)
                  lh           gp, 44(t4)
                  lb           s4, -19(t4)
                  srai         tp, a7, 0
                  sw           s6, 42(t4)
                  srai         t2, a0, 18
                  sll          t1, zero, s2
                  sb           t6, 23(t4)
                  lbu          zero, 21(t4)
                  xori         t0, a6, 1400
                  srl          s9, s11, ra
                  lh           a6, -4(t4)
                  lh           ra, 56(t4)
                  lbu          a5, -15(t4)
                  lb           t6, 52(t4)
                  slti         s10, a1, -1
                  sh           a5, 8(t4)
                  xori         a2, tp, -1251
                  slt          s10, t1, zero
                  lbu          a1, 10(t4)
                  lbu          tp, 23(t4)
                  sll          a6, s3, t3
                  srl          tp, t2, a4
                  sb           sp, 15(t4)
                  lhu          s0, 34(t4)
                  lbu          gp, -23(t4)
                  lbu          s1, -35(t4)
                  srl          a1, a1, ra
                  andi         gp, t2, 102
                  sra          s1, s11, t4
                  sb           s11, -20(t4)
                  and          a3, t4, a1
                  sb           a4, 51(t4) #end riscv_load_store_rand_instr_stream_3
                  la           t1, region_1+1322 #start riscv_load_store_rand_instr_stream_0
                  lbu          s6, -11(t1)
                  andi         t2, t0, 1655
                  sub          s4, a4, t0
                  xori         s5, s7, 1872
                  add          s11, s8, s5
                  lbu          sp, 16(t1)
                  or           a3, s6, gp
                  sub          t5, s4, s2
                  slti         t3, ra, 730
                  add          t3, t6, a5
                  sb           s5, -11(t1)
                  lui          zero, 507942
                  sh           a1, 14(t1)
                  slt          t0, s1, s6
                  lbu          s10, -13(t1)
                  nop
                  sb           t0, 11(t1)
                  sb           s6, 4(t1)
                  lbu          s11, -15(t1)
                  sw           zero, 6(t1)
                  lbu          t0, 10(t1)
                  andi         s7, s1, -1074
                  lbu          s6, -8(t1)
                  sb           a1, 14(t1)
                  auipc        gp, 154119
                  lbu          s0, 3(t1)
                  lhu          t6, 4(t1)
                  sb           a4, -15(t1)
                  slti         s2, t0, -366
                  sb           s10, -11(t1)
                  add          s8, s11, sp
                  sb           a0, -10(t1)
                  nop
                  lb           tp, 3(t1)
                  lb           sp, 8(t1)
                  lhu          s9, 14(t1) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+121 #start riscv_load_store_rand_instr_stream_4
                  sll          t5, s5, sp
                  lb           s9, 170(sp)
                  lbu          tp, 538(sp)
                  ori          s0, a4, 262
                  lb           t1, 3(sp)
                  lbu          zero, 299(sp)
                  srli         t6, a0, 4
                  sra          a3, gp, s1
                  andi         a4, t3, -1537
                  lbu          s9, 1013(sp)
                  srl          s2, a2, t1
                  sltiu        a1, s8, 661
                  sub          s0, a5, s10
                  lbu          zero, 630(sp)
                  ori          s4, s4, 103
                  lb           a2, 827(sp)
                  lb           a3, 48(sp)
                  nop
                  lb           s1, 134(sp)
                  nop
                  lbu          a2, 675(sp)
                  lhu          s0, 1209(sp)
                  sltiu        t0, t1, -1143
                  slti         t5, t0, -1707
                  xor          gp, t5, s4
                  sll          t5, a4, t2
                  lhu          t1, 1325(sp)
                  and          s11, gp, s3
                  sb           a6, 1026(sp)
                  addi         a4, ra, 123
                  add          ra, s4, t6
                  or           s0, s9, s3
                  sh           s10, 479(sp) #end riscv_load_store_rand_instr_stream_4
                  sll          a6, s8, s1
                  sltu         t5, s10, a1
                  sub          s11, zero, s5
                  lui          s8, 40575
                  sltiu        t0, s10, -1414
                  xori         s2, t1, -1381
                  srai         a4, a6, 31
                  beq          t1, s1, 22f
                  slt          t1, s0, s8
                  slti         s4, sp, 2044
                  addi         t6, t6, 181
                  sltiu        s10, a4, -629
                  sltu         t1, a6, a0
                  or           s5, a0, gp
                  srli         a2, a7, 22
                  lui          a1, 73524
                  sub          s4, s1, s6
                  or           s0, s2, ra
                  bltu         s0, t0, 37f
                  slt          a4, s10, s8
                  sltu         tp, s4, a7
                  xori         t1, a5, -1554
22:               ori          t4, s0, 334
                  sra          a3, a3, s9
                  add          a6, t4, s3
                  sll          s1, a0, a3
                  bge          s1, s4, 37f
                  bne          a0, t5, 39f
                  sll          s5, gp, a2
                  sltu         s11, t1, s0
                  xori         a5, t4, -84
                  sltiu        s2, s9, 604
                  xor          a6, s7, s5
                  slt          gp, a7, s3
                  bltu         t4, t4, 51f
                  srli         sp, t4, 16
                  and          t0, s10, a7
37:               lui          s1, 18151
                  or           t5, s9, a6
39:               slti         s4, s0, 788
                  bgeu         a4, a1, 51f
                  srl          a2, s11, s9
                  srai         s10, t2, 20
                  sra          t3, a7, s7
                  add          a4, t0, t3
                  add          gp, zero, t2
                  addi         t6, t0, -1112
                  la           s8, sub_10
                  addi         s8, s8, 789
                  lui          a4, 222876
                  slti         s10, s8, -221
                  sra          a6, a1, s0
                  blt          s6, a5, sub_7_j12 #branch to jump instr
                  nop
sub_7_j12:        jalr         ra, s8, -789 #jump sub_7 -> sub_10
                  andi         s4, s8, -282
                  andi         t3, gp, -1973
                  sub          a4, t1, s10
                  auipc        t5, 592983
                  xor          s2, a7, a5
51:               or           tp, s4, t1
                  beq          a3, zero, 58f
                  nop
                  bgeu         t2, tp, 59f
                  bgeu         zero, s5, 69f
                  bgeu         a2, s3, 68f
                  add          gp, a1, gp
58:               lui          s11, 131014
59:               slt          t0, ra, t5
                  xori         t0, gp, -1750
                  sra          a1, t3, zero
                  auipc        s5, 208625
                  sra          zero, a2, s5
                  sra          s8, a4, gp
                  bltu         t4, zero, 70f
                  beq          s3, s3, 72f
                  and          tp, a5, tp
68:               and          s6, s0, sp
69:               add          s7, s10, ra
70:               or           zero, a3, a4
                  sltiu        t4, s1, 495
72:               xor          t2, s3, zero
                  slti         s8, gp, -387
                  xor          s2, t3, sp
                  srl          t4, a6, s6
                  sub          s5, t2, a2
                  add          tp, s5, t1
                  srai         s11, sp, 23
                  srli         s10, a3, 1
                  slti         t5, a6, -1039
                  sll          s11, s10, tp
                  sub          t2, ra, s0
                  lui          ra, 909872
                  slti         s8, t2, -596
                  bgeu         s2, t3, 92f
                  sll          zero, t3, t0
                  srl          sp, s3, a0
                  srai         t4, a1, 8
                  and          s7, zero, tp
                  sub          s5, t1, t3
                  sltiu        t0, gp, -356
92:               bne          s4, t2, 103f
                  addi         tp, s2, -1952
                  xori         t6, s6, -240
                  bge          s10, zero, 105f
                  and          a3, t1, s1
                  sub          t2, s6, a5
                  ori          t2, s11, 819
                  xor          zero, s11, t0
                  bgeu         ra, s0, 107f
                  srai         t3, s4, 10
                  la           t1, region_1+230 #start riscv_load_store_rand_instr_stream_5
                  sll          s1, s0, s0
                  lbu          s10, -13(t1)
                  lw           t4, 6(t1)
                  srai         t2, t6, 17
                  slt          a2, s10, zero
                  andi         zero, t2, -1171
                  sb           s7, 3(t1)
                  auipc        s8, 1037539
                  srl          t0, tp, a7
                  sb           a0, 14(t1)
                  lbu          t4, 10(t1)
                  ori          a1, a1, -559
                  slli         s7, gp, 31
                  auipc        a1, 991715
                  sh           s8, -14(t1)
                  lb           t5, 3(t1)
                  slti         s1, a1, 2017
                  lh           t2, 10(t1)
                  sb           s2, 4(t1)
                  nop
                  or           s6, t6, s3
                  lbu          a3, 8(t1)
                  addi         s1, a2, -195
                  lhu          zero, 10(t1)
                  sb           a4, -4(t1)
                  lb           ra, 5(t1)
                  lui          s9, 859985
                  lhu          a3, 6(t1) #end riscv_load_store_rand_instr_stream_5
                  slli         s11, a6, 3
103:              slti         s5, s5, -1108
                  srl          a3, zero, a4
105:              slt          s5, s0, a0
                  blt          t2, t5, 108f
107:              srai         s11, a1, 4
108:              bgeu         t4, a6, 119f
                  auipc        s11, 115433
                  ori          t2, s1, 751
                  sub          t2, tp, a7
                  slt          s1, a0, a7
                  andi         s4, s8, 290
                  ori          s1, s0, -797
                  srli         a2, ra, 13
                  la           s5, region_0+20 #start riscv_load_store_rand_instr_stream_1
                  nop
                  srli         tp, t5, 8
                  srai         s1, t5, 15
                  lhu          s9, 10(s5)
                  lbu          t0, 36(s5)
                  lh           s11, 0(s5)
                  sll          gp, a0, s6
                  lhu          a3, 40(s5)
                  lui          zero, 401855
                  and          t3, zero, s0
                  sltu         a5, t2, t2
                  lbu          t3, 61(s5)
                  srl          s6, t5, s8
                  sh           sp, 4(s5)
                  lh           gp, 14(s5)
                  lbu          t2, -3(s5)
                  slti         a5, t6, 1959
                  lhu          a1, 22(s5)
                  sh           s8, 42(s5)
                  and          t1, tp, t0
                  sub          t5, s10, s3
                  sltiu        t1, t3, -408
                  sltu         sp, s8, s3
                  lbu          s6, 18(s5)
                  lbu          s0, -20(s5)
                  sb           s8, 34(s5)
                  lb           s0, 5(s5)
                  and          t2, t3, t2
                  sub          a5, sp, s3
                  addi         s11, s2, 1892
                  sll          a3, s6, zero
                  srl          a5, s2, a7
                  or           s9, s4, gp
                  srl          s2, a2, gp
                  sltiu        sp, t4, 1329
                  andi         tp, gp, 462
                  sltu         a6, a7, a5
                  sb           a3, 22(s5)
                  lb           s11, 62(s5)
                  lbu          a3, 42(s5)
                  lb           s0, 3(s5)
                  addi         a1, a3, -1136
                  srl          t6, s0, t6
                  lb           a2, -14(s5)
                  xor          sp, t1, tp
                  sw           t6, 48(s5)
                  sra          s1, a2, s8
                  lbu          a5, 25(s5)
                  lbu          a6, 52(s5)
                  lb           a2, 33(s5)
                  lbu          s4, 5(s5) #end riscv_load_store_rand_instr_stream_1
                  sltu         s9, a4, a7
                  ori          t1, s7, -2022
                  sub          a3, t0, s5
119:              ori          zero, s6, -1876
                  bne          t1, s6, 136f
                  srli         s9, s6, 3
                  addi         s8, a4, 1132
                  xori         gp, s11, 997
                  bge          s7, a1, 141f
                  bne          t3, s2, 136f
                  auipc        s9, 722868
                  sll          ra, sp, s9
                  blt          t5, t6, 133f
                  nop
                  srli         ra, a4, 5
                  andi         s8, a6, -323
                  bltu         t4, s7, 135f
133:              slti         a1, zero, 1816
                  ori          s1, t4, -1693
135:              addi         a2, t4, -1043
136:              ori          t2, a5, -1641
                  srli         t5, a4, 6
                  slt          s5, zero, sp
                  nop
                  xor          s0, s3, t6
141:              beq          s3, gp, 146f
                  xori         s10, sp, 1408
                  add          a4, t6, t4
                  sub          s10, a7, t3
                  or           zero, zero, sp
146:              sll          s1, a4, a6
                  beq          a4, sp, 165f
                  addi         s10, zero, 1488
                  srli         t2, t3, 27
                  andi         s2, a2, 428
                  xori         sp, ra, -222
                  nop
                  bltu         t2, a1, 165f
                  sltu         t0, s8, a7
                  xori         s9, sp, -1125
                  andi         s7, s3, -153
                  nop
                  andi         s6, t6, 1751
                  sll          gp, t0, s5
                  andi         t4, s3, -1395
                  andi         s5, s5, -1949
                  sltu         s4, t0, t2
                  srai         a2, tp, 17
                  srai         a4, gp, 7
165:              srl          s6, a6, t5
                  auipc        s10, 1024504
                  addi         a3, s9, 1824
                  add          s8, sp, s11
                  slt          sp, s11, a1
                  lui          t3, 468237
                  slt          s11, s0, s3
                  bgeu         gp, a0, 183f
                  nop
                  bltu         s7, gp, 188f
                  bne          s1, s0, 188f
                  and          s4, a0, s10
                  lui          s1, 334007
                  srl          s11, a2, gp
                  and          a2, t1, a1
                  slli         t3, t3, 11
                  or           a3, t4, t5
                  auipc        t1, 629430
183:              srai         t3, s11, 19
                  add          s8, sp, s10
                  bne          t0, t5, 205f
                  beq          t4, t4, 199f
                  sra          s9, s10, a4
188:              bltu         zero, zero, 199f
                  auipc        s8, 1024936
                  bge          t1, s2, 208f
                  and          ra, t5, gp
                  srli         a2, s4, 30
                  slt          s10, sp, s5
                  auipc        a2, 389157
                  addi         t4, s10, 1728
                  add          ra, a7, a7
                  sub          a4, s3, a6
                  slti         t4, tp, 1330
199:              bne          t5, a1, 205f
                  auipc        zero, 465016
                  add          t2, t1, s10
                  bne          a2, s3, 204f
                  auipc        gp, 393502
204:              slli         s9, gp, 30
205:              ori          t6, s1, -1896
                  or           a1, s1, tp
                  andi         s5, a1, -486
208:              ori          tp, zero, -762
                  slti         a2, t4, -1200
                  auipc        s5, 704329
                  sll          s6, s6, a0
                  xor          t5, t3, sp
                  addi         s6, sp, -1590
                  sltiu        s7, zero, -212
                  xori         s6, s2, -1618
                  addi         s1, t2, 1036
                  bge          gp, s1, 224f
                  slti         s10, a6, -1303
                  ori          t3, t3, 146
                  slli         t1, a5, 16
                  srli         gp, a3, 12
                  add          gp, s9, a3
                  lui          s11, 94584
224:              beq          a3, t5, 241f
                  andi         zero, a3, -1733
                  sra          tp, a3, a1
                  xor          s6, gp, t5
                  sub          t4, a0, s2
                  xor          t2, t2, s2
                  xor          s10, s6, a0
                  addi         a5, s3, 120
                  blt          t0, s1, 242f
                  add          s7, s6, s5
                  sltu         s5, a7, t5
                  nop
                  beq          t0, s1, 241f
                  and          t1, s5, a0
                  bltu         s1, s7, 245f
                  blt          t6, s3, 256f
                  bne          s0, zero, 251f
241:              or           s0, t6, a1
242:              bltu         zero, ra, 254f
                  lui          s9, 131728
                  ori          t6, s1, 324
245:              bltu         a0, s5, 259f
                  sltiu        t6, s9, 144
                  srl          a6, s0, t2
                  sll          s9, a0, a4
                  bge          a4, s7, 264f
                  andi         s11, s5, 1899
251:              lui          a2, 830603
                  sll          s11, s10, s4
                  slli         s2, s3, 31
254:              slt          a1, t6, s8
                  blt          a2, ra, 269f
256:              nop
                  sltu         t0, s11, s5
                  bltu         ra, s8, 270f
259:              bne          s6, s10, 270f
                  xori         a3, s5, 1025
                  srai         t6, t1, 7
                  slli         t2, a7, 22
                  bgeu         s7, s10, 274f
264:              srl          t3, s0, a3
                  andi         a4, t5, -87
                  or           t3, t6, a2
                  bge          s8, s5, 272f
                  bltu         a0, a1, 273f
269:              sub          s8, s4, a7
270:              nop
                  srai         ra, s0, 27
272:              andi         zero, tp, -787
273:              slli         s7, s9, 9
274:              sltiu        t2, t1, -1467
                  xori         a6, a0, -368
                  bltu         t5, ra, 279f
                  bne          t6, a2, 288f
                  sltu         a5, a2, a0
279:              auipc        s5, 673761
                  andi         s9, a2, -1783
                  auipc        s0, 381541
                  bgeu         a7, t4, 288f
                  bltu         t5, a2, 295f
                  sra          s4, s2, t2
                  lui          s9, 31724
                  sra          t0, sp, a2
                  slt          s6, s0, s2
288:              beq          a0, a7, 293f
                  beq          a7, s6, 300f
                  sltiu        t2, t5, 1042
                  or           tp, t5, s1
                  auipc        tp, 474152
293:              or           s6, a4, s3
                  ori          s6, tp, -1943
295:              beq          s3, t2, 315f
                  bgeu         s4, gp, 312f
                  bgeu         s4, t5, 316f
                  bltu         s8, s1, 304f
                  and          t1, s1, sp
300:              sltu         sp, a7, t3
                  add          t0, s10, s11
                  bne          s6, s2, 318f
                  ori          s7, t6, 1958
304:              add          zero, a2, a6
                  andi         s2, s11, 1851
                  beq          s6, t2, 318f
                  bge          a7, s1, 313f
                  bne          t3, s6, 322f
                  bge          s11, t4, 314f
                  beq          t4, t6, 317f
                  add          s6, s4, t3
312:              sub          s5, s4, s7
313:              sll          s2, t0, t6
314:              and          t3, ra, s1
315:              and          s8, s8, s2
316:              addi         a4, t2, 1494
317:              or           s6, a4, s5
318:              xor          s6, t1, zero
                  bltu         t0, t1, 331f
                  slti         t2, t2, 1584
                  andi         ra, s5, 290
322:              and          gp, t4, s1
                  sra          t4, t3, s10
                  sltu         gp, s10, a1
                  sra          sp, t6, s9
                  beq          t4, t5, 331f
                  and          t5, s4, t3
                  bltu         t2, s6, 345f
                  nop
                  bne          t6, tp, 349f
331:              or           sp, t6, t0
                  ori          gp, t0, 1055
                  bge          a0, t6, 344f
                  slli         ra, t6, 8
                  sltu         s6, s10, zero
                  xor          zero, s5, t6
                  add          sp, s0, gp
                  addi         a6, t2, 1043
                  add          s10, a0, t3
                  bge          s1, s4, 358f
                  sltu         s8, s6, t3
                  xori         t0, t1, -136
                  xor          t1, s4, t2
344:              blt          a5, t2, 359f
345:              sll          s1, t6, t3
                  slt          s1, t6, a7
                  and          t4, t2, s4
                  srli         t2, a4, 14
349:              slti         a4, ra, -1642
                  or           s8, s0, s3
                  and          a1, s11, s10
                  lui          s1, 615214
                  srl          sp, t5, a4
                  and          s7, tp, zero
                  sltu         ra, s8, a5
                  and          t6, t5, a6
                  sll          s0, s3, s11
358:              bltu         a2, a5, 370f
359:              nop
                  andi         a1, s8, 189
                  blt          s7, sp, 375f
                  sub          s10, s5, a3
                  bltu         t5, t1, 374f
                  blt          t4, t4, 381f
                  nop
                  sll          s1, s7, t0
                  lui          s7, 631324
                  bltu         s3, t1, 371f
                  slti         t5, s4, 462
370:              ori          t5, zero, 900
                  la           sp, region_0+538 #start riscv_load_store_rand_instr_stream_2
                  sh           s0, -124(sp)
                  addi         t0, t5, -648
                  lbu          t0, 211(sp)
                  lbu          s4, 213(sp)
                  ori          a2, t5, -1496
                  lbu          s11, 32(sp)
                  nop
                  addi         s4, t3, -2037
                  ori          a3, a3, -907
                  lw           s5, 122(sp)
                  lb           a1, -142(sp)
                  sb           t5, -157(sp)
                  sll          t0, sp, s6
                  xor          s6, t6, t3
                  srai         gp, s8, 3
                  slt          s2, s8, s0
                  lb           gp, 38(sp)
                  add          s10, t1, s7
                  lb           s10, 247(sp)
                  sra          a4, s11, s10
                  lw           a5, -206(sp)
                  lh           s2, -6(sp)
                  lbu          t5, -44(sp)
                  nop
                  slt          t0, s5, sp
                  srl          a6, s3, gp
                  lb           s11, -209(sp)
                  srli         s5, zero, 23
                  add          s6, a4, a6
                  sub          s8, a0, t3
                  lb           s9, 205(sp)
                  sb           t5, -133(sp)
                  lbu          t3, 11(sp)
                  addi         t4, zero, -1835
                  lh           s8, 72(sp) #end riscv_load_store_rand_instr_stream_2
371:              slt          t1, s10, s3
                  sub          s6, t4, s6
                  xori         s7, s8, 1743
374:              xor          a4, zero, t1
375:              srli         gp, s7, 26
                  xor          tp, s1, t0
                  srli         t4, s4, 12
                  srli         s4, t0, 4
                  lui          t3, 238753
                  sra          s4, t0, s2
381:              ori          s0, ra, 1697
                  blt          sp, s0, 393f
                  bne          a5, a7, 385f
                  bge          a4, s2, 395f
385:              bgeu         a6, a1, 396f
                  bltu         zero, s7, 406f
                  bgeu         tp, s2, 397f
                  sub          t6, s0, sp
                  bgeu         s11, a1, 400f
                  sltu         s5, tp, a7
                  sll          s7, s8, s7
                  sltu         gp, t4, t6
393:              addi         t6, s4, -202
                  beq          a3, sp, 399f
395:              srai         s7, a5, 2
396:              slli         tp, a7, 0
397:              xori         a5, s4, -178
                  sub          t1, s8, s9
399:              bgeu         t2, t5, 406f
400:              sltu         t0, s0, t5
                  xor          s7, t5, tp
                  or           ra, s7, t1
                  srai         t4, a4, 3
                  srli         t5, t2, 10
                  sltu         zero, a5, a0
406:              sltiu        t2, s10, 1326
                  nop
                  addi         s2, t6, 945
                  auipc        t4, 529614
                  and          a5, t6, a7
                  srai         s9, tp, 6
                  srli         t4, t6, 7
                  blt          a5, t0, 418f
                  xor          s7, t4, s5
                  bge          a0, a7, 428f
                  beq          tp, s2, 433f
                  bltu         sp, gp, 428f
418:              blt          s0, gp, 432f
                  slt          s5, sp, t3
                  slt          t1, s1, t6
                  slt          t3, zero, t0
                  bne          t5, a3, 424f
                  bge          s2, s6, 434f
424:              sltiu        s4, zero, 104
                  add          sp, t5, s0
                  add          t6, t4, zero
                  auipc        a5, 346874
428:              sltu         s11, s9, s7
                  sll          t3, s4, ra
                  slli         s10, a6, 14
                  ori          s2, t5, 1984
432:              beq          s9, s0, 437f
433:              auipc        a4, 938409
434:              srai         a6, zero, 20
                  xor          t4, a1, s0
                  slt          sp, a6, a0
437:              sltu         s5, t4, s7
                  sltiu        zero, s9, -1591
                  bne          t0, s11, 450f
                  bgeu         a5, a1, 455f
                  slti         s7, t2, 2010
                  and          s7, s3, t1
                  bne          ra, tp, 454f
                  ori          a5, t6, 1292
                  srai         t3, t5, 11
                  add          sp, t6, s11
                  nop
                  srl          sp, t4, t0
                  ori          t3, t0, 843
450:              auipc        a2, 213897
                  bge          s5, a7, 456f
                  and          t0, sp, s1
                  sub          t4, a1, tp
454:              auipc        t5, 380001
455:              xor          gp, a6, s9
456:              srl          sp, zero, a0
                  sltiu        a4, tp, 376
                  sltu         t5, a6, tp
                  auipc        a1, 1028803
                  blt          s5, s1, 467f
                  nop
                  ori          s5, zero, -28
                  sra          ra, t3, s11
                  bgeu         a1, ra, 470f
                  auipc        a1, 492059
                  xor          sp, s6, a6
467:              bgeu         s6, s11, 480f
                  srl          s10, ra, t0
                  add          s5, t5, t3
470:              sltiu        t6, s6, -1331
                  bge          s5, s10, 483f
                  slt          s1, s8, a3
                  slti         a2, t2, -152
                  andi         tp, a3, 448
                  auipc        a1, 993090
                  sltu         s10, t6, tp
                  or           sp, tp, s5
                  beq          s3, t4, 484f
                  bge          tp, a0, 490f
480:              slti         a4, a2, -944
                  slti         s1, a1, -1547
                  slli         s2, t3, 12
483:              bgeu         zero, s4, 503f
484:              sltu         s4, zero, t3
                  bgeu         s10, s0, 497f
                  addi         s9, a7, -1056
                  bge          s4, s10, 501f
                  slli         s2, s4, 0
                  sra          s10, t1, s1
490:              bne          t0, s5, 500f
                  sltu         s0, s10, t5
                  or           s1, t3, a0
                  lui          t2, 968065
                  andi         s5, ra, 104
                  srli         a5, s0, 21
                  addi         sp, s3, -1992
497:              sltu         a2, t5, s9
                  slti         tp, s4, 394
                  sltu         a5, a5, a0
500:              andi         s11, s6, -368
501:              auipc        tp, 971667
                  ori          t1, t0, 130
503:              sltiu        a2, a2, 37
                  bgeu         a2, s10, 509f
                  bgeu         a7, s8, 521f
                  bltu         gp, s9, 513f
                  slt          a5, zero, tp
                  lui          a4, 1020027
509:              add          a3, t1, a3
                  srl          t6, a5, s6
                  slti         a3, s0, 1421
                  bge          t2, s1, 529f
513:              sll          a2, t0, s1
                  srli         a1, gp, 23
                  add          t4, s6, s5
                  xor          t6, a4, s7
                  andi         s5, s10, -1962
                  srli         s7, a2, 17
                  srli         s1, s8, 5
                  slti         t6, gp, 510
521:              sltu         t5, t6, s11
                  bge          s2, s0, 533f
                  or           s7, s8, t4
                  srl          t5, t4, a1
                  blt          a7, ra, 537f
                  and          ra, s5, tp
                  xor          t4, ra, t4
                  srl          a4, s11, a0
529:              bge          a4, tp, 547f
                  srli         s5, zero, 13
                  slli         t3, s1, 28
                  bgeu         tp, t6, 535f
533:              slt          tp, t0, a1
                  beq          s8, t0, 553f
535:              bge          s0, s5, 540f
                  or           s0, a0, a4
537:              srli         sp, t5, 16
                  slti         s5, a6, -1321
                  xori         a3, s11, 829
540:              sltiu        zero, s9, 163
                  srai         t5, s8, 18
                  blt          a4, s11, 557f
                  auipc        s4, 641528
                  and          a4, s11, sp
                  xori         s8, a5, -12
                  srli         t0, s5, 13
547:              beq          ra, a2, 558f
                  sltu         s11, s5, a1
                  auipc        s10, 540958
                  ori          s10, s1, 1852
                  sll          zero, a0, ra
                  slti         a2, t0, -1747
553:              slti         t0, s3, -1098
                  slt          s1, ra, t3
                  lui          s0, 739380
                  xor          t2, tp, tp
557:              xor          s6, t6, s4
558:              bne          s4, a7, 563f
                  add          s6, s3, a3
                  add          gp, s4, s3
                  sltu         s10, t3, a0
                  sra          a1, t0, t2
563:              lui          s8, 505999
                  sra          s6, ra, a7
                  lui          ra, 845273
                  bltu         s4, a3, 569f
                  srai         s4, s5, 27
                  or           s8, s11, tp
569:              slti         a6, s11, 567
                  nop
                  auipc        a5, 896731
                  or           s1, a5, a0
                  sltu         t4, t2, t0
                  sltiu        s10, s7, -1198
                  beq          a1, s7, 581f
                  sltiu        s8, s10, -624
                  or           t2, t2, s4
                  bgeu         s3, s1, 591f
                  nop
                  bne          t4, s7, 591f
581:              sltu         s10, s6, t6
                  or           s0, a7, s10
                  ori          a1, s6, -1704
                  xor          zero, a5, t0
                  sltiu        a1, a5, -1748
                  beq          s5, a5, 592f
                  ori          t3, s2, 1603
                  sra          s7, a1, a5
                  slli         t1, a1, 27
                  bge          s11, a4, 601f
591:              bge          t2, sp, 605f
592:              sltu         a3, s9, t3
                  sll          a1, s0, a7
                  bne          s8, s5, 610f
                  srli         s11, s7, 29
                  sltiu        s7, t2, 659
                  srli         t4, a2, 17
                  slti         tp, t1, 661
                  slt          gp, a2, a2
                  xor          a1, ra, s11
601:              slti         a1, sp, 2011
                  beq          t4, t6, 616f
                  sltiu        a6, t3, -677
                  srli         gp, s3, 10
605:              lui          s8, 721557
                  addi         t2, a6, -1152
                  sll          s7, s10, s8
                  bge          s7, s6, 627f
                  srli         sp, s8, 29
610:              bne          s3, a1, 627f
                  sll          s11, a5, s2
                  sub          a1, t3, a4
                  auipc        a5, 705230
                  and          s5, zero, a3
                  srai         ra, sp, 10
616:              slli         a3, a2, 0
                  auipc        s2, 968915
                  slli         a5, a3, 16
                  sltiu        s7, t6, -410
                  nop
                  slli         t1, a1, 12
                  sub          zero, a7, tp
                  bge          s6, t4, 630f
                  bltu         a1, s7, 631f
                  slli         a3, a4, 31
                  srai         gp, a1, 22
627:              bgeu         a7, a4, 638f
                  slt          t5, s2, s1
                  sll          t0, s3, s2
630:              bgeu         a5, zero, 642f
631:              srli         t6, s1, 26
                  add          s5, t6, s0
                  sra          s11, s4, ra
                  bgeu         s3, t2, 646f
                  sub          a1, sp, a4
                  bltu         s9, s0, 641f
                  slli         gp, t0, 19
638:              slti         s0, tp, 1385
                  and          s7, a3, t1
                  blt          t4, s6, 660f
641:              srli         tp, s11, 15
642:              slti         a5, t5, 1918
                  lui          t4, 1035961
                  and          s11, a4, s10
                  bge          s6, s9, 663f
646:              sub          t2, s9, s9
                  blt          s6, s4, 652f
                  bge          t1, s0, 665f
                  ori          s5, ra, 1622
                  auipc        s2, 326880
                  sltiu        tp, s1, 762
652:              lui          t2, 188980
                  sll          zero, a6, t1
                  nop
                  srl          s1, tp, t3
                  or           a4, s7, t3
                  sltiu        s1, a5, -1342
                  bge          s8, t6, 670f
                  srli         zero, t1, 17
660:              sll          t2, s8, s10
                  sltiu        s11, tp, -1148
                  or           s4, s6, a4
663:              beq          a2, s10, 674f
                  bltu         t4, s4, 674f
665:              xori         t0, a7, 1691
                  srli         s5, s1, 5
                  srli         t6, s4, 14
                  and          s7, s8, ra
                  sltu         t5, sp, a2
670:              addi         t1, a3, -1950
                  lui          t1, 512692
                  xori         s6, a7, 585
                  slti         sp, s9, -344
674:              bge          a2, s11, 679f
                  lui          s11, 920409
                  beq          ra, a7, 687f
                  sub          s5, sp, a6
                  srli         zero, s3, 1
679:              andi         sp, s9, -1077
                  sll          s5, a2, a3
                  blt          a3, gp, 683f
                  blt          s10, s3, 693f
683:              bltu         t3, sp, 694f
                  nop
                  bltu         s9, t0, 690f
                  bne          s4, s11, 700f
687:              bltu         s4, a6, 697f
                  sltu         t5, t4, t0
                  nop
690:              slti         t0, sp, 1594
                  srai         s7, s3, 14
                  slt          s5, s9, s9
693:              sltu         s6, sp, s10
694:              sra          a6, s10, s10
                  bge          a2, s3, 706f
                  sltiu        zero, t4, -77
697:              addi         a4, a6, -1041
                  bltu         t2, s0, 701f
                  sltiu        a1, t0, 1211
700:              bgeu         a6, t5, 705f
701:              sll          s10, s1, s8
                  slt          gp, s6, t4
                  lui          t4, 93836
                  add          t0, a0, s9
705:              auipc        s0, 25641
706:              add          a2, s6, gp
                  andi         s1, t6, 1634
                  sltu         t4, a6, t3
                  slti         s10, sp, -621
                  slti         gp, s5, -1637
                  blt          s4, a2, 729f
                  sub          s6, a3, s8
                  slli         a5, zero, 17
                  and          gp, a7, t5
                  addi         tp, a3, -1208
                  bgeu         t0, t2, 723f
                  sub          a3, s6, s0
                  srli         zero, t0, 20
                  andi         t3, s4, -717
                  addi         s9, gp, -668
                  slt          t5, s5, a3
                  or           s9, a7, s6
723:              sltu         a3, a3, t4
                  sltiu        t5, s0, 191
                  srli         gp, s4, 1
                  beq          t2, a3, 737f
                  xor          zero, a3, a3
                  and          zero, s1, s4
729:              sra          a2, t0, s10
                  xor          zero, s5, a3
                  auipc        a4, 930563
                  add          t3, a4, s7
                  blt          s1, s11, 735f
                  sra          s1, t0, a1
735:              auipc        t4, 16274
                  bgeu         s3, s6, 741f
737:              xori         s5, a3, -1982
                  and          ra, a2, a6
                  xor          s2, s3, a7
                  sra          s6, zero, a2
741:              sll          a4, a0, a7
                  sra          s9, zero, s10
                  addi         s6, s4, -198
                  xori         s1, tp, 1363
                  bltu         s4, s0, 751f
                  srli         t3, s8, 20
                  beq          s1, a1, 752f
                  bne          t0, t1, 762f
                  andi         s1, s3, 1474
                  beq          s6, a3, 768f
751:              xor          a6, t0, a6
752:              sltiu        a4, a6, -890
                  auipc        s10, 413481
                  beq          sp, s7, 766f
                  add          s7, a5, t3
                  srl          s10, a3, a0
                  blt          s2, s4, 768f
                  sltu         sp, tp, t3
                  sll          gp, t0, s4
                  srli         t6, s2, 7
                  beq          t0, t5, 768f
762:              add          s0, a0, s6
                  ori          a5, s3, -1926
                  slli         zero, a2, 31
                  xor          a1, s10, t2
766:              addi         s1, a5, -926
                  beq          t1, s0, 768f
768:              sub          t1, t6, t1
                  lw           ra, 4(s3)
                  xori         t4, a4, -1999
                  srl          s2, a5, gp
                  addi         s3, s3, 56
                  and          a1, t3, s11
                  ori          s1, t2, 1430
                  add          s2, a2, a5
1041:             addi x3, x1, 0
1041:             jalr x3, x3, 0
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
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
.section .region_1,"aw",@progbits;
region_1:
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf, 0xd0d1d2d3, 0xd4d5d6d7, 0xd8d9dadb, 0xdcdddedf
.word 0xe0e1e2e3, 0xe4e5e6e7, 0xe8e9eaeb, 0xecedeeef, 0xf0f1f2f3, 0xf4f5f6f7, 0xf8f9fafb, 0xfcfdfeff
.word 0x00010203, 0x04050607, 0x08090a0b, 0x0c0d0e0f, 0x10111213, 0x14151617, 0x18191a1b, 0x1c1d1e1f
.word 0x20212223, 0x24252627, 0x28292a2b, 0x2c2d2e2f, 0x30313233, 0x34353637, 0x38393a3b, 0x3c3d3e3f
.word 0x40414243, 0x44454647, 0x48494a4b, 0x4c4d4e4f, 0x50515253, 0x54555657, 0x58595a5b, 0x5c5d5e5f
.word 0x60616263, 0x64656667, 0x68696a6b, 0x6c6d6e6f, 0x70717273, 0x74757677, 0x78797a7b, 0x7c7d7e7f
.word 0x80818283, 0x84858687, 0x88898a8b, 0x8c8d8e8f, 0x90919293, 0x94959697, 0x98999a9b, 0x9c9d9e9f
.word 0xa0a1a2a3, 0xa4a5a6a7, 0xa8a9aaab, 0xacadaeaf, 0xb0b1b2b3, 0xb4b5b6b7, 0xb8b9babb, 0xbcbdbebf
.word 0xc0c1c2c3, 0xc4c5c6c7, 0xc8c9cacb, 0xcccdcecf
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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_2:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_3:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_4:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_5:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_6:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_7:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_8:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_9:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_10:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_11:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_12:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_13:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_14:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

mmode_intr_vector_15:
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x342 # MCAUSE
                  srli x4, x4, 0x1f
                  beqz x4, 1f
                  j mmode_intr_handler
                  1: la x17, test_done
                  jalr x0, x17, 0

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
                  addi x19, x19, -128
                  sw  x1, 4(x19)
                  sw  x2, 8(x19)
                  sw  x3, 12(x19)
                  sw  x4, 16(x19)
                  sw  x5, 20(x19)
                  sw  x6, 24(x19)
                  sw  x7, 28(x19)
                  sw  x8, 32(x19)
                  sw  x9, 36(x19)
                  sw  x10, 40(x19)
                  sw  x11, 44(x19)
                  sw  x12, 48(x19)
                  sw  x13, 52(x19)
                  sw  x14, 56(x19)
                  sw  x15, 60(x19)
                  sw  x16, 64(x19)
                  sw  x17, 68(x19)
                  sw  x18, 72(x19)
                  sw  x19, 76(x19)
                  sw  x20, 80(x19)
                  sw  x21, 84(x19)
                  sw  x22, 88(x19)
                  sw  x23, 92(x19)
                  sw  x24, 96(x19)
                  sw  x25, 100(x19)
                  sw  x26, 104(x19)
                  sw  x27, 108(x19)
                  sw  x28, 112(x19)
                  sw  x29, 116(x19)
                  sw  x30, 120(x19)
                  sw  x31, 124(x19)
                  add x10, x19, zero
                  csrr x4, 0x341 # MEPC
                  csrr x4, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x4, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x4, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x4, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x4, x18, ecall_handler
                  li x18, 0x1
                  beq x4, x18, instr_fault_handler
                  li x18, 0x5
                  beq x4, x18, load_fault_handler
                  li x18, 0x7
                  beq x4, x18, store_fault_handler
                  li x18, 0xc
                  beq x4, x18, pt_fault_handler
                  li x18, 0xd
                  beq x4, x18, pt_fault_handler
                  li x18, 0xf
                  beq x4, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x4, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x17, test_done
                  jalr x1, x17, 0

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
                  la x17, write_tohost
                  jalr x0, x17, 0

instr_fault_handler:
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

load_fault_handler:
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

store_fault_handler:
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

ebreak_handler:   
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

illegal_instr_handler:
                  csrr  x4, 0x341
                  addi  x4, x4, 4
                  csrw  0x341, x4
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x4, 0x300 # MSTATUS;
                  csrr  x4, 0x304 # MIE;
                  csrr  x4, 0x344 # MIP;
                  csrrc x4, 0x344, x4 # MIP;
                  add x19, x10, zero
                  lw  x1, 4(x19)
                  lw  x2, 8(x19)
                  lw  x3, 12(x19)
                  lw  x4, 16(x19)
                  lw  x5, 20(x19)
                  lw  x6, 24(x19)
                  lw  x7, 28(x19)
                  lw  x8, 32(x19)
                  lw  x9, 36(x19)
                  lw  x10, 40(x19)
                  lw  x11, 44(x19)
                  lw  x12, 48(x19)
                  lw  x13, 52(x19)
                  lw  x14, 56(x19)
                  lw  x15, 60(x19)
                  lw  x16, 64(x19)
                  lw  x17, 68(x19)
                  lw  x18, 72(x19)
                  lw  x19, 76(x19)
                  lw  x20, 80(x19)
                  lw  x21, 84(x19)
                  lw  x22, 88(x19)
                  lw  x23, 92(x19)
                  lw  x24, 96(x19)
                  lw  x25, 100(x19)
                  lw  x26, 104(x19)
                  lw  x27, 108(x19)
                  lw  x28, 112(x19)
                  lw  x29, 116(x19)
                  lw  x30, 120(x19)
                  lw  x31, 124(x19)
                  addi x19, x19, 128
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
