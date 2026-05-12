.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x27, 0x40000100
                  csrw 0x301, x27
kernel_sp:        
                  la x9, kernel_stack_end

trap_vec_init:    
                  la x27, mtvec_handler
                  ori x27, x27, 1
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
                  li x0, 0x80000000
                  li x1, 0x80000000
                  li x2, 0xf1905c0d
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0xe17132e9
                  li x6, 0x80000000
                  li x7, 0xf7d221b8
                  li x8, 0xfd42a57b
                  li x10, 0x80000000
                  li x11, 0x80000000
                  li x13, 0xff34f0b6
                  li x14, 0x4
                  li x15, 0xc8f1e409
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x72803602
                  li x19, 0x80000000
                  li x20, 0xf9e0acb3
                  li x21, 0xb0806b32
                  li x22, 0xf029495a
                  li x23, 0xf
                  li x24, 0x838b6d8e
                  li x25, 0x4
                  li x26, 0xfc05600c
                  li x27, 0xf89f7a0f
                  li x28, 0x80000000
                  li x29, 0xf4b01f22
                  li x30, 0xc
                  li x31, 0xfda34a37
                  la x12, user_stack_end
main:             la           a0, region_1+1775 #start riscv_load_store_hazard_instr_stream_0
                  lw           s4, -1063(a0)
                  sb           a3, -1063(a0)
                  lbu          s0, -1610(a0)
                  lbu          t5, -1610(a0)
                  sb           s5, -1610(a0)
                  lbu          s5, -1610(a0)
                  lbu          t3, -628(a0)
                  lbu          s2, -628(a0)
                  lbu          t6, -75(a0)
                  lbu          a4, -75(a0)
                  sb           t5, -75(a0)
                  sh           s8, -75(a0)
                  andi         t3, s9, -1413
                  lb           a6, -75(a0)
                  lh           s10, -75(a0)
                  sb           s7, -75(a0)
                  lb           a4, -1631(a0)
                  lbu          t3, -1736(a0) #end riscv_load_store_hazard_instr_stream_0
                  la           s9, region_1+290 #start load_store_instr_stream_1
                  la           a0, region_1+503 #start load_store_instr_stream_2
                  lbu          t1, 8(s9)
                  sh           t3, 8(s9)
                  la           a5, region_1+1603 #start load_store_instr_stream_0
                  lh           s7, 1303(a0)
                  sh           s7, 1277(a0)
                  lbu          s6, 48(a5)
                  sh           gp, -447(a0)
                  lbu          a4, 9(s9)
                  lb           s5, -50(a5)
                  lhu          s5, -10(s9)
                  lbu          t3, -8(a5)
                  lb           s5, -44(a5)
                  sh           s0, 25(a5)
                  lh           zero, 14(s9)
                  lb           s2, 62(a5)
                  sh           a7, 803(a0)
                  sb           t1, 2(s9)
                  lbu          t3, 15(s9)
                  lbu          t2, -20(a5)
                  lbu          s3, 958(a0)
                  lh           t0, 633(a0) #end load_store_instr_stream_2
                  lbu          t1, 1(s9) #end load_store_instr_stream_1
                  lbu          s2, 28(a5) #end load_store_instr_stream_0
                  la           s4, region_1+710 #start riscv_load_store_rand_instr_stream_5
                  auipc        t6, 303995
                  lbu          s2, 4(s4)
                  and          t0, a0, s0
                  addi         zero, s9, 18
                  slli         t0, a6, 20
                  nop
                  srli         a4, s11, 1
                  lb           gp, -153(s4)
                  lhu          a7, -102(s4)
                  lbu          t1, 230(s4)
                  sb           tp, 233(s4)
                  srl          gp, a7, a1
                  lui          s3, 423791
                  or           tp, s2, zero
                  sltu         t0, a2, s1
                  lbu          s0, -205(s4)
                  srl          s10, a3, zero
                  lb           t6, -256(s4)
                  add          s3, a3, a2
                  sh           s10, -92(s4)
                  lhu          a0, -236(s4)
                  sub          t4, s4, s9
                  lb           s0, -143(s4)
                  lb           a0, -109(s4)
                  and          s5, t3, s5
                  lh           t0, 188(s4)
                  ori          s7, a3, -945
                  sb           ra, 165(s4)
                  addi         s9, a3, -1747
                  lb           t3, 150(s4)
                  slli         a3, t6, 8
                  sb           a1, -251(s4)
                  srl          t2, tp, t4
                  lb           a5, 157(s4)
                  lb           a5, -45(s4)
                  lw           s3, -2(s4)
                  auipc        s3, 409285
                  sb           a1, 237(s4)
                  srai         a4, t5, 28
                  lbu          t4, -127(s4)
                  sltu         t0, s0, t4
                  lb           t4, 143(s4) #end riscv_load_store_rand_instr_stream_5
                  la           a0, region_1+369 #start riscv_load_store_hazard_instr_stream_5
                  sll          t1, a0, s7
                  srl          t1, gp, s1
                  andi         s8, ra, -1405
                  lb           s11, 1362(a0)
                  xor          t2, a0, gp
                  lbu          t0, 1362(a0)
                  lbu          s7, 1362(a0)
                  lb           a7, 1362(a0)
                  sb           zero, 1362(a0)
                  lb           s9, 1362(a0)
                  lbu          gp, 1362(a0)
                  sb           a6, 1362(a0)
                  srai         s3, a5, 27
                  lbu          a7, 675(a0)
                  lb           a3, 675(a0)
                  lb           a7, 675(a0)
                  lh           s10, 675(a0)
                  lhu          s8, 675(a0)
                  sb           s0, 675(a0)
                  lhu          s7, 675(a0)
                  slli         t4, s6, 0
                  lhu          tp, 675(a0)
                  sb           tp, 675(a0)
                  sltiu        s8, a3, -1820
                  sb           gp, 675(a0)
                  lbu          tp, 675(a0)
                  lhu          gp, 675(a0) #end riscv_load_store_hazard_instr_stream_5
                  la           t0, region_1+1053 #start riscv_load_store_rand_instr_stream_8
                  sltiu        a5, t6, 367
                  auipc        t1, 669688
                  lb           s7, 170(t0)
                  lb           a7, 840(t0)
                  sw           s6, 147(t0)
                  lh           s4, -749(t0)
                  or           t1, s6, t5
                  andi         zero, s5, -1436
                  lbu          s2, -962(t0)
                  add          a3, t0, zero
                  lhu          s6, -429(t0)
                  ori          zero, a5, -436
                  lbu          s8, 931(t0)
                  slli         s5, a7, 21
                  sb           s6, 338(t0)
                  sra          a7, s1, tp
                  sb           a0, -910(t0)
                  lhu          s11, 779(t0)
                  lb           t6, 231(t0)
                  add          s9, a1, a4
                  sb           a1, -666(t0)
                  slli         s5, t0, 2
                  lbu          s3, -46(t0)
                  slli         s10, a2, 22
                  ori          zero, s2, -1094
                  or           t1, t0, t1
                  sb           a7, 916(t0)
                  sh           s6, 415(t0)
                  lb           s9, -92(t0)
                  sb           t3, 444(t0)
                  sb           a5, -432(t0)
                  lbu          s11, -36(t0)
                  andi         s9, t5, -1311
                  lbu          a5, 768(t0)
                  or           tp, ra, s6
                  lh           s4, 861(t0)
                  sra          t4, sp, s7
                  sb           t2, -562(t0)
                  sb           a1, -156(t0)
                  lh           s5, -75(t0)
                  sh           s2, 453(t0)
                  auipc        tp, 113835
                  lbu          s2, -412(t0)
                  lbu          s9, -698(t0)
                  sb           a6, -742(t0)
                  lhu          tp, -917(t0)
                  lb           s7, -40(t0) #end riscv_load_store_rand_instr_stream_8
                  la           tp, region_1+1779 #start load_store_instr_stream_1
                  la           a1, region_1+1987 #start load_store_instr_stream_0
                  lb           a5, -52(a1)
                  lb           zero, -60(a1)
                  lb           s2, -795(tp)
                  lb           s0, -174(a1)
                  lhu          a7, -107(tp)
                  lbu          t3, -100(tp)
                  sb           s1, -1580(tp)
                  lbu          zero, -102(a1)
                  lh           s4, -815(tp)
                  lb           a4, -1594(tp)
                  lbu          a3, -212(tp) #end load_store_instr_stream_1
                  lh           s8, -145(a1) #end load_store_instr_stream_0
                  la           gp, region_1+310 #start riscv_load_store_hazard_instr_stream_4
                  lb           s2, -32(gp)
                  sb           s7, -32(gp)
                  lb           a0, -32(gp)
                  lhu          s10, -32(gp)
                  lh           s5, -30(gp)
                  sh           s11, -30(gp)
                  lb           s4, -30(gp)
                  sub          zero, t6, s2
                  sub          t4, s2, a0
                  sw           a2, -30(gp)
                  srli         s6, a3, 29
                  lbu          s3, 31(gp)
                  sb           a5, 31(gp)
                  lbu          s2, 31(gp)
                  lbu          a1, -20(gp)
                  lbu          s8, 37(gp)
                  lb           s9, 37(gp)
                  slli         a5, s6, 4
                  sb           t0, 33(gp)
                  lhu          s7, 48(gp) #end riscv_load_store_hazard_instr_stream_4
                  la           s3, region_1+889 #start riscv_load_store_hazard_instr_stream_8
                  lb           s5, -152(s3)
                  lbu          ra, -152(s3)
                  sb           gp, -116(s3)
                  sb           s4, -116(s3)
                  lb           gp, -116(s3)
                  lbu          s10, 198(s3)
                  xor          gp, s0, a4
                  slti         s10, gp, 1971
                  xori         tp, zero, 517
                  lb           a1, 198(s3)
                  sb           a5, 198(s3)
                  lbu          a4, 80(s3)
                  lbu          s8, 80(s3)
                  lbu          s4, 80(s3)
                  sb           s7, 80(s3)
                  sb           a3, 80(s3)
                  slti         s7, s8, -1660
                  lbu          a6, 80(s3)
                  lh           t0, -29(s3)
                  ori          a6, s2, -1578
                  lb           gp, 180(s3)
                  andi         ra, s3, -1558
                  lb           tp, -18(s3) #end riscv_load_store_hazard_instr_stream_8
                  la           s11, region_1+1790 #start load_store_instr_stream_1
                  la           a3, region_1+975 #start load_store_instr_stream_0
                  la           ra, region_1+486 #start load_store_instr_stream_2
                  lbu          t2, -166(a3)
                  lbu          t2, -11(s11)
                  sb           s10, -188(a3)
                  sh           s3, 16(s11)
                  sh           t2, -29(a3)
                  sw           a4, 2(ra)
                  lbu          s4, -13(s11)
                  lhu          t4, -129(a3)
                  lbu          a1, 7(ra)
                  sb           t5, 14(ra)
                  sw           s10, -2(ra)
                  sb           s5, 13(s11)
                  sb           a7, 5(ra)
                  sb           gp, -1(s11)
                  lbu          a6, 15(ra)
                  lhu          s6, -6(s11) #end load_store_instr_stream_1
                  lb           s10, -11(ra) #end load_store_instr_stream_2
                  lbu          gp, -156(a3)
                  sb           t4, -204(a3) #end load_store_instr_stream_0
                  la           t5, region_1+1338 #start load_store_instr_stream_1
                  lb           s2, -14(t5)
                  sh           s9, -4(t5)
                  la           a3, region_1+20 #start load_store_instr_stream_0
                  lb           s8, -15(t5)
                  lbu          s10, -13(a3)
                  sb           tp, 16(t5)
                  lw           t1, 16(a3)
                  lhu          a6, 0(t5)
                  lbu          s0, -9(t5)
                  sw           zero, -8(a3)
                  sb           s3, 4(t5)
                  lbu          t1, -4(t5)
                  lh           s11, 10(a3)
                  lbu          a7, -11(t5) #end load_store_instr_stream_1
                  lb           s9, 9(a3)
                  lh           s7, 12(a3) #end load_store_instr_stream_0
                  la           gp, region_1+616 #start load_store_instr_stream_2
                  la           a0, region_1+239 #start load_store_instr_stream_3
                  la           t0, region_1+183 #start load_store_instr_stream_1
                  lb           s11, 46(a0)
                  lbu          a1, -46(gp)
                  la           s9, region_1+1741 #start load_store_instr_stream_0
                  sb           a1, -39(gp)
                  sb           t0, -130(s9)
                  lb           a6, 23(gp)
                  sw           a2, 877(t0)
                  lh           t2, 131(s9)
                  sb           s8, 30(a0)
                  sb           a0, -226(s9)
                  sw           t2, 1377(t0)
                  lb           s5, 138(s9)
                  lb           t5, -44(a0)
                  lbu          a3, -37(gp)
                  lh           s3, 1527(t0)
                  lbu          t3, -38(a0)
                  lbu          a6, 1410(t0)
                  sb           s7, -32(a0)
                  lbu          s11, 38(gp)
                  lb           s10, 400(t0)
                  lb           s11, -26(s9)
                  lbu          s5, 64(a0)
                  sb           ra, -1(gp)
                  lb           s0, 3(a0)
                  lw           s6, 601(t0)
                  sb           tp, -256(s9)
                  sb           sp, -62(s9)
                  lw           ra, -48(gp)
                  lb           tp, 579(t0)
                  lh           s6, -25(s9)
                  sb           s1, 43(a0)
                  sb           s6, 260(t0) #end load_store_instr_stream_1
                  lb           s11, 42(gp)
                  lbu          s0, -7(gp) #end load_store_instr_stream_2
                  sb           s11, -60(a0) #end load_store_instr_stream_3
                  lbu          t1, -243(s9) #end load_store_instr_stream_0
                  la           gp, region_0+499 #start riscv_load_store_hazard_instr_stream_6
                  lbu          s6, 13(gp)
                  sb           a6, -4(gp)
                  sb           t2, -4(gp)
                  sb           s7, -4(gp)
                  lbu          a7, -4(gp)
                  sb           s0, -4(gp)
                  sb           t4, -8(gp)
                  lui          a3, 375074
                  lbu          s3, -8(gp)
                  srl          s6, zero, s10
                  lb           s6, -8(gp)
                  lbu          a0, -8(gp)
                  lb           a7, -8(gp)
                  sb           tp, -8(gp)
                  lb           tp, -8(gp)
                  lb           ra, -8(gp)
                  sb           s7, -8(gp)
                  lbu          zero, -8(gp)
                  xor          t2, t2, ra
                  andi         s10, t1, -1177
                  sh           a6, -7(gp)
                  lb           s5, -7(gp)
                  sw           s3, -7(gp)
                  nop
                  sb           a7, -7(gp) #end riscv_load_store_hazard_instr_stream_6
                  la           t3, region_0+1646 #start riscv_load_store_rand_instr_stream_4
                  addi         a5, s11, 309
                  sb           s8, -56(t3)
                  lh           t0, 62(t3)
                  lb           a7, 7(t3)
                  sh           ra, 56(t3)
                  lb           t4, 5(t3)
                  lh           s6, 36(t3)
                  lb           s6, -32(t3)
                  lbu          zero, -23(t3)
                  lb           s3, -36(t3)
                  lb           a6, 25(t3)
                  sb           t5, -49(t3)
                  lh           s2, -14(t3)
                  lbu          s3, 55(t3)
                  auipc        t6, 1009117
                  sub          s3, t0, t4
                  sb           s11, -8(t3)
                  sra          t6, t6, s9
                  addi         ra, t1, -1676
                  lb           a6, -32(t3)
                  sh           t3, 6(t3)
                  lb           s11, 17(t3)
                  sh           t1, 8(t3)
                  or           zero, t3, t5
                  lbu          t4, -20(t3)
                  sb           s10, 35(t3)
                  srl          s4, s10, ra
                  lhu          a0, 28(t3)
                  sb           s6, 49(t3)
                  lhu          t6, 30(t3)
                  lb           a4, -59(t3)
                  lb           a5, -54(t3)
                  sb           t1, -61(t3)
                  sltu         s5, s5, a7
                  auipc        gp, 211329
                  sh           t6, 48(t3)
                  sll          s8, s10, s5
                  lbu          s0, -57(t3)
                  lhu          s0, -48(t3)
                  sb           t1, -23(t3) #end riscv_load_store_rand_instr_stream_4
                  la           s7, region_0+497 #start load_store_instr_stream_3
                  sb           a3, -2(s7)
                  la           t5, region_0+1307 #start load_store_instr_stream_2
                  sh           t5, -1(s7)
                  lb           a5, -16(t5)
                  la           a6, region_0+211 #start load_store_instr_stream_1
                  lb           s0, 32(a6)
                  lb           t4, -8(t5)
                  la           a3, region_0+182 #start load_store_instr_stream_0
                  lbu          s0, 140(a6)
                  sb           a2, -104(a6)
                  sb           a5, -10(s7)
                  lbu          a4, -145(a6)
                  lbu          t1, -12(s7)
                  lbu          t1, -33(t5)
                  sb           s5, -132(a6)
                  lb           a7, 162(a6)
                  lb           s5, 16(s7)
                  lw           zero, 25(t5)
                  sw           s3, 2(a3)
                  lbu          a1, 46(t5)
                  lbu          s2, -27(a3)
                  lb           s9, 4(t5)
                  lbu          a0, 23(a3)
                  lb           a0, -60(a6)
                  lbu          s9, 3(s7)
                  sw           s11, 1(t5)
                  lbu          gp, -10(s7)
                  lbu          a4, 12(s7)
                  sb           s0, 12(s7)
                  lb           ra, -39(a3)
                  sb           t0, -15(t5)
                  lbu          t0, 20(a6)
                  sb           s1, 43(t5)
                  lbu          s3, -110(a6) #end load_store_instr_stream_1
                  sb           a1, 10(s7) #end load_store_instr_stream_3
                  lb           s11, -6(t5) #end load_store_instr_stream_2
                  lb           a7, -43(a3) #end load_store_instr_stream_0
                  la           s11, region_1+1743 #start load_store_instr_stream_2
                  la           s8, region_1+1159 #start load_store_instr_stream_3
                  lb           t1, -43(s8)
                  la           t4, region_1+1676 #start load_store_instr_stream_1
                  sw           t1, -23(s8)
                  sh           sp, -25(s8)
                  sb           s9, -141(t4)
                  sb           a5, -58(s8)
                  la           a6, region_1+1191 #start load_store_instr_stream_0
                  sw           t2, -51(s11)
                  sb           t0, -178(s11)
                  sw           s8, -163(a6)
                  sh           t6, 70(t4)
                  lb           tp, 110(s11)
                  lbu          s9, 239(a6)
                  sb           s7, -118(s11)
                  sb           s2, 126(t4)
                  lbu          ra, -103(t4)
                  lbu          zero, -46(s8)
                  lhu          gp, 111(s11)
                  lb           s7, -206(s11)
                  lh           s2, 61(s8) #end load_store_instr_stream_3
                  lbu          zero, 2(a6)
                  lh           tp, 149(a6)
                  sw           s4, -1139(a6)
                  lhu          a4, -53(s11) #end load_store_instr_stream_2
                  lbu          t1, -109(t4) #end load_store_instr_stream_1
                  sh           a5, -1181(a6) #end load_store_instr_stream_0
                  la           s9, region_1+1017 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s8, -37(s9)
                  lb           s3, -37(s9)
                  lb           zero, -37(s9)
                  nop
                  slt          t2, a3, s3
                  sw           s1, -37(s9)
                  lhu          s2, -37(s9)
                  lb           a1, -37(s9)
                  lbu          s0, -37(s9)
                  lbu          a7, -37(s9)
                  lw           t1, -37(s9)
                  lh           ra, -37(s9)
                  ori          s10, a3, 394
                  sub          zero, ra, s1
                  lw           s4, -37(s9) #end riscv_load_store_hazard_instr_stream_1
                  la           t6, region_1+1678 #start riscv_load_store_rand_instr_stream_6
                  sltu         s8, a5, a1
                  lb           ra, 117(t6)
                  lw           a5, -2(t6)
                  slt          t1, ra, t0
                  sltiu        s0, t2, 231
                  sw           t0, 2(t6)
                  srli         a3, t4, 18
                  sb           a2, 1(t6)
                  lh           zero, 40(t6)
                  lb           s3, 217(t6)
                  sb           a5, -133(t6)
                  nop
                  slli         tp, ra, 13
                  sltiu        zero, zero, -506
                  lbu          t1, 47(t6)
                  sb           a4, -225(t6)
                  sw           s4, -22(t6)
                  lbu          s6, 101(t6)
                  lhu          gp, 48(t6)
                  lbu          t0, 92(t6)
                  and          s7, s4, t1
                  or           s9, t3, t2
                  and          s6, s2, tp
                  sub          s3, s3, ra
                  sh           s1, 180(t6)
                  lbu          a7, 138(t6)
                  xor          s11, t6, t5
                  sb           a3, -155(t6)
                  sub          s4, a5, s11
                  sb           s3, -152(t6)
                  sb           s7, 217(t6)
                  sltu         s3, a1, s8
                  sub          t2, t0, zero
                  lhu          ra, 224(t6)
                  lb           s4, -60(t6)
                  lbu          a5, -94(t6)
                  sltu         t4, s11, t4
                  and          s5, a0, s5
                  sltu         s10, a5, sp
                  or           s10, ra, a6
                  lb           s4, -179(t6)
                  sltu         a6, t3, s3
                  srai         s11, s5, 29
                  slli         s0, t1, 28
                  lb           t1, 215(t6)
                  lbu          s6, -38(t6)
                  srl          a6, zero, s6
                  add          s2, a6, a5
                  lbu          t5, 33(t6)
                  and          s3, tp, sp
                  sh           s4, -54(t6)
                  sh           t5, 24(t6) #end riscv_load_store_rand_instr_stream_6
                  la           gp, region_0+1348 #start riscv_load_store_rand_instr_stream_7
                  nop
                  xori         s0, a0, -2024
                  lbu          s9, -46(gp)
                  lb           t3, -55(gp)
                  lui          s11, 395953
                  srli         a4, gp, 25
                  lbu          s5, 33(gp)
                  addi         s0, s7, -1182
                  auipc        s5, 1008733
                  xor          s6, a0, t4
                  sw           tp, -64(gp)
                  sb           s3, 38(gp)
                  sh           s3, 48(gp)
                  xori         s7, s9, 360
                  xori         s9, s1, -1665
                  lb           a6, -46(gp)
                  lb           ra, -45(gp)
                  lbu          s3, 46(gp)
                  lui          s9, 134453
                  andi         s10, ra, -272
                  addi         s5, s1, 516
                  lbu          t2, -16(gp)
                  sh           t3, 50(gp)
                  lb           t4, -34(gp)
                  lh           s11, -26(gp)
                  sra          s10, a6, a0
                  sra          a4, t1, s7
                  add          ra, s10, a0
                  srai         t4, s0, 8
                  sh           s10, 56(gp)
                  sra          t4, s11, s11
                  lb           s11, -8(gp)
                  sh           a4, 30(gp)
                  srli         s11, t0, 6
                  sltiu        s10, gp, 803
                  ori          a3, a1, -1441
                  sb           a7, 22(gp)
                  slt          ra, sp, a2
                  and          a4, t2, s0
                  ori          a6, a6, 257
                  xor          s5, s2, zero
                  sltu         t2, s8, s1
                  srl          s4, s2, s0
                  sh           a0, -14(gp) #end riscv_load_store_rand_instr_stream_7
                  la           s11, region_0+968 #start riscv_load_store_rand_instr_stream_3
                  sub          t0, t1, ra
                  lb           s4, 359(s11)
                  lbu          s7, -757(s11)
                  sb           t4, -638(s11)
                  andi         a5, s7, -632
                  xori         s0, gp, 560
                  lbu          t1, 149(s11)
                  lbu          t1, 826(s11)
                  andi         s9, tp, -30
                  srli         t1, gp, 13
                  lw           t1, 596(s11)
                  sb           t2, 170(s11)
                  srli         t2, a2, 28
                  andi         a7, s3, 143
                  lbu          s6, -287(s11)
                  nop
                  auipc        t2, 185985
                  lb           s7, 438(s11)
                  sltiu        gp, s9, -1714
                  sll          a6, s10, a7
                  auipc        s7, 725780
                  sub          zero, a0, tp
                  andi         s8, sp, 229
                  ori          t4, ra, -577
                  xori         zero, t6, -1942
                  lb           s5, -469(s11)
                  srai         a5, a1, 19
                  lb           s9, -907(s11)
                  lb           a5, -260(s11)
                  add          gp, t5, a5
                  and          s2, t0, s4
                  sb           a3, -454(s11)
                  lb           zero, -805(s11)
                  addi         s4, t0, -1089
                  and          t0, s11, s1
                  sb           s5, 489(s11)
                  xori         a6, a2, -1829
                  ori          a7, a0, 218
                  sh           s8, 942(s11)
                  sb           ra, -933(s11) #end riscv_load_store_rand_instr_stream_3
                  la           s8, region_0+798 #start riscv_load_store_rand_instr_stream_0
                  sw           t0, -118(s8)
                  lb           a6, -467(s8)
                  xori         gp, zero, -814
                  lhu          t4, 402(s8)
                  or           s10, t4, s4
                  nop
                  slti         t4, s1, 298
                  lh           s3, -726(s8)
                  lbu          s7, -127(s8)
                  sb           zero, 761(s8)
                  xori         a7, t1, 1008
                  lb           s7, -360(s8)
                  and          s3, a1, s11
                  lhu          t0, 528(s8)
                  lb           s0, 673(s8)
                  sltiu        t3, ra, -1959
                  lb           s4, 1070(s8)
                  sb           t4, 1(s8)
                  xori         t3, s5, -800
                  srai         s0, a6, 23
                  lw           a6, 106(s8)
                  nop
                  slti         s10, s1, -1390
                  lh           s5, -280(s8)
                  lbu          s9, 1059(s8)
                  srli         a5, s9, 3
                  ori          a6, s1, -1859
                  ori          s2, t3, -1308
                  lui          s5, 386920
                  lbu          s5, 535(s8)
                  lh           s3, 614(s8)
                  sll          s5, s10, s5
                  sb           t0, 200(s8)
                  addi         s5, t4, -1114
                  add          s2, s2, s0
                  lw           s4, 1066(s8) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+445 #start load_store_instr_stream_3
                  lb           s7, -2(s11)
                  la           t0, region_0+179 #start load_store_instr_stream_2
                  la           s4, region_0+1913 #start load_store_instr_stream_1
                  la           s6, region_0+156 #start load_store_instr_stream_0
                  lb           s2, -39(t0)
                  lb           t1, 1(t0)
                  sh           t4, -3(s4)
                  lhu          zero, -51(t0)
                  lbu          s8, -42(s4)
                  lb           gp, 1306(s6)
                  lb           ra, 38(s4)
                  lb           s0, 579(s6)
                  lbu          t5, 0(s4)
                  sh           a0, 17(s4)
                  sb           sp, 0(t0)
                  sb           sp, -35(s11)
                  lb           a7, 484(s6)
                  lb           t1, 1504(s6)
                  sh           t3, -7(t0)
                  lb           s0, 780(s6)
                  lb           t4, -2(s4)
                  sh           zero, 1152(s6)
                  lhu          t5, -49(s4)
                  lhu          t3, -17(s11)
                  lb           t5, 32(s4) #end load_store_instr_stream_1
                  lb           a3, 54(s11)
                  lbu          s0, -57(t0) #end load_store_instr_stream_2
                  sb           s9, 58(s11) #end load_store_instr_stream_3
                  lbu          s10, 23(s6) #end load_store_instr_stream_0
                  la           s10, region_1+889 #start riscv_load_store_hazard_instr_stream_7
                  lbu          a0, 500(s10)
                  lh           s11, -611(s10)
                  lbu          a4, 857(s10)
                  lbu          ra, 212(s10)
                  sw           s3, 451(s10)
                  lhu          s2, -133(s10)
                  lb           t1, -133(s10)
                  lhu          s5, 329(s10)
                  and          s3, a6, a4
                  sb           s2, -849(s10)
                  lb           a5, 218(s10)
                  lh           gp, -869(s10)
                  lbu          a3, 32(s10)
                  sb           s6, 145(s10)
                  sra          a3, s11, t5
                  lbu          t5, 811(s10)
                  sw           s3, -637(s10)
                  lbu          a1, -637(s10)
                  lw           s9, -637(s10)
                  auipc        t0, 740122
                  lh           s2, 889(s10) #end riscv_load_store_hazard_instr_stream_7
                  la           t4, region_1+1407 #start riscv_load_store_hazard_instr_stream_2
                  slli         gp, t5, 1
                  add          s11, s11, a5
                  lb           tp, -4(t4)
                  lbu          a1, -4(t4)
                  lb           s2, -4(t4)
                  or           s8, s10, s5
                  sb           s4, -4(t4)
                  lb           t6, -4(t4)
                  lb           t1, -4(t4)
                  sltu         s8, a4, s3
                  srli         a4, t1, 14
                  lbu          a3, -4(t4)
                  srl          s2, gp, t0
                  lb           s7, -4(t4)
                  lb           s9, -4(t4)
                  lbu          s6, -4(t4)
                  lb           a1, -4(t4)
                  sb           s1, -4(t4) #end riscv_load_store_hazard_instr_stream_2
                  la           a1, region_0+1046 #start riscv_load_store_hazard_instr_stream_3
                  sb           gp, -123(a1)
                  sh           a2, 32(a1)
                  sh           ra, 32(a1)
                  lbu          s8, 32(a1)
                  lb           s3, 123(a1)
                  lbu          s3, 93(a1)
                  lbu          s6, 113(a1)
                  lb           s8, 113(a1)
                  lbu          s2, -165(a1)
                  lbu          s4, -165(a1)
                  sb           t2, -67(a1)
                  lbu          zero, -67(a1)
                  sb           a6, -115(a1)
                  lbu          tp, 89(a1)
                  sb           a0, -104(a1)
                  sw           a4, 94(a1)
                  lb           t5, 221(a1)
                  lbu          t0, 70(a1)
                  sltu         t2, a2, t6
                  lbu          a4, -51(a1) #end riscv_load_store_hazard_instr_stream_3
                  srl          a3, zero, a5
                  bne          s5, gp, 10f
                  sltiu        s4, s11, -1920
                  nop
                  srai         s2, a2, 8
                  and          s7, a5, s8
                  beq          t5, a7, 26f
                  sltiu        t3, s9, -429
                  addi         t2, s0, -1881
                  bgeu         s7, sp, 28f
