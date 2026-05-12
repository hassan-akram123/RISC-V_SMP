.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x1, h0_start
jalr x0, x1, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x2, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 1
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0xda611f68
                  li x1, 0x9e6a061
                  li x3, 0x0
                  li x4, 0xc
                  li x5, 0x80000000
                  li x6, 0x1
                  li x7, 0x6
                  li x8, 0x1865a29a
                  li x9, 0xfe3288b8
                  li x10, 0xe
                  li x11, 0x0
                  li x12, 0xa
                  li x13, 0xf436caac
                  li x14, 0x234d7cce
                  li x15, 0xe
                  li x16, 0xed048ae3
                  li x17, 0xfee3f30e
                  li x18, 0x7
                  li x19, 0x0
                  li x20, 0x0
                  li x21, 0xf12cd344
                  li x22, 0xe
                  li x24, 0x0
                  li x25, 0xf
                  li x26, 0xf53eb0ac
                  li x27, 0x80000000
                  li x28, 0x0
                  li x29, 0xfa366f3e
                  li x30, 0x4
                  li x31, 0x80000000
                  la x23, user_stack_end
main:             la           t0, region_1+559 #start riscv_load_store_rand_instr_stream_13
                  add          t1, a2, sp
                  nop
                  lbu          s8, 27(t0)
                  lh           t3, -53(t0)
                  slti         s0, s1, -1455
                  lhu          t4, 55(t0)
                  lbu          a4, 51(t0)
                  sub          tp, s7, s1
                  lb           s2, 3(t0)
                  lbu          t5, 46(t0)
                  sltiu        s6, tp, -204
                  lb           s0, 54(t0)
                  lbu          s0, 6(t0)
                  sll          s9, a4, t4
                  addi         s2, s9, -529
                  sb           s9, 20(t0)
                  slli         t3, gp, 4
                  lbu          t3, 16(t0)
                  slti         a1, s6, 340
                  lbu          t3, 24(t0)
                  addi         s6, a0, 1411
                  lbu          a2, 40(t0)
                  srl          s4, s0, tp
                  lw           t3, 29(t0)
                  sb           t4, 33(t0)
                  lw           a7, 13(t0) #end riscv_load_store_rand_instr_stream_13
                  la           tp, region_1+408 #start riscv_load_store_rand_instr_stream_2
                  sltu         a5, a5, a3
                  lb           t6, 195(tp)
                  sltu         a6, s11, s11
                  slt          gp, s6, zero
                  lb           t3, 125(tp)
                  sb           zero, -221(tp)
                  sltu         t6, s3, a7
                  sub          zero, t2, a1
                  sltu         t1, a0, t4
                  lui          a4, 377050
                  sra          t2, a4, s10
                  sub          t3, t2, s4
                  lb           t0, 169(tp)
                  sb           t3, 61(tp)
                  sb           a1, -91(tp)
                  lhu          a6, 186(tp)
                  lh           s10, 134(tp)
                  sb           s7, -105(tp)
                  lhu          s1, 208(tp)
                  srli         t0, s0, 16
                  and          s2, s9, t1
                  srli         t1, s1, 22
                  and          a4, s2, s1
                  ori          s4, a2, -385
                  sb           s6, 18(tp)
                  nop
                  nop
                  sb           t5, -255(tp)
                  sra          s2, s1, s9
                  lbu          s8, 247(tp)
                  xor          s8, t2, ra
                  slli         t5, s3, 11
                  lb           t0, 191(tp)
                  and          t1, s3, t3
                  xori         s5, s10, -1833
                  lb           t4, 161(tp)
                  sh           tp, 166(tp)
                  lb           a2, 77(tp) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_0+1375 #start riscv_load_store_rand_instr_stream_1
                  and          s10, a0, s6
                  xori         s1, t4, -405
                  lw           s2, -19(a7)
                  lb           t5, 252(a7)
                  srl          t5, a3, t0
                  sh           s5, -245(a7)
                  lw           a0, -79(a7)
                  andi         s3, gp, -1500
                  sb           s6, 100(a7)
                  lui          s1, 880084
                  lhu          s1, 27(a7)
                  lbu          a2, -256(a7)
                  lb           a4, -184(a7)
                  sb           t3, 102(a7)
                  sll          s10, s0, ra
                  slt          t5, s4, a7
                  sltu         s1, t5, gp
                  lhu          s5, -165(a7)
                  sb           a7, 42(a7)
                  lb           a6, -192(a7)
                  sb           t2, 232(a7)
                  slti         a4, s0, -2034
                  lbu          s8, -112(a7)
                  lbu          s9, -122(a7)
                  sb           a0, 240(a7)
                  lw           gp, 29(a7)
                  sw           a0, -39(a7)
                  sh           t6, 95(a7)
                  auipc        s8, 34264
                  sb           a0, -160(a7) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_0+202 #start riscv_load_store_rand_instr_stream_8
                  sh           a6, 736(t3)
                  lui          t5, 215070
                  lui          a1, 508459
                  sw           t1, 718(t3)
                  lbu          a5, 511(t3)
                  lb           a5, 271(t3)
                  lbu          a2, 598(t3)
                  sh           sp, 1062(t3)
                  add          t4, s0, t6
                  sra          a1, a0, s5
                  lbu          a6, 1703(t3)
                  lb           s2, 1089(t3)
                  lh           s4, 420(t3)
                  xori         s9, t4, -1863
                  sb           t4, 263(t3)
                  sb           s10, 1671(t3)
                  sh           a4, 412(t3)
                  add          s10, a6, t1
                  sub          s1, s2, s3
                  slt          s0, a2, s0
                  sb           t1, 741(t3)
                  xor          gp, t5, s1
                  sub          a6, s10, a6
                  lb           s1, 1447(t3)
                  lw           a6, 1730(t3)
                  lb           a5, 472(t3)
                  ori          t5, s10, -1245
                  lbu          s10, 784(t3)
                  sra          s8, a5, a2
                  sh           s2, 320(t3)
                  lhu          s0, 468(t3)
                  sb           t4, 999(t3)
                  sra          s6, t4, s2
                  ori          s2, zero, 1862
                  sltiu        t6, s4, -23
                  lhu          s3, 1380(t3)
                  lbu          s0, 1719(t3)
                  nop
                  lhu          s6, 1648(t3)
                  lb           t4, 459(t3)
                  srl          s3, t3, gp
                  xor          a6, s2, s3
                  lbu          s5, 467(t3)
                  add          a0, s2, s5
                  lb           s10, 654(t3) #end riscv_load_store_rand_instr_stream_8
                  la           s3, region_0+503 #start riscv_load_store_rand_instr_stream_16
                  sw           s1, 13(s3)
                  lbu          tp, -11(s3)
                  lbu          s4, 6(s3)
                  lb           tp, -6(s3)
                  auipc        a7, 404351
                  lbu          gp, -3(s3)
                  lhu          tp, 7(s3)
                  sb           sp, -3(s3)
                  auipc        s2, 164046
                  lb           a0, -5(s3)
                  lb           a7, -4(s3)
                  lb           a0, 14(s3)
                  sltu         a5, a2, a6
                  sub          tp, t0, sp
                  and          s9, a2, a3
                  lh           s11, 5(s3)
                  srl          zero, t1, s2
                  sh           a7, -13(s3)
                  lh           a1, -9(s3)
                  lbu          t3, 6(s3)
                  sb           a4, 3(s3)
                  add          s2, t3, s11
                  lbu          s2, -11(s3)
                  and          t5, t5, t5
                  andi         s1, sp, 1788
                  srli         zero, s6, 8
                  xori         t4, s9, 1392
                  srai         s6, s3, 14
                  lw           s4, 13(s3)
                  nop
                  sub          a6, t4, t2
                  sh           s10, 15(s3)
                  ori          t2, s5, -671
                  xori         s2, t2, 16
                  lbu          tp, -4(s3)
                  lbu          s10, 15(s3)
                  nop
                  lb           a4, 8(s3)
                  add          a6, a1, a4
                  sb           gp, 10(s3)
                  lh           t6, 13(s3)
                  sltiu        a4, t3, 1410
                  sb           s6, 14(s3)
                  lb           s6, -9(s3)
                  nop
                  sw           a7, -3(s3)
                  lhu          t1, -7(s3)
                  xor          s11, t4, t0
                  lb           t1, -7(s3)
                  sh           s3, 7(s3)
                  or           s8, zero, s6
                  lbu          zero, -16(s3) #end riscv_load_store_rand_instr_stream_16
                  la           a5, region_1+463 #start riscv_load_store_rand_instr_stream_14
                  slti         t2, a4, 1221
                  srai         t5, t3, 11
                  auipc        zero, 7663
                  lb           s11, -8(a5)
                  sub          s5, a5, t6
                  sb           s4, 12(a5)
                  lb           zero, -5(a5)
                  lhu          a2, -13(a5)
                  lb           a7, 12(a5)
                  lb           t2, 10(a5)
                  sll          a1, a4, s3
                  lhu          s5, -7(a5)
                  andi         s6, s0, -1305
                  lhu          t0, 15(a5)
                  lb           a4, -9(a5)
                  and          zero, a4, sp
                  lhu          a3, -3(a5)
                  sra          a2, s9, t0
                  lhu          s2, -11(a5)
                  lhu          a6, 15(a5)
                  sb           a3, -15(a5)
                  sra          s1, t1, s0
                  sb           s6, -6(a5)
                  sb           t5, -16(a5)
                  and          a2, zero, s11
                  sh           t6, -11(a5)
                  lbu          a4, 1(a5)
                  lb           t6, -14(a5)
                  lw           s10, 5(a5)
                  lbu          s4, 11(a5)
                  auipc        a3, 158414
                  sb           s9, -12(a5)
                  lh           s6, -11(a5)
                  sub          t1, s5, t1
                  sub          tp, sp, t4
                  slti         t4, a6, 555
                  and          a2, a2, t0
                  lbu          s4, -6(a5)
                  slti         t0, t2, -221
                  lb           s0, -4(a5)
                  sb           t6, 16(a5)
                  sb           a0, 7(a5)
                  lbu          s5, -8(a5) #end riscv_load_store_rand_instr_stream_14
                  la           s3, region_0+512 #start riscv_load_store_rand_instr_stream_12
                  sw           t0, 1240(s3)
                  sra          s2, t0, ra
                  lb           s4, 1295(s3)
                  sh           t5, 910(s3)
                  andi         t3, s4, 37
                  andi         t4, s4, -1277
                  add          a1, s2, zero
                  lhu          t1, 212(s3)
                  sh           a7, 678(s3)
                  lh           zero, 486(s3)
                  sb           s4, 407(s3)
                  lh           s10, -376(s3)
                  sb           gp, 377(s3)
                  slti         gp, s3, -1442
                  lbu          s6, -499(s3)
                  add          s9, s0, s11
                  sb           sp, 603(s3)
                  sb           gp, 114(s3)
                  lb           s10, 1443(s3)
                  sltiu        a7, s11, 1313
                  auipc        s8, 460414
                  sb           a2, 788(s3)
                  or           t5, tp, s2
                  lbu          a1, -339(s3)
                  lbu          s2, 1411(s3)
                  and          s4, s4, s10
                  sra          a6, s11, t2
                  slli         s0, s11, 8
                  or           a2, s10, s4
                  lhu          t1, 428(s3)
                  sb           t5, 1189(s3)
                  lh           a2, 1356(s3)
                  lb           a6, -174(s3)
                  xor          s4, a5, s5
                  lbu          s5, 520(s3)
                  lbu          a6, 829(s3)
                  lbu          a5, 900(s3)
                  srli         a1, t6, 17
                  nop
                  lbu          s2, 1304(s3)
                  xor          gp, s9, ra
                  lhu          t1, 776(s3) #end riscv_load_store_rand_instr_stream_12
                  la           a2, region_1+511 #start riscv_load_store_rand_instr_stream_3
                  sub          s10, zero, s7
                  xori         s4, tp, -1851
                  sh           s1, -3(a2)
                  sub          s4, ra, a0
                  sb           a7, 12(a2)
                  slli         a3, a3, 11
                  sub          t1, s7, s3
                  srli         t6, s5, 16
                  lb           s1, -3(a2)
                  lbu          s0, 8(a2)
                  lbu          t1, -5(a2)
                  or           gp, gp, s4
                  lb           s4, 2(a2)
                  auipc        tp, 989432
                  srl          s1, t0, t4
                  lb           t0, -15(a2)
                  lbu          s11, 6(a2)
                  sub          zero, s7, a6
                  srl          s3, a2, a4
                  lb           t3, 2(a2)
                  sltu         t5, s4, t3
                  auipc        s8, 596279
                  sh           s2, 9(a2)
                  slli         a7, ra, 19
                  lbu          a0, -2(a2)
                  sltu         t6, s9, sp
                  srli         s5, a4, 27
                  sra          s0, a2, t1
                  slt          a3, ra, s7
                  lhu          s11, 3(a2)
                  lui          a5, 334960
                  sb           tp, -2(a2)
                  slt          a4, a6, t1
                  slti         zero, a5, -1768
                  lbu          a7, -16(a2) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_1+1503 #start riscv_load_store_rand_instr_stream_6
                  lh           a0, -3(s8)
                  srli         a4, tp, 15
                  lbu          t2, -16(s8)
                  lb           t0, -15(s8)
                  andi         s2, a3, -1740
                  nop
                  srai         s11, t2, 28
                  nop
                  add          t1, a1, a6
                  lb           t4, -12(s8)
                  lhu          t4, 9(s8)
                  sub          a0, a0, zero
                  lbu          a7, -11(s8)
                  lhu          t1, -5(s8)
                  srli         s2, t0, 10
                  and          a3, s9, a7
                  nop
                  lbu          s11, 2(s8)
                  sb           s2, 15(s8)
                  srl          a3, a4, a3
                  lbu          s11, -10(s8)
                  sb           t2, -15(s8)
                  sltiu        gp, s6, -1651
                  lb           t5, 15(s8)
                  lh           s0, 1(s8)
                  lb           a0, 12(s8)
                  andi         a1, t3, -259
                  lb           a6, 15(s8)
                  sb           a2, -6(s8)
                  slli         a3, a1, 17
                  lb           gp, 10(s8)
                  lb           a4, 12(s8)
                  sh           a6, 15(s8)
                  lbu          s0, 14(s8)
                  lhu          a0, -3(s8) #end riscv_load_store_rand_instr_stream_6
                  la           t3, region_1+1941 #start riscv_load_store_rand_instr_stream_4
                  lh           t5, -15(t3)
                  lh           a0, 13(t3)
                  sb           s8, 1(t3)
                  sll          a3, s0, a3
                  andi         s6, s1, 1130
                  lw           s3, 15(t3)
                  srai         zero, a2, 23
                  slli         s9, a1, 25
                  xor          s4, t5, a3
                  lb           a4, -3(t3)
                  sll          zero, tp, tp
                  sw           a7, -13(t3)
                  sub          s5, a5, s3
                  sb           s1, 15(t3)
                  nop
                  srli         s9, s2, 22
                  lh           a5, 9(t3)
                  lb           zero, 14(t3)
                  add          a0, t2, s11
                  sb           s4, 1(t3)
                  sb           s2, 8(t3)
                  lbu          a0, 16(t3)
                  lb           a5, 7(t3)
                  add          a1, a4, sp
                  lbu          a0, -6(t3)
                  sltiu        tp, t5, -1093
                  lhu          gp, -3(t3)
                  lb           s9, -13(t3)
                  sb           s4, 0(t3) #end riscv_load_store_rand_instr_stream_4
                  la           a2, region_0+1018 #start riscv_load_store_rand_instr_stream_10
                  sb           sp, 21(a2)
                  lw           s5, 2(a2)
                  lb           t6, 25(a2)
                  addi         a5, tp, 844
                  sw           t2, -26(a2)
                  lhu          s0, -44(a2)
                  srli         gp, zero, 24
                  slt          a5, a0, sp
                  lb           s9, 10(a2)
                  sb           a1, 24(a2)
                  nop
                  srl          a7, s4, a7
                  sll          a3, a5, a7
                  and          a5, a2, s6
                  sb           s5, 45(a2)
                  add          a5, a5, a5
                  nop
                  lui          a0, 785777
                  sw           s6, -18(a2)
                  nop
                  sltu         s11, t0, s3
                  addi         a4, s5, -1041
                  sb           a2, 53(a2)
                  lbu          s8, -27(a2)
                  slli         s1, s10, 2
                  lw           s11, 30(a2)
                  sltiu        a3, a3, 1273
                  lb           s4, -40(a2)
                  sb           a7, 47(a2)
                  lh           tp, 54(a2)
                  sll          s4, t2, s0
                  addi         s6, s7, 484
                  lh           s6, -58(a2)
                  lb           s10, 30(a2)
                  sb           s6, -13(a2)
                  andi         a3, s3, 766
                  xori         a3, s9, -1845
                  sh           a6, -10(a2)
                  sb           s3, 35(a2)
                  sb           s9, 4(a2)
                  lui          s8, 496180
                  lbu          t5, -38(a2)
                  lbu          s3, -59(a2) #end riscv_load_store_rand_instr_stream_10
                  la           a7, region_1+229 #start riscv_load_store_rand_instr_stream_9
                  ori          s6, s0, 319
                  add          s11, t4, a3
                  srli         s9, s2, 12
                  sll          s5, s1, s11
                  xor          t0, s9, s9
                  srli         tp, t2, 7
                  srli         tp, a7, 30
                  slli         zero, a2, 8
                  srl          s5, t3, a2
                  lbu          a2, 61(a7)
                  auipc        s2, 335324
                  sb           s2, 36(a7)
                  auipc        gp, 564673
                  ori          s11, s4, -481
                  lhu          a4, 17(a7)
                  lb           t6, 50(a7)
                  xori         t5, s11, 647
                  srai         zero, t3, 13
                  nop
                  nop
                  andi         s5, zero, -476
                  ori          zero, s11, -1449
                  lbu          tp, -58(a7)
                  sra          t6, t2, s0
                  srli         t0, s5, 7
                  nop
                  sll          t6, s4, t6
                  sb           t3, -44(a7)
                  sll          s2, t4, a7
                  auipc        a6, 211539
                  srai         t6, a7, 11
                  slti         s8, t2, 612
                  lbu          gp, 33(a7)
                  slti         t3, a2, 122
                  lbu          t0, -47(a7)
                  sltiu        a6, s9, -62
                  lb           s4, 49(a7)
                  lhu          zero, 61(a7)
                  xor          s9, t0, t2
                  sb           a5, -62(a7) #end riscv_load_store_rand_instr_stream_9
                  la           s3, region_0+1675 #start riscv_load_store_rand_instr_stream_11
                  xori         a3, ra, 155
                  sb           s4, -596(s3)
                  slt          t5, t5, t1
                  andi         s10, s7, 667
                  or           a7, sp, t1
                  lb           s10, -388(s3)
                  lbu          a3, 109(s3)
                  lbu          a7, -16(s3)
                  slt          s0, s6, t5
                  lb           a7, -19(s3)
                  sb           s8, -570(s3)
                  lh           t4, -1533(s3)
                  nop
                  lb           zero, -225(s3)
                  lh           s6, -459(s3)
                  lhu          s6, -1185(s3)
                  or           a7, ra, s7
                  lw           gp, -1163(s3)
                  lbu          a4, -530(s3)
                  lhu          t6, -131(s3)
                  srl          s0, a2, a5
                  sra          t0, s9, t0
                  sb           s8, -1342(s3)
                  lb           s1, 259(s3)
                  andi         t0, ra, -1798
                  lb           s5, -424(s3)
                  lbu          s0, -702(s3)
                  lh           s11, -1161(s3)
                  lh           s10, -285(s3)
                  sb           a4, -921(s3) #end riscv_load_store_rand_instr_stream_11
                  andi         s10, ra, -321
                  sra          s3, t2, a5
                  blt          s10, sp, 19f
                  slti         t6, s4, 1182
                  sll          a0, s8, s4
                  srl          gp, a4, a1
                  sltiu        s10, t3, -2001
                  slti         a5, t1, -1227
                  sll          s4, a0, t0
                  srl          s10, a0, a6
                  srl          t1, t0, tp
                  nop
                  sltu         t4, a2, s10
                  lui          a2, 137045
                  bgeu         s1, s7, 16f
                  ori          s9, a2, -948
16:               slti         s5, t1, 500
                  sll          a0, s6, t5
                  nop
19:               nop
                  xor          a1, s2, s5
                  nop
                  sltu         a1, a5, t1
                  srai         s0, t6, 29
                  auipc        s4, 964020
                  xori         s11, s8, -1684
                  bltu         s4, a5, 29f
                  sltu         a2, ra, sp
                  add          t0, sp, a7
29:               ori          s8, t4, -407
                  la           s5, region_0+1484 #start riscv_load_store_rand_instr_stream_17
                  lbu          tp, -15(s5)
                  lbu          s9, 7(s5)
                  sll          t2, s7, zero
                  srli         s0, tp, 30
                  sb           s4, 9(s5)
                  nop
                  sltiu        a4, sp, -1498
                  lh           a0, -6(s5)
                  sub          a5, a1, s5
                  lhu          a7, -14(s5)
                  andi         t3, s11, 367
                  sw           s4, -16(s5)
                  sb           ra, 1(s5)
                  lbu          t0, -13(s5)
                  sltiu        s10, t2, 1132
                  lui          t4, 391214
                  nop
                  sub          a5, sp, t4
                  sra          a4, a3, t6
                  lhu          t2, 14(s5)
                  lb           s2, -12(s5)
                  lui          a0, 342373
                  sb           t0, 7(s5)
                  xori         a4, s9, -867
                  lbu          s4, -3(s5)
                  sltiu        s1, t0, -2048
                  and          t5, sp, a7
                  lw           a6, -16(s5)
                  addi         s3, t1, -1515
                  lw           a7, 16(s5)
                  ori          a1, s1, 122
                  sh           t0, 8(s5)
                  lb           tp, -5(s5)
                  lhu          t6, 16(s5)
                  sb           s5, 8(s5)
                  lhu          a6, -2(s5)
                  sb           a4, -7(s5)
                  and          t4, a3, t4
                  lhu          t4, -4(s5)
                  srli         s8, s1, 19
                  addi         a7, ra, -1629
                  lb           s4, -1(s5)
                  sh           tp, -12(s5)
                  ori          tp, t3, 938
                  lhu          s10, 2(s5)
                  sra          a7, gp, s2
                  lbu          t5, -13(s5)
                  sb           a2, 13(s5)
                  add          s4, s6, s5
                  sltiu        zero, t6, -290
                  lh           t3, 10(s5) #end riscv_load_store_rand_instr_stream_17
                  or           a0, s6, a0
                  srai         a0, t0, 27
                  andi         t1, t3, 1999
                  sll          tp, s7, a5
                  blt          t5, sp, 37f
                  sltiu        a5, a2, 2014
                  srl          s8, s7, a4
37:               beq          t6, s3, 48f
                  sub          a3, s1, t3
                  nop
                  sltiu        s3, s9, 1813
                  slti         a3, a7, 467
                  addi         s3, s9, -58
                  bge          t6, s7, 63f
                  sub          s0, t4, a4
                  blt          s1, s1, 49f
                  xor          a6, s9, s1
                  add          s11, tp, tp
48:               sll          zero, a0, t5
49:               sra          s5, a7, a2
                  or           a7, s8, a1
                  xor          t3, s8, s3
                  bge          s7, a6, 61f
                  bgeu         tp, t6, 57f
                  srl          t6, a5, ra
                  sub          a3, t1, s10
                  xor          a4, a1, t5
57:               lui          t4, 513198
                  slt          s3, t6, a2
                  srai         s2, s8, 7
                  srai         s9, a6, 16
61:               add          s11, t5, a7
                  ori          s0, s4, -853
63:               slti         zero, t5, 636
                  nop
                  bge          t5, t0, 72f
                  lui          a1, 212087
                  and          s0, s3, a6
                  auipc        s11, 1044579
                  addi         s4, t3, -2015
                  andi         s11, a0, -1626
                  nop
72:               blt          t4, t5, 78f
                  auipc        t2, 145447
                  andi         s5, t6, 1772
                  blt          a4, t5, 89f
                  blt          a3, t5, 88f
                  slli         t6, s6, 21
78:               bltu         t4, ra, 87f
                  xori         gp, s6, 1859
                  nop
                  slli         t0, a7, 6
                  bne          a3, s10, 95f
                  xor          s2, t2, s2
                  lui          tp, 338312
                  lui          t4, 900462
                  srli         t4, gp, 4
87:               sub          s1, sp, tp
88:               sltu         zero, s3, a7
89:               blt          s3, t5, 104f
                  sll          s8, s8, a0
                  srli         a3, s2, 20
                  addi         s0, s8, 1976
                  bltu         a4, s11, 101f
                  slti         t3, s0, 160
95:               sll          s2, s5, s2
                  xor          s5, t5, a0
                  slt          a2, t3, tp
                  slli         a5, t2, 3
                  sltiu        s2, sp, 1642
                  srl          s5, t3, sp
101:              beq          a6, s5, 104f
                  bgeu         s1, a2, 117f
                  slli         s11, t2, 26
104:              xori         t4, s8, -1593
                  bgeu         a1, a0, 116f
                  srai         s11, zero, 31
                  blt          s10, s1, 113f
                  srai         a3, a2, 19
                  sub          s9, a4, ra
                  ori          a4, a1, 58
                  and          gp, a4, ra
                  bltu         s5, s3, 124f
113:              srai         a1, s11, 6
                  srli         t6, s11, 5
                  srl          s11, t6, t6
116:              xor          zero, a3, s9
117:              srl          a2, a7, tp
                  xor          s4, a1, s2
                  lui          s3, 84414
                  sltiu        t4, a0, -798
                  and          s6, t1, t6
                  add          s3, a0, sp
                  add          t2, tp, s3
124:              bltu         s3, s10, 130f
                  ori          s9, s4, 1135
                  lui          t3, 1005144
                  nop
                  sub          t3, a4, t0
                  sll          gp, s8, s8
130:              addi         a1, a3, -1764
                  srli         s2, t2, 1
                  ori          s6, ra, -1844
                  auipc        s2, 428523
                  nop
                  sub          s1, t5, a2
                  xor          t6, a2, a5
                  bgeu         s7, t3, 147f
                  add          a1, t1, a3
                  sll          tp, gp, s5
                  ori          a3, a6, -1689
                  lui          s4, 750871
                  sll          t3, t3, a3
                  slt          a3, a5, a3
                  srai         a6, ra, 19
                  bltu         s6, a5, 148f
                  andi         t4, ra, -1269
147:              lui          s1, 639968
148:              slt          a2, t0, a3
                  sll          a2, s4, t0
                  sltu         s9, a5, a1
                  slt          a3, a2, a5
                  sra          t5, tp, s0
                  bge          ra, t4, 168f
                  sltiu        a7, ra, -2011
                  or           s0, s11, s0
                  or           s4, t0, tp
                  slti         t3, s7, 1383
                  slti         s8, s11, 760
                  addi         a7, a7, 867
                  nop
                  srli         t6, s10, 29
                  srai         t6, a3, 2
                  srai         s11, s7, 5
                  sra          a1, a0, a3
                  bgeu         zero, t1, 183f
                  sltu         s11, s8, t4
                  bgeu         s5, tp, 181f
168:              bne          a6, s0, 170f
                  slli         s11, t0, 28
170:              beq          s1, a6, 175f
                  srl          s2, s7, s9
                  bne          a0, s3, 185f
                  srai         a1, s11, 26
                  srai         t6, t2, 10
175:              nop
                  sltiu        t5, a3, 1553
                  andi         a5, a1, 1793
                  and          t0, s3, s7
                  sra          t1, t2, s4
                  add          a2, s6, s11
181:              or           t2, t2, ra
                  bgeu         s4, a4, 188f
183:              auipc        t3, 802836
                  bltu         sp, t1, 198f
185:              bne          s3, t6, 193f
                  addi         a3, t4, 1841
                  ori          a4, zero, 835
188:              slti         a2, a5, -2042
                  slli         s5, t4, 11
                  lui          a3, 289722
                  slli         a0, zero, 15
                  srai         s0, t0, 3
193:              add          s3, a3, a2
                  slt          a2, t6, t0
                  bge          gp, a4, 198f
                  srai         s3, ra, 26
                  sub          s9, a5, ra
198:              auipc        s2, 742477
                  bgeu         t4, a6, 205f
                  slt          s6, s6, a7
                  lui          s1, 112155
                  bltu         t2, a1, 207f
                  and          s2, a0, s4
                  bltu         s4, s4, 213f
205:              bgeu         t6, zero, 223f
                  lui          s3, 821883
207:              bne          a0, t4, 224f
                  slti         zero, t1, -391
                  nop
                  bgeu         s2, s10, 216f
                  bne          s6, s11, 220f
                  nop
213:              ori          a5, a6, 1990
                  slt          s6, ra, s6
                  bge          ra, s5, 217f
216:              and          a0, t0, zero
217:              xori         s11, s5, -2040
                  addi         s4, t4, -1612
                  andi         s3, a3, -181
220:              addi         a6, t3, 100
                  xori         t2, t0, -1586
                  nop
223:              slli         s8, t3, 6
224:              sll          t3, t4, a4
                  xori         tp, t0, 661
                  bgeu         t6, a3, 238f
                  addi         tp, s1, -646
                  sra          s9, s2, s2
                  bne          a3, a7, 241f
                  or           s9, t3, a6
                  sll          a4, s2, a3
                  xor          t0, s8, sp
                  ori          t5, s1, 1621
                  bge          s10, a2, 241f
                  and          t1, s4, a4
                  bgeu         t0, a7, 239f
                  slli         t2, s10, 24
238:              sra          a7, s2, ra
239:              slt          a3, a0, a1
                  srai         s11, a1, 6
241:              srai         a6, gp, 11
                  ori          t1, s2, -352
                  nop
                  or           s8, s0, s1
                  sub          s1, a4, s10
                  xori         s4, s0, 764
                  or           t0, t5, t1
                  srli         gp, t3, 1
                  or           s5, a0, a0
                  beq          s2, zero, 254f
                  blt          t6, a3, 265f
                  srli         a5, a6, 12
                  beq          a6, a2, 256f
254:              add          t4, s3, a4
                  or           s6, a2, s11
256:              andi         a5, t5, 296
                  srai         a0, a1, 4
                  srli         gp, a7, 21
                  sll          a6, s5, s1
                  lui          s0, 373440
                  sltiu        tp, s11, 1009
                  sltiu        a5, s1, 1251
                  srli         a7, s2, 31
                  bgeu         gp, t3, 279f
265:              or           t6, s11, a4
                  auipc        zero, 403614
                  beq          a4, a3, 277f
                  addi         s0, s4, -732
                  and          s8, t0, s4
                  andi         s5, a4, -1069
                  sub          a5, a1, t0
                  or           s0, s4, s0
                  bne          s0, gp, 288f
                  srai         zero, a5, 29
                  andi         s8, s11, 47
                  andi         s2, t1, -513
