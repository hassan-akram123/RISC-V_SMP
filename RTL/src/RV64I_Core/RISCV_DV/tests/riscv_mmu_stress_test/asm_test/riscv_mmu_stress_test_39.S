.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x5, 0x40000100
                  csrw 0x301, x5
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x5, mtvec_handler
                  ori x5, x5, 1
                  csrw 0x305, x5 # MTVEC

mepc_setup:       
                  la x5, init
                  csrw 0x341, x5

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x5, 0x1800
                  csrw 0x300, x5 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x0
                  li x2, 0x95fae81d
                  li x3, 0xfd417a19
                  li x4, 0x0
                  li x5, 0x9d9bcf37
                  li x6, 0x80000000
                  li x7, 0x6
                  li x8, 0x6ab51734
                  li x10, 0x7d82467c
                  li x11, 0x5
                  li x12, 0x80000000
                  li x13, 0x80000000
                  li x14, 0x91bf4b7e
                  li x15, 0xf9947ab3
                  li x16, 0x80000000
                  li x17, 0x6
                  li x18, 0x5
                  li x19, 0x0
                  li x20, 0xf395083e
                  li x21, 0x0
                  li x22, 0xf3a550f5
                  li x23, 0x80000000
                  li x24, 0x0
                  li x26, 0x174cdf72
                  li x27, 0xf68605d3
                  li x28, 0x0
                  li x29, 0x0
                  li x30, 0xfa0b2e14
                  li x31, 0x16c35290
                  la x25, user_stack_end