10:               srli         tp, a1, 2
                  srli         a0, a6, 13
                  bgeu         t0, gp, 30f
                  slli         a0, t6, 18
                  sub          gp, tp, s1
                  addi         gp, a5, 1619
                  blt          s11, tp, 27f
                  sra          a1, a3, s6
                  ori          t3, a5, 1639
                  beq          s2, s9, 32f
                  sltiu        a3, a4, -515
                  slti         a7, s3, -1722
                  add          a5, a4, t1
                  sltu         a1, a4, a7
                  ori          s9, t3, 598
                  sltiu        t2, a6, 263
26:               and          s3, gp, s9
27:               slti         a5, zero, 371
28:               bgeu         a7, t5, 34f
                  andi         t5, s7, -1143
30:               slli         s4, s6, 10
                  xor          t3, a7, t5
32:               slti         gp, a0, -245
                  nop
34:               add          s3, s1, gp
                  nop
                  sltu         s0, s3, t0
                  sll          t2, s1, s8
                  sll          t1, a5, gp
                  sltu         a1, a3, t1
                  bne          a3, tp, 45f
                  xor          s6, a1, t0
                  auipc        a3, 135561
                  or           a5, a0, s3
                  xor          s2, sp, sp
45:               blt          a7, a7, 59f
                  andi         t5, s10, 1849
                  add          t4, s6, t0
                  bgeu         s8, s11, 49f