277:              bltu         t1, t0, 281f
                  xor          gp, s11, tp
279:              bne          a0, s10, 282f
                  bne          s10, s6, 291f
281:              addi         s11, s0, -1466
282:              or           s0, s1, s10
                  sltiu        t6, s3, -1801
                  sub          a7, t2, a7
                  sltu         a1, s7, s9
                  bge          a3, a0, 288f
                  bge          tp, gp, 302f
288:              sll          a2, a4, a0
                  slti         t0, s0, 1796
                  nop
291:              add          s4, a3, s10
                  srai         t6, sp, 25
                  sltu         s3, t1, s6
                  sll          t4, s9, s4
                  or           s11, s2, a2
                  blt          s1, a7, 307f
                  and          s0, s9, a7
                  bgeu         t1, sp, 318f
                  sll          s6, t5, a5
                  sra          a0, t5, s9
                  srai         a0, s2, 12
302:              blt          s11, sp, 308f
                  lui          s2, 841083
                  xori         a6, t6, -590
                  sra          a6, sp, s4
                  beq          a1, t4, 320f
307:              beq          s5, s8, 316f
308:              bgeu         s0, ra, 311f
                  srli         zero, t4, 28
                  slti         a6, tp, 785
311:              bltu         s7, tp, 320f
                  bgeu         s10, s2, 327f
                  nop
                  sltu         a1, a7, t6
                  nop
316:              addi         t2, a0, -1454
                  slti         a5, ra, -1744
318:              srai         t4, a2, 29
                  bne          a0, t6, 325f
320:              xor          t6, gp, t6
                  add          t1, a0, s6
                  add          s9, tp, s4
                  lui          t2, 859729
                  bltu         t0, t5, 342f
325:              sltiu        s2, s10, 1546
                  andi         zero, t5, 70
327:              xor          gp, gp, t3
                  bne          gp, a4, 342f
                  slli         t3, zero, 15
                  slli         s2, a2, 1
                  nop
                  lui          s11, 10079
                  blt          a2, t2, 335f
                  andi         s10, a6, 1540
335:              addi         a4, s6, -628
                  ori          s11, zero, -1507
                  lui          s3, 672322
                  bltu         s9, a5, 355f
                  slli         a5, s2, 20
                  xor          s4, a2, t6
                  srai         a3, s4, 15
342:              add          t2, sp, s0
                  bne          a2, s3, 347f
                  blt          s5, a6, 348f
                  slli         t2, s10, 20
                  slt          s1, s6, t4
347:              lui          a7, 132195
348:              lui          a3, 588458
                  andi         a5, s2, 1989
                  srl          s3, a3, s2
                  sll          s3, ra, s10
                  srli         a1, s7, 29
                  ori          t0, t5, -55
                  xori         s1, a0, 1363
355:              sll          s5, s2, t6
                  bge          a2, s3, 361f
                  add          t0, s1, t5
                  nop
                  sll          s4, a3, t6
                  bne          s0, t6, 362f
361:              bltu         s2, s11, 364f
362:              bltu         t4, s0, 373f
                  sub          a5, a7, t4
364:              srli         a4, s7, 13
                  xori         tp, s2, -703
                  bltu         s10, s6, 373f
                  and          s5, a7, s8
                  nop
                  lui          gp, 364184
                  add          zero, a6, a6
                  bgeu         s11, ra, 383f
                  srl          s9, a1, a4
373:              sub          a1, a6, s7
                  ori          s3, s7, 911
                  bne          t1, s10, 390f
                  slt          a0, ra, a3
                  sra          s2, s10, s7
                  addi         a6, s4, -1231
                  srai         tp, a7, 24
                  xor          zero, t3, a5
                  sltiu        s0, a5, -1960
                  srli         s3, a2, 5
383:              and          a7, a7, t3
                  beq          ra, a0, 390f
                  sll          s8, t1, s0
                  lui          s9, 86073
                  srai         a2, s2, 14
                  slli         a5, s0, 31
                  bltu         s4, s9, 400f
390:              sra          s1, a0, t0
                  addi         t1, a6, 132
                  addi         t3, s1, 1763
                  beq          a1, s0, 408f
                  and          s8, a4, t5
                  lui          s5, 22642
                  lui          s8, 499782
                  sltiu        t6, s3, -274
                  slt          s5, s0, sp
                  sub          gp, s4, s9
400:              slt          a3, s1, t5
                  add          t5, s6, s9
                  srli         a2, t2, 27
                  add          s0, a2, s11
                  addi         a7, s2, -374
                  auipc        t4, 673318
                  bge          zero, t0, 414f
                  blt          t6, s5, 410f
408:              xor          s4, s7, zero
                  auipc        s9, 341874
410:              lui          s3, 594150
                  lui          t5, 242690
                  lui          s10, 920536
                  xori         s2, s0, 1352
414:              ori          s10, s8, -932
                  xori         t3, gp, -1648
                  bltu         s1, tp, 428f
                  sub          t5, a0, t2
                  slt          a7, s0, sp
                  sltu         a4, t3, t1
                  slli         t3, a2, 28
                  sltiu        zero, a6, 283
                  addi         s9, a6, -1860
                  beq          tp, a6, 443f
                  xori         s6, s0, -1538
                  and          t6, sp, s4
                  beq          s4, t4, 429f
                  andi         a6, s8, 680
428:              sltu         s11, s10, a2
429:              sll          s1, zero, tp
                  beq          t1, t5, 443f
                  bne          t4, t0, 441f
                  bne          ra, a5, 446f
                  sub          s4, s2, a0
                  sll          s11, s10, a5
                  ori          a3, t2, 1021
                  bgeu         ra, t4, 456f
                  slt          s1, s11, s0
                  srli         t5, a7, 16
                  sub          t0, zero, t2
                  bne          s0, s11, 443f
441:              add          s9, t1, gp
                  bgeu         ra, a0, 448f
443:              lui          a3, 516833
                  lui          a1, 585056
                  add          s8, s9, t6
446:              srl          a2, s10, a1
                  xori         tp, s10, 1007
448:              and          a3, t3, ra
                  bge          s4, zero, 464f
                  lui          a0, 529998
                  nop
                  bgeu         gp, gp, 467f
                  xori         t2, a1, -1689
                  bge          t4, t5, 468f
                  beq          t1, t0, 461f
456:              xori         t2, sp, 728
                  or           s9, s6, t2
                  xori         s9, s9, 1155
                  xor          a5, t1, s9
                  add          a5, a3, t3
461:              bltu         s5, t3, 470f
                  bltu         s5, t6, 479f
                  and          t3, a6, s3
464:              bge          s8, a0, 474f
                  and          s11, s2, s5
                  or           a7, s6, a0
467:              andi         gp, s0, 198
468:              beq          a4, a0, 470f
                  and          tp, s0, s10
470:              lui          s2, 810364
                  lui          t0, 474302
                  or           t1, ra, s1
                  andi         a5, sp, 856
474:              srai         t2, ra, 10
                  slti         s0, a5, 1677
                  bgeu         s10, a0, 479f
                  srai         s9, s8, 4
                  and          t5, s11, a6
479:              and          a0, t5, a4
                  slli         a4, tp, 7
                  blt          a4, a0, 485f
                  bne          a1, a3, 484f
                  srai         t6, s11, 5
484:              slli         a4, t2, 5
485:              xori         s10, t3, 1988
                  sub          s3, s3, s8
                  srl          zero, s6, s1
                  and          s2, a0, a1
                  srai         s3, s2, 30
                  srai         t1, zero, 26
                  slli         t0, s5, 19
                  xor          s4, a4, a2
                  add          a7, t2, s4
                  slli         t5, t2, 4
                  bge          a7, s7, 500f
                  slt          s1, s4, s3
                  slt          s11, s3, a6
                  addi         s6, a0, -714
                  andi         s8, ra, -1711
500:              ori          a0, s11, -1150
                  bne          t0, t6, 512f
                  sra          s9, s7, s3
                  add          s10, a0, a1
                  xori         t1, a4, -973
                  sra          t3, t0, s7
                  ori          t6, t3, -836
                  sltiu        s1, t0, -1717
                  sra          a3, a7, t2
                  sll          s8, a5, s8
                  slli         s4, a7, 6
                  xor          s4, s10, t0
512:              blt          t0, a2, 520f
                  ori          t2, s0, 684
                  sll          a4, t1, a2
                  andi         a2, zero, -613
                  and          t1, s7, a7
                  sra          a6, s3, a0
                  lui          zero, 71916
                  sll          s1, s2, tp
520:              srai         s2, sp, 7
                  srai         t0, s3, 7
                  srl          a7, s2, s8
                  bge          a0, s11, 530f
                  and          s6, s5, a5
                  slti         t0, s10, -1291
                  sll          s6, tp, s5
                  andi         s11, s5, -224
                  sub          s1, a7, s4
                  ori          gp, s9, 1638
                  la           t1, region_1+262 #start riscv_load_store_rand_instr_stream_5
                  lbu          s0, 177(t1)
                  lb           t6, 166(t1)
                  sw           tp, 166(t1)
                  ori          s10, sp, 1044
                  srl          s3, s10, s10
                  lhu          s11, -206(t1)
                  sw           t5, -182(t1)
                  lui          a0, 578032
                  sra          t5, gp, a7
                  nop
                  sh           tp, -206(t1)
                  sra          s3, s5, s2
                  sw           a4, 194(t1)
                  lb           s1, 169(t1)
                  sltiu        t4, t5, -188
                  sra          a5, s10, s7
                  srli         a0, a1, 19
                  add          a0, s3, ra
                  lhu          s6, 22(t1)
                  sb           a2, -157(t1)
                  lbu          a0, -97(t1)
                  sb           s5, -4(t1)
                  lhu          a7, -180(t1)
                  srl          a4, s0, s0
                  sb           s5, -174(t1)
                  sub          a0, a2, s6
                  lbu          tp, 205(t1)
                  lbu          s8, 23(t1)
                  lui          a0, 385684
                  sltiu        s9, s3, 70
                  andi         s6, t0, -396
                  xor          t3, t0, t0
                  or           a6, s6, t6
                  slli         a3, zero, 0
                  sh           a3, 186(t1)
                  sub          s9, s2, s1
                  sb           zero, 86(t1)
                  sh           a5, 44(t1)
                  sra          s1, t0, t0
                  slti         t2, s11, 796
                  lb           t3, 100(t1)
                  lb           t2, -71(t1)
                  lui          a0, 749761
                  sltiu        s3, s2, 823
                  lh           a1, -32(t1)
                  lb           s2, 189(t1)
                  lb           a2, -17(t1)
                  sb           a4, -31(t1)
                  nop
                  sltu         a4, t1, s1
                  srli         a6, s5, 30
                  sb           s11, -61(t1)
                  ori          a7, gp, 608
                  lbu          a4, 24(t1)
                  lh           a4, -84(t1)
                  xori         gp, s2, -1078
                  sb           t5, -26(t1)
                  sltiu        s5, s1, 1050
                  lb           t5, 153(t1) #end riscv_load_store_rand_instr_stream_5
530:              xori         t4, s11, -109
                  xori         t5, gp, -1426
                  slti         zero, t5, -1086
                  ori          a4, s6, -552
                  srai         t3, s9, 28
                  nop
                  srai         tp, t6, 25
                  slti         a0, t1, 1994
                  srli         a5, a4, 23
                  add          a2, a1, gp
                  bge          a2, t1, 549f
                  andi         s8, s5, -1689
                  addi         a1, t6, -1459
                  bgeu         s10, a1, 558f
                  addi         tp, s8, 714
                  xori         a0, a2, 1084
                  and          gp, a2, t0
                  blt          s11, s11, 559f
                  xori         t4, a0, -49
549:              xor          tp, s6, t6
                  sltiu        t6, sp, 299
                  sltiu        a5, s0, 690
                  slt          s5, sp, s5
                  beq          t0, s6, 556f
                  add          s8, a6, s6
                  bgeu         s4, sp, 559f
556:              bne          s9, s10, 569f
                  lui          t1, 570702
558:              and          a1, a0, t3
559:              xori         s9, t6, -156
                  lui          zero, 589946
                  xor          t5, s4, a1
                  slli         t6, zero, 1
                  sltu         zero, a1, s7
                  sll          t5, s3, s7
                  bge          t5, s4, 583f
                  srai         a6, s9, 8
                  bne          gp, sp, 579f
                  bne          a1, tp, 574f
569:              or           s8, a5, sp
                  srl          a4, t0, a5
                  srai         s2, t3, 18
                  nop
                  sll          a2, t6, t3
574:              bgeu         s9, sp, 577f
                  bltu         s3, t4, 586f
                  sra          tp, a1, tp
577:              srli         a0, tp, 6
                  beq          s11, tp, 582f
579:              srl          s10, t4, a5
                  sltiu        t6, t5, -1633
                  blt          s7, t0, 590f
582:              sll          a3, s4, s8
583:              addi         t4, t0, 954
                  beq          t6, t6, 587f
                  nop
586:              sltu         a4, ra, s10
587:              lui          s9, 251457
                  slti         s5, s6, -1292
                  srli         s9, a1, 4
590:              xori         t1, a7, -1323
                  slli         a4, t1, 7
                  add          t6, s11, s0
                  srl          s0, s5, a2
                  lui          t3, 79974
                  srli         a3, a0, 31
                  andi         s0, ra, 1033
                  srai         t1, a6, 25
                  sub          t2, t1, a0
                  or           s9, a3, tp
                  sltiu        s1, t3, 555
                  slti         s1, a6, -1687
                  srl          s10, s9, t5
                  or           a0, s11, s10
                  slt          t2, t1, a0
                  bge          s7, t5, 617f
                  bltu         a6, t6, 618f
                  auipc        a4, 193611
                  sra          zero, s6, zero
                  ori          s6, s4, 1565
                  bgeu         t6, s6, 619f
                  sra          t4, s9, s5
                  sra          s8, s1, s6
                  auipc        tp, 239903
                  nop
                  srli         s0, zero, 14
                  sll          a2, sp, s8
617:              bltu         t1, s10, 621f
618:              bge          tp, s8, 635f
619:              srl          a7, t2, s6
                  bgeu         s1, a2, 626f
621:              and          a1, ra, s3
                  sra          s4, zero, a5
                  or           a1, a1, a2
                  and          t6, gp, a0
                  sll          s8, t6, tp
626:              slt          a1, t1, s7
                  srl          t1, zero, a2
                  sra          zero, a7, t5
                  xor          t3, s5, sp
                  slli         s3, t2, 0
                  sub          s3, s0, a4
                  xor          a3, t6, t1
                  srli         a6, t0, 18
                  nop
635:              bltu         t6, a6, 646f
                  bgeu         t3, gp, 651f
                  add          s5, s11, s0
                  srli         a5, t4, 8
                  beq          a2, s2, 653f
                  sll          a6, t1, gp
                  xori         s11, gp, 1156
                  slti         a5, ra, -1480
                  andi         a1, gp, -123
                  sll          t6, a5, s9
                  bne          zero, tp, 648f
646:              srli         s10, t6, 18
                  slti         s5, s11, -1125
648:              srai         t0, a4, 4
                  lui          t6, 324095
                  bne          t2, a0, 656f
651:              nop
                  bltu         s2, s0, 657f
653:              bge          sp, a4, 659f
                  blt          a0, s4, 657f
                  slti         s0, t5, -221
656:              xori         s9, tp, -1787
657:              andi         s3, a6, 1349
                  lui          s2, 980122
659:              bne          s1, a3, 670f
                  srl          tp, a6, ra
                  srli         s9, t6, 1
                  bne          a5, tp, 670f
                  nop
                  beq          t6, s7, 678f
                  auipc        t1, 68959
                  beq          a0, t0, 673f
                  blt          a6, gp, 682f
                  bge          a4, a4, 670f
                  slti         s0, a6, -1043
670:              blt          gp, s1, 672f
                  sra          s3, s3, tp
672:              slt          a2, a1, s5
673:              and          t0, gp, s4
                  andi         t3, a6, 289
                  and          a6, t4, a7
                  srl          s1, t6, s5
                  nop
678:              beq          gp, s5, 691f
                  sltiu        s6, t0, 2016
                  beq          a5, s10, 683f
                  ori          s0, s5, 1785
682:              and          a4, t3, s3
683:              add          tp, t1, s8
                  addi         t5, s7, 1749
                  slt          t5, t2, s8
                  lui          s3, 18179
                  sltiu        t2, t0, -225
                  addi         s3, a3, -565
                  nop
                  bltu         s9, a2, 708f
691:              or           a3, s7, s11
                  lui          s5, 723264
                  nop
                  bgeu         a7, s5, 709f
                  addi         a2, a0, -1278
                  nop
                  beq          a3, s11, 707f
                  addi         s2, t4, -542
                  and          t6, a5, a2
                  add          t0, a7, s10
                  xor          a0, tp, s6
                  sltiu        t2, s10, -302
                  srl          t1, a3, t5
                  beq          s9, s7, 724f
                  bge          s5, t4, 707f
                  bne          a2, s3, 715f
707:              sltu         t4, s10, s5
708:              bgeu         s10, a3, 711f
709:              sll          gp, a7, s2
                  sltu         t4, a7, s9
711:              slli         s11, a4, 26
                  andi         s6, s8, 1595
                  auipc        t4, 313383
                  bge          t2, s5, 732f
715:              nop
                  bgeu         s11, a0, 731f
                  bgeu         t2, ra, 734f
                  srl          s8, t6, a2
                  auipc        zero, 431928
                  blt          s2, s9, 726f
                  auipc        a1, 959638
                  srli         a3, zero, 18
                  slli         t6, t6, 14
724:              blt          s2, s6, 730f
                  andi         tp, s6, -1761
726:              srl          s0, t2, s7
                  sll          t4, t3, tp
                  lui          t2, 653408
                  bgeu         a1, s11, 734f
730:              sll          a1, s3, t3
731:              auipc        s2, 363882
732:              slli         t6, s9, 18
                  bltu         s5, a6, 736f
734:              or           a6, a7, a6
                  sltu         t5, t0, s8
736:              srai         s9, t2, 6
                  ori          s5, t2, 1223
                  sll          t4, s6, a4
                  bgeu         s9, s9, 741f
                  bge          s4, t4, 744f
741:              add          t0, s8, s3
                  addi         a5, t5, -1370
                  bltu         a3, s7, 756f
744:              add          zero, s3, tp
                  add          t1, t4, t4
                  la           t0, region_1+1318 #start riscv_load_store_rand_instr_stream_7
                  auipc        s8, 802936
                  or           s9, a3, a7
                  lui          a2, 1019527
                  sb           s8, 13(t0)
                  sub          s8, sp, a4
                  srai         a0, s9, 6
                  sb           s9, -955(t0)
                  slti         s11, t1, 433
                  lw           s6, -74(t0)
                  nop
                  ori          gp, s10, 1838
                  or           tp, s4, a4
                  sw           ra, -210(t0)
                  sb           s3, -204(t0)
                  lbu          s2, -950(t0)
                  sh           s3, -460(t0)
                  sw           s0, 570(t0)
                  sll          a2, s0, s5
                  sh           tp, 228(t0)
                  or           s10, s11, s8
                  andi         s5, t3, 2008
                  srl          t6, a1, ra
                  sb           a2, -929(t0)
                  sh           s3, 256(t0)
                  or           t1, ra, t1
                  sb           ra, -1017(t0)
                  lhu          t6, -172(t0)
                  lb           t6, 85(t0) #end riscv_load_store_rand_instr_stream_7
                  slti         t3, s6, -105
                  sra          s4, a6, a0
                  add          t6, zero, t0
                  srai         s5, s3, 4
                  slli         a3, zero, 0
                  sra          t0, a0, gp
                  auipc        a0, 855155
                  sltu         a1, a2, t3
                  srl          s6, t4, t0
                  beq          s7, s0, 767f
756:              lui          a5, 246271
                  sltu         s4, a6, a5
                  addi         a0, zero, -1579
                  srai         t1, a1, 3
                  slli         tp, s7, 3
                  srai         s9, a1, 12
                  srai         t3, s11, 4
                  sll          a2, a4, a5
                  auipc        s8, 863030
                  sra          a0, t1, s3
                  andi         s10, a1, -1952
767:              auipc        s0, 639006
                  nop
                  xor          t1, s11, s1
                  beq          a5, a7, 785f
                  sub          a0, a6, sp
                  slt          gp, s2, a3
                  sltiu        zero, sp, -912
                  slt          s0, s9, s1
                  xor          s1, a2, t2
                  sll          zero, a2, s0
                  sltu         a0, gp, t0
                  xor          a6, s5, t6
                  xori         a7, t4, -1111
                  sltu         a3, a7, s1
                  or           a3, a4, ra
                  or           tp, t3, s10
                  bne          gp, t2, 790f
                  beq          a3, s4, 798f
785:              or           zero, s4, a7
                  sra          t5, s8, ra
                  auipc        s3, 682578
                  bge          t2, s10, 799f
                  andi         s9, s4, -1997
790:              or           t5, a4, s7
                  slli         gp, s9, 29
                  bgeu         tp, s8, 803f
                  slti         s2, s2, -634
                  xori         s4, a6, -553
                  bltu         ra, t2, 807f
                  slli         t1, gp, 25
                  addi         s4, t0, -1082
798:              andi         s8, t1, -1306
799:              slli         s9, t6, 7
                  beq          a4, a1, 804f
                  add          s3, t5, t1
                  sll          s2, s5, a1
803:              xor          s5, a0, s0
804:              nop
                  srl          a4, t0, t5
                  slt          t5, s10, s4
807:              sll          t3, a6, t1
                  sltiu        a1, t4, -248
                  srai         a2, t6, 30
                  sll          gp, s10, tp
                  sub          a7, a2, t2
                  and          t2, s0, s5
                  add          s10, t6, a0
                  ori          zero, s0, 1008
                  slli         s8, a7, 2
                  slli         s10, s5, 21
                  blt          s9, a7, 823f
                  slli         s11, tp, 20
                  bge          s6, ra, 828f
                  xor          s6, s0, t4
                  bge          s1, t2, 841f
                  or           t5, sp, s5
823:              beq          a4, a1, 826f
                  ori          s10, a7, 1545
                  blt          zero, t3, 833f
826:              sub          s1, ra, t1
                  slli         a3, s9, 2
828:              auipc        s2, 697509
                  xor          t0, t0, a5
                  srai         s2, s8, 29
                  and          t2, s1, ra
                  sra          tp, s0, a2
833:              or           s2, s3, s5
                  ori          t4, t4, 969
                  bge          sp, zero, 845f
                  beq          sp, s4, 850f
                  sll          t0, a7, s7
                  sub          t0, s4, s6
                  andi         t4, a5, -561
                  bgeu         s1, s1, 855f
841:              sltiu        s6, a7, -357
                  sll          a2, t1, s0
                  sll          a3, t5, t4
                  srl          t0, sp, s4
845:              bltu         t6, s9, 848f
                  sltiu        s2, t0, -1438
                  slli         s0, a5, 9
848:              slti         s10, s9, -132
                  sra          s5, a3, a5
                  add          t3, a1, s1
                  ori          zero, s1, 1160
                  srl          s2, gp, a0
                  la           s9, sub_1
                  auipc        s3, 61074
                  addi         s9, s9, 828
                  sub          gp, t6, s7
                  beq          t4, gp, main_j2 #branch to jump instr
                  xori         t5, t5, 971
                  xori         s5, s9, -1495
main_j2:          jalr         t1, s9, -827 #jump main -> sub_1
                  lui          zero, 668468
850:              slti         tp, t1, 1243
                  auipc        t2, 522062
                  slti         gp, s10, -313
                  srl          t6, t0, a1
                  blt          a7, a6, 865f
855:              or           gp, s4, t0
                  or           s1, a1, s2
                  xori         s5, s10, -1758
                  sll          a0, a7, t0
                  ori          a3, s1, -148
                  auipc        t2, 282008
                  bge          ra, t5, 872f
                  add          s11, s10, zero
                  andi         a6, s1, -270
                  bge          a6, a4, 867f
865:              sra          gp, t3, sp
                  andi         s0, s11, 273
867:              bne          t5, s6, 871f
                  srai         s0, s11, 7
                  sltu         t6, s0, s8
                  bgeu         a2, t1, 885f
871:              slt          a6, ra, ra
872:              auipc        a7, 723718
                  addi         s8, a2, 1235
                  srl          t0, s3, gp
                  bgeu         s11, ra, 883f
                  sub          tp, s9, s2
                  slli         t5, s3, 17
                  lui          t1, 936368
                  slti         a5, a0, -618
                  or           t0, t1, a0
                  add          zero, s11, gp
                  slti         a4, s4, -48
883:              bltu         s5, s9, 889f
                  srl          t6, sp, s4
885:              or           s10, t1, s4
                  blt          s3, s1, 888f
                  srl          a0, a1, sp
888:              sltiu        s6, a7, -360
889:              bltu         s4, a2, 901f
                  ori          t6, a3, -1161
                  sub          s11, a7, a7
                  sltu         s11, gp, a5
                  xor          s2, a2, t0
                  sub          t0, tp, t6
                  auipc        s8, 510766
                  la           tp, sub_1
                  andi         t2, t4, -1906
                  xor          a1, zero, s0
                  andi         a5, a6, 1533
                  sltiu        t0, a6, -1842
                  srli         s10, a3, 14
                  addi         tp, tp, -435
                  sub          s8, tp, t5
                  bgeu         a5, t0, main_j1 #branch to jump instr
                  andi         t2, s6, -1769
main_j1:          jalr         t1, tp, 436 #jump main -> sub_1
                  slt          t2, s11, a5
                  blt          a1, s3, 903f
                  slli         s0, s8, 25
                  slti         a7, s3, 1494
                  slt          t0, t1, s9
                  and          s2, s11, a5
901:              add          a2, tp, t4
                  bgeu         ra, a1, 922f
903:              lui          s5, 378909
                  and          s0, s1, s4
                  add          s11, a5, a7
                  bgeu         a3, a0, 915f
                  bne          a1, t6, 922f
                  bgeu         s11, gp, 920f
                  srl          s2, s3, a7
                  add          t0, a2, s0
                  slt          s9, s7, s7
                  or           s4, a2, t0
                  srl          s1, a0, gp
                  blt          t4, t0, 928f
915:              sra          s5, a5, s9
                  ori          s5, gp, 655
                  beq          s11, a1, 927f
                  auipc        s3, 786084
                  bge          a1, ra, 924f
920:              slt          t1, s3, a0
                  lui          a1, 1001786
922:              and          s10, t1, a2
                  and          t6, a0, tp
924:              xor          t4, s3, t3
                  xor          a6, a4, s11
                  and          a7, s6, a7
927:              sub          a5, t5, s5
928:              addi         t6, s9, -837
                  xori         a4, gp, 346
                  auipc        t2, 992810
                  add          s2, ra, t0
                  srl          s3, a3, s7
                  slli         s3, s0, 22
                  add          s1, a4, s7
                  auipc        a1, 244812
                  lui          a3, 428163
                  sll          t4, s4, s4
                  blt          s4, s4, 941f
                  blt          s3, a1, 952f
                  or           zero, zero, a4
941:              nop
                  lui          s0, 917528
                  bgeu         s6, gp, 952f
                  add          gp, s6, a0
                  slt          s3, sp, a4
                  sra          t1, t0, t6
                  srl          s10, s9, t6
                  srli         a2, a7, 31
                  andi         a5, s5, -1644
                  bne          a0, t4, 954f
                  and          s11, a0, s1
952:              bge          s2, a3, 955f
                  sub          t2, ra, s0
954:              ori          a5, s8, 1161
955:              blt          t5, a2, 969f
                  nop
                  nop
                  sub          s9, zero, t0
                  srli         t0, zero, 1
                  auipc        a6, 922574
                  bgeu         t2, t4, 967f
                  lui          s3, 276414
                  auipc        t3, 33770
                  andi         s2, tp, 1926
                  srli         a5, t2, 3
                  andi         s6, t2, -576
967:              and          a6, t5, t1
                  sub          a1, a3, t4
969:              slli         s9, t1, 0
                  nop
                  bne          s5, t1, 973f
                  auipc        gp, 404292
973:              add          a3, s8, s3
                  sltu         a4, a1, gp
                  bne          a7, s3, 978f
                  ori          s3, gp, 1512
                  bne          s10, s4, 983f
978:              slti         s5, s10, -595
                  auipc        a5, 202732
                  sltu         t5, t4, s7
                  auipc        t5, 12208
                  srl          s5, s3, a6
983:              sub          s8, s0, a0
                  ori          tp, s5, 1726
                  bgeu         t1, s4, 1000f
                  bltu         s0, a7, 1003f
                  sub          a2, s5, ra
                  andi         a3, t1, -1252
                  srai         a1, zero, 30
                  xori         a5, a7, 1444
                  slti         a1, s0, 1721
                  xori         s6, s9, -561
                  or           s9, t4, s5
                  sll          a6, s11, tp
                  xor          s0, a6, s10
                  srai         s9, s0, 16
                  sll          t6, t5, zero
                  add          t5, tp, a3
                  bltu         t3, gp, 1017f
1000:             blt          a0, s0, 1015f
                  ori          s4, t5, 377
                  andi         zero, s8, 1539
1003:             bge          zero, s4, 1018f
                  slt          t5, a7, s7
                  srli         s6, s3, 26
                  slli         t6, a0, 31
                  ori          a4, s6, 693
                  srai         s9, t6, 22
                  bne          a1, a6, 1011f
                  bltu         t2, s3, 1016f
1011:             sll          t3, t4, a6
                  slli         t4, a4, 5
                  slli         a7, s7, 4
                  andi         s0, a7, 239
1015:             bne          s10, s10, 1020f
                  la           a5, region_0+702 #start riscv_load_store_rand_instr_stream_15
                  auipc        a2, 212619
                  and          t6, s9, a6
                  xori         t3, gp, 1848
                  lb           s3, 7(a5)
                  sltu         a0, a2, s6
                  lbu          s2, -5(a5)
                  sb           a4, 2(a5)
                  xor          s10, tp, t3
                  srai         gp, t5, 22
                  lhu          s2, 12(a5)
                  xor          t1, gp, s7
                  sb           s2, -3(a5)
                  sb           a4, 3(a5)
                  auipc        a7, 172030
                  srl          s8, zero, a0
                  sw           s5, -10(a5)
                  lb           s5, -4(a5)
                  addi         t4, a2, 1684
                  sb           s1, -7(a5)
                  sb           s6, -9(a5)
                  lh           s5, 16(a5)
                  andi         t5, a1, -1205
                  srli         s11, a5, 24
                  xori         s0, s8, 573
                  sltiu        s5, t3, -881
                  xori         t3, zero, -1042
                  lb           t1, 11(a5)
                  lb           s11, 13(a5)
                  xori         a3, t4, 1426
                  slli         tp, t3, 10
                  sll          tp, s9, tp
                  srl          a2, s11, a6
                  lbu          a4, -16(a5)
                  sltiu        a3, s1, 548
                  sra          a0, gp, a1
                  sh           s6, -12(a5)
                  sb           zero, -8(a5)
                  sb           t1, 1(a5)
                  lb           s4, -1(a5)
                  lh           a6, 2(a5) #end riscv_load_store_rand_instr_stream_15
