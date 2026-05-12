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
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 0
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0xb37b5113
                  li x1, 0x0
                  li x2, 0x0
                  li x3, 0xffc64434
                  li x4, 0x471766f4
                  li x5, 0x80000000
                  li x6, 0x80000000
                  li x7, 0x0
                  li x9, 0xde2c4836
                  li x11, 0x0
                  li x12, 0x5ceeecdf
                  li x13, 0xc
                  li x14, 0xf82f3948
                  li x15, 0xfbe7f2a7
                  li x16, 0x0
                  li x17, 0x7
                  li x18, 0x8828ad43
                  li x19, 0xb34081e5
                  li x20, 0x4fe29706
                  li x21, 0x0
                  li x22, 0x2
                  li x23, 0xf92f42c7
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0xf2e0a31
                  li x27, 0xf09880a0
                  li x28, 0xf74a824e
                  li x29, 0x8
                  li x30, 0xf
                  li x31, 0x80000000
                  la x8, user_stack_end
main:             nop
                  sll          s7, a7, t5
                  xori         s2, ra, -2023
                  srl          s2, s5, s1
                  addi         t2, s11, 188
                  la           a2, sub_2
                  lui          s4, 465340
                  add          t3, s5, t1
                  addi         a2, a2, -148
                  bne          t4, a6, main_j2 #branch to jump instr
                  slti         s4, a4, 299