49:               sltiu        zero, t1, -1779
                  sltu         a0, s2, a2
                  slt          t6, t2, t1
                  slti         t5, zero, -95
                  slti         ra, t6, 1922
                  srai         a0, t4, 11
                  bltu         t6, s6, 72f
                  xori         s6, gp, 1662
                  xori         zero, s6, 318
                  srl          s7, t0, t3
59:               sra          a0, tp, a0
                  addi         zero, a4, 903
                  xor          s7, s8, t5
                  sltu         ra, a3, s9
                  and          s10, sp, s10
                  sub          gp, a4, s9
                  bltu         a2, s9, 74f
                  ori          t0, a2, -119
                  slli         t3, a5, 18
                  andi         t0, a1, 1908
                  srl          s9, a4, s10
                  srai         a3, s2, 5
                  blt          s6, s4, 86f
72:               xori         s4, a5, -1968
                  and          a6, t2, s5
74:               blt          s4, t1, 84f
                  srai         s4, s5, 6
                  slt          s11, t0, t6
                  bgeu         t6, t5, 80f
                  slti         a3, s0, -1572
                  sub          a0, t6, s5
80:               srl          t3, a6, s4
                  slt          s7, a6, ra
                  bgeu         a4, a5, 99f
                  xori         s8, s6, -162