1016:             sltu         s0, sp, t3
1017:             sub          s1, a6, s1
1018:             slti         t6, s5, 1066
                  ori          s11, s4, 850
1020:             srl          s9, s1, s9
                  ori          s3, a2, -290
                  and          t2, s3, ra
                  bltu         s10, t1, 1025f
                  sub          zero, s4, gp
1025:             or           s1, a7, a7
                  slti         a2, t1, 582
                  blt          s0, a3, 1036f
                  and          s0, ra, s6
                  blt          a4, gp, 1032f
                  and          a6, s5, t6
                  bltu         zero, s7, 1038f
1032:             andi         t6, tp, 199
                  bge          a1, a4, 1050f
                  bgeu         t5, a2, 1038f
                  or           a4, s0, tp
1036:             lui          a1, 124726
                  bltu         t2, tp, 1043f
1038:             bgeu         gp, s2, 1047f
                  add          s4, s4, s3
                  sltiu        t3, s9, -289
                  slli         t0, tp, 29
                  bgeu         a1, t6, 1054f
1043:             bge          a1, a7, 1061f
                  sltiu        t4, s1, -1206
                  xori         t6, gp, 26
                  ori          s1, t4, -2042
1047:             bge          a6, a0, 1062f
                  blt          t1, t4, 1056f
                  lui          t4, 686259
1050:             srai         s5, a4, 14
                  bge          s2, a6, 1062f
                  slti         s9, s7, -1743
                  and          s9, t1, s5
1054:             slli         s3, t0, 16
                  addi         s5, a5, -1913
1056:             bne          s9, s3, 1070f
                  add          s3, s1, sp
                  auipc        gp, 648444
                  sra          a0, s5, s2
                  sra          s9, t4, s7
1061:             bne          zero, t3, 1072f
1062:             sll          gp, t6, t4
                  ori          s9, s1, -681
                  add          a6, s11, t6
                  slti         a7, a2, -194
                  lui          zero, 702859
                  auipc        s2, 542956
                  beq          t6, a5, 1071f
                  and          a1, s6, s7
1070:             sltu         s4, a5, s8
1071:             bgeu         a2, s1, 1074f
1072:             srli         zero, a0, 26
                  nop
1074:             xori         s4, s10, 1780
                  andi         s1, s7, 359
                  or           a6, s2, s8
                  add          s11, s0, ra
                  add          a6, t4, a7
                  srl          s10, t5, t0
                  bne          a3, tp, 1094f
                  sub          s5, s8, s5
                  bltu         a5, s6, 1088f
                  srli         t1, s7, 15
                  xor          tp, s6, a7
                  addi         t3, a3, -1962
                  auipc        s0, 269134
                  srli         a4, t3, 8
1088:             add          s1, s5, s9
                  beq          a7, tp, 1109f
                  blt          t4, gp, 1093f
                  sra          s9, s1, a0
                  srl          s1, a0, t3
1093:             or           a6, t3, t5
1094:             blt          s6, a2, 1106f
                  add          a4, s0, s6
                  srl          t3, a5, t4
                  add          s4, t5, s5
                  srai         s10, s2, 12
                  blt          t4, t6, 1103f
                  auipc        t6, 451375
                  bne          s2, s7, 1111f
                  bltu         s5, s4, 1115f
1103:             bge          a5, t0, 1111f
                  ori          t5, a5, 334
                  sll          t0, a0, s0
1106:             srai         a0, t3, 26
                  sltiu        a2, s8, -1220
                  slli         a5, s6, 21
1109:             andi         a3, a2, 935
                  sra          tp, s6, t0
1111:             add          zero, s1, zero
                  xori         s5, t6, 662
                  slti         a0, a6, -872
                  srli         gp, s2, 28
1115:             ori          t5, s4, -1759
                  slli         a0, s8, 11
                  sltiu        a5, s9, -1356
                  lui          t1, 59305
                  xor          s2, ra, a7
                  add          t0, a7, t0
                  bgeu         t0, a4, 1125f
                  xor          tp, t1, s10
                  lui          a3, 522291
                  andi         a6, s11, -1766
1125:             auipc        t5, 83346
                  addi         gp, a1, -874
                  sltiu        zero, s8, 1569
                  nop
                  bne          s2, a0, 1132f
                  sll          t3, a0, a6
                  add          s9, s3, a6
1132:             slli         t4, a6, 14
                  and          a6, t6, t3
                  slt          t3, a3, a6
                  andi         tp, s3, 1926
                  addi         a4, a5, -1729
                  sltu         s4, s10, gp
                  auipc        a0, 374938
                  xor          gp, a0, s11
                  nop
                  slt          t6, t0, gp
                  slt          s2, tp, t1
                  sltiu        tp, gp, -1082
                  bge          s8, s6, 1162f
                  lui          s10, 662553
                  addi         s10, s3, 425
                  slti         s1, t5, -1293
                  or           a2, s0, a0
                  bgeu         a4, gp, 1161f
                  sltu         s8, a0, t5
                  bltu         gp, zero, 1157f
                  slt          gp, t2, sp
                  bge          a3, sp, 1159f
                  la           s2, region_0+1563 #start riscv_load_store_rand_instr_stream_0
                  lw           a3, -11(s2)
                  sra          s8, t0, gp
                  andi         s0, a1, 490
                  xor          a6, t5, s0
                  srli         zero, tp, 11
                  sltu         t2, s0, s11
                  lb           a2, -8(s2)
                  auipc        a2, 899171
                  lb           s0, -3(s2)
                  sltiu        a4, t1, 333
                  sra          s0, t2, t0
                  or           a3, s5, a5
                  sb           a7, -5(s2)
                  lbu          a1, -16(s2)
                  lui          s4, 520136
                  lw           t4, -15(s2)
                  sra          t4, s3, s7
                  nop
                  lbu          t5, 10(s2)
                  ori          s8, t2, -114
                  slt          s3, a3, s3
                  slti         t1, s5, -631
                  and          t4, tp, s0
                  and          a3, s7, s10
                  lbu          t5, -2(s2)
                  addi         a6, t4, -1124
                  srli         a1, a0, 28
                  lbu          s11, 9(s2)
                  slli         zero, s6, 14
                  srli         t3, s6, 22
                  sub          t3, a0, t6
                  xori         s6, s7, 900
                  slti         a6, t2, -1677
                  lbu          a7, -16(s2)
                  sh           a4, -1(s2)
                  xori         a4, ra, 1872
                  slt          t6, a0, s5
                  sub          a4, ra, s2
                  add          a1, s0, t1
                  lbu          a4, -13(s2) #end riscv_load_store_rand_instr_stream_0
                  bne          a1, s0, 1157f
                  auipc        a1, 1007149
                  nop
1157:             ori          a6, t5, -169
                  xor          s10, a3, sp
1159:             andi         s4, t1, -336
                  srl          a0, t0, a2
1161:             srl          a3, t6, t5
1162:             andi         s3, s8, 887
                  slt          s5, zero, zero
                  bne          tp, a5, 1175f
                  srl          t4, s4, t6
                  sra          a2, t4, s11
                  slli         zero, zero, 20
                  bgeu         t1, t1, 1179f
                  bgeu         s10, a4, 1183f
                  beq          s9, zero, 1185f
                  sra          gp, a5, gp
                  add          s2, s2, gp
                  add          a7, t6, s3
                  blt          s3, s10, 1189f
1175:             addi         a0, t4, 1169
                  blt          s6, tp, 1183f
                  sub          t3, t6, ra
                  addi         gp, t5, -947
1179:             nop
                  sra          a0, a6, a0
                  slti         s8, a2, 1689
                  sll          t6, a5, a3
1183:             auipc        t1, 676890
                  slti         s2, s0, -1682
1185:             srl          a5, a5, t6
                  bltu         a3, s8, 1206f
                  xor          s6, t0, s1
                  slti         s9, s6, 174
1189:             or           s3, s7, s0
                  or           a7, t4, a3
                  bgeu         ra, s11, 1194f
                  and          s6, a3, a4
                  bltu         sp, tp, 1195f
1194:             lui          s9, 977200
1195:             sltiu        t2, t1, -3
                  sra          t4, a5, a3
                  bgeu         a0, a4, 1209f
                  nop
                  srli         s5, a3, 1
                  and          a0, s6, s3
                  sll          t3, t0, a0
                  bne          t5, sp, 1207f
                  and          t2, t3, zero
                  lui          a5, 457992
                  bltu         t1, gp, 1208f
1206:             bltu         s3, s11, 1220f
1207:             slt          gp, a7, tp
1208:             lui          a5, 295738
1209:             bge          gp, a3, 1211f
                  bne          s10, s8, 1216f
1211:             or           s11, a3, t5
                  bltu         s1, s9, 1229f
                  bge          s10, t4, 1222f
                  ori          t1, s5, -880
                  sll          s8, ra, s2
1216:             slt          s9, a7, ra
                  slli         t1, s3, 31
                  auipc        zero, 298218
                  sltiu        s11, s3, 1888
1220:             add          a5, s9, s1
                  slt          t4, a2, s2
1222:             ori          tp, s0, 877
                  sub          t2, t4, a3
                  sll          t0, t6, a1
                  slti         t2, ra, -1960
                  srl          s9, s3, tp
                  blt          s5, sp, 1242f
                  slli         t6, s1, 18
1229:             and          zero, sp, s7
                  xor          s2, s8, a6
                  blt          a0, s5, 1241f
                  sltiu        s5, t1, 1605
                  bgeu         ra, t5, 1242f
                  bge          s3, sp, 1247f
                  add          s9, gp, zero
                  blt          s2, t3, 1240f
                  andi         t3, s3, -1283
                  xor          s10, s1, s0
                  sra          t2, s7, t4
1240:             srl          s10, a2, s3
1241:             beq          a0, s3, 1252f
1242:             bge          a7, t2, 1248f
                  andi         t1, s2, 1578
                  beq          ra, s7, 1259f
                  blt          s7, gp, 1256f
                  slli         a3, a7, 5
1247:             nop
1248:             lui          t3, 1038453
                  bne          a1, t6, 1256f
                  sra          a7, s2, s2
                  sltiu        a1, a2, 283
1252:             blt          t5, s10, 1257f
                  xori         t1, s3, -1025
                  xor          tp, t4, t0
                  andi         a5, a5, 1013
1256:             sltu         s11, a4, t0
1257:             nop
                  or           t6, a2, a7
1259:             slt          t5, t4, a1
                  bne          a5, a4, 1264f
                  srai         s11, s4, 5
                  sra          s9, s9, a7
                  srli         t4, s3, 15
1264:             slti         t2, ra, -1616
                  xori         a2, a0, 679
                  nop
                  bge          ra, t2, 1279f
                  add          gp, zero, s2
                  sra          s6, s0, a7
                  slli         s3, ra, 21
                  bgeu         t3, t1, 1291f
                  add          s2, s11, sp
                  andi         s4, t5, -11
                  sltiu        s8, s1, -198
                  bne          t2, t6, 1290f
                  add          a2, a5, t1
                  bge          t2, s2, 1283f
                  blt          a0, a1, 1292f
1279:             beq          a0, s0, 1297f
                  srl          s6, a4, s5
                  nop
                  or           gp, a1, t5
1283:             slti         a5, s4, 1298
                  sll          tp, t5, s4
                  sltu         a0, a7, tp
                  slli         a0, s11, 19
                  or           a6, a0, a0
                  bgeu         ra, sp, 1305f
                  beq          s10, s10, 1295f
1290:             slti         a0, a4, 1822
1291:             sltu         s10, zero, ra
1292:             bge          a4, s3, 1304f
                  lui          a1, 113768
                  srli         s0, a4, 13
1295:             bgeu         t5, t6, 1304f
                  srai         s4, t6, 6
1297:             and          s1, s7, ra
                  srli         s6, a0, 13
                  sltiu        zero, gp, -775
                  slli         s9, zero, 22
                  bltu         sp, a4, 1314f
                  lui          t2, 738266
                  auipc        t3, 366534
1304:             bltu         a4, t5, 1313f
1305:             sltiu        tp, t4, -1359
                  sll          s6, t5, s3
                  bltu         a0, a0, 1322f
                  srli         a0, a6, 25
                  add          t3, s4, s0
                  slt          s11, s2, s6
                  beq          s4, a5, 1314f
                  srli         a4, t2, 1
1313:             blt          s0, tp, 1316f
1314:             or           s1, s4, t4
                  add          a6, s11, t4
1316:             sub          gp, a1, t4
                  auipc        s3, 437861
                  slti         s11, s8, 159
                  sll          s10, a2, zero
                  beq          a4, s8, 1322f
                  lui          a3, 19454
1322:             sra          s3, tp, zero
                  slt          t3, t2, s1
                  srai         s1, a4, 20
                  ori          a7, s11, -512
                  slt          s1, s11, t1
                  xori         a2, s2, -710
                  sll          s10, s11, zero
                  sltiu        t1, gp, 673
                  or           a3, s1, s1
                  bgeu         s6, sp, 1334f
                  srl          s8, tp, s8
                  slli         t2, t2, 29
1334:             bge          sp, t5, 1338f
                  srl          t2, ra, a2
                  blt          sp, a2, 1339f
                  ori          t5, t1, -584
1338:             srl          gp, ra, s7
1339:             xori         a0, t3, -1831
                  auipc        s3, 176292
                  sltiu        s5, zero, -336
                  slli         t5, a1, 17
                  slti         t0, s8, 1209
                  sra          a7, ra, s5
                  bltu         gp, t6, 1347f
                  blt          s0, t5, 1356f
1347:             andi         s0, s10, 554
                  blt          s1, s0, 1362f
                  nop
                  sub          tp, s7, a5
                  bgeu         a2, t5, 1359f
                  sltu         a5, t1, s7
                  slli         s10, s11, 23
                  blt          t1, s5, 1360f
                  add          t6, t4, s0
1356:             andi         a7, a5, -240
                  sub          a7, s7, tp
                  sll          s5, t2, t4
1359:             xori         t5, a6, -1855
1360:             sra          a1, gp, t5
                  beq          s8, a1, 1376f
1362:             or           zero, a5, a5
                  add          t4, t1, tp
                  slt          a2, s3, s11
                  beq          s6, a0, 1377f
                  srai         t6, gp, 27
                  bge          s5, t5, 1376f
                  sll          t6, s11, gp
                  srai         s2, t0, 0
                  xor          s0, a3, a7
                  nop
                  slli         tp, a4, 8
                  sltiu        s2, a4, 888
                  slt          a4, t1, tp
                  xor          s0, a5, t1
1376:             andi         s2, a1, 848
1377:             bgeu         ra, s10, 1392f
                  slti         s8, a0, -1176
                  slli         s8, a5, 31
                  addi         s2, s3, 1823
                  or           s2, gp, a7
                  sub          t6, gp, t3
                  blt          s6, zero, 1401f
                  bne          a1, a2, 1386f
                  ori          s4, sp, 378
1386:             blt          t5, a3, 1398f
                  add          t4, s10, s10
                  bne          s1, a5, 1394f
                  and          s3, sp, s4
                  nop
                  bne          s5, s9, 1400f
1392:             slt          tp, s3, sp
                  and          zero, s11, a6
1394:             andi         t6, a5, -772
                  srl          a7, tp, t0
                  sltiu        a7, s7, -1276
                  auipc        t1, 115554
1398:             nop
                  srai         a4, s5, 8
1400:             bltu         s9, a7, 1403f
1401:             blt          a2, s2, 1412f
                  xori         a3, t5, -377
1403:             nop
                  srl          s0, s9, s10
                  add          a2, s11, a7
                  auipc        a4, 135774
                  andi         t3, s5, -1565
                  blt          a4, sp, 1423f
                  bgeu         t1, s8, 1413f
                  sltiu        s11, a1, -252
                  bltu         s7, s10, 1413f
1412:             bltu         a5, a1, 1416f
1413:             slti         t3, a0, 512
                  sltiu        s10, ra, 1108
                  addi         t5, a1, 1207
1416:             auipc        s8, 649643
                  addi         a0, t4, -1694
                  bltu         gp, sp, 1426f
                  sra          a6, a5, s1
                  andi         tp, t4, -1619
                  auipc        a0, 651377
                  blt          tp, s7, 1435f
1423:             slli         a7, s10, 28
                  ori          a6, s2, -680
                  bgeu         sp, a7, 1442f
1426:             nop
                  sub          s2, gp, a7
                  sltiu        a2, ra, 1556
                  beq          t3, a3, 1432f
                  add          a6, a7, t1
                  srl          t4, a3, t0
1432:             sub          s2, t6, s0
                  srl          gp, zero, s0
                  sra          t3, gp, t5
1435:             bltu         s10, a1, 1455f
                  beq          s9, s8, 1450f
                  nop
                  sltiu        s2, a4, 1645
                  slti         a2, s8, -745
                  sltu         s11, zero, s10
                  andi         s3, zero, -9
1442:             auipc        zero, 428315
                  add          tp, tp, a1
                  srl          s1, a4, a6
                  ori          a7, a3, 1229
                  sltu         a4, a4, tp
                  slt          t3, s6, sp
                  blt          s1, zero, 1462f
                  nop
1450:             slti         gp, a5, 1975
                  srli         s0, t1, 8
                  nop
                  sltiu        a3, a1, 2002
                  sll          s0, a1, a4
1455:             srli         a4, t2, 9
                  sltu         gp, t5, s9
                  slli         t6, t4, 5
                  andi         s5, s1, 1859
                  add          t4, a4, s6
                  sub          s8, s11, zero
                  sub          s0, t0, t2
1462:             lui          a2, 438342
                  auipc        zero, 49070
                  bne          a1, a6, 1475f
                  auipc        t0, 96228
                  add          s1, s4, a0
                  srai         a7, s5, 14
                  andi         s10, s9, -1633
                  ori          t0, s0, 1930
                  or           s8, s5, a5
                  bgeu         t3, zero, 1481f
                  or           t2, t4, ra
                  sub          s8, s5, ra
                  and          t0, s8, s6
1475:             blt          s4, a5, 1478f
                  slt          a5, t1, s5
                  bgeu         ra, gp, 1484f
1478:             blt          t4, s2, 1483f
                  bltu         s11, a6, 1482f
                  slt          s9, s3, s11
1481:             xor          s0, s10, s8
1482:             bge          s5, s3, 1488f
1483:             slli         gp, s9, 18
1484:             srl          gp, a5, s1
                  bge          t5, s4, 1505f
                  sltiu        t6, a7, -1183
                  sll          a7, s6, s10
1488:             ori          zero, t4, 1606
                  auipc        s11, 164615
                  sub          a1, a4, s5
                  and          a7, s10, a7
                  auipc        a2, 402438
                  bgeu         s6, t3, 1505f
                  slli         a2, ra, 25
                  or           gp, a2, ra
                  sra          t2, a5, s7
                  xori         t5, t3, -415
                  slt          a5, t3, t6
                  srl          t0, s3, a7
                  bge          a1, s1, 1505f
                  bgeu         s1, s0, 1512f
                  bge          s11, t6, 1520f
                  andi         s2, t2, -1784
                  slli         t3, a6, 21
1505:             sltiu        s6, zero, -1355
                  bne          a4, s3, 1509f
                  blt          s8, zero, 1522f
                  andi         a7, s7, -192
1509:             and          s4, s7, s2
                  and          s10, s6, t0
                  slli         s3, a2, 8
1512:             sltiu        s11, a6, 1140
                  srl          s2, a6, t1
                  and          s10, t5, gp
                  sltu         s3, sp, s5
                  auipc        s2, 789923
                  sltu         gp, t3, t6
                  auipc        a7, 334186
                  sub          a7, zero, t0
1520:             and          s6, s9, t1
                  auipc        s9, 431469
1522:             or           s3, a3, t0
                  bltu         s1, s2, 1536f
                  lui          a7, 962764
                  sra          a7, t3, s4
                  xori         s9, a3, -432
                  sltiu        zero, s9, 997
                  lui          s2, 997337
                  xor          s11, a1, t2
                  sub          s2, a0, t2
                  beq          s3, s2, 1548f
                  ori          t4, s7, -673
                  blt          a4, sp, 1537f
                  slli         t1, t2, 17
                  blt          s11, sp, 1541f
1536:             addi         s1, t4, 757
1537:             srli         a4, a4, 7
                  slli         s5, a1, 31
                  auipc        zero, 720129
                  slli         a7, s5, 11
1541:             slti         tp, t4, 452
                  and          s8, t1, t6
                  slli         zero, t0, 12
                  addi         t1, a4, -74
                  sub          s4, s3, a1
                  ori          t4, s4, 1763
                  sltiu        t2, a6, 2036
1548:             addi         t1, s2, 1697
                  slti         tp, s3, 85
                  bltu         t5, s8, 1562f
                  xor          s9, sp, s9
                  sltiu        s8, t6, -1266
                  nop
                  slli         s0, s11, 18
                  and          s6, t3, t3
                  add          a6, s2, s2
                  slli         t6, tp, 5
                  slli         t2, t4, 16
                  lui          a5, 221456
                  sltu         a0, s3, s5
                  sltu         s6, sp, t6
1562:             beq          t0, t0, 1577f
                  xori         s3, s10, 963
                  bltu         gp, ra, 1567f
                  sll          a5, sp, t5
                  srai         zero, s5, 17
1567:             lui          gp, 904092
                  slti         a7, s0, 1541
                  slt          s10, a3, zero
                  sub          a3, s8, a5
                  or           zero, a5, s6
                  lui          s0, 315322
                  srl          a7, gp, s3
                  slli         a1, t3, 4
                  or           s3, s9, s10
                  nop
1577:             sltiu        s3, a1, -1430
                  xori         t6, t3, 1545
                  slt          s9, s7, s10
                  sra          a7, t5, t3
                  slt          a0, s1, s11
                  bgeu         s11, a7, 1590f
                  auipc        s11, 1004565
                  or           tp, a2, t0
                  bgeu         gp, s11, 1588f
                  sra          t3, s11, a1
                  auipc        t1, 958355
1588:             add          s1, a3, a7
                  nop
1590:             andi         t2, a2, -1688
                  addi         t2, a5, -751
                  lui          a6, 234505
                  ori          t4, s8, 1413
                  bge          t1, s11, 1597f
                  and          s1, s9, s2
                  nop
1597:             slli         zero, s5, 14
                  srl          s2, s7, a2
                  addi         s5, t0, -1723
                  bge          t1, t2, 1614f
                  sltu         s11, t0, tp
                  lui          s4, 671590
                  srl          a6, a4, t3
                  blt          a4, a5, 1614f
                  or           t2, t2, s4
                  srli         t3, t6, 17
                  and          s3, s8, s1
                  srai         s9, t1, 4
                  sll          a5, a6, s7
                  sra          gp, a3, zero
                  blt          t2, a0, 1620f
                  sll          t4, s6, s6
                  nop
1614:             xor          t3, sp, a5
                  auipc        t0, 135758
                  beq          a7, a6, 1618f
                  slli         t2, zero, 4
1618:             blt          t4, s5, 1627f
                  srl          s1, s9, t3
1620:             addi         a0, t3, -1789
                  beq          s10, t6, 1632f
                  sll          s11, t5, zero
                  lui          a3, 111701
                  and          s0, sp, s9
                  slli         s11, zero, 28
                  bge          s7, a2, 1641f
1627:             sub          a6, a5, s0
                  bge          t1, s8, 1635f
                  blt          ra, a2, 1631f
                  and          s2, s3, a6
1631:             blt          s4, t1, 1635f
1632:             bltu         a1, gp, 1638f
                  srai         t3, gp, 19
                  and          zero, zero, sp
1635:             andi         s4, a1, -563
                  bne          t4, ra, 1642f
                  sltu         gp, a6, t6
1638:             srl          s0, sp, t5
                  sll          s10, tp, s6
                  slt          s3, a7, s8
1641:             slli         a2, t2, 17
1642:             auipc        a7, 422285
                  srli         s1, a1, 11
                  slti         t2, t1, 799
                  sltiu        s1, s3, -31
                  sll          s5, a1, sp
                  blt          s0, s4, 1661f
                  beq          t2, t1, 1668f
                  and          a2, a2, a2
                  srai         s1, ra, 8
                  srl          s8, zero, t3
                  slli         t5, tp, 31
                  beq          s6, t1, 1655f
                  srli         a0, s0, 26
1655:             sltiu        zero, a3, -1937
                  sll          gp, s1, a0
                  xor          a5, a5, t6
                  srl          a6, s2, s8
                  sll          s0, a4, s10
                  slli         s10, t2, 11
1661:             blt          gp, a7, 1665f
                  ori          a3, s9, -938
                  andi         a3, s6, -1825
                  addi         t5, t1, -578
1665:             sltiu        t2, s10, -385
                  ori          a7, s2, -1747
                  slli         a2, s11, 16
1668:             sra          s1, a6, s10
                  srl          a7, tp, t5
                  bge          t5, t4, 1675f
                  and          s3, s8, a0
                  ori          zero, s8, 622
                  blt          s11, t2, 1684f
                  srli         s9, t0, 19
1675:             bltu         t5, a1, 1681f
                  sll          tp, s5, s1
                  andi         zero, a0, -351
                  sltiu        a6, t5, -1713
                  and          zero, s1, a2
                  srai         s2, s9, 17
1681:             sub          gp, t5, s9
                  sltu         gp, s2, a7
                  bltu         zero, t0, 1690f
1684:             lui          zero, 401811
                  slli         t3, a2, 9
                  xor          tp, sp, t6
                  blt          t4, s7, 1702f
                  slti         t1, a5, 303
                  slti         tp, sp, 1355
1690:             sub          tp, s8, s9
                  lui          s3, 755560
                  sltu         t2, s8, s9
                  slt          a6, t0, s6
                  xor          s4, s9, s6
                  sll          s2, t0, s8
                  sub          a0, s10, sp
                  srl          gp, s8, a7
                  ori          s1, s4, 208
                  sltu         s1, t1, zero
                  lui          t3, 356343
                  addi         s1, gp, -19
1702:             xori         a3, t2, -1965
                  slt          s10, t5, sp
                  sra          s2, s6, s1
                  sll          t1, s9, s8
                  beq          a2, a5, 1715f
                  lui          t0, 485330
                  xor          gp, s11, t5
                  sra          a0, a1, gp
                  slt          zero, s2, a0
                  beq          sp, s10, 1723f
                  bgeu         s4, a7, 1715f
                  addi         t2, t2, -487
                  addi         gp, ra, -1624
1715:             addi         s9, sp, 282
                  sub          a7, s7, a0
                  sltu         a1, s3, a6
                  srli         t3, s4, 21
                  blt          a5, a5, 1728f
                  sra          t6, s1, tp
                  blt          a4, t4, 1724f
                  auipc        s2, 224063
1723:             sra          s6, s5, a3
1724:             blt          a0, t0, 1726f
                  and          s8, s10, t1
1726:             sltu         t3, s9, s4
                  slt          a5, t4, sp
1728:             and          s4, a3, s3
                  or           s0, s11, t1
                  slti         s5, s5, 1077
                  sub          a0, a0, s4
                  ori          s5, s7, -264
                  bge          s8, s4, 1745f
                  or           tp, ra, t3
                  lui          s3, 69075
                  slli         a1, t1, 27
                  sub          s4, a0, t2
                  bgeu         a2, s11, 1752f
                  xori         s9, tp, 841
                  srai         t2, s10, 8
                  and          t2, s8, gp
                  beq          a5, sp, 1748f
                  xori         t3, s3, 933
                  or           gp, s1, tp
1745:             bne          s1, s7, 1748f
                  slti         t0, a7, -1632
                  andi         a7, t5, 561
1748:             or           t3, a1, t3
                  bge          t0, a7, 1752f
                  andi         t6, t0, -177
                  ori          a1, s2, -1977
1752:             slti         zero, t3, 1776
                  sra          zero, ra, a0
                  bge          s10, tp, 1764f
                  sltiu        a7, s10, 1675
                  and          a5, a7, s0
                  slli         s10, sp, 23
                  bge          a3, t5, 1762f
                  addi         s10, t3, -342
                  bne          s2, s1, 1778f
                  sub          s10, t2, a5
1762:             andi         s5, s9, 1421
                  add          s2, a3, s2
1764:             slli         s0, a1, 17
                  bgeu         a6, t1, 1780f
                  andi         s9, ra, 455
                  sra          s8, a1, s0
                  sub          t1, zero, a2
                  sltu         a2, s11, a1
                  srai         zero, t0, 29
                  blt          t4, a3, 1786f
                  andi         s3, s4, 971
                  bge          t4, a7, 1786f
                  sra          a7, a1, s10
                  srl          s0, t4, a6
                  addi         zero, a7, -1329
                  bne          a5, s1, 1783f
1778:             addi         zero, t3, 1323
                  blt          a7, a7, 1796f
1780:             sltiu        a2, a5, 1562
                  bltu         s1, t5, 1792f
                  nop
1783:             bge          t5, s9, 1797f
                  addi         zero, s10, 598
                  sltu         s0, s8, s4
1786:             srl          a1, t3, s9
                  srli         a4, t0, 13
                  nop
                  sub          a5, sp, s8
                  srai         s5, s10, 22
                  slti         t1, a0, -1357
1792:             auipc        s4, 377417
                  slli         a3, tp, 24
                  xori         a5, s3, -534
                  bltu         s9, s7, 1803f
1796:             slt          s4, s5, a3
1797:             blt          gp, a5, 1808f
                  bgeu         s8, gp, 1815f
                  sub          s6, s4, a4
                  srli         s5, s7, 8
                  beq          t1, gp, 1807f
                  slt          s5, sp, s10
1803:             sltu         t1, a1, t1
                  andi         s9, s2, 43
                  and          s1, t6, s7
                  xori         t5, s1, -2025
1807:             sltiu        tp, a6, -970
1808:             sra          a6, gp, s3
                  slti         a0, t5, 1769
                  add          s5, s4, s9
                  lui          t0, 193604
                  nop
                  lui          a7, 236147
                  blt          s0, t4, 1825f
1815:             slti         a7, t1, 1989
                  ori          t3, a7, 1241
                  sltiu        s0, sp, -1500
                  and          a2, s10, a3
                  andi         a6, s6, 1308
                  bge          ra, a2, 1826f
                  auipc        s6, 88411
                  slti         t1, a1, 1441
                  bgeu         t2, s7, 1825f
                  slli         s6, ra, 19