main:             la           sp, region_0+1772 #start riscv_load_store_hazard_instr_stream_1
                  lbu          t1, -221(sp)
                  xor          s2, a5, s11
                  lw           a0, 128(sp)
                  sh           s6, 128(sp)
                  sh           s11, 128(sp)
                  lbu          a1, -6(sp)
                  sb           tp, 58(sp)
                  or           t2, t6, t3
                  lw           t4, -4(sp)
                  nop
                  lb           t5, 169(sp)
                  lb           a4, 169(sp)
                  lbu          t3, 169(sp)
                  sltiu        a7, a0, 1268
                  lbu          ra, 169(sp)
                  andi         s11, s3, -2020
                  lh           a3, -20(sp)
                  sh           gp, -20(sp)
                  sb           s5, 220(sp)
                  lh           tp, 220(sp)
                  or           zero, t1, ra
                  sh           s4, -188(sp)
                  lw           t1, -188(sp)
                  sb           s11, -180(sp)
                  lh           a1, -180(sp) #end riscv_load_store_hazard_instr_stream_1
                  la           sp, region_0+963 #start riscv_load_store_rand_instr_stream_4
                  lbu          s8, 388(sp)
                  lb           a5, -412(sp)
                  sll          s5, t4, t0
                  sh           a3, -349(sp)
                  sh           a2, -483(sp)
                  lb           t4, 860(sp)
                  or           t0, t0, s2
                  sltiu        t0, s6, -1419
                  addi         s2, s1, 1994
                  srai         s3, s9, 21
                  sub          s3, gp, ra
                  sra          t2, t0, s9
                  add          t0, a7, gp
                  sll          s0, s11, t1
                  and          a0, t3, s7
                  lb           t6, 300(sp)
                  xor          a2, s0, a4
                  sltiu        gp, s9, 1124
                  lbu          a0, 207(sp)
                  sub          ra, s3, t2
                  srai         zero, s10, 18
                  sltu         s0, s10, s5
                  xori         s3, gp, 1355
                  sra          s8, s3, t6
                  sb           t4, 932(sp)
                  lb           a0, 292(sp)
                  ori          a2, gp, -2018
                  ori          s10, s11, 132
                  nop
                  sh           t6, 227(sp)
                  lb           t4, 972(sp)
                  sb           t1, -945(sp)
                  sb           t2, 486(sp)
                  lb           a5, -566(sp)
                  lhu          s6, 147(sp)
                  sltiu        s11, t4, -1087
                  lbu          a1, 94(sp)
                  slt          a0, zero, t0
                  nop
                  sub          t2, t3, gp
                  sltiu        s2, a0, -347
                  xori         a5, zero, -1496
                  lb           a7, -642(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a4, region_0+349 #start load_store_instr_stream_0
                  lbu          sp, 4(a4)
                  la           t1, region_0+1871 #start load_store_instr_stream_1
                  la           s8, region_0+466 #start load_store_instr_stream_3
                  la           a5, region_0+1198 #start load_store_instr_stream_2
                  lb           s11, -27(s8)
                  lb           s2, 3(t1)
                  lw           t0, 54(s8)
                  lw           t3, -5(a4)
                  lbu          a1, -6(t1)
                  lhu          s2, 254(a5)
                  sh           a3, -15(a4)
                  lb           a3, -8(t1)
                  lw           s6, -15(t1)
                  sh           a2, 13(a4)
                  sb           s0, -129(a5)
                  sh           a5, 5(t1)
                  lhu          s6, -86(s8)
                  lbu          gp, 9(a5)
                  sb           s3, 1(a4)
                  sb           s4, 4(t1)
                  sb           s1, -218(a5)
                  lbu          t2, -253(s8)
                  lbu          t4, 10(a4)
                  sw           t0, -13(a4)
                  sh           a4, 9(t1)
                  sb           ra, -15(a4)
                  lbu          t6, -1(t1)
                  lhu          s0, -1(t1)
                  lbu          a0, 367(s8) #end load_store_instr_stream_3
                  sb           s10, 0(t1) #end load_store_instr_stream_1
                  lb           s11, -163(a5) #end load_store_instr_stream_2
                  lhu          a7, -3(a4) #end load_store_instr_stream_0
                  la           t5, region_0+1466 #start riscv_load_store_hazard_instr_stream_0
                  lh           s8, -10(t5)
                  add          a4, a6, a3
                  sb           s8, 11(t5)
                  sb           s4, -5(t5)
                  lbu          s2, -5(t5)
                  sb           a3, -3(t5)
                  lbu          a0, -3(t5)
                  lh           a0, -2(t5)
                  lh           s0, -2(t5)
                  lbu          t4, 11(t5)
                  lb           a5, 11(t5)
                  lhu          t1, -2(t5)
                  srli         tp, zero, 19
                  lh           t0, -16(t5)
                  lb           t2, -16(t5)
                  lh           a5, -16(t5)
                  lh           s8, -16(t5)
                  sw           s6, -14(t5)
                  sb           t2, -5(t5)
                  sb           s1, -5(t5)
                  auipc        a3, 478040
                  sb           a1, -5(t5)
                  sh           s1, 16(t5) #end riscv_load_store_hazard_instr_stream_0
                  la           s4, region_0+167 #start riscv_load_store_hazard_instr_stream_4
                  lbu          a7, 4(s4)
                  sb           s9, 4(s4)
                  sb           t1, -16(s4)
                  and          a7, a1, t5
                  xor          s10, s11, t3
                  sb           a6, -16(s4)
                  lbu          s10, -16(s4)
                  sb           gp, 8(s4)
                  lh           a3, -11(s4)
                  sb           s5, -11(s4)
                  lw           sp, -11(s4)
                  lbu          a4, -11(s4)
                  nop
                  sltiu        s10, t3, -674
                  lhu          t4, -11(s4) #end riscv_load_store_hazard_instr_stream_4
                  la           t5, region_0+417 #start load_store_instr_stream_4
                  la           s8, region_0+769 #start load_store_instr_stream_3
                  la           sp, region_0+1905 #start load_store_instr_stream_2
                  lbu          t1, 118(t5)
                  sb           s0, 13(t5)
                  la           ra, region_0+1659 #start load_store_instr_stream_0
                  sb           t0, -15(s8)
                  lbu          t4, -4(sp)
                  la           a6, region_0+1996 #start load_store_instr_stream_1
                  lb           t3, 150(t5)
                  lbu          t1, 16(s8)
                  lh           a1, 5(sp)
                  sb           gp, -6(ra)
                  lb           a2, -37(a6)
                  lbu          s2, -14(s8)
                  sb           zero, 121(t5)
                  sh           zero, 5(sp)
                  lh           t1, -7(ra)
                  lbu          s3, 1(a6)
                  lbu          t1, 2(s8)
                  lbu          t1, -6(a6)
                  lhu          s3, -9(sp)
                  lh           s11, -54(a6)
                  lb           a7, 10(s8)
                  lhu          s3, -5(t5)
                  lb           t6, 4(ra)
                  lw           a1, -24(a6)
                  lbu          zero, -238(t5) #end load_store_instr_stream_4
                  lbu          a3, 6(ra)
                  lb           a7, -31(a6) #end load_store_instr_stream_1
                  lbu          t6, -12(s8) #end load_store_instr_stream_3
                  lb           t1, 8(sp) #end load_store_instr_stream_2
                  lb           s2, 14(ra) #end load_store_instr_stream_0
                  la           t4, region_1+631 #start riscv_load_store_hazard_instr_stream_5
                  sh           s10, -57(t4)
                  sb           s10, -24(t4)
                  lb           s11, -24(t4)
                  sb           s1, -24(t4)
                  lb           s8, -46(t4)
                  add          a7, t2, s5
                  lbu          ra, -46(t4)
                  lh           t2, 19(t4)
                  lhu          tp, 19(t4)
                  sh           s7, -25(t4)
                  lh           s3, -25(t4)
                  lhu          a2, -25(t4)
                  lh           s5, -61(t4)
                  lbu          s6, 10(t4)
                  lb           s3, 50(t4)
                  lb           t3, 8(t4) #end riscv_load_store_hazard_instr_stream_5
                  la           s3, region_0+1120 #start riscv_load_store_hazard_instr_stream_2
                  sh           tp, -12(s3)
                  lhu          a1, -6(s3)
                  sb           s11, 11(s3)
                  xori         t0, s3, -154
                  lbu          ra, 11(s3)
                  slt          s11, t2, sp
                  lbu          a3, 11(s3)
                  sb           t1, 11(s3)
                  lh           s6, -6(s3)
                  sh           gp, -6(s3)
                  lb           a6, -6(s3)
                  lh           t0, -6(s3)
                  slt          a7, t5, s2
                  andi         t6, s7, -1007
                  sh           s9, -6(s3)
                  sb           t6, -9(s3)
                  lui          s5, 258906
                  lbu          t5, -4(s3)
                  lb           sp, -13(s3) #end riscv_load_store_hazard_instr_stream_2
                  la           t0, region_1+1486 #start load_store_instr_stream_4
                  la           gp, region_1+1947 #start load_store_instr_stream_3
                  la           a6, region_1+991 #start load_store_instr_stream_2
                  la           s11, region_1+1124 #start load_store_instr_stream_0
                  lbu          s4, -105(t0)
                  sb           a0, 198(a6)
                  lbu          a3, -16(s11)
                  sb           s0, 193(t0)
                  la           a7, region_1+92 #start load_store_instr_stream_1
                  lbu          t6, 115(a7)
                  lbu          s5, -1(s11)
                  sb           s1, 223(a7)
                  sb           a3, 221(t0)
                  lb           s2, -149(a6)
                  lbu          s0, -86(gp)
                  lw           t5, 89(a6)
                  sb           t2, 180(t0)
                  lb           t5, 49(a7)
                  sb           a2, -65(a7)
                  sb           s8, -43(a7)
                  lbu          s4, -3(s11)
                  sb           a2, 11(s11)
                  sb           s11, 245(a7)
                  lb           s6, -9(s11)
                  lbu          a3, 59(a7)
                  sh           a0, 218(a7)
                  sh           s0, 39(a6)
                  sh           s5, 152(t0)
                  sb           tp, -174(gp)
                  sb           s10, 245(t0)
                  sb           s9, 175(t0)
                  sb           s3, -148(a6)
                  lbu          s8, -129(gp)
                  lb           t2, 75(a6)
                  lb           t4, 147(t0)
                  lb           t6, -181(t0) #end load_store_instr_stream_4
                  sh           a5, -69(gp)
                  lb           t6, -30(gp) #end load_store_instr_stream_3
                  sh           t5, 199(a6) #end load_store_instr_stream_2
                  lw           sp, 140(a7) #end load_store_instr_stream_1
                  sb           ra, 11(s11) #end load_store_instr_stream_0
                  la           s5, region_1+1166 #start riscv_load_store_rand_instr_stream_3
                  auipc        a7, 389231
                  lb           gp, -195(s5)
                  lb           s10, 31(s5)
                  sb           t5, 251(s5)
                  xor          t0, s2, a0
                  lbu          ra, 61(s5)
                  addi         s3, s2, -1371
                  sb           s8, 222(s5)
                  xor          ra, s5, t0
                  lbu          t6, -171(s5)
                  lbu          zero, 227(s5)
                  sb           s9, -236(s5)
                  sll          t1, a6, t0
                  andi         s2, a5, -1575
                  slli         tp, t6, 16
                  sb           tp, 135(s5)
                  lhu          tp, -86(s5)
                  sra          t4, t1, s0
                  lbu          a3, 50(s5)
                  sltu         a0, a5, s7
                  and          a6, ra, s4
                  xor          s3, a3, a6
                  srli         a7, s4, 5
                  lb           t5, -243(s5)
                  lb           s0, -1(s5)
                  lb           s11, 172(s5)
                  srl          a0, a2, s2
                  lbu          s6, 250(s5)
                  auipc        a0, 90761
                  nop
                  lw           s4, -30(s5)
                  sw           t5, -246(s5)
                  slt          gp, t0, ra
                  add          ra, zero, t4
                  lbu          s0, -189(s5)
                  sw           a5, -90(s5)
                  sh           sp, -78(s5)
                  and          s11, t4, s2
                  sh           s9, -208(s5)
                  sw           ra, -218(s5)
                  lb           sp, 221(s5)
                  sb           s10, 213(s5)
                  lb           a4, 50(s5)
                  sb           t0, 59(s5)
                  slli         s10, t4, 1
                  xor          a0, s8, t6
                  sh           a5, -4(s5)
                  xor          a7, t3, s4
                  sh           a7, 168(s5)
                  lbu          s8, -187(s5)
                  lb           gp, -174(s5) #end riscv_load_store_rand_instr_stream_3
                  la           a0, region_1+1566 #start load_store_instr_stream_0
                  la           t5, region_1+794 #start load_store_instr_stream_1
                  la           a5, region_1+1453 #start load_store_instr_stream_2
                  lb           a1, 57(a0)
                  lb           t4, 91(a5)
                  lb           t6, -54(t5)
                  lb           a4, 17(t5)
                  sb           t5, 254(a0)
                  lb           s4, -109(a0)
                  lbu          s11, 468(a5)
                  sb           gp, -47(t5)
                  lb           s2, -1032(a5)
                  sb           tp, 27(t5)
                  lbu          a7, 9(a5)
                  sb           t5, -111(a0)
                  lbu          t1, -952(a5)
                  sb           s10, 57(a0)
                  sb           s6, 362(a5) #end load_store_instr_stream_2
                  sh           s0, 256(a0)
                  sb           a6, -47(t5)
                  sb           a3, 28(t5)
                  sw           s9, -150(a0)
                  lb           a6, -20(t5)
                  lb           s4, -45(a0)
                  sb           s3, 36(t5) #end load_store_instr_stream_1
                  lb           s10, 211(a0) #end load_store_instr_stream_0
                  la           sp, region_1+1454 #start riscv_load_store_rand_instr_stream_5
                  sll          a6, t5, t0
                  lui          gp, 526569
                  andi         t4, t1, 167
                  sw           s6, -6(sp)
                  lhu          ra, -4(sp)
                  srli         a4, zero, 3
                  xori         t1, a5, 1379
                  xori         tp, t5, -481
                  lbu          s10, 13(sp)
                  lb           s8, 1(sp)
                  sb           s3, 3(sp)
                  lbu          s5, 14(sp)
                  slt          a6, a6, a5
                  lbu          a3, 7(sp)
                  xori         t6, s11, 1264
                  lui          a0, 381945
                  sub          gp, s11, a0
                  sb           t4, -14(sp)
                  addi         t6, s1, -1049
                  lhu          s0, -12(sp)
                  sb           a2, 1(sp)
                  ori          a7, s9, 826
                  xor          s6, s10, s11
                  sb           s6, 10(sp)
                  lh           a5, 14(sp) #end riscv_load_store_rand_instr_stream_5
                  la           tp, region_0+1444 #start riscv_load_store_rand_instr_stream_0
                  sh           t0, -54(tp)
                  srai         s10, zero, 3
                  slli         zero, s9, 10
                  lb           s6, -46(tp)
                  sh           a3, -6(tp)
                  sb           s1, 57(tp)
                  sll          t5, ra, a5
                  srai         s3, s7, 8
                  add          s2, a5, a6
                  sb           zero, -57(tp)
                  sltiu        s4, tp, -1121
                  or           s0, sp, s9
                  sltiu        s10, t0, -1128
                  srli         s10, ra, 23
                  lbu          a6, 1(tp)
                  slli         s10, s10, 2
                  lhu          t2, -16(tp)
                  srl          s5, s7, a6
                  srli         a2, s6, 14
                  sw           a3, 16(tp)
                  sll          a6, t0, a3
                  lh           t3, -54(tp)
                  and          a0, t0, s8
                  xor          s10, t5, s8
                  lui          a2, 349630
                  xor          s8, zero, s1
                  sh           a5, 8(tp)
                  lbu          ra, 63(tp)
                  sltiu        a7, ra, 39
                  sb           ra, 33(tp)
                  lb           t6, 25(tp)
                  sra          t1, a5, a3
                  lh           t3, 62(tp)
                  and          t1, s7, t4
                  xor          s2, t0, s1
                  srl          s3, s5, a5
                  slt          t2, s9, a0
                  lbu          t6, -57(tp)
                  lbu          zero, 13(tp) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_1+1210 #start riscv_load_store_rand_instr_stream_1
                  lb           gp, 547(s5)
                  lh           tp, -234(s5)
                  lb           s10, -612(s5)
                  sltiu        ra, s5, 1232
                  sub          s11, s0, zero
                  srl          t3, t6, gp
                  andi         tp, s0, 58
                  srai         t6, t0, 0
                  sb           t2, 728(s5)
                  auipc        ra, 33338
                  lb           a0, -355(s5)
                  lbu          s11, 737(s5)
                  sltiu        a5, t0, 1661
                  lb           a0, 412(s5)
                  lh           a4, 484(s5)
                  sh           a4, -200(s5)
                  xori         s6, a7, 158
                  sub          gp, s2, gp
                  xori         t1, a1, 960
                  srli         a2, a6, 7
                  lb           zero, -245(s5)
                  sb           ra, -1163(s5)
                  add          a4, t0, s7
                  xor          a2, s4, a0
                  sltiu        t6, a6, 1333
                  srai         a2, s4, 24
                  sw           s5, 430(s5)
                  sub          a3, zero, s7
                  lb           t5, -659(s5)
                  slti         a4, s10, 251
                  sltiu        a7, ra, 201
                  sb           gp, 17(s5)
                  nop
                  xor          t3, s2, s5
                  sub          s8, zero, s10
                  slt          a2, t3, s7
                  sb           s11, 297(s5) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_1+1581 #start riscv_load_store_hazard_instr_stream_6
                  lb           a0, 11(a1)
                  sb           s5, 11(a1)
                  sh           s10, 11(a1)
                  lh           a7, 11(a1)
                  lh           a5, -9(a1)
                  sb           s8, -12(a1)
                  sb           t4, -12(a1)
                  lbu          t3, -12(a1)
                  slt          s3, s3, t6
                  andi         t3, t3, -854
                  lb           zero, -4(a1)
                  slli         s0, gp, 28
                  lbu          s0, -4(a1)
                  sb           s8, -5(a1)
                  lh           s11, -5(a1)
                  sb           s3, -5(a1)
                  lb           s8, -14(a1)
                  addi         t4, t1, -1425
                  sb           a3, -14(a1)
                  lb           sp, -14(a1)
                  lbu          t0, -16(a1)
                  sb           zero, -16(a1) #end riscv_load_store_hazard_instr_stream_6
                  la           t4, region_1+1211 #start load_store_instr_stream_3
                  la           s4, region_1+359 #start load_store_instr_stream_1
                  la           sp, region_1+164 #start load_store_instr_stream_2
                  lb           t3, 6(sp)
                  lb           a4, 44(t4)
                  la           t6, region_1+1454 #start load_store_instr_stream_0
                  sb           s0, -28(t4)
                  lh           gp, -133(s4)
                  lw           t5, 153(t4)
                  sh           s8, -65(s4)
                  sb           a4, -63(t6)
                  lb           t2, 16(sp)
                  lbu          s11, -130(t4)
                  lb           a2, 20(s4)
                  lbu          s11, 205(s4)
                  lhu          t3, 60(t6)
                  sw           t4, 34(t6)
                  lbu          t2, -49(t6)
                  lb           t5, -162(s4) #end load_store_instr_stream_1
                  lh           s11, -233(t4)
                  lbu          a0, -15(sp)
                  sb           tp, 156(t4)
                  sh           s1, 2(sp)
                  sb           a0, 15(sp)
                  lbu          s3, 1(t6)
                  lbu          s10, 13(sp) #end load_store_instr_stream_2
                  lh           s6, -36(t6)
                  lbu          a3, 255(t4) #end load_store_instr_stream_3
                  lbu          s2, -57(t6)
                  sb           a2, 64(t6) #end load_store_instr_stream_0
                  la           t6, region_1+611 #start load_store_instr_stream_1
                  sh           t4, 99(t6)
                  la           a2, region_1+361 #start load_store_instr_stream_0
                  lhu          gp, 35(t6)
                  lb           zero, 1178(a2)
                  lb           t0, -65(t6)
                  lh           s2, -181(t6)
                  lbu          t4, 216(t6) #end load_store_instr_stream_1
                  sh           sp, 389(a2)
                  sb           tp, 478(a2)
                  lh           a3, 643(a2)
                  lb           a1, 1142(a2)
                  sb           gp, -112(a2)
                  lbu          t5, 1544(a2) #end load_store_instr_stream_0
                  la           s11, region_0+439 #start riscv_load_store_rand_instr_stream_2
                  lbu          s0, 230(s11)
                  lbu          t5, -32(s11)
                  sb           s1, -24(s11)
                  andi         a2, t6, 701
                  xor          a5, s0, a0
                  addi         t6, s2, -166
                  lb           s6, -140(s11)
                  lhu          tp, -31(s11)
                  lb           gp, 230(s11)
                  lhu          a0, -189(s11)
                  lw           zero, 73(s11)
                  add          tp, a4, a1
                  sb           sp, 202(s11)
                  add          t2, tp, s7
                  lui          t6, 865609
                  sb           ra, 178(s11)
                  lb           t0, -141(s11)
                  add          gp, a6, t6
                  slti         s6, ra, 912
                  lb           a2, -82(s11)
                  and          t3, s8, tp
                  lh           s0, 63(s11)
                  sw           s3, 1(s11)
                  lui          a4, 564437
                  sb           s0, -33(s11)
                  xor          tp, s6, s11
                  andi         a5, t3, 873
                  sll          zero, a6, a6
                  and          t3, t0, a6
                  sh           t3, 85(s11)
                  sh           a7, -215(s11)
                  srl          t0, a7, s3
                  or           t1, a2, s10
                  sltu         s8, s8, s4
                  lhu          ra, 207(s11)
                  lb           s2, -140(s11)
                  srl          a7, s3, s6
                  lb           a4, -177(s11) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_1+1534 #start load_store_instr_stream_2
                  la           s4, region_1+119 #start load_store_instr_stream_1
                  la           t0, region_1+209 #start load_store_instr_stream_3
                  lh           a7, -8(a3)
                  la           ra, region_1+1325 #start load_store_instr_stream_0
                  sb           ra, 214(t0)
                  lbu          s0, 53(ra)
                  lb           s6, -1(a3)
                  sb           tp, -78(t0)
                  sb           s3, -116(s4)
                  sb           ra, 118(t0)
                  sb           t3, -45(ra)
                  lb           t5, 101(s4)
                  lbu          sp, 154(t0)
                  lbu          zero, -22(s4)
                  lb           s6, -23(ra)
                  lb           a6, 214(s4)
                  lh           s6, -10(a3)
                  lb           a4, 78(t0)
                  lb           a1, -25(s4)
                  lh           a2, 99(s4)
                  sb           t0, 6(a3)
                  lb           s2, 113(t0)
                  lb           a0, 9(a3)
                  lbu          s0, -28(ra)
                  lbu          s11, -11(a3)
                  lw           a2, 101(s4) #end load_store_instr_stream_1
                  sh           a4, -2(a3)
                  sh           a7, -12(a3) #end load_store_instr_stream_2
                  sh           a6, 245(t0) #end load_store_instr_stream_3
                  lbu          t1, 58(ra) #end load_store_instr_stream_0
                  la           s11, region_0+67 #start riscv_load_store_rand_instr_stream_6
                  lui          s4, 1038675
                  add          t5, a2, s6
                  sb           sp, 1116(s11)
                  auipc        a5, 445713
                  srai         s4, a6, 1
                  ori          t1, s4, 599
                  slti         t1, s10, -1317
                  lb           t6, 920(s11)
                  sb           s5, 1736(s11)
                  xor          sp, gp, sp
                  lb           a4, 120(s11)
                  sb           s7, 33(s11)
                  add          a7, a2, t4
                  lb           a6, 972(s11)
                  lhu          s6, 1881(s11)
                  lb           a7, 116(s11)
                  sb           a1, 1110(s11)
                  lh           s4, 991(s11)
                  slti         t4, s7, -1831
                  lbu          s8, 683(s11)
                  sb           a7, 1584(s11)
                  lb           s2, 1734(s11)
                  sh           a2, 1091(s11)
                  lb           t6, 1364(s11)
                  slti         sp, s4, -911
                  sll          ra, zero, s1
                  lh           s3, 781(s11)
                  lh           s8, 17(s11)
                  andi         t5, a1, 15
                  sb           t2, 1732(s11)
                  lw           a4, -63(s11)
                  lbu          zero, 1301(s11)
                  srai         s5, a1, 10
                  addi         t1, tp, 1688
                  lbu          a5, 565(s11)
                  lb           t6, 756(s11)
                  ori          a7, t6, 948
                  slti         s0, s6, 1078
                  xori         a4, a4, 1703
                  lbu          s3, 1600(s11)
                  lb           a5, 278(s11) #end riscv_load_store_rand_instr_stream_6
                  la           a5, region_0+1930 #start riscv_load_store_hazard_instr_stream_3
                  sb           gp, -1(a5)
                  lbu          gp, -1(a5)
                  lb           s5, -1(a5)
                  lbu          a2, -1(a5)
                  sb           ra, -9(a5)
                  lbu          a4, -9(a5)
                  lb           s6, -9(a5)
                  sb           s7, -9(a5)
                  sb           s0, 8(a5)
                  addi         a0, t6, -1753
                  sh           s2, 8(a5)
                  lh           t3, 8(a5)
                  sw           t5, -10(a5)
                  sw           t6, -10(a5)
                  sb           s1, -1(a5) #end riscv_load_store_hazard_instr_stream_3
                  srli         a7, s11, 12
                  sltiu        a2, t2, 2047
                  auipc        a1, 290736
                  bgeu         tp, s7, 20f
                  and          a4, s9, t2
                  xor          s10, a0, s8
                  sll          s5, s0, t0
                  sll          ra, t1, a7
                  sltiu        t0, t0, 1407
                  and          s10, s4, ra
                  beq          t1, s7, 11f
11:               add          s2, a0, a3
                  andi         a2, s0, 1668
                  bge          s1, a2, 30f
                  slti         a4, t6, 1594
                  andi         a5, sp, -211
                  lui          t4, 207531
                  bltu         a2, a0, 26f
                  or           a5, s1, s9
                  andi         a2, s7, -894
20:               bge          s1, tp, 36f
                  nop
                  beq          a2, t2, 29f
                  bltu         t1, a3, 28f
                  sra          t0, s7, t2
                  andi         s2, a6, -1332
26:               bgeu         t2, t1, 46f
                  lui          a1, 964477
28:               bne          s5, t6, 32f
29:               add          a1, s1, tp
30:               sll          t1, a5, s3
                  sll          a7, s11, t0
32:               sll          t6, t1, a4
                  sub          s6, s9, s6
                  srl          s4, tp, a2
                  blt          s5, s2, 43f
36:               srl          s11, s9, t3
                  lui          sp, 129384
                  sra          gp, t5, t3
                  xor          s3, gp, a6
                  lui          s0, 792042
                  sub          a7, gp, t0
                  lui          s5, 1008465
43:               and          a0, a6, zero
                  or           sp, a6, tp
                  xori         gp, s7, -618
46:               sltu         ra, s1, s8
                  beq          tp, a0, 54f
                  lui          ra, 1006112
                  ori          a2, a5, 307
                  sltiu        t3, s10, -228
                  srai         s5, s3, 14
                  nop
                  bltu         a0, gp, 64f
54:               addi         a7, s0, 1725
                  and          t2, s3, t2
                  sub          t0, s0, s11
                  sub          t2, gp, sp
                  bge          t1, a2, 69f
                  blt          t4, a4, 72f
                  slti         s8, s3, -1568
                  slt          s6, a4, s5
                  nop
                  nop
64:               srli         t6, t1, 11
                  lui          a4, 684544
                  srl          t1, a4, t4
                  blt          a7, a0, 78f
                  srai         a1, s1, 16
69:               addi         s6, s1, 599
                  srli         tp, a4, 29
                  bge          a2, s3, 87f
72:               slti         t5, s0, -1136
                  sltu         s0, zero, s11
                  lui          t5, 121674
                  or           gp, s3, a2
                  addi         s0, s10, -463
                  srli         a4, a4, 30
78:               srl          tp, ra, gp
                  sra          ra, a0, a2
                  srli         a3, s8, 24
                  bge          t5, ra, 97f
                  sra          a6, sp, s0
                  lui          a7, 609710
                  sltu         a0, s3, t6
                  or           a0, s0, t2
                  bge          a7, s8, 96f
87:               bne          a0, s6, 89f
                  bne          gp, s11, 99f
89:               or           sp, zero, s9
                  andi         a2, a4, -406
                  bgeu         a6, a4, 111f
                  bgeu         s10, s8, 96f
                  sltu         zero, s9, s2
                  xor          s10, a2, s0
                  and          a7, s7, s11
96:               blt          a4, s9, 111f
97:               srl          a6, s5, a5
                  srli         s5, s1, 16
99:               andi         t5, ra, 1412
                  sub          s10, t2, s7
                  sub          a6, gp, a4
                  srai         s2, ra, 11
                  sltiu        sp, a0, -10
                  addi         s4, s11, 777
                  slt          a7, a5, s7
                  sub          a6, s10, sp
                  sra          s4, a7, t4
                  sub          a4, zero, ra
                  bltu         gp, a7, 117f
                  addi         s11, zero, -178
111:              ori          ra, t1, -1789
                  xori         a0, zero, 481
                  xori         a2, s1, -811
                  and          tp, s9, ra
                  add          s5, a7, a5
                  bge          t0, a7, 127f
117:              addi         s8, s0, 1406
                  slt          t5, t5, t5
                  bgeu         a3, t3, 130f
                  andi         a7, ra, -1403
                  slli         sp, s11, 1
                  add          a4, t1, a0
                  lui          s6, 651569
                  sltiu        a5, s4, -698
                  addi         a2, a4, 1043
                  lui          t3, 1035052
127:              sltu         s3, s5, s9
                  add          a4, s3, t5
                  srai         a3, zero, 6
130:              slt          s3, t4, a7
                  slti         s3, zero, 1359
                  slti         tp, s11, -753
                  and          gp, s6, a5
                  bgeu         t5, t5, 146f
                  srl          s3, gp, s1
                  bgeu         a0, tp, 146f
                  xor          tp, s11, t0
                  beq          t3, s3, 150f
                  bgeu         a0, s3, 156f
                  sub          sp, s10, a3
                  slt          t4, s4, t2
                  and          s5, s9, ra
                  slli         a4, s10, 5
                  srl          a5, a2, s1
                  lui          s3, 161510
146:              auipc        a1, 870148
                  add          gp, a7, tp
                  add          s3, t6, tp
                  auipc        ra, 72103
150:              addi         s4, s0, 1146
                  xori         t0, t3, -424
                  sll          a0, s1, t0
                  sltiu        t4, gp, 43
                  and          t5, t1, a2
                  slti         a1, s1, -1790
156:              srai         t1, s4, 12
                  xor          a0, t4, a7
                  nop
                  nop
                  bne          a7, s6, 172f
                  slti         a5, sp, 1523
                  lui          t2, 366686
                  sra          s5, s10, s1
                  sra          t3, s4, s7
                  ori          s3, s8, -628
                  blt          s0, s6, 174f
                  sub          t4, a2, a1
                  srli         a0, t6, 7
                  nop
                  bltu         t2, a7, 174f
                  beq          t6, s8, 182f
172:              ori          t5, sp, 1926
                  bge          t2, t6, 189f
174:              slt          t3, s5, s11
                  blt          t5, t5, 182f
                  sltu         s5, t5, s9
                  xori         a5, a3, 926
                  bne          s0, tp, 198f
                  bltu         s4, s6, 190f
                  sltu         t1, t4, t4
                  ori          a6, tp, -359
182:              sll          ra, tp, a1
                  xori         s3, t5, 880
                  auipc        zero, 121603
                  ori          t1, ra, 1716
                  auipc        s5, 30625
                  slli         gp, gp, 27
                  srai         ra, s7, 22
189:              srl          t4, a0, t1
190:              sll          zero, tp, t1
                  slti         a6, sp, -605
                  srl          s3, a2, s0
                  srli         t0, gp, 16
                  sll          s4, ra, t3
                  sra          a0, gp, t2
                  slt          a1, s3, s4
                  andi         s4, sp, 1741
198:              srai         s4, a3, 18
                  andi         t2, t3, -486
                  ori          a7, ra, -1735
                  xor          s4, ra, a1
                  bltu         s8, t2, 204f
                  or           s0, t1, s10
204:              bltu         ra, sp, 215f
                  andi         t4, s0, 1429
                  addi         t5, s8, -784
                  add          t2, s1, sp
                  andi         zero, s6, 1773
                  xori         a0, a4, -509
                  slli         a1, s11, 26
                  slti         a2, s8, -561
                  sltiu        t4, a0, -1579
                  sltiu        sp, t1, 1473
                  srli         s11, s1, 23
215:              xor          s5, gp, t2
                  addi         s3, s6, 165
                  bne          s4, s3, 232f
                  bge          a5, t4, 228f
                  blt          gp, s11, 220f
220:              srli         a2, s10, 21
                  lui          a0, 120014
                  srai         tp, s6, 27
                  sltiu        t3, sp, 716
                  andi         t5, s11, -1646
                  bne          t3, a7, 230f
                  or           sp, s0, tp
                  srai         a2, s3, 31
228:              xor          a2, s8, a6
                  beq          t6, a2, 242f
230:              xori         t5, s2, -325
                  srli         gp, ra, 2
232:              xor          a1, s3, t2
                  addi         t1, a0, 497
                  srli         zero, s10, 11
                  bge          a6, s9, 246f
                  or           ra, ra, t3
                  add          s10, sp, s3
                  lui          a0, 37563
                  srai         s0, s1, 8
                  bltu         a1, t0, 250f
                  bltu         s0, s10, 252f
242:              sll          s6, t5, s3
                  sltiu        gp, tp, 1719
                  and          t4, zero, t6
                  sltu         s4, a3, s7
246:              nop
                  sltiu        s8, t6, 457
                  xor          tp, s9, t1
                  sub          s5, s7, s10
250:              slli         t2, s10, 18
                  addi         s2, a6, -500
252:              bne          s11, s2, 264f
                  and          s0, s11, s7
                  or           a2, t2, sp
                  srai         a1, t0, 23
                  beq          t1, s4, 260f
                  xor          s3, tp, s11
                  addi         tp, s9, -522
                  bgeu         s11, s10, 266f
260:              bne          a4, s7, 269f
                  xori         a1, t2, -391
                  and          s11, a2, s2
                  slti         s3, s11, -1925
264:              bgeu         t6, s7, 272f
                  auipc        a4, 149582
266:              bgeu         s7, a2, 283f
                  sltiu        s6, t3, 1908
                  beq          s10, s2, 285f
269:              slt          tp, t4, s7
                  srli         t0, zero, 21
                  and          zero, t2, a3
272:              add          t1, s6, s11
                  bne          a0, t2, 289f
                  bgeu         s1, gp, 285f
                  bge          t6, t2, 295f
                  bge          s5, s5, 292f
                  and          ra, t5, s8
                  slti         s4, s5, 1713
                  nop
                  nop
                  bne          sp, s6, 298f
                  bne          gp, sp, 302f
283:              bne          a7, s1, 300f
                  sub          s4, s7, s1
285:              auipc        s10, 874140
                  bltu         a6, s0, 290f
                  sll          t6, t6, a4
                  lui          s5, 61877
289:              sltu         s0, a2, s4
290:              sub          sp, s7, t5
                  add          a6, sp, s0
292:              srai         t2, s7, 14
                  slt          s11, t3, s7
                  sra          s8, gp, s7
295:              sub          s2, s0, a6
                  or           a3, s11, a3
                  bltu         s4, s6, 304f
298:              and          sp, sp, s1
                  or           a3, ra, t0
300:              blt          t4, t0, 311f
                  sra          tp, zero, tp
302:              bge          s6, a0, 313f
                  sra          t6, a4, t6
304:              srai         sp, gp, 6
                  add          a0, t2, a1
                  bge          a5, a6, 323f
                  slti         a7, t5, 267
                  slt          ra, s6, a7
                  auipc        gp, 1022859
                  add          ra, zero, sp
311:              sltu         a2, ra, t6
                  sltiu        t1, t5, 1693
313:              srai         s11, a2, 15
                  sra          s2, a0, a7
                  srl          s6, s2, ra
                  sltiu        a5, tp, -1936
                  auipc        s8, 784112
                  xori         tp, s0, 1233
                  bne          a1, s1, 335f
                  sltu         t2, a1, s0
                  sltiu        a7, s1, 21
                  xori         a5, a6, 1219
323:              srai         s10, t0, 24
                  blt          s9, a0, 339f
                  xor          a6, t6, s6
                  and          s5, a3, sp
                  sra          zero, a2, s1
                  sll          t0, a4, s0
                  srai         a3, s10, 23
                  addi         t5, a5, 774
                  and          zero, a3, s4
                  slti         s4, t2, 1305
                  add          s8, a7, t5
                  add          t1, a6, s0
335:              slti         ra, a7, 1114
                  sll          t1, t6, t0
                  slti         s11, a3, -404
                  sub          s0, a2, a2
339:              bge          sp, a4, 355f
                  lui          t1, 139
                  xori         s6, zero, -900
                  slli         a6, a6, 2
                  blt          s6, s9, 353f
                  nop
                  sll          sp, s10, s11
                  sltiu        s4, tp, -1923
                  bge          a0, sp, 364f
                  lui          t3, 94951
                  lui          t2, 614143
                  slti         s11, a5, -1496
                  srl          a2, t0, t5
                  slli         a3, t0, 19
353:              srl          s6, a2, t2
                  ori          s5, a5, -1241
355:              sltiu        t1, s5, 256
                  slt          t3, zero, s8
                  sll          a3, a6, t5
                  slti         a1, s9, 1401
                  sltiu        ra, t6, 980
                  and          a4, s3, s11
                  and          t5, s2, t1
                  slti         s8, a0, 1130
                  andi         s4, s2, -478
364:              slli         s2, a0, 24
                  sra          t0, s7, a3
                  srli         a4, a6, 15
                  and          t6, t1, a5
                  slti         s5, ra, 1241
                  slli         a3, a1, 27
                  bltu         t6, zero, 372f
                  srl          gp, s0, t0
372:              bne          t5, s6, 383f
                  nop
                  xor          sp, t1, a2
                  nop
                  add          a1, t6, t6
                  sll          s6, t6, a0
                  srl          tp, sp, sp
                  bltu         ra, a7, 391f
                  srai         s4, s6, 14
                  bge          s3, a0, 392f
                  addi         a3, zero, 360
383:              blt          tp, zero, 394f
                  slti         t3, s0, -526
                  srai         t1, s4, 31
                  sltu         t1, a5, s8
                  bne          t2, s9, 391f
                  sra          a2, s8, zero
                  sra          s0, s10, a6
                  lui          t5, 489642
391:              blt          s9, a4, 411f
392:              sub          t0, a1, s4
                  lui          t2, 851981
394:              srli         a3, a1, 17
                  lui          a0, 391389
                  auipc        s6, 681186
                  nop
                  blt          s7, a7, 407f
                  auipc        tp, 748203
                  sltiu        tp, s10, 940
                  bge          a4, tp, 412f
                  or           t0, a4, s11
                  blt          a7, ra, 408f
                  auipc        zero, 708618
                  add          a6, t2, s11
                  slli         a5, tp, 21
407:              slt          t0, s2, tp
408:              slti         s2, t2, -1852
                  xor          a3, a5, tp
                  sltiu        a5, s4, 1631
411:              or           s0, s6, a5
412:              bge          s1, t3, 428f
                  or           s10, sp, a6
                  bge          a5, s7, 424f
                  bne          s4, a2, 427f
                  bltu         zero, gp, 424f
                  beq          t6, s11, 430f
                  blt          tp, gp, 426f
                  bltu         a6, a3, 420f
420:              or           s3, a4, s7
                  sltiu        tp, a5, -1605
                  srl          a0, gp, a3
                  sltu         s5, s3, s9
424:              sub          a6, s10, s9
                  srai         s10, s2, 28
426:              ori          s4, t4, -673
427:              lui          a5, 129769
428:              addi         a7, a7, -1590
                  bge          a0, t2, 436f
430:              andi         a0, s8, 1997
                  lui          a1, 414603
                  sltiu        t6, s5, 1389
                  bgeu         s2, t3, 434f
434:              xori         t1, t2, -163
                  andi         a2, t5, 1329
436:              srl          ra, zero, t4
                  nop
                  sra          t0, s0, s5
                  slti         a5, a3, -878
                  slt          t2, a5, s8
                  lui          s2, 839444
                  beq          s10, tp, 450f
                  sltiu        a1, t6, 1155
                  srl          t5, s3, s2
                  blt          s0, s5, 449f
                  bgeu         a7, a4, 462f
                  srl          t0, s6, s5
                  sltiu        t3, s9, 1694
449:              addi         s0, a7, -1073
450:              add          s11, t3, s11
                  srl          gp, t0, s5
                  bge          s8, s8, 462f
                  sltiu        a0, a5, 2034
                  xori         s6, s5, -1494
                  slli         gp, a0, 29
                  slti         a3, zero, -2031
                  sra          s2, s7, zero
                  addi         s0, ra, -1929
                  sub          s0, gp, ra
                  auipc        t6, 293490
                  la           s4, sub_1
                  andi         s5, t4, 109
                  sltiu        t4, gp, -1067
                  sltu         ra, t0, t5
                  addi         s4, s4, -635
                  xor          t3, a0, a7
                  srli         s2, s0, 27
main_j1:          jalr         tp, s4, 635 #jump main -> sub_1
                  sltu         s6, a6, t4
462:              srai         t5, a7, 19
                  xor          gp, t1, s1
                  xor          t5, a1, t1
                  bltu         s6, t4, 476f
                  lui          a0, 622304
                  sltu         a1, s6, a5
                  slti         a1, sp, 329
                  xor          s10, tp, zero
                  and          t6, s7, ra
                  beq          s9, a5, 478f
                  bltu         t1, a2, 483f
                  blt          s7, s2, 484f
                  slli         s11, a0, 13
                  or           s4, a2, sp
476:              xori         sp, s0, -1231
                  blt          s5, s4, 489f
478:              add          ra, s0, a5
                  auipc        s11, 864333
                  srai         t5, a0, 5
                  auipc        s2, 771718
                  add          zero, s7, zero
483:              addi         a2, a5, -1937
484:              add          sp, a2, t5
                  sltiu        t4, s4, 1816
                  slt          s10, a1, t1
                  bge          tp, t3, 504f
                  bgeu         a6, a2, 497f
489:              andi         tp, s9, -955
                  srl          t5, t4, a2
                  ori          s8, a6, 1277
                  bne          s6, s2, 503f
                  sll          t5, ra, zero
                  xor          a7, t6, s0
                  sltiu        sp, s11, 451
                  bge          a5, t2, 511f
497:              bltu         s5, s6, 510f
                  sltiu        a6, t6, 1419
                  srli         tp, t6, 11
                  xor          t5, s11, a1
                  sra          a0, zero, s3
                  bltu         s1, t5, 510f
503:              ori          a5, s6, 27
504:              ori          ra, s0, -441
                  bne          a6, a4, 509f
                  sltu         s0, sp, s0
                  srl          gp, t2, sp
                  andi         a6, a7, -1879
509:              sltiu        ra, a5, -223
510:              add          t1, s2, s10
511:              xori         t4, s8, 835
                  xor          s11, sp, s2
                  sra          s2, s10, s1
                  sll          s3, a1, t3
                  slti         a2, a6, -430
                  xor          s3, s5, t1
                  addi         zero, a1, -416
                  blt          a2, s0, 525f
                  and          ra, a6, s10
                  bltu         ra, a2, 540f
                  beq          s0, t6, 533f
                  bge          gp, zero, 524f
                  ori          t3, sp, -896
524:              andi         a5, t3, 1913
525:              srai         s5, tp, 26
                  or           s5, a1, s1
                  bgeu         a2, ra, 547f
                  bne          zero, t1, 539f
                  blt          a5, s9, 546f
                  slt          s3, a6, s4
                  ori          s11, a7, -1999
                  sltiu        a4, t3, 1823
533:              bgeu         a3, s3, 544f
                  sltu         s11, s11, t5
                  slti         t4, zero, 854
                  sltu         t5, tp, s7
                  auipc        s4, 424713
                  ori          s11, a0, 650
539:              srl          t6, t1, a3
540:              srl          zero, a4, a0
                  srl          a7, zero, gp
                  bne          t3, s1, 547f
                  bgeu         s11, gp, 560f
544:              beq          t5, a1, 560f
                  bltu         s6, s9, 555f
546:              sll          t2, s11, a5
547:              lui          s10, 960089
                  slti         a4, s1, -1532
                  add          s4, a2, s2
                  sltu         t6, a3, a4
                  slt          tp, s5, a5
                  srli         s4, s3, 24
                  sra          ra, a2, a5
                  bltu         t0, s1, 570f
555:              sub          t0, t4, s10
                  or           a5, a7, t1
                  bltu         a4, gp, 568f
                  bgeu         a0, t4, 569f
                  bge          a4, a6, 567f
560:              blt          s4, tp, 561f
561:              auipc        s10, 213278
                  blt          t5, s1, 578f
                  blt          s4, a2, 571f
                  srl          s0, s7, t3
                  andi         a1, a4, -1693
                  bne          t5, a7, 581f
567:              ori          t0, t2, 2020
568:              srai         s5, a5, 0
                  la           a4, sub_1
                  xori         s3, ra, 113
                  sll          t6, tp, s11
                  nop
                  auipc        ra, 54754
                  addi         a4, a4, -991
                  slt          t5, zero, a4
main_j2:          jalr         tp, a4, 991 #jump main -> sub_1
569:              sub          a3, t0, t1
570:              sltiu        s0, gp, 507
571:              nop
                  srai         s6, s9, 11
                  xori         sp, s7, 1847
                  srl          s2, s1, a4
                  xori         s6, t4, -1177
                  add          s5, t4, zero
                  auipc        s6, 348461
578:              nop
                  and          s11, a2, s0
                  beq          a3, t4, 585f
581:              sra          ra, s2, t2
                  or           sp, s8, s6
                  sll          a1, s5, s1
                  slt          t1, s11, s1
585:              beq          s9, a1, 596f
                  ori          sp, t4, 1761
                  xor          a3, a7, s11
                  srl          s0, s11, s1
                  bne          t5, s7, 591f
                  sltiu        s11, s4, 1370
591:              sltiu        t2, a7, -351
                  xori         s10, a1, -69
                  slli         gp, s2, 6
                  and          a0, s7, t1
                  slti         s2, t3, -1028
596:              bltu         a6, t0, 616f
                  slti         a5, s4, -130
                  bge          s1, s4, 602f
                  sltiu        s11, t3, -1934
                  slti         s4, s4, 1440
                  auipc        t0, 405904
602:              bne          t0, a4, 618f
                  nop
                  sltu         t5, gp, s10
                  sltu         t6, a4, t4
                  slti         t3, a1, 602
                  andi         ra, s8, -1552
                  or           a0, sp, s10
                  auipc        t0, 116519
                  ori          t3, a4, -1723
                  and          s4, t1, s0
                  bltu         s4, s7, 621f
                  beq          s1, sp, 620f
                  and          t5, s3, t1
                  xor          tp, s3, t6
616:              add          s6, t5, s3
                  ori          s10, a1, -1969
618:              xor          t0, t0, a6
                  blt          s4, s10, 626f
620:              sub          a0, s4, s4
621:              bne          a6, t0, 625f
                  sltu         sp, gp, s9
                  sll          sp, s1, ra
                  bgeu         a5, s8, 634f
625:              slt          s10, sp, t3
626:              ori          s5, s4, 1511
                  slti         s4, t6, 1089
                  and          s10, a5, s4
                  xori         t4, s11, -578
                  sll          s6, s7, zero
                  slti         t1, a4, -698
                  ori          s8, t2, -1255
                  srai         s6, tp, 23
634:              ori          t3, zero, 1896
                  bne          t1, tp, 652f
                  lui          s4, 190555
                  srli         a3, a1, 24
                  bgeu         a0, gp, 650f
                  auipc        tp, 899702
                  srli         t2, ra, 2
                  lui          ra, 642871
                  auipc        s3, 995482
                  slt          t6, a0, a3
                  slli         tp, s9, 4
                  bgeu         s8, s5, 661f
                  add          s4, sp, a7
                  sub          t3, t0, t5
                  beq          t6, ra, 668f
                  lui          s2, 23264
650:              ori          a6, a1, -867
                  sll          ra, t0, s10
652:              auipc        a4, 1005127
                  slt          s3, a1, s0
                  lui          a2, 795537
                  xori         tp, t0, -240
                  sltu         s11, t0, s9
                  beq          t5, a4, 668f
                  auipc        s0, 638748
                  sll          a1, t0, a0
                  bne          t5, a7, 677f
661:              add          s0, zero, s9
                  add          a5, t2, s7
                  xor          s5, a2, s7
                  addi         s6, a7, -1708
                  bge          t4, a6, 678f
                  srai         s0, s9, 25
                  lui          a7, 74172
668:              xor          s3, s0, t3
                  sra          zero, t5, zero
                  xor          s8, t4, s10
                  sll          a5, s3, ra
                  xori         sp, s5, -280
                  blt          a6, t0, 684f
                  andi         a3, a6, -997
                  sub          s5, a6, a1
                  addi         s3, zero, 471
677:              sltu         s10, a3, a0
678:              add          s8, t5, s7
                  bne          s1, s0, 690f
                  or           a4, t4, tp
                  or           ra, t5, t2
                  bgeu         a2, a3, 694f
                  add          zero, zero, s2
684:              bgeu         s5, a6, 701f
                  bgeu         zero, t2, 695f
                  slt          a6, s5, tp
                  or           t1, a5, a0
                  srl          s4, s0, t6
                  addi         zero, sp, 646
690:              bge          gp, t2, 700f
                  ori          a7, ra, -533
                  lui          sp, 149816
                  slt          zero, t2, ra
694:              bgeu         a1, a7, 706f
695:              addi         s3, s9, -260
                  andi         ra, t0, 397
                  addi         s6, t0, 182
                  sltiu        a3, gp, 1331
                  ori          t2, s1, 598
700:              bge          a4, zero, 711f
701:              sll          s5, s5, s1
                  bne          a0, s5, 714f
                  slti         zero, a2, -1734
                  ori          s2, a7, 278
                  blt          s4, t0, 722f
706:              bltu         s6, t4, 721f
                  sltiu        s8, a0, 1728
                  bge          t4, s5, 715f
                  auipc        t4, 382713
                  sra          a4, s11, t0
711:              slli         a5, s6, 28
                  auipc        a4, 898016
                  add          t3, gp, s2
714:              bge          a4, a2, 730f
715:              slli         t1, a6, 9
                  bltu         a0, t6, 718f
                  sra          ra, sp, tp
718:              bge          a0, t3, 735f
                  slt          a0, t3, t0
                  bge          s7, tp, 733f
721:              slt          t5, t3, s1
722:              slli         s0, a6, 11
                  nop
                  sll          a2, s6, s7
                  nop
                  beq          s0, tp, 733f
                  ori          a0, s5, -846
                  blt          s1, t1, 748f
                  bgeu         gp, gp, 738f
730:              auipc        a1, 330001
                  ori          ra, s4, -1574
                  add          s4, s3, a2
733:              srli         a6, tp, 9
                  sll          a2, s0, s4
735:              sll          a5, s3, a5
                  sltiu        ra, s1, -1390
                  bge          a4, a0, 742f
738:              bge          tp, a0, 748f
                  sll          s8, s11, t0
                  slti         tp, ra, -1161
                  srli         a2, s5, 21
742:              sltu         t6, t6, t1
                  addi         a6, s5, -694
                  slti         sp, a6, 279
                  srl          sp, s3, a5
                  ori          t3, a6, -526
                  beq          s11, s9, 748f
748:              blt          a4, s1, 756f
                  slti         s4, s4, -188
                  addi         tp, t5, 363
                  bne          t2, zero, 762f
                  blt          a5, s0, 763f
                  srli         t5, zero, 17
                  addi         s2, s11, 348
                  srli         s11, a6, 30
756:              nop
                  slli         t4, s9, 20
                  and          a3, a4, s5
                  sll          a5, s9, a0
                  nop
                  or           ra, a7, a6
762:              ori          s2, tp, 53
763:              sltiu        s4, sp, -2028
                  addi         tp, s4, -655
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sltu         s3, gp, s7
                  addi         s9, s9, -56
                  xori         t1, t1, 975
                  addi         t1, t3, 174
                  sltu         a0, s8, s0
                  sw           tp, 4(s9)
                  ori          a2, a3, -1531
                  or           s4, s2, t3
                  auipc        a6, 88107
                  la           s10, region_1+1211 #start riscv_load_store_rand_instr_stream_0
                  lbu          t4, 11(s10)
                  sll          a1, a0, t3
                  ori          s6, t4, -1435
                  lb           s4, 12(s10)
                  sb           t5, -11(s10)
                  lw           t5, 9(s10)
                  andi         t3, s0, -670
                  lbu          s4, 2(s10)
                  lb           t0, -13(s10)
                  sra          t2, t3, t4
                  or           a4, a4, s6
                  lb           t6, 14(s10)
                  lhu          s8, -9(s10)
                  lbu          a0, 15(s10)
                  addi         s11, s3, -329
                  sh           a0, 5(s10)
                  auipc        t2, 734295
                  sh           t2, 5(s10)
                  sb           s4, -8(s10)
                  sltu         a5, s7, t3
                  lbu          s2, 2(s10)
                  sb           s1, -6(s10)
                  lbu          sp, 8(s10)
                  ori          a4, a4, -1530
                  sb           sp, -4(s10)
                  addi         s4, a5, -1239
                  lw           ra, 9(s10)
                  srli         a4, s10, 4
                  sb           a7, -16(s10)
                  sb           tp, 6(s10)
                  sltu         s5, a0, t1
                  sh           t3, 1(s10) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_0+1786 #start load_store_instr_stream_3
                  la           s3, region_0+600 #start load_store_instr_stream_1
                  la           t3, region_0+220 #start load_store_instr_stream_0
                  la           a0, region_0+585 #start load_store_instr_stream_2
                  lbu          s5, 436(a0)
                  lh           a6, 34(t3)
                  lbu          t0, 914(a0)
                  lb           s0, -106(gp)
                  sb           zero, 35(t3)
                  lbu          sp, 128(gp)
                  lb           s6, -50(s3)
                  sw           t6, -52(s3)
                  sh           zero, 16(s3)
                  lb           zero, 20(a0)
                  lb           a1, 33(gp)
                  lhu          s8, 893(a0)
                  lbu          t0, 7(t3)
                  lh           t2, 6(s3)
                  sb           zero, -171(gp)
                  lbu          s6, 52(s3)
                  sw           a6, 923(a0) #end load_store_instr_stream_2
                  lbu          sp, -39(gp)
                  lbu          s5, 9(t3)
                  lb           s6, 128(gp) #end load_store_instr_stream_3
                  lb           t6, -17(s3) #end load_store_instr_stream_1
                  lhu          s11, -24(t3) #end load_store_instr_stream_0
                  la           t6, region_0+1807 #start riscv_load_store_hazard_instr_stream_0
                  lh           s11, -1701(t6)
                  lbu          a3, -1701(t6)
                  sb           t4, -1189(t6)
                  lhu          s4, -1189(t6)
                  lhu          a3, -787(t6)
                  lb           t5, -52(t6)
                  lbu          ra, -52(t6)
                  lbu          s10, -432(t6)
                  sw           t2, -799(t6)
                  sra          sp, a1, s4
                  lh           s5, -799(t6)
                  sb           zero, -799(t6)
                  sb           sp, -799(t6)
                  sw           a7, -799(t6)
                  lbu          a2, -1762(t6)
                  sra          s10, gp, a2
                  sb           a6, -1762(t6)
                  lbu          a7, -1234(t6)
                  lb           a5, -1391(t6)
                  sb           a5, -436(t6)
                  lb           s8, -974(t6) #end riscv_load_store_hazard_instr_stream_0
                  xori         t0, t5, -887
                  addi         s8, a0, -1837
                  sll          s8, a0, ra
                  bge          s7, s4, 21f
                  sltiu        s4, a5, -1546
                  xor          s4, tp, a2
                  auipc        zero, 829153
                  bne          s0, s6, 15f
                  or           a3, a1, s2
                  sra          s6, s7, tp
                  slli         sp, a2, 8
                  sra          a2, a2, t5
                  blt          zero, ra, 14f
                  auipc        t5, 780259
14:               auipc        t0, 832768
15:               srl          t0, a5, s11
                  xor          t4, t1, a6
                  nop
                  sltiu        s8, a3, 223
                  addi         a3, gp, 489
                  bgeu         t5, gp, 35f
21:               srai         s11, s0, 14
                  slt          a7, ra, a4
                  lui          s6, 1046241
                  srli         a2, t6, 29
                  nop
                  add          s5, a7, t2
                  bge          a1, s10, 39f
                  and          a1, s2, a4
                  ori          a3, s11, 539
                  bltu         sp, a6, 38f
                  addi         t3, gp, -1492
                  nop
                  slli         a3, a1, 2
                  sltu         gp, t3, t6
35:               sltiu        a5, s1, 1868
                  bgeu         a0, t6, 47f
                  sll          t1, s1, zero
38:               bne          s3, s10, 39f
39:               beq          s2, s1, 54f
                  addi         a4, a6, 322
                  ori          t5, a7, -1357
                  lui          s10, 132601
                  add          t4, t4, a6
                  andi         s3, a6, 183
                  xori         t4, s11, 1730
                  andi         t1, zero, -1212
47:               slti         ra, s0, 1988
                  beq          a5, t0, 65f
                  slt          tp, a5, a4
                  lui          a6, 896617
                  srli         a6, t2, 29
                  bne          s3, s6, 55f
                  bgeu         t1, a2, 58f
54:               beq          s3, t2, 66f
55:               ori          a4, s10, 1969
                  ori          a6, t5, -456
                  auipc        s10, 496957
58:               addi         a2, sp, 158
                  srl          a7, t5, s5
                  addi         sp, s8, 909
                  sll          t5, s8, sp
                  sra          s11, s7, gp
                  srli         a7, s10, 13
                  slti         ra, t4, -847
65:               bgeu         t0, a1, 82f
66:               blt          a1, s10, 86f
                  bgeu         a7, s8, 73f
                  ori          s3, gp, 1222
                  slli         ra, t6, 11
                  andi         t1, a2, 1396
                  sra          a7, zero, a0
                  sltu         zero, t4, a0
73:               sll          s10, t0, s8
                  and          s6, s11, t4
                  bne          t0, a3, 78f
                  lui          s11, 326570
                  srli         s3, a4, 19
78:               sltu         s10, s7, s8
                  or           tp, t0, s0
                  bltu         a2, s4, 96f
                  srl          a2, s1, s1
82:               and          a0, a4, s3
                  sltiu        s6, ra, -1389
                  blt          a3, s4, 89f
                  slli         a7, s0, 16
86:               bge          s4, s11, 104f
                  bgeu         s3, s9, 94f
                  or           ra, s1, a2
89:               sra          a0, sp, s11
                  ori          t3, s8, -1189
                  add          a2, ra, s2
                  xori         t1, a5, -1625
                  bne          t3, a4, 105f
94:               and          zero, a0, s2
                  sltiu        s10, s5, -162
96:               bltu         t3, a1, 103f
                  sll          s10, s8, s4
                  slt          a0, s7, t0
                  sltiu        a6, s3, -1759
                  blt          s4, s8, 118f
                  slti         t0, t2, 955
                  bltu         s9, s1, 105f
103:              sltu         s8, s4, t6
104:              andi         a1, a6, -1473
105:              andi         s3, t1, 1888
                  beq          a4, ra, 120f
                  addi         s8, s11, -1286
                  slti         t2, a6, -1760
                  sltiu        a6, s7, -122
                  ori          t4, a3, -562
                  ori          a0, s8, -661
                  beq          t2, a0, 130f
                  andi         a0, t3, 1531
                  ori          t2, a4, -741
                  lui          s0, 467358
                  slti         a5, s11, -1731
                  and          s6, zero, t5
118:              slti         a5, s3, 1435
                  bne          t0, s10, 134f
120:              slt          a2, a5, gp
                  blt          s0, a3, 138f
                  srai         t0, t6, 25
                  lui          t5, 116003
                  sltu         a6, tp, a5
                  sra          tp, a7, a3
                  srl          ra, a6, s10
                  auipc        s8, 626344
                  sra          s11, s6, t5
                  sll          a3, s5, t6
130:              addi         a3, sp, 598
                  sra          t6, s1, s11
                  and          a2, t3, t4
                  andi         s2, a7, 1031
134:              andi         s5, zero, -525
                  sltu         ra, s1, s7
                  and          t3, s3, tp
                  blt          s7, s3, 148f
138:              bge          s6, t5, 144f
                  srl          t6, a2, a2
                  slti         a1, s1, 1254
                  sub          gp, a7, gp
                  bne          s11, s11, 153f
                  slli         t0, t3, 3
144:              lui          a7, 547355
                  sra          gp, s2, t5
                  andi         t5, zero, 1887
                  bne          a4, s10, 150f
148:              xori         s4, a4, -1358
                  add          zero, a6, tp
150:              srli         t2, gp, 27
                  bne          t2, s6, 159f
                  sub          s0, t4, a4
153:              sltu         s0, s10, s3
                  bgeu         a5, a1, 159f
                  or           s11, gp, a0
                  or           t1, s7, s2
                  bgeu         s11, a1, 159f
                  addi         a6, a1, -45
159:              srli         t4, s0, 19
                  lw           tp, 4(s9)
                  sll          s3, a2, s8
                  sltiu        a1, s9, 428
                  addi         s9, s9, 56
                  slti         t1, a4, 1064
                  sra          s4, t5, s1
                  slti         a1, a5, 267
                  xori         t2, s2, 1055
                  sra          a5, s11, a0
                  auipc        s0, 365440
260:              addi x29, x4, 1
260:              jalr x29, x29, 0
sub_1:            auipc        t4, 672535
                  lui          a6, 953236
                  addi         s9, s9, -16
                  add          s4, a7, tp
                  sltiu        s2, s11, 833
                  lui          s6, 260663
                  xori         t1, s5, 1105
                  slt          t0, sp, t5
                  ori          a3, s1, -952
                  or           s5, s7, ra
                  sw           tp, 4(s9)
                  sub          zero, s4, t4
                  xori         s10, s8, -1339
                  slti         tp, zero, 1443
                  add          t5, gp, zero
                  srai         a5, a2, 31
                  srl          t0, sp, s9
                  beq          a1, ra, sub_1_j3 #branch to jump instr
                  sll          a7, s3, tp
                  srli         a7, a1, 16
                  sltu         s2, a1, a5
                  addi         a5, s1, -1277
sub_1_j3:         jal          tp, sub_2 #jump sub_1 -> sub_2
                  slt          a4, s8, t5
                  slt          s4, tp, s10
                  and          ra, s10, s8
                  srli         a4, t0, 21
                  auipc        t5, 400871
                  addi         t3, s0, -1393
                  bge          s1, t6, sub_1_j4 #branch to jump instr
                  nop
                  and          tp, a5, s5
                  lui          t3, 455510
                  sltiu        a1, tp, -1774
sub_1_j4:         jal          tp, sub_2 #jump sub_1 -> sub_2
                  auipc        t4, 34600
                  andi         s0, t4, 622
                  slli         t6, s4, 0
                  bltu         ra, s11, 10f
                  bge          zero, s11, 14f
                  auipc        s3, 942597
                  srli         a7, a6, 6
                  srl          t2, ra, t2
                  sub          s0, s1, t0
                  addi         gp, a4, -640
10:               blt          zero, tp, 30f
                  sub          a1, t1, t0
                  slti         a1, ra, -1714
                  slli         zero, gp, 0
14:               ori          s10, a1, -1390
                  nop
                  srai         sp, a3, 3
                  sra          s3, s7, s9
                  sltu         s10, s3, a3
                  srai         a4, t6, 29
                  auipc        a6, 25089
                  beq          s1, s0, 30f
                  srl          a2, a5, a7
                  blt          a5, s0, 37f
                  bne          a3, a1, 28f
                  ori          ra, t4, 1901
                  blt          a6, s8, 34f
                  slli         a0, s1, 0
28:               ori          s6, s2, -234
                  bgeu         s0, a2, 37f
30:               beq          s11, a0, 33f
                  bge          a6, t4, 49f
                  xori         zero, tp, 1227
33:               bge          a4, a3, 42f
34:               slti         t0, zero, 178
                  bltu         t3, s7, 41f
                  bgeu         t1, t5, 51f
37:               xori         s6, t4, 1740
                  beq          t4, s3, 51f
                  xor          a1, t4, a4
                  blt          gp, s11, 43f
41:               xori         t2, s2, -10
42:               sub          s3, s1, s0
43:               srli         t2, t2, 28
                  or           s2, s7, zero
                  srai         a5, ra, 6
                  xori         s0, s11, -64
                  or           a1, a0, ra
                  addi         t2, zero, -1181
49:               sltiu        s8, t6, -2003
                  slli         a6, t4, 27
51:               lui          sp, 203799
                  bltu         s6, a6, 67f
                  srli         t3, t6, 5
                  xori         tp, s7, 1129
                  addi         s4, s2, -1615
                  bge          s3, a1, 69f
                  sltiu        t1, a5, 611
                  bne          a0, s3, 65f
                  srai         t6, s3, 10
                  bltu         t5, s6, 73f
                  bgeu         tp, t2, 66f
                  sltiu        t4, s8, 1924
                  slti         sp, s9, -1763
                  blt          s10, sp, 74f
65:               beq          a3, s10, 72f
66:               or           s0, t3, a7
67:               sra          s10, a2, a6
                  add          t4, a1, a3
69:               lui          tp, 1014645
                  or           s4, s6, s5
                  beq          t1, a1, 74f
72:               beq          tp, a7, 74f
73:               and          a1, s5, a4
74:               nop
                  lw           tp, 4(s9)
                  addi         s9, s9, 16
                  add          a6, s9, t1
                  and          a0, s6, t1
                  addi         a2, s8, 1335
                  ori          s4, s4, -1427
                  slti         a2, s2, -1897
117:              addi x28, x4, 1
117:              jalr x28, x28, 0
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_2:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_3:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_4:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_5:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_6:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_7:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_8:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_9:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_10:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_11:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_12:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_13:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_14:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

mmode_intr_vector_15:
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x342 # MCAUSE
                  srli x5, x5, 0x1f
                  beqz x5, 1f
                  j mmode_intr_handler
                  1: la x23, test_done
                  jalr x0, x23, 0

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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x9, x25, zero
                  csrr x5, 0x341 # MEPC
                  csrr x5, 0x342 # MCAUSE
                  li x15, 0x3 # BREAKPOINT
                  beq x5, x15, ebreak_handler
                  li x15, 0x8 # ECALL_UMODE
                  beq x5, x15, ecall_handler
                  li x15, 0x9 # ECALL_SMODE
                  beq x5, x15, ecall_handler
                  li x15, 0xb # ECALL_MMODE
                  beq x5, x15, ecall_handler
                  li x15, 0x1
                  beq x5, x15, instr_fault_handler
                  li x15, 0x5
                  beq x5, x15, load_fault_handler
                  li x15, 0x7
                  beq x5, x15, store_fault_handler
                  li x15, 0xc
                  beq x5, x15, pt_fault_handler
                  li x15, 0xd
                  beq x5, x15, pt_fault_handler
                  li x15, 0xf
                  beq x5, x15, pt_fault_handler
                  li x15, 0x2 # ILLEGAL_INSTRUCTION
                  beq x5, x15, illegal_instr_handler
                  csrr x15, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x5, _start
                  sw x0, 0(x5)
                  sw x1, 4(x5)
                  sw x2, 8(x5)
                  sw x3, 12(x5)
                  sw x4, 16(x5)
                  sw x5, 20(x5)
                  sw x6, 24(x5)
                  sw x7, 28(x5)
                  sw x8, 32(x5)
                  sw x9, 36(x5)
                  sw x10, 40(x5)
                  sw x11, 44(x5)
                  sw x12, 48(x5)
                  sw x13, 52(x5)
                  sw x14, 56(x5)
                  sw x15, 60(x5)
                  sw x16, 64(x5)
                  sw x17, 68(x5)
                  sw x18, 72(x5)
                  sw x19, 76(x5)
                  sw x20, 80(x5)
                  sw x21, 84(x5)
                  sw x22, 88(x5)
                  sw x23, 92(x5)
                  sw x24, 96(x5)
                  sw x25, 100(x5)
                  sw x26, 104(x5)
                  sw x27, 108(x5)
                  sw x28, 112(x5)
                  sw x29, 116(x5)
                  sw x30, 120(x5)
                  sw x31, 124(x5)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x25, x9, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x9, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x9, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x25, x9, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x5, 0x341
                  addi  x5, x5, 4
                  csrw  0x341, x5
                  add x25, x9, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x5, 0x300 # MSTATUS;
                  csrr  x5, 0x304 # MIE;
                  csrr  x5, 0x344 # MIP;
                  csrrc x5, 0x344, x5 # MIP;
                  add x25, x9, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