84:               sub          t5, a7, ra
                  sll          a7, s4, gp
86:               sll          s8, a0, a7
                  and          a7, s10, a4
                  slti         a6, gp, 235
                  addi         a1, a5, -915
                  la           t6, region_1+73 #start riscv_load_store_rand_instr_stream_1
                  sltiu        a4, s1, -922
                  srl          tp, t4, a1
                  lbu          gp, 12(t6)
                  nop
                  andi         s5, a6, -819
                  slt          gp, a2, t2
                  ori          s3, tp, -516
                  lb           s10, 2(t6)
                  sll          a7, t5, tp
                  xor          a5, a0, gp
                  auipc        s3, 338435
                  slt          s0, a5, s9
                  lbu          s7, 19(t6)
                  srl          zero, a3, tp
                  xori         s8, a2, 476
                  lbu          s6, -59(t6)
                  slt          s5, s10, s11
                  sb           a1, -22(t6)
                  ori          s9, a4, 912
                  lhu          s5, 53(t6)
                  or           t2, s5, a4
                  sltu         s3, t4, t6
                  lb           s4, -10(t6)
                  add          t0, a6, s6
                  sltiu        s8, a1, -545
                  auipc        zero, 488795
                  lb           t0, 33(t6)
                  sb           a4, -25(t6)
                  slti         s9, t3, -1011
                  sub          s3, a0, t3
                  sra          s0, zero, ra
                  sh           t2, 7(t6)
                  sll          t3, a7, a5
                  xor          s11, a3, a1
                  add          s8, a6, ra
                  srl          t5, t4, s5
                  and          t1, t4, s6
                  sll          a0, gp, s5
                  auipc        s0, 118525
                  sb           t2, -3(t6)
                  lbu          s9, 6(t6)
                  lw           tp, 39(t6) #end riscv_load_store_rand_instr_stream_1
                  srai         tp, s0, 18
                  bne          s7, t4, 95f
                  add          s11, s1, a5
                  bgeu         a6, t0, 100f
                  slli         t5, s7, 28
95:               srl          zero, s2, a6
                  xor          t3, t4, zero
                  or           ra, a5, s3
                  andi         s2, s10, 1650
99:               and          s3, t4, t3
100:              sra          zero, s2, s1
                  sll          t1, s7, t6
                  nop
                  srl          a3, s8, t6
                  sltiu        a6, gp, 1255
                  beq          s2, a2, 114f
                  srl          s7, a7, t5
                  slli         s3, s10, 13
                  lui          a1, 904568
                  sll          s8, a1, a1
                  sll          s6, gp, ra
                  andi         t0, t4, 1293
                  auipc        s7, 81388
                  srai         s7, a7, 29
114:              nop
                  slt          s11, a3, s8
                  srl          s10, s8, s7
                  sll          zero, s1, s6
                  bne          zero, ra, 132f
                  srl          a3, t1, a7
                  bne          gp, a7, 137f
                  addi         s6, sp, 440
                  or           t4, a0, s5
                  ori          a5, a3, -1150
                  lui          t2, 852521
                  xori         t4, ra, -1974
                  nop
                  srli         t5, s3, 19
                  ori          gp, s1, 1351
                  sltu         a5, s6, a1
                  slli         s5, a3, 7
                  addi         a5, s6, 284
                  sltiu        t2, gp, 255
                  la           t3, sub_1
                  slli         a3, a6, 16
                  andi         t1, s1, -1875
                  sra          s7, t6, t3
                  addi         t3, t3, -66
                  slti         s2, tp, -226
                  add          ra, s6, tp
                  slti         s2, a0, 771