main_j2:          jalr         s4, a2, 149 #jump main -> sub_2
                  la           s11, region_0+283 #start riscv_load_store_hazard_instr_stream_4
                  lbu          s7, -73(s11)
                  sb           t4, -73(s11)
                  sb           a3, 72(s11)
                  lui          s8, 847197
                  lh           t1, 137(s11)
                  sb           a7, 137(s11)
                  sb           s0, 46(s11)
                  slti         a1, s1, -393
                  sra          a4, t4, a2
                  lb           s8, -115(s11)
                  lbu          t0, -232(s11)
                  lw           s8, 253(s11)
                  lh           s5, 253(s11)
                  sh           t0, 253(s11)
                  lw           s1, 253(s11)
                  lh           ra, 253(s11)
                  sb           a1, 253(s11)
                  sltu         s7, gp, s10
                  sh           a4, 253(s11)
                  lb           tp, 253(s11)
                  add          t3, s3, s1
                  sw           s5, 253(s11)
                  slli         s7, t3, 8
                  lbu          s8, 42(s11) #end riscv_load_store_hazard_instr_stream_4
                  la           t1, region_0+563 #start riscv_load_store_rand_instr_stream_1
                  nop
                  sub          t0, s9, a4
                  add          s7, a2, a3
                  srai         a5, s9, 28
                  lui          a1, 582758
                  lbu          sp, 7(t1)
                  lbu          s8, -16(t1)
                  xor          a3, a0, a4
                  auipc        s5, 210956
                  lb           sp, -6(t1)
                  slli         tp, s11, 30
                  lhu          s9, -7(t1)
                  sb           t4, 7(t1)
                  srli         gp, a5, 18
                  lbu          t5, 15(t1)
                  lb           s11, 16(t1)
                  add          s11, sp, s1
                  sltu         t6, s5, t1
                  ori          s5, s1, 1689
                  sb           s9, 12(t1)
                  xor          tp, zero, s11
                  addi         a2, gp, -1875
                  srl          a2, gp, t1
                  lb           a6, 9(t1)
                  lhu          s2, 3(t1)
                  lb           a2, -4(t1)
                  srli         s5, s6, 25
                  lbu          s5, -9(t1)
                  lb           s9, 11(t1)
                  sb           t0, 6(t1) #end riscv_load_store_rand_instr_stream_1
                  la           s7, region_1+732 #start riscv_load_store_rand_instr_stream_0
                  lh           a6, -52(s7)
                  ori          s3, s10, -1746
                  lh           a5, 42(s7)
                  sll          t0, a1, t1
                  lbu          s10, 61(s7)
                  sb           a4, -31(s7)
                  srai         ra, t3, 16
                  sll          a1, s6, tp
                  sltiu        s2, s1, 28
                  sltiu        t6, t4, -1316
                  lui          a4, 634781
                  sb           t5, 63(s7)
                  sltiu        s5, s1, -1298
                  ori          s11, a7, 591
                  lh           t6, -48(s7)
                  andi         s4, a0, -1986
                  sub          a2, a7, zero
                  or           t1, s4, t2
                  sltiu        s8, t2, -795
                  lb           sp, 39(s7)
                  srli         s1, tp, 12
                  lbu          s2, 53(s7)
                  and          sp, s10, a6
                  sll          a7, t2, s1
                  lbu          a2, 18(s7)
                  lbu          t6, -19(s7)
                  lbu          s11, -31(s7)
                  lb           a6, 24(s7)
                  slli         t2, a3, 17
                  lbu          s2, -19(s7)
                  sb           s7, -45(s7)
                  and          s11, sp, s3
                  xor          s2, s6, a0
                  srl          tp, s0, t3
                  sb           a1, 1(s7)
                  slli         t1, t5, 16
                  ori          sp, tp, 1769
                  lui          s5, 466055
                  sltiu        a5, s0, -1500
                  lb           ra, 37(s7)
                  lb           a4, 28(s7)
                  nop
                  sra          t6, a2, s9
                  lbu          a2, 22(s7)
                  slli         s5, t0, 3
                  ori          a5, t2, -213
                  lbu          s1, 49(s7) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_1+1866 #start riscv_load_store_rand_instr_stream_3
                  xor          a4, s9, s9
                  sb           s6, 3(ra)
                  xor          s6, a3, t6
                  sb           s9, -63(ra)
                  slt          s3, t0, a1
                  sltu         s2, a6, a1
                  and          a3, t3, ra
                  lbu          s9, -33(ra)
                  ori          zero, s3, -1788
                  addi         gp, a1, 253
                  lb           a1, -43(ra)
                  sltu         t3, t5, a4
                  slli         t1, s1, 16
                  lhu          s3, -12(ra)
                  sb           s6, -12(ra)
                  slli         zero, s10, 31
                  lbu          a7, 63(ra)
                  sh           ra, 2(ra)
                  sb           s10, 57(ra)
                  sw           a1, -62(ra)
                  nop
                  addi         t3, t6, -1842
                  auipc        a7, 433334
                  slti         a5, s2, -1406
                  sltiu        s11, a6, -1493
                  slt          a6, s2, t5
                  or           t0, s11, a2
                  lbu          s5, 19(ra)
                  sh           s3, 44(ra)
                  lbu          t0, -35(ra)
                  lb           a2, -56(ra)
                  sb           gp, 7(ra)
                  and          s8, t3, s8
                  sb           s4, 33(ra)
                  sh           s2, 24(ra) #end riscv_load_store_rand_instr_stream_3
                  la           a4, region_0+1024 #start load_store_instr_stream_0
                  la           t2, region_0+1515 #start load_store_instr_stream_1
                  la           sp, region_0+199 #start load_store_instr_stream_2
                  lhu          s3, -678(a4)
                  lhu          s11, 155(sp)
                  sb           t3, -214(t2)
                  lb           t0, 22(sp)
                  lb           a6, 904(a4)
                  lhu          s5, 47(sp)
                  lbu          s8, 166(sp)
                  lb           s11, 832(a4)
                  sb           ra, 166(sp)
                  lb           s10, -212(t2)
                  lb           gp, -349(a4)
                  lhu          a5, -602(a4)
                  sb           t2, -166(sp)
                  sh           ra, 207(t2)
                  lb           t0, -123(t2)
                  lbu          tp, -783(a4)
                  lh           s1, -137(t2)
                  sb           s5, 186(sp)
                  lhu          ra, -21(t2)
                  lh           s4, 119(t2)
                  lbu          ra, 948(a4)
                  lb           gp, -13(sp) #end load_store_instr_stream_2
                  lh           s10, -59(t2) #end load_store_instr_stream_1
                  sh           s9, 908(a4)
                  lb           gp, -997(a4) #end load_store_instr_stream_0
                  la           ra, region_0+1712 #start load_store_instr_stream_1
                  sb           s1, -23(ra)
                  la           s7, region_0+1297 #start load_store_instr_stream_0
                  lbu          a3, 20(ra)
                  sw           s1, -33(s7)
                  lh           gp, -33(s7)
                  lbu          t2, 27(ra)
                  lbu          t3, 35(ra)
                  lb           a2, 38(s7)
                  lbu          s3, 38(s7)
                  lhu          t0, 14(ra)
                  lb           t6, 50(ra)
                  lb           t2, 31(s7)
                  lbu          s4, 47(ra)
                  lb           gp, -14(ra) #end load_store_instr_stream_1
                  lw           t5, 47(s7) #end load_store_instr_stream_0
                  la           s10, region_1+1483 #start load_store_instr_stream_0
                  la           s11, region_1+1173 #start load_store_instr_stream_2
                  sb           a6, 2(s10)
                  sb           a2, -183(s11)
                  lbu          s6, -165(s11)
                  la           s5, region_1+259 #start load_store_instr_stream_1
                  lb           a4, -33(s10)
                  lhu          a4, 225(s11)
                  lb           tp, -1446(s10)
                  lbu          t2, -195(s5)
                  sh           t2, -143(s5)
                  lb           ra, -155(s11)
                  lh           s2, -107(s11)
                  lw           t6, -879(s10)
                  lhu          t6, -115(s5)
                  lb           tp, 130(s11)
                  lb           a1, -58(s5)
                  lb           a4, -242(s11)
                  lbu          a6, -187(s11)
                  lb           a2, 412(s10)
                  sh           t3, 323(s10)
                  lb           a6, 148(s5)
                  lbu          s3, -216(s11)
                  lbu          t5, -214(s5)
                  lbu          a5, 212(s11) #end load_store_instr_stream_2
                  sh           a0, -129(s5) #end load_store_instr_stream_1
                  sb           s3, 92(s10)
                  lb           s2, -457(s10)
                  lhu          s2, -1139(s10)
                  sb           t5, 332(s10) #end load_store_instr_stream_0
                  la           sp, region_0+153 #start riscv_load_store_hazard_instr_stream_3
                  sb           zero, 41(sp)
                  lbu          s1, 36(sp)
                  sb           ra, -34(sp)
                  srai         t1, gp, 6
                  srli         t3, t1, 14
                  xor          s11, t4, t6
                  sltiu        s4, t2, 1837
                  lbu          a7, 62(sp)
                  lbu          a1, -36(sp)
                  sb           s6, -4(sp)
                  sb           a2, 0(sp)
                  lui          a6, 249758
                  lw           gp, -37(sp)
                  lbu          s5, -37(sp)
                  sb           a6, -37(sp)
                  lb           s5, -10(sp)
                  lbu          a5, 30(sp)
                  sb           s9, 47(sp)
                  sb           s5, 47(sp)
                  sb           ra, -9(sp)
                  lh           s4, -19(sp)
                  lb           a3, 14(sp)
                  sb           s7, -42(sp)
                  sb           ra, -32(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t5, region_1+582 #start load_store_instr_stream_3
                  la           s7, region_1+1366 #start load_store_instr_stream_1
                  la           a4, region_1+587 #start load_store_instr_stream_0
                  lbu          s1, 6(t5)
                  la           gp, region_1+970 #start load_store_instr_stream_2
                  lb           s6, -66(a4)
                  sb           s3, 8(t5)
                  lbu          s6, -57(gp)
                  lw           s6, -166(s7)
                  lbu          s1, -8(t5)
                  lbu          s8, 60(gp)
                  sb           t2, 1361(a4)
                  lbu          s11, -155(s7)
                  lh           s5, 1355(a4)
                  lbu          a1, -29(gp)
                  sb           s7, -13(t5)
                  lb           t2, 33(gp)
                  sb           s2, 19(gp)
                  sh           a5, -213(a4)
                  lbu          a3, -11(t5)
                  lb           s10, -43(gp)
                  sb           t4, 164(s7)
                  lbu          s8, 146(s7)
                  sb           zero, -1(t5)
                  sb           s10, -47(s7)
                  lb           s10, 577(a4)
                  lbu          s10, -31(s7)
                  lb           s10, 760(a4)
                  lh           s9, 10(t5)
                  lh           s11, 222(s7)
                  lbu          t3, 152(a4)
                  lbu          a5, -11(t5) #end load_store_instr_stream_3
                  lbu          tp, -37(gp) #end load_store_instr_stream_2
                  lb           zero, -128(s7) #end load_store_instr_stream_1
                  sh           s7, -451(a4) #end load_store_instr_stream_0
                  la           t0, region_0+256 #start riscv_load_store_hazard_instr_stream_2
                  auipc        s6, 230395
                  sb           s5, 183(t0)
                  lui          s6, 476197
                  lbu          t3, 206(t0)
                  lh           a6, -78(t0)
                  slli         a6, s3, 31
                  lh           s7, -78(t0)
                  sb           s1, -78(t0)
                  lh           tp, -78(t0)
                  lb           t3, -44(t0)
                  lbu          s8, -17(t0)
                  lbu          tp, 141(t0)
                  sh           s7, -22(t0)
                  sb           tp, -255(t0)
                  slli         a1, s7, 4
                  lb           a6, -49(t0)
                  sltiu        s3, a2, 321
                  lw           a7, 44(t0)
                  lui          tp, 91791
                  lbu          s10, -182(t0)
                  sh           t0, -164(t0)
                  lh           s3, -164(t0)
                  lh           s6, -164(t0)
                  lh           a5, -242(t0) #end riscv_load_store_hazard_instr_stream_2
                  la           a1, region_1+856 #start riscv_load_store_hazard_instr_stream_0
                  lbu          t3, 305(a1)
                  sb           t3, 305(a1)
                  sub          gp, s3, tp
                  sltu         a7, t5, gp
                  ori          t0, s2, -1265
                  lbu          s1, 305(a1)
                  lb           tp, -37(a1)
                  and          s11, sp, s8
                  sll          a5, s5, s10
                  lbu          s8, 1131(a1)
                  sb           s5, 1131(a1)
                  lb           s6, 1131(a1)
                  sb           s0, -269(a1)
                  sb           s8, -269(a1)
                  srli         t5, s10, 17
                  sb           t3, -269(a1)
                  sw           s8, -512(a1) #end riscv_load_store_hazard_instr_stream_0
                  la           a4, region_0+1428 #start load_store_instr_stream_2
                  lw           a6, -8(a4)
                  la           a7, region_0+1912 #start load_store_instr_stream_1
                  la           s10, region_0+834 #start load_store_instr_stream_3
                  sb           s5, -5(a4)
                  lb           t6, -15(a4)
                  lbu          t2, 54(a7)
                  sb           a7, 0(a7)
                  lh           t1, 32(s10)
                  la           t3, region_0+11 #start load_store_instr_stream_0
                  lbu          a6, -777(s10)
                  sb           s9, 6(a4)
                  lh           t0, -252(s10)
                  lw           t6, -52(a7)
                  sb           zero, 63(a7)
                  lb           s4, 12(t3)
                  lh           a3, -5(t3)
                  lb           t2, -8(t3)
                  lb           s5, -27(a7)
                  lb           zero, -11(a4)
                  lbu          tp, -289(s10)
                  lb           ra, 64(t3)
                  lhu          a1, -10(a7) #end load_store_instr_stream_1
                  lbu          s4, -123(s10)
                  lb           s7, -11(a4)
                  lb           s6, -1(a4) #end load_store_instr_stream_2
                  sb           s11, -260(s10)
                  sb           t4, -68(s10)
                  sh           a1, 320(s10) #end load_store_instr_stream_3
                  sb           a7, -1(t3) #end load_store_instr_stream_0
                  la           t1, region_1+161 #start riscv_load_store_rand_instr_stream_4
                  andi         zero, s11, -992
                  srl          a4, ra, s6
                  lbu          a3, 136(t1)
                  sb           t3, 172(t1)
                  sltu         a1, tp, s5
                  slti         ra, a6, -614
                  srli         s11, t1, 19
                  slli         a7, t6, 7
                  lb           s10, 28(t1)
                  lbu          a4, 232(t1)
                  addi         tp, s3, 1833
                  srl          a4, a6, sp
                  sb           a4, 183(t1)
                  sra          sp, s5, a0
                  lb           s4, 248(t1)
                  lw           a6, -33(t1)
                  lhu          s11, 71(t1)
                  slti         s8, s3, -504
                  sll          zero, sp, s9
                  andi         s9, a5, 1615
                  nop
                  srai         s1, t0, 27
                  sra          zero, t4, tp
                  ori          zero, s11, -1821
                  lhu          t6, 53(t1)
                  lbu          s7, 117(t1)
                  sb           s8, -25(t1)
                  lbu          a3, 228(t1)
                  lbu          gp, -82(t1)
                  auipc        a2, 585547
                  lb           s8, 230(t1)
                  sw           s3, -33(t1)
                  xori         s3, s8, 1468
                  sh           t0, 139(t1)
                  addi         t6, sp, 1358
                  sh           s3, 141(t1)
                  lb           a3, 166(t1)
                  sb           s10, -128(t1)
                  lbu          s6, -119(t1)
                  lbu          s4, -90(t1)
                  lb           a2, 240(t1)
                  nop
                  and          gp, s2, zero
                  lhu          t6, 133(t1)
                  slli         zero, s10, 4
                  lbu          s3, 185(t1) #end riscv_load_store_rand_instr_stream_4
                  la           s10, region_0+848 #start riscv_load_store_hazard_instr_stream_1
                  sub          a3, s0, a2
                  add          s2, s9, s9
                  lbu          s9, 44(s10)
                  lhu          a6, -64(s10)
                  lh           ra, -64(s10)
                  lh           s9, -64(s10)
                  sb           s4, -57(s10)
                  sb           a3, -57(s10)
                  sb           t2, -5(s10)
                  auipc        s1, 789368
                  lbu          s6, -5(s10)
                  lb           s4, -28(s10)
                  sw           s10, -24(s10)
                  lbu          s9, -24(s10)
                  sw           a4, -24(s10)
                  lhu          t2, 4(s10)
                  lh           t2, 54(s10)
                  lbu          a5, 54(s10)
                  lbu          s3, 41(s10)
                  lbu          t2, 41(s10)
                  lb           s1, -22(s10)
                  lbu          a1, -22(s10)
                  sb           ra, -33(s10) #end riscv_load_store_hazard_instr_stream_1
                  la           a3, region_1+386 #start riscv_load_store_rand_instr_stream_2
                  lbu          gp, 2(a3)
                  slti         a2, t3, 1143
                  lbu          ra, -54(a3)
                  lb           s4, -62(a3)
                  lhu          t6, -16(a3)
                  lb           t3, 55(a3)
                  lh           s7, 44(a3)
                  sb           s2, 13(a3)
                  lhu          s6, 10(a3)
                  sub          sp, ra, a1
                  slt          t1, a0, s10
                  sb           a6, 16(a3)
                  lb           sp, 39(a3)
                  lbu          s6, -15(a3)
                  sltu         t2, sp, s5
                  xor          a7, s8, tp
                  lbu          tp, -25(a3)
                  slli         a5, ra, 24
                  lbu          a7, -42(a3)
                  lb           zero, 25(a3)
                  add          s11, a4, zero
                  lb           s10, -23(a3)
                  auipc        a1, 506470
                  sll          gp, t2, t6
                  lbu          sp, 11(a3)
                  lb           s9, 37(a3)
                  srli         s6, s2, 25
                  lbu          s10, 17(a3)
                  lbu          s1, -11(a3)
                  lb           s3, -5(a3)
                  sb           a4, 22(a3)
                  sb           s3, 27(a3)
                  srai         a6, a5, 8
                  addi         s4, s11, 1857
                  lbu          s11, 21(a3)
                  auipc        a4, 669089
                  sltu         s2, a3, a7
                  xor          ra, gp, tp
                  sw           s7, -46(a3)
                  lhu          t3, 42(a3)
                  slti         t2, a6, -1159
                  lh           t6, 20(a3)
                  srli         s1, a0, 2
                  lw           t1, 46(a3)
                  xori         t3, a3, 1155
                  lb           sp, 21(a3) #end riscv_load_store_rand_instr_stream_2
                  bgeu         sp, s10, 14f
                  sltu         a3, s5, zero
                  xori         a6, s9, 1144
                  sra          s8, s4, s0
                  xori         a2, a2, -940
                  sll          a6, a3, ra
                  sltiu        a7, a1, -637
                  nop
                  auipc        s6, 94715
                  slli         sp, a0, 20
                  lui          gp, 395221
                  blt          gp, s6, 24f
                  auipc        s4, 872213
                  beq          a3, s5, 33f
14:               or           t2, s3, s6
                  lui          s5, 238646
                  blt          t6, a6, 18f
                  srl          zero, s7, sp
18:               sub          s8, s3, sp
                  ori          s2, t6, 1523
                  or           a4, s10, s3
                  sltiu        a6, t3, -243
                  blt          s7, zero, 27f
                  addi         s9, a2, 753
24:               beq          s8, t2, 39f
                  slt          a3, ra, a0
                  bge          a0, t3, 32f
27:               srli         t0, a0, 17
                  ori          s5, t2, -1251
                  auipc        t6, 871970
                  lui          a4, 568593
                  srli         s9, a7, 11
32:               and          a5, t1, s3
33:               beq          a2, a1, 47f
                  add          tp, s8, gp
                  and          s7, a6, s6
                  beq          t3, a7, 37f
37:               and          a2, s8, s2
                  slti         gp, s4, -270
39:               and          a7, s6, s2
                  auipc        s10, 31060
                  sltu         t0, s4, a2
                  blt          sp, t5, 55f
                  sll          s10, a3, s11
                  auipc        s10, 875099
                  auipc        s1, 366104
                  nop
47:               xor          t3, a2, a2
                  lui          t3, 774340
                  andi         t0, s2, -324
                  and          tp, a0, t5
                  slt          s9, t2, t0
                  bge          t6, s1, 59f
                  sub          zero, s6, a4
                  srai         t0, a2, 24
55:               sub          s7, a1, a6
                  slti         s8, s7, 640
                  blt          t1, a0, 66f
                  add          s1, zero, s10
59:               bge          t6, a0, 68f
                  xor          a3, s0, s2
                  beq          s8, a3, 69f
                  and          s3, a2, s2
                  add          s7, s11, sp
                  bne          t3, t2, 68f
                  bltu         a4, s7, 66f
66:               andi         t0, s1, -1437
                  blt          zero, s3, 74f
68:               beq          s11, s4, 76f
69:               addi         s6, a1, 66
                  beq          s0, t0, 74f
                  srai         t1, s11, 0
                  sub          s11, a5, sp
                  sub          a5, s5, s5
74:               srai         s4, s0, 21
                  add          a7, a0, s4
76:               andi         t1, a7, 2012
                  bge          gp, a3, 91f
                  sra          a2, s2, s1
                  bgeu         s1, s11, 84f
                  beq          a4, s9, 89f
                  beq          s5, t3, 100f
                  sra          t2, ra, s3
                  bne          a1, s1, 96f
84:               srli         t3, s2, 16
                  bge          t1, t1, 95f
                  slti         t6, a4, -180
                  sll          s3, a5, tp
                  sra          t0, s8, s7
89:               srai         s6, tp, 31
                  slti         t3, s11, 871
91:               bge          a4, s0, 96f
                  auipc        ra, 803018
                  beq          a0, s6, 104f
                  sll          s2, t5, a2
95:               sub          a6, a3, t5
96:               sll          gp, a5, t3
                  slt          t2, a2, t1
                  srl          gp, s10, s8
                  slti         s5, s3, 1136
100:              sltiu        a3, tp, 1970
                  nop
                  beq          ra, t0, 105f
                  sra          s1, s2, a2
104:              andi         s8, t6, -54
105:              andi         s5, a1, -1454
                  sltu         t6, s3, a2
                  sll          s3, t4, a0
                  xor          zero, ra, s11
                  auipc        a5, 95298
                  srl          ra, s9, a3
                  slti         a2, gp, 2009
                  addi         ra, s8, -678
                  addi         s8, s5, -699
                  srl          a6, s8, s1
                  andi         s2, a5, -577
                  xori         s9, s11, -837
                  sll          s8, s7, gp
                  bge          t6, sp, 137f
                  sra          tp, t6, s4
                  slti         t0, a0, -701
                  sub          a1, s11, a5
                  ori          s5, s3, 1464
                  sltiu        t6, a4, -455
                  add          t3, t3, s6
                  and          s8, t3, sp
                  srli         s7, t0, 2
                  xor          a5, sp, s1
                  bgeu         s0, t4, 143f
                  srl          a5, s0, a3
                  bltu         a3, s3, 144f
                  sll          s4, tp, s5
                  srai         s10, t3, 17
                  srli         a2, a3, 17
                  slt          s4, ra, t2
                  bge          s9, s0, 146f
                  sll          s5, s10, s5
137:              sra          t1, t2, s1
                  sltu         s10, s1, s7
                  sltu         t3, a5, a6
                  srai         s11, t2, 21
                  srl          a4, a1, t1
                  srli         s3, sp, 12
143:              bne          s2, zero, 162f
144:              sltiu        zero, a6, 577
                  sll          sp, s9, a7
146:              add          s6, a0, s7
                  add          s5, tp, zero
                  bltu         s6, a6, 156f
                  slt          a2, t3, a4
                  bgeu         gp, gp, 165f
                  srai         t3, s6, 30
                  bgeu         s10, s7, 156f
                  bge          a6, t6, 166f
                  sltu         s10, s0, s7
                  auipc        s11, 498863
156:              sltiu        t2, s2, -1261
                  and          s10, s1, t3
                  sub          a3, t2, a1
                  bgeu         s9, s3, 164f
                  sll          t6, t6, t1
                  auipc        a5, 523465
162:              bne          s4, t0, 164f
                  slt          s3, t1, s8
164:              add          s8, s11, a5
165:              sll          zero, a2, s6
166:              slt          a2, s1, gp
                  and          s9, s10, t5
                  auipc        a4, 301412
                  blt          a2, ra, 188f
                  bltu         s6, a3, 183f
                  ori          s3, t2, -546
                  sra          t0, s3, s3
                  sll          t0, s5, t4
                  srai         a3, s0, 13
                  and          a7, s1, sp
                  slti         a4, a6, -1805
                  xori         zero, t3, 413
                  srai         a4, s1, 26
                  sltiu        t6, t4, 1640
                  lui          s9, 396728
                  beq          a1, s4, 187f
                  add          s11, ra, s5
183:              add          a6, t6, t4
                  sltu         a6, t2, s4
                  andi         s1, s3, 227
                  slt          a7, sp, s0
187:              srl          s3, s6, zero
188:              slli         a2, t0, 12
                  add          s7, s3, zero
                  bne          s8, s5, 193f
                  srli         s9, a7, 11
                  add          t6, a2, t2
193:              or           t5, s0, gp
                  blt          s2, s4, 214f
                  sub          s11, a4, s2
                  sub          t3, s7, s7
                  ori          a2, s9, -580
                  beq          s6, a3, 208f
                  slli         tp, t6, 10
                  auipc        a4, 374796
                  xori         s3, t0, 388
                  xor          s8, s7, t4
                  add          s4, s0, t0
                  add          t0, s6, s6
                  or           zero, s4, s2
                  sra          t1, a5, t4
                  xor          s7, s6, s2
                  sltiu        t1, gp, 563
                  la           s11, sub_1
                  lui          ra, 9496
                  addi         s11, s11, -7
                  or           a6, s8, s1
                  sra          s5, a0, a5
main_j3:          jalr         s4, s11, 8 #jump main -> sub_1
                  or           a4, a4, s0
                  andi         t0, s2, -820
                  sub          s3, tp, a6
                  xori         a5, a4, 1090
                  auipc        a6, 32208
208:              andi         a6, a7, 595
                  sltiu        t5, s1, -1129
                  ori          s4, a7, 222
                  and          s9, tp, s4
                  andi         a2, t0, 1764
                  la           sp, sub_2
                  sra          s5, t3, a0
                  sltiu        t3, t2, -1974
                  addi         sp, sp, -375
                  add          s1, ra, a0
                  sub          a3, s9, a1
                  slli         t2, a0, 4
main_j1:          jalr         s4, sp, 375 #jump main -> sub_2
                  srli         s4, a1, 18
                  andi         t5, t6, 1320
214:              or           s7, t6, s6
                  xori         a3, s5, 1710
                  sltu         s3, a6, s10
                  sub          zero, s7, s10
                  sub          a7, s10, a7
                  add          t2, zero, s2
                  srl          t6, a7, s8
                  auipc        a7, 771568
                  sltiu        tp, a0, -1433
                  bgeu         s3, s10, 232f
                  nop
                  sra          s6, tp, s6
                  andi         t6, s2, 993
                  bltu         a5, t2, 231f
                  beq          s9, s3, 237f
                  bltu         s7, t2, 242f
                  sub          a6, a0, t2
231:              sra          s4, s1, sp
232:              ori          zero, a6, 1172
                  slti         a7, a5, 73
                  sltiu        t2, a6, -1882
                  and          a4, a2, t6
                  bge          tp, s7, 241f
237:              bge          t6, s3, 244f
                  auipc        s8, 542184
                  slli         a3, gp, 6
                  add          a4, a1, a5
241:              srli         s8, t5, 12
242:              addi         s10, a3, -1006
                  and          t0, s2, s10
244:              ori          s1, a2, -262
                  slt          sp, a5, s4
                  beq          t4, a3, 253f
                  auipc        zero, 259354
                  addi         s6, ra, 1506
                  auipc        s8, 1022527
                  and          t0, t4, t6
                  bge          t0, a5, 259f
                  sub          s9, s8, s5
253:              sra          s1, s4, s6
                  slti         s4, t0, -350
                  slt          zero, s6, t1
                  bgeu         a5, s10, 257f
257:              sltu         s2, s11, s3
                  srl          s1, s3, a5
259:              sub          s6, t2, s10
                  xor          s3, t0, ra
                  addi         s9, tp, -1739
                  ori          a6, a0, 1302
                  sltu         gp, a2, a7
                  ori          s8, s2, 382
                  slli         s2, zero, 22
                  srli         s11, zero, 22
                  slli         ra, s6, 3
                  srli         s4, a4, 11
                  bne          t5, s4, 283f
                  beq          a4, zero, 271f
271:              xori         s11, s5, 1713
                  sltu         s9, s2, ra
                  xor          s4, s8, s3
                  slti         gp, s11, -841
                  sra          gp, tp, t5
                  add          s2, s10, t3
                  xor          s11, a7, s0
                  sll          t0, s9, a6
                  andi         t5, sp, 605
                  sub          a3, t5, a7
                  add          a1, s8, t5
                  xori         gp, t3, -303
283:              slli         s7, a7, 17
                  sltu         s4, a2, t4
                  bge          s2, s6, 299f
                  lui          s10, 99067
                  auipc        a2, 1003944
                  addi         tp, a2, 1941
                  sra          t0, s1, t4
                  lui          s5, 153418
                  sltu         a3, s7, s11
                  lui          s5, 639763
                  sra          tp, s3, a7
                  beq          s8, a2, 299f
                  bltu         t5, a3, 304f
                  slti         s10, t4, 950
                  add          s4, tp, s4
                  xori         t6, s9, 1058
299:              slti         gp, a0, 1193
                  xori         s6, s0, 1865
                  bgeu         a1, gp, 316f
                  sltiu        zero, s10, -1859
                  sub          s2, s4, a2
304:              bltu         s2, t4, 305f
305:              lui          a5, 443306
                  xori         gp, a7, -753
                  bgeu         a4, t1, 327f
                  lui          s4, 346754
                  sltiu        t6, a5, -1512
                  andi         s6, a2, 188
                  srli         a1, a7, 18
                  bgeu         gp, t1, 318f
                  slti         t1, s6, -1812
                  bltu         a4, ra, 322f
                  sra          s4, t2, t4
316:              sra          t6, a2, t6
                  bgeu         s2, t1, 331f
318:              ori          s5, tp, 603
                  slt          s4, s0, s9
                  and          sp, t5, s6
                  bgeu         s11, a3, 326f
322:              sltu         s7, t1, t6
                  srai         s4, s11, 2
                  ori          s5, a1, 1291
                  andi         a1, t5, -1514
326:              sltiu        t1, t6, -327
327:              lui          s5, 464641
                  bge          s1, t1, 332f
                  srai         gp, a2, 11
                  nop
331:              ori          s10, t0, -1449
332:              sltiu        t5, s2, 1555
                  srli         sp, s10, 29
                  lui          a1, 146053
                  bne          s7, a5, 349f
                  sll          t5, s1, a1
                  add          a2, t6, s5
                  sub          t3, ra, tp
                  andi         gp, s10, 694
                  bltu         a1, tp, 353f
                  bge          a7, s0, 350f
                  slli         a2, s11, 21
                  slli         gp, ra, 22
                  bge          s6, s3, 359f
                  ori          tp, s1, -443
                  blt          s9, t2, 361f
                  sltiu        a2, t6, 337
                  andi         s6, t4, -752
349:              beq          t2, s1, 368f
350:              srli         s11, s0, 26
                  sll          tp, gp, t0
                  xor          t5, zero, t2
353:              addi         tp, t6, -1092
                  lui          s11, 266005
                  slti         gp, s9, 614
                  sltiu        a7, ra, 1040
                  slli         a1, t4, 26
                  srli         s10, t4, 5
359:              and          zero, s1, gp
                  ori          s9, t2, -403
361:              or           tp, s10, tp
                  auipc        tp, 373830
                  auipc        s2, 785411
                  slt          a3, t5, t2
                  auipc        s10, 770341
                  xori         a7, t2, 1867
                  bne          s7, t6, 375f
368:              beq          t1, t3, 379f
                  sltiu        a4, t5, -829
                  add          s10, s11, a2
                  bgeu         s8, a5, 385f
                  addi         s6, gp, 1690
                  lui          t1, 952694
                  xori         a4, t5, 134
375:              andi         s7, t5, -1321
                  sub          ra, tp, s5
                  srli         s9, zero, 26
                  lui          t0, 42518
379:              srli         t3, t2, 13
                  sub          sp, s8, s9
                  slt          t0, s4, t6
                  sltiu        t2, t3, 968
                  slli         a4, a7, 23
                  xor          s1, s2, a3
385:              bne          a5, t4, 392f
                  sra          zero, s5, t0
                  slt          a7, s11, a3
                  blt          s7, s10, 393f
                  addi         t6, s11, -1688
                  blt          t0, t0, 409f
                  lui          a1, 177151
392:              ori          a1, s10, -401
393:              or           a4, t0, t1
                  addi         t3, a1, -1203
                  and          s8, a0, t0
                  and          s1, s6, s7
                  bltu         t0, s7, 407f
                  bge          t5, s1, 407f
                  bne          a5, ra, 404f
                  sub          a7, s3, s7
                  srai         t5, t3, 28
                  andi         s4, tp, -960
                  beq          s9, zero, 416f
404:              andi         a4, a7, 114
                  and          ra, a0, s8
                  slt          t6, s11, a6
407:              srai         a6, t4, 20
                  bge          ra, t4, 411f
409:              beq          s10, a3, 422f
                  addi         t3, t6, -1878
411:              andi         s9, t2, 813
                  andi         s9, t1, -1097
                  slt          zero, a4, s10
                  add          s9, t4, a1
                  nop
416:              slt          s1, a3, tp
                  andi         s2, a1, 575
                  and          s11, t5, t5
                  auipc        s11, 69483
                  ori          s10, s5, -1818
                  slli         ra, a6, 10
422:              auipc        t6, 60267
                  srl          t2, a7, a6
                  sll          t1, s1, sp
                  bgeu         zero, s7, 434f
                  nop
                  xori         s3, s2, 950
                  blt          t1, t2, 435f
                  xor          sp, s4, s5
                  or           s4, s1, s3
                  bge          a2, s2, 435f
                  srli         s6, t1, 12
                  and          zero, a7, t0
434:              srli         t1, s7, 1
435:              nop
                  sltu         sp, ra, t0
                  bltu         a3, t6, 439f
                  srl          s7, s9, t2
439:              srli         a6, s4, 8
                  ori          s10, s2, -1674
                  lui          s10, 115270
                  slti         s11, t0, -437
                  sub          a7, a4, a0
                  sltiu        a3, ra, -385
                  add          s1, sp, a3
                  ori          a7, s6, -2008
                  ori          sp, s9, 318
                  add          gp, s10, s3
                  blt          t1, s4, 450f
450:              sub          s3, a0, zero
                  xor          tp, t3, s10
                  andi         s1, t0, 143
                  blt          s8, t5, 457f
                  lui          sp, 835467
                  lui          s7, 208686
                  srl          ra, s11, s2
457:              addi         s5, s11, 752
                  bne          t6, t4, 473f
                  add          s1, t3, zero
                  bltu         s11, s4, 465f
                  add          s7, ra, a6
                  xori         a7, a6, -120
                  xor          a5, a6, t5
                  sra          s3, s8, a1
465:              sll          a7, t0, s0
                  xori         s8, a7, -99
                  srl          zero, s2, t2
                  add          t5, s5, zero
                  sltiu        a3, ra, 333
                  xor          gp, t3, s10
                  sltiu        t5, t1, -1144
                  sltu         t5, s6, sp
473:              bge          a3, s4, 487f
                  sra          s11, s0, a0
                  sltu         a4, gp, s9
                  blt          t1, a1, 479f
                  sra          t5, s7, a1
                  blt          a4, s1, 493f
479:              slti         a1, a7, 1373
                  sra          s5, a0, a7
                  sra          s11, s2, s9
                  xor          a2, t4, a7
                  beq          ra, zero, 484f
484:              and          s1, a4, t6
                  bgeu         s0, gp, 498f
                  sltiu        gp, s1, -1004
487:              blt          t2, a1, 501f
                  bgeu         s11, a4, 502f
                  add          s2, a5, s0
                  xor          a1, a6, s6
                  lui          a2, 449777
                  sra          s6, s6, t0
493:              slt          s2, s2, t6
                  lui          tp, 359367
                  slt          s2, sp, s9
                  and          ra, t0, t1
                  blt          a0, a7, 507f
498:              nop
                  andi         s11, s3, -1389
                  slti         a4, a7, 705
501:              bne          tp, t3, 506f
502:              srai         a2, t4, 7
                  srai         a5, s0, 16
                  andi         s3, a3, 1955
                  add          s8, t4, ra
506:              beq          a5, a4, 515f
507:              sltiu        s1, s7, -296
                  slli         zero, a1, 6
                  bne          s3, s0, 513f
                  bge          t2, a0, 518f
                  or           gp, a4, gp
                  lui          s9, 603768
513:              srai         s8, s5, 10
                  sub          s6, s10, t3
515:              srli         ra, s7, 29
                  sltu         s10, t4, a5
                  srai         ra, t5, 20
518:              blt          s11, s3, 531f
                  sll          s5, a2, a7
                  slt          t3, s1, t2
                  bne          sp, t3, 531f
                  blt          s8, a6, 527f
                  srai         a3, t6, 7
                  or           s2, ra, tp
                  add          t1, s2, sp
                  srl          t0, t1, s10
527:              bgeu         s7, s10, 531f
                  andi         t5, s3, -1989
                  add          t0, t1, s5
                  xori         gp, a1, 266
531:              auipc        a7, 489304
                  la x29, test_done
                  jalr x0, x29, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            auipc        s11, 598474
                  ori          s9, s3, -374
                  addi         s0, s0, -24
                  ori          ra, t0, -627
                  srli         a6, a7, 6
                  sw           s4, 4(s0)
                  and          t0, a6, t2
                  sltiu        ra, ra, 935
                  ori          t0, s4, 1925
                  bne          t0, s8, 2f
2:                lui          s2, 493468
                  xori         t6, s9, -1577
                  or           t5, s3, s11
                  or           t6, t0, s0
                  lui          t6, 564905
                  slli         t0, s5, 10
                  bne          gp, a3, 12f
                  sra          s4, a0, t0
                  xor          s6, s3, tp
                  sltiu        t2, a4, -1174
12:               sll          ra, tp, s9
                  sub          s1, s5, t5
                  xor          s6, a3, t4
                  sll          t1, s0, t2
                  srli         s7, s11, 21
                  sub          tp, s11, zero
                  sll          s4, t4, a4
                  sltiu        a6, t2, 57
                  xor          ra, a5, s2
                  beq          s3, tp, 24f
                  beq          s4, ra, 39f
                  sltu         t2, t0, s6
24:               sra          tp, a2, sp
                  beq          gp, ra, 31f
                  andi         a2, s8, 1939
                  auipc        zero, 414481
                  bgeu         a5, s6, 39f
                  slti         t6, t0, 1811
                  bne          ra, s6, 39f
31:               slt          s1, tp, gp
                  sra          a4, t5, a7
                  slt          s10, gp, ra
                  beq          a2, s3, 39f
                  beq          sp, s1, 38f
                  slt          s1, gp, a0
                  bge          a7, s1, 39f
38:               or           gp, tp, s0
39:               sltiu        a1, t3, 1229
                  addi         a7, tp, 445
                  lw           s4, 4(s0)
                  sll          s3, a0, a3
                  add          t2, s5, a3
                  sra          zero, a7, t6
                  addi         s0, s0, 24
                  auipc        t2, 343040
55:               addi x18, x20, 1
55:               jalr x18, x18, 0
sub_2:            addi         t3, t4, -382
                  slli         s3, s1, 9
                  addi         s0, s0, -60
                  sub          s9, gp, s3
                  sw           s4, 4(s0)
                  slt          gp, a3, gp
                  sll          s3, a5, s5
                  andi         t6, a2, -198
                  la           sp, region_0+204 #start riscv_load_store_rand_instr_stream_3
                  xori         a7, a6, 1302
                  sb           gp, 1434(sp)
                  slli         a7, a4, 17
                  slli         gp, s11, 4
                  auipc        s7, 693195
                  lb           s1, 1594(sp)
                  add          t5, s1, gp
                  andi         s2, s2, -291
                  lui          t6, 920868
                  andi         s1, s4, 408
                  slli         a7, t2, 0
                  sb           tp, 183(sp)
                  lh           tp, 1590(sp)
                  sw           s7, 876(sp)
                  sb           t4, 305(sp)
                  or           t3, t1, a3
                  sb           zero, 45(sp)
                  addi         gp, a4, -1344
                  lbu          gp, 1666(sp)
                  add          a2, ra, t5
                  lbu          a3, 1525(sp)
                  lbu          a2, 1701(sp)
                  add          t2, s7, a6
                  auipc        s8, 271864
                  lb           tp, 892(sp)
                  slti         a5, tp, -1566
                  nop
                  sh           gp, 1448(sp)
                  lbu          a4, 241(sp)
                  slli         s2, ra, 13
                  lbu          t0, 1627(sp)
                  add          a7, s2, t5
                  lb           t2, -107(sp)
                  lb           t0, 34(sp)
                  xor          s1, s3, s7
                  srai         s11, t0, 20
                  slti         s4, t5, 142
                  lb           a5, 697(sp)
                  sb           a6, -93(sp)
                  lhu          t3, 1014(sp)
                  auipc        a6, 380054
                  sll          s7, a2, a7
                  lw           t2, 164(sp)
                  sh           a6, 252(sp)
                  lbu          s7, 161(sp)
                  lh           zero, 108(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+86 #start riscv_load_store_hazard_instr_stream_0
                  sw           t4, -62(sp)
                  or           tp, a7, sp
                  lw           s7, -62(sp)
                  lbu          t3, -17(sp)
                  lbu          t1, -17(sp)
                  sb           s5, -17(sp)
                  lb           t3, 45(sp)
                  xor          a5, s1, sp
                  or           s7, a7, a6
                  lbu          a6, 45(sp)
                  sltiu        t2, t3, -1796
                  xori         a2, a0, 510
                  sll          s8, s6, t2
                  lb           a1, -15(sp)
                  lb           t3, -15(sp)
                  lbu          s9, -15(sp)
                  lb           a2, -15(sp)
                  lh           s3, -12(sp)
                  lbu          ra, -12(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           a6, region_0+528 #start load_store_instr_stream_3
                  la           ra, region_0+1521 #start load_store_instr_stream_1
                  sb           ra, 11(a6)
                  la           t3, region_0+560 #start load_store_instr_stream_2
                  sb           t1, 1(a6)
                  lbu          s3, 39(t3)
                  lb           tp, -57(ra)
                  la           s6, region_0+1831 #start load_store_instr_stream_0
                  lb           a2, 11(t3)
                  sb           s8, 2(a6)
                  lb           zero, 1(a6)
                  lbu          s1, -41(ra)
                  lbu          t2, -6(ra)
                  lbu          s4, -59(t3)
                  lw           a2, -60(t3)
                  sb           t4, -658(s6)
                  sb           gp, 3(t3)
                  sb           tp, -1090(s6)
                  sb           t6, -44(t3)
                  lbu          s4, -25(t3)
                  lw           t2, 59(ra)
                  sb           s10, -1576(s6)
                  lw           a1, -863(s6)
                  lbu          zero, -4(a6)
                  sh           t4, 54(t3)
                  sb           s2, 12(ra)
                  lbu          a2, 79(s6)
                  lh           a2, 39(ra)
                  sb           s10, 21(t3)
                  lbu          zero, -57(t3) #end load_store_instr_stream_2
                  lhu          t2, -12(a6) #end load_store_instr_stream_3
                  sb           t1, -47(ra) #end load_store_instr_stream_1
                  lbu          a5, -1772(s6)
                  sb           t3, 78(s6) #end load_store_instr_stream_0
                  la           a6, region_0+1228 #start riscv_load_store_hazard_instr_stream_1
                  lbu          s5, -62(a6)
                  lb           tp, -35(a6)
                  lb           t3, -35(a6)
                  xori         sp, a7, 1443
                  lbu          ra, -25(a6)
                  lbu          a7, 30(a6)
                  sb           a2, -60(a6)
                  slt          a7, s2, t6
                  sh           s5, 20(a6)
                  lhu          a1, 48(a6)
                  sh           t6, -32(a6)
                  sb           tp, -32(a6)
                  sra          s6, a1, zero
                  sb           s11, 5(a6)
                  sb           sp, -23(a6)
                  lb           t5, -23(a6)
                  lbu          s5, -23(a6)
                  lb           a7, 21(a6)
                  lui          a3, 1048486
                  lb           a7, 21(a6) #end riscv_load_store_hazard_instr_stream_1
                  la           s2, region_0+1173 #start riscv_load_store_rand_instr_stream_0
                  lbu          t1, 388(s2)
                  nop
                  lbu          s7, 428(s2)
                  sb           t4, -195(s2)
                  slti         s9, s10, 1189
                  lbu          a3, -815(s2)
                  lw           tp, 499(s2)
                  sltiu        s11, t0, 1275
                  auipc        s11, 755401
                  addi         tp, s11, -765
                  auipc        tp, 658161
                  lb           s6, 74(s2)
                  xori         s11, s11, -1578
                  sb           gp, -656(s2)
                  xor          sp, t2, ra
                  add          a5, a0, zero
                  lb           gp, -520(s2)
                  sb           s11, -311(s2)
                  xori         s11, s3, 1293
                  lui          s10, 592530
                  lbu          s8, 608(s2)
                  sb           s5, 600(s2)
                  slti         ra, t3, 1081
                  srl          t1, a5, t5
                  lh           sp, 467(s2)
                  sra          t6, s4, a2
                  add          t2, s11, tp
                  or           a7, s9, s2
                  srl          s6, ra, sp
                  lb           s5, -925(s2)
                  sb           s0, -32(s2)
                  slli         ra, a6, 13
                  xor          a2, t0, t3
                  srl          t3, sp, s9
                  lbu          a7, -452(s2)
                  and          t1, s8, s8
                  sb           t2, -1038(s2)
                  xori         t5, a0, -215
                  sb           s3, -147(s2)
                  slli         s10, t6, 0
                  srl          t3, ra, a5
                  add          a7, s11, a7
                  sh           s2, 509(s2)
                  sb           t0, -720(s2)
                  slt          a7, a5, zero
                  srli         s9, ra, 4
                  lb           s3, -497(s2) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1408 #start riscv_load_store_hazard_instr_stream_3
                  sh           t1, -2(sp)
                  lhu          t0, -2(sp)
                  lbu          zero, 11(sp)
                  lbu          t0, 11(sp)
                  sb           s1, 11(sp)
                  sb           s6, 11(sp)
                  lb           a2, 11(sp)
                  lbu          a4, 11(sp)
                  lbu          a1, 11(sp)
                  lbu          s2, 11(sp)
                  lbu          s8, 11(sp)
                  lbu          s4, 11(sp)
                  lb           s8, 11(sp)
                  sb           s8, 11(sp)
                  lbu          t3, 11(sp)
                  lb           s10, 11(sp)
                  lbu          s5, 11(sp)
                  lb           a5, 11(sp)
                  addi         zero, zero, -1645
                  lbu          t6, 11(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t1, region_1+248 #start riscv_load_store_rand_instr_stream_1
                  slli         a4, s4, 17
                  lbu          t5, 12(t1)
                  lb           tp, -3(t1)
                  or           s5, s2, t0
                  lbu          a1, 6(t1)
                  lb           ra, -7(t1)
                  sb           t5, 3(t1)
                  lbu          s11, 13(t1)
                  sb           a5, 3(t1)
                  sw           s0, 0(t1)
                  andi         zero, t6, -520
                  sb           a3, 13(t1)
                  addi         s2, s7, -1835
                  sra          a4, ra, s8
                  lb           t6, 5(t1)
                  ori          zero, a6, 1548
                  add          a2, s10, a5
                  lb           a1, 3(t1)
                  auipc        zero, 782896
                  sb           t4, -10(t1)
                  sh           t0, -2(t1)
                  add          s3, ra, s1
                  addi         ra, s2, -539
                  slti         a4, s7, -1636
                  xor          s5, t1, t6
                  lbu          a2, -15(t1)
                  sh           s4, -12(t1)
                  sb           s2, 11(t1)
                  lhu          s8, 14(t1)
                  lh           s2, -2(t1)
                  sb           s1, -8(t1)
                  lb           sp, 7(t1)
                  lb           s10, 15(t1)
                  lw           s9, 4(t1)
                  sw           a0, 12(t1)
                  sltiu        sp, a2, 380
                  lbu          zero, 14(t1) #end riscv_load_store_rand_instr_stream_1
                  la           s8, region_1+1940 #start load_store_instr_stream_2
                  lb           s10, -1533(s8)
                  la           a5, region_1+288 #start load_store_instr_stream_1
                  sb           t3, 11(a5)
                  lbu          s3, -82(s8)
                  lb           s7, -12(a5)
                  la           t2, region_1+1105 #start load_store_instr_stream_0
                  lbu          a4, -1540(s8)
                  lh           s4, 12(a5)
                  sb           s2, -221(s8)
                  sb           t0, -252(t2)
                  sb           gp, 5(s8)
                  sh           t4, -4(a5)
                  sb           a5, -6(a5)
                  lbu          s6, 176(t2)
                  sw           ra, 51(t2)
                  sb           a1, -1403(s8)
                  lb           t3, -8(a5)
                  lbu          a3, -1421(s8)
                  sb           s10, -108(t2)
                  lhu          zero, -1546(s8) #end load_store_instr_stream_2
                  sb           s1, 5(a5)
                  lbu          sp, -5(a5) #end load_store_instr_stream_1
                  sb           s11, 201(t2) #end load_store_instr_stream_0
                  la           s4, region_1+1076 #start riscv_load_store_rand_instr_stream_2
                  srli         ra, s0, 28
                  sb           a6, -14(s4)
                  sw           a5, -16(s4)
                  lh           t2, -10(s4)
                  and          s7, s1, a2
                  sh           a3, 2(s4)
                  sb           s5, 13(s4)
                  lbu          a6, 6(s4)
                  sh           s9, 6(s4)
                  sh           s7, 6(s4)
                  lb           s9, -1(s4)
                  andi         tp, a6, 1266
                  sub          zero, tp, t1
                  lbu          sp, 3(s4)
                  lh           a3, 2(s4)
                  auipc        zero, 836690
                  xor          s11, gp, t5
                  slli         a4, t5, 11
                  lbu          a4, -10(s4)
                  sb           t1, 0(s4)
                  sltu         s9, t5, s2
                  sb           ra, -11(s4)
                  sltiu        t1, t0, -2040
                  xor          a2, s9, s0
                  sltiu        s8, s8, 1765
                  and          ra, s6, a7
                  lb           sp, -11(s4)
                  lbu          sp, -15(s4)
                  sltu         a2, s4, zero
                  lb           t3, -7(s4)
                  lb           s11, 15(s4)
                  lbu          s10, 15(s4)
                  sb           s7, 10(s4)
                  sltiu        gp, a1, -1848
                  sh           s4, 14(s4)
                  sll          s3, s6, sp
                  add          a6, s4, a1
                  or           s11, s3, t2
                  sh           t3, -16(s4)
                  lb           t3, -15(s4)
                  and          s8, zero, a7
                  sra          sp, t4, t5
                  lbu          zero, -16(s4) #end riscv_load_store_rand_instr_stream_2
                  srl          s6, t2, a3
                  or           s3, s7, sp
                  srai         t1, s3, 18
                  auipc        s3, 670775
                  add          a7, gp, a5
                  andi         t6, s1, 2042
                  and          a4, a0, t1
                  slt          a1, tp, s4
                  xor          a2, t5, s2
                  sll          t0, a1, gp
                  add          s11, t4, s9
                  sltiu        a3, a4, 869
                  sltu         s6, a1, s5
                  slli         zero, a0, 15
                  sll          a4, t0, a3
                  sra          t2, s2, t3
                  xori         s11, t6, -1522
                  nop
                  slt          a4, s11, a4
                  addi         s11, a7, -581
                  andi         a3, gp, -319
                  bgeu         a7, zero, 25f
                  slt          a5, t4, s5
                  or           t1, s3, a0
                  srli         sp, s4, 3
25:               bne          s9, t5, 43f
                  nop
                  xori         t5, ra, 40
                  blt          s1, s9, 38f
                  sltu         s5, t0, a0
                  sltu         s8, s5, a1
                  sra          s8, s6, s7
                  blt          s5, a4, 48f
                  add          s11, s11, s4
                  lui          a1, 32222
                  bgeu         s5, s1, 45f
                  nop
                  lui          s11, 837267
38:               sub          sp, s9, t6
                  bge          t2, zero, 52f
                  addi         t0, s2, -1994
                  bgeu         ra, s8, 49f
                  lui          s11, 21323
43:               ori          s8, a6, 1851
                  bge          s5, t4, 61f
45:               beq          t5, gp, 58f
                  bltu         t1, s9, 48f
                  lui          t5, 489302
48:               sra          gp, sp, a5
49:               and          s7, a6, t5
                  auipc        s7, 805613
                  bne          s3, a0, 61f
52:               bne          a6, t2, 62f
                  beq          s4, a3, 68f
                  sub          t5, s0, a7
                  ori          tp, t0, 958
                  and          s7, a0, a6
                  bge          t2, t4, 69f
58:               slt          s5, t6, t5
                  bgeu         sp, t0, 76f
                  andi         s3, zero, 1890
61:               bge          s2, t2, 80f
62:               sra          a7, zero, s4
                  lui          zero, 816267
                  bltu         a2, a1, 81f
                  auipc        s7, 652809
                  auipc        gp, 801039
                  srai         a2, a6, 10
68:               bgeu         s1, ra, 84f
69:               slt          a4, a0, s7
                  slt          sp, t0, t4
                  slli         t5, sp, 22
                  slti         t5, t3, -58
                  bne          sp, t0, 75f
                  and          t1, t2, tp
75:               srl          a1, s6, tp
76:               blt          a6, s0, 87f
                  srai         a2, t4, 21
                  blt          t5, a4, 95f
                  srai         s6, t5, 17
80:               ori          a1, s0, 487
81:               bge          s2, tp, 85f
                  blt          s9, s4, 91f
                  auipc        t2, 12323
84:               slli         s6, zero, 21
85:               slli         ra, s11, 25
                  bgeu         t4, t5, 100f
87:               sltiu        gp, s10, 225
                  ori          s9, s1, 1821
                  blt          t4, t4, 106f
                  srli         s4, s8, 22
91:               srli         s5, a6, 8
                  beq          s9, s0, 101f
                  sra          zero, s2, t5
                  xori         tp, s1, 1956
95:               slli         s7, a2, 0
                  and          a1, sp, a3
                  xor          zero, a5, s6
                  and          s1, t6, s5
                  xori         s9, s6, -1436
100:              sub          t6, s5, s6
101:              srli         s8, s6, 30
                  sll          tp, t5, a7
                  xor          t6, a2, a0
                  bge          a3, ra, 124f
                  andi         s6, a0, 1185
106:              ori          a4, s7, 596
                  slt          t6, a1, a0
                  sltiu        t5, s9, 869
                  blt          a2, s0, 123f
                  sub          gp, s0, s1
                  srai         a6, a0, 11
                  sltu         s4, s2, ra
                  nop
                  slli         t3, zero, 0
                  sra          a7, ra, s9
                  blt          s8, t5, 119f
                  slti         t2, a7, -124
                  bgeu         t2, s7, 132f
119:              ori          a4, s2, 122
                  andi         s11, s7, 69
                  bgeu         s7, a1, 131f
                  bge          s7, gp, 137f
123:              srli         a4, a6, 17
124:              xor          gp, s0, t0
                  nop
                  srl          sp, t4, s10
                  srai         a2, t3, 31
                  sll          t2, s4, ra
                  srli         a4, t6, 26
                  or           s11, t0, zero
131:              sltu         a1, s0, a1
132:              or           s11, t5, ra
                  andi         s8, zero, -620
                  slti         a5, s10, 950
                  slt          a3, t1, s6
                  beq          a2, s7, 140f
137:              blt          a6, a7, 151f
                  slli         t6, s4, 12
                  sub          s3, s3, t1
140:              sra          s1, t6, a5
                  addi         s2, s7, 629
                  sra          a3, a6, a1
                  sltiu        t2, tp, -633
                  srli         s1, a4, 5
                  sltu         s8, tp, s10
                  srai         zero, t5, 22
                  srai         a1, t6, 9
                  lui          s11, 46149
                  add          s5, a1, sp
                  bge          gp, s0, 152f
151:              sub          tp, s2, t5
152:              xor          a2, t4, s6
                  sub          s7, t2, t0
                  nop
                  bgeu         s4, zero, 167f
                  add          s2, s5, a6
                  sll          s10, ra, a7
                  bne          a4, s11, 174f
                  blt          a3, t1, 170f
                  srl          gp, a4, s0
                  slli         t6, gp, 12
                  and          gp, a5, s2
                  bne          a3, s1, 171f
                  lui          gp, 40429
                  and          a3, a5, s3
                  or           s9, a0, s2
167:              nop
                  slti         a4, s5, -442
                  bltu         s10, ra, 171f
170:              andi         a6, zero, -1851
171:              bltu         a5, a5, 187f
                  beq          t3, s3, 189f
                  slt          s8, t5, s11
174:              sub          s6, a5, a3
                  bge          s1, s9, 192f
                  xor          t6, a7, s7
                  xori         a2, ra, 1566
                  sll          zero, a0, s5
                  xor          s11, s2, gp
                  blt          s9, s3, 189f
                  slli         s5, gp, 27
                  add          s1, t0, a6
                  srai         a3, t3, 7
                  srai         s11, s9, 0
                  or           ra, t2, s2
                  beq          t0, t1, 205f
187:              or           t0, s0, s7
                  andi         t6, t4, 465
189:              srli         s1, a5, 25
                  sltiu        t3, a5, 1941
                  sub          s6, a4, zero
192:              auipc        a6, 66535
                  and          s7, s9, t2
                  beq          t3, sp, 211f
                  sltu         s10, s0, s1
                  sll          s7, a5, s0
                  nop
                  beq          s3, s9, 208f
                  srai         s6, t2, 28
                  beq          sp, a6, 213f
                  srli         t5, a2, 8
                  srai         a1, t4, 30
                  sra          s3, s0, s10
                  bgeu         a2, s9, 221f
205:              lui          s3, 917826
                  xori         a5, s5, 1136
                  xor          t0, zero, t6
208:              or           t1, t1, t4
                  sra          tp, t3, s6
                  beq          s8, a0, 227f
211:              sub          s3, a2, a0
                  srl          a2, t1, t5
213:              add          s9, t3, s9
                  bge          t4, t4, 227f
                  slt          s2, s10, gp
                  sub          a5, s9, sp
                  addi         a4, t2, -1385
                  xori         zero, gp, 1219
                  sub          s4, s7, t2
                  ori          s9, a5, 400
221:              slli         s11, a6, 6
                  ori          t3, a4, 205
                  sll          ra, a3, tp
                  nop
                  andi         a6, a4, -1744
                  srl          tp, s7, t1
227:              bne          zero, s5, 230f
                  sltiu        zero, s4, -858
                  bne          s7, t4, 247f
230:              sra          ra, t0, a4
                  beq          tp, a2, 245f
                  bltu         s10, gp, 242f
                  ori          t0, s6, 158
                  srl          a2, sp, s10
                  bne          a3, gp, 255f
                  auipc        t0, 99831
                  xori         s3, t1, 1067
                  lui          t6, 986626
                  bgeu         tp, s5, 243f
                  blt          s4, gp, 254f
                  add          t6, t4, t6
242:              sub          a3, a6, s11
243:              add          s10, a4, s7
                  srai         s11, t5, 11
245:              ori          a1, zero, -579
                  nop
247:              add          s4, s7, s0
                  srai         a1, s2, 17
                  xor          t1, s4, tp
                  bltu         s0, t1, 259f
                  blt          ra, a0, 261f
                  sll          a7, a3, s10
                  srl          a1, a7, s0
254:              srli         t1, s4, 5
255:              nop
                  nop
                  ori          t0, s1, -938
                  add          s11, s7, s11
259:              bltu         s11, gp, 269f
                  la           t5, region_1+1862 #start load_store_instr_stream_1
                  la           a7, region_1+1673 #start load_store_instr_stream_0
                  la           s6, region_1+1671 #start load_store_instr_stream_2
                  lb           s11, -1363(a7)
                  lbu          s8, -385(a7)
                  lh           s9, -148(t5)
                  lhu          s8, 3(s6)
                  lb           a5, -72(t5)
                  sh           t1, 49(s6)
                  sb           t1, -18(a7)
                  sh           t0, -43(s6)
                  lhu          a4, -48(t5)
                  lb           a5, -13(s6)
                  sb           t2, 115(t5)
                  lb           s7, 11(s6)
                  sb           s8, -1428(a7)
                  sh           a1, -110(t5)
                  lh           gp, 55(s6)
                  lb           s11, -1222(a7)
                  sh           s11, -162(t5)
                  lbu          t2, 42(s6)
                  lb           a5, -42(s6)
                  lh           a5, -254(t5)
                  lb           ra, -53(s6)
                  lh           a3, -51(s6) #end load_store_instr_stream_2
                  lb           s9, -179(t5) #end load_store_instr_stream_1
                  lb           a1, -227(a7) #end load_store_instr_stream_0
                  nop
261:              nop
                  slti         s10, s10, 26
                  slli         a7, a3, 26
                  la           a6, region_1+1013 #start load_store_instr_stream_1
                  lbu          a3, 9(a6)
                  la           s2, region_1+384 #start load_store_instr_stream_0
                  lhu          ra, 29(a6)
                  lb           s1, 40(a6)
                  sh           s9, 152(s2)
                  lbu          t3, 149(s2)
                  sw           s3, -41(a6)
                  sb           a3, 18(a6)
                  lb           zero, 131(s2)
                  sb           a2, -48(a6)
                  lbu          ra, -18(a6)
                  sh           s9, -28(s2)
                  lw           sp, 7(a6)
                  sb           t4, -239(s2)
                  lhu          t5, 45(a6) #end load_store_instr_stream_1
                  lw           s1, 232(s2) #end load_store_instr_stream_0
                  xori         s8, a1, -1933
                  bne          t5, a7, 278f
                  bgeu         s0, s5, 269f
                  sub          a1, tp, a2
                  addi         a6, s7, -1633
269:              and          ra, zero, sp
                  xori         t3, s8, -1415
                  lui          a7, 281483
                  slli         t3, t2, 28
                  xor          s1, t6, s0
                  auipc        s9, 943892
                  addi         t2, s0, -1423
                  slli         s7, s2, 21
                  addi         s5, t6, 702
278:              xor          s1, t1, s5
                  sltu         s8, s3, s8
                  andi         s2, ra, -753
                  bne          a1, a2, 293f
                  bne          a3, a1, 298f
                  auipc        s1, 150987
                  xor          a2, tp, a4
                  and          a7, t2, s5
                  bltu         s3, s3, 306f
                  bge          s10, t6, 291f
                  xor          a2, t4, zero
                  sra          s11, t4, s9
                  nop
291:              beq          s10, s3, 305f
                  and          s2, s7, a2
293:              blt          a3, a1, 310f
                  sub          t5, sp, s3
                  srli         s8, t6, 21
                  slti         s11, a2, -677
                  srai         s8, t2, 1
298:              sltu         a3, s2, s3
                  bltu         s9, s1, 301f
                  sra          s9, a4, s0
301:              lui          zero, 417030
                  sltiu        s4, a7, -1294
                  sltu         t3, s7, s6
                  lui          a1, 595976
305:              or           t0, s7, zero
306:              slli         s1, a4, 27
                  andi         t3, zero, -715
                  sra          a6, s8, t0
                  addi         a7, a0, -1643
310:              srl          sp, t5, a3
                  blt          t5, t0, 313f
                  andi         ra, s5, -1143
313:              xori         ra, t1, 1101
                  sltiu        t6, s11, 35
                  lui          tp, 321605
                  sra          a7, a6, s5
                  bltu         ra, zero, 333f
                  sll          a6, a5, s2
                  or           sp, t6, s0
                  bne          s3, s9, 324f
                  xori         s6, s11, -1714
                  sub          s6, s3, s5
                  blt          tp, s0, 341f
324:              slt          a1, sp, tp
                  srai         a3, t2, 30
                  nop
                  srai         gp, t4, 10
                  srai         s1, s10, 2
                  sltu         s5, zero, s7
                  addi         a1, s0, -998
                  addi         s2, gp, 1872
                  srai         t2, s6, 6
333:              add          sp, t1, s0
                  ori          a2, a0, -1782
                  la           sp, region_0+1337 #start riscv_load_store_hazard_instr_stream_2
                  andi         a5, s2, -1523
                  lbu          s2, 16(sp)
                  lbu          a6, 16(sp)
                  lb           s4, 16(sp)
                  sb           a4, 16(sp)
                  lb           t1, 16(sp)
                  lbu          s9, 16(sp)
                  lb           a1, 16(sp)
                  lbu          a7, 16(sp)
                  lbu          t2, 16(sp)
                  sub          t1, s0, a5
                  lb           s7, 16(sp)
                  addi         s3, t1, -798
                  sb           a6, 16(sp)
                  sb           a0, 16(sp)
                  lb           ra, 16(sp)
                  xori         a4, sp, -763
                  sb           s0, 16(sp)
                  sb           t1, 13(sp)
                  sb           zero, 9(sp) #end riscv_load_store_hazard_instr_stream_2
                  sra          a1, s8, s9
                  addi         t2, s8, -1918
                  sll          t2, gp, a1
                  lui          a5, 296004
                  sltiu        a4, s8, 519
                  nop
341:              ori          zero, s3, -1064
                  bge          a0, s9, 357f
                  beq          t4, a4, 353f
                  sra          a4, a7, s10
                  xor          t2, zero, a1
                  bne          gp, t5, 363f
                  bgeu         t5, s9, 356f
                  sub          a2, s9, s5
                  bgeu         tp, s4, 360f
                  sub          t1, gp, s1
                  slti         s9, s11, -2025
                  bge          s2, s8, 362f
353:              slti         s1, a1, 1678
                  xor          s3, t4, t6
                  bltu         gp, s0, 368f
356:              slt          t1, sp, s0
357:              bge          s6, a5, 374f
                  add          a6, ra, s5
                  sra          t6, a7, s4
360:              beq          s10, s6, 369f
                  bgeu         t3, t5, 378f
362:              srl          s7, a4, t6
363:              slti         a3, gp, -1690
                  addi         s8, a4, -1839
                  blt          s7, gp, 373f
                  blt          gp, a1, 380f
                  auipc        t3, 785450
368:              bge          a1, s3, 378f
369:              srai         s9, a1, 9
                  srl          t2, t4, s3
                  sll          t6, a5, zero
                  and          s3, a7, t2
373:              sltiu        s9, t4, 1157
374:              srli         t1, t2, 11
                  and          t6, t0, gp
                  addi         a7, zero, 770
                  sll          a3, s1, sp
378:              sltiu        s9, s8, 1556
                  srai         s11, t2, 12
380:              or           a2, ra, t6
                  bgeu         a7, a1, 400f
                  sub          s10, s11, s4
                  sra          tp, s4, s10
                  srai         a3, s10, 12
                  sll          s1, zero, s3
                  sll          sp, a4, s9
                  slt          a4, t6, s5
                  srli         sp, a5, 11
                  blt          a1, s10, 403f
                  bne          s1, s5, 407f
                  bge          s0, sp, 393f
                  and          s3, t5, t2
393:              sltiu        s11, a3, 1077
                  sra          s6, s10, s4
                  or           a1, s9, a1
                  nop
                  ori          tp, s4, 686
                  bge          t6, t3, 412f
                  or           a7, a5, s3
400:              sltiu        t2, t6, -1553
                  sltu         t1, gp, t5
                  slti         t5, t1, -1523
403:              sra          s8, t0, t3
                  sltu         s11, s1, a7
                  ori          tp, a7, -996
                  sltu         tp, s9, a3
407:              bltu         s8, s8, 424f
                  xor          s11, tp, s0
                  sub          gp, s0, t5
                  sltiu        a3, a7, -1728
                  bgeu         t4, s5, 427f
412:              srai         s3, a2, 23
                  sltu         s9, s8, a2
                  addi         a3, a7, -1756
                  sltu         t5, s5, a6
                  auipc        sp, 651663
                  sub          s7, s8, t0
                  or           sp, s10, s9
                  andi         a2, s4, 532
                  auipc        a6, 315812
                  xori         t2, a1, -1394
                  ori          s11, s10, 1803
                  slt          a2, s3, t3
424:              and          zero, t6, a7
                  beq          s1, t1, 427f
                  slt          gp, s2, s10
427:              sll          s1, t0, s2
                  lw           s4, 4(s0)
                  and          s1, s1, t3
                  nop
                  sltu         zero, zero, s9
                  addi         s0, s0, 60
                  ori          a3, s10, -892
                  srl          t1, a7, tp
                  sltiu        t3, a3, 477
                  or           s9, t5, s7
                  xor          s5, t3, s4
808:              addi x11, x20, 1
808:              jalr x11, x11, 0
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
                  add x10, x8, zero
                  csrr x26, 0x300 # MSTATUS
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 31
                  bne x26, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x26, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x26, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x26, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x26, x30, ecall_handler
                  li x30, 0x1
                  beq x26, x30, instr_fault_handler
                  li x30, 0x5
                  beq x26, x30, load_fault_handler
                  li x30, 0x7
                  beq x26, x30, store_fault_handler
                  li x30, 0xc
                  beq x26, x30, pt_fault_handler
                  li x30, 0xd
                  beq x26, x30, pt_fault_handler
                  li x30, 0xf
                  beq x26, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x29, test_done
                  jalr x1, x29, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x29, write_tohost
                  jalr x0, x29, 0

instr_fault_handler:
                  add x8, x10, zero
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
                  add x8, x10, zero
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
                  add x8, x10, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x8, x10, zero
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
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x8, x10, zero
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
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x8, x10, zero
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