1825:             blt          a3, s5, 1843f
1826:             slli         a4, a0, 19
                  sll          t4, tp, s0
                  bgeu         t2, a1, 1840f
                  add          a7, a6, a0
                  srl          a1, t6, a5
                  sub          t1, s3, t0
                  andi         s11, a3, 378
                  sub          s5, s0, a2
                  sub          gp, t3, zero
                  sltiu        t4, a0, 1274
                  addi         t6, tp, 1811
                  sra          s3, s10, s5
                  srai         s0, sp, 31
                  lui          s3, 957252
1840:             and          s6, a0, s2
                  add          gp, a1, gp
                  auipc        t5, 310745
1843:             sltiu        s9, gp, 1147
                  lui          s9, 877254
                  beq          a7, t2, 1854f
                  sltiu        tp, t2, 938
                  srli         t0, a1, 14
                  slli         a7, a2, 0
                  bltu         s8, t0, 1862f
                  srl          t5, t5, gp
                  addi         t1, t5, 949
                  blt          s4, t4, 1867f
                  srl          a0, zero, a7
1854:             sltu         s6, a4, zero
                  lui          t4, 675414
                  srai         a4, t6, 15
                  ori          a5, t0, -23
                  sra          a5, tp, t1
                  beq          gp, t6, 1868f
                  blt          s11, s10, 1863f
                  bltu         sp, t6, 1873f
1862:             sltiu        zero, a2, -1639
1863:             srli         a3, a1, 27
                  bge          a7, a3, 1868f
                  or           s4, t3, zero
                  bne          t2, tp, 1880f
1867:             andi         t6, t2, -553
1868:             add          a6, t1, t2
                  bgeu         s2, a2, 1875f
                  bltu         gp, ra, 1873f
                  blt          s0, t4, 1891f
                  beq          a4, t4, 1877f
1873:             slti         a5, sp, -1056
                  slt          t4, t2, t1
1875:             or           t6, t1, s10
                  slli         t2, t2, 3
1877:             or           s0, a4, a7
                  slli         gp, s8, 22
                  add          t4, s9, a3
1880:             auipc        s8, 861820
                  bgeu         a4, s7, 1889f
                  beq          t4, t0, 1897f
                  nop
                  and          t0, s10, s10
                  sll          a6, tp, t5
                  beq          s9, ra, 1901f
                  sltiu        a5, s6, -283
                  and          t5, t5, s0
1889:             srai         s8, s10, 24
                  sub          a3, s1, s6
1891:             sltu         t2, gp, s3
                  bge          t3, sp, 1894f
                  sltiu        a6, t2, 165
1894:             xori         a3, sp, 424
                  blt          s8, sp, 1898f
                  and          s11, s7, s6
1897:             add          zero, t2, t3
1898:             slti         t1, t3, 1664
                  beq          a1, a4, 1906f
                  add          s4, ra, a1
1901:             blt          s9, tp, 1911f
                  xor          t0, zero, t2
                  or           a6, a7, t0
                  slti         tp, s10, 1654
                  blt          s3, a1, 1909f
1906:             add          s5, t6, t5
                  add          s6, a4, sp
                  xor          t5, s9, a5
1909:             lui          s11, 962513
                  bne          a2, s8, 1913f
1911:             xor          s11, s11, s0
                  sub          a1, a3, a1
1913:             andi         a3, a7, -697
                  auipc        t4, 570313
                  ori          s0, a6, -964
                  auipc        t4, 472818
                  slli         zero, t0, 28
                  andi         s11, a1, 295
                  slli         s11, t3, 1
                  slti         s6, t2, -947
                  bne          t6, s2, 1935f
                  nop
                  and          t3, zero, s5
                  add          s4, zero, zero
                  bltu         t4, s10, 1928f
                  andi         s4, s3, -1328
                  srai         s0, t0, 3
1928:             srai         t5, t3, 6
                  sra          s8, t4, sp
                  sltiu        s5, t4, -1721
                  sltiu        a7, s3, 1183
                  auipc        t3, 307043
                  beq          tp, t2, 1947f
                  srai         t4, s11, 2
1935:             sll          a2, gp, t4
                  add          s0, a2, s11
                  andi         s2, s7, 639
                  sltu         a0, s4, s0
                  blt          t5, s11, 1942f
                  sltu         s5, s11, s8
                  sltiu        s3, tp, -306
1942:             sll          s4, a4, t5
                  blt          s7, s2, 1954f
                  lui          a5, 219090
                  slt          t0, s1, tp
                  sll          a1, a6, a7
1947:             addi         s0, t0, 49
                  slti         s11, s5, -179
                  sll          tp, s1, tp
                  and          t4, t2, a5
                  slti         s1, s0, 211
                  andi         s6, a1, -527
                  xori         t6, a7, 327
1954:             nop
                  bge          a5, a5, 1964f
                  bgeu         t2, s6, 1959f
                  nop
                  sltiu        s8, a4, -1478
1959:             sll          a1, s2, t3
                  xor          s6, s10, a3
                  lui          t3, 746914
                  bltu         s10, a5, 1979f
                  nop
1964:             xor          s2, a4, s11
                  addi         t3, s3, 786
                  srli         t0, s7, 21
                  ori          a4, ra, -1665
                  xor          t5, t5, a1
                  andi         t6, t2, -86
                  sub          s11, a4, a6
                  addi         s8, s5, -1709
                  add          s0, s5, a5
                  bltu         s2, s8, 1975f
                  sra          s1, s11, tp
1975:             bne          s6, t6, 1977f
                  andi         s3, ra, 537
1977:             srai         a5, zero, 23
                  slli         s10, t2, 5
1979:             bge          s2, a0, 1986f
                  sra          s9, t5, a0
                  bne          s8, t6, 1986f
                  lui          a0, 301617
                  andi         t2, t4, -1727
                  bgeu         a5, a3, 1988f
                  auipc        t1, 843745
1986:             or           tp, s3, t4
                  beq          t6, t1, 1993f
1988:             bgeu         s10, a7, 1998f
                  auipc        s4, 64514
                  srli         s9, s4, 15
                  slli         s8, ra, 30
                  xori         s5, t1, -1181
1993:             sltiu        t6, t4, 1659
                  andi         a3, tp, -422
                  srl          t6, a4, a3
                  bgeu         t2, t2, 1999f
                  sltiu        tp, s8, 1871
1998:             bltu         a6, s5, 2013f
1999:             srli         s11, t6, 26
                  slt          a4, a5, s5
                  slt          s11, a7, a4
                  ori          a5, a0, -1157
                  and          s6, s2, a2
                  bne          gp, s11, 2012f
                  sll          s6, s2, t5
                  or           t4, s8, s1
                  auipc        s10, 256862
                  addi         a6, s7, 1592
                  sltiu        s2, s8, -536
                  add          a2, t2, t3
                  sltu         t3, t6, a5
2012:             sub          t2, t2, t4
2013:             addi         a1, s4, -1779
                  slti         s3, s11, -46
                  add          t0, a4, a6
                  lui          a3, 160152
                  srl          s4, s2, s3
                  bltu         s7, t6, 2024f
                  srli         s4, t3, 21
                  bgeu         s10, tp, 2029f
                  addi         s6, s11, 333
                  srli         a7, ra, 26
                  slli         s1, s3, 6
2024:             bgeu         a6, sp, 2037f
                  slt          s11, a5, a3
                  bge          sp, t1, 2037f
                  blt          s2, s2, 2039f
                  xori         t2, s2, -1882
2029:             bltu         t1, tp, 2043f
                  bge          t4, t4, 2036f
                  nop
                  bltu         a0, t4, 2036f
                  slti         a6, s3, -1273
                  add          a3, zero, s11
                  slt          a1, s3, s3
2036:             xori         t3, a6, 307
2037:             ori          tp, s1, -302
                  bgeu         t3, a6, 2053f
2039:             bgeu         gp, s8, 2059f
                  sra          a0, sp, a0
                  ori          s8, t1, 1418
                  bne          s7, t6, 2057f
2043:             beq          a7, s1, 2055f
                  sltiu        a7, t5, 2038
                  sra          a6, a4, t6
                  auipc        s2, 1003880
                  bge          s2, t4, 2065f
                  srl          a5, s8, gp
                  bne          t0, tp, 2052f
                  sll          zero, s1, t6
                  auipc        t0, 242071
2052:             xori         s5, t3, 278
2053:             srli         tp, s9, 5
                  sub          a6, s2, a2
2055:             srl          a2, s1, s7
                  bgeu         tp, t6, 2069f
2057:             nop
                  beq          sp, s8, 2072f
2059:             sll          a2, tp, gp
                  auipc        t2, 437615
                  sll          zero, ra, t6
                  sll          a4, t3, s8
                  auipc        zero, 710955
                  nop
2065:             slt          s1, s8, s0
                  addi         t1, zero, -1665
                  bne          a6, sp, 2072f
                  and          a3, s7, s10
2069:             andi         s6, a3, -356
                  bgeu         a0, tp, 2080f
                  andi         gp, s7, -1953
2072:             or           s9, a2, a2
                  auipc        t0, 393307
                  ori          t6, t3, -906
                  sub          a5, s5, s8
                  sltiu        s3, a5, -616
                  bne          zero, sp, 2085f
                  slti         a6, s4, -453
                  or           a1, a2, s1
2080:             sub          s0, s1, s0
                  sra          t1, a5, gp
                  srai         s4, s10, 8
                  slli         s8, sp, 22
                  slli         s6, s4, 15
2085:             sub          tp, s4, s5
                  add          t0, s7, s6
                  xori         a7, s3, -390
                  sra          a1, t4, gp
                  slt          t1, s9, s10
                  lui          s8, 73808
                  sub          a7, gp, t3
                  bgeu         s0, tp, 2095f
                  auipc        zero, 976968
                  or           s8, a3, a6
2095:             xori         a0, t5, -1431
                  and          a4, zero, s3
                  andi         t4, tp, 1565
                  ori          s9, a3, -361
                  slt          tp, t6, a2
                  sub          s6, s5, a4
                  slt          t6, gp, tp
                  xori         s5, s4, 1259
                  auipc        s9, 848853
                  slli         tp, a5, 7
                  blt          a1, t5, 2117f
                  srl          s6, a2, s2
                  sub          a5, sp, s1
                  sra          s5, sp, s1
                  xori         s1, a2, 822
                  sll          a2, s11, a5
                  auipc        gp, 637627
                  andi         a3, t0, -1229
                  slli         a5, a1, 31
                  srl          a2, s5, a3
                  srai         s2, t6, 6
                  slti         a2, t6, 29
2117:             xor          s6, ra, sp
                  sltiu        gp, s2, -575
                  or           s9, s6, t4
                  slti         a2, a5, 1640
                  xori         s5, t3, 1340
                  bne          t3, gp, 2131f
                  sll          a5, a6, s5
                  srli         s11, s1, 8
                  andi         a1, s10, 834
                  srai         a7, t0, 9
                  nop
                  andi         a6, s5, -1410
                  blt          t5, t0, 2140f
                  auipc        a6, 234245
2131:             srai         t0, s4, 29
                  sll          s1, a4, s5
                  lui          a5, 1012808
                  lui          t2, 550618
                  ori          a6, s11, -1071
                  add          t4, t3, s1
                  lui          t2, 132752
                  xori         s4, gp, -1759
                  add          s5, a0, t6
2140:             bne          a3, a3, 2151f
                  sltu         s3, t3, s9
                  bgeu         s5, s1, 2159f
                  slli         t2, s7, 17
                  blt          s5, t5, 2147f
                  bne          t0, a5, 2149f
                  sub          s1, a0, t5
2147:             sub          a1, a5, a4
                  ori          a1, gp, 795
2149:             srl          t2, sp, t2
                  slti         a5, a0, 1085
2151:             bgeu         t1, s11, 2157f
                  nop
                  slti         s1, s9, 917
                  srli         s0, s3, 21
                  srli         s2, t6, 24
                  slt          s2, zero, t4
2157:             slt          s4, a1, sp
                  andi         a3, s2, 1494
2159:             beq          tp, a1, 2179f
                  sltu         t5, s7, zero
                  addi         a6, t2, 1560
                  sll          a4, tp, s9
                  beq          s4, s3, 2181f
                  blt          s10, t6, 2170f
                  or           a1, s1, s11
                  sltu         a2, a2, t3
                  sra          s0, a1, t6
                  beq          a6, sp, 2174f
                  add          s9, ra, t4
2170:             and          a5, t2, s1
                  nop
                  or           s2, t5, t6
                  nop
2174:             sub          s11, a1, s5
                  bge          t1, s9, 2187f
                  blt          s1, tp, 2191f
                  slt          a2, s6, s1
                  or           s3, s7, s8
2179:             sll          s2, a6, t5
                  addi         s6, a6, -1767
2181:             srl          t4, tp, t0
                  srl          s6, a1, tp
                  andi         a6, a4, -589
                  or           s5, s4, t4
                  srai         a4, a7, 8
                  sll          t6, t6, s3
2187:             bgeu         t1, a6, 2189f
                  srai         t4, s5, 31
2189:             srl          s4, s11, a0
                  sltu         a0, t3, zero
2191:             bne          s0, a2, 2198f
                  sra          t2, s0, t3
                  sltiu        gp, gp, 118
                  sltiu        t6, t2, 2000
                  slt          a4, s3, ra
                  bgeu         s6, t1, 2211f
                  srl          t4, zero, a1
2198:             blt          a1, s8, 2212f
                  andi         t2, s2, 496
                  slli         s10, tp, 30
                  xor          s2, t0, gp
                  andi         s8, gp, 648
                  bltu         t6, s0, 2212f
                  bgeu         s8, sp, 2207f
                  srl          s2, s7, t4
                  bne          a6, s9, 2210f
2207:             sltu         a1, a5, a3
                  ori          s6, a3, 1076
                  sll          t1, s9, ra
2210:             sll          s11, t6, ra
2211:             bltu         a3, gp, 2213f
2212:             sll          s2, a4, t1
2213:             beq          tp, t4, 2228f
                  srli         a5, a7, 31
                  slli         t5, s9, 4
                  beq          s1, s9, 2218f
                  ori          t5, s4, 352
2218:             slti         t0, t4, -1499
                  andi         a4, t3, -828
                  bge          s9, a1, 2231f
                  sll          a7, t2, a5
                  sltu         s8, zero, s1
                  lui          tp, 827342
                  sub          a3, t1, s3
                  srl          s10, a0, tp
                  sltiu        s6, t2, -1223
                  add          a6, s10, s11
2228:             xor          a1, s5, t5
                  bge          t3, s1, 2232f
                  bne          a1, t1, 2247f
2231:             blt          gp, s3, 2249f
2232:             bge          t0, a7, 2246f
                  slli         t6, s8, 11
                  sltu         s3, a0, a2
                  srli         tp, zero, 3
                  auipc        zero, 238622
                  add          a5, t0, t4
                  sub          s9, tp, gp
                  and          a6, ra, gp
                  add          s9, t2, s3
                  sltiu        tp, tp, 1648
                  ori          a7, t4, -1696
                  sll          s5, t6, a5
                  sltu         a4, a3, a1
                  blt          a7, zero, 2254f
2246:             add          s4, tp, t3
2247:             blt          t0, a1, 2257f
                  add          s11, s7, s5
2249:             or           s1, a6, s10
                  srai         s3, tp, 20
                  slli         s0, ra, 25
                  xori         t2, t4, -1493
                  ori          a4, s8, -920
2254:             sll          s0, a6, a0
                  slli         a3, a5, 4
                  bltu         ra, ra, 2257f
2257:             sltiu        s1, gp, -1084
                  la x1, test_done
                  jalr x0, x1, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            slt          s3, t6, s0
                  sra          gp, a2, a4
                  addi         s7, s7, -60
                  andi         a4, a6, 684
                  srl          t4, a1, s10
                  sw           t1, 4(s7)
                  or           t6, s8, tp
                  la           t6, region_1+1140 #start riscv_load_store_rand_instr_stream_2
                  srl          t4, s0, a6
                  srl          t4, a3, s3
                  sltiu        s8, t0, -1370
                  sb           a5, -33(t6)
                  sll          a5, a4, gp
                  or           tp, t4, zero
                  lhu          t5, 550(t6)
                  nop
                  ori          s8, a6, 1323
                  or           s11, a1, t3
                  sltu         s2, a7, a5
                  lbu          a2, 420(t6)
                  sb           t4, -123(t6)
                  lb           a5, -1049(t6)
                  slti         s0, t0, 551
                  srl          s10, s9, t3
                  lbu          s0, 573(t6)
                  or           s3, t5, a4
                  ori          t4, a0, 716
                  add          a1, ra, t4
                  add          s6, t6, s1
                  srai         s11, a1, 27
                  slti         t3, t0, 1552
                  lb           t4, -992(t6)
                  lb           t3, -375(t6)
                  lb           s1, 208(t6)
                  sltu         s2, a0, s10
                  ori          s8, t6, -919
                  sb           s7, -276(t6) #end riscv_load_store_rand_instr_stream_2
                  la           s6, region_0+1609 #start riscv_load_store_rand_instr_stream_7
                  lhu          s4, 329(s6)
                  lhu          s0, -309(s6)
                  lbu          s10, -782(s6)
                  srai         s1, t4, 1
                  sltiu        s11, a5, 1377
                  slli         t6, t0, 16
                  lw           a3, -105(s6)
                  lbu          s1, -639(s6)
                  lb           tp, -1407(s6)
                  lbu          s3, -586(s6)
                  slti         s5, s5, -526
                  lb           zero, -38(s6)
                  sb           ra, -1156(s6)
                  lui          t0, 819991
                  sb           ra, -1136(s6)
                  lw           t4, 299(s6)
                  lbu          s1, -973(s6)
                  slti         s2, s7, -149
                  sb           s0, -732(s6)
                  lb           s1, 182(s6)
                  slti         s2, s5, 1669
                  lbu          s2, 74(s6)
                  ori          tp, s1, -336
                  lh           s4, -1203(s6)
                  srl          t6, ra, gp
                  nop
                  lh           a5, -1385(s6)
                  lb           s0, -1506(s6) #end riscv_load_store_rand_instr_stream_7
                  la           s6, region_1+453 #start riscv_load_store_rand_instr_stream_5
                  lb           a3, 333(s6)
                  sh           s7, 1419(s6)
                  lb           s11, 820(s6)
                  sh           t3, -435(s6)
                  lb           s4, 12(s6)
                  auipc        s3, 5797
                  sb           a4, 1157(s6)
                  lb           a0, 1321(s6)
                  lbu          a6, 1001(s6)
                  lbu          a4, -247(s6)
                  sb           t1, -422(s6)
                  lb           s0, 1284(s6)
                  add          t6, s3, t1
                  slt          a6, a5, gp
                  slt          t5, tp, zero
                  lhu          t6, 311(s6)
                  andi         a3, a3, 1312
                  slti         s1, t3, -1240
                  lbu          t0, 647(s6)
                  lbu          a7, -378(s6)
                  srai         a2, s6, 1
                  lbu          s3, 608(s6)
                  add          a4, tp, s0
                  sb           a7, 787(s6)
                  xori         s9, s8, 1681
                  lh           s1, 1091(s6)
                  slli         t4, a3, 19
                  lb           s10, 422(s6) #end riscv_load_store_rand_instr_stream_5
                  la           a7, region_1+1203 #start riscv_load_store_rand_instr_stream_4
                  lb           s11, 233(a7)
                  xor          t4, s7, a4
                  sra          a6, t4, s3
                  slti         s3, s6, 92
                  sb           s10, 106(a7)
                  lb           t2, 172(a7)
                  sb           s5, -52(a7)
                  lhu          t1, -177(a7)
                  sb           tp, -146(a7)
                  lh           a4, -111(a7)
                  sw           s6, -7(a7)
                  srl          a5, s5, a3
                  sltu         a4, a4, t2
                  lh           a3, 147(a7)
                  lw           a2, 165(a7)
                  lbu          t2, 60(a7)
                  lbu          tp, 6(a7)
                  xor          s8, s6, s7
                  xor          t1, t1, a6
                  lh           s2, -227(a7)
                  lhu          s9, -89(a7)
                  lb           gp, 170(a7)
                  sh           tp, -233(a7)
                  xori         a2, t3, 771
                  srai         s2, s9, 11
                  slti         s6, a7, -571
                  and          s11, t1, gp
                  slli         tp, a0, 15
                  srai         t0, s11, 12
                  slti         a1, s8, -1949
                  xori         s9, t6, 2029
                  lhu          s1, -161(a7)
                  srai         s2, s5, 18
                  sltiu        t2, t3, 1606
                  lbu          a2, 104(a7)
                  sw           t1, 217(a7)
                  or           t5, s0, s11
                  and          a6, t2, sp
                  srli         t1, t1, 0
                  srl          s8, a6, t6
                  sltiu        gp, t1, -945
                  lhu          a6, -247(a7)
                  nop
                  slt          a1, t6, s4
                  xor          t5, s10, ra
                  add          a2, s4, s3
                  lh           tp, 159(a7)
                  andi         a5, t1, 1823
                  slti         a6, s4, -2044
                  slli         s3, zero, 1
                  lb           zero, -193(a7)
                  sb           s4, -88(a7)
                  sb           t6, -59(a7)
                  lh           s8, -159(a7)
                  slti         s6, a0, -1805
                  sb           s11, -91(a7) #end riscv_load_store_rand_instr_stream_4
                  la           t2, region_1+1664 #start riscv_load_store_rand_instr_stream_11
                  or           a4, a5, a0
                  xori         a4, ra, 679
                  auipc        t5, 19588
                  auipc        s6, 571410
                  lbu          s10, -10(t2)
                  sb           a5, -4(t2)
                  lbu          a0, 1(t2)
                  andi         t1, a7, -406
                  srai         a5, s2, 5
                  srai         a1, s1, 23
                  lh           t4, 0(t2)
                  lbu          s8, 14(t2)
                  xori         a5, t2, 1420
                  xor          t0, s9, a4
                  lh           gp, -6(t2)
                  or           a5, s7, s2
                  lb           s0, 5(t2)
                  ori          t6, a3, 1854
                  sra          s5, a5, s8
                  addi         t0, a1, -1696
                  lh           t3, 6(t2)
                  andi         t1, a4, -743
                  slti         s2, t4, -1681
                  srli         a4, s10, 4
                  lhu          t0, -6(t2)
                  lb           t1, 7(t2)
                  and          a1, sp, t6
                  sh           s6, 10(t2)
                  lhu          s4, -2(t2)
                  lbu          a0, 8(t2)
                  add          t5, s6, tp
                  sll          t6, sp, a3
                  lbu          gp, -7(t2) #end riscv_load_store_rand_instr_stream_11
                  la           s8, region_0+1548 #start riscv_load_store_rand_instr_stream_17
                  sh           s0, 0(s8)
                  lw           tp, -8(s8)
                  sb           ra, -1(s8)
                  sh           s7, 12(s8)
                  sll          t1, s5, zero
                  lbu          t3, 7(s8)
                  lbu          t4, 2(s8)
                  sltu         t0, a3, a1
                  lbu          s2, 3(s8)
                  sb           s10, 3(s8)
                  lb           t0, -6(s8)
                  srai         s5, t1, 31
                  lb           a2, -16(s8)
                  lbu          a7, 7(s8)
                  lbu          a6, 6(s8)
                  ori          s10, t1, -933
                  lui          s0, 157136
                  lbu          t2, 11(s8)
                  auipc        a0, 784290
                  sll          zero, s7, a7
                  lb           a7, 5(s8)
                  sltiu        t1, ra, -1389
                  sb           t3, -14(s8)
                  lbu          zero, -1(s8)
                  xori         s0, t2, -569
                  lbu          t1, -10(s8)
                  sub          s1, a5, zero
                  sw           s3, -4(s8)
                  sub          t5, s4, s4
                  lbu          tp, -14(s8)
                  lb           t4, -7(s8)
                  sb           a2, 3(s8)
                  lbu          s5, -9(s8) #end riscv_load_store_rand_instr_stream_17
                  la           s8, region_1+1304 #start riscv_load_store_rand_instr_stream_10
                  srl          s0, t0, a0
                  lbu          s2, 25(s8)
                  andi         a7, t3, 2046
                  sh           s5, -48(s8)
                  sltiu        s4, t6, -507
                  xor          t4, a3, s5
                  sltiu        tp, t1, -611
                  srli         a5, a5, 24
                  sb           t6, -14(s8)
                  sb           t3, -51(s8)
                  sb           a3, 21(s8)
                  lb           t5, -31(s8)
                  sb           sp, 31(s8)
                  nop
                  lb           a7, -3(s8)
                  lbu          a3, 9(s8)
                  and          t2, s5, a6
                  lbu          s11, -7(s8)
                  lh           s2, 6(s8)
                  lbu          t1, -38(s8)
                  lb           a6, -33(s8)
                  and          t3, t0, s9
                  sh           a0, -40(s8)
                  lbu          t4, 27(s8)
                  lbu          t6, -42(s8)
                  lb           a0, 22(s8)
                  lhu          s1, 32(s8)
                  sb           a0, 47(s8)
                  addi         t4, s8, -9
                  lb           a1, 2(s8)
                  lh           s1, 60(s8)
                  srl          s2, s3, a7
                  lb           a0, -46(s8)
                  lh           t4, -64(s8)
                  lb           s2, 6(s8)
                  lhu          t6, -2(s8)
                  auipc        a6, 260807
                  lb           s3, 47(s8) #end riscv_load_store_rand_instr_stream_10
                  la           s0, region_1+537 #start riscv_load_store_rand_instr_stream_12
                  xori         s1, s6, 1163
                  lbu          a4, 54(s0)
                  auipc        s2, 474437
                  addi         a2, s7, -1251
                  lhu          s10, 37(s0)
                  or           a0, a4, a0
                  lb           a1, 64(s0)
                  lb           a6, -14(s0)
                  sh           s0, -19(s0)
                  sb           t4, -9(s0)
                  sb           t0, 30(s0)
                  ori          a7, a0, 445
                  sb           a6, 50(s0)
                  srli         s6, s11, 20
                  xor          s11, a0, s11
                  ori          a7, a7, 1205
                  auipc        t3, 126682
                  sub          a6, s3, s8
                  xor          s10, t0, a6
                  lbu          gp, -42(s0)
                  lbu          a7, 5(s0)
                  sltiu        s11, s4, 671
                  sb           s5, 44(s0)
                  lbu          s2, 51(s0)
                  or           s10, a6, a1
                  srl          s5, a4, t5
                  srl          s10, s10, a5
                  lbu          gp, 58(s0)
                  sb           t6, 20(s0)
                  auipc        s3, 887776
                  lhu          s3, 61(s0)
                  lhu          s1, 61(s0)
                  lbu          a1, -4(s0)
                  lh           a6, -23(s0)
                  sltu         a5, a0, a5
                  sltu         s3, t0, ra
                  srl          s2, a1, s7
                  sb           s10, 48(s0)
                  srli         t5, a5, 7
                  lb           s6, -3(s0)
                  andi         t1, s1, 594
                  slt          s9, a4, t4
                  auipc        a0, 860644
                  andi         t3, a6, -1831
                  auipc        s9, 105408
                  xori         s1, t6, 602
                  lb           t6, 34(s0)
                  sltiu        t4, t1, -1143
                  sb           s8, -31(s0)
                  lbu          s6, -2(s0)
                  sltiu        a3, t4, -809
                  sb           s6, 33(s0)
                  sh           t0, -33(s0) #end riscv_load_store_rand_instr_stream_12
                  la           t1, region_1+1453 #start riscv_load_store_rand_instr_stream_9
                  and          zero, s8, a7
                  lui          s2, 377903
                  srl          t2, s8, a2
                  slti         s4, t6, -341
                  lbu          a3, 493(t1)
                  lw           a7, 335(t1)
                  lb           s1, 301(t1)
                  lh           a2, -1189(t1)
                  lb           s8, 361(t1)
                  sltiu        a2, s3, -1908
                  xori         t3, s0, -1699
                  slti         s11, t1, 1453
                  slt          zero, t4, s6
                  nop
                  sb           s4, 150(t1)
                  lbu          s11, -847(t1)
                  lb           a4, 532(t1)
                  sll          s5, a3, s0
                  ori          t0, sp, -1897
                  lbu          t0, 356(t1)
                  slt          a6, a6, a6
                  lbu          a2, -210(t1)
                  lh           a5, -175(t1)
                  and          t3, a5, t5
                  sh           a3, 153(t1)
                  sra          s11, t4, a3
                  or           a5, a7, a7
                  nop
                  auipc        a7, 915549
                  xor          t0, s9, s9
                  lb           s6, 546(t1)
                  lui          a3, 305586
                  lb           a1, -1130(t1)
                  andi         t6, zero, 1160
                  sub          t0, t4, gp
                  srl          zero, t6, s10
                  andi         s11, t3, -139
                  lh           s1, -1085(t1)
                  and          s1, a5, t2
                  lbu          a0, 44(t1)
                  add          a6, zero, s5
                  sb           t2, 250(t1)
                  sb           a5, -1384(t1)
                  lh           a3, -913(t1)
                  srl          a4, ra, s4
                  lb           s4, -686(t1) #end riscv_load_store_rand_instr_stream_9
                  la           s0, region_1+1394 #start riscv_load_store_rand_instr_stream_13
                  sltiu        s9, t5, -1852
                  sb           s8, -5(s0)
                  and          t2, zero, t1
                  sub          a5, ra, zero
                  lui          t0, 219719
                  slt          s5, tp, s0
                  nop
                  slt          zero, s8, s8
                  xori         s2, s6, -1388
                  lw           s6, -6(s0)
                  sub          t3, s11, gp
                  lbu          t6, -3(s0)
                  slti         t3, s6, -1343
                  lbu          zero, 1(s0)
                  sb           t2, 5(s0)
                  sll          t0, s8, a5
                  andi         gp, sp, -145
                  sltiu        tp, zero, 1317
                  sb           t6, 16(s0)
                  sll          t0, s2, t0
                  sra          t6, t0, gp
                  sh           a7, 10(s0)
                  sw           t5, 6(s0)
                  lbu          zero, -7(s0)
                  lb           t0, 2(s0)
                  sub          t6, gp, a7
                  sub          t5, sp, t6
                  xori         s4, s6, -660
                  lh           s4, 16(s0)
                  auipc        a0, 894650
                  sw           t1, -14(s0)
                  slti         t6, tp, -380
                  auipc        a6, 536983
                  sub          t0, a5, a6
                  sb           s9, 3(s0) #end riscv_load_store_rand_instr_stream_13
                  la           s1, region_0+143 #start riscv_load_store_rand_instr_stream_18
                  nop
                  srl          s5, a6, a4
                  lhu          s4, 985(s1)
                  lb           s3, -106(s1)
                  sltu         t0, s9, s9
                  sltu         zero, s10, s3
                  sb           t5, 296(s1)
                  sb           s5, 284(s1)
                  lb           s3, 611(s1)
                  add          tp, tp, t5
                  slti         t5, tp, 1980
                  auipc        a0, 950554
                  lb           s11, 1182(s1)
                  add          s8, t4, s2
                  sb           tp, 62(s1)
                  lbu          tp, 758(s1)
                  lbu          a1, 866(s1)
                  auipc        t1, 8132
                  lhu          s5, 821(s1)
                  lbu          s3, 1050(s1)
                  sb           s7, 1192(s1)
                  srai         a5, s7, 0
                  lb           zero, 876(s1)
                  lbu          a7, 1103(s1)
                  sb           s9, 1238(s1)
                  lb           t2, 868(s1)
                  sh           s3, 1603(s1)
                  lb           s3, 1366(s1) #end riscv_load_store_rand_instr_stream_18
                  la           s5, region_1+1293 #start riscv_load_store_rand_instr_stream_0
                  sb           t6, -868(s5)
                  lh           s8, 571(s5)
                  addi         a7, t2, -1893
                  lb           s0, -926(s5)
                  sltiu        a5, t6, -1748
                  lb           t0, 703(s5)
                  lbu          s1, -262(s5)
                  andi         s4, a5, -1869
                  srl          s9, s9, a2
                  or           a1, s5, t4
                  sra          t4, a7, t6
                  sltiu        a5, a7, -1793
                  srl          a0, t4, s11
                  lb           s10, -1021(s5)
                  lb           t3, 117(s5)
                  addi         tp, t5, -956
                  lb           a0, -145(s5)
                  nop
                  slt          s10, s6, s8
                  slt          s9, s10, s4
                  sll          t4, a1, a0
                  srl          a0, t2, t5
                  lbu          zero, 8(s5)
                  sub          s10, s4, s4
                  sb           s4, 577(s5) #end riscv_load_store_rand_instr_stream_0
                  la           t5, region_1+1041 #start riscv_load_store_rand_instr_stream_15
                  sltiu        s8, s8, 1743
                  lb           t0, -198(t5)
                  ori          s11, t0, 2035
                  sb           a4, 184(t5)
                  xori         gp, a0, -1537
                  srai         t2, t6, 4
                  sll          t0, s0, a0
                  ori          gp, s0, 1332
                  auipc        a2, 348540
                  sh           s3, -105(t5)
                  andi         s8, s5, 530
                  or           a6, t1, a7
                  lb           a7, -182(t5)
                  lbu          s11, -103(t5)
                  xori         s3, s5, 1309
                  sll          a1, a1, s9
                  sw           t0, -41(t5)
                  sltiu        s1, t5, -89
                  andi         a3, s9, 1181
                  lui          s3, 621775
                  or           t6, s6, s1
                  slli         a0, a6, 29
                  sb           t4, -12(t5)
                  addi         a6, s0, 719
                  srli         s1, t2, 8
                  lbu          zero, 148(t5)
                  lbu          tp, -74(t5)
                  sra          gp, s11, s2
                  sb           a6, 252(t5)
                  sra          a0, s8, s10
                  xori         t6, a2, 1519
                  sltu         a3, s5, t5
                  xor          a2, s4, s8
                  lb           a1, -36(t5)
                  lbu          s6, 111(t5)
                  lb           a3, -198(t5)
                  sh           t3, -45(t5)
                  lb           s6, -164(t5)
                  lb           zero, 220(t5)
                  nop
                  sb           t1, -156(t5)
                  sub          a4, gp, t0
                  sb           s3, 193(t5)
                  srli         s11, gp, 16
                  sb           zero, 45(t5)
                  lbu          a7, -191(t5)
                  auipc        s9, 933411
                  sw           a7, -89(t5)
                  sra          s2, a5, s2
                  sb           t3, -93(t5) #end riscv_load_store_rand_instr_stream_15
                  la           t3, region_0+1109 #start riscv_load_store_rand_instr_stream_14
                  slti         s6, a6, 1838
                  sub          t1, t3, t4
                  xor          s3, s6, a5
                  sb           t6, 406(t3)
                  or           t5, sp, a4
                  slli         s0, s1, 0
                  srai         tp, t6, 1
                  lb           a0, 78(t3)
                  lb           s8, 428(t3)
                  lbu          t6, 642(t3)
                  lhu          t6, 421(t3)
                  xor          tp, t1, a3
                  sub          s0, s2, s7
                  lw           s9, 195(t3)
                  lbu          t5, 282(t3)
                  slt          zero, gp, a6
                  lhu          t1, 403(t3)
                  andi         t0, t6, -1996
                  sw           tp, -365(t3)
                  lb           t6, 646(t3)
                  lui          s0, 508111
                  sb           a7, 307(t3)
                  andi         tp, s0, -659
                  sh           t1, 119(t3)
                  lb           a7, -207(t3)
                  lw           s8, 423(t3)
                  sh           t5, -1025(t3)
                  sh           t1, 277(t3)
                  sh           s5, 151(t3)
                  sb           s10, -76(t3)
                  lb           s6, -732(t3)
                  sb           a4, 796(t3)
                  and          t2, s4, t1
                  sh           s0, -877(t3)
                  slli         a0, s6, 20
                  sb           s3, -760(t3) #end riscv_load_store_rand_instr_stream_14
                  srai         a6, a3, 28
                  sltu         s1, s5, s1
                  and          a1, s1, s10
                  slt          s3, a2, s0
                  and          s3, s6, s6
                  srai         s8, a0, 25
                  sll          s0, t2, t5
                  bne          s2, t3, 27f
                  add          t6, a5, ra
                  xor          s10, a0, s10
                  bltu         a3, a0, 24f
                  srli         s10, s10, 16
                  sll          s10, a3, a7
                  ori          gp, a0, -1056
                  srli         t0, s5, 5
                  slti         a5, s0, -1109
                  lui          s8, 92521
                  sra          zero, a0, ra
                  xori         zero, s9, -858
                  addi         a6, a7, 1683
                  bne          s7, t1, 35f
                  sub          s0, t5, sp
                  slli         gp, ra, 15
                  sub          a6, s10, a7