main_j3:          jalr         ra, t3, 66 #jump main -> sub_1
                  sltu         a0, s2, a0
                  bge          s7, a1, 140f
                  add          t5, t5, t1
132:              sltiu        s9, gp, 1619
                  slli         tp, a4, 31
                  slli         s6, s11, 1
                  bltu         a2, s3, 146f
                  and          s11, a4, a1
137:              bne          a2, s5, 140f
                  bge          t1, t6, 154f
                  slli         s8, ra, 1
140:              beq          s8, s8, 159f
                  slti         t5, t1, 759
                  slt          a0, gp, s4
                  slti         t2, t6, 1034
                  bltu         t3, s6, 164f
                  sub          t6, t5, s9
146:              slt          s7, a3, s8
                  sltu         gp, a5, t1
                  lui          s8, 670674
                  lui          gp, 812074
                  slt          t4, t0, s6
                  add          s5, a5, s4
                  or           zero, s8, s3
                  xor          a1, a5, s7
154:              sltiu        s8, t6, 1129
                  sltu         tp, s4, s0
                  and          s5, ra, t3
                  ori          a3, gp, 1302
                  addi         s8, tp, -803
159:              xor          t5, a2, t4
                  ori          a6, zero, -1344
                  srai         gp, s5, 10
                  slt          s2, ra, s0
                  nop
164:              xor          s9, tp, a5
                  add          a0, s8, s0
                  add          s11, a3, s1
                  sll          s4, s7, s4
                  slli         a3, t2, 28
                  sra          s4, zero, a7
                  sltu         t3, s6, t0
                  or           a3, a0, s0
                  and          t5, t2, s3
                  srli         t2, s4, 16
                  bltu         t5, sp, 182f
                  slli         s10, zero, 13
                  sll          s8, s9, a6
                  bne          a0, t6, 192f
                  and          s6, ra, t6
                  srl          s9, s6, s11
                  addi         gp, t4, 600
                  sltu         t1, t6, t4
182:              andi         t0, t2, -408
                  srl          a4, gp, s1
                  andi         t3, a0, -1869
                  slli         a6, t3, 11
                  beq          s9, s7, 195f
                  slt          t3, a1, a5
                  srl          s0, a7, s4
                  nop
                  sub          s5, a2, a4
                  beq          a3, s5, 200f
192:              beq          a0, s1, 207f
                  sll          a3, s10, s8
                  sltu         a6, t0, a6
195:              bne          s2, a7, 204f
                  slt          ra, a7, gp
                  srl          tp, a6, s9
                  slli         t5, a7, 25
                  beq          a1, s8, 216f
200:              srl          s6, s8, s8
                  slli         a3, a4, 2
                  slli         s6, t2, 0
                  and          t2, a3, s6
204:              xori         a0, t3, -1169
                  and          zero, s0, gp
                  srli         a1, sp, 17
207:              nop
                  slt          s3, s6, sp
                  auipc        ra, 524594
                  xori         t2, ra, -543
                  nop
                  xor          t1, t0, zero
                  or           a6, s10, a5
                  xor          s2, a0, t3
                  sra          a7, s8, s4
216:              srli         tp, tp, 25
                  sra          gp, a0, s6
                  srai         s8, t4, 7
                  beq          s2, t0, 238f
                  bne          ra, s11, 238f
                  sltu         a1, s10, a7
                  slt          s3, s6, s5
                  bltu         s11, s2, 228f
                  sltiu        a5, t6, 1965
                  nop
                  sll          a7, sp, s7
                  and          s6, s4, s5
228:              sll          t6, s0, zero
                  la           t6, region_1+440 #start load_store_instr_stream_2
                  la           a0, region_1+572 #start load_store_instr_stream_1
                  sb           t0, -145(t6)
                  sw           s6, -16(a0)
                  la           a3, region_1+1630 #start load_store_instr_stream_3
                  lhu          t5, -26(a3)
                  la           s8, region_1+1273 #start load_store_instr_stream_0
                  lbu          t4, -6(s8)
                  sh           s8, -132(a0)
                  lbu          t4, -29(a3)
                  sb           s8, 139(a0)
                  lb           s11, -9(t6)
                  lb           s2, -57(a3)
                  lbu          s9, -54(a3)
                  lh           t1, -7(s8)
                  lbu          s4, 0(a3)
                  lbu          s10, 142(a0)
                  lhu          t1, 94(t6)
                  lhu          s7, 168(a0)
                  sb           t1, -229(t6)
                  lb           s11, -2(a0)
                  lb           ra, 10(s8)
                  lb           s9, -6(s8)
                  lbu          tp, -11(a3)
                  lbu          s5, -14(s8)
                  lb           s3, -4(s8)
                  lbu          s9, 159(a0) #end load_store_instr_stream_1
                  lbu          t5, 11(a3)
                  lbu          s11, 195(t6) #end load_store_instr_stream_2
                  lhu          zero, 28(a3) #end load_store_instr_stream_3
                  sb           s11, -2(s8) #end load_store_instr_stream_0
                  xor          zero, s4, s2
                  sltu         s7, s1, t2
                  auipc        s8, 192056
                  ori          a7, s0, 1200
                  sub          s11, s9, s0
                  srli         tp, t3, 1
                  bge          a1, s0, 238f
                  or           zero, ra, a2
                  xor          a6, s10, gp
238:              xori         t0, ra, 326
                  and          t3, t4, a1
                  add          s11, t5, s7
                  nop
                  nop
                  bltu         s3, a1, 253f
                  bltu         s8, ra, 264f
                  sll          zero, s0, t5
                  sub          a4, zero, a2
                  andi         s9, a4, 351
                  andi         t6, s10, 1345
                  and          a5, t6, gp
                  bltu         sp, s3, 259f
                  sub          a5, t2, s9
                  addi         s6, s9, -1282
253:              lui          a6, 654917
                  srai         s0, sp, 2
                  slli         a4, t0, 6
                  srai         t2, s3, 7
                  and          s2, t4, t5
                  ori          gp, s2, -880
259:              ori          s7, t0, 590
                  andi         s8, s8, -103
                  srli         a3, t6, 27
                  bgeu         a5, t0, 265f
                  sltiu        s6, t0, -214
264:              bge          sp, s7, 265f
265:              sltiu        s2, a1, 972
                  blt          s6, t1, 272f
                  slli         ra, a2, 14
                  slt          s2, s8, s3
                  addi         a0, s1, -1655
                  bltu         s1, a5, 281f
                  bne          a6, s8, 285f
272:              ori          t3, a4, 210
                  sub          a6, a2, ra
                  lui          s5, 744461
                  slli         s3, t3, 23
                  sltu         t5, s7, zero
                  slt          s8, s1, a7
                  or           s9, t5, a1
                  bltu         s11, t0, 296f
                  beq          zero, a6, 295f
281:              sltu         ra, a5, s11
                  slli         s9, a3, 27
                  add          s11, s3, t1
                  lui          s2, 249914
285:              and          t2, s7, s2
                  sra          s10, tp, a3
                  bltu         t5, s6, 304f
                  auipc        ra, 646815
                  srai         s10, a1, 15
                  addi         s2, s9, -295
                  xori         a4, s8, 124
                  sltu         t3, s8, t0
                  add          s8, t2, a4
                  sll          a1, zero, gp
295:              add          ra, s9, t1
296:              ori          t0, zero, 1902
                  lui          s3, 416660
                  addi         a3, s3, 1150
                  sra          s3, zero, s3
                  ori          t6, a5, -1146
                  nop
                  ori          a0, t6, 439
                  bltu         s9, t6, 317f
304:              ori          a0, t1, 1694
                  or           s11, sp, s3
                  xori         a3, t3, 1072
                  nop
                  nop
                  or           s2, zero, tp
                  slt          a5, s6, t5
                  srl          s7, zero, a5
                  sra          s0, a1, s0
                  nop
                  bltu         sp, s1, 327f
                  auipc        zero, 391465
                  sub          a1, s8, s2
317:              slt          t3, a4, a6
                  or           a6, t1, t1
                  srl          t4, tp, t4
                  slt          ra, a2, s0
                  slli         s3, t2, 10
                  sra          a5, s2, t0
                  xori         a1, gp, 639
                  xor          s4, s3, s11
                  andi         s11, a6, -320
                  ori          a1, s6, -642
327:              sll          s4, tp, t3
                  ori          s5, t3, -114
                  srl          a3, t5, a2
                  slti         s5, s7, -1036
                  bne          t4, sp, 338f
                  andi         t6, t4, -836
                  and          s10, zero, a1
                  auipc        s9, 159105
                  sltu         t3, s10, s11
                  addi         t6, s0, 1571
                  sltu         tp, ra, a6
338:              bgeu         s4, s8, 342f
                  bge          s5, t2, 359f
                  and          s3, s10, sp
                  bgeu         s5, a0, 352f
