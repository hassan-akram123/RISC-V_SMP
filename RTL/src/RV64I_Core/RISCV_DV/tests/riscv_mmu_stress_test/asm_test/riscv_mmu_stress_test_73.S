.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x6, h0_start
jalr x0, x6, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0xe72085ef
                  li x1, 0xfbe883b1
                  li x2, 0xcaa0d7d0
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0x72df7aaa
                  li x6, 0x80000000
                  li x7, 0x6
                  li x9, 0x8
                  li x10, 0x0
                  li x11, 0x80000000
                  li x12, 0xde937ff8
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xfb1a2969
                  li x16, 0x80000000
                  li x18, 0x0
                  li x19, 0x0
                  li x20, 0xf0ef24ee
                  li x21, 0xa
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0x0
                  li x25, 0x8
                  li x26, 0x0
                  li x27, 0xf2ec97c1
                  li x28, 0x80000000
                  li x29, 0x8
                  li x30, 0x0
                  li x31, 0x2b0a2c55
                  la x17, user_stack_end
main:             la           s10, region_1+417 #start load_store_instr_stream_1
                  la           a4, region_1+1848 #start load_store_instr_stream_0
                  lbu          t0, -126(s10)
                  lbu          ra, 224(s10)
                  lb           s4, -161(a4)
                  lb           t3, -167(s10)
                  sb           s8, -109(s10)
                  lb           s2, -63(s10)
                  lb           t6, -33(a4)
                  lbu          a1, 99(a4)
                  lbu          s7, -168(s10)
                  lh           s3, 92(a4)
                  sb           s0, 238(s10)
                  sw           t2, -97(s10)
                  sb           t1, -77(a4)
                  sb           sp, 117(s10) #end load_store_instr_stream_1
                  lbu          s9, -149(a4) #end load_store_instr_stream_0
                  la           a3, region_0+851 #start riscv_load_store_hazard_instr_stream_4
                  lbu          t3, -15(a3)
                  lh           s3, -15(a3)
                  sb           a5, -15(a3)
                  sw           s11, -15(a3)
                  sb           a0, 4(a3)
                  nop
                  sub          s2, gp, t2
                  slt          ra, t2, s10
                  srai         s1, t2, 0
                  or           t2, a0, s7
                  sb           ra, -7(a3)
                  xor          a0, s10, s7
                  sb           a3, -7(a3)
                  sh           t2, -7(a3)
                  sw           s11, 5(a3)
                  sb           a1, -14(a3) #end riscv_load_store_hazard_instr_stream_4
                  la           t5, region_0+1250 #start load_store_instr_stream_2
                  la           a2, region_0+1119 #start load_store_instr_stream_1
                  la           s2, region_0+1682 #start load_store_instr_stream_0
                  sb           gp, -33(a2)
                  sb           ra, -47(s2)
                  lb           a5, 5(t5)
                  lbu          s11, -1533(s2)
                  lhu          s9, 168(t5)
                  sb           a0, -44(a2)
                  lhu          gp, 32(t5)
                  lb           s3, 14(a2)
                  sh           s11, -222(s2)
                  lbu          gp, -240(t5)
                  lb           t0, -5(a2)
                  lbu          a5, -1674(s2)
                  lh           t4, -11(a2)
                  sh           s7, 53(a2)
                  lw           t2, 114(s2)
                  lb           s4, 40(a2) #end load_store_instr_stream_1
                  lbu          gp, -611(s2)
                  lh           t3, -170(t5) #end load_store_instr_stream_2
                  lhu          a3, -52(s2) #end load_store_instr_stream_0
                  la           a2, region_0+357 #start riscv_load_store_rand_instr_stream_2
                  sb           t3, 252(a2)
                  lb           s8, 136(a2)
                  xor          a0, a2, t1
                  xori         t0, s2, 1724
                  nop
                  andi         a4, s9, -820
                  sub          s7, gp, sp
                  lbu          s1, 13(a2)
                  lb           sp, 7(a2)
                  sra          s7, s3, s0
                  sb           a7, 228(a2)
                  nop
                  sb           s3, -242(a2)
                  slli         gp, t0, 28
                  lbu          a4, 16(a2)
                  slt          s7, a3, t5
                  sh           s1, 255(a2)
                  auipc        a1, 492856
                  lb           s8, 195(a2)
                  xori         s5, s8, -260
                  sll          s7, zero, t3
                  slli         a0, s9, 15
                  slli         a4, s9, 21
                  lb           t5, 178(a2)
                  sltiu        s10, s3, 818
                  lbu          t4, -8(a2)
                  or           t0, s8, s4
                  sb           s11, -57(a2)
                  lh           t6, 163(a2)
                  lb           a3, -255(a2)
                  lbu          a5, -47(a2)
                  addi         t4, zero, -1995
                  lbu          t2, 8(a2)
                  or           ra, s10, t2
                  andi         s9, t5, 1127
                  lbu          a6, 25(a2)
                  addi         t2, a1, 22
                  srai         s3, s3, 5
                  addi         a5, zero, -1395
                  srli         s6, s1, 10
                  andi         s11, a0, 1107
                  auipc        s4, 734683
                  lhu          t5, 101(a2) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_0+1062 #start riscv_load_store_hazard_instr_stream_1
                  lbu          t0, 31(t3)
                  and          zero, sp, a3
                  sra          s4, s4, t6
                  lbu          a3, 31(t3)
                  lhu          s11, -36(t3)
                  lb           t5, -63(t3)
                  lbu          s9, 54(t3)
                  lbu          t2, 3(t3)
                  lh           s10, -8(t3)
                  lbu          t2, 17(t3)
                  nop
                  lbu          s10, 17(t3)
                  lbu          s11, 17(t3)
                  auipc        s3, 744239
                  lhu          tp, 14(t3)
                  lb           sp, 14(t3)
                  addi         s8, ra, -1356
                  lbu          s8, 58(t3)
                  lb           t2, -55(t3)
                  lbu          s1, -55(t3) #end riscv_load_store_hazard_instr_stream_1
                  la           s10, region_0+216 #start load_store_instr_stream_2
                  la           a2, region_0+926 #start load_store_instr_stream_0
                  la           t6, region_0+260 #start load_store_instr_stream_1
                  lbu          s1, 47(t6)
                  lbu          s8, -51(t6)
                  lb           s3, 13(a2)
                  lbu          s9, -13(a2)
                  sw           a4, -4(t6)
                  lbu          t4, -31(a2)
                  sb           t0, 55(a2)
                  lhu          gp, 30(t6)
                  sw           t4, 18(a2)
                  lbu          t3, 9(a2)
                  lw           zero, 124(s10)
                  lb           sp, -19(a2)
                  lbu          s8, 64(t6)
                  sh           s3, -36(a2)
                  lb           s9, -132(s10)
                  sb           s4, -5(t6)
                  lb           s2, 27(a2)
                  lbu          a3, -87(s10)
                  sb           t6, 13(s10)
                  lb           s1, 53(t6)
                  lb           s9, -39(t6) #end load_store_instr_stream_1
                  lbu          t2, -38(s10) #end load_store_instr_stream_2
                  lbu          a4, -33(a2) #end load_store_instr_stream_0
                  la           sp, region_1+139 #start riscv_load_store_rand_instr_stream_1
                  lbu          s10, 128(sp)
                  xor          s3, a3, s0
                  slt          s2, a7, sp
                  lhu          s4, 467(sp)
                  addi         a3, gp, 1322
                  slt          s3, s3, t3
                  lui          ra, 316750
                  lbu          t0, 808(sp)
                  sltu         s11, t2, a6
                  lh           a6, 1203(sp)
                  sb           t1, 1106(sp)
                  lhu          a0, 387(sp)
                  lb           t0, 1306(sp)
                  sh           a0, 1707(sp)
                  slti         s9, zero, 1148
                  xori         tp, s6, 52
                  srl          s7, a6, s3
                  lb           t2, 1080(sp)
                  lb           gp, 1569(sp)
                  add          a1, s1, t1
                  lhu          t6, 1679(sp)
                  lb           a6, 954(sp)
                  sltu         t3, a0, s1
                  lhu          a6, 591(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+800 #start riscv_load_store_rand_instr_stream_6
                  sb           s1, -30(sp)
                  nop
                  lb           a1, 35(sp)
                  sub          s6, s11, tp
                  auipc        s6, 351919
                  lbu          t6, 15(sp)
                  lbu          t2, -17(sp)
                  slt          s10, s11, a2
                  and          a3, t5, s9
                  lui          s2, 663602
                  xor          s8, ra, s1
                  auipc        s5, 520033
                  slli         a6, t2, 10
                  and          t6, sp, ra
                  sub          s1, s10, a3
                  sb           a5, 52(sp)
                  srai         tp, t3, 3
                  slli         a4, a6, 22
                  sb           t3, 1(sp)
                  lw           t0, -8(sp)
                  srl          s10, t0, s10
                  auipc        tp, 948873
                  lbu          a6, -47(sp)
                  sub          t5, gp, s1
                  lhu          ra, -16(sp)
                  lb           s9, -45(sp)
                  slt          a3, s7, a0
                  lb           s6, -35(sp)
                  lbu          s10, 30(sp) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_0+1713 #start riscv_load_store_hazard_instr_stream_6
                  lhu          tp, -519(ra)
                  lh           t6, -945(ra)
                  sw           a1, -945(ra)
                  lw           a0, -945(ra)
                  sh           a2, -945(ra)
                  lh           a2, -945(ra)
                  lbu          zero, -945(ra)
                  lw           s7, -945(ra)
                  sw           zero, -945(ra)
                  srl          t3, a7, s7
                  lbu          s3, -945(ra)
                  lhu          t3, -945(ra)
                  sb           s11, -945(ra)
                  lw           s6, -945(ra)
                  lbu          a5, -945(ra)
                  lb           t2, -945(ra)
                  sb           t4, -945(ra) #end riscv_load_store_hazard_instr_stream_6
                  la           sp, region_1+109 #start riscv_load_store_hazard_instr_stream_2
                  lbu          a2, 94(sp)
                  lh           s6, -81(sp)
                  lh           gp, -87(sp)
                  lhu          s10, -87(sp)
                  lh           tp, -87(sp)
                  lbu          s8, -87(sp)
                  sb           s1, 49(sp)
                  sb           s5, 49(sp)
                  lb           t0, -67(sp)
                  lb           t0, 200(sp)
                  ori          t3, s4, 632
                  sb           s5, 200(sp)
                  lb           s5, 200(sp)
                  sb           t1, 194(sp)
                  lb           a2, 194(sp)
                  sb           gp, 194(sp)
                  lbu          t2, 224(sp)
                  add          s1, a6, t6
                  lhu          s3, 199(sp)
                  sub          t3, a2, s4
                  lb           t4, -22(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+239 #start riscv_load_store_hazard_instr_stream_3
                  slti         a6, a4, -52
                  lhu          t0, -11(sp)
                  ori          s7, t3, -631
                  lb           t2, -12(sp)
                  ori          s10, s6, -222
                  lbu          s2, -1(sp)
                  lw           a5, 9(sp)
                  sb           a5, 4(sp)
                  lb           s7, 4(sp)
                  lbu          tp, 4(sp)
                  lbu          s7, -3(sp)
                  lb           a4, -3(sp)
                  lbu          s3, -16(sp)
                  lb           s9, -16(sp)
                  nop
                  sw           zero, 5(sp)
                  lb           a1, 5(sp)
                  sb           tp, -5(sp)
                  lb           s3, -10(sp)
                  lw           s8, 5(sp)
                  lb           a1, 13(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           tp, region_1+1807 #start load_store_instr_stream_2
                  sb           s0, -12(tp)
                  la           t6, region_1+1958 #start load_store_instr_stream_1
                  sb           gp, -157(t6)
                  lb           t4, -177(t6)
                  sw           a1, 9(tp)
                  lbu          s6, 1(t6)
                  sb           t6, 2(tp)
                  sb           a5, -56(t6)
                  sh           a4, -86(t6)
                  lb           s2, 16(tp)
                  la           gp, region_1+1918 #start load_store_instr_stream_0
                  sb           a0, -8(tp)
                  sb           sp, -173(t6)
                  lh           sp, 16(gp)
                  lbu          s3, -2(tp)
                  lbu          s2, -15(gp)
                  lbu          ra, 42(gp)
                  lhu          a0, -150(t6)
                  lw           s3, 5(tp)
                  lhu          t4, 15(tp)
                  sb           a2, -211(t6)
                  lb           a5, -232(t6)
                  lb           t4, -12(tp)
                  lb           sp, -133(gp)
                  lbu          sp, 2(tp) #end load_store_instr_stream_2
                  lhu          t4, -210(t6) #end load_store_instr_stream_1
                  lb           sp, 65(gp) #end load_store_instr_stream_0
                  la           tp, region_0+960 #start load_store_instr_stream_1
                  la           t2, region_0+1165 #start load_store_instr_stream_0
                  lbu          s10, -1(t2)
                  lw           s10, -24(tp)
                  lbu          gp, -16(t2)
                  la           a2, region_0+1713 #start load_store_instr_stream_2
                  lhu          gp, 50(tp)
                  lb           t6, 3(t2)
                  lbu          s7, 29(a2)
                  lw           t0, 28(tp)
                  sw           t0, -5(t2)
                  sb           a7, -32(tp)
                  sw           t6, 4(tp)
                  lw           s8, 63(a2)
                  lb           s2, -16(t2)
                  lb           s5, 0(t2)
                  sb           s0, -64(a2)
                  lb           t3, 54(tp)
                  sb           t1, -3(t2)
                  lb           a5, -47(tp)
                  sb           s1, -25(a2)
                  lbu          a5, -5(t2)
                  lbu          s10, 13(a2) #end load_store_instr_stream_2
                  sb           t5, 17(tp) #end load_store_instr_stream_1
                  lh           s11, -3(t2)
                  lbu          gp, -14(t2) #end load_store_instr_stream_0
                  la           t2, region_1+1860 #start riscv_load_store_rand_instr_stream_0
                  sb           s4, 42(t2)
                  srai         t4, t0, 8
                  sb           a3, 31(t2)
                  srl          s9, s6, s1
                  lb           s10, -15(t2)
                  lb           ra, -22(t2)
                  lbu          s6, -59(t2)
                  sb           s6, 43(t2)
                  sll          t4, t5, tp
                  lb           s11, 6(t2)
                  sltiu        t6, a1, -1693
                  lh           s3, 54(t2)
                  srl          s8, t4, s10
                  lh           s2, 38(t2)
                  nop
                  slti         a1, t0, -1905
                  sb           s6, 35(t2)
                  sh           s4, 42(t2)
                  addi         s7, s0, -1828
                  lw           s6, -24(t2)
                  lh           s5, 2(t2)
                  sb           tp, -51(t2)
                  nop
                  or           s9, t4, s5
                  sll          s8, s7, a0
                  slt          sp, t3, s2
                  auipc        gp, 745491
                  sb           a6, 63(t2)
                  addi         gp, s11, -451
                  add          sp, t5, a5
                  slt          a2, a5, a1
                  lb           s6, -4(t2)
                  ori          a4, t2, 1333
                  and          s10, t6, s10
                  lbu          a3, 9(t2)
                  sb           s6, -22(t2)
                  sb           s2, 45(t2)
                  sltiu        gp, a1, -1634
                  lbu          tp, -53(t2)
                  nop
                  slli         s3, s5, 4
                  lb           s3, -32(t2)
                  lbu          s9, 39(t2)
                  lb           s9, -29(t2)
                  sub          s1, sp, t6
                  xor          a2, t4, tp
                  add          ra, a3, t0
                  srli         t5, s5, 7
                  lbu          a4, -62(t2) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_1+1409 #start riscv_load_store_rand_instr_stream_3
                  slt          t0, s3, t1
                  lbu          s1, -60(ra)
                  sb           a7, -1244(ra)
                  lhu          s7, 543(ra)
                  slli         t4, s6, 20
                  sh           s6, 487(ra)
                  lhu          s5, -483(ra)
                  lbu          s3, -88(ra)
                  srli         a1, a0, 27
                  sb           s9, -388(ra)
                  lbu          zero, -1119(ra)
                  xori         s4, s3, -1705
                  sb           ra, 307(ra)
                  xori         t0, s5, 782
                  addi         a0, gp, 629
                  lb           s7, -858(ra)
                  sb           tp, -368(ra)
                  sb           ra, -319(ra)
                  andi         a0, a1, 327
                  lb           sp, 133(ra)
                  lb           s3, -1186(ra)
                  lbu          a0, -1158(ra)
                  lbu          gp, 69(ra)
                  xor          t2, t2, s5
                  lb           a3, -1210(ra)
                  lbu          t2, -971(ra)
                  xori         s11, s1, 360
                  sb           s1, 570(ra)
                  lbu          s10, 202(ra)
                  sb           a5, 514(ra)
                  lhu          s7, -491(ra)
                  lb           a5, 330(ra)
                  lbu          s4, -448(ra)
                  srai         sp, t4, 27
                  sb           gp, -433(ra) #end riscv_load_store_rand_instr_stream_3
                  la           s4, region_0+1968 #start riscv_load_store_rand_instr_stream_5
                  sb           s0, -1287(s4)
                  lbu          s1, -497(s4)
                  sb           a0, -1028(s4)
                  lh           a6, -8(s4)
                  sb           s11, -398(s4)
                  sw           gp, -48(s4)
                  auipc        s2, 605679
                  slti         a0, tp, -950
                  sltiu        s2, t1, -194
                  sw           t2, -1032(s4)
                  lw           s7, -612(s4)
                  sra          t0, t3, s3
                  xori         s8, a2, -1712
                  lbu          zero, -79(s4)
                  srl          s5, t4, t1
                  lh           a5, -1566(s4)
                  xori         a4, zero, 649
                  slt          s10, t1, ra
                  sb           t6, -748(s4)
                  lh           s10, -1360(s4)
                  lbu          t5, -1415(s4)
                  lbu          s1, -1769(s4)
                  lb           s10, -391(s4)
                  lui          s11, 252679
                  sra          s6, a1, t0
                  lb           t6, -1589(s4)
                  sltu         s9, s10, s8
                  slti         t6, s7, 1288
                  sb           a2, -745(s4) #end riscv_load_store_rand_instr_stream_5
                  la           t6, region_1+187 #start riscv_load_store_hazard_instr_stream_5
                  lhu          a0, 49(t6)
                  sb           a0, 36(t6)
                  lh           s10, 29(t6)
                  lb           s2, 29(t6)
                  lhu          tp, 251(t6)
                  sltu         sp, t6, t1
                  lh           s4, -159(t6)
                  lw           sp, -159(t6)
                  lbu          s11, -28(t6)
                  lbu          s10, 68(t6)
                  lbu          t3, 68(t6)
                  sh           a6, 65(t6)
                  sh           t2, 61(t6)
                  lb           s11, -128(t6)
                  ori          a4, s3, -669
                  lb           a2, 193(t6)
                  lb           s7, 138(t6)
                  sb           sp, -97(t6) #end riscv_load_store_hazard_instr_stream_5
                  sra          s11, s3, s5
                  sub          s9, gp, t1
                  srli         ra, a3, 19
                  beq          s2, s1, 21f
                  bge          a4, a7, 10f
                  nop
                  slli         s8, t5, 12
                  bne          a4, s9, 13f
                  andi         s8, s8, -1241
                  blt          a7, t2, 23f
10:               nop
                  slti         a5, t0, -1810
                  sra          ra, t2, a2
13:               slt          ra, t2, a3
                  slti         s10, t5, -1674
                  bne          s9, zero, 32f
                  srli         s10, s8, 12
                  and          s11, s8, a4
                  nop
                  slli         a0, s8, 10
                  srli         s9, s8, 2
21:               add          s5, t1, a0
                  sub          t4, gp, zero
23:               bne          s10, t1, 30f
                  srl          t5, s7, a2
                  nop
                  la           s7, region_0+1505 #start load_store_instr_stream_2
                  la           s11, region_0+203 #start load_store_instr_stream_0
                  la           a1, region_0+1944 #start load_store_instr_stream_1
                  la           t3, region_0+1175 #start load_store_instr_stream_3
                  lbu          s10, -214(t3)
                  lb           s9, 8(s11)
                  lh           a6, -4(a1)
                  sw           t5, -677(s7)
                  lb           s8, 212(t3)
                  lh           a3, 167(t3)
                  lhu          zero, -1(s11)
                  sw           sp, 167(s7)
                  sb           gp, 174(t3)
                  sb           s5, -98(t3)
                  lw           s10, 4(a1)
                  sb           ra, 16(s11)
                  sh           t5, -10(a1)
                  sb           s10, 12(s11)
                  sh           a2, 10(a1)
                  lw           t2, -11(s11)
                  sb           s10, -726(s7)
                  lb           s4, -186(t3)
                  lhu          sp, 55(t3)
                  lh           t5, 14(a1)
                  lb           t4, -14(t3)
                  sb           t4, 2(a1)
                  sb           a1, 13(a1)
                  lbu          t5, -521(s7)
                  lbu          tp, 6(s11)
                  lbu          tp, 1(a1)
                  sw           a2, -255(t3) #end load_store_instr_stream_3
                  lb           a2, -1(a1) #end load_store_instr_stream_1
                  sw           s1, -505(s7) #end load_store_instr_stream_2
                  lbu          s4, 2(s11) #end load_store_instr_stream_0
                  sll          s2, s10, s2
                  sra          t0, s2, t0
                  srli         a5, gp, 4
                  xori         s9, t1, -2004
30:               xor          a4, s0, t4
                  beq          s0, a1, 33f
32:               sltu         s1, s9, ra
33:               slti         t5, a1, 1713
                  blt          a6, s9, 45f
                  nop
                  srli         t2, t6, 29
                  lui          a2, 74982
                  slti         s5, a0, 801
                  slt          s10, tp, s2
                  slti         t4, a5, -1481
                  srl          ra, t2, ra
                  bltu         a7, a4, 61f
                  nop
                  srl          s1, a6, a5
45:               and          s1, s0, s5
                  ori          s2, a0, -1375
                  lui          t6, 438375
                  srl          a5, a4, s2
                  bgeu         a4, s0, 66f
                  xori         s10, t3, -420
                  auipc        s7, 460901
                  nop
                  sra          tp, sp, s0
                  sltu         s4, t6, a2
                  slti         t0, s3, -1040
                  bgeu         s7, ra, 67f
                  slt          t0, t4, a6
                  blt          s5, t2, 63f
                  slli         a4, s1, 30
                  sub          s3, tp, a5
61:               srli         s7, t1, 24
                  slli         tp, s4, 22
63:               xor          a4, a5, t3
                  slti         t4, s5, 1008
                  xor          s8, zero, s7
66:               auipc        sp, 750618
67:               and          s7, s9, a3
                  sra          t0, s2, t3
                  or           s2, t5, a3
                  bgeu         a5, a5, 90f
                  nop
                  srai         a0, a2, 20
                  or           a2, t3, t6
                  srai         a1, a2, 15
                  xori         a2, a2, -1345
                  xori         s7, t1, -1022
                  xori         s9, s3, 320
                  srli         a6, a7, 28
                  sltiu        a5, s2, 1998
                  lui          s11, 986122
                  sll          a3, s0, s6
                  srai         a0, s9, 24
                  addi         t5, s11, 1616
                  nop
                  and          s3, a3, s0
                  xori         s10, sp, 1171
                  slli         s7, t5, 15
                  slli         a3, zero, 11
                  ori          a1, s5, 555
90:               beq          s3, s2, 100f
                  srl          t5, a6, t1
                  sltu         s6, s7, s7
                  blt          t1, a0, 94f
94:               slti         a5, a5, -1912
                  sltu         s8, t2, t3
                  nop
                  bltu         s6, s2, 101f
                  slt          a2, t1, a6
                  nop
100:              ori          tp, sp, 37
101:              sltiu        tp, s9, -439
                  or           a3, t6, t6
                  slt          t6, s7, t6
                  and          s2, a6, t3
                  sltiu        a0, s3, -785
                  srl          s10, s3, t1
                  sltiu        a2, ra, -139
                  sub          s3, zero, s4
                  beq          a1, a2, 122f
                  bltu         s7, s0, 116f
                  sub          s2, s11, a6
                  ori          s4, t2, 1340
                  slt          ra, s0, sp
                  srli         gp, t1, 16
                  sll          a5, a0, ra
116:              srl          t4, ra, s4
                  sll          s2, sp, a2
                  and          s3, a1, a6
                  auipc        ra, 542265
                  srli         s4, a1, 14
                  xori         t0, a0, 1891
122:              sltu         s3, s1, a3
                  la           t5, sub_1
                  ori          t6, a0, 984
                  addi         t5, t5, 273
                  slli         a3, a3, 0
                  sll          zero, t6, a7
                  auipc        tp, 693950
                  bltu         gp, t6, main_j1 #branch to jump instr
                  sltiu        a4, gp, -1344
main_j1:          jalr         ra, t5, -273 #jump main -> sub_1
                  srl          t2, a3, s3
                  blt          s10, s1, 128f
                  xori         t3, s10, 1550
                  sltu         s2, t4, t5
                  bgeu         a0, s7, 137f
128:              slt          sp, t2, a1
                  sll          s7, a6, t1
                  nop
                  sll          s7, s0, a2
                  bge          a4, s9, 138f
                  sltu         s1, t6, t3
                  srli         s11, t2, 12
                  or           a4, s11, t6
                  auipc        a6, 286404
137:              ori          a6, s6, 428
138:              auipc        a0, 348844
                  and          s4, ra, a7
                  add          a3, s7, s3
                  or           zero, s3, t3
                  srl          t4, s3, a6
                  srli         s5, a6, 14
                  blt          s6, a4, 155f
                  srli         t5, tp, 20
                  xor          a1, zero, a6
                  slli         s9, tp, 7
                  bltu         s10, s4, 167f
                  xor          t5, t1, s9
                  srli         tp, zero, 15
                  nop
                  auipc        ra, 1021951
                  xor          sp, ra, a1
                  nop
155:              and          t5, s1, s3
                  auipc        s10, 679859
                  blt          t0, s11, 175f
                  xori         s3, s8, 1203
                  slli         a0, s4, 21
                  slli         a3, s2, 7
                  andi         sp, a4, -466
                  slt          s3, a2, a2
                  sll          s11, s4, tp
                  or           t2, s9, s5
                  slt          t3, s11, s3
                  or           t5, a7, t6
167:              sll          t5, t3, t4
                  sub          a0, s0, s4
                  sltu         s10, s5, a1
                  srl          t2, t4, s9
                  sltiu        a0, t4, 1389
                  ori          s8, a3, 13
                  and          t4, a4, s0
                  sub          s11, s1, t4
175:              addi         zero, t3, 1696
                  beq          s2, s2, 188f
                  bge          ra, a0, 183f
                  bltu         s6, a4, 181f
                  sltu         t4, s3, zero
                  slti         s5, sp, 552
181:              nop
                  bne          t4, s3, 191f
183:              sltu         a5, t6, s10
                  srai         a6, a0, 3
                  beq          s5, a4, 190f
                  and          a0, a7, s4
                  sltu         s6, s10, a3
188:              srli         a2, s6, 2
                  slli         a3, s5, 0
190:              sra          t5, s9, t5
191:              bltu         a0, s4, 201f
                  slti         t4, t3, -1000
                  sll          s2, s7, a1
                  xori         s7, s6, -870
                  ori          zero, t5, 1931
                  sub          a5, s4, a4
                  bltu         sp, ra, 216f
                  sra          s1, a3, zero
                  and          a4, ra, a0
                  beq          a0, s0, 218f
201:              addi         s11, a7, -610
                  and          s2, s0, s2
                  bne          t5, zero, 222f
                  slti         s11, s6, 1060
                  sub          a0, a5, s2
                  ori          t3, ra, -1357
                  bgeu         s3, s11, 225f
                  sltiu        t5, s11, -109
                  ori          a3, t2, 1019
                  and          a3, s10, s5
                  sll          a1, zero, a1
                  bne          s11, zero, 216f
                  sltiu        s4, a6, 497
                  and          a0, s0, a6
                  bge          t5, s1, 221f
216:              srli         a4, a2, 0
                  slt          zero, ra, t2
218:              addi         a1, s4, -535
                  srai         gp, t2, 11
                  srli         a0, t4, 31
221:              add          tp, a4, t3
222:              sll          t2, tp, ra
                  bne          a5, sp, 236f
                  bltu         sp, s0, 236f
225:              bgeu         s1, s5, 236f
                  ori          t6, t2, 265
                  bge          a1, zero, 233f
                  xori         t3, t1, 645
                  or           s6, a2, tp
                  sltu         sp, s7, s1
                  nop
                  srai         s1, zero, 13
233:              or           t4, a5, zero
                  ori          a2, s7, 1806
                  or           s5, t3, t3
236:              nop
                  srai         gp, a7, 0
                  bge          t2, zero, 240f
                  or           t5, t0, zero
240:              bge          s10, a3, 246f
                  slli         s6, a3, 22
                  srl          a3, a0, t1
                  blt          a1, s4, 250f
                  and          s5, a0, s7
                  bge          s4, t3, 255f
246:              sra          s5, t1, sp
                  xori         s7, s4, -71
                  sltiu        s5, s2, 1626
                  xor          s11, s8, s4
250:              sltiu        s11, s3, 617
                  add          s5, s1, t0
                  or           tp, t2, a5
                  sub          ra, s4, sp
                  or           t2, t0, t6
255:              bltu         t1, s9, 259f
                  ori          s4, a3, 802
                  slt          a4, t3, s7
                  bltu         a7, s9, 267f
259:              nop
                  bne          t1, t4, 271f
                  xori         t0, s1, -902
                  srl          s2, a5, s0
                  bne          s6, s5, 283f
                  lui          t5, 963371
                  nop
                  sll          tp, s3, t6
267:              nop
                  and          t4, s9, a3
                  bltu         ra, a5, 283f
                  bne          zero, zero, 276f
271:              srai         tp, gp, 12
                  sltu         t3, s4, s11
                  beq          a2, a6, 276f
                  andi         s3, s4, 307
                  sra          t6, a1, s10
276:              and          s2, t3, a3
                  lui          s10, 980486
                  and          s8, s5, t2
                  lui          s10, 960314
                  xor          a2, a0, s10
                  add          t0, sp, t3
                  ori          tp, s0, 16
283:              nop
                  xori         s11, s7, -171
                  sltiu        zero, s7, -1285
                  srai         t0, s4, 0
                  bge          t6, s9, 293f
                  bltu         ra, ra, 305f
                  srli         tp, t1, 18
                  auipc        a2, 887266
                  add          s5, a1, zero
                  srl          t5, s0, t3
293:              add          tp, s11, s8
                  srai         t4, zero, 17
                  bltu         t1, s3, 296f
296:              xor          a6, a7, s10
                  xori         t5, zero, -1475
                  srl          s8, a5, t2
                  andi         s7, t3, -1752
                  blt          gp, t3, 317f
                  sub          t3, s6, tp
                  sra          a1, t0, s3
                  or           s8, t2, a4
                  slt          a3, ra, s8
305:              sra          a2, t6, a0
                  ori          s7, s8, -913
                  beq          s4, t3, 312f
                  beq          a6, a0, 318f
                  bge          t0, a3, 320f
                  srli         a1, a3, 21
                  la           s7, region_1+927 #start riscv_load_store_rand_instr_stream_4
                  sltu         ra, s5, t5
                  sll          s10, s2, sp
                  slt          s6, s8, s11
                  or           gp, sp, s10
                  lb           t2, -20(s7)
                  nop
                  sltiu        a1, a0, -1820
                  lui          a3, 235473
                  sra          s10, s4, s11
                  lbu          a2, -41(s7)
                  or           a2, s5, s7
                  nop
                  lui          t0, 355509
                  slli         s6, a6, 22
                  lb           s3, 44(s7)
                  lh           zero, -11(s7)
                  srli         t5, s1, 23
                  sb           s4, -48(s7)
                  addi         tp, t0, -111
                  sb           s3, -42(s7)
                  sltu         s6, a3, a4
                  sltiu        gp, tp, 1978
                  sltu         a5, a6, s2
                  lw           sp, -43(s7)
                  sltu         ra, sp, s0
                  sltu         s1, s3, s7
                  slt          ra, t0, t1
                  slli         a0, s4, 20
                  sb           a0, 12(s7)
                  and          t4, s4, tp
                  srai         t2, s6, 19
                  or           s10, s7, a6
                  slli         t5, s3, 26
                  slli         s4, tp, 11
                  sra          t3, s7, a7
                  lbu          a1, 37(s7)
                  sb           a2, 32(s7) #end riscv_load_store_rand_instr_stream_4
                  blt          t1, s5, 316f
312:              sub          s8, s1, zero
                  auipc        zero, 1020341
                  xori         a0, a5, 836
                  xor          s6, tp, s11
316:              auipc        sp, 948018
317:              and          s1, t3, s7
318:              sltiu        t6, t2, 1492
                  ori          s7, a6, -1936
320:              and          a0, s2, t4
                  auipc        s6, 836404
                  sltiu        t5, a3, 1723
                  xori         sp, t4, -1537
                  xori         a2, gp, 1977
                  nop
                  and          gp, t0, s7
                  srai         t2, t5, 21
                  sra          s5, a5, s8
                  bge          s2, s9, 339f
                  sra          sp, s0, tp
                  sub          s9, s2, t3
                  slli         zero, s5, 18
                  addi         tp, s11, 230
                  auipc        s8, 705404
                  addi         s6, s11, 1954
                  bltu         s3, a0, 354f
                  and          ra, s3, s6
                  auipc        tp, 32549
339:              bge          s3, a2, 358f
                  bltu         sp, s6, 352f
                  bgeu         t1, a6, 352f
                  bge          a4, s1, 352f
                  xori         t6, s3, 32
                  slt          a1, sp, sp
                  srl          s9, s4, ra
                  slti         s8, t0, -1831
                  add          s3, a0, s4
                  bge          gp, a6, 357f
                  sltiu        gp, s3, -478
                  nop
                  bge          s7, s6, 356f
352:              auipc        s5, 977716
                  lui          a5, 991930
354:              or           s9, a1, t3
                  slt          gp, gp, t0
356:              ori          a5, t1, 2037
357:              and          t2, gp, ra
358:              and          t4, s4, t6
                  auipc        t5, 972597
                  andi         t6, a5, 698
                  srai         ra, s11, 24
                  slt          s1, a3, t6
                  slli         s9, t2, 30
                  auipc        sp, 22282
                  lui          a3, 437485
                  srai         a0, t6, 18
                  addi         t0, t6, 1317
                  sltu         t6, t6, t2
                  or           a1, zero, tp
                  xor          t3, t3, t0
                  bge          gp, t5, 375f
                  auipc        s10, 963298
                  sltiu        tp, s7, -739
                  srl          s10, s1, t3
375:              srl          t6, s4, s0
                  nop
                  blt          t6, s8, 378f
378:              or           s8, t6, ra
                  auipc        s10, 499350
                  bgeu         t5, a4, 397f
                  sltu         s4, s4, a4
                  slli         s4, s9, 6
                  bltu         s10, s6, 393f
                  nop
                  and          s2, s10, t5
                  sltiu        a2, s3, -1911
                  bltu         a6, s4, 405f
                  xor          t0, s10, s0
                  slli         s9, a4, 15
                  bgeu         s2, s10, 396f
                  slti         a3, t1, 1440
                  beq          t6, a1, 398f
393:              blt          sp, a4, 395f
                  bgeu         zero, sp, 400f
395:              addi         t2, a4, 1632
396:              nop
397:              slli         a4, t3, 18
398:              nop
                  srl          s2, s3, sp
400:              ori          a5, t4, 42
                  blt          s0, gp, 415f
                  bne          a6, s3, 408f
                  add          a1, s6, a6
                  sltiu        t6, sp, 1678
405:              xor          s10, s3, t5
                  sub          t4, s11, s3
                  ori          s7, t0, -1916
408:              sll          a3, s7, t5
                  bltu         s8, s7, 429f
                  and          t3, t0, a1
                  sltiu        s10, a7, 1477
                  srl          s2, a2, sp
                  slti         s4, t4, -113
                  bgeu         s1, t5, 424f
415:              beq          t3, s5, 420f
                  andi         s4, s9, -340
                  beq          a7, a2, 428f
                  xori         a1, s1, 1796
                  sltiu        zero, t2, 525
420:              xor          a3, s2, s5
                  sub          s7, s9, t4
                  srai         gp, a1, 16
                  beq          tp, ra, 442f
424:              auipc        tp, 413961
                  la           sp, region_0+1690 #start riscv_load_store_hazard_instr_stream_0
                  lh           a3, 88(sp)
                  ori          s8, s1, -1253
                  lhu          a2, 88(sp)
                  sh           s6, 88(sp)
                  and          t6, s5, s7
                  lb           t6, -154(sp)
                  lbu          s7, -21(sp)
                  sub          zero, s11, s1
                  srli         a5, s6, 6
                  andi         a5, a2, 342
                  xor          t5, a5, t2
                  sb           s10, -21(sp)
                  sb           gp, 200(sp)
                  sb           a1, 179(sp)
                  lbu          s2, 179(sp)
                  lb           t5, 179(sp)
                  sb           s1, 179(sp)
                  lbu          t0, 227(sp) #end riscv_load_store_hazard_instr_stream_0
                  bne          s2, s3, 428f
                  add          s10, s1, t5
                  xor          s9, tp, t5
428:              bgeu         t4, s8, 435f
429:              bge          a6, s6, 446f
                  xor          a5, a2, s0
                  beq          t6, t6, 435f
                  bltu         ra, s7, 438f
                  slti         s7, s4, 323
                  nop
435:              bge          s10, a3, 446f
                  add          s11, t1, a1
                  srai         s1, t2, 27
438:              addi         a4, s8, -1417
                  or           t6, ra, t3
                  bgeu         s6, a0, 453f
                  xori         gp, tp, -1992
442:              nop
                  sltu         a0, t6, t2
                  xori         s6, s10, 632
                  add          s4, a5, t4
446:              beq          gp, t0, 459f
                  xori         ra, gp, 1050
                  bge          s5, tp, 468f
                  bge          s10, s11, 458f
                  beq          s10, s1, 451f
451:              ori          s3, t0, -1864
                  and          t0, s8, s0
453:              or           a2, t4, t0
                  sra          s1, s2, a1
                  or           s11, t0, t4
                  sltu         a5, s2, sp
                  blt          s3, t2, 460f
458:              lui          s5, 806651
459:              blt          s6, t3, 478f
460:              blt          s1, t6, 470f
                  bgeu         t1, t3, 467f
                  xori         t2, t1, -102
                  srl          a1, sp, gp
                  bge          a2, s7, 468f
                  sll          t6, s8, tp
                  andi         zero, t0, 154
467:              blt          s5, a3, 479f
468:              add          ra, s10, s0
                  bgeu         s10, t4, 480f
470:              bltu         t5, tp, 475f
                  bne          a1, t4, 489f
                  andi         zero, a1, -1996
                  nop
                  slli         s2, t4, 16
475:              sra          s7, zero, zero
                  andi         s4, sp, -750
                  addi         ra, a0, -685
478:              sltiu        t5, t4, 803
479:              auipc        s10, 748194
480:              sra          a1, s9, s1
                  slt          a3, a6, s4
                  addi         t6, t0, 942
                  lui          t4, 140041
                  bge          t1, t1, 495f
                  sub          a0, t5, zero
                  sltu         a0, t0, a3
                  auipc        t0, 916376
                  sltiu        a1, sp, -1115
489:              auipc        s2, 500346
                  bgeu         t6, s7, 492f
                  xori         zero, a2, 1325
492:              and          a2, t3, a5
                  ori          s10, a1, -723
                  slt          t2, t1, a3
495:              sub          tp, s10, a1
                  beq          a6, a1, 507f
                  lui          gp, 123514
                  ori          s10, sp, 726
                  slt          s5, t0, t6
                  sub          s7, a1, zero
                  sltu         s10, t2, s1
                  srl          t4, s10, a4
                  sltiu        t3, s7, 1493
                  bne          t1, s8, 514f
                  slli         s11, s6, 15
                  xori         a1, s11, -745
507:              slt          t6, gp, a0
                  and          s4, a3, a6
                  nop
                  slti         s2, t6, -163
                  slli         sp, a1, 4
                  auipc        s7, 47398
                  blt          sp, a3, 517f
514:              srai         a3, t4, 12
                  xori         ra, s7, -472
                  slt          s1, s3, s2
517:              sll          a4, s7, t2
                  xor          s7, s1, a3
                  xori         t2, s7, 555
                  auipc        s1, 32670
                  srl          t3, a6, a4
                  xor          t0, a7, tp
                  add          t5, a5, t1
                  sltu         s2, s6, s5
                  blt          s6, s4, 530f
                  bne          zero, s5, 544f
                  sra          a1, ra, ra
                  xor          a2, s10, s2
                  xori         t2, t6, 1331
530:              slti         s11, tp, 1550
                  sltiu        zero, s9, 428
                  add          a2, s4, a2
                  addi         a6, s8, 1910
                  blt          t5, s7, 540f
                  sra          a3, a1, s7
                  add          a1, s0, t1
                  bgeu         s8, a4, 543f
                  slli         s2, s7, 22
                  ori          t4, s7, 65
540:              bgeu         s7, t3, 546f
                  beq          a3, tp, 551f
                  bltu         tp, sp, 548f
543:              lui          s5, 873889
544:              slti         t3, s11, 1982
                  andi         a4, s0, -1726
546:              bne          ra, sp, 563f
                  bltu         a7, sp, 561f
548:              sra          s4, s6, s6
                  add          a0, tp, a7
                  xor          sp, s1, a3
551:              beq          a1, s2, 558f
                  slli         s8, t0, 0
                  bgeu         zero, a5, 572f
                  nop
                  andi         s1, a0, 1109
                  xor          t6, t4, a2
                  sll          a6, s6, t2
558:              slli         s11, s0, 22
                  slli         zero, t1, 31
                  srl          a1, a1, a4
561:              bgeu         sp, s0, 578f
                  xori         a6, s11, -1600
563:              slli         s8, s3, 2
                  sub          s4, t5, t4
                  sll          s3, s3, tp
                  blt          t1, s2, 579f
                  slt          s3, s0, s6
                  bne          s3, s0, 570f
                  bgeu         a7, a2, 583f
570:              bgeu         t3, a0, 573f
                  add          gp, s10, a4
572:              srli         t6, a0, 30
573:              srli         sp, ra, 4
                  srai         s2, s3, 13
                  srli         a1, a1, 24
                  bge          s1, gp, 577f
577:              srli         s5, ra, 19
578:              xor          a6, a3, sp
579:              sub          ra, s7, s5
                  and          zero, t3, t6
                  lui          s3, 384768
                  bgeu         sp, a2, 599f
583:              slt          a2, s7, t0
                  srai         a2, sp, 21
                  nop
                  slt          s1, s1, t2
                  srai         a6, s8, 24
                  blt          a4, zero, 593f
                  or           a5, s7, t0
                  or           t5, t6, s0
                  slli         tp, s0, 13
                  blt          a6, s6, 596f
593:              sltu         gp, s2, s4
                  xori         s1, zero, 1095
                  addi         s8, t1, -559
596:              add          s6, a1, a1
                  beq          ra, a5, 603f
                  slt          zero, s11, a7
599:              nop
                  xor          s11, s9, s5
                  beq          a5, t5, 606f
                  andi         t5, s1, -965
603:              addi         t2, a1, -236
                  xori         tp, s0, -1302
                  blt          sp, s10, 616f
606:              sub          ra, a0, a1
                  bltu         s4, s0, 618f
                  xor          s10, sp, ra
                  xori         tp, s1, -1880
                  srli         a2, t1, 14
                  sltiu        t0, s3, 2016
                  slt          t3, zero, a4
                  addi         s11, s6, 1086
                  and          s11, s4, a7
                  addi         s10, s5, -1160
616:              add          s4, s10, s0
                  sub          t5, s8, s3
618:              bge          s9, sp, 624f
                  addi         t3, ra, -1029
                  slti         tp, s10, -423
                  blt          t2, sp, 633f
                  add          a0, s8, a2
                  srl          s5, s0, a3
624:              sub          t2, s1, a3
                  sltu         s6, sp, t1
                  andi         gp, s1, 352
                  slt          t0, zero, t0
                  sra          a5, a4, tp
                  sltiu        sp, t1, -1058
                  addi         a2, t4, 227
                  ori          t5, s3, 720
                  slt          a1, s6, t4
633:              slti         s8, a0, -67
                  auipc        t0, 710028
                  lui          s1, 1037848
                  sub          t2, tp, t5
                  bltu         s8, a7, 657f
                  bltu         s8, t3, 642f
                  sll          t6, a0, a0
                  or           s4, t0, gp
                  addi         t2, t2, 1076
642:              bge          t2, s2, 660f
                  blt          s7, s10, 649f
                  bge          a1, s10, 663f
                  bge          s8, gp, 655f
                  bge          s2, s6, 665f
                  bge          zero, a1, 653f
                  beq          t1, t5, 654f
649:              beq          a6, s8, 656f
                  or           gp, ra, s5
                  slti         s8, s3, -345
                  sltiu        t2, s11, -1760
653:              sub          s2, a1, a3
654:              slti         s1, a3, 1504
655:              srli         s8, sp, 0
656:              ori          s11, tp, 437
657:              xor          s1, sp, t3
                  ori          t0, s6, 963
                  nop
660:              addi         t6, zero, -851
                  xori         s7, s4, -1498
                  xor          t4, s10, s0
663:              slli         zero, s1, 3
                  or           a5, s2, a2
665:              srli         s7, s10, 25
                  and          a3, a1, t4
                  nop
                  bltu         s11, t4, 677f
                  slli         tp, a6, 18
                  lui          a1, 552315
                  and          t5, s3, s3
                  sltiu        s3, t0, 1568
                  bne          ra, s8, 683f
                  slli         ra, s11, 12
                  sltu         t4, tp, s11
                  and          s4, s8, a1
677:              sltu         s2, s5, a7
                  sra          t0, t5, t2
                  xor          a0, s9, a1
                  xori         gp, s5, 220
                  bge          s5, a0, 691f
                  srli         t2, s5, 22
683:              nop
                  blt          a7, s6, 702f
                  srai         a6, s0, 26
                  beq          gp, a1, 697f
                  slt          a0, a4, s10
                  bne          s7, t5, 705f
                  ori          s11, a3, -1377
                  auipc        a3, 532948
691:              andi         s7, t6, -418
                  bgeu         zero, a5, 695f
                  sltu         s3, t5, a1
                  ori          s1, s3, -1835
695:              blt          a2, a6, 715f
                  sra          sp, s8, s7
697:              beq          t5, s9, 716f
                  and          tp, t0, a2
                  addi         s4, t4, 148
                  auipc        s2, 153288
                  sltiu        t5, a5, 1989
702:              ori          zero, zero, -97
                  sltu         t3, s1, t3
                  sll          t3, s4, sp
705:              slt          tp, a5, t3
                  bge          s5, sp, 723f
                  slt          ra, t4, gp
                  addi         t2, s11, -670
                  auipc        zero, 861610
                  addi         sp, a5, -1847
                  ori          zero, gp, -922
                  blt          s8, t6, 723f
                  srl          s11, ra, a6
                  la           s9, region_0+367 #start load_store_instr_stream_0
                  la           s11, region_0+1600 #start load_store_instr_stream_1
                  la           a5, region_0+685 #start load_store_instr_stream_2
                  sb           a1, -427(s11)
                  lbu          sp, 11(s9)
                  lbu          s7, -6(a5)
                  lbu          t2, 3(a5)
                  sb           a1, -744(s11)
                  lb           s8, -1395(s11)
                  lbu          s3, -6(a5)
                  lhu          s5, -11(a5)
                  sb           zero, 16(s9)
                  lbu          a6, -15(a5)
                  lb           s10, -15(a5)
                  lbu          zero, 93(s11)
                  lb           t6, -13(a5)
                  lw           a4, -7(s9)
                  sb           s1, 5(a5)
                  sb           s0, 2(a5) #end load_store_instr_stream_2
                  lbu          ra, -12(s9)
                  lb           gp, -66(s11) #end load_store_instr_stream_1
                  lh           tp, -13(s9) #end load_store_instr_stream_0
                  xor          s6, t4, s6
715:              bltu         t1, t1, 720f
716:              srai         a3, s1, 12
                  nop
                  nop
                  bne          s10, s7, 723f
720:              ori          s7, t3, 834
                  xor          s4, a0, s6
                  xori         a1, t0, -1230
723:              ori          tp, t1, -572
                  sltiu        s8, a4, -669
                  srli         t6, a7, 18
                  auipc        s7, 480669
                  auipc        s5, 246025
                  nop
                  sltu         sp, s9, s1
                  slti         s10, a0, 789
                  sltu         t6, s5, tp
                  blt          a5, t6, 749f
                  andi         s4, a5, 1
                  nop
                  sub          s11, s4, t2
                  sub          gp, s10, a4
                  xori         a2, t6, -1564
                  or           s4, s11, s1
                  slt          s7, a6, s2
                  bltu         a2, a7, 745f
                  sll          s7, t3, s0
                  xori         s7, a1, 1602
                  xor          sp, s7, t5
                  ori          s10, s5, 846
745:              or           gp, zero, s2
                  blt          s0, a2, 760f
                  sll          s6, s5, s9
                  ori          a3, a7, -1984
749:              xor          a1, ra, sp
                  bne          s2, s11, 759f
                  blt          s3, s10, 757f
                  sub          a0, a4, a5
                  beq          a3, s10, 772f
                  bge          s9, tp, 761f
                  srli         s9, t0, 4
                  bgeu         tp, a0, 758f
757:              xor          s10, s6, gp
758:              add          s7, a3, zero
759:              blt          tp, s0, 770f
760:              ori          zero, s5, -1525
761:              sll          a3, t3, gp
                  and          t2, t5, s2
                  lui          s9, 231798
                  srai         s3, s0, 22
                  srl          ra, t2, t4
                  nop
                  bgeu         ra, s2, 777f
                  srl          a6, s4, s2
                  sra          s1, a7, s9
770:              xor          a4, a4, gp
                  bgeu         s11, a2, 781f
772:              sltiu        a4, s4, -1227
                  srli         s10, t0, 0
                  blt          s5, t3, 792f
                  slti         a5, t1, 857
                  bgeu         ra, a5, 787f
777:              slli         a5, s1, 22
                  sub          t3, a1, s2
                  bltu         ra, t6, 780f
780:              lui          s11, 631493
781:              addi         s6, ra, 794
                  beq          a0, s6, 788f
                  bgeu         t5, ra, 789f
                  sltiu        gp, s1, -1690
                  xor          t6, s5, a6
                  bge          a5, s6, 795f
787:              slt          s10, s1, a3
788:              sll          s1, s10, t3
789:              beq          t3, tp, 795f
                  slt          t5, s3, gp
                  blt          s5, a6, 795f
792:              lui          s2, 1009474
                  sltiu        ra, s7, 1167
                  srli         s11, t4, 14
795:              addi         s2, gp, -1171
                  la x6, test_done
                  jalr x0, x6, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            sltiu        a5, a7, 675
                  addi         a7, a7, -44
                  srai         gp, t3, 14
                  sw           ra, 4(a7)
                  auipc        s1, 884157
                  slli         t4, t0, 20
                  addi         s7, s3, -642
                  sltu         s8, s5, t4
                  sltiu        s1, t2, -891
                  la           a5, sub_2
                  addi         a5, a5, -399
                  sra          a4, s8, t6
                  sltiu        a6, t2, 757
                  slli         s7, a6, 26
                  or           tp, s1, t3
                  slti         s1, t4, -1138
sub_1_j2:         jalr         ra, a5, 399 #jump sub_1 -> sub_2
                  blt          sp, sp, 3f
                  sra          sp, a1, tp
                  sltu         t4, a5, a4
3:                nop
                  slt          a6, t0, tp
                  or           a3, s4, t4
                  auipc        t6, 128078
                  or           tp, s5, sp
                  ori          tp, s2, -50
                  auipc        t6, 864388
                  srai         s9, a4, 8
                  sll          s5, s2, a7
                  sra          a0, s10, s4
                  srai         t2, sp, 6
                  bgeu         s0, t3, 32f
                  sra          t3, t6, a4
                  addi         s5, s2, -1313
                  andi         s2, s0, 1893
                  srl          s1, s5, tp
                  and          a6, s4, s8
                  bge          a4, t5, 28f
                  andi         t2, s1, 1908
                  sltiu        s8, zero, -1392
                  sll          t0, s6, a3
                  andi         a0, s5, -2016
                  add          zero, s4, t1
                  xor          a4, gp, a5
                  addi         sp, tp, 631
28:               sub          t4, s8, a5
                  and          s6, zero, t4
                  srl          zero, t6, a7
                  srli         s7, a0, 8
32:               sub          tp, t3, s10
                  bge          ra, s6, 52f
                  beq          tp, t5, 46f
                  add          t4, a6, a3
                  andi         s9, s7, -1911
                  srli         s7, s9, 3
                  sltu         a6, s1, s0
                  nop
                  sra          s4, s4, s8
                  sltiu        gp, zero, -748
                  ori          s5, ra, -1991
                  sub          s4, sp, t5
                  sll          t0, zero, t5
                  sra          gp, a5, zero
46:               bge          s7, a6, 65f
                  ori          t5, s1, 1181
                  addi         s4, a0, -809
                  addi         sp, s10, -80
                  slt          s4, tp, t4
                  ori          s3, zero, -680
52:               srai         ra, tp, 14
                  auipc        t3, 916176
                  bge          s2, s0, 60f
                  beq          t0, a1, 67f
                  addi         s4, s9, 903
                  ori          s1, zero, 900
                  lui          tp, 438586
                  addi         t3, t1, 114
60:               srl          s2, a6, a2
                  slt          a3, s8, a6
                  sll          a5, s11, t2
                  srli         sp, a3, 15
                  or           a1, s7, a3
65:               sub          a2, a4, a1
                  sltu         a4, a6, a0
67:               lui          a1, 902042
                  auipc        t5, 875011
                  xori         a0, s3, -1217
                  srai         s3, s5, 16
                  slli         s10, a7, 26
                  nop
                  lw           ra, 4(a7)
                  addi         a7, a7, 44
                  srai         s6, t4, 15
                  sltu         s2, a0, s4
                  xori         s1, a3, 1995
95:               addi x26, x1, 0
95:               jalr x26, x26, 0
sub_2:            addi         a7, a7, -16
                  and          a5, s0, s9
                  srl          t3, a2, t3
                  xor          tp, t0, a4
                  slli         a0, s7, 25
                  sw           ra, 4(a7)
                  srli         s5, a5, 18
                  sub          s3, a0, a0
                  and          zero, a2, s4
                  sltu         s7, a5, t1
                  sll          sp, a0, zero
                  ori          gp, a1, -740
                  la           s5, region_1+678 #start load_store_instr_stream_1
                  sw           t0, -158(s5)
                  la           s2, region_1+1436 #start load_store_instr_stream_0
                  sb           t3, 1079(s5)
                  lb           s10, -83(s2)
                  lbu          sp, 344(s5)
                  lbu          sp, 11(s2)
                  lb           a0, 609(s5)
                  lb           t5, 1000(s5)
                  lb           a4, -61(s2)
                  sb           a2, 837(s5)
                  lb           a1, 256(s2)
                  lb           ra, 15(s2)
                  sb           a2, -479(s5)
                  lbu          a2, -178(s5)
                  sb           a0, -84(s2)
                  sb           s2, 100(s5)
                  lbu          s4, 218(s2)
                  lbu          s11, -664(s5) #end load_store_instr_stream_1
                  lbu          s9, -101(s2) #end load_store_instr_stream_0
                  la           t0, region_1+1519 #start riscv_load_store_hazard_instr_stream_0
                  sb           t0, -713(t0)
                  lhu          a5, -183(t0)
                  lh           a2, -183(t0)
                  addi         s6, s8, -1724
                  lb           t3, -183(t0)
                  xori         a2, s2, 825
                  sh           a3, -243(t0)
                  lw           a0, -243(t0)
                  lbu          s4, -243(t0)
                  lh           s1, -243(t0)
                  sra          a6, s4, t2
                  add          sp, t1, t2
                  auipc        s1, 809597
                  lbu          s2, -848(t0)
                  sw           t3, -727(t0)
                  lbu          sp, -727(t0)
                  lb           zero, -727(t0)
                  addi         s3, s6, -434
                  sll          s9, s10, a6
                  lbu          t4, -1025(t0)
                  sh           s9, -1025(t0) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+525 #start riscv_load_store_rand_instr_stream_0
                  sra          a5, s4, s9
                  ori          a2, a6, 1242
                  sb           a3, 22(sp)
                  auipc        t2, 695308
                  ori          s5, t0, -978
                  lui          s5, 805105
                  sb           t1, -234(sp)
                  sb           a2, 80(sp)
                  sub          t2, s9, s2
                  sll          s1, s4, a6
                  sb           a0, 2(sp)
                  lbu          a4, 34(sp)
                  xor          s9, gp, a2
                  lb           a6, 166(sp)
                  lb           s6, 248(sp)
                  sw           s9, -217(sp)
                  xor          a3, a3, gp
                  or           gp, s5, ra
                  and          t5, tp, t3
                  lui          ra, 136894
                  lh           a3, 111(sp)
                  lh           tp, -151(sp)
                  nop
                  sub          t2, s9, s10
                  addi         a0, s0, -211
                  xori         zero, ra, 1320
                  auipc        s8, 915166
                  lbu          a2, 10(sp)
                  lh           s4, -137(sp)
                  sll          gp, s0, s9
                  slt          s1, s2, gp
                  slli         s6, a7, 8
                  addi         s3, sp, 1323
                  xori         a4, a2, 1841
                  sub          ra, a5, s7
                  lui          s10, 188350
                  lb           a1, -165(sp)
                  lbu          a6, -123(sp)
                  lb           a3, -28(sp)
                  lhu          s8, -81(sp)
                  sb           a3, 148(sp)
                  sltiu        a6, ra, -1336
                  lb           s5, -122(sp) #end riscv_load_store_rand_instr_stream_0
                  srl          s10, s2, s2
                  sltu         t3, t5, a2
                  srli         gp, s2, 23
                  add          t0, t0, a2
                  xor          s6, s3, s0
                  sltiu        s8, s8, 784
                  slt          a2, s6, s4
                  and          zero, s7, s8
                  srli         s11, ra, 3
                  xori         a3, a2, 1185
                  srl          t5, s10, s8
                  add          zero, a6, t2
                  bne          a7, t1, 25f
                  add          s5, s7, s0
                  nop
                  bge          s11, s11, 18f
                  auipc        s9, 119694
                  beq          t0, ra, 30f
18:               sltiu        s11, s10, 1410
                  sra          sp, a7, s11
                  srai         zero, a2, 12
                  blt          a3, zero, 40f
                  sub          t3, a0, s2
                  or           a6, s6, a3
                  addi         t0, t4, 1940
25:               sltu         zero, s2, s4
                  sra          s4, s11, s5
                  bge          s7, s3, 31f
                  sub          s2, t0, ra
                  add          s5, s10, s1
30:               andi         t6, a7, 1058
31:               sll          t4, t6, t2
                  ori          t2, zero, -1875
                  sltiu        t2, a0, -908
                  sltiu        s9, sp, -711
                  xor          s6, a0, s10
                  nop
                  slti         t4, a1, 496
                  bne          t2, a4, 53f
                  lui          zero, 350200
40:               or           a1, s6, s11
                  ori          s2, s10, -1146
                  bge          s11, s7, 54f
                  bltu         tp, zero, 45f
                  andi         a3, t6, -1667
45:               or           tp, a0, t3
                  nop
                  or           ra, a0, s2
                  slt          t5, s8, a0
                  xor          tp, t0, gp
                  or           a2, a6, s6
                  lui          a5, 533891
                  bgeu         t2, a1, 56f
53:               ori          a6, t2, -1384
54:               sltiu        ra, t3, -1457
                  srli         s3, a6, 16
56:               blt          s2, t4, 62f
                  sltu         t3, t4, a7
                  srli         sp, s5, 16
                  andi         s10, s10, 1855
                  ori          s3, s3, -252
                  slli         t2, a2, 29
62:               nop
                  lui          s3, 757050
                  addi         t6, s8, 2001
                  slti         s9, t5, 889
                  andi         s7, s11, -743
                  srli         s5, t6, 14
                  srai         a3, s0, 7
                  xori         s11, a4, 1397
                  slli         zero, s3, 20
                  sll          s8, s0, s6
                  bgeu         a7, ra, 86f
                  sltiu        t2, sp, -1442
                  sltiu        a1, a1, 93
                  srai         s10, a7, 16
                  bne          t2, s5, 93f
                  slli         t0, s6, 6
                  sltu         s4, a2, tp
                  sll          a1, s8, s3
                  addi         sp, a1, 1274
                  sll          s11, ra, s7
                  srli         s8, t1, 9
                  slt          a5, s9, t0
                  xor          s11, a3, gp
                  slli         s1, s1, 19
86:               slti         t5, a0, 952
                  addi         s9, s9, 27
                  bgeu         s6, s5, 101f
                  beq          a5, s7, 90f
90:               ori          a2, t0, -624
                  bge          zero, s6, 94f
                  auipc        s4, 734456
93:               srli         s9, s1, 26
94:               slti         t4, s9, 490
                  addi         a4, a2, -1770
                  add          t0, s3, a4
                  sltu         s2, t6, s3
                  lui          s2, 659071
                  and          t2, s2, a6
                  srai         ra, a0, 8
101:              or           tp, ra, gp
                  bne          s3, s6, 108f
                  bne          s10, s2, 122f
                  bne          a0, a2, 123f
                  xori         s3, a0, 1357
                  sll          t3, t0, s0
                  srli         s11, a5, 5
108:              sltu         t3, sp, s4
                  slt          a6, s10, s10
                  sub          gp, s5, s2
                  and          t6, t4, s10
                  xor          s10, s6, s8
                  sra          tp, s7, s4
                  slli         a1, a4, 24
                  bge          t5, s6, 127f
                  nop
                  lui          t3, 744428
                  xor          s10, s9, a0
                  srli         t2, a1, 3
                  slti         a3, s11, -394
                  andi         s10, t4, -397
122:              bltu         a7, a5, 125f
123:              bltu         a7, a1, 135f
                  xor          zero, tp, a4
125:              srai         zero, s9, 22
                  sub          zero, a5, s7
127:              or           a0, a7, s8
                  slt          a6, a6, s5
                  andi         s2, t6, -336
                  nop
                  sltiu        tp, t6, -578
                  bge          a2, ra, 135f
                  sll          a5, s6, zero
                  sra          s11, tp, s11
135:              or           a1, a7, t3
                  srli         t2, s7, 9
                  lw           ra, 4(a7)
                  srli         tp, s1, 23
                  nop
                  addi         a7, a7, 16
                  sub          s9, s5, a6
                  or           a5, t3, t5
                  sltiu        t0, t2, -857
242:              addi x22, x1, 1
242:              jalr x22, x22, 0
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
                  add x8, x17, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x23, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x23, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x23, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x23, x10, ecall_handler
                  li x10, 0x1
                  beq x23, x10, instr_fault_handler
                  li x10, 0x5
                  beq x23, x10, load_fault_handler
                  li x10, 0x7
                  beq x23, x10, store_fault_handler
                  li x10, 0xc
                  beq x23, x10, pt_fault_handler
                  li x10, 0xd
                  beq x23, x10, pt_fault_handler
                  li x10, 0xf
                  beq x23, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x6, test_done
                  jalr x1, x6, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x6, write_tohost
                  jalr x0, x6, 0

instr_fault_handler:
                  add x17, x8, zero
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
                  add x17, x8, zero
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
                  add x17, x8, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x17, x8, zero
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
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x17, x8, zero
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
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x17, x8, zero
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