24:               sltu         s0, tp, s9
                  ori          t5, a2, 1933
                  bgeu         a4, t4, 30f
27:               bltu         ra, s10, 34f
                  slli         zero, a1, 28
                  xori         t4, s11, 1623
30:               sra          s9, t2, ra
                  srai         s2, a0, 5
                  slti         t1, a7, -1938
                  xori         t2, s0, 1773
34:               nop
35:               srai         a7, ra, 27
                  addi         t0, s4, 971
                  slt          s11, t5, a3
                  ori          s1, t5, 1332
                  slt          gp, a3, a0
                  sll          t4, t4, gp
                  sll          tp, t3, a2
                  bltu         a1, a6, 61f
                  nop
                  sltu         s5, t1, t3
                  sra          s8, s0, s1
                  ori          a3, ra, 949
                  bne          s4, a2, 56f
                  slt          gp, s5, s3
                  bgeu         a4, a2, 50f
50:               slli         a2, t1, 24
                  bne          s3, s0, 65f
                  srai         t6, gp, 18
                  sra          t6, s2, t5
                  slt          a1, t2, zero
                  sra          s2, s4, t5
56:               xori         t0, s10, 918
                  sltu         a1, t2, zero
                  xor          a0, tp, t6
                  bge          sp, s10, 71f
                  xori         t6, t6, 1453
61:               auipc        t1, 166376
                  bne          tp, t4, 82f
                  nop
                  xori         s8, ra, 773
65:               lui          t1, 461146
                  bltu         a3, a6, 81f
                  slli         s5, sp, 26
                  sltiu        s9, s4, -1801
                  sltu         gp, a4, a6
                  srl          s9, s10, a6
71:               bgeu         s9, a4, 76f
                  sll          a0, s11, a4
                  xori         t6, t1, 1978
                  add          t4, s4, s4
                  sltu         t5, t1, t3
76:               ori          a3, gp, -804
                  and          s0, s5, a0
                  srai         a1, a4, 29
                  add          a6, s5, tp
                  or           t6, s8, t1
81:               bgeu         t2, s4, 83f
82:               srl          gp, gp, sp
83:               srli         t6, t6, 29
                  ori          a1, t6, -1955
                  ori          s10, s7, 118
                  lui          tp, 580926
                  bltu         sp, zero, 93f
                  srl          s6, s8, a7
                  lui          s8, 730223
                  la           s9, region_0+70 #start riscv_load_store_rand_instr_stream_1
                  sltu         a6, a0, t3
                  lhu          s11, -54(s9)
                  srli         s10, zero, 0
                  sra          s4, s2, t0
                  addi         a1, tp, 162
                  lh           s2, 54(s9)
                  sltu         gp, s11, t5
                  lh           s10, -54(s9)
                  slt          s3, a7, s2
                  sltiu        a0, s0, -66
                  xori         t0, t4, -1352
                  sb           s3, -48(s9)
                  slli         a3, s9, 28
                  andi         t1, t5, 18
                  sb           s2, -19(s9)
                  sltu         s2, a6, s4
                  sb           s10, -28(s9)
                  lhu          zero, -4(s9)
                  sltiu        s2, a4, 1679
                  sw           s2, 38(s9)
                  sll          s3, s7, t1
                  srai         a7, tp, 19
                  lbu          s10, 11(s9)
                  and          zero, zero, a5
                  srli         a7, s7, 30
                  lb           a7, -49(s9)
                  srl          a0, s7, a6
                  xori         s6, a1, 583
                  lbu          tp, 15(s9)
                  sb           s7, -36(s9)
                  lhu          s5, -60(s9)
                  lh           a5, 48(s9)
                  xor          s3, a2, s5
                  sb           t0, 33(s9)
                  addi         tp, a6, -168
                  lb           a3, 60(s9)
                  nop
                  slt          zero, t5, s8
                  sb           t5, 60(s9)
                  lbu          t0, -8(s9)
                  lhu          t1, 56(s9)
                  sh           a6, 16(s9)
                  xori         a0, sp, 85
                  lbu          s11, -28(s9)
                  sb           t4, -64(s9)
                  lhu          tp, -62(s9)
                  lhu          s5, 64(s9)
                  lbu          s10, -11(s9)
                  sh           s11, -10(s9)
                  sb           s5, -64(s9)
                  lbu          s5, -55(s9)
                  lh           t2, -46(s9) #end riscv_load_store_rand_instr_stream_1
                  and          a7, gp, zero
                  bgeu         t6, s10, 111f
                  andi         t3, s5, -1253
93:               addi         a1, t2, -918
                  bltu         a6, ra, 100f
                  and          a7, a2, s3
                  slli         a6, zero, 24
                  blt          s3, s11, 99f
                  bltu         a4, t0, 108f
99:               nop
100:              addi         a3, zero, 1929
                  srli         s1, s6, 15
                  sub          a6, t4, t5
                  srai         s5, gp, 23
                  slt          s11, s1, s7
                  sll          zero, ra, s3
                  bge          a2, t1, 114f
                  srl          a2, a7, s1
108:              srl          s9, a2, a4
                  bge          a3, s2, 117f
                  blt          tp, sp, 114f
111:              srli         a1, a5, 1
                  sra          s8, gp, t5
                  srl          a7, gp, gp
114:              lui          s0, 943844
                  slti         gp, a2, 1590
                  sra          a4, s9, s8
117:              addi         tp, t2, 833
                  and          a3, s3, t0
                  sub          a7, s4, gp
                  addi         s2, s11, -1389
                  add          tp, ra, s11
                  sra          s4, s2, s10
                  xori         a5, a7, -218
                  bne          s11, t6, 135f
                  ori          s3, gp, 220
                  and          t1, s5, tp
                  sltu         s6, sp, s9
                  xori         t1, s7, -1955
                  or           s0, s2, s2
                  or           t0, s10, a4
                  srli         t5, s8, 31
                  bne          t5, t2, 150f
                  ori          s10, a0, -1129
                  xor          t3, a7, ra
135:              beq          s0, a2, 140f
                  andi         s0, t2, -441
                  bge          a0, s9, 146f
                  sltiu        a5, t4, 1029
                  srli         s4, sp, 2
140:              bge          a0, a1, 145f
                  bltu         t6, s9, 143f
                  addi         s6, s4, -500
143:              sll          zero, a2, tp
                  nop
145:              add          t1, s4, s9
146:              sltu         s1, t5, t5
                  bgeu         a0, a1, 149f
                  lui          t0, 530627
149:              bge          s1, s5, 160f
150:              sub          t6, s8, s7
                  nop
                  lui          t1, 520746
                  bne          s2, s11, 164f
                  bne          s0, s3, 172f
                  srai         t2, a5, 27
                  xor          gp, s11, s2
                  blt          s4, t0, 161f
                  xori         tp, s5, -269
                  sll          s8, s11, t2
160:              slt          s2, t1, s5
161:              lui          s3, 165130
                  sub          s0, s2, s7
                  xor          s4, t5, s11
164:              or           s4, t2, s3
                  sll          t0, s0, s9
                  srl          s4, s6, s5
                  or           gp, a1, t2
                  xori         a6, a3, 1362
                  slt          s10, s4, sp
                  sra          a4, s0, t3
                  slt          s4, s5, s10
172:              bgeu         s3, t2, 192f
                  slli         s5, tp, 20
                  bge          s8, s6, 186f
                  xor          a3, s11, s11
                  andi         s4, t2, -1007
                  sll          a5, t1, tp
                  blt          sp, s0, 187f
                  xor          s1, t1, a6
                  blt          s6, a3, 182f
                  srai         zero, t1, 26
182:              bne          a5, a3, 193f
                  andi         s1, s2, 1783
                  add          gp, ra, tp
                  bge          t6, s7, 192f
186:              nop
187:              bne          s5, t2, 193f
                  srl          t0, t4, a4
                  bge          t2, s5, 208f
                  srai         t6, s10, 16
                  slli         gp, s11, 9
192:              sltiu        s0, ra, 316
193:              sltu         s9, sp, s9
                  sltiu        zero, s9, -1964
                  sltiu        t1, s11, 181
                  srl          s2, t3, a4
                  lui          t4, 831911
                  beq          s2, s0, 204f
                  xori         t5, s11, 767
                  sltiu        s8, t4, 1266
                  xor          s3, zero, s5
                  sltiu        s11, t4, -50
                  srai         s2, s3, 12
204:              sltu         a7, a0, a6
                  add          s1, s11, s11
                  srli         a0, a5, 8
                  xori         t6, gp, -909
208:              blt          zero, s1, 228f
                  bltu         t6, zero, 229f
                  bgeu         s0, t2, 224f
                  add          s1, s9, s9
                  sltiu        t5, t6, 1154
                  xor          a0, s5, s6
                  sll          s0, t5, ra
                  bne          s5, s2, 230f
                  slli         s8, t6, 13
                  nop
                  bge          t4, gp, 227f
                  srli         s0, t4, 14
                  and          a4, s11, s0
                  add          s5, s5, s5
                  sra          a0, t5, t5
                  srai         s10, t0, 17
224:              sltiu        s1, a2, 1789
                  or           a5, a0, zero
                  bgeu         a7, a4, 228f
227:              sll          s4, t4, a0
228:              ori          tp, a4, -192
229:              slti         s4, ra, 1395
230:              and          s9, s10, s9
                  beq          a1, zero, 232f
232:              srli         s6, zero, 17
                  bltu         zero, t2, 247f
                  xor          t1, s9, a4
                  addi         t4, s5, 454
                  auipc        s5, 127682
                  sltu         s6, s0, s2
                  bgeu         a2, a1, 253f
                  xori         s4, t4, 664
                  srai         s8, t0, 7
                  srai         a5, s8, 27
                  sra          t2, s7, s0
                  nop
                  sltu         s5, a6, t1
                  slli         s11, s6, 25
                  srai         s3, t1, 30
247:              addi         s3, t0, 1731
                  addi         a6, t2, -1995
                  ori          a6, a7, 308
                  xori         s6, a2, -1982
                  and          s11, s1, t2
                  lui          gp, 415040
253:              bgeu         s3, t2, 258f
                  and          a0, tp, s1
                  addi         t1, a2, -1892
                  bgeu         s2, a3, 266f
                  auipc        s11, 769266
258:              and          s1, t5, s3
                  andi         a0, s10, 1565
                  bne          s6, t4, 268f
                  nop
                  lui          s3, 575689
                  blt          s2, s2, 268f
                  slli         s8, tp, 26
                  ori          t2, tp, 961
266:              sltiu        t6, t4, -1195
                  lui          a3, 582237
268:              sltu         a5, t6, zero
                  srl          a7, s8, s5
                  add          s5, a1, s2
                  slti         a6, ra, -1475
                  bgeu         s6, t2, 277f
                  slli         t4, a3, 14
                  beq          s5, t4, 276f
                  slt          t0, s1, tp
276:              bltu         s1, a4, 278f
277:              sltu         s3, s5, t3
278:              xori         a5, a6, 1750
                  sltiu        t6, s0, 1005
                  andi         t0, t4, 1269
                  sltiu        s1, gp, -1139
                  srli         s6, sp, 10
                  and          tp, t3, ra
                  sra          a5, s2, s9
                  add          s0, tp, s5
                  slli         s9, s7, 4
                  auipc        zero, 706843
                  blt          s2, s5, 292f
                  sll          zero, s6, t2
                  and          a3, a2, ra
                  sra          zero, t2, a6
292:              beq          a1, sp, 300f
                  sltu         s9, t2, a4
                  add          a2, s6, s11
                  blt          t3, a4, 315f
                  srl          tp, a0, s9
                  bne          t3, s10, 301f
                  srli         s8, t4, 11
                  blt          zero, a2, 306f
300:              srai         a2, sp, 15
301:              xor          s11, t2, s6
                  bge          s2, s6, 307f
                  bge          t5, s9, 318f
                  add          t5, a4, t6
                  lui          a5, 1025367
306:              bltu         s11, ra, 312f
307:              bgeu         a0, a4, 315f
                  or           s8, s9, s4
                  slti         s8, s5, -1912
                  or           s2, s10, zero
                  beq          s5, s2, 313f
312:              srai         s9, ra, 22
313:              ori          s9, s4, 946
                  lui          s3, 62583
315:              sll          t3, s4, s0
                  or           a4, t1, a4
                  sltiu        s9, s11, -1180
318:              sub          t2, t5, zero
                  addi         t0, s9, 172
                  sltu         a6, s8, a3
                  nop
                  sra          t0, s10, s7
                  lui          a4, 283351
                  addi         t1, s11, -302
                  bgeu         a0, a0, 330f
                  beq          s4, s11, 335f
                  addi         a4, a0, -698
                  srl          s4, s3, a1
                  auipc        a4, 670159
330:              nop
                  blt          s8, a0, 333f
                  sll          zero, a6, s1
333:              srli         s1, s6, 25
                  srl          s11, s2, s11
335:              sll          a2, s11, sp
                  bge          a3, s10, 341f
                  add          a3, a4, s8
                  sltu         s0, tp, s8
                  xor          a3, s0, tp
                  srl          gp, gp, a2
341:              auipc        a7, 691479
                  slli         a4, t1, 14
                  add          s4, a4, s9
                  beq          t6, s5, 345f
345:              slt          t5, s2, s4
                  slli         t6, a6, 1
                  or           s2, t4, s9
                  nop
                  xori         t5, sp, 597
                  bge          s11, ra, 361f
                  slt          zero, s0, s9
                  bgeu         s5, t5, 362f
                  bne          s7, a6, 365f
                  and          s5, s5, s11
                  addi         s3, a5, 765
                  add          t3, a0, tp
                  sltu         t4, t3, t1
                  slt          a4, zero, s2
                  slli         t2, s6, 21
                  auipc        s6, 713980
361:              slti         a2, s4, 1958
362:              nop
                  srl          s9, a3, s10
                  beq          a7, a2, 372f
365:              sra          t3, s6, gp
                  beq          s3, s9, 385f
                  sub          t5, sp, s3
                  or           s8, a1, s8
                  xor          s10, a7, gp
                  blt          s11, a6, 372f
                  xori         s5, t1, -792
372:              and          t2, tp, a6
                  bltu         t5, s6, 382f
                  sub          tp, s5, zero
                  add          a4, a2, a2
                  and          t0, t2, t6
                  bne          a2, s3, 391f
                  slt          s5, s10, a4
                  sub          s6, t6, t0
                  beq          s1, a5, 382f
                  bgeu         tp, a3, 395f
382:              srli         s2, zero, 12
                  beq          s10, s11, 403f
                  slti         s5, s9, 2023
385:              bne          s2, sp, 405f
                  xori         s2, t5, -1284
                  ori          a4, s3, 1485
                  blt          a7, t3, 406f
                  andi         s1, a6, -610
                  bltu         a3, t2, 405f
391:              sltu         a5, a2, t1
                  bltu         a3, a0, 398f
                  slt          gp, a7, s11
                  nop
395:              sra          t2, s1, s5
                  sra          s10, s11, a1
                  sub          s10, a2, s3
398:              bgeu         s8, zero, 409f
                  and          a7, s3, a7
                  and          t5, s0, sp
                  sub          t0, s6, a1
                  auipc        s10, 343630
403:              beq          s1, a4, 407f
                  slt          t0, a5, gp
405:              bgeu         s2, a0, 419f
406:              bgeu         t6, gp, 407f
407:              sra          t6, a5, s2
                  or           s10, s6, a7
409:              bge          s11, s1, 428f
                  nop
                  blt          a7, zero, 422f
                  addi         a5, t1, -1943
                  lui          a3, 160559
                  bne          a6, s4, 419f
                  lui          gp, 175758
                  sltiu        a6, a7, -1833
                  blt          a7, sp, 429f
                  ori          t5, sp, -992
419:              beq          s0, tp, 437f
                  lui          s2, 143089
                  sltiu        s10, t5, -853
422:              bge          s3, a2, 442f
                  xor          a4, s5, s10
                  srl          s0, t0, s6
                  xor          s9, s11, ra
                  bge          s10, a4, 434f
                  bge          s0, s3, 432f
428:              blt          gp, t5, 442f
429:              beq          sp, s8, 433f
                  sll          t4, t1, t0
                  blt          s9, t2, 435f
432:              add          s1, t6, a3
433:              slli         t2, sp, 31
434:              or           s5, tp, s2
435:              bge          a1, s5, 441f
                  lui          s8, 730988
437:              bltu         t3, a2, 447f
                  srl          s10, s1, a6
                  blt          s8, a3, 447f
                  slti         a4, s11, 1897
441:              sll          t1, zero, s10
442:              bge          t4, a7, 444f
                  bltu         zero, s9, 463f
444:              bltu         a5, t6, 455f
                  andi         s10, a2, 1211
                  nop
447:              xor          s10, s9, s8
                  srli         s5, s1, 3
                  andi         a1, a1, -1231
                  bne          a6, s4, 457f
                  sub          a6, t3, zero
                  srai         a2, s7, 1
                  slli         gp, a2, 26
                  xor          s2, a6, s0
455:              sra          a6, t1, t0
                  sll          tp, s5, a2
457:              or           a1, s10, s4
                  sltu         t4, s5, s3
                  slli         a6, zero, 10
                  andi         t1, t3, -1531
                  or           t5, zero, s8
                  slt          t6, ra, s11
463:              sll          s5, s10, s10
                  and          s2, s11, s11
                  srl          t2, s4, t0
                  addi         s2, a7, -1537
                  sltiu        a0, s1, 1341
                  lui          t3, 691696
                  lui          s6, 719153
                  and          t0, s4, s8
                  addi         s0, t5, 220
                  slt          t0, s6, s3
                  srl          a5, s1, gp
                  slt          a6, zero, s11
                  and          t0, gp, s11
                  blt          s5, s2, 496f
                  sra          a1, s3, t1
                  bge          s2, gp, 487f
                  sub          t0, s1, a6
                  sub          gp, a5, s9
                  beq          zero, t5, 483f
                  auipc        t2, 89079
483:              blt          zero, s10, 498f
                  xori         s9, s8, -1499
                  nop
                  srl          s5, ra, ra
487:              sub          a2, s7, s4
                  sra          a4, a4, sp
                  addi         gp, zero, 2028
                  sub          s11, s3, s7
                  add          s10, sp, a1
                  slli         s6, t1, 17
                  sll          gp, zero, t3
                  bge          s10, s0, 499f
                  srli         s3, t3, 14
496:              slt          t1, s4, a6
                  bltu         ra, a1, 499f
498:              sltu         s10, s3, s5
499:              srli         s1, s7, 19
                  blt          s8, s2, 506f
                  bgeu         s6, s2, 503f
                  sltu         s11, a6, t4
503:              sra          s11, s4, a7
                  ori          s11, t4, 1036
                  sll          t0, zero, a4
506:              xor          t4, a6, t3
                  sltu         s10, s3, t1
                  beq          a1, sp, 523f
                  lui          t1, 791162
                  sra          t3, t2, t2
                  sltiu        a1, t4, -1195
                  srli         t6, t5, 25
                  blt          t0, s2, 522f
                  bgeu         a2, t4, 532f
                  sltiu        a4, a0, 1215
                  sra          s6, s5, s9
                  sltiu        s10, s6, -268
                  sub          t2, s9, s7
                  sra          t6, t4, s9
                  bltu         a7, t1, 529f
                  sltiu        t2, s8, 1649
522:              bge          s3, t6, 524f
523:              bge          a7, s0, 534f
524:              beq          t3, s10, 544f
                  bltu         gp, zero, 536f
                  or           t1, s5, a3
                  srli         a1, s6, 24
                  srli         a7, s10, 20
529:              auipc        tp, 140931
                  ori          s11, s6, -421
                  lui          gp, 433495
532:              and          s4, a0, s7
                  srli         s8, sp, 4
534:              sub          tp, a5, s10
                  bgeu         a3, t6, 539f
536:              and          t2, s2, s10
                  srli         zero, t0, 4
                  sra          gp, t3, s3
539:              sltiu        s3, ra, -197
                  sltu         s4, t4, t1
                  lui          s0, 38171
                  slt          a2, tp, ra
                  bne          t2, tp, 563f
544:              srli         s11, s5, 28
                  or           a3, s4, a1
                  addi         s3, a0, -388
                  and          a3, s7, t3
                  srl          t1, s7, s7
                  xor          s2, t4, t6
                  add          a7, t2, s4
                  add          s0, s3, gp
                  xori         a0, gp, 1070
                  beq          t6, s6, 561f
                  bne          s10, t5, 560f
                  bge          t1, a1, 557f
                  bne          t1, a6, 558f
557:              slt          s1, s1, a3
558:              slti         t2, s3, 1980
                  and          t4, a0, t2
560:              bgeu         t3, s2, 574f
561:              add          a6, s7, t0
                  lui          a3, 236857
563:              ori          t0, a4, 1786
                  srl          a2, a4, s5
                  blt          s8, t1, 580f
                  addi         a2, s2, -961
                  bne          s1, s0, 582f
                  sll          zero, s4, a4
                  or           s1, a2, s11
                  nop
                  beq          a3, zero, 576f
                  sltiu        a4, t0, -324
                  auipc        zero, 74648
574:              bgeu         ra, a5, 579f
                  sltu         s5, t1, s0
576:              blt          t1, a5, 588f
                  ori          t4, a5, 607
                  slli         s4, t0, 16
579:              auipc        t0, 559361
580:              blt          s1, a0, 581f
581:              nop
582:              lui          t2, 571565
                  addi         a6, s5, -1062
                  ori          t0, s9, 797
                  andi         zero, t1, 342
                  and          s11, s8, t1
                  beq          t0, zero, 594f
588:              bltu         a5, a5, 594f
                  andi         a4, a7, -1421
                  addi         s0, ra, 537
                  and          a1, a5, s7
                  sltu         s5, ra, s4
                  sub          t1, a5, s10
594:              srli         t4, s2, 20
                  and          a0, s10, a4
                  sub          s1, t3, s11
                  slli         a3, s6, 19
                  slli         a1, sp, 10
                  andi         t0, s0, 1924
                  blt          a4, s9, 619f
                  beq          t6, a7, 605f
                  lui          a4, 680547
                  xor          t5, t1, t2
                  slt          t3, tp, t2
605:              sltiu        a6, a0, -765
                  srai         t1, a5, 26
                  sll          s3, t0, t6
                  sll          s10, s1, a2
                  add          zero, a1, s5
                  bne          s7, s8, 615f
                  bgeu         s3, s4, 620f
                  srli         t1, s11, 15
                  andi         a3, s1, -1237
                  slt          s6, t0, a2
615:              xor          a7, s5, s9
                  ori          s3, s8, -1919
                  srli         a5, a3, 8
                  slt          a0, t0, ra
619:              andi         s5, sp, 1720
620:              nop
                  xor          t4, t5, a7
                  srai         t0, s10, 6
                  addi         s8, s2, -936
                  sltiu        s1, s7, 750
                  sub          t6, s10, tp
                  sub          a3, s6, a5
                  srl          s5, s7, s11
                  nop
                  sltu         s9, sp, sp
                  slli         s2, s7, 25
                  srai         gp, t1, 24
                  lui          s1, 935110
                  auipc        t6, 248419
                  bltu         a5, a5, 636f
                  sll          s4, sp, a5
636:              lui          a5, 513349
                  slt          t6, s8, s3
                  srli         a4, s10, 1
                  sub          s4, a1, s6
                  and          s10, t0, a5
                  slt          s10, s5, gp
                  xor          a6, s5, s7
                  bge          tp, t6, 653f
                  bgeu         a3, s10, 664f
                  srli         a3, s10, 4
                  nop
                  addi         a3, a3, 1473
                  andi         t5, s1, 1291
                  bgeu         s10, a4, 657f
                  srai         a1, sp, 15
                  or           zero, t1, s9
                  sra          t1, t5, a0
653:              beq          a1, a0, 667f
                  slti         s9, s9, 1625
                  sltu         t0, s6, a5
                  bge          t4, s3, 664f
657:              bgeu         s2, a2, 662f
                  sll          a5, t4, t0
                  sra          zero, t0, sp
                  bge          gp, a1, 678f
                  add          s1, sp, s9
662:              auipc        a6, 658420
                  lui          zero, 281298
664:              beq          s3, t0, 675f
                  sltiu        a5, s5, 1929
                  sll          s2, a6, s11
667:              nop
                  xori         s4, t3, 1829
                  sra          t0, s2, s9
                  xori         s10, s8, -1242
                  sltu         a2, tp, s9
                  sra          s10, sp, gp
                  and          a7, tp, s6
                  lui          s5, 558049
675:              sltu         a2, a2, s3
                  srli         a4, a2, 21
                  and          s10, s8, tp