342:              beq          s6, t5, 350f
                  beq          t6, t4, 352f
                  srli         s7, a7, 21
                  sub          s6, s5, s3
                  sltu         t5, t5, a5
                  or           zero, a5, s7
                  srai         s10, a7, 13
                  addi         a3, s3, -1768
350:              sll          s9, s3, ra
                  sltu         s9, t6, s4
352:              sltiu        a3, s4, 1540
                  bgeu         s9, t5, 369f
                  addi         t4, t5, -1328
                  bgeu         a4, a1, 365f
                  slli         s10, s5, 11
                  lui          s3, 875855
                  auipc        s10, 127667
359:              ori          a3, a6, 133
                  srai         s7, t5, 14
                  srli         t1, s10, 28
                  sra          s10, s9, s3
                  xori         s6, a4, 1761
                  sltiu        zero, tp, -232
365:              sltu         tp, a3, s10
                  sub          t3, s3, t1
                  sltu         s3, t2, s5
                  and          zero, a0, a6
369:              slt          a1, a0, sp
                  andi         a4, a6, -142
                  xori         ra, a2, 602
                  srl          s5, a7, sp
                  beq          s3, t3, 392f
                  lui          s8, 831520
                  sub          tp, sp, ra
                  xor          a4, s2, t4
                  andi         s11, s3, 736
                  lui          a7, 437436
                  slt          a6, s7, gp
                  ori          t3, zero, -1593
                  addi         s6, s9, -804
                  xor          t5, a0, s6
                  or           a0, s2, a2
                  blt          a2, t3, 395f
                  bltu         a5, a6, 403f
                  and          zero, sp, t4
                  slli         t3, s7, 1
                  slli         t3, s9, 21
                  sra          a0, s4, s4
                  add          a0, ra, tp
                  bltu         a1, t2, 411f
392:              bltu         a5, t1, 409f
                  sra          zero, a4, zero
                  or           a3, s11, s10
395:              sltiu        s8, t3, -1728
                  srl          gp, tp, s4
                  sltiu        t1, t0, -1178
                  bltu         s3, s0, 415f
                  sll          s7, s5, ra
                  ori          a4, t6, 303
                  ori          s6, s6, 1798
                  ori          a4, t5, -1530
403:              srl          s7, a5, s11
                  or           a1, s4, s6
                  sll          a3, a3, s4
                  bltu         t5, t5, 415f
                  sltiu        a6, t1, 906
                  slli         tp, s10, 28
409:              sll          s5, t6, s2
                  add          s6, s8, s11
411:              bne          s2, s11, 426f
                  bne          s5, s5, 427f
                  bge          t3, s11, 419f
                  bgeu         zero, s1, 424f
415:              blt          a4, s10, 423f
                  nop
                  srli         a6, s11, 16
                  srli         s4, s0, 31
419:              or           s5, ra, zero
                  and          s11, s1, gp
                  srl          s0, ra, t1
                  slti         a5, t3, -163
423:              add          s8, t6, s2
424:              or           a3, s11, a5
                  slt          s4, s2, s3
426:              bgeu         a7, t2, 430f
427:              or           t2, tp, t5
                  or           s9, t4, s10
                  ori          t6, s5, -923
430:              slli         a6, zero, 10
                  blt          s6, a7, 444f
                  bltu         a7, s2, 433f
433:              auipc        s10, 49278
                  srl          gp, gp, t3
                  sub          t5, t0, s6
                  sub          s8, s4, a4
                  sll          s9, s1, s8
                  auipc        s11, 95392
                  or           s3, s5, t1
                  addi         a1, a2, 385
                  andi         a6, t1, 125
                  la           a0, sub_2
                  addi         a0, a0, 985
                  nop
                  srl          s3, a3, s11
                  add          tp, t0, a0
                  and          t5, ra, s10
                  nop
                  sltu         s10, s2, s5
main_j1:          jalr         ra, a0, -984 #jump main -> sub_2
                  sltiu        s5, a4, 640
                  or           s10, t2, a1
444:              ori          gp, s0, 1607
                  andi         s0, s6, -1206
                  sltu         a6, tp, ra
                  slli         s5, a7, 0
                  srai         t2, s1, 3
                  sub          t0, t0, a5
                  slli         a5, t5, 20
                  auipc        s8, 335596
                  sltiu        a4, sp, -883
                  bltu         a1, t0, 458f
                  slti         t1, a1, -532
                  or           t6, s1, a5
                  sltu         gp, s2, a2
                  sltu         a0, s9, s10
458:              slli         s8, s9, 27
                  bltu         s2, a1, 462f
                  auipc        t4, 422872
                  sltu         t5, s0, a4
462:              lui          ra, 461947
                  lui          s8, 83732
                  bltu         a0, s3, 484f
                  ori          t6, s11, -1323
                  bltu         a7, s0, 480f
                  add          s8, s5, t4
                  ori          s4, s4, -1446
                  auipc        s3, 648389
                  bge          a7, s4, 489f
                  ori          t6, t2, 1524
                  and          t4, a3, s11
                  lui          t2, 85895
                  bgeu         gp, a2, 484f
                  nop
                  or           s6, a4, s3
                  sra          s4, t0, a7
                  slti         t0, s9, 608
                  beq          gp, a4, 488f
480:              srli         t5, s0, 10
                  ori          gp, t4, -470
                  sltu         t5, a2, t5
                  beq          s1, s5, 494f
484:              sltiu        s10, sp, 276
                  lui          gp, 1039000
                  slli         s11, s11, 10
                  slli         a3, s3, 2
488:              sub          zero, a5, s6
489:              nop
                  sltu         a3, sp, s7
                  bgeu         s2, a4, 498f
                  bge          a2, s6, 495f
                  slli         s0, a2, 8
494:              sra          s0, tp, s9
495:              slt          a3, a0, sp
                  slli         s10, t6, 23
                  bltu         t6, s1, 514f
498:              bge          a0, tp, 512f
                  or           t2, s2, t6
                  srai         t6, s2, 21
                  sra          s6, gp, a5
                  blt          a0, a0, 521f
                  add          t6, ra, s7
                  addi         a7, gp, 1238
                  bne          gp, t5, 514f
                  auipc        gp, 459261
                  nop
                  xori         s5, sp, -2037
                  bge          a3, t5, 518f
                  bltu         s5, s0, 526f
                  bne          t1, sp, 520f
512:              bne          s7, t6, 521f
                  lui          t3, 912627
514:              sub          s6, s4, t1
                  bltu         a1, s7, 524f
                  slli         a4, s0, 9
                  beq          t5, tp, 530f
518:              srl          a6, s11, s4
                  add          a5, t2, s4
520:              or           s5, a3, a3
521:              andi         t6, s11, 561
                  slli         s2, a2, 10
                  srl          s10, s4, s10
524:              sll          s3, t0, s11
                  lui          zero, 106625
526:              beq          sp, t1, 533f
                  slli         s7, t3, 15
                  slli         s9, ra, 22
                  and          s3, s2, sp
530:              slt          t4, a0, s10
                  or           s0, s0, s10
                  ori          a3, t2, -1103
533:              xor          s5, s5, s8
                  bgeu         sp, a6, 542f
                  add          s9, t3, a2
                  xor          s6, sp, s11
                  addi         s4, s9, -26
                  srl          s2, t4, s11
                  nop
                  bgeu         s9, s8, 554f
                  sltu         tp, t1, t6
542:              xor          a1, gp, s2
                  srai         a4, a7, 11
                  bne          a3, a2, 548f
                  xor          a5, t0, a2
                  sra          s9, tp, t6
                  bge          t2, gp, 552f
548:              slti         t5, a4, -2003
                  andi         s11, a7, -1708
                  auipc        s9, 258159
                  srai         tp, zero, 17
552:              addi         s4, a5, -696
                  slli         s11, t0, 20
554:              slt          a1, s0, s5
                  srl          tp, s1, t3
                  bne          s6, gp, 575f
                  sltiu        ra, s1, -430
                  sltu         a0, t3, a2
                  addi         s4, t4, 732
                  slt          a7, a1, s11
                  sltu         gp, ra, s11
                  bgeu         s5, t4, 565f
                  srli         a4, s2, 13
                  sll          s3, s11, s7
565:              srli         s9, a1, 25
                  sll          gp, t4, t4
                  ori          ra, a5, -1483
                  bgeu         s11, t4, 579f
                  ori          tp, s6, 632
                  nop
                  slt          s3, gp, s10
                  blt          gp, ra, 592f
                  sub          ra, a0, s3
                  sra          a1, a6, t3
575:              xori         s2, s10, -1992
                  or           s0, s2, t1
                  addi         a1, tp, 331
                  beq          gp, ra, 589f
579:              andi         t4, tp, 1038
                  bgeu         t2, sp, 586f
                  xori         a3, t6, 1437
                  andi         a5, a0, -855
                  srli         s3, t5, 7
                  and          a5, ra, t3
                  srl          zero, a3, a1
586:              sub          s2, t2, s7
                  add          t0, s4, a7
                  lui          a5, 610874
589:              srl          s2, a6, s6
                  add          a4, t0, tp
                  sra          s2, a4, s2