678:              lui          zero, 558933
                  sub          s2, ra, s6
                  bgeu         tp, s3, 694f
                  sltu         s2, t2, s3
                  sra          s6, s4, a2
                  bltu         t6, t5, 702f
                  bne          a1, s6, 699f
                  lui          s9, 490770
                  slti         t5, a0, -1238
                  bne          s2, s3, 695f
                  nop
                  bgeu         t2, a4, 691f
                  sltiu        t1, t6, -1624
691:              sltu         s5, zero, s4
                  sll          s2, t1, s6
                  lui          a6, 22614
694:              sltiu        a3, s0, 1455
695:              slt          s4, gp, s1
                  lui          t5, 858166
                  add          gp, t5, s1
                  add          a5, t3, a7
699:              blt          a4, t6, 710f
                  lui          a6, 612284
                  bge          a2, a4, 707f
702:              auipc        s9, 676405
                  srl          t4, s10, a1
                  slt          gp, t4, s3
                  sltiu        a5, ra, 2040
                  andi         s8, a7, -1585
707:              beq          t4, t5, 727f
                  sll          a1, t3, t1
                  sra          t4, ra, s7
710:              andi         s6, ra, 931
                  andi         a4, a7, -1244
                  add          s4, s11, s6
                  ori          a7, a5, 1693
                  sll          a0, s7, a6
                  slti         a7, s2, 687
                  slti         s2, s9, -164
                  xor          tp, a0, s11
                  bge          s5, t2, 723f
                  auipc        a6, 201404
                  beq          a0, s1, 724f
                  sltu         s3, a6, t4
                  bgeu         t4, s1, 731f
723:              auipc        tp, 733676
724:              slti         tp, sp, 1890
                  nop
                  slti         t5, a0, 50
727:              nop
                  srl          t2, tp, t2
                  sra          s4, a6, gp
                  sub          a0, s3, s3
731:              srl          a3, a1, sp
                  sltu         s2, zero, s10
                  nop
                  add          s1, a0, a4
                  sub          s5, gp, ra
                  sra          tp, a5, sp
                  sll          a7, s11, s1
                  sll          zero, t2, s11
                  blt          sp, tp, 745f
                  bltu         a0, s3, 752f
                  xori         a7, t2, -860
                  srli         s3, ra, 15
                  blt          s3, s7, 752f
                  sltiu        gp, s3, 911
745:              sub          s8, t3, t5
                  sra          tp, s0, s10
                  ori          a2, s4, -2009
                  bgeu         a2, a6, 758f
                  sltu         s0, s5, a0
                  andi         tp, a2, -1653
                  sltu         t1, a6, t0
752:              bne          t2, s8, 754f
                  and          a6, s5, s6
754:              auipc        s1, 223704
                  auipc        a4, 114025
                  xori         s2, a2, 901
                  xori         a1, sp, 21
758:              or           t0, s8, s10
                  sll          s6, t2, t5
                  slti         s11, s3, 1982
                  sltu         a2, s10, a5
                  sub          t4, sp, a4
                  slt          tp, a0, s5
                  ori          a2, s3, -1731
                  srl          s10, a7, a2
                  xori         s5, gp, 114
                  ori          t2, s8, 357
                  or           a6, s7, a2
                  sll          s11, a3, t5
                  sub          s5, a7, sp
                  sltu         s11, s9, s6
                  or           a0, tp, s5
                  xori         t6, s2, 1532
                  bne          s2, s3, 789f
                  sll          s8, tp, t4
                  sub          s8, s9, t6
                  sltiu        t2, t0, 1606
                  ori          a7, a6, 988
                  srli         a6, t1, 31
                  or           gp, zero, t1
                  lui          s8, 26678
                  bne          s2, a5, 789f
                  sub          s9, s0, t1
                  or           s10, s2, a1
                  sltu         a6, s1, gp
                  xori         a0, sp, 1388
                  bltu         sp, s1, 801f
                  bgeu         t1, s4, 792f
789:              lui          t4, 220347
                  sub          s5, t1, s1
                  srli         s11, a4, 23
792:              addi         a7, s6, -691
                  nop
                  sra          a2, t5, s11
                  beq          s4, s4, 796f
796:              sub          s1, a3, s11
                  xor          t5, t5, t0
                  bltu         s9, t6, 818f
                  xor          a1, s9, s10
                  sra          s6, s1, tp
801:              beq          s3, a6, 803f
                  sra          t0, ra, s8
803:              and          t6, s10, s11
                  sll          a7, s11, s4
                  auipc        tp, 1029220
                  addi         t0, a6, 940
                  sltiu        s0, a0, 953
                  sltiu        t6, s0, -1062
                  slt          t4, s0, s11
                  xor          s2, a4, a7
                  srl          a4, a2, a6
                  slli         t5, t4, 21
                  xori         s2, ra, 1070
                  sll          s8, t2, s11
                  xor          s3, s10, t3
                  andi         t3, s0, -1324
                  ori          a1, a6, -1149
818:              sltiu        zero, a0, 817
                  auipc        zero, 213860
                  beq          t4, s2, 825f
                  slt          s0, s4, s5
                  or           tp, s7, t0
                  ori          s4, s11, -979
                  srl          a5, s5, tp
825:              add          t0, a3, s7
                  blt          t6, a1, 828f
                  xor          t4, s1, t1
828:              srl          s5, a0, t3
                  beq          s2, s2, 849f
                  blt          t5, s9, 842f
                  sltiu        s11, s6, -1839
                  andi         a6, a0, -1485
                  sltu         s3, s3, t6
                  sra          s4, s6, s8
                  slli         t6, s3, 6
                  xori         t1, s2, 341
                  bltu         zero, a1, 843f
                  xori         s2, s5, -332
                  sra          s10, s1, tp
                  slti         s1, s9, -16
                  xori         zero, ra, -215
842:              bltu         s5, ra, 862f
843:              srli         zero, s2, 15
                  bgeu         a6, sp, 864f
                  auipc        s2, 422359
                  sltu         s3, a4, s2
                  srai         t1, t1, 22
                  sll          a4, s5, gp
849:              sll          t5, t5, s2
                  nop
                  slt          a0, s0, gp
                  bge          ra, a0, 859f
                  sll          t3, a5, t5
                  sltu         gp, s1, t3
                  ori          s0, s5, 1526
                  xor          s8, a5, a7
                  bltu         t2, t5, 872f
                  srai         s4, zero, 15
859:              slti         a0, ra, -97
                  sltiu        a1, s6, -1108
                  slti         t2, zero, -1546
862:              srli         s8, ra, 3
                  sub          a2, s4, s8
864:              xori         zero, a7, 221
                  srli         t3, s6, 4
                  xori         t2, a0, -1014
                  blt          s9, a3, 869f
                  or           t6, t2, ra
869:              auipc        s10, 66848
                  auipc        gp, 529634
                  beq          s7, zero, 882f
872:              bgeu         a7, a6, 886f
                  sra          s9, gp, s7
                  slli         a5, a7, 23
                  addi         tp, s3, 1236
                  slti         tp, a5, 268
                  xori         t3, s0, -1141
                  srli         t4, a1, 22
                  bne          a5, a3, 888f
                  xor          a5, t4, t0
                  lui          a5, 597260
882:              xor          t4, ra, a4
                  srl          t5, s1, sp
                  srli         s5, a7, 4
                  sub          s11, t0, gp
886:              or           gp, s9, a2
                  nop
888:              sub          a2, a5, sp
                  sra          a3, s6, s7
                  or           s5, s9, t4
                  sll          t4, s4, ra
                  beq          s2, t4, 903f
                  bgeu         s8, a6, 902f
                  xori         a7, t2, 791
                  xori         a1, s10, -1097
                  or           t3, s1, s6
                  addi         a2, a3, 1823
                  sll          s6, a6, t3
                  srai         s11, t0, 1
                  srai         s1, a4, 11
                  sll          s11, s8, t2
902:              addi         t5, s6, -1636
903:              slti         s5, s5, -59
                  sub          s10, t3, a6
                  sub          s9, t4, a7
                  auipc        a0, 180985
                  srl          a6, s7, a3
                  srai         a5, s4, 8
                  slti         s0, s2, 79
                  bne          a5, s8, 914f
                  srli         a0, t1, 21
                  sll          t3, s6, s9
                  bltu         zero, s1, 921f
914:              auipc        t6, 435117
                  xor          zero, t5, s1
                  andi         t3, s5, -59
                  slli         a5, t0, 27
                  xori         gp, s8, -1517
                  and          a6, a0, ra
                  auipc        t5, 764915
921:              sll          s5, a7, a5
                  bgeu         a4, gp, 936f
                  bne          a7, t3, 928f
                  nop
                  auipc        t4, 82739
                  sub          a5, t6, a6
                  sll          a5, ra, gp
928:              auipc        a6, 941010
                  xor          a5, t3, a3
                  sub          a4, s11, t4
                  sll          s1, s8, a3
                  and          a0, a6, zero
                  xor          t1, s0, s1
                  bltu         a0, ra, 942f
                  slli         zero, s10, 19
936:              bltu         a4, s1, 942f
                  bne          s0, a4, 942f
                  nop
                  srai         t6, a2, 17
                  add          a6, a1, s11
                  andi         s1, s2, -858
942:              nop
                  sll          a7, t2, a2
                  sll          a4, t1, s7
                  sltiu        t5, a6, -1384
                  slli         s4, t5, 9
                  sra          a2, zero, a6
                  ori          a6, a2, -1060
                  add          t3, a6, s11
                  sub          t6, a7, s4
                  xori         t5, sp, 1345
                  srai         a5, s2, 11
                  nop
                  slt          s3, s2, t3
                  slti         s2, a0, 272
                  sltiu        s8, zero, -778
                  srai         a3, ra, 29
                  sll          t3, zero, t6
                  xori         s1, s8, 1861
                  sltiu        a1, s4, -1577
                  bgeu         a4, s1, 963f
                  or           s5, s10, s6
963:              xor          a1, tp, s11
                  sra          s3, ra, t4
                  slti         s0, t1, 493
                  srai         s9, t2, 1
                  sltu         t4, s9, ra
                  andi         s2, t4, -1543
                  srl          a1, s2, t3
                  sltu         s9, s4, gp
                  addi         s11, t1, 375
                  slli         a0, t5, 5
                  slli         a1, gp, 29
                  ori          s1, s10, 564
                  bgeu         s1, t6, 977f
                  beq          sp, s10, 991f
977:              auipc        s9, 83785
                  addi         zero, a2, -1901
                  auipc        s1, 196870
                  sltu         a4, t3, s10
                  sub          s11, s11, t0
                  sltu         s9, s7, s11
                  andi         t1, t2, 721
                  or           t0, s11, s10
                  slt          a0, s7, a6
                  lui          t2, 38164
                  srli         t5, s8, 2
                  and          s3, a2, t0
                  auipc        s0, 885626
                  nop
991:              sltu         s5, a0, s10
                  xor          s0, s0, a1
                  bne          s1, tp, 1011f
                  bge          a1, t1, 996f
                  slt          s4, ra, t6
996:              srli         t3, s1, 8
                  bne          t0, s5, 1017f
                  blt          tp, t1, 999f
999:              or           zero, t4, s7
                  andi         s1, t6, 1476
                  srli         t0, s11, 23
                  add          s4, s1, s6
                  lui          s10, 84025
                  sltu         a1, tp, s11
                  or           s0, s8, s7
                  slli         t3, a3, 4
                  beq          s9, s11, 1011f
                  sll          s0, a7, t6
                  sll          a7, ra, a4
                  sra          a6, t4, t5
1011:             and          s4, a4, a7
                  slti         s6, t5, 1240
                  bgeu         ra, s6, 1032f
                  xor          a5, ra, a0
                  sltu         t4, ra, gp
                  slli         a4, a3, 16
1017:             bgeu         s11, s3, 1027f
                  slli         s5, s5, 11
                  sltu         s4, t3, t2
                  and          s6, s6, s11
                  sub          s9, a5, s7
                  and          s5, tp, a0
                  slt          t6, t2, s3
                  bltu         a7, a3, 1029f
                  srl          t0, s1, s3
                  lui          t0, 505244
1027:             srli         t2, s8, 23
                  ori          t5, s9, 467
1029:             bgeu         t6, t5, 1031f
                  srl          s0, tp, s10
1031:             auipc        s4, 831039
1032:             xor          a0, a5, t6
                  sub          s5, s1, s3
                  ori          s11, s1, 4
                  srli         a6, a1, 23
                  bgeu         a7, t1, 1042f
                  nop
                  auipc        zero, 802623
                  lui          s2, 738003
                  sub          a7, a2, a3
                  add          s9, tp, t3
1042:             bne          a5, t5, 1047f
                  add          a5, s8, a7
                  xor          tp, s5, t4
                  blt          a5, zero, 1049f
                  addi         s4, t2, 540
1047:             bltu         s1, a4, 1066f
                  srai         a1, s11, 20
1049:             bge          a6, s2, 1067f
                  lui          a3, 147924
                  auipc        s2, 39055
                  nop
                  bgeu         s10, t0, 1062f
                  or           a5, zero, s6
                  xori         a2, s7, 1778
                  srli         s8, a6, 20
                  srli         a5, s9, 19
                  bltu         s8, a4, 1068f
                  nop
                  xori         t1, a2, -1253
                  add          s6, t0, sp
1062:             bge          tp, t2, 1064f
                  srl          s5, zero, t5
1064:             beq          s7, s2, 1075f
                  bge          t6, a4, 1073f
1066:             sra          s6, a6, t5
1067:             ori          a1, s8, -946
1068:             sub          a5, s9, a6
                  add          a6, t2, s3
                  and          s11, s9, s2
                  andi         tp, t6, 192
                  sra          a7, s5, zero
1073:             srai         a2, gp, 3
                  sra          t5, a6, a2
1075:             ori          t2, gp, -1693
                  sra          s10, t1, a6
                  bltu         t1, t3, 1092f
                  lui          s4, 968946
                  sub          a6, t3, tp
                  slli         a5, s11, 18
                  addi         tp, a5, -948
                  sub          t0, s2, t6
                  sltiu        t4, t3, -499
                  sub          tp, a4, s8
                  srl          gp, a3, s4
                  bgeu         a6, a1, 1106f
                  sll          t0, t0, t6
                  sltu         s2, s11, s3
                  andi         gp, t0, -1489
                  beq          s0, a2, 1110f
                  sltu         a0, a3, a5
1092:             add          t0, a1, a7
                  sra          a7, s9, zero
                  bne          s6, t1, 1108f
                  auipc        a5, 968897
                  nop
                  slti         gp, s7, -905
                  srl          t0, s5, s9
                  sltiu        gp, a4, 625
                  srai         a2, s1, 9
                  andi         s5, s8, -872
                  bltu         a2, t4, 1111f
                  xori         t3, s7, 501
                  srli         t3, a4, 5
                  xor          s3, s5, s4
1106:             beq          t5, sp, 1112f
                  bltu         s3, gp, 1111f
1108:             bne          a2, a2, 1113f
                  and          s1, a1, s5
1110:             bge          s1, t4, 1112f
1111:             lui          a7, 307582
1112:             or           a1, zero, t4
1113:             sll          s8, s6, a7
                  xor          s3, sp, s6
                  add          t2, ra, s3
                  sll          t0, s1, t3
                  xor          t6, s9, s3
                  xor          s4, s3, t2
                  auipc        s2, 563204
                  xor          a2, s4, s9
                  sltiu        t2, a3, 386
                  lui          s1, 689775
                  srli         a0, s11, 21
                  sub          tp, s8, s9
                  xor          a2, t6, a2
                  bgeu         ra, t0, 1141f
                  bne          zero, t6, 1138f
                  slti         s8, a7, 255
                  srai         t6, s10, 4
                  bne          t2, t4, 1135f
                  ori          a3, a4, -1845
                  lui          s0, 470357
                  bne          s1, s9, 1140f
                  beq          s7, a0, 1135f
1135:             srl          s11, a7, a3
                  lui          a3, 869221
                  beq          a7, s0, 1145f
1138:             xori         t2, s10, -391
                  srl          s6, t4, s10
1140:             bltu         t4, t2, 1142f
1141:             sub          s8, a5, s2
1142:             or           s4, s1, a3
                  slt          a5, s5, a5
                  bge          a5, s8, 1158f
1145:             blt          a7, a6, 1165f
                  ori          s1, s0, 1136
                  nop
                  xor          s1, s0, a5
                  sltu         s4, s10, t2
                  andi         t1, zero, 1172
                  nop
                  bgeu         s6, s2, 1164f
                  srli         tp, sp, 26
                  sll          s1, s4, s0
                  auipc        t5, 250598
                  xor          s9, s5, s9
                  auipc        a4, 763259
1158:             add          t1, tp, ra
                  and          t1, a7, a4
                  slt          a0, zero, a7
                  sltu         t2, s0, ra
                  slli         a0, sp, 28
                  andi         a3, sp, -1988
1164:             srli         a6, s0, 16
1165:             bgeu         s9, t0, 1176f
                  xor          t3, s10, t6
                  bge          s7, gp, 1171f
                  ori          a1, t3, -247
                  srl          t2, t3, s6
                  add          a7, zero, s5
1171:             nop
                  slti         a7, t3, -334
                  slt          s6, t5, s11
                  bge          sp, s9, 1189f
                  bge          t2, s8, 1181f
1176:             sltiu        s11, s5, 21
                  xori         a7, t0, 1773
                  bgeu         s6, t1, 1185f
                  sltu         gp, s10, a0
                  ori          zero, ra, -166
1181:             nop
                  bge          t3, a7, 1183f
1183:             srl          a0, sp, t6
                  bge          s2, a2, 1192f
1185:             addi         s11, zero, -1851
                  sub          t1, a2, s10
                  or           s9, ra, t6
                  srai         s4, t6, 26
1189:             beq          sp, t2, 1194f
                  addi         s5, s8, -797
                  sra          s2, a4, ra
1192:             auipc        a1, 530651
                  sub          s10, gp, t0
1194:             or           s6, s3, t5
                  xori         a5, s10, 1478
                  and          a5, a7, s2
                  slli         t2, s8, 17
                  ori          a2, s3, -1841
                  bge          s9, a1, 1211f
                  xor          t1, s6, s9
                  sll          tp, s7, t3
                  addi         a6, t2, -1432
                  add          s1, tp, a1
                  andi         a3, t3, -808
                  blt          sp, ra, 1207f
                  addi         gp, gp, 1104
1207:             bgeu         gp, s6, 1213f
                  or           s9, t0, a6
                  auipc        zero, 374144
                  nop
1211:             add          a1, a2, s9
                  andi         s8, ra, 150
1213:             slli         t6, a2, 27
                  add          s11, a4, s1
                  xor          zero, s8, t0
                  slli         zero, t0, 19
                  xori         s4, t3, -1945
                  addi         s0, t2, -1244
                  sltiu        s11, s7, 1334
                  sub          a3, s3, s6
                  beq          a6, t3, 1239f
                  sra          a0, s11, a2
                  srl          a6, s8, a3
                  xori         a5, s8, 1665
                  srai         s2, a0, 13
                  ori          t5, a6, -1173
                  andi         a6, s5, -1197
                  bge          s3, a3, 1243f
                  srl          s4, s10, t1
                  xori         a2, s7, -1235
                  blt          a0, a6, 1241f
                  bne          t3, a3, 1243f
                  nop
                  bltu         a0, s8, 1238f
                  slti         t1, s6, 724
                  srl          s0, zero, t2
                  addi         a7, gp, -838
1238:             bne          s3, zero, 1258f
1239:             sltiu        s4, a6, -1811
                  or           a1, tp, s8
1241:             srl          t4, s0, s9
                  bne          gp, s11, 1251f
1243:             blt          t1, t4, 1245f
                  ori          a1, s11, 759
1245:             sltu         t5, a6, s1
                  blt          s6, t3, 1266f
                  ori          a1, t2, -1445
                  srl          zero, ra, a6
                  nop
                  slt          a2, s8, s5
1251:             slli         s0, t3, 3
                  add          tp, s7, s6
                  bltu         s8, s7, 1272f
                  srl          tp, a2, s9
                  sltu         gp, tp, a3
                  auipc        s11, 339076
                  beq          s2, s2, 1262f
1258:             blt          sp, t0, 1267f
                  ori          a6, s6, -1320
                  sra          s1, a1, s0
                  xori         zero, a5, 1125
1262:             blt          s7, t2, 1276f
                  beq          t2, s4, 1265f
                  ori          zero, t4, -1978
1265:             addi         t2, gp, 1586
1266:             srl          s2, t4, t6
1267:             bge          s10, s11, 1287f
                  auipc        a7, 559623
                  srai         a3, s10, 0
                  bltu         t2, a0, 1275f
                  auipc        a6, 441859
1272:             lui          zero, 920617
                  sra          s10, gp, a3
                  sub          s1, t0, a7
1275:             auipc        s1, 123269
1276:             sltu         a5, s3, gp
                  slti         a2, zero, 23
                  and          a2, a7, s5
                  add          a4, a0, a1
                  srli         t0, a0, 19
                  addi         t3, a5, 1840
                  and          s3, s4, a4
                  sra          t4, s5, t4
                  and          s4, s0, a5
                  bne          t5, t0, 1299f
                  andi         s4, t1, 1412
1287:             lui          a3, 233464
                  addi         s9, s2, 1472
                  sltiu        s2, t1, 442
                  sub          t5, s10, gp
                  srl          s2, s5, a4
                  or           s9, s10, a4
                  bgeu         a2, s3, 1301f
                  bltu         s0, a1, 1296f
                  srai         gp, s2, 12
1296:             addi         zero, s7, -1365
                  auipc        gp, 129616
                  auipc        t4, 760856
1299:             srl          t4, s1, s8
                  andi         a1, s8, -379
1301:             add          s6, a0, gp
                  bgeu         t2, s9, 1317f
                  sltu         s5, t1, a1
                  bltu         s1, sp, 1306f
                  blt          t3, t6, 1311f
1306:             srl          a7, s10, gp
                  srli         t1, t5, 1
                  slli         a0, t6, 3
                  slli         t3, s9, 0
                  sltu         tp, t2, s5
1311:             beq          gp, s4, 1322f
                  slti         s6, s6, 398
                  slli         a1, a6, 16
                  sra          t6, s9, a3
                  srai         a1, s10, 26
                  addi         s10, t3, 1107
1317:             slli         a5, a0, 13
                  slti         a2, tp, 1222
                  add          t1, t3, s0
                  sll          tp, gp, s2
                  xor          s3, s0, gp
1322:             andi         a7, a3, -1508
                  bgeu         a7, s8, 1327f
                  sltiu        s4, t0, -1519
                  xori         a0, s7, 563
                  add          s4, t1, s2
1327:             srli         s1, tp, 15
                  beq          s10, a0, 1337f
                  srai         zero, t0, 20
                  auipc        t5, 678605
                  srl          s4, ra, s6
                  lui          gp, 293890
                  sra          t5, s2, s10
                  and          s6, s11, ra
                  slt          s4, s10, s0
                  or           s1, t2, s10
1337:             srli         s1, s2, 22
                  slti         a6, s8, 1035
                  lui          s8, 482376
                  bne          s2, a3, 1345f
                  bgeu         sp, a5, 1355f
                  bne          s0, s2, 1348f
                  slti         s4, tp, -1619
                  beq          a6, a6, 1354f
1345:             slt          t1, s6, a4
                  lui          s11, 662639
                  blt          tp, s6, 1355f
1348:             sub          s3, t0, s7
                  andi         s6, s8, -1919
                  addi         s8, a6, -1514
                  bne          sp, a4, 1360f
                  nop
                  sltiu        s2, t2, -92
1354:             bgeu         t6, s0, 1374f
1355:             sub          t6, t4, s11
                  xor          a6, s1, s9
                  xori         a0, t2, -1738
                  slli         s1, sp, 31
                  bge          s0, a6, 1370f
1360:             blt          t1, a2, 1380f
                  andi         s8, a3, -780
                  lui          a4, 1009346
                  add          a6, a5, t4
                  srl          s11, s4, s2
                  bltu         s11, s0, 1372f
                  or           a3, a3, s10
                  auipc        t5, 300105
                  add          a1, s1, t5
                  srli         s0, t1, 7
1370:             xor          a6, s6, t3
                  slt          s9, s8, a5
1372:             xori         t0, s6, 641
                  lui          t1, 764609
1374:             bltu         s3, s7, 1376f
                  lui          a1, 236779
1376:             andi         s5, a3, 588
                  slli         tp, s5, 12
                  lui          t1, 890030
                  slti         s10, t0, 1770
1380:             sltu         t4, s5, t6
                  blt          s7, gp, 1386f
                  srai         t1, sp, 30
                  srl          tp, s3, a5
                  bne          sp, s8, 1396f
                  bgeu         gp, t0, 1387f
1386:             addi         a4, s4, -1429
1387:             bge          t6, s6, 1389f
                  andi         s10, s3, 1506
1389:             or           t2, t2, a3
                  addi         gp, zero, -1278
                  srli         s9, a6, 11
                  slt          t0, s3, s9
                  bne          sp, t6, 1412f
                  sll          a6, t1, s5
                  addi         s0, a5, -1499
1396:             bge          s7, gp, 1401f
                  slli         s9, t3, 24
                  beq          s7, t2, 1416f
                  bgeu         a7, t0, 1407f
                  slli         a4, a6, 11
1401:             sltu         a2, t4, s8
                  or           s0, s0, t4
                  xori         s2, t1, 356
                  beq          t1, tp, 1424f
                  srai         t1, s2, 22
                  auipc        a0, 636506
1407:             beq          a4, t0, 1422f
                  slt          s11, s5, a1
                  auipc        s8, 919845
                  slti         a4, a6, 1685
                  blt          s5, t6, 1415f
1412:             andi         zero, a2, -1731
                  bgeu         a5, s2, 1427f
                  xor          s2, s1, a1
1415:             sltu         gp, a4, tp
1416:             slli         zero, t5, 28
                  slli         t6, a2, 12
                  sltiu        s5, t2, -1335
                  srai         gp, s6, 28
                  slti         a2, sp, -189
                  auipc        a0, 101444
1422:             andi         s6, t2, 798
                  or           t4, s3, s4
1424:             sltu         a5, ra, s9
                  sub          t5, s5, a3
                  sra          zero, tp, a0
1427:             blt          s8, t5, 1428f
1428:             andi         t5, a5, -1539
                  sltu         s5, s3, s0
                  lui          s9, 642687
                  beq          zero, s1, 1436f
                  sltu         t0, s7, t5
                  auipc        s3, 961743
                  sub          t3, a7, s8
                  andi         t3, s3, 412
1436:             srai         s1, s6, 19
                  sub          t2, s5, s3
                  nop
                  srli         gp, a2, 18
                  bge          a5, t1, 1442f
                  nop
1442:             auipc        a2, 737289
                  bltu         sp, s2, 1448f
                  blt          t4, sp, 1454f
                  srai         t5, a0, 8
                  addi         t6, t1, 646
                  beq          s2, a1, 1454f
1448:             srai         a3, s1, 19
                  and          a7, s1, t2
                  bltu         a2, s3, 1452f
                  sub          s4, t5, s9
1452:             andi         t2, gp, -1962
                  and          a2, s10, tp
1454:             bne          a4, s9, 1469f
                  sra          a2, t1, s0
                  srli         zero, a0, 28
                  srli         t2, t0, 9
                  beq          t3, s6, 1472f
                  srli         s2, t5, 25
                  sltiu        s6, gp, 1140
                  srli         s5, s1, 13
                  nop
                  or           s8, a7, a3
                  sub          t1, a6, s8
                  ori          tp, t3, -297
                  add          t5, a5, t6
                  bgeu         t5, tp, 1471f
                  beq          t1, s2, 1483f
1469:             andi         t3, t4, -1465
                  sll          a7, s9, s8
1471:             nop
1472:             bltu         t1, a6, 1481f
                  srli         zero, t4, 25
                  la           s6, region_0+13 #start riscv_load_store_rand_instr_stream_8
                  slt          t0, a4, s3
                  sll          t6, s0, s4
                  lb           a2, 1292(s6)
                  lh           s2, 1173(s6)
                  lw           a5, 963(s6)
                  slti         s11, s4, 424
                  ori          s5, s8, -302
                  xor          s11, s2, s10
                  slti         s8, t1, 547
                  lh           t6, 777(s6)
                  sra          s2, s4, a4
                  lb           a3, 1082(s6)
                  xor          t0, a5, t3
                  lb           a4, 1676(s6)
                  xori         s2, t0, 1354
                  addi         s8, s6, -1958
                  sw           s1, 527(s6)
                  slli         gp, s9, 1
                  sll          t3, a4, s11
                  sltu         a6, a2, s7
                  sltiu        s9, s9, -909
                  lb           s11, 1212(s6)
                  slli         t1, a3, 28
                  lbu          s4, 319(s6)
                  lh           t0, 1219(s6)
                  lhu          t1, 1629(s6)
                  sb           a7, 493(s6)
                  lbu          a4, 1330(s6)
                  sra          s5, s10, a4
                  or           a3, s4, s0
                  lb           s0, 1500(s6)
                  sra          t5, a2, zero
                  sh           s3, 725(s6)
                  lb           t4, 994(s6)
                  lbu          a4, 882(s6)
                  ori          s10, a5, -1855
                  lbu          s0, 1913(s6)
                  and          a2, s4, a5
                  lh           s8, 539(s6)
                  srl          t4, s10, s11
                  lbu          s9, 245(s6)
                  addi         a2, s8, -1101
                  lhu          s10, 691(s6)
                  lbu          t3, 1461(s6)
                  lbu          s0, 301(s6)
                  sb           a7, 381(s6)
                  lh           s1, 587(s6)
                  sb           sp, 1768(s6)
                  sll          a1, a4, s1
                  lui          s2, 556285
                  ori          t5, t0, -952
                  lb           s8, 1292(s6)
                  sra          a0, s2, tp
                  srli         s3, ra, 2
                  sltiu        t0, s4, -237
                  lb           a4, 1365(s6) #end riscv_load_store_rand_instr_stream_8
                  bltu         s9, s5, 1479f
                  sll          a6, s5, s0
                  bge          a6, s4, 1496f
                  blt          t4, s7, 1479f
                  or           gp, s7, t6
1479:             beq          zero, s8, 1497f
                  nop
1481:             blt          t2, s7, 1483f
                  xori         a2, s4, 279
1483:             and          a3, a5, s1
                  addi         t3, a7, -54
                  nop
                  sltiu        s1, s9, -1080
                  srl          t0, s11, ra
                  sra          s8, sp, t1
                  srl          s9, a4, a0
                  bge          a0, s2, 1494f
                  auipc        s4, 303623
                  slt          t1, s10, t1
                  slti         t5, sp, -1309
1494:             bge          s5, s7, 1495f
1495:             sltiu        t5, t1, -1173
1496:             ori          a3, s7, -1192
1497:             sub          s6, a1, t5
                  slli         gp, gp, 28
                  xori         a7, t4, -660
                  sub          s10, a7, gp
                  nop
                  sltu         a0, t1, t0
                  addi         a7, gp, 1421
                  bge          t3, a3, 1516f
                  bgeu         a0, a7, 1513f
                  xor          gp, zero, s9
                  sra          t5, tp, tp
                  slli         tp, gp, 7
                  xori         zero, t6, -254
                  sra          s5, a7, tp
                  nop
                  bltu         a6, s4, 1526f
1513:             bltu         a3, s8, 1533f
                  sra          s3, a4, t0
                  blt          a5, zero, 1534f
1516:             bgeu         a7, t1, 1524f
                  sltu         s11, t6, t2
                  slli         s8, a6, 17
                  xor          a4, s10, a6
                  add          a2, a1, t0
                  srli         s9, a0, 26
                  sll          zero, s5, s5
                  srl          zero, s3, t1
1524:             bgeu         s9, t1, 1535f
                  lui          s3, 1030114
1526:             ori          a5, s9, -1887
                  bgeu         gp, s10, 1533f
                  bne          ra, t2, 1548f
                  sltiu        s5, s2, 635
                  addi         t4, s0, -825
                  ori          a5, s9, -1259
                  slli         s1, a0, 24
1533:             bne          a1, t5, 1544f
1534:             ori          s2, s11, -1426
1535:             srli         a4, s6, 16
                  sub          t1, zero, sp
                  slti         s6, s2, -161
                  sub          t4, s0, s3
                  slti         s5, s9, 493
                  bltu         s2, s3, 1546f
                  andi         t4, gp, -1155
                  ori          a4, s5, -245
                  sltiu        a1, s8, 68
1544:             bne          a2, s1, 1553f
                  sra          t5, sp, a0
1546:             xori         a4, t1, 953
                  srli         s10, t6, 23
1548:             slti         t6, a7, -1283
                  bge          s7, s11, 1554f
                  lui          a7, 324469
                  beq          a7, s5, 1562f
                  srai         s0, t3, 13
1553:             slli         s6, t3, 27
1554:             blt          gp, s6, 1569f
                  sll          t2, s11, s3
                  sll          s9, s4, a3
                  sub          gp, s5, sp
                  sltu         s6, tp, t0
                  slti         s10, s1, -1231
                  or           t1, a7, ra
                  auipc        s11, 371231
1562:             srai         s1, s8, 21
                  blt          sp, zero, 1577f
                  sltiu        a6, gp, 165
                  sll          a0, s3, t0
                  sltu         a7, t5, t5
                  ori          t6, s1, -700
                  add          s1, s3, s8
1569:             sltiu        s3, a6, -20
                  slli         t0, gp, 13
                  or           t2, s0, sp
                  auipc        s9, 302480
                  lui          tp, 801391
                  nop
                  lui          gp, 746577
                  srli         t1, s4, 6
1577:             slt          s2, s11, s3
                  andi         a0, t1, 975
                  blt          t5, a6, 1599f
                  bltu         zero, t2, 1590f
                  bge          s11, gp, 1595f
                  sll          t0, a0, a0
                  bgeu         s11, a4, 1595f
                  sll          s9, s1, t5
                  slt          s5, s2, t3
                  bge          s1, a6, 1592f
                  lui          a2, 334364
                  blt          t2, t6, 1597f
                  bltu         s10, ra, 1609f
1590:             lui          a1, 151849
                  bge          sp, s4, 1602f
1592:             sltu         s3, s1, a2
                  srl          gp, s2, s11
                  srai         a0, a7, 20
1595:             nop
                  sra          s10, a0, t4
1597:             sll          tp, a6, t4
                  or           a4, s9, a7
1599:             xor          t0, s7, s4
                  lui          t2, 358479
                  bge          zero, s6, 1620f
1602:             sra          s6, t3, s6
                  blt          a1, gp, 1609f
                  or           a3, zero, sp
                  sltiu        t5, a7, 1631
                  sltu         t2, s8, a2
                  xor          s2, ra, s4
                  sra          a4, a5, t4
1609:             srli         s5, a1, 26
                  srl          t2, s11, zero
                  sll          s6, t0, sp
                  and          t1, s10, a4
                  lui          s4, 986488
                  ori          a4, a0, 268
                  sltu         t2, t2, gp
                  srl          s0, a1, s7
                  sltiu        a1, s9, 707
                  lui          a7, 922130
                  sra          tp, s10, tp
1620:             andi         s1, s1, 841
                  ori          s9, t6, -859
                  andi         s4, s4, -647
                  ori          t0, t3, 1000
                  bltu         t0, s8, 1633f
                  and          s3, ra, a7
                  blt          s7, t2, 1631f
                  xori         s10, s5, -1514
                  bltu         s2, s11, 1632f
                  addi         tp, t2, 1137
                  sll          zero, sp, s7
1631:             srli         t0, a2, 27
1632:             sub          a6, s3, a7
1633:             slli         t1, s1, 0
                  or           s3, ra, s11
                  blt          t4, s6, 1650f
                  lui          t6, 1015799
                  slti         gp, s2, 741
                  sub          t5, t6, s1
                  addi         t5, s10, -847
                  nop
                  add          a7, s10, s3
                  auipc        a5, 618477
                  slt          a6, t5, s2
                  srli         t2, t6, 2
                  slt          a7, a2, a5
                  and          s10, s9, ra
                  srai         s6, gp, 21
                  and          a1, s8, zero
                  or           s5, s3, s11
1650:             srl          t3, tp, t2
                  xori         a1, s5, 365
                  add          a3, s11, s7
                  slli         t0, s4, 31
                  lui          a7, 805358
                  sltu         t0, t4, s0
                  and          a3, zero, a2
                  sltu         tp, s11, a1
                  slti         s4, s11, 1214
                  srai         t4, t0, 16
                  slt          zero, a6, a7
                  beq          s7, s10, 1662f
1662:             bltu         a3, t5, 1682f
                  and          s11, s0, t4
                  slli         s10, t5, 1
                  srli         a1, t1, 11
                  sub          s2, t4, t1
                  srai         s10, gp, 27
                  sltu         s4, t0, a2
                  bgeu         a0, t6, 1673f
                  slti         a7, s7, 1212
                  and          t5, s2, s8
                  beq          s10, t3, 1680f
1673:             nop
                  slli         s2, s3, 18
                  sub          t1, s11, a3
                  srli         a6, s11, 16
                  nop
                  bltu         t0, a2, 1680f
                  bltu         t6, ra, 1697f
1680:             sltu         s4, t5, a3
                  sub          s4, t5, a0
1682:             nop
                  xori         t4, t4, -1288
                  blt          a5, s8, 1689f
                  xori         gp, s10, -1617
                  and          t2, s6, t3
                  bltu         s7, t0, 1695f
                  slt          t5, s1, s2
1689:             or           gp, s1, a7
                  bne          a3, t1, 1692f
                  srl          s5, s7, ra
1692:             bgeu         t2, a6, 1699f
                  auipc        s5, 270277
                  ori          t4, s2, -1828
1695:             sltu         s9, s7, zero
                  slli         t6, s3, 15
1697:             auipc        a0, 178788
                  slli         a7, s8, 27
1699:             add          t4, s6, a2
                  slli         s1, sp, 3
                  beq          s6, t4, 1703f
                  or           s4, ra, s8
1703:             lui          a0, 727141
                  srl          a5, s10, gp
                  xor          gp, s7, s8
                  srl          s5, t5, tp
                  srl          s5, a2, s11
                  bne          a5, zero, 1710f
                  xori         a3, s3, -2005
1710:             bne          a2, s3, 1712f
                  sub          s0, a1, t4
1712:             srl          s10, s8, s4
                  and          s6, s1, tp
                  sltiu        a4, t6, 1582
                  and          t0, a7, s4
                  xor          s2, t0, s9
                  bltu         a6, s8, 1729f
                  sra          a5, s6, s3
                  nop
                  sra          s9, tp, s6
                  xori         gp, a0, -443
                  sll          a4, a6, s5
                  slli         s5, t2, 0
                  bltu         t5, a1, 1744f
                  srl          a6, a1, s11
                  srai         s1, sp, 29
                  bgeu         a7, sp, 1729f
                  add          a1, t0, a6
1729:             bgeu         sp, s5, 1738f
                  bgeu         a0, s4, 1732f
                  slti         s5, a1, 1074
1732:             bge          a3, s6, 1738f
                  bne          s8, t2, 1742f
                  beq          s5, a7, 1745f
                  sltu         t4, a3, a5
                  sltiu        t2, t3, -1519
                  sltu         s5, a0, s7
1738:             xori         s3, tp, 260
                  addi         s8, zero, 1209
                  slt          s1, t1, a5
                  sltu         a2, s7, s7
1742:             ori          s8, t3, -342
                  or           s0, t0, s11
1744:             slt          s10, s9, a1
1745:             nop
                  sll          t1, a1, tp
                  lui          s0, 563922
                  sll          a6, a3, gp
                  srl          tp, s5, s1
                  xor          a7, s9, s7
                  sub          t4, t0, s2
                  blt          a1, s10, 1753f
1753:             and          a3, s7, a4
                  beq          s1, s2, 1765f
                  sltu         t3, a2, a2
                  addi         s8, s7, 79
                  slti         t0, t5, 1354
                  xori         tp, s10, 1632
                  addi         tp, a3, 509
                  sltiu        a1, s11, -676
                  xor          t0, s11, s10
                  sub          s3, s5, t3
                  xori         a0, t6, -1801
                  sub          t1, gp, tp
1765:             xori         zero, s4, -2017
                  srai         t5, t1, 11
                  sub          gp, s4, a4
                  add          t2, a0, s0
                  add          t4, s0, s0
                  bgeu         s3, zero, 1772f
                  sub          a7, ra, t1
1772:             addi         s0, s10, 409
                  and          s3, a1, ra
                  blt          s9, s7, 1794f
                  srai         a4, s10, 8
                  xori         t4, a3, -1012
                  and          t4, sp, ra
                  xor          s10, tp, t5
                  andi         s6, gp, 1879
                  and          s11, a2, sp
                  sub          s10, t6, a6
                  blt          a5, s3, 1801f
                  srli         a3, s8, 0
                  auipc        s2, 885218
                  sltu         s2, a6, gp
                  nop
                  bge          a7, s2, 1791f
                  auipc        t0, 715043
                  bne          s10, a0, 1794f
                  add          t5, ra, s1
1791:             slli         s6, ra, 31
                  sub          s2, t2, t5
                  or           s11, a4, gp
1794:             xori         tp, t5, -955
                  srl          t0, s8, s5
                  addi         s9, s6, 63
                  sub          s0, a2, s3
                  or           s1, a4, s0
                  or           gp, a7, s11
                  sll          t5, gp, s3
1801:             ori          a2, a1, 1598
                  or           t6, s3, a5
                  sll          s2, s6, zero
                  sltiu        t2, t5, 1822
                  andi         s10, gp, -373
                  bltu         zero, s4, 1816f
                  beq          gp, t1, 1812f
                  slli         s4, ra, 29
                  xor          a3, s4, a7
                  sltu         gp, s8, t2
                  addi         s9, t1, -684
1812:             srai         s3, s4, 17
                  auipc        t4, 57955
                  bne          a2, s4, 1820f
                  andi         s8, s10, 457
1816:             slti         zero, s2, 959
                  addi         a0, s3, -1047
                  srl          a6, s10, zero
                  sub          a3, s6, s6
1820:             sra          a6, s4, s10
                  sltu         t5, s11, t0
                  auipc        t4, 438261
                  addi         tp, s8, -270
                  ori          s6, a0, 1276
                  andi         s4, t0, -783
                  sltu         a1, zero, t5
                  beq          a6, s8, 1842f
                  slt          t4, a0, s7
                  or           tp, a3, s3
                  xor          s4, s3, a0
                  bltu         s4, s7, 1846f
                  slt          t5, a5, a3
                  sra          s1, s2, s4
                  beq          s6, zero, 1854f
                  beq          gp, a6, 1849f
                  andi         s6, s0, -1787
                  slt          a7, s9, s1
                  sra          s8, a6, s5
                  bltu         ra, gp, 1843f
                  slli         a6, t1, 0
                  srai         a0, s4, 20
1842:             bltu         a6, t5, 1856f
1843:             and          s4, sp, s6
                  srai         a7, s11, 24
                  sltu         gp, s7, a1
1846:             bne          s6, s9, 1853f
                  xor          a3, tp, s10
                  srli         s8, a3, 20
1849:             sub          a1, a7, a6
                  lui          a1, 25729
                  sub          a0, a6, a5
                  bge          t4, s3, 1870f
1853:             slt          t5, a0, s3
1854:             and          s4, a1, a3
                  addi         s9, t1, -1050
1856:             bge          s6, a7, 1864f
                  addi         s0, s7, -356
                  andi         zero, a2, 188
                  add          t0, s5, a4
                  xor          a4, ra, tp
                  bltu         zero, s6, 1866f
                  sub          s5, t2, s8
                  sub          t2, s6, a4
1864:             addi         t4, t0, -1469
                  andi         a6, a1, -102
1866:             addi         s4, s9, -1866
                  beq          a0, ra, 1875f
                  beq          t5, s10, 1888f
                  bne          s5, s3, 1875f
1870:             addi         s2, s4, -706
                  bltu         tp, gp, 1872f
1872:             bne          t2, s4, 1877f
                  xori         s4, s2, 1971
                  ori          t1, tp, 227
1875:             bne          s3, s0, 1880f
                  xor          t0, t4, sp
1877:             slt          gp, s7, t4
                  lui          t2, 201077
                  blt          a1, t1, 1893f
1880:             bltu         s10, t6, 1884f
                  beq          a5, t1, 1891f
                  blt          s11, s2, 1897f
                  bltu         s1, s5, 1897f
1884:             ori          a0, s2, -574
                  auipc        t2, 988794
                  slti         t2, zero, 378
                  srli         s6, tp, 28
1888:             blt          a7, ra, 1897f
                  add          s3, ra, a0
                  la           s2, region_1+1749 #start riscv_load_store_rand_instr_stream_16
                  sra          s8, sp, s11
                  lbu          t0, -128(s2)
                  lbu          t4, 190(s2)
                  lw           tp, -149(s2)
                  sh           a3, 237(s2)
                  sb           t2, -8(s2)
                  or           a5, t5, ra
                  sll          a7, ra, zero
                  lbu          s0, 64(s2)
                  sh           s3, -87(s2)
                  srai         s9, s5, 3
                  sb           a7, -195(s2)
                  nop
                  sw           ra, 39(s2)
                  xor          a0, s0, a1
                  lw           s10, 75(s2)
                  sltiu        tp, s1, -887
                  slli         t1, t5, 4
                  sra          s1, a1, s0
                  lhu          t1, 177(s2)
                  srai         s1, s0, 13
                  srai         s4, s8, 7
                  lb           t1, 73(s2)
                  sb           a1, 230(s2)
                  srl          s1, t4, ra
                  sb           s2, -178(s2)
                  lhu          t3, 75(s2)
                  sra          s8, a5, a3
                  lh           zero, 33(s2)
                  addi         a2, a7, 1424
                  lbu          s0, -8(s2)
                  sh           gp, 219(s2)
                  lbu          s4, -22(s2) #end riscv_load_store_rand_instr_stream_16
                  slli         t4, s9, 16
1891:             sltiu        t6, s6, -1309
                  beq          t0, sp, 1903f
1893:             nop
                  slti         s10, s7, 1948
                  or           t4, s9, t3
                  or           t4, s0, s6
1897:             bgeu         zero, a4, 1899f
                  srl          zero, t3, ra
1899:             srai         a4, s4, 30
                  auipc        s8, 752970
                  slt          s11, s10, s4
                  slti         a6, a1, -74
1903:             sltiu        zero, s10, 1818
                  beq          s0, t0, 1922f
                  bne          t4, a2, 1913f
                  andi         gp, a3, 1102
                  nop
                  srl          s10, gp, a7
                  bltu         a0, t6, 1928f
                  blt          s8, a1, 1930f
                  bltu         t4, zero, 1917f
                  blt          s11, s9, 1914f
1913:             xori         s3, s2, 609
1914:             sub          tp, ra, s8
                  addi         s11, s4, 142
                  xori         tp, s3, -861
1917:             srli         s5, zero, 29
                  slti         t3, zero, -1092
                  andi         t6, sp, 1716
                  sltiu        t0, t3, -1902
                  auipc        t5, 690988
1922:             sub          s3, gp, s3
                  sub          a2, t1, t6
                  auipc        t4, 174791
                  xor          a5, a2, s7
                  lui          s2, 698173
                  or           s2, a5, s0
1928:             nop
                  auipc        tp, 321665
1930:             srai         a7, t3, 6
                  xor          s5, s5, s11
                  sub          a6, s2, t2
                  slt          s6, s10, a5
                  bgeu         zero, tp, 1942f
                  xori         s1, a1, -544
                  sra          s8, a4, t1
                  sltu         a7, tp, t6
                  sub          a4, a0, s4
                  addi         s2, t4, -1114
                  bge          t0, a4, 1944f
                  slt          gp, t1, s1
1942:             nop
                  slli         s10, s3, 13
1944:             ori          s10, a0, -1532
                  sltiu        a6, s4, 1744
                  add          s8, s3, s1
                  sltu         t5, s5, t6
                  srai         s11, s6, 25
                  and          zero, s0, s3
                  or           zero, t5, s1
                  slli         s11, a0, 10
                  sltu         t4, s0, s2
                  add          s2, t4, a0
                  xor          s2, s8, s8
                  bltu         gp, a1, 1975f
                  beq          s1, t3, 1961f
                  bltu         sp, a2, 1959f
                  xor          t4, a0, s5
1959:             beq          a1, zero, 1971f
                  and          a2, s11, tp
1961:             beq          t3, a7, 1972f
                  srai         gp, s7, 4
                  auipc        a0, 759368
                  lui          s8, 674877
                  bltu         s5, a5, 1967f
                  bne          t1, s1, 1981f
1967:             srl          t2, s2, a2
                  srai         a6, s5, 28
                  bge          s3, ra, 1976f
                  slti         zero, s10, -1671
1971:             bge          t4, s1, 1980f
1972:             bgeu         gp, t4, 1991f
                  slli         s2, t6, 22
                  sra          s2, gp, s9
1975:             ori          t1, s2, -140
1976:             bne          t6, zero, 1981f
                  lui          t3, 778472
                  bgeu         t0, tp, 1980f
                  srli         t2, sp, 13
1980:             add          a7, t2, t0
1981:             blt          a7, s0, 1987f
                  nop
                  lui          a5, 281726
                  lui          s8, 963616
                  nop
                  bge          s11, t6, 1994f
1987:             sll          s3, s1, s11
                  slt          a5, zero, s10
                  slli         s5, t5, 28
                  sub          s9, s11, a3
1991:             sltiu        a5, s7, -1190
                  slt          tp, s4, a7
                  sltiu        zero, a4, 1929
1994:             slti         s8, s7, -1042
                  srli         t2, zero, 30
                  auipc        s4, 333968
                  sltu         t2, tp, a0
                  nop
                  srl          t6, gp, s6
                  lui          a6, 642278
                  andi         s5, t5, -1756
                  sltu         s0, s1, s5
                  nop
                  sra          t2, s10, t4
                  nop
                  sra          s5, a2, s1
                  auipc        s6, 644315
                  and          tp, s6, s1
                  andi         s6, a2, 1455
                  xor          s0, a6, s4
                  sltiu        t0, t3, -776
                  bgeu         a6, t3, 2016f
                  xori         s5, a3, -288
                  sll          t3, tp, t0
                  addi         s5, s11, 1328
2016:             srli         s6, s9, 8
                  sll          gp, a5, t1
                  sltu         t4, ra, sp
                  bge          a5, s5, 2039f
                  srli         s3, s0, 22
                  blt          s3, a2, 2030f
                  blt          s2, s11, 2034f
                  slti         t5, t3, -1824
                  bne          s1, t6, 2032f
                  xori         t5, a0, -414
                  sub          s0, s2, s8
                  srl          s2, a4, s4
                  sll          t3, s6, a6
                  sll          s1, s1, a6
2030:             andi         s6, a1, 722
                  sltu         gp, s10, ra
2032:             sra          t5, a5, s0
                  slt          s9, s3, a5
2034:             xor          a1, a4, ra
                  auipc        s11, 972150
                  nop
                  slt          a3, a7, zero
                  xor          a5, tp, s3
2039:             slt          a7, s4, s2
                  sra          s8, a5, s8
                  ori          a6, s0, -981
                  auipc        a7, 36232
                  or           t3, t0, a1
                  bltu         s4, t4, 2051f
                  xori         a5, tp, 925
                  nop
                  ori          s4, t0, -356
                  slt          a6, a6, t6
                  addi         s2, s4, -1833
                  xor          s5, t5, ra
2051:             blt          s0, a6, 2071f
                  xori         s2, a3, 1559
                  slt          t5, tp, t3
                  xori         tp, s11, 1593
                  sll          zero, a1, a5
                  auipc        t3, 277604
                  bge          a7, zero, 2059f
                  sltiu        s6, t5, -1722
2059:             sub          a2, a1, t1
                  auipc        t2, 163869
                  addi         s3, sp, 1777
                  xori         s6, s3, 1621
                  srli         s4, a6, 22
                  sll          s0, a4, s3
                  lui          s8, 740080
                  sll          t1, s2, s8
                  sltu         a3, a1, s7
                  sltiu        s0, s5, 1965
                  addi         a3, t4, -1912
                  beq          s0, t4, 2081f
2071:             xori         a6, t3, -167
                  bltu         a4, s7, 2077f
                  xor          s3, a4, s5
                  slt          a1, s0, s2
                  sub          a3, s3, a1
                  sltiu        s11, t5, -284
2077:             andi         t3, t6, 767
                  xori         s1, s6, -1527
                  andi         t4, tp, 1631
                  blt          t2, t5, 2094f
2081:             ori          s4, zero, -1225
                  srli         t6, s11, 19
                  sltiu        t1, a4, 86
                  nop
                  add          a2, a5, s0
                  srli         a3, a7, 13
                  add          s10, a6, t6
                  bge          a2, ra, 2099f
                  auipc        a6, 76550
                  bge          a2, a2, 2094f
                  addi         gp, s4, 1815
                  bge          s6, s10, 2106f
                  slt          t3, t1, t2
2094:             beq          t6, zero, 2114f
                  xori         s5, zero, -1644
                  srli         t1, a6, 3
                  sltu         s9, s6, gp
                  slt          s6, a5, t0
2099:             ori          a0, a1, -2045
                  srli         t2, t5, 3
                  lui          t6, 125087
                  auipc        a1, 987559
                  bltu         a6, s2, 2118f
                  slt          t6, sp, gp
                  lui          a6, 261128
2106:             sra          gp, s9, s1
                  srli         t1, t2, 6
                  or           gp, sp, s7
                  auipc        s5, 518601
                  ori          s4, ra, 794
                  ori          t6, s10, -1932
                  srli         s9, tp, 13
                  auipc        a2, 833571
2114:             bgeu         s1, t6, 2129f
                  bgeu         a0, s0, 2116f
2116:             nop
                  or           t5, ra, ra
2118:             blt          sp, a4, 2123f
                  sltiu        t2, s11, -1650
                  sub          s4, s0, a3
                  sub          s8, s5, s9
                  srli         t6, zero, 24
2123:             blt          s11, s3, 2132f
                  blt          s6, a2, 2142f
                  and          s5, s2, t6
                  sra          zero, a3, s11
                  xori         s11, t0, -857
                  slli         s9, t2, 13
2129:             sub          t3, s7, a4
                  add          s3, t0, s7
                  xori         s8, s0, 639
                  la           s4, region_0+1220 #start riscv_load_store_rand_instr_stream_6
                  xor          a3, s1, s2
                  addi         s3, sp, -1677
                  sh           t3, -964(s4)
                  slt          t4, tp, a2
                  lb           s9, -1051(s4)
                  xor          s6, t0, s10
                  lbu          s6, -575(s4)
                  srl          a3, a0, a6
                  sltiu        s6, t5, -114
                  lh           s2, -820(s4)
                  lhu          s9, -392(s4)
                  ori          a6, a0, 1072
                  addi         s5, a5, 1195
                  lb           a3, -843(s4)
                  and          s10, a5, t3
                  lb           zero, -801(s4)
                  or           t6, ra, a3
                  srli         t4, t2, 9
                  sb           s11, 705(s4)
                  lhu          s5, -124(s4)
                  sll          s0, s5, s8
                  lhu          t6, -746(s4)
                  lhu          gp, -870(s4)
                  lbu          t2, 393(s4)
                  sra          s6, s10, t4
                  lhu          s11, 58(s4)
                  slt          zero, t4, gp
                  sh           a1, 238(s4)
                  lbu          t1, -1101(s4)
                  or           a4, s6, a2
                  lbu          t2, -719(s4)
                  and          s3, t4, a4
                  and          a6, t3, s8
                  slli         t1, a3, 31
                  lb           s5, 54(s4)
                  sb           s5, 400(s4)
                  lb           a6, -749(s4)
                  lb           a4, -443(s4)
                  sw           a6, -236(s4)
                  sll          a5, t2, gp
                  sra          t5, s1, a3
                  srl          a0, s2, s2
                  srai         t4, s9, 16
                  lbu          s2, -1016(s4)
                  lb           t3, 71(s4)
                  srl          a2, gp, a2
                  lbu          t3, 507(s4)
                  lbu          s8, -571(s4)
                  slli         t5, s3, 19
                  sltu         a7, s6, tp
                  lbu          s3, -189(s4)
                  sb           a2, 681(s4)
                  and          t3, a0, t6
                  sub          t3, s0, t3
                  lhu          s8, 216(s4) #end riscv_load_store_rand_instr_stream_6
2132:             ori          s2, s4, 1602
                  ori          a4, s0, 503
                  beq          a7, s3, 2136f
                  auipc        a0, 437258
2136:             addi         a6, s2, -832
                  nop
                  and          s1, s6, a5
                  srai         t2, t6, 13
                  sra          s4, a4, t2
                  xor          t2, s0, t4
2142:             sltu         t1, a7, s7
                  andi         t3, t0, -253
                  blt          gp, s4, 2154f
                  beq          a1, s11, 2151f
                  slti         t6, t6, -1072
                  slt          t3, s2, t2
                  nop
                  slti         a3, t5, 1674
                  bge          s6, s1, 2152f
2151:             srai         s2, s11, 29
2152:             and          tp, a1, a5
                  beq          s4, t3, 2173f
2154:             slti         t5, a4, -445
                  beq          s1, t4, 2170f
                  bge          s3, sp, 2176f
                  blt          a4, t3, 2167f
                  slti         s6, gp, 1767
                  slli         s9, tp, 24
                  slti         t1, a0, 1567
                  auipc        s5, 419824
                  sll          a2, sp, a3
                  beq          s4, a7, 2177f
                  sltiu        a3, a0, -1215
                  andi         s10, s9, 770
                  sltiu        gp, t6, -2014
                  la           s6, region_0+1461 #start riscv_load_store_rand_instr_stream_3
                  sltu         tp, s11, s3
                  addi         tp, t0, -1187
                  srl          s5, t3, a4
                  ori          zero, s1, -2019
                  srai         t3, a5, 13
                  xor          gp, s1, s2
                  srli         a0, ra, 20
                  srl          gp, t4, gp
                  srli         s0, zero, 14
                  or           a1, t0, s3
                  sb           s5, -11(s6)
                  lbu          t3, -6(s6)
                  sh           t2, -13(s6)
                  lbu          s11, 15(s6)
                  lbu          t6, -1(s6)
                  sltiu        s3, t5, -620
                  sltiu        gp, s7, -472
                  sb           s3, -8(s6)
                  addi         a5, s0, 1391
                  sw           s3, -13(s6)
                  lhu          t5, -13(s6)
                  srai         a2, t4, 27
                  ori          t2, t0, 1549
                  sra          zero, s6, a6
                  sw           s1, 7(s6)
                  auipc        s3, 869972
                  sb           t3, 6(s6)
                  nop
                  sh           a7, -5(s6)
                  slti         a3, sp, 1271
                  lhu          a1, 13(s6)
                  add          t5, a6, a2
                  ori          a1, a4, 326
                  xor          a0, a7, zero
                  sltu         t4, s3, a2
                  sb           s11, -2(s6)
                  lbu          s0, -16(s6) #end riscv_load_store_rand_instr_stream_3
2167:             sltu         a7, gp, t5
                  blt          s11, a2, 2174f
                  blt          gp, s7, 2175f
2170:             sltiu        a1, a4, 1641
                  srli         s11, s10, 22
                  xor          s11, a5, a6
2173:             sltu         zero, s8, s8
2174:             bge          ra, s5, 2189f
2175:             bltu         a0, a2, 2182f
2176:             sltu         t2, s4, s7
2177:             xori         s1, s3, 1497
                  slli         t3, s3, 25
                  auipc        t0, 163476
                  add          s6, s3, t5
                  xor          s11, zero, a3
2182:             srl          a7, s11, s9
                  xori         a1, t6, 1301
                  sub          s4, s7, a4
                  blt          t1, a7, 2193f
                  slt          gp, t5, a4
                  addi         tp, a0, -567
                  slli         a5, s4, 8
2189:             addi         a6, a1, 408
                  bltu         gp, s10, 2195f
                  or           t5, a7, s0
                  srl          zero, a3, a3
2193:             addi         s4, s7, 705
                  bltu         s5, s10, 2198f
2195:             srai         s6, a5, 8
                  and          s4, s9, s4
                  bne          t2, t2, 2206f
2198:             sll          t5, a0, t3
                  sltiu        a2, s8, -1061
                  slt          a5, s0, t2
                  lui          s8, 258855
                  sra          t4, a2, s10
                  ori          s8, gp, 1172
                  srl          s2, s3, a4
                  bgeu         s11, a3, 2225f
2206:             nop
                  bltu         sp, s9, 2225f
                  nop
                  bgeu         s5, s7, 2220f
                  slti         s2, s6, 1292
                  bgeu         ra, t6, 2225f
                  andi         t2, t0, 301
                  addi         zero, ra, -652
                  or           a2, a7, a2
                  sra          t2, s9, s1
                  and          s8, s1, a1
                  sltu         s5, a1, a4
                  blt          s3, s3, 2223f
                  andi         s10, zero, -467
2220:             and          gp, s10, a4
                  bge          s11, a1, 2226f
                  srl          s9, s5, s7
2223:             bne          t4, a2, 2234f
                  slti         gp, t6, 1028
2225:             slti         t4, t2, -1932
2226:             lui          s1, 518653
                  sltu         a6, s8, s0
                  blt          t6, s3, 2230f
                  or           t4, s0, sp