592:              slt          t4, sp, a4
                  bne          a3, ra, 607f
                  bge          a4, s8, 614f
                  bge          s2, s7, 610f
                  or           s11, t4, a0
                  srai         s9, s7, 23
                  xori         a4, t6, 1191
                  add          s10, a1, a3
                  sub          tp, s7, s3
                  nop
                  bgeu         tp, a1, 612f
                  andi         gp, s11, 418
                  slti         s0, s0, -1677
                  ori          zero, s1, 1443
                  srli         s7, a0, 9
607:              addi         s10, a3, 34
                  add          a6, a5, ra
                  xori         a3, t3, -927
610:              add          a7, s9, t6
                  ori          s3, a2, -119
612:              nop
                  bge          gp, a3, 622f
614:              slt          s10, a5, s1
                  slli         s5, s3, 18
                  beq          t0, s9, 633f
                  bne          a1, gp, 636f
                  slt          t5, s5, s4
                  beq          t3, t5, 629f
                  sltiu        s10, zero, -1163
                  bge          t0, s3, 624f
622:              bgeu         s7, a6, 639f
                  slli         t6, s7, 0
624:              and          s11, tp, s9
                  srli         ra, t1, 29
                  bltu         a3, t3, 627f
627:              sra          t3, s11, t6
                  slt          zero, t1, s8
629:              beq          tp, a4, 646f
                  sub          s0, sp, a2
                  andi         s8, s5, -1298
                  xor          a7, t2, s3
633:              slt          s11, a7, t3
                  auipc        s2, 343358
                  sub          s0, tp, s3
636:              sub          t5, s5, s8
                  bge          a4, t1, 652f
                  srli         s7, a6, 11
639:              bne          s9, a4, 655f
                  add          tp, t3, s1
                  sll          s2, t4, s2
                  xor          zero, t0, gp
                  sll          a1, s8, t2
                  sll          t2, a1, gp
                  addi         tp, ra, -1964
646:              andi         a7, s0, -1013
                  nop
                  addi         a0, t5, 295
                  slti         t1, a6, 397
                  addi         s2, a6, 1777
                  bge          t1, a6, 669f
652:              xori         s6, s11, -1631
                  slti         s8, a2, -774
                  srai         t6, a6, 25
655:              bge          t6, zero, 664f
                  blt          a7, s0, 673f
                  srai         s2, t1, 18
                  or           t1, t4, zero
                  auipc        s3, 58058
                  ori          t0, a5, 1872
                  or           s2, a6, a0
                  srai         t3, t6, 31
                  sltu         s0, a0, t1
664:              blt          t2, s4, 683f
                  nop
                  sltu         a5, s5, s6
                  lui          a1, 566659
                  xor          s11, s4, s5
669:              srli         t2, s9, 13
                  bltu         s9, a6, 683f
                  sra          s3, s6, t2
                  srl          a0, t2, t0
673:              sub          t5, s5, a4
                  blt          t4, a2, 689f
                  bge          a5, s5, 690f
                  bne          s6, s5, 687f
                  sra          s5, ra, t6
                  sub          s2, a6, t3
                  andi         s11, a6, 924
                  beq          t4, s8, 687f
                  sltu         s3, a4, s7
                  lui          a5, 281640
683:              xor          s11, s2, t6
                  bltu         s1, s6, 690f
                  sra          t0, a2, gp
                  sra          s0, a1, t1
687:              sub          s10, a1, s5
                  sll          s0, tp, a2
689:              slti         a3, t2, -1285
690:              xori         a3, a6, -727
                  nop
                  lui          s6, 929133
                  srai         s4, s9, 2
                  andi         t1, s5, 8
                  xori         s3, s0, -129
                  srai         t5, t2, 31
                  slt          s9, t1, t1
                  srl          s3, a6, tp
                  sll          s2, s11, a4
                  ori          s6, tp, -1966
                  sub          t2, s1, a3
                  bne          t5, s10, 722f
                  sltiu        gp, s3, 1516
                  bge          sp, s0, 721f
                  blt          t5, t3, 710f
                  xor          a1, s4, s4
                  or           s4, t5, a7
                  nop
                  sra          s7, a6, s5
710:              srl          zero, a3, a0
                  bgeu         s2, tp, 714f
                  bne          gp, t4, 729f
                  ori          s6, zero, -1100
714:              sll          t4, a0, a2
                  sub          s9, t5, a6
                  sltiu        s10, s0, -179
                  sltiu        ra, s6, -1663
                  slti         ra, s4, -1902
                  sltiu        s2, s10, -1369
                  sltu         a6, s9, a2
721:              sra          s10, s6, a6
722:              add          t3, a6, a7
                  and          s4, s1, a0
                  or           t1, a5, s8
                  slli         t5, s8, 2
                  add          a3, s2, sp
                  bge          a2, s11, 737f
                  slt          s10, a3, zero
729:              sltiu        ra, t5, -1304
                  sub          s3, tp, s6
                  blt          t1, s3, 750f
                  slli         a4, a5, 19
                  sra          t3, a4, a6
                  srl          zero, t4, s4
                  bgeu         s10, a0, 749f
                  andi         s8, a0, 1495
737:              ori          t3, s1, -129
                  ori          gp, s9, -295
                  slt          s4, a6, a0
                  nop
                  srli         t4, ra, 23
                  bgeu         s9, t3, 753f
                  sra          t3, a6, s4
                  sub          s6, t6, a7
                  sltu         t4, a0, t3
                  bltu         s9, s2, 754f
                  srai         s3, t5, 4
                  sltiu        ra, a5, 1903
749:              add          s0, s6, a2
750:              srai         s10, zero, 10
                  sltiu        s8, s5, 1280
                  slt          s3, a7, s7
753:              bne          s3, a3, 769f
754:              sll          t5, s5, a2
                  ori          s8, a7, 636
                  andi         t4, a1, 1413
                  srli         t4, t0, 3
                  lui          t3, 432474
                  blt          gp, a4, 769f
                  srl          s2, s1, a6
                  srai         t3, t0, 12
                  sub          s3, a6, a6
                  and          a3, t5, zero
                  lui          a3, 492318
                  sltu         zero, ra, sp
                  bne          a4, s9, 775f
                  sra          a6, a7, sp
                  bge          t3, a4, 769f
769:              and          t6, zero, s2
                  slli         t3, a1, 1
                  bge          a0, s1, 775f
                  beq          s0, a7, 781f
                  lui          tp, 498211
                  sltiu        s9, a2, -1673
775:              and          zero, a0, sp
                  lui          a7, 179394
                  sll          s8, t3, s0
                  blt          s11, ra, 781f
                  bge          s4, t6, 788f
                  slli         a7, s2, 30
781:              lui          s3, 828411
                  sltu         s4, s6, s5
                  auipc        s9, 870935
                  bltu         a4, a4, 804f
                  sub          ra, t6, ra
                  beq          t5, s8, 800f
                  auipc        a7, 837770
788:              xori         s5, a0, 825
                  blt          t1, t0, 807f
                  sltiu        t2, zero, -756
                  bltu         s8, s10, 808f
                  xori         t3, s10, 355
                  slti         ra, s2, -356
                  and          ra, s8, s10
                  nop
                  xori         s8, s1, 1269
                  bgeu         s6, s5, 814f
                  nop
                  sra          a4, a3, ra
800:              bge          s9, s1, 820f
                  slli         t4, t1, 29
                  srli         s0, a3, 15
                  sub          a5, t3, a5
804:              nop
                  sll          t0, t0, sp
                  and          s8, t0, t5
807:              sll          zero, a4, a1
808:              add          t0, tp, a6
                  blt          t2, t2, 812f
                  and          t4, s0, a6
                  xori         s7, t6, -1430
812:              slti         t2, a2, -1984
                  sub          t0, s11, zero
814:              bne          a5, t5, 824f
                  xori         t3, s9, -1788
                  bne          tp, a5, 830f
                  sub          zero, a5, s11
                  blt          s10, s11, 821f
                  bgeu         a5, zero, 836f
820:              sltu         s6, a0, s7
821:              slt          tp, t4, sp
                  sll          s5, a2, a4
                  bgeu         s6, a0, 842f
824:              and          a1, a5, s4
                  srl          a4, t5, s10
                  nop
                  and          gp, t4, sp
                  addi         a6, a3, -1522
                  sub          t5, t1, s7
830:              xori         t0, s5, -1231
                  slli         tp, a4, 0
                  srai         t3, s0, 12
                  xor          a1, s2, a0
                  bge          s9, t0, 849f
                  or           a5, a1, t0
836:              sltu         a0, a3, s4
                  slt          t3, tp, a5
                  and          s5, zero, t4
                  and          s9, gp, s11
                  la           s0, sub_2
                  sltu         s8, s2, t3
                  addi         s0, s0, -806
                  addi         t1, t5, -929
                  bgeu         t5, a6, main_j2 #branch to jump instr
                  srli         t0, ra, 31
                  slti         ra, s3, -260
main_j2:          jalr         ra, s0, 806 #jump main -> sub_2
                  ori          zero, sp, 1596
                  xori         s10, s0, -882
                  ori          s11, t1, 1360
842:              bge          s8, t3, 860f
                  sra          t4, a6, s6
                  bltu         a6, a4, 845f
845:              sra          s2, ra, s6
                  xori         t6, gp, -1747
                  or           s2, s1, a6
                  blt          s7, s1, 864f