2230:             srl          s4, s7, s8
                  srai         a3, a4, 14
                  sltiu        s11, t5, 446
                  srai         t2, gp, 15
2234:             bge          a2, t2, 2246f
                  lui          gp, 803333
                  sll          s1, a1, ra
                  andi         s8, s11, 161
                  blt          a1, s6, 2239f
2239:             bne          zero, a5, 2243f
                  xori         t0, s3, 1288
                  sll          a6, s4, s0
                  bltu         a4, t1, 2244f
2243:             slti         t2, a3, -666
2244:             srai         a0, a6, 12
                  add          s9, t1, a7
2246:             andi         a6, a4, 1381
                  beq          s5, a4, 2256f
                  lui          t2, 34069
                  slli         t0, t3, 22
                  bgeu         s7, s3, 2252f
                  blt          zero, s9, 2253f
2252:             sltiu        t1, s2, 1733
2253:             and          s11, tp, zero
                  bne          s5, s8, 2262f
                  blt          a2, a0, 2274f
2256:             slti         tp, a2, -291
                  sltu         a2, s7, s6
                  or           s5, t1, a5
                  sra          t6, t6, t2
                  and          gp, a4, a7
                  auipc        s2, 56317
2262:             lui          s10, 767163
                  or           t0, s11, a4
                  srl          s0, a5, s0
                  sra          t0, t0, s5
                  add          t2, s2, s2
                  slli         a0, a7, 7
                  slli         s0, gp, 23
                  bne          a3, s7, 2283f
                  sra          t5, s4, t6
                  srli         s10, t5, 26
                  slli         s6, gp, 24
                  addi         s8, s0, -1499
2274:             blt          a2, t3, 2282f
                  srli         a1, s11, 22
                  auipc        s4, 682453
                  beq          s10, a4, 2297f
                  sll          s4, a7, a1
                  sra          s2, s6, s8
                  or           a1, t4, a4
                  lui          a5, 827958
2282:             and          s4, a5, a3
2283:             bltu         a5, s6, 2285f
                  srai         t2, a7, 3
2285:             nop
                  bge          t5, a0, 2294f
                  and          s2, s9, a2
                  srl          s11, t3, a7
                  slti         a5, tp, 1298
                  slli         s6, s5, 16
                  srl          t0, s9, s0
                  slt          t0, zero, s0
                  add          zero, ra, sp
2294:             auipc        a3, 45787
                  or           t5, t4, s4
                  bne          a7, s11, 2311f
2297:             sll          t3, a7, a3
                  sra          t0, s10, s4
                  xori         s10, a6, 1930
                  srl          zero, t2, s2
                  srl          s5, s5, t6
                  beq          s5, s3, 2304f
                  srli         t0, s6, 6
2304:             andi         t4, ra, -803
                  xori         s8, s9, 1214
                  sltiu        a4, t1, 1785
                  slt          gp, t4, s8
                  sll          t1, s10, s4
                  lui          s2, 161109
                  nop
2311:             bgeu         s3, t2, 2329f
                  slli         zero, a7, 20
                  sub          a4, a0, s2
                  slti         t4, a1, -402
                  bgeu         gp, t5, 2335f
                  beq          a2, s7, 2336f
                  addi         a0, s6, -2021
                  slt          s5, s7, s11
                  slli         t0, s10, 24
                  sltiu        a2, t4, -1437
                  sltiu        zero, gp, 1562
                  addi         t5, t4, -2017
                  andi         s10, s11, -446
                  auipc        zero, 372443
                  slt          s4, a5, s4
                  bltu         s4, s9, 2336f
                  srl          s3, sp, t1
                  addi         t6, gp, -1517
2329:             addi         t2, a5, 1565
                  or           t5, a5, s5
                  sltu         tp, a6, a1
                  sltiu        t3, t3, 1268
                  beq          t5, a7, 2352f
                  bge          t4, a4, 2348f
2335:             beq          s8, t5, 2340f
2336:             sub          a2, s1, a7
                  xor          a7, s3, a4
                  auipc        a2, 163019
                  add          a2, a0, s9
2340:             auipc        a0, 980970
                  sltu         s11, s5, t0
                  xor          s2, t6, s7
                  xor          s8, s5, a0
                  srli         s4, s11, 26
                  bne          s7, a4, 2356f
                  srl          t6, t3, t2
                  sub          s10, s1, t2
2348:             slli         s2, a3, 1
                  bne          t1, a7, 2358f
                  xori         tp, a4, -953
                  beq          a0, a3, 2356f
2352:             bge          t5, a0, 2358f
                  and          s0, ra, ra
                  slt          a6, a4, s1
                  srl          s0, t4, s9
2356:             bne          gp, s4, 2371f
                  lui          s4, 429822
2358:             auipc        s9, 122926
                  slti         s11, s0, 469
                  sltu         zero, s6, s3
                  xor          s11, s9, t4
                  srli         a7, zero, 15
                  blt          a6, s9, 2368f
                  beq          t6, s2, 2366f
                  sll          s2, s2, t2
2366:             auipc        a4, 976503
                  and          s4, t3, sp
2368:             xor          s10, a7, a3
                  nop
                  lui          s4, 835157
2371:             xori         s11, t4, -18
                  bgeu         a6, s9, 2381f
                  bgeu         t6, s5, 2377f
                  sra          s5, sp, t0
                  addi         s0, ra, 343
                  sltu         a6, a7, a1
2377:             srli         gp, s6, 14
                  bne          s11, a0, 2384f
                  bge          gp, s8, 2386f
                  add          a2, a1, s7
2381:             bgeu         s0, a4, 2393f
                  addi         t3, tp, -1053
                  sll          a5, s2, s11
2384:             sltiu        s4, gp, 94
                  sltiu        gp, s4, -1926
2386:             sub          a5, s2, t2
                  sll          s0, a0, tp
                  srai         s2, tp, 27
                  sltu         t6, s8, s5
                  slli         a1, t3, 26
                  sltu         s2, a4, s0
                  or           s1, a4, zero
2393:             addi         t1, a0, -49
                  addi         t3, zero, -1710
                  beq          t4, s7, 2399f
                  nop
                  slt          s1, a7, tp
                  or           gp, a2, gp
2399:             sll          tp, s7, t4
                  addi         t3, t6, 533
                  xor          s5, s3, a6
                  blt          s6, s10, 2404f
                  slli         s1, s2, 23
2404:             xori         s3, a0, -119
                  lui          t2, 168498
                  andi         t5, t3, 246
                  bltu         s8, s5, 2408f
2408:             slli         t6, s9, 14
                  bgeu         s7, t3, 2412f
                  ori          t2, s11, -1443
                  add          s11, s10, a3
2412:             srl          t1, tp, a2
                  xor          s4, s6, s9
                  sub          a1, s1, s4
                  slti         s4, ra, -292
                  sltiu        s0, a6, -351
                  srai         s6, s8, 16
                  sltu         t0, a4, ra
                  nop
                  slt          t5, s11, s4
                  lw           t1, 4(s7)
                  add          t3, t4, a1
                  addi         s7, s7, 60
                  slt          s9, s5, zero
3202:             addi x10, x6, 1
3202:             jalr x10, x10, 0
sub_3:            bge          s3, t5, sub_3_stack_p
                  xor          s11, s8, a3
sub_3_stack_p:    addi         s7, s7, -24
                  sltiu        t5, a0, 884
                  sw           t1, 4(s7)
                  ori          t3, a3, 293
                  lui          s11, 215150
                  srai         a2, s7, 0
                  add          s8, zero, s7
                  slt          a1, t6, s4
                  blt          a0, t1, 17f
                  andi         s3, t3, -321
                  bne          s10, t1, 5f
5:                srai         a4, zero, 17
                  auipc        s9, 502415
                  bltu         gp, a2, 18f
                  or           zero, s5, s3
                  auipc        s11, 605748
                  ori          a7, s9, -563
                  beq          a1, t1, 22f
                  andi         t0, s3, 1525
                  bgeu         t0, a6, 20f
                  ori          s3, s11, -892
                  xor          s9, s8, tp
                  slti         s0, s1, -109
17:               bltu         s8, s7, 22f
18:               lui          t2, 370000
                  srli         t5, s3, 16
20:               and          t4, ra, a7
                  bge          s1, t6, 22f
22:               addi         s10, t6, -149
                  or           a3, a2, a4
                  lw           t1, 4(s7)
                  sltiu        a7, t1, -1014
                  srai         s11, a2, 8
                  addi         s7, s7, 24
                  add          a0, a6, a5
37:               addi x26, x6, 1
37:               jalr x26, x26, 0
sub_9:            add          t6, s11, s2
                  addi         s7, s7, -56
                  add          zero, a5, s10
                  sw           t1, 4(s7)
                  xori         a0, t3, -1167
                  andi         a6, s7, 532
                  bltu         t4, s11, 9f
                  add          s1, a2, t5
                  srl          a6, s0, s9
                  xor          t1, s6, s0
                  xori         s1, t4, 342
                  blt          t4, s2, 9f
                  or           gp, gp, s2
                  sltiu        t0, tp, -169
9:                or           t4, sp, a6
                  ori          a4, s0, 1742
                  lw           t1, 4(s7)
                  slli         t2, t0, 3
                  addi         s7, s7, 56
                  addi         s2, s11, -523
20:               addi x16, x6, 0
20:               jalr x16, x16, 0
sub_6:            add          a7, a7, s8
                  addi         s7, s7, -40
                  sltiu        s8, t0, -1455
                  add          t4, s5, s10
                  sub          tp, zero, t1
                  sw           t1, 4(s7)
                  slti         s9, zero, 782
                  auipc        a2, 598606
                  srai         tp, s3, 18
                  auipc        s8, 617918
                  auipc        a3, 433183
                  xor          s8, a6, t5
                  la           a1, region_0+976 #start riscv_load_store_rand_instr_stream_0
                  lb           a5, -25(a1)
                  sb           zero, -59(a1)
                  sub          s11, sp, t0
                  sltu         s1, a2, s0
                  sltu         s5, a7, t0
                  sb           sp, -21(a1)
                  sb           sp, 5(a1)
                  or           s0, t3, s4
                  lh           s8, -22(a1)
                  ori          s4, t5, -848
                  sb           s2, 33(a1)
                  ori          a7, a4, -1409
                  slli         a2, gp, 4
                  lbu          a3, -12(a1)
                  ori          a5, t3, -1928
                  slti         gp, a2, -1471
                  sb           sp, -13(a1)
                  lbu          a6, 0(a1)
                  auipc        t4, 108749
                  lb           a2, 36(a1)
                  lhu          a0, 20(a1)
                  sub          t2, a2, gp
                  lb           s0, 56(a1)
                  auipc        t3, 235517
                  add          t1, a7, a5
                  srli         t3, t5, 7
                  sltiu        a5, t5, 828
                  add          a6, t3, a2
                  lbu          t1, -8(a1)
                  sltu         s4, t0, s3
                  add          s3, s8, s7
                  srai         a6, tp, 3
                  or           a5, t1, s6
                  sra          a0, t0, zero
                  lb           a0, 18(a1)
                  slti         s8, s5, 1462
                  lb           a4, -59(a1)
                  lbu          s3, -60(a1)
                  srl          s1, s9, s2
                  xor          zero, s5, t4
                  auipc        t4, 1022855
                  lb           a2, -5(a1)
                  srai         tp, a7, 29
                  sb           tp, 13(a1)
                  lb           t1, -22(a1)
                  sltiu        t0, a6, 1236
                  lbu          t3, 57(a1)
                  lh           s0, -54(a1)
                  slt          s11, s7, a3
                  sltu         t3, s10, a3
                  lbu          a4, -16(a1)
                  lbu          s3, -47(a1)
                  lhu          a4, 34(a1) #end riscv_load_store_rand_instr_stream_0
                  or           t3, s2, s7
                  lui          t2, 858547
                  xori         zero, t0, 1193
                  slti         t5, s6, 1659
                  slt          t0, sp, s1
                  add          s5, t6, s11
                  sll          a3, t5, t1
                  blt          t4, gp, 12f
                  add          a2, a7, a0
                  beq          s0, sp, 17f
                  sltiu        a0, s6, 1206
                  slt          s0, a5, a5
12:               blt          ra, a7, 13f
13:               sub          a2, s5, s7
                  sub          a4, a7, s11
                  sltiu        s6, a1, 217
                  addi         tp, a5, -226
17:               bne          t4, t5, 26f
                  add          s2, t1, t4
                  bne          a5, a4, 28f
                  sra          s9, gp, s11
                  bge          a7, s11, 33f
                  bltu         t5, a7, 41f
                  ori          zero, t6, 355
                  bne          tp, s3, 41f
                  blt          ra, s7, 28f
26:               slti         s8, s11, -416
                  or           s9, a3, s9
28:               sub          s0, gp, s11
                  srl          t5, s6, s11
                  andi         a0, t5, -1246
                  slti         s4, a0, 1355
                  xori         s10, s11, -1330
33:               slt          s8, t3, tp
                  xor          s6, tp, s3
                  xori         t3, a4, 752
                  auipc        t3, 887745
                  srai         a1, s2, 13
                  sltu         a1, zero, s9
                  add          s1, t0, t1
                  sltiu        s3, t0, -1203
41:               nop
                  xor          s0, s8, t4
                  lui          s1, 977690
                  bgeu         a0, s10, 55f
                  xori         a0, s6, -233
                  bgeu         s3, a3, 61f
                  slli         s1, s10, 2
                  add          a7, s8, a7
                  andi         s1, a6, 1551
                  slti         t1, s3, 1112
                  or           s3, a7, s11
                  blt          t3, tp, 69f
                  slt          s9, a6, s9
                  blt          s8, t4, 73f
55:               sll          s11, s3, s8
                  andi         s4, tp, 1287
                  bge          sp, s10, 65f
                  sra          a3, s9, t1
                  sra          a6, s11, t5
                  and          t1, a1, s6
61:               add          a6, zero, t5
                  xori         t6, s3, -294
                  beq          a0, gp, 78f
                  andi         a4, s7, -1287
65:               ori          s10, s1, -164
                  bne          s8, s8, 85f
                  sll          s0, zero, s5
                  sltiu        s8, s0, -1445
69:               sltiu        t3, a0, -1696
                  bltu         a0, ra, 81f
                  auipc        t3, 87667
                  blt          s8, t4, 87f
73:               andi         s1, a6, 827
                  slt          s3, s6, ra
                  bge          a7, s3, 91f
                  sra          a6, s4, s6
                  sub          t0, a5, a0
78:               bge          a7, s2, 93f
                  and          a1, t0, a4
                  beq          a4, s9, 93f
81:               auipc        a3, 468605
                  srli         s2, a6, 15
                  or           t4, s8, s2
                  srl          t0, a1, s10
85:               bne          t2, s0, 99f
                  bne          s1, s9, 93f
87:               slli         s10, a2, 12
                  srli         a7, gp, 25
                  slli         s3, t3, 23
                  beq          a3, s5, 91f
91:               sll          a0, t6, zero
                  bgeu         a6, a4, 93f
93:               andi         s9, s11, 1563
                  srai         s2, t2, 21
                  sll          s11, s11, zero
                  addi         a3, s2, -407
                  sub          s9, s6, a1
                  andi         s3, s8, 1342
99:               sltu         s11, ra, s5
                  ori          s5, t1, -1432
                  srl          a5, zero, t6
                  sltiu        a1, a5, 683
                  addi         s10, t6, 429
                  slli         a4, t0, 31
                  bgeu         gp, s5, 121f
                  nop
                  beq          t4, s5, 109f
                  blt          t2, s5, 121f
109:              andi         s9, s3, 1217
                  sltiu        tp, tp, 3
                  srai         t2, tp, 14
                  sltu         a7, s10, t1
                  beq          zero, sp, 116f
                  addi         a3, s6, -846
                  nop
116:              andi         a4, s10, 1591
                  bgeu         gp, a3, 136f
                  xor          t5, a2, a0
                  xor          s3, a2, t3
                  xor          a1, a0, s8
                  nop
                  lui          s6, 158061
                  or           t5, t5, a6
                  bge          s0, s5, sub_6_j11 #branch to jump instr
                  sltu         t2, t4, s9
sub_6_j11:        jal          t1, sub_8 #jump sub_6 -> sub_8
                  nop
121:              xor          s4, s7, ra
                  xor          a6, s11, t5
                  or           t0, ra, a4
                  bgeu         ra, s8, 125f
125:              xor          gp, s11, a5
                  slti         zero, a2, 155
                  slli         a7, s10, 11
                  slti         t4, a1, -512
                  blt          s6, t5, 136f
                  srli         s11, ra, 2
                  or           tp, t1, s0
                  lui          s10, 109734
                  bltu         a3, t3, 136f
                  srl          tp, sp, t4
                  xor          a7, s0, gp
136:              or           t3, a7, s4
                  lw           t1, 4(s7)
                  sltiu        t5, a0, -2021
                  xori         t3, sp, -390
                  addi         s7, s7, 40
                  sub          s11, s9, s7
                  andi         tp, ra, 89
                  sra          t0, s8, ra
217:              addi x29, x6, 0
217:              jalr x29, x29, 0
sub_7:            xor          s3, a1, a3
                  auipc        a0, 623047
                  bne          s4, t1, sub_7_stack_p
                  sll          t3, zero, s8
                  add          s6, a0, a4
                  srli         a7, s4, 9
sub_7_stack_p:    addi         s7, s7, -52
                  srl          a6, t1, sp
                  sw           t1, 4(s7)
                  sltiu        s3, s9, 1972
                  nop
                  or           gp, gp, s9
                  srai         gp, s9, 24
                  addi         a6, tp, 1026
                  bltu         s11, t0, sub_7_j12 #branch to jump instr
                  sub          t0, a6, s3
                  srai         s5, tp, 4
                  or           s5, s10, t3
                  srli         s9, a4, 4
sub_7_j12:        jal          t1, sub_10 #jump sub_7 -> sub_10
                  sub          s0, a0, a4
                  slt          a3, sp, s10
                  sltiu        gp, s10, 1559
                  auipc        s3, 649182
                  slti         t2, s0, 560
                  beq          tp, a1, 16f
                  beq          gp, s10, 9f
                  slli         t0, s5, 4
                  sltu         s10, a5, t4
9:                and          s3, s9, a6
                  blt          a2, t2, 16f
                  bge          sp, t2, 16f
                  bge          t0, s10, 15f
                  srai         s8, s8, 23
                  srli         s11, a6, 1
15:               srl          tp, s3, t6
16:               sltu         a1, a1, a4
                  srli         t2, t2, 29
                  lw           t1, 4(s7)
                  sll          a2, s7, s3
                  nop
                  lui          tp, 715233
                  addi         s7, s7, 52
                  srl          t2, t5, t1
                  slt          s9, a6, s5
45:               addi x10, x6, 1
45:               jalr x10, x10, 0
sub_10:           bge          a5, sp, sub_10_stack_p
                  lui          a1, 89710
                  add          t3, a0, t1
sub_10_stack_p:   addi         s7, s7, -56
                  sra          s4, t5, tp
                  sw           t1, 4(s7)
                  slli         s3, s7, 22
                  slti         t0, s10, -1029
                  blt          s2, t6, 20f
                  andi         s10, s6, 1475
                  slti         s2, a0, -838
                  andi         a6, t3, -53
                  and          t0, gp, s11
                  and          s9, s6, s1
                  sub          a6, s2, t1
                  xor          a4, s10, s7
                  and          tp, s0, t6
                  sll          s9, s2, ra
                  bltu         a6, t1, 17f
                  and          a1, s3, s5
                  lui          s1, 300232
                  slti         t2, t4, -1856
                  slti         a4, t3, 1045
                  slli         a0, s9, 19
17:               auipc        a3, 1029028
                  add          t5, s10, a6
                  srli         a2, s11, 24
20:               sltu         t2, t5, s6
                  addi         t1, ra, 1413
                  srai         t5, s8, 3
                  beq          a3, a0, 37f
                  blt          a0, s6, 42f
                  nop
                  or           a0, t4, s0
                  add          t6, a3, t2
                  and          t1, t3, a6
                  sltu         a6, t4, s11
                  bgeu         a4, s1, 41f
                  sub          t1, t0, s4
                  bgeu         t4, a6, 42f
                  addi         zero, t1, 995
                  srli         t0, a5, 12
                  bge          zero, t1, 48f
                  srai         s5, s10, 12
37:               or           s2, a6, s9
                  slli         t6, s7, 22
                  add          t2, gp, a4
                  sltiu        s0, t2, -714
41:               bne          s2, s7, 50f
42:               andi         s9, s10, -1748
                  sltu         a6, s6, a6
                  sltu         s5, t5, zero
                  or           a4, s11, sp
                  nop
                  bge          zero, zero, 57f
48:               slt          t6, t0, sp
                  slti         a4, t3, -896
50:               srl          s2, a3, a1
                  beq          t2, t1, 68f
                  xori         a7, s3, -694
                  slli         s3, tp, 28
                  bgeu         gp, s6, 65f
                  lui          t0, 58916
                  bgeu         s7, a3, 67f
57:               bgeu         a3, s6, 71f
                  add          s6, s1, ra
                  addi         s5, tp, 827
                  bgeu         s6, s7, 63f
                  bltu         s6, s3, 75f
                  sltu         s8, s4, a5
63:               or           s9, t3, s5
                  bge          t6, s1, 65f
65:               sltu         s9, t1, s5
                  and          s11, zero, s11
67:               slti         s11, gp, -2040
68:               bne          s1, a3, 86f
                  sltiu        s9, s8, -309
                  slti         s4, sp, 554
71:               srl          s3, gp, a0
                  sll          t2, a6, s8
                  blt          t3, tp, 89f
                  sltiu        s6, s6, -149
75:               ori          a1, s9, 1446
                  bltu         t0, s0, 92f
                  bgeu         t2, t6, 94f
                  and          zero, s5, t4
                  lui          t6, 707773
                  srai         t1, s6, 16
                  sltiu        a0, s0, 1424
                  sltu         t4, a3, t2
                  slli         a5, t6, 0
                  auipc        s10, 708181
                  sltu         a7, sp, zero
86:               slt          s8, s10, s2
                  bge          t2, s9, 94f
                  bgeu         t1, a5, 94f
89:               sub          s8, a0, a5
                  slti         a0, s3, -1265
                  or           a6, sp, a0
92:               and          a6, s10, s2
                  lui          s0, 911545
94:               xori         a2, s5, 1852
                  lw           t1, 4(s7)
                  sra          t5, s2, s3
                  addi         s7, s7, 56
                  add          t5, t1, s8
                  xori         gp, t3, -1104
107:              addi x3, x6, 1
107:              jalr x3, x3, 0
sub_2:            sra          a2, t4, s1
                  lui          a4, 658006
                  srai         s3, t6, 6
                  sltu         zero, a1, t6
                  slli         a4, zero, 0
                  slli         t6, zero, 22
                  sll          t5, s3, s2
                  addi         s7, s7, -52
                  lui          s10, 287588
                  xori         s11, s5, -1107
                  sw           t1, 4(s7)
                  slti         s2, a7, -636
                  addi         s10, t3, -2012
                  andi         s3, a4, 1953
                  la           a6, sub_3
                  add          s2, a5, a4
                  srai         a7, s11, 7
                  ori          s8, t6, -1949
                  addi         a6, a6, -390
                  srl          a2, tp, s7
                  slt          a3, s1, s8
sub_2_j4:         jalr         t1, a6, 391 #jump sub_2 -> sub_3
                  la           a7, sub_6
                  sub          a6, sp, zero
                  srai         a4, a7, 8
                  addi         a7, a7, 277
                  add          a1, s0, s5
                  beq          a2, s3, sub_2_j5 #branch to jump instr
                  sltiu        a3, zero, -382
                  srai         s1, a6, 9
                  addi         t6, s7, -21
                  srl          s6, a6, t1
                  slt          a0, a2, t1
                  add          a4, s8, t4
                  slt          t0, a3, t5
sub_2_j5:         jalr         t1, a7, -276 #jump sub_2 -> sub_6
                  srl          t4, t6, s7
                  slt          t6, t0, tp
                  xor          t6, a2, s5
                  ori          s10, ra, -1263
                  nop
sub_2_j6:         jal          t1, sub_5 #jump sub_2 -> sub_5
                  auipc        s6, 308361
                  or           a1, s11, s9
                  slt          t4, t5, s6
                  sltu         t0, a0, t4
                  lui          t2, 764715
                  or           s1, s11, a4
                  bne          s11, a1, sub_2_j7 #branch to jump instr
                  addi         s1, a6, -1481
sub_2_j7:         jal          t1, sub_7 #jump sub_2 -> sub_7
                  xori         a3, s11, 358
                  sltiu        a4, a2, 1057
                  sltu         a3, a0, s10
                  blt          a4, s11, sub_2_j8 #branch to jump instr
                  auipc        s10, 364612
                  slt          tp, s3, t5
                  slt          s4, t0, s2
                  auipc        gp, 627677
                  sltu         s10, sp, s9
sub_2_j8:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  bgeu         s5, s11, 3f
                  xori         t1, gp, -1178
                  srai         t4, t1, 0
3:                xor          s1, a7, tp
                  and          t2, t0, a7
                  bge          ra, a2, 6f
6:                addi         s0, s0, -354
                  addi         s2, s7, -1302
                  sltiu        s10, s1, 413
                  sltiu        s10, ra, -813
                  lw           t1, 4(s7)
                  xori         t0, t0, 342
                  addi         s7, s7, 52
                  srli         a2, t3, 25
                  auipc        t4, 667006
76:               addi x17, x6, 1
76:               jalr x17, x17, 0
sub_5:            beq          s6, gp, sub_5_stack_p
sub_5_stack_p:    addi         s7, s7, -64
                  sw           t1, 4(s7)
                  sltu         s1, s9, a7
                  nop
                  auipc        a2, 1011284
                  and          zero, s10, a3
                  la           a1, sub_9
                  sltiu        t3, t3, -1952
                  addi         a1, a1, 580
                  ori          tp, a5, -1513
                  auipc        s5, 595569
                  bne          s8, t3, sub_5_j10 #branch to jump instr
                  nop
sub_5_j10:        jalr         t1, a1, -579 #jump sub_5 -> sub_9
                  slt          a7, s5, s0
                  srai         s2, a2, 7
                  nop
                  srai         a2, t4, 0
                  slt          zero, t1, tp
                  slti         a0, ra, 763
                  slti         a6, t6, -314
                  auipc        s5, 216040
                  slti         t1, s9, -400
                  sltu         gp, gp, s8
                  lw           t1, 4(s7)
                  sub          gp, gp, a1
                  sub          s8, s2, s6
                  srai         s3, sp, 18
                  addi         s7, s7, 64
                  sub          a1, s5, t6
                  lui          t3, 616031
                  sll          s11, zero, t5
                  xor          s5, a5, s3
34:               addi x4, x6, 1
34:               jalr x4, x4, 0
sub_1:            auipc        s9, 401646
                  slt          s11, gp, t3
                  slti         a7, s5, -1682
                  sll          t4, s10, tp
                  addi         s7, s7, -36
                  srai         t4, t0, 24
                  sw           t1, 4(s7)
                  addi         s1, sp, 1320
                  srli         t5, s0, 19
                  add          t4, s10, s8
                  sub          a6, s10, t2
                  sltiu        s5, a7, -1402
                  nop
                  la           s3, sub_2
                  addi         s3, s3, 791
                  lui          a0, 176672
                  srli         s6, s1, 7
                  srl          s2, t5, a0
                  bne          t4, a0, sub_1_j3 #branch to jump instr
                  sub          t4, s2, a7
sub_1_j3:         jalr         t1, s3, -791 #jump sub_1 -> sub_2
                  slt          t5, t6, a2
                  bltu         s8, tp, 8f
                  bgeu         a0, t5, 8f
                  or           gp, sp, s0
                  add          s8, a2, s5
                  xori         t2, s5, 1284
                  beq          a7, a0, 9f
                  bge          a3, s0, 9f
8:                addi         a6, s2, 1686
9:                slt          a3, s2, t0
                  lw           t1, 4(s7)
                  sra          s11, sp, zero
                  and          a3, s5, gp
                  addi         s7, s7, 36
                  and          tp, s10, s3
36:               addi x7, x6, 1
36:               jalr x7, x7, 0
sub_4:            slt          a6, a3, s5
                  lui          t6, 900108
                  addi         s7, s7, -8
                  sra          t2, zero, sp
                  sw           t1, 4(s7)
                  sltiu        s4, zero, -571
                  sub          t0, s1, a1
                  slti         t6, a5, -873
                  add          t4, t0, t3
                  ori          gp, t4, -1049
                  sltu         s11, gp, a2
                  bgeu         s10, s7, sub_4_j9 #branch to jump instr
                  slt          s10, tp, t3
                  srai         a4, a0, 23
                  addi         s1, a6, -238
                  slli         s6, s8, 9
                  xor          s2, a0, s6
                  nop
                  addi         gp, a0, -162
                  srai         s2, t0, 25
                  and          s8, t5, a3
sub_4_j9:         jal          t1, sub_8 #jump sub_4 -> sub_8
                  sltiu        t5, a7, -1808
                  and          s2, t6, s8
                  lui          s8, 731032
                  ori          a2, s10, 1188
                  nop
                  slli         a7, a1, 29
                  auipc        zero, 286584
                  sltu         a2, a7, t5
                  slt          s1, s1, t1
                  sll          tp, s7, tp
                  srli         a6, s11, 3
                  auipc        s11, 435287
                  sll          s1, ra, t6
                  ori          a1, ra, 914
                  slti         s8, t6, -1137
                  lw           t1, 4(s7)
                  slli         t6, a7, 5
                  addi         s7, s7, 8
                  slt          s6, s0, a3
41:               addi x15, x6, 0
41:               jalr x15, x15, 0
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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 0x1f
                  beqz x20, 1f
                  j mmode_intr_handler
                  1: la x1, test_done
                  jalr x0, x1, 0

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
                  add x2, x23, zero
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x20, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x20, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x20, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x20, x30, ecall_handler
                  li x30, 0x1
                  beq x20, x30, instr_fault_handler
                  li x30, 0x5
                  beq x20, x30, load_fault_handler
                  li x30, 0x7
                  beq x20, x30, store_fault_handler
                  li x30, 0xc
                  beq x20, x30, pt_fault_handler
                  li x30, 0xd
                  beq x20, x30, pt_fault_handler
                  li x30, 0xf
                  beq x20, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x1, test_done
                  jalr x1, x1, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x1, write_tohost
                  jalr x0, x1, 0

instr_fault_handler:
                  add x23, x2, zero
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
                  add x23, x2, zero
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
                  add x23, x2, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x23, x2, zero
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
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x23, x2, zero
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
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x23, x2, zero
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