849:              srl          a4, s8, t4
                  bge          zero, s7, 860f
                  slli         s0, t6, 10
                  xori         s10, a4, 2002
                  nop
                  bltu         a3, s9, 859f
                  bltu         t0, s3, 875f
                  add          s0, s9, s10
                  addi         t6, a1, 214
                  or           s7, s5, s9
859:              slti         s2, t2, 614
860:              andi         a6, a7, -2042
                  bltu         a4, a3, 870f
                  bne          a2, s7, 873f
                  slti         t2, s4, -677
864:              add          t4, tp, t5
                  and          t3, t4, s3
                  add          a4, t1, a1
                  bltu         t0, a0, 886f
                  bge          s9, t3, 877f
                  sll          t1, ra, t4
870:              bne          zero, s1, 884f
                  xor          s0, ra, s2
                  slt          a7, s0, a6
873:              slti         tp, a5, -1294
                  sltiu        t3, a4, 1115
875:              slti         s5, s5, 1749
                  slti         s7, ra, -730
877:              xor          s3, s11, s10
                  bgeu         s2, t5, 887f
                  sltu         t0, s11, t2
                  blt          s10, s11, 891f
                  auipc        s4, 737295
                  sll          a5, ra, s7
                  bgeu         a6, a4, 889f
884:              xori         a6, s10, 1752
                  bge          s9, a0, 893f
886:              bltu         a7, a5, 890f
887:              beq          t6, a5, 902f
                  sltiu        a5, a0, 37
889:              sub          ra, a2, gp
890:              bltu         a1, t5, 897f
891:              xor          t2, a4, a7
                  add          a6, a4, t2
893:              add          s6, sp, s8
                  sltiu        s0, a5, 1573
                  lui          s4, 27266
                  lui          s5, 953943
897:              sub          s7, a4, a2
                  or           tp, s11, a4
                  srai         s7, t3, 5
                  sll          a0, a4, t3
                  la           s7, region_0+1440 #start riscv_load_store_rand_instr_stream_2
                  sll          t1, t5, a2
                  lui          zero, 452899
                  lb           s5, 181(s7)
                  sb           t1, -135(s7)
                  slti         a7, a1, -1799
                  lb           gp, -173(s7)
                  lh           s11, -162(s7)
                  andi         s6, a6, 79
                  sh           t1, -138(s7)
                  ori          a3, a5, 724
                  slt          a4, t4, s2
                  slli         t2, t5, 10
                  sub          s10, sp, gp
                  auipc        a6, 544287
                  sb           a4, 233(s7)
                  srai         s10, a7, 9
                  lb           a5, 102(s7)
                  lb           tp, 205(s7)
                  slt          t4, zero, t6
                  add          t2, zero, s10
                  srl          t0, s7, s8
                  andi         s4, s5, -739
                  sra          t5, t2, t5
                  sb           t0, 75(s7)
                  sh           s4, 160(s7)
                  or           s5, s9, t3
                  xor          s8, ra, s3
                  sb           s10, 95(s7)
                  lb           ra, -201(s7) #end riscv_load_store_rand_instr_stream_2
                  srai         a4, t2, 31
902:              xor          t1, s3, t3
                  bne          a5, s4, 906f
                  add          gp, a1, s10
                  beq          s1, a2, 906f
906:              srai         tp, t5, 14
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bne          t2, t0, sub_2_stack_p
sub_2_stack_p:    addi         a2, a2, -28
                  sltiu        t3, a6, -1189
                  slt          s2, ra, ra
                  sw           ra, 4(a2)
                  xor          t3, s10, a0
                  andi         a0, gp, 834
                  slti         s3, ra, 915
                  sltu         zero, ra, a5
                  bgeu         a2, tp, 21f
                  add          s0, ra, a0
                  nop
                  srl          t5, a0, s1
                  auipc        a0, 991568
                  xori         a3, t4, 873
                  xor          zero, a7, tp
                  sll          t1, s3, s4
                  or           s9, s9, a1
                  sll          tp, tp, t3
                  bgeu         ra, a3, 25f
                  srl          s4, ra, sp
                  bge          s1, s9, 18f
                  srli         t0, s8, 18
                  blt          t6, t0, 18f
18:               srai         s3, tp, 30
                  xori         t1, t0, 162
                  bne          t2, s9, 29f
21:               bgeu         a4, s2, 29f
                  bge          s3, a4, 29f
                  nop
                  slt          t3, tp, s6
25:               bgeu         s3, a0, 29f
                  slli         a5, s2, 10
                  add          t4, s10, s10
                  lui          a0, 442262
29:               srai         a3, s10, 4
                  sub          a4, s0, s9
                  sltiu        a3, t6, -1994
                  ori          a1, s4, 502
                  lw           ra, 4(a2)
                  addi         a2, a2, 28
                  xor          t3, a1, s10
42:               addi x3, x1, 1
42:               jalr x3, x3, 0
sub_1:            addi         a2, a2, -12
                  auipc        a7, 478935
                  sltu         zero, s5, s7
                  sw           ra, 4(a2)
                  slli         t6, s4, 17
                  beq          tp, a6, 13f
                  xori         zero, s3, 1823
                  srai         s5, t2, 19
                  slli         a6, s9, 3
                  bne          t6, a2, 11f
                  blt          s1, a5, 18f
                  sltu         s11, sp, zero
                  sll          zero, sp, a6
                  or           s8, a6, s6
                  beq          s5, s6, 29f
                  srai         ra, tp, 31
11:               bne          s5, t0, 25f
                  auipc        s2, 712419
13:               srli         a3, a2, 3
                  or           s6, sp, t1
                  auipc        a5, 161758
                  andi         a4, a1, 591
                  sltiu        s11, a5, 559
18:               add          t2, zero, t6
                  auipc        a7, 17067
                  bgeu         s5, s8, 40f
                  slt          t4, s3, t6
                  add          t3, a2, s4
                  slt          s10, tp, a6
                  andi         a4, t2, 912
25:               addi         s11, a6, -48
                  add          s11, t5, a0
                  auipc        a0, 884422
                  bgeu         s4, s9, 30f
29:               beq          a7, gp, 37f
30:               slt          s4, a2, tp
                  auipc        a6, 503419
                  srl          t0, s2, t6
                  andi         a3, sp, -129
                  bge          s1, t1, 47f
                  sll          a6, a2, s8
                  and          t1, s7, sp
37:               addi         t6, a2, -1271
                  srl          a7, s9, a2
                  bne          a4, t5, 55f
40:               addi         a4, t0, 267
                  sra          tp, s1, s2
                  blt          t6, s10, 52f
                  blt          t3, s10, 44f
44:               ori          ra, s0, -1328
                  addi         t3, sp, 848
                  srli         s4, a7, 22
47:               slt          a3, a2, s1
                  auipc        s10, 247722
                  sub          s7, a1, s5
                  add          t0, t6, t6
                  sll          a5, a2, sp
52:               bge          t1, t2, 61f
                  xor          a4, a2, t6
                  ori          a4, t1, -1798
55:               ori          a0, t0, -369
                  sltiu        tp, a3, -1400
                  or           tp, s2, a6
                  or           t3, t5, t3
                  bltu         t3, a7, 61f
                  bge          s5, a4, 61f
61:               lui          t3, 266531
                  lw           ra, 4(a2)
                  or           s4, t5, s3
                  srai         a1, t5, 22
                  addi         a2, a2, 12
                  sra          s8, s2, s3
                  andi         zero, t5, -1550
                  slti         a1, s2, -903
                  add          a4, a6, s2
                  sltiu        t1, t4, 1754
                  xori         t4, s9, 1027
                  andi         a6, s9, -37
78:               addi x11, x1, 1
78:               jalr x11, x11, 0
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x342 # MCAUSE
                  srli x27, x27, 0x1f
                  beqz x27, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x9, x12, zero
                  csrr x27, 0x341 # MEPC
                  csrr x27, 0x342 # MCAUSE
                  li x29, 0x3 # BREAKPOINT
                  beq x27, x29, ebreak_handler
                  li x29, 0x8 # ECALL_UMODE
                  beq x27, x29, ecall_handler
                  li x29, 0x9 # ECALL_SMODE
                  beq x27, x29, ecall_handler
                  li x29, 0xb # ECALL_MMODE
                  beq x27, x29, ecall_handler
                  li x29, 0x1
                  beq x27, x29, instr_fault_handler
                  li x29, 0x5
                  beq x27, x29, load_fault_handler
                  li x29, 0x7
                  beq x27, x29, store_fault_handler
                  li x29, 0xc
                  beq x27, x29, pt_fault_handler
                  li x29, 0xd
                  beq x27, x29, pt_fault_handler
                  li x29, 0xf
                  beq x27, x29, pt_fault_handler
                  li x29, 0x2 # ILLEGAL_INSTRUCTION
                  beq x27, x29, illegal_instr_handler
                  csrr x29, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

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
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x12, x9, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x9, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x9, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x12, x9, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x27, 0x341
                  addi  x27, x27, 4
                  csrw  0x341, x27
                  add x12, x9, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x27, 0x300 # MSTATUS;
                  csrr  x27, 0x304 # MIE;
                  csrr  x27, 0x344 # MIP;
                  csrrc x27, 0x344, x27 # MIP;
                  add x12, x9, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
